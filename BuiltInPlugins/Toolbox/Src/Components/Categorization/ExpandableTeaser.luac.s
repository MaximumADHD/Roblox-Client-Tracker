PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnExpandChanged"]
        5 GETTABLEKS                       R3 R0 K2 ["isExpanded"]
        7 NOT                              R2 R3
        8 JUMPIFNOT                        R1 ; [+3]
        9 MOVE                             R3 R1
       10 MOVE                             R4 R2
       11 CALL                             R3 1 0
       12 DUPTABLE                         R3 K3 [{"isExpanded"}]
       13 SETTABLEKS                       R2 R3 K2 ["isExpanded"]
       15 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R0 R0 K0 ["setState"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["contentRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 DUPTABLE                         R2 K3 [{"contentSize"}]
        8 GETTABLEKS                       R3 R1 K4 ["AbsoluteSize"]
       10 SETTABLEKS                       R3 R2 K2 ["contentSize"]
       12 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R0 R0 K0 ["setState"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["contentRef"]
        6 DUPTABLE                         R1 K5 [{["contentSize"], ["isExpanded"] = False}]
        7 GETIMPORT                        R2 K8 [Vector2.new]
        9 LOADN                            R3 0
       10 LOADN                            R4 0
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R1 K2 ["contentSize"]
       14 SETTABLEKS                       R1 R0 K9 ["state"]
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K10 ["toggleContent"]
       20 NEWCLOSURE                       R1 P1
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K11 ["onContentSizeChange"]
       24 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["AutomaticSize"]
        6 GETTABLEKS                       R4 R1 K3 ["Layout"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["Localization"]
       12 GETTABLEKS                       R7 R1 K6 ["Size"]
       14 GETTABLEKS                       R8 R1 K7 ["Stylizer"]
       16 GETTABLEKS                       R9 R1 K8 ["TeaserSize"]
       18 GETTABLEKS                       R10 R1 K9 ["Title"]
       20 GETTABLEKS                       R11 R2 K10 ["contentSize"]
       22 GETTABLEKS                       R12 R8 K11 ["searchPill"]
       24 LOADK                            R15 K12 ["General"]
       25 LOADK                            R16 K13 ["ShowLess"]
       26 NAMECALL                         R13 R6 K14 ["getText"]
       28 CALL                             R13 3 1
       29 LOADK                            R16 K12 ["General"]
       30 LOADK                            R17 K15 ["ShowMore"]
       31 NAMECALL                         R14 R6 K14 ["getText"]
       33 CALL                             R14 3 1
       34 GETUPVAL                         R15 0
       35 GETTABLEKS                       R15 R15 K16 ["new"]
       37 CALL                             R15 0 1
       38 LOADNIL                          R16
       39 LOADNIL                          R17
       40 LOADNIL                          R18
       41 GETTABLEKS                       R19 R2 K17 ["isExpanded"]
       43 JUMPIFNOT                        R19 ; [+6]
       44 MOVE                             R16 R3
       45 MOVE                             R19 R13
       46 LOADK                            R20 K18 [" -"]
       47 CONCAT                           R17 R19 R20
       48 MOVE                             R18 R11
       49 JUMP                             ; [+4]
       50 MOVE                             R19 R14
       51 LOADK                            R20 K19 [" +"]
       52 CONCAT                           R17 R19 R20
       53 MOVE                             R18 R9
       54 LOADNIL                          R19
       55 GETIMPORT                        R20 K22 [Enum.AutomaticSize.Y]
       57 JUMPIFNOTEQ                      R3 R20 ; [+11]
       59 GETIMPORT                        R20 K24 [UDim2.new]
       61 LOADN                            R21 1
       62 LOADN                            R22 0
       63 LOADN                            R23 0
       64 GETTABLEKS                       R24 R18 K21 ["Y"]
       66 CALL                             R20 4 1
       67 MOVE                             R19 R20
       68 JUMP                             ; [+9]
       69 GETIMPORT                        R20 K24 [UDim2.new]
       71 LOADN                            R21 0
       72 GETTABLEKS                       R22 R18 K25 ["X"]
       74 LOADN                            R23 1
       75 LOADN                            R24 0
       76 CALL                             R20 4 1
       77 MOVE                             R19 R20
       78 GETUPVAL                         R20 1
       79 GETTABLEKS                       R20 R20 K26 ["createElement"]
       81 GETUPVAL                         R21 2
       82 DUPTABLE                         R22 K31 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"], ["Size"], ["Spacing"] = 5, ["HorizontalAlignment"], ["VerticalAlignment"]}]
       83 SETTABLEKS                       R3 R22 K2 ["AutomaticSize"]
       85 SETTABLEKS                       R4 R22 K3 ["Layout"]
       87 SETTABLEKS                       R5 R22 K4 ["LayoutOrder"]
       89 SETTABLEKS                       R7 R22 K6 ["Size"]
       91 GETIMPORT                        R23 K33 [Enum.HorizontalAlignment.Left]
       93 SETTABLEKS                       R23 R22 K29 ["HorizontalAlignment"]
       95 GETIMPORT                        R23 K35 [Enum.VerticalAlignment.Top]
       97 SETTABLEKS                       R23 R22 K30 ["VerticalAlignment"]
       99 DUPTABLE                         R23 K38 [{"SectionHeader", "Content"}]
      100 GETUPVAL                         R24 1
      101 GETTABLEKS                       R24 R24 K26 ["createElement"]
      103 GETUPVAL                         R25 3
      104 DUPTABLE                         R26 K41 [{"OnClickSeeAll", "LayoutOrder", "SeeAllText", "Title"}]
      105 GETTABLEKS                       R27 R0 K42 ["toggleContent"]
      107 SETTABLEKS                       R27 R26 K39 ["OnClickSeeAll"]
      109 NAMECALL                         R27 R15 K43 ["getNextOrder"]
      111 CALL                             R27 1 1
      112 SETTABLEKS                       R27 R26 K4 ["LayoutOrder"]
      114 SETTABLEKS                       R17 R26 K40 ["SeeAllText"]
      116 SETTABLEKS                       R10 R26 K9 ["Title"]
      118 CALL                             R24 2 1
      119 SETTABLEKS                       R24 R23 K36 ["SectionHeader"]
      121 GETUPVAL                         R24 1
      122 GETTABLEKS                       R24 R24 K26 ["createElement"]
      124 GETUPVAL                         R25 2
      125 NEWTABLE                         R26 16 0
      127 SETTABLEKS                       R16 R26 K2 ["AutomaticSize"]
      129 LOADB                            R27 1
      130 SETTABLEKS                       R27 R26 K44 ["ClipsDescendants"]
      132 GETIMPORT                        R27 K33 [Enum.HorizontalAlignment.Left]
      134 SETTABLEKS                       R27 R26 K29 ["HorizontalAlignment"]
      136 GETIMPORT                        R27 K47 [Enum.FillDirection.Vertical]
      138 SETTABLEKS                       R27 R26 K3 ["Layout"]
      140 NAMECALL                         R27 R15 K43 ["getNextOrder"]
      142 CALL                             R27 1 1
      143 SETTABLEKS                       R27 R26 K4 ["LayoutOrder"]
      145 SETTABLEKS                       R19 R26 K6 ["Size"]
      147 GETIMPORT                        R27 K35 [Enum.VerticalAlignment.Top]
      149 SETTABLEKS                       R27 R26 K30 ["VerticalAlignment"]
      151 GETUPVAL                         R27 1
      152 GETTABLEKS                       R27 R27 K48 ["Change"]
      154 GETTABLEKS                       R27 R27 K49 ["AbsoluteSize"]
      156 GETTABLEKS                       R28 R0 K50 ["onContentSizeChange"]
      158 SETTABLE                         R28 R26 R27
      159 GETUPVAL                         R27 1
      160 GETTABLEKS                       R27 R27 K51 ["Ref"]
      162 GETTABLEKS                       R28 R0 K52 ["contentRef"]
      164 SETTABLE                         R28 R26 R27
      165 GETTABLEKS                       R28 R0 K0 ["props"]
      167 GETUPVAL                         R29 1
      168 GETTABLEKS                       R29 R29 K53 ["Children"]
      170 GETTABLE                         R27 R28 R29
      171 CALL                             R24 3 1
      172 SETTABLEKS                       R24 R23 K37 ["Content"]
      174 CALL                             R20 3 -1
      175 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Roact"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Src"]
       23 GETTABLEKS                       R5 R5 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["Categorization"]
       27 GETTABLEKS                       R5 R5 K12 ["SectionHeader"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K13 ["Dash"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R2 K14 ["Util"]
       37 GETTABLEKS                       R6 R6 K15 ["LayoutOrderIterator"]
       39 GETTABLEKS                       R7 R2 K16 ["UI"]
       41 GETTABLEKS                       R7 R7 K17 ["Pane"]
       43 GETTABLEKS                       R8 R2 K18 ["ContextServices"]
       45 GETTABLEKS                       R9 R2 K16 ["UI"]
       47 GETTABLEKS                       R9 R9 K19 ["HoverArea"]
       49 GETTABLEKS                       R10 R8 K20 ["withContext"]
       51 GETTABLEKS                       R11 R3 K21 ["PureComponent"]
       53 LOADK                            R13 K22 ["ExpandableTeaser"]
       54 NAMECALL                         R11 R11 K23 ["extend"]
       56 CALL                             R11 2 1
       57 DUPTABLE                         R12 K30 [{["AlwaysExpanded"] = False, ["AutomaticSize"], ["Layout"], ["Size"], ["TeaserSize"]}]
       58 GETIMPORT                        R13 K33 [Enum.AutomaticSize.Y]
       60 SETTABLEKS                       R13 R12 K26 ["AutomaticSize"]
       62 GETIMPORT                        R13 K36 [Enum.FillDirection.Vertical]
       64 SETTABLEKS                       R13 R12 K27 ["Layout"]
       66 GETIMPORT                        R13 K39 [UDim2.new]
       68 LOADN                            R14 1
       69 LOADN                            R15 0
       70 LOADN                            R16 0
       71 LOADN                            R17 0
       72 CALL                             R13 4 1
       73 SETTABLEKS                       R13 R12 K28 ["Size"]
       75 GETIMPORT                        R13 K41 [Vector2.new]
       77 LOADN                            R14 0
       78 LOADN                            R15 0
       79 CALL                             R13 2 1
       80 SETTABLEKS                       R13 R12 K29 ["TeaserSize"]
       82 SETTABLEKS                       R12 R11 K42 ["defaultProps"]
       84 DUPCLOSURE                       R12 K43 [PROTO_4]
       85 CAPTURE                          VAL R3
       86 SETTABLEKS                       R12 R11 K44 ["init"]
       88 DUPCLOSURE                       R12 K45 [PROTO_5]
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R12 R11 K46 ["render"]
       95 MOVE                             R12 R10
       96 DUPTABLE                         R13 K49 [{"Localization", "Stylizer"}]
       97 GETTABLEKS                       R14 R8 K47 ["Localization"]
       99 SETTABLEKS                       R14 R13 K47 ["Localization"]
      101 GETTABLEKS                       R14 R8 K48 ["Stylizer"]
      103 SETTABLEKS                       R14 R13 K48 ["Stylizer"]
      105 CALL                             R12 1 1
      106 MOVE                             R13 R11
      107 CALL                             R12 1 1
      108 MOVE                             R11 R12
      109 RETURN                           R11 1
