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
       22 DUPTABLE                         R9 K9 [{["tag"] = "col size-full-0 auto-y", ["layout"]}]
       23 DUPTABLE                         R10 K12 [{"FillDirection", "Padding"}]
       24 GETIMPORT                        R11 K15 [Enum.FillDirection.Vertical]
       26 SETTABLEKS                       R11 R10 K10 ["FillDirection"]
       28 GETIMPORT                        R11 K18 [UDim.new]
       30 LOADN                            R12 0
       31 GETTABLEKS                       R13 R2 K19 ["Margin"]
       33 GETTABLEKS                       R13 R13 K20 ["Medium"]
       35 CALL                             R11 2 1
       36 SETTABLEKS                       R11 R10 K11 ["Padding"]
       38 SETTABLEKS                       R10 R9 K8 ["layout"]
       40 DUPTABLE                         R10 K24 [{"Metadata", "Inline", "MultiLine"}]
       41 GETUPVAL                         R11 2
       42 GETTABLEKS                       R11 R11 K5 ["createElement"]
       44 GETUPVAL                         R12 3
       45 DUPTABLE                         R13 K28 [{["LayoutOrder"] = 1, ["tag"] = "row flex-between size-full-0 auto-y"}]
       46 DUPTABLE                         R14 K31 [{"Title", "Size"}]
       47 GETUPVAL                         R15 2
       48 GETTABLEKS                       R15 R15 K5 ["createElement"]
       50 GETUPVAL                         R16 4
       51 DUPTABLE                         R17 K34 [{["Text"], ["tag"] = "auto-xy text-label-large content-default"}]
       52 LOADK                            R19 K35 ["Typography.%*"]
       53 MOVE                             R21 R1
       54 NAMECALL                         R19 R19 K36 ["format"]
       56 CALL                             R19 2 1
       57 MOVE                             R18 R19
       58 SETTABLEKS                       R18 R17 K32 ["Text"]
       60 CALL                             R15 2 1
       61 SETTABLEKS                       R15 R14 K29 ["Title"]
       63 GETUPVAL                         R15 2
       64 GETTABLEKS                       R15 R15 K5 ["createElement"]
       66 GETUPVAL                         R16 4
       67 DUPTABLE                         R17 K34 [{["Text"], ["tag"] = "auto-xy text-label-large content-default"}]
       68 GETIMPORT                        R18 K38 [string.format]
       70 LOADK                            R19 K39 ["%dpx / %.1f (%dpx)"]
       71 FASTCALL1                        MATH_ROUND R4 ; [+3]
       72 MOVE                             R21 R4
       73 GETIMPORT                        R20 K42 [math.round]
       75 CALL                             R20 1 1
       76 MOVE                             R21 R5
       77 FASTCALL1                        MATH_ROUND R6 ; [+3]
       78 MOVE                             R23 R6
       79 GETIMPORT                        R22 K42 [math.round]
       81 CALL                             R22 1 1
       82 CALL                             R18 4 1
       83 SETTABLEKS                       R18 R17 K32 ["Text"]
       85 CALL                             R15 2 1
       86 SETTABLEKS                       R15 R14 K30 ["Size"]
       88 CALL                             R11 3 1
       89 SETTABLEKS                       R11 R10 K21 ["Metadata"]
       91 GETUPVAL                         R11 2
       92 GETTABLEKS                       R11 R11 K5 ["createElement"]
       94 GETUPVAL                         R12 3
       95 DUPTABLE                         R13 K45 [{["LayoutOrder"] = 2, ["tag"] = "col gap-small size-full-0 auto-y"}]
       96 DUPTABLE                         R14 K47 [{"Title", "Paragraph"}]
       97 GETUPVAL                         R15 2
       98 GETTABLEKS                       R15 R15 K5 ["createElement"]
      100 GETUPVAL                         R16 4
      101 DUPTABLE                         R17 K49 [{["Text"] = "Inline", ["tag"] = "auto-xy text-caption-large content-emphasis"}]
      102 CALL                             R15 2 1
      103 SETTABLEKS                       R15 R14 K29 ["Title"]
      105 GETUPVAL                         R15 2
      106 GETTABLEKS                       R15 R15 K5 ["createElement"]
      108 GETUPVAL                         R16 4
      109 DUPTABLE                         R17 K52 [{["Text"], ["fontStyle"], ["tag"] = "auto-xy text-align-x-left text-truncate-end content-emphasis"}]
      110 GETTABLEKS                       R18 R0 K0 ["controls"]
      112 GETTABLEKS                       R18 R18 K53 ["inline"]
      114 SETTABLEKS                       R18 R17 K32 ["Text"]
      116 SETTABLEKS                       R3 R17 K50 ["fontStyle"]
      118 CALL                             R15 2 1
      119 SETTABLEKS                       R15 R14 K46 ["Paragraph"]
      121 CALL                             R11 3 1
      122 SETTABLEKS                       R11 R10 K22 ["Inline"]
      124 GETUPVAL                         R11 2
      125 GETTABLEKS                       R11 R11 K5 ["createElement"]
      127 GETUPVAL                         R12 3
      128 DUPTABLE                         R13 K55 [{["LayoutOrder"] = 3, ["tag"] = "col gap-small size-full-0 auto-y"}]
      129 DUPTABLE                         R14 K47 [{"Title", "Paragraph"}]
      130 GETUPVAL                         R15 2
      131 GETTABLEKS                       R15 R15 K5 ["createElement"]
      133 GETUPVAL                         R16 4
      134 DUPTABLE                         R17 K57 [{["Text"] = "Multi-line", ["tag"] = "auto-xy text-caption-large content-emphasis"}]
      135 CALL                             R15 2 1
      136 SETTABLEKS                       R15 R14 K29 ["Title"]
      138 GETUPVAL                         R15 2
      139 GETTABLEKS                       R15 R15 K5 ["createElement"]
      141 GETUPVAL                         R16 4
      142 DUPTABLE                         R17 K59 [{["Text"], ["fontStyle"], ["tag"] = "auto-xy text-wrap text-align-x-left content-emphasis"}]
      143 GETTABLEKS                       R18 R0 K0 ["controls"]
      145 GETTABLEKS                       R18 R18 K60 ["multiline"]
      147 SETTABLEKS                       R18 R17 K32 ["Text"]
      149 SETTABLEKS                       R3 R17 K50 ["fontStyle"]
      151 CALL                             R15 2 1
      152 SETTABLEKS                       R15 R14 K46 ["Paragraph"]
      154 CALL                             R11 3 1
      155 SETTABLEKS                       R11 R10 K23 ["MultiLine"]
      157 CALL                             R7 3 -1
      158 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Enums"]
       13 GETTABLEKS                       R3 R3 K8 ["ControlState"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Dash"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["React"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R6 K12 ["Text"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["View"]
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
       64 GETTABLEKS                       R11 R11 K12 ["Text"]
       66 GETTABLEKS                       R11 R11 K22 ["NominalScale"]
       68 DUPCLOSURE                       R12 K23 [PROTO_0]
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R5
       74 DUPTABLE                         R13 K27 [{["summary"] = "Text", ["stories"], ["controls"]}]
       75 NEWTABLE                         R14 0 1
       77 DUPTABLE                         R15 K30 [{["name"] = "Typography", ["story"]}]
       78 SETTABLEKS                       R12 R15 K29 ["story"]
       80 SETLIST                          R14 R15 1 [1]
       82 SETTABLEKS                       R14 R13 K25 ["stories"]
       84 DUPTABLE                         R14 K36 [{["inline"] = "Let's prioritize the low-hanging fruit old boys club, performance review. Big data. let's unpack that later, but if you want to motivate these clowns, try less carrot and more stick.", ["multiline"] = "Innovation is hot right now we need more paper, or please use “solutionise” instead of solution ideas! Imagineer diversify KPIs. Put it on the parking lot we need to socialize the comms with the wider stakeholder community throughput. Let's circle back to that a tentative event rundown is attached for your reference, including other happenings on the day you are most welcome to join us beforehand for a light lunch we would also like to invite you to other activities on the day, including the interim and closing panel discussions on the intersection of businesses and social innovation. In this space make sure to include in your wheelhouse helicopter view. This proposal is a win-win situation which will cause a stellar paradigm shift, and produce a multi-fold increase in deliverables, conversational content; but let's not try to boil the ocean.", ["typography"]}]
       85 GETTABLEKS                       R15 R3 K37 ["keys"]
       87 MOVE                             R16 R10
       88 CALL                             R15 1 1
       89 SETTABLEKS                       R15 R14 K35 ["typography"]
       91 SETTABLEKS                       R14 R13 K26 ["controls"]
       93 RETURN                           R13 1
