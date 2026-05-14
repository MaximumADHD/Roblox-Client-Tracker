PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setRating"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADB                            R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["Stars"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["useState"]
       12 NEWTABLE                         R4 0 0
       14 CALL                             R3 1 2
       15 GETIMPORT                        R5 K4 [next]
       17 MOVE                             R6 R3
       18 CALL                             R5 1 1
       19 JUMPIF                           R5 ; [+4]
       20 GETTABLEKS                       R5 R0 K5 ["rating"]
       22 JUMPIF                           R5 ; [+1]
       23 LOADN                            R5 0
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K6 ["new"]
       27 CALL                             R6 0 1
       28 NEWTABLE                         R7 0 0
       30 LOADN                            R10 1
       31 LOADN                            R8 5
       32 LOADN                            R9 1
       33 FORNPREP                         R8
       34 LOADK                            R12 K7 ["Star%*"]
       35 MOVE                             R14 R10
       36 NAMECALL                         R12 R12 K8 ["format"]
       38 CALL                             R12 2 1
       39 MOVE                             R11 R12
       40 GETUPVAL                         R12 2
       41 GETTABLEKS                       R12 R12 K9 ["createElement"]
       43 GETUPVAL                         R13 4
       44 NEWTABLE                         R14 8 0
       46 SETTABLEKS                       R10 R14 K10 ["LayoutOrder"]
       48 GETTABLEKS                       R16 R2 K11 ["StarSize"]
       50 GETIMPORT                        R17 K14 [UDim2.fromOffset]
       52 GETTABLEKS                       R18 R2 K15 ["StarSpacing"]
       54 LOADN                            R19 0
       55 CALL                             R17 2 1
       56 ADD                              R15 R16 R17
       57 SETTABLEKS                       R15 R14 K16 ["Size"]
       59 NEWCLOSURE                       R15 P0
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R10
       62 SETTABLEKS                       R15 R14 K17 ["OnClick"]
       64 GETUPVAL                         R15 2
       65 GETTABLEKS                       R15 R15 K18 ["Event"]
       67 GETTABLEKS                       R15 R15 K19 ["MouseEnter"]
       69 NEWCLOSURE                       R16 P1
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R10
       72 SETTABLE                         R16 R14 R15
       73 GETUPVAL                         R15 2
       74 GETTABLEKS                       R15 R15 K18 ["Event"]
       76 GETTABLEKS                       R15 R15 K20 ["MouseLeave"]
       78 NEWCLOSURE                       R16 P2
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R10
       81 SETTABLE                         R16 R14 R15
       82 GETUPVAL                         R15 2
       83 GETTABLEKS                       R15 R15 K21 ["Tag"]
       85 LOADK                            R17 K22 ["data-testid=Star%*"]
       86 MOVE                             R19 R10
       87 NAMECALL                         R17 R17 K8 ["format"]
       89 CALL                             R17 2 1
       90 MOVE                             R16 R17
       91 SETTABLE                         R16 R14 R15
       92 DUPTABLE                         R15 K24 [{"Image"}]
       93 GETUPVAL                         R16 2
       94 GETTABLEKS                       R16 R16 K9 ["createElement"]
       96 GETUPVAL                         R17 5
       97 DUPTABLE                         R18 K28 [{"AnchorPoint", "Image", "ImageColor3", "Position", "Size"}]
       98 GETIMPORT                        R19 K30 [Vector2.new]
      100 LOADK                            R20 K31 [0.5]
      101 LOADN                            R21 0
      102 CALL                             R19 2 1
      103 SETTABLEKS                       R19 R18 K25 ["AnchorPoint"]
      105 JUMPIFNOTLE                      R10 R5 ; [+4]
      107 GETTABLEKS                       R19 R2 K32 ["StarFilled"]
      109 JUMP                             ; [+2]
      110 GETTABLEKS                       R19 R2 K33 ["StarUnfilled"]
      112 SETTABLEKS                       R19 R18 K23 ["Image"]
      114 GETTABLEKS                       R19 R2 K34 ["StarColor"]
      116 SETTABLEKS                       R19 R18 K26 ["ImageColor3"]
      118 GETIMPORT                        R19 K36 [UDim2.fromScale]
      120 LOADK                            R20 K31 [0.5]
      121 LOADN                            R21 0
      122 CALL                             R19 2 1
      123 SETTABLEKS                       R19 R18 K27 ["Position"]
      125 GETTABLEKS                       R19 R2 K11 ["StarSize"]
      127 SETTABLEKS                       R19 R18 K16 ["Size"]
      129 CALL                             R16 2 1
      130 SETTABLEKS                       R16 R15 K23 ["Image"]
      132 CALL                             R12 3 1
      133 SETTABLE                         R12 R7 R11
      134 FORNLOOP                         R8
      135 GETUPVAL                         R8 2
      136 GETTABLEKS                       R8 R8 K9 ["createElement"]
      138 GETUPVAL                         R9 4
      139 DUPTABLE                         R10 K41 [{"AutomaticSize", "LayoutOrder", "Layout", "HorizontalAlignment", "Spacing"}]
      140 GETIMPORT                        R11 K44 [Enum.AutomaticSize.Y]
      142 SETTABLEKS                       R11 R10 K37 ["AutomaticSize"]
      144 GETTABLEKS                       R11 R0 K45 ["layoutOrder"]
      146 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
      148 GETIMPORT                        R11 K48 [Enum.FillDirection.Horizontal]
      150 SETTABLEKS                       R11 R10 K38 ["Layout"]
      152 GETIMPORT                        R11 K50 [Enum.HorizontalAlignment.Left]
      154 SETTABLEKS                       R11 R10 K39 ["HorizontalAlignment"]
      156 GETTABLEKS                       R11 R2 K51 ["RatingSpacing"]
      158 SETTABLEKS                       R11 R10 K40 ["Spacing"]
      160 DUPTABLE                         R11 K53 [{"Stars", "Text"}]
      161 GETUPVAL                         R12 2
      162 GETTABLEKS                       R12 R12 K9 ["createElement"]
      164 GETUPVAL                         R13 4
      165 DUPTABLE                         R14 K54 [{"AutomaticSize", "LayoutOrder", "Layout"}]
      166 GETIMPORT                        R15 K56 [Enum.AutomaticSize.X]
      168 SETTABLEKS                       R15 R14 K37 ["AutomaticSize"]
      170 NAMECALL                         R15 R6 K57 ["getNextOrder"]
      172 CALL                             R15 1 1
      173 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      175 GETIMPORT                        R15 K48 [Enum.FillDirection.Horizontal]
      177 SETTABLEKS                       R15 R14 K38 ["Layout"]
      179 MOVE                             R15 R7
      180 CALL                             R12 3 1
      181 SETTABLEKS                       R12 R11 K1 ["Stars"]
      183 GETUPVAL                         R12 2
      184 GETTABLEKS                       R12 R12 K9 ["createElement"]
      186 GETUPVAL                         R13 6
      187 DUPTABLE                         R14 K58 [{"AutomaticSize", "LayoutOrder", "Text"}]
      188 GETIMPORT                        R15 K60 [Enum.AutomaticSize.XY]
      190 SETTABLEKS                       R15 R14 K37 ["AutomaticSize"]
      192 NAMECALL                         R15 R6 K57 ["getNextOrder"]
      194 CALL                             R15 1 1
      195 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      197 JUMPIFNOTEQKN                    R5 K61 [0] ; [+3]
      199 LOADK                            R15 K62 [""]
      200 JUMP                             ; [+10]
      201 LOADK                            R17 K63 ["Survey"]
      202 LOADK                            R19 K64 ["StarsRating%*"]
      203 MOVE                             R21 R5
      204 NAMECALL                         R19 R19 K8 ["format"]
      206 CALL                             R19 2 1
      207 MOVE                             R18 R19
      208 NAMECALL                         R15 R1 K65 ["getText"]
      210 CALL                             R15 3 1
      211 SETTABLEKS                       R15 R14 K52 ["Text"]
      213 CALL                             R12 2 1
      214 SETTABLEKS                       R12 R11 K52 ["Text"]
      216 CALL                             R8 3 -1
      217 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Resources"]
       27 GETTABLEKS                       R4 R4 K11 ["Theme"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["UI"]
       32 GETTABLEKS                       R5 R4 K13 ["Image"]
       34 GETTABLEKS                       R6 R4 K14 ["Pane"]
       36 GETTABLEKS                       R7 R4 K15 ["TextLabel"]
       38 GETTABLEKS                       R8 R1 K16 ["ContextServices"]
       40 GETTABLEKS                       R8 R8 K17 ["Localization"]
       42 GETTABLEKS                       R9 R1 K16 ["ContextServices"]
       44 GETTABLEKS                       R9 R9 K18 ["Stylizer"]
       46 GETTABLEKS                       R10 R1 K19 ["Util"]
       48 GETTABLEKS                       R10 R10 K20 ["LayoutOrderIterator"]
       50 DUPCLOSURE                       R11 K21 [PROTO_5]
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R9
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R10
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R7
       58 RETURN                           R11 1
