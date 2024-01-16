#import "time.typ"

#let cvdata = yaml("resume.yaml")

#let uservars = (
    headingfont: "Linux Libertine",
    bodyfont: "Linux Libertine",
    fontsize: 10pt, // 10pt, 11pt, 12pt
    linespacing: 6pt,
    headingsmallcaps: false
)

#let cvheading(info) = {
    table(columns: (1fr, auto), inset: 0pt, stroke: none,
      heading(level: 1)[ #info.personal.name ],
      [ #box(link("mailto:" + info.personal.email)) \
      #box(link(info.personal.linkedin)[#info.personal.linkedin.split("//").at(1)]) \
      #box(link(info.personal.github)[#info.personal.github.split("//").at(1)])])
}


#let showrules(uservars, doc) = {
    // uppercase section headings
    show heading.where(
        level: 2,
    ): it => block(width: 100%)[
        #set align(left)
        #set text(font: uservars.headingfont, size: 1em, weight: "bold")
        #if (uservars.at("headingsmallcaps", default:false)) {
            smallcaps(it.body)
        } else {
            upper(it.body)
        }
        #v(-0.75em) #line(length: 100%, stroke: 1pt + black) // draw a line
    ]

    // name title
    show heading.where(
        level: 1,
    ): it => block(width: 100%)[
        #set text(font: uservars.headingfont, size: 1.5em, weight: "bold")
        #if (uservars.at("headingsmallcaps", default:false)) {
            smallcaps(it.body)
        } else {
            upper(it.body)
        }
        #v(2pt)
    ]

    doc
}


#let cvinit(doc) = {
    set text(
        font: uservars.bodyfont,
        size: uservars.fontsize,
        hyphenate: false,
    )

    set list(
        spacing: uservars.linespacing
    )

    set par(
        leading: uservars.linespacing,
        justify: true,
    )

    doc = showrules(uservars, doc)

    set page(
        paper: "us-letter", // a4, us-letter
        numbering: none,
        number-align: center, // left, center, right
        margin: 1.25cm, // 1.25cm, 1.87cm, 2.5cm
    )

    doc
}


#let cvspeaking(info, isbreakable: true) = {
    if info.speaking != none {block[
        == Speaking
        #for speaking in info.speaking {
            let date = time.strpdate(speaking.date)
            let title = if speaking.url != none [#link(speaking.url)[#speaking.title] ] else [ #speaking.title]
            block(width: 100%, breakable: isbreakable)[
                *#speaking.conference* #title #h(1fr) #date
            ]
        }
    ]}
}

#let cvwork(info, isbreakable: true) = {
    if info.work != none {block[
        == Work Experience
        #for w in info.work {
            let start = time.strpdate(w.startDate)
            let end = time.strpdate(w.endDate)

            block(width: 100%, breakable: isbreakable)[
                #if w.at("url", default: none) != none [
                    *#link(w.url)[#w.organization]* #h(1fr) #w.location \
                ] else [
                    *#w.organization* #h(1fr) #w.location \
                ]
                #text(style: "italic")[#w.position] #h(1fr)
                #start #sym.dash.en #end \
                #if w.at("concise", default: false) [] else [
                    // highlights or description
                    #for hi in w.highlights [
                        - #eval(hi, mode: "markup")
                    ]
                ]
            ]
        }
    ]}
}


#let cvskills(info, isbreakable: true) = {
    if (info.languages != none) or (info.skills != none) or (info.interests != none) {block(breakable: isbreakable)[
        == Skills
        #if (info.languages != none) [
            #let langs = ()
            #for lang in info.languages {
                langs.push([#lang.language (#lang.fluency)])
            }
            - *Languages*: #langs.join(", ")
        ]
        #if (info.skills != none) [
            #for group in info.skills [
                - *#group.category*: #group.skills.join(", ")
            ]
        ]
        #if (info.interests != none) [
            - *Interests*: #info.interests.join(", ")
        ]
    ]}
}


#let cveducation(info, isbreakable: true) = {
    if info.education != none {block[
        == Education
        #for edu in info.education {

            // create a block layout for each education entry
            block(width: 100%, breakable: isbreakable)[
                *#edu.institution* #text(style: "italic")[
                    #edu.degrees.map(it => [#it.type #it.area]).join(", ")
                ] #h(1fr) #edu.startYear #sym.dash.en #edu.endYear \
            ]
        }
    ]}
}

#let endnote() = {
    place(
        bottom + right,
        block[
            #set text(size: 5pt, fill: silver)
            \*Last Updated: #datetime.today().display("[year]-[month]-[day]")
        ]
    )
}

// ========================================================================== //

#show: doc => cvinit(doc)

#cvheading(cvdata)
#cvwork(cvdata)
#cveducation(cvdata)
#cvspeaking(cvdata)
#cvskills(cvdata)
#endnote()
