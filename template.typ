// Template de ejemplo para Frontiers en Typst
#import "lib.typ": frontiers

#show: frontiers.with(
  title: "Article Title",
  running-title: "Running Title",
  
  authors: (
    (
      name: "First Author",
      affiliations: ("1", "*"),
    ),
    (
      name: "Co-Author",
      affiliations: ("2",),
    ),
    (
      name: "Co-Author",
      affiliations: ("1", "2"),
    ),
  ),
  
  affiliations: (
    "Laboratory X, Institute X, Department X, Organization X, City X, State XX, Country X",
    "Laboratory Y, Institute Y, Department Y, Organization Y, City Y, State YY, Country Y",
  ),
  
  corresponding-author: (
    name: "Corresponding Author",
    email: "email@uni.edu",
  ),
  
  keywords: (
    "keyword",
    "keyword",
    "keyword",
    "keyword",
    "keyword",
  ),
  
  abstract: [
    For full guidelines regarding your manuscript please refer to Author Guidelines.
    
    As a primary goal, the abstract should render the general significance and conceptual advance of the work clearly accessible to a broad readership. References should not be cited in the abstract.
  ],
  
  citation-style: "harvard",
  line-numbers: false,
)

= Introduction

For Original Research Articles, Clinical Trial Articles, and Technology Reports, the introduction should be succinct, with no subheadings. For Case Reports the Introduction should include symptoms at presentation, physical exams and lab results.

= Article Types

For requirements for a specific article type please refer to the Article Types on any Frontiers journal page. Please also refer to Author Guidelines for further information on how to organize your manuscript in the required sections or their equivalents for your field.

= Manuscript Formatting

== Heading Levels

There are 5 heading levels demonstrated below:

== Level 2

=== Level 3

==== Level 4

===== Level 5

== Equations

Equations should be inserted in editable format.

$ sum x + y = Z $ <eq:01>

== Figures

Frontiers requires figures to be submitted individually, in the same order as they are referred to in the manuscript. Figures will then be automatically embedded at the bottom of the submitted manuscript.

#figure(
  rect(width: 8cm, height: 5cm, fill: rgb("#e0e0e0"))[
    #align(center + horizon)[
      #text(size: 14pt)[Figure Placeholder]
    ]
  ],
  caption: [Enter the caption for your figure here. Repeat as necessary for each of your figures.],
) <fig:1>

=== Permission to Reuse and Copyright

Figures, tables, and images will be published under a Creative Commons CC-BY licence and permission must be obtained for use of copyrighted material from other sources.

== Tables

Tables should be inserted at the end of the manuscript or inline with the text. Please build your table directly in Typst.

#figure(
  table(
    columns: 3,
    stroke: (x, y) => if y == 0 { (bottom: 0.5pt) } else if y == 1 { (top: 0.5pt, bottom: 0.5pt) } else { none },
    [*Column 1*], [*Column 2*], [*Column 3*],
    [Data 1], [Data 2], [Data 3],
    [Data 4], [Data 5], [Data 6],
  ),
  caption: [Table caption goes here.],
) <tab:1>

= Nomenclature

== Resource Identification Initiative

To take part in the Resource Identification Initiative, please use the corresponding catalog number and RRID in your current manuscript.

= Additional Requirements

For additional requirements for specific article types and further information please refer to Author Guidelines.

#heading(numbering: none)[Conflict of Interest Statement]

The authors declare that the research was conducted in the absence of any commercial or financial relationships that could be construed as a potential conflict of interest.

#heading(numbering: none)[Author Contributions]

The Author Contributions section is mandatory for all articles, including articles by sole authors.

#heading(numbering: none)[Funding]

Details of all funding sources should be provided, including grant numbers if applicable.

#heading(numbering: none)[Acknowledgments]

This is a short text to acknowledge the contributions of specific colleagues, institutions, or agencies that aided the efforts of the authors.

#heading(numbering: none)[Data Availability Statement]

The datasets [GENERATED/ANALYZED] for this study can be found in the [NAME OF REPOSITORY] [LINK].

// Bibliografía se agregaría aquí usando el sistema de bibliografía de Typst
