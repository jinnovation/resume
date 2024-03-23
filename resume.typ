#import "time.typ"
#import "data.typ": personal, skills

#let cvdata = yaml("resume.yaml")

#show link: set text(blue)

#let uservars = (
    headingfont: "Linux Libertine",
    bodyfont: "Linux Libertine",
    fontsize: 10pt, // 10pt, 11pt, 12pt
    linespacing: 6pt,
    headingsmallcaps: false
)

#let cvheading(personal_info) = {
    table(columns: (1fr, auto), inset: 0pt, stroke: none,
      heading(level: 1)[ #personal_info.name ],
        [ #link("mailto:" + personal_info.email) \
            #link(personal_info.linkedin)[#personal_info.linkedin.split("//").at(1)] \
            #link(personal_info.github)[#personal_info.github.split("//").at(1)] \
            #link(personal_info.huggingface)[#personal_info.huggingface.split("//").at(1)]])
}

#let aux(content) = {
    set text(fill: gray)

    content
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

    // section headings, e.g. "Professional Experience"
    show heading.where(
        level: 2,
    ): it => block(width: 100%)[
        #set align(left)
        #set text(font: uservars.headingfont, size: 1.1em, weight: "bold")
        #if (uservars.at("headingsmallcaps", default:false)) {
            smallcaps(it.body)
        } else {
            upper(it.body)
        }
        #v(-0.75em) #line(length: 100%, stroke: 1pt + black) // draw a line
    ]

    // my name
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
            let title = if speaking.url != none [#link(speaking.url)[#speaking.title]] else [#speaking.title]
            block(width: 100%, breakable: isbreakable, spacing: 0.5em)[
                *#speaking.conference*, "#title" #h(1fr) #aux[#date]
            ]
        }
    ]}
}

#let cvwork(info, isbreakable: true) = {
    if info.work != none {block[
        == Select Work Experience
        #for w in info.work {
            if w.at("hide", default: false) {
                continue
            }

            let start = time.strpdate(w.startDate)
            let end = if w.at("endDate", default: none) != none [#time.strpdate(w.endDate)] else [Current]

            let org = if w.at("url", default: none) != none [
                *#link(w.url)[#w.organization]*
            ] else [
                *#w.organization*
            ]

            block(width: 100%, breakable: isbreakable)[
                #org #h(1fr) #aux[#start #sym.dash.en #end] \
                #text(style: "italic")[#w.position] #h(1fr) #aux[#w.location] \
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

#let cv_skills(skills: skills) = {
    [
        == Skills
        #for (group, items) in skills [
            - *#group*: #items.join(", ")
        ]
    ]
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
            block(width: 100%, breakable: isbreakable)[
                *#edu.institution*
                #text(style: "italic")[
                    #edu.degrees.map(it => [#it.type #it.area]).join(", ")
                ]
                #h(1fr)
                #aux[#edu.startYear #sym.dash.en #edu.endYear]
            ]
        }
    ]}
}

#let endnote() = {
    place(
        bottom + right,
        block[
            #set text(size: 8pt, fill: silver)
            Last Updated: #datetime.today().display("[year]-[month]-[day]") \
            Also available at: #link("https://jonathanj.in")[https://jonathanj.in]
        ]
    )
}

// ========================================================================== //

#show: doc => cvinit(doc)

#cvheading(personal)
#cvwork(cvdata)
#cveducation(cvdata)
#cvspeaking(cvdata)
#cv_skills()
#endnote()
