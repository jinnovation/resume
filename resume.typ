#import "time.typ"
#import "data.typ": personal, skills

#let cvdata = yaml("resume.yaml")

#show link: set text(blue)

#let heading_font = "Linux Libertine"
#let body_font = "Linux Libertine"
#let line_spacing = 6pt

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
        font: body_font,
        size: 10pt,
        hyphenate: false,
    )

    set list(
        spacing: line_spacing,
    )

    set par(
        leading: line_spacing,
        justify: true,
    )

    // section headings, e.g. "Professional Experience"
    show heading.where(level: 2): it => block(width: 100%)[
        #set align(left)
        #set text(font: heading_font, size: 1.1em, weight: "bold")
        #upper(it.body)
        #v(-0.75em) #line(length: 100%, stroke: 1pt + black) // draw a line
    ]

    // company names
    show heading.where(level: 3): it => block(width: 100%)[
        #set text(font: heading_font, size: 1.1em, weight: "bold", fill: blue)
        #it
    ]

    // my name
    show heading.where(level: 1): it => block(width: 100%)[
        #set text(font: heading_font, size: 2.0em, weight: "bold")
        #upper(it.body)
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
    if info.speaking == none {
        return
    }

    block[
        == Speaking
        #for speaking in info.speaking {
            let date = time.strpdate(speaking.date)
            let title = if speaking.url != none [#link(speaking.url)[#speaking.title]] else [#speaking.title]
            block(width: 100%, breakable: isbreakable, spacing: 0.5em)[
                *#speaking.conference*, "#title" #h(1fr) #aux[#date]
            ]
        }
    ]
}

#let cvwork(info, isbreakable: true) = {
    if info.work == none {
        return
    }

    block[
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
                === #org
                *#w.position* #h(1fr) #aux[#w.location, #start #sym.dash.en #end] \
                #if w.at("blurb", default: "") != "" [
                    #set text(style: "italic")
                    #w.at("blurb")

                ]
                #if w.at("concise", default: false) [] else [
                    // highlights or description
                    #for hi in w.highlights [
                        - #eval(hi, mode: "markup")
                    ]
                ]
            ]
        }
    ]
}

#let cv_skills(skills: skills) = {
    [
        == Skills
        #for (group, items) in skills [
            - *#group*: #items.join(", ")
        ]
    ]
}

#let cveducation(info, isbreakable: true) = {
    if info.education == none {
        return
    }

    block[
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
    ]
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
