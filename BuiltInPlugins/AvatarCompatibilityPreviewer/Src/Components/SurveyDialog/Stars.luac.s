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
       34 LOADK                            R11 K7 ["Star%*"]
       35 MOVE                             R13 R10
       36 NAMECALL                         R11 R11 K8 ["format"]
       38 CALL                             R11 2 1
       39 GETUPVAL                         R12 2
       40 GETTABLEKS                       R12 R12 K9 ["createElement"]
       42 GETUPVAL                         R13 4
       43 NEWTABLE                         R14 8 0
       45 SETTABLEKS                       R10 R14 K10 ["LayoutOrder"]
       47 GETTABLEKS                       R16 R2 K11 ["StarSize"]
       49 GETIMPORT                        R17 K14 [UDim2.fromOffset]
       51 GETTABLEKS                       R18 R2 K15 ["StarSpacing"]
       53 LOADN                            R19 0
       54 CALL                             R17 2 1
       55 ADD                              R15 R16 R17
       56 SETTABLEKS                       R15 R14 K16 ["Size"]
       58 NEWCLOSURE                       R15 P0
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R10
       61 SETTABLEKS                       R15 R14 K17 ["OnClick"]
       63 GETUPVAL                         R15 2
       64 GETTABLEKS                       R15 R15 K18 ["Event"]
       66 GETTABLEKS                       R15 R15 K19 ["MouseEnter"]
       68 NEWCLOSURE                       R16 P1
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R10
       71 SETTABLE                         R16 R14 R15
       72 GETUPVAL                         R15 2
       73 GETTABLEKS                       R15 R15 K18 ["Event"]
       75 GETTABLEKS                       R15 R15 K20 ["MouseLeave"]
       77 NEWCLOSURE                       R16 P2
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R10
       80 SETTABLE                         R16 R14 R15
       81 GETUPVAL                         R15 2
       82 GETTABLEKS                       R15 R15 K21 ["Tag"]
       84 LOADK                            R16 K22 ["data-testid=Star%*"]
       85 MOVE                             R18 R10
       86 NAMECALL                         R16 R16 K8 ["format"]
       88 CALL                             R16 2 1
       89 SETTABLE                         R16 R14 R15
       90 DUPTABLE                         R15 K24 [{"Image"}]
       91 GETUPVAL                         R16 2
       92 GETTABLEKS                       R16 R16 K9 ["createElement"]
       94 GETUPVAL                         R17 5
       95 DUPTABLE                         R18 K28 [{"AnchorPoint", "Image", "ImageColor3", "Position", "Size"}]
       96 GETIMPORT                        R19 K30 [Vector2.new]
       98 LOADK                            R20 K31 [0.5]
       99 LOADN                            R21 0
      100 CALL                             R19 2 1
      101 SETTABLEKS                       R19 R18 K25 ["AnchorPoint"]
      103 JUMPIFNOTLE                      R10 R5 ; [+4]
      105 GETTABLEKS                       R19 R2 K32 ["StarFilled"]
      107 JUMP                             ; [+2]
      108 GETTABLEKS                       R19 R2 K33 ["StarUnfilled"]
      110 SETTABLEKS                       R19 R18 K23 ["Image"]
      112 GETTABLEKS                       R19 R2 K34 ["StarColor"]
      114 SETTABLEKS                       R19 R18 K26 ["ImageColor3"]
      116 GETIMPORT                        R19 K36 [UDim2.fromScale]
      118 LOADK                            R20 K31 [0.5]
      119 LOADN                            R21 0
      120 CALL                             R19 2 1
      121 SETTABLEKS                       R19 R18 K27 ["Position"]
      123 GETTABLEKS                       R19 R2 K11 ["StarSize"]
      125 SETTABLEKS                       R19 R18 K16 ["Size"]
      127 CALL                             R16 2 1
      128 SETTABLEKS                       R16 R15 K23 ["Image"]
      130 CALL                             R12 3 1
      131 SETTABLE                         R12 R7 R11
      132 FORNLOOP                         R8
      133 GETUPVAL                         R8 2
      134 GETTABLEKS                       R8 R8 K9 ["createElement"]
      136 GETUPVAL                         R9 4
      137 DUPTABLE                         R10 K41 [{"AutomaticSize", "LayoutOrder", "Layout", "HorizontalAlignment", "Spacing"}]
      138 GETIMPORT                        R11 K44 [Enum.AutomaticSize.Y]
      140 SETTABLEKS                       R11 R10 K37 ["AutomaticSize"]
      142 GETTABLEKS                       R11 R0 K45 ["layoutOrder"]
      144 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
      146 GETIMPORT                        R11 K48 [Enum.FillDirection.Horizontal]
      148 SETTABLEKS                       R11 R10 K38 ["Layout"]
      150 GETIMPORT                        R11 K50 [Enum.HorizontalAlignment.Left]
      152 SETTABLEKS                       R11 R10 K39 ["HorizontalAlignment"]
      154 GETTABLEKS                       R11 R2 K51 ["RatingSpacing"]
      156 SETTABLEKS                       R11 R10 K40 ["Spacing"]
      158 DUPTABLE                         R11 K53 [{"Stars", "Text"}]
      159 GETUPVAL                         R12 2
      160 GETTABLEKS                       R12 R12 K9 ["createElement"]
      162 GETUPVAL                         R13 4
      163 DUPTABLE                         R14 K54 [{"AutomaticSize", "LayoutOrder", "Layout"}]
      164 GETIMPORT                        R15 K56 [Enum.AutomaticSize.X]
      166 SETTABLEKS                       R15 R14 K37 ["AutomaticSize"]
      168 NAMECALL                         R15 R6 K57 ["getNextOrder"]
      170 CALL                             R15 1 1
      171 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      173 GETIMPORT                        R15 K48 [Enum.FillDirection.Horizontal]
      175 SETTABLEKS                       R15 R14 K38 ["Layout"]
      177 MOVE                             R15 R7
      178 CALL                             R12 3 1
      179 SETTABLEKS                       R12 R11 K1 ["Stars"]
      181 GETUPVAL                         R12 2
      182 GETTABLEKS                       R12 R12 K9 ["createElement"]
      184 GETUPVAL                         R13 6
      185 DUPTABLE                         R14 K58 [{"AutomaticSize", "LayoutOrder", "Text"}]
      186 GETIMPORT                        R15 K60 [Enum.AutomaticSize.XY]
      188 SETTABLEKS                       R15 R14 K37 ["AutomaticSize"]
      190 NAMECALL                         R15 R6 K57 ["getNextOrder"]
      192 CALL                             R15 1 1
      193 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      195 JUMPIFNOTEQKN                    R5 K61 [0] ; [+3]
      197 LOADK                            R15 K62 [""]
      198 JUMP                             ; [+9]
      199 LOADK                            R17 K63 ["Survey"]
      200 LOADK                            R18 K64 ["StarsRating%*"]
      201 MOVE                             R20 R5
      202 NAMECALL                         R18 R18 K8 ["format"]
      204 CALL                             R18 2 1
      205 NAMECALL                         R15 R1 K65 ["getText"]
      207 CALL                             R15 3 1
      208 SETTABLEKS                       R15 R14 K52 ["Text"]
      210 CALL                             R12 2 1
      211 SETTABLEKS                       R12 R11 K52 ["Text"]
      213 CALL                             R8 3 -1
      214 RETURN                           R8 -1

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
