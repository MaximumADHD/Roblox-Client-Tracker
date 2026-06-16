PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R1 R1 K1 ["typography"]
        4 GETUPVAL                         R2 0
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R4 R2 K2 ["Typography"]
        8 GETTABLE                         R3 R4 R1
        9 GETTABLEKS                       R5 R3 K3 ["FontSize"]
       11 GETUPVAL                         R6 1
       12 DIV                              R4 R5 R6
       13 GETTABLEKS                       R6 R3 K4 ["LineHeight"]
       15 GETUPVAL                         R7 1
       16 MUL                              R5 R6 R7
       17 MUL                              R6 R4 R5
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R7 R7 K5 ["createElement"]
       21 GETUPVAL                         R8 3
       22 DUPTABLE                         R9 K8 [{"tag", "layout"}]
       23 LOADK                            R10 K9 ["auto-y size-full-0 col"]
       24 SETTABLEKS                       R10 R9 K6 ["tag"]
       26 DUPTABLE                         R10 K12 [{"FillDirection", "Padding"}]
       27 GETIMPORT                        R11 K15 [Enum.FillDirection.Vertical]
       29 SETTABLEKS                       R11 R10 K10 ["FillDirection"]
       31 GETIMPORT                        R11 K18 [UDim.new]
       33 LOADN                            R12 0
       34 GETTABLEKS                       R13 R2 K19 ["Margin"]
       36 GETTABLEKS                       R13 R13 K20 ["Medium"]
       38 CALL                             R11 2 1
       39 SETTABLEKS                       R11 R10 K11 ["Padding"]
       41 SETTABLEKS                       R10 R9 K7 ["layout"]
       43 DUPTABLE                         R10 K24 [{"Metadata", "Inline", "MultiLine"}]
       44 GETUPVAL                         R11 2
       45 GETTABLEKS                       R11 R11 K5 ["createElement"]
       47 GETUPVAL                         R12 3
       48 DUPTABLE                         R13 K26 [{"LayoutOrder", "tag"}]
       49 LOADN                            R14 1
       50 SETTABLEKS                       R14 R13 K25 ["LayoutOrder"]
       52 LOADK                            R14 K27 ["flex-between row auto-y size-full-0"]
       53 SETTABLEKS                       R14 R13 K6 ["tag"]
       55 DUPTABLE                         R14 K30 [{"Title", "Size"}]
       56 GETUPVAL                         R15 2
       57 GETTABLEKS                       R15 R15 K5 ["createElement"]
       59 GETUPVAL                         R16 4
       60 DUPTABLE                         R17 K32 [{"Text", "tag"}]
       61 LOADK                            R19 K33 ["Typography.%*"]
       62 MOVE                             R21 R1
       63 NAMECALL                         R19 R19 K34 ["format"]
       65 CALL                             R19 2 1
       66 MOVE                             R18 R19
       67 SETTABLEKS                       R18 R17 K31 ["Text"]
       69 LOADK                            R18 K35 ["content-default text-label-large auto-xy"]
       70 SETTABLEKS                       R18 R17 K6 ["tag"]
       72 CALL                             R15 2 1
       73 SETTABLEKS                       R15 R14 K28 ["Title"]
       75 GETUPVAL                         R15 2
       76 GETTABLEKS                       R15 R15 K5 ["createElement"]
       78 GETUPVAL                         R16 4
       79 DUPTABLE                         R17 K32 [{"Text", "tag"}]
       80 GETIMPORT                        R18 K37 [string.format]
       82 LOADK                            R19 K38 ["%dpx / %.1f (%dpx)"]
       83 FASTCALL1                        MATH_ROUND R4 ; [+3]
       84 MOVE                             R21 R4
       85 GETIMPORT                        R20 K41 [math.round]
       87 CALL                             R20 1 1
       88 MOVE                             R21 R5
       89 FASTCALL1                        MATH_ROUND R6 ; [+3]
       90 MOVE                             R23 R6
       91 GETIMPORT                        R22 K41 [math.round]
       93 CALL                             R22 1 1
       94 CALL                             R18 4 1
       95 SETTABLEKS                       R18 R17 K31 ["Text"]
       97 LOADK                            R18 K35 ["content-default text-label-large auto-xy"]
       98 SETTABLEKS                       R18 R17 K6 ["tag"]
      100 CALL                             R15 2 1
      101 SETTABLEKS                       R15 R14 K29 ["Size"]
      103 CALL                             R11 3 1
      104 SETTABLEKS                       R11 R10 K21 ["Metadata"]
      106 GETUPVAL                         R11 2
      107 GETTABLEKS                       R11 R11 K5 ["createElement"]
      109 GETUPVAL                         R12 3
      110 DUPTABLE                         R13 K26 [{"LayoutOrder", "tag"}]
      111 LOADN                            R14 2
      112 SETTABLEKS                       R14 R13 K25 ["LayoutOrder"]
      114 LOADK                            R14 K42 ["col gap-small size-full-0 auto-y"]
      115 SETTABLEKS                       R14 R13 K6 ["tag"]
      117 DUPTABLE                         R14 K44 [{"Title", "Paragraph"}]
      118 GETUPVAL                         R15 2
      119 GETTABLEKS                       R15 R15 K5 ["createElement"]
      121 GETUPVAL                         R16 4
      122 DUPTABLE                         R17 K32 [{"Text", "tag"}]
      123 LOADK                            R18 K22 ["Inline"]
      124 SETTABLEKS                       R18 R17 K31 ["Text"]
      126 LOADK                            R18 K45 ["content-emphasis text-caption-large auto-xy"]
      127 SETTABLEKS                       R18 R17 K6 ["tag"]
      129 CALL                             R15 2 1
      130 SETTABLEKS                       R15 R14 K28 ["Title"]
      132 GETUPVAL                         R15 2
      133 GETTABLEKS                       R15 R15 K5 ["createElement"]
      135 GETUPVAL                         R16 4
      136 DUPTABLE                         R17 K47 [{"Text", "fontStyle", "tag"}]
      137 GETTABLEKS                       R18 R0 K0 ["controls"]
      139 GETTABLEKS                       R18 R18 K48 ["inline"]
      141 SETTABLEKS                       R18 R17 K31 ["Text"]
      143 SETTABLEKS                       R3 R17 K46 ["fontStyle"]
      145 LOADK                            R18 K49 ["content-emphasis text-truncate-end auto-xy text-align-x-left"]
      146 SETTABLEKS                       R18 R17 K6 ["tag"]
      148 CALL                             R15 2 1
      149 SETTABLEKS                       R15 R14 K43 ["Paragraph"]
      151 CALL                             R11 3 1
      152 SETTABLEKS                       R11 R10 K22 ["Inline"]
      154 GETUPVAL                         R11 2
      155 GETTABLEKS                       R11 R11 K5 ["createElement"]
      157 GETUPVAL                         R12 3
      158 DUPTABLE                         R13 K26 [{"LayoutOrder", "tag"}]
      159 LOADN                            R14 3
      160 SETTABLEKS                       R14 R13 K25 ["LayoutOrder"]
      162 LOADK                            R14 K42 ["col gap-small size-full-0 auto-y"]
      163 SETTABLEKS                       R14 R13 K6 ["tag"]
      165 DUPTABLE                         R14 K44 [{"Title", "Paragraph"}]
      166 GETUPVAL                         R15 2
      167 GETTABLEKS                       R15 R15 K5 ["createElement"]
      169 GETUPVAL                         R16 4
      170 DUPTABLE                         R17 K32 [{"Text", "tag"}]
      171 LOADK                            R18 K50 ["Multi-line"]
      172 SETTABLEKS                       R18 R17 K31 ["Text"]
      174 LOADK                            R18 K45 ["content-emphasis text-caption-large auto-xy"]
      175 SETTABLEKS                       R18 R17 K6 ["tag"]
      177 CALL                             R15 2 1
      178 SETTABLEKS                       R15 R14 K28 ["Title"]
      180 GETUPVAL                         R15 2
      181 GETTABLEKS                       R15 R15 K5 ["createElement"]
      183 GETUPVAL                         R16 4
      184 DUPTABLE                         R17 K47 [{"Text", "fontStyle", "tag"}]
      185 GETTABLEKS                       R18 R0 K0 ["controls"]
      187 GETTABLEKS                       R18 R18 K51 ["multiline"]
      189 SETTABLEKS                       R18 R17 K31 ["Text"]
      191 SETTABLEKS                       R3 R17 K46 ["fontStyle"]
      193 LOADK                            R18 K52 ["content-emphasis auto-xy text-wrap text-align-x-left"]
      194 SETTABLEKS                       R18 R17 K6 ["tag"]
      196 CALL                             R15 2 1
      197 SETTABLEKS                       R15 R14 K43 ["Paragraph"]
      199 CALL                             R11 3 1
      200 SETTABLEKS                       R11 R10 K23 ["MultiLine"]
      202 CALL                             R7 3 -1
      203 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["View"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["Text"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["ControlState"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K14 ["Providers"]
       44 GETTABLEKS                       R8 R8 K15 ["Style"]
       46 GETTABLEKS                       R8 R8 K16 ["useTokens"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R1 K17 ["RbxDesignFoundations"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R8 K18 ["Tokens"]
       56 GETTABLEKS                       R9 R9 K19 ["Dark"]
       58 LOADN                            R10 1
       59 CALL                             R9 1 1
       60 GETTABLEKS                       R10 R9 K20 ["Typography"]
       62 GETTABLEKS                       R11 R9 K21 ["Config"]
       64 GETTABLEKS                       R11 R11 K11 ["Text"]
       66 GETTABLEKS                       R11 R11 K22 ["NominalScale"]
       68 DUPCLOSURE                       R12 K23 [PROTO_0]
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R5
       74 DUPTABLE                         R13 K27 [{"summary", "stories", "controls"}]
       75 LOADK                            R14 K11 ["Text"]
       76 SETTABLEKS                       R14 R13 K24 ["summary"]
       78 NEWTABLE                         R14 0 1
       80 DUPTABLE                         R15 K30 [{"name", "story"}]
       81 LOADK                            R16 K20 ["Typography"]
       82 SETTABLEKS                       R16 R15 K28 ["name"]
       84 SETTABLEKS                       R12 R15 K29 ["story"]
       86 SETLIST                          R14 R15 1 [1]
       88 SETTABLEKS                       R14 R13 K25 ["stories"]
       90 DUPTABLE                         R14 K34 [{"inline", "multiline", "typography"}]
       91 LOADK                            R15 K35 ["Let's prioritize the low-hanging fruit old boys club, performance review. Big data. let's unpack that later, but if you want to motivate these clowns, try less carrot and more stick."]
       92 SETTABLEKS                       R15 R14 K31 ["inline"]
       94 LOADK                            R15 K36 ["Innovation is hot right now we need more paper, or please use “solutionise” instead of solution ideas! Imagineer diversify KPIs. Put it on the parking lot we need to socialize the comms with the wider stakeholder community throughput. Let's circle back to that a tentative event rundown is attached for your reference, including other happenings on the day you are most welcome to join us beforehand for a light lunch we would also like to invite you to other activities on the day, including the interim and closing panel discussions on the intersection of businesses and social innovation. In this space make sure to include in your wheelhouse helicopter view. This proposal is a win-win situation which will cause a stellar paradigm shift, and produce a multi-fold increase in deliverables, conversational content; but let's not try to boil the ocean."]
       95 SETTABLEKS                       R15 R14 K32 ["multiline"]
       97 GETTABLEKS                       R15 R3 K37 ["keys"]
       99 MOVE                             R16 R10
      100 CALL                             R15 1 1
      101 SETTABLEKS                       R15 R14 K33 ["typography"]
      103 SETTABLEKS                       R14 R13 K26 ["controls"]
      105 RETURN                           R13 1
