PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Style"]
        2 GETTABLEKS                       R3 R0 K1 ["Size"]
        4 GETTABLEKS                       R3 R3 K2 ["Y"]
        6 GETTABLEKS                       R3 R3 K3 ["Offset"]
        8 GETTABLEKS                       R4 R2 K4 ["ListItemSpacing"]
       10 GETIMPORT                        R5 K7 [UDim2.new]
       12 LOADN                            R6 1
       13 ADD                              R8 R3 R4
       14 MINUS                            R7 R8
       15 LOADN                            R8 1
       16 LOADN                            R9 0
       17 CALL                             R5 4 1
       18 LOADNIL                          R6
       19 GETTABLEKS                       R7 R0 K8 ["Selected"]
       21 JUMPIFNOT                        R7 ; [+5]
       22 GETTABLEKS                       R7 R0 K9 ["Applied"]
       24 JUMPIFNOT                        R7 ; [+2]
       25 LOADK                            R6 K10 ["RoundActiveApplied"]
       26 JUMP                             ; [+11]
       27 GETTABLEKS                       R7 R0 K8 ["Selected"]
       29 JUMPIFNOT                        R7 ; [+2]
       30 LOADK                            R6 K11 ["RoundActive"]
       31 JUMP                             ; [+6]
       32 GETTABLEKS                       R7 R0 K9 ["Applied"]
       34 JUMPIFNOT                        R7 ; [+2]
       35 LOADK                            R6 K12 ["RoundApplied"]
       36 JUMP                             ; [+1]
       37 LOADK                            R6 K13 ["Round"]
       38 GETTABLEKS                       R7 R0 K14 ["Loading"]
       40 JUMPIFNOT                        R7 ; [+38]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K15 ["createElement"]
       44 GETUPVAL                         R8 1
       45 DUPTABLE                         R9 K19 [{"ClipsDescendants", "LayoutOrder", "Position", "Size", "Style"}]
       46 LOADB                            R10 1
       47 SETTABLEKS                       R10 R9 K16 ["ClipsDescendants"]
       49 GETTABLEKS                       R10 R0 K17 ["LayoutOrder"]
       51 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
       53 GETTABLEKS                       R10 R0 K18 ["Position"]
       55 SETTABLEKS                       R10 R9 K18 ["Position"]
       57 GETIMPORT                        R10 K7 [UDim2.new]
       59 LOADN                            R11 1
       60 LOADN                            R12 246
       61 LOADN                            R13 0
       62 MOVE                             R14 R3
       63 CALL                             R10 4 1
       64 SETTABLEKS                       R10 R9 K1 ["Size"]
       66 LOADK                            R10 K20 ["CornerBox"]
       67 SETTABLEKS                       R10 R9 K0 ["Style"]
       69 DUPTABLE                         R10 K22 [{"Shimmer"}]
       70 GETUPVAL                         R11 0
       71 GETTABLEKS                       R11 R11 K15 ["createElement"]
       73 GETUPVAL                         R12 2
       74 CALL                             R11 1 1
       75 SETTABLEKS                       R11 R10 K21 ["Shimmer"]
       77 CALL                             R7 3 -1
       78 RETURN                           R7 -1
       79 GETUPVAL                         R7 0
       80 GETTABLEKS                       R7 R7 K15 ["createElement"]
       82 GETUPVAL                         R8 3
       83 DUPTABLE                         R9 K27 [{"LayoutOrder", "OnClick", "OnRightClick", "OnMouseEnter", "OnMouseLeave", "Position", "Size", "Style"}]
       84 GETTABLEKS                       R10 R0 K17 ["LayoutOrder"]
       86 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
       88 GETTABLEKS                       R10 R0 K23 ["OnClick"]
       90 SETTABLEKS                       R10 R9 K23 ["OnClick"]
       92 GETTABLEKS                       R10 R0 K24 ["OnRightClick"]
       94 SETTABLEKS                       R10 R9 K24 ["OnRightClick"]
       96 GETTABLEKS                       R10 R0 K25 ["OnMouseEnter"]
       98 SETTABLEKS                       R10 R9 K25 ["OnMouseEnter"]
      100 GETTABLEKS                       R10 R0 K26 ["OnMouseLeave"]
      102 SETTABLEKS                       R10 R9 K26 ["OnMouseLeave"]
      104 GETTABLEKS                       R10 R0 K18 ["Position"]
      106 SETTABLEKS                       R10 R9 K18 ["Position"]
      108 GETIMPORT                        R10 K7 [UDim2.new]
      110 LOADN                            R11 1
      111 LOADN                            R12 246
      112 LOADN                            R13 0
      113 MOVE                             R14 R3
      114 CALL                             R10 4 1
      115 SETTABLEKS                       R10 R9 K1 ["Size"]
      117 SETTABLEKS                       R6 R9 K0 ["Style"]
      119 DUPTABLE                         R10 K29 [{"Content"}]
      120 GETUPVAL                         R11 0
      121 GETTABLEKS                       R11 R11 K15 ["createElement"]
      123 GETUPVAL                         R12 1
      124 DUPTABLE                         R13 K33 [{"HorizontalAlignment", "Layout", "Spacing"}]
      125 GETIMPORT                        R14 K36 [Enum.HorizontalAlignment.Left]
      127 SETTABLEKS                       R14 R13 K30 ["HorizontalAlignment"]
      129 GETIMPORT                        R14 K39 [Enum.FillDirection.Horizontal]
      131 SETTABLEKS                       R14 R13 K31 ["Layout"]
      133 SETTABLEKS                       R4 R13 K32 ["Spacing"]
      135 DUPTABLE                         R14 K42 [{"MaterialPreview", "Label"}]
      136 GETTABLEKS                       R16 R0 K43 ["CustomPreview"]
      138 JUMPIFNOT                        R16 ; [+15]
      139 GETUPVAL                         R15 0
      140 GETTABLEKS                       R15 R15 K15 ["createElement"]
      142 GETTABLEKS                       R16 R0 K43 ["CustomPreview"]
      144 DUPTABLE                         R17 K44 [{"Size"}]
      145 GETIMPORT                        R18 K46 [UDim2.fromOffset]
      147 MOVE                             R19 R3
      148 MOVE                             R20 R3
      149 CALL                             R18 2 1
      150 SETTABLEKS                       R18 R17 K1 ["Size"]
      152 CALL                             R15 2 1
      153 JUMP                             ; [+36]
      154 GETUPVAL                         R15 0
      155 GETTABLEKS                       R15 R15 K15 ["createElement"]
      157 GETUPVAL                         R16 4
      158 DUPTABLE                         R17 K53 [{"InitialDistance", "LayoutOrder", "Material", "MeshPartBackgroundColor", "Size", "Static", "Transparent", "ref"}]
      159 GETTABLEKS                       R18 R0 K47 ["InitialDistance"]
      161 SETTABLEKS                       R18 R17 K47 ["InitialDistance"]
      163 LOADN                            R18 1
      164 SETTABLEKS                       R18 R17 K17 ["LayoutOrder"]
      166 GETTABLEKS                       R18 R0 K48 ["Material"]
      168 SETTABLEKS                       R18 R17 K48 ["Material"]
      170 GETTABLEKS                       R18 R2 K54 ["ListItemBackgroundColor"]
      172 SETTABLEKS                       R18 R17 K49 ["MeshPartBackgroundColor"]
      174 GETIMPORT                        R18 K46 [UDim2.fromOffset]
      176 MOVE                             R19 R3
      177 MOVE                             R20 R3
      178 CALL                             R18 2 1
      179 SETTABLEKS                       R18 R17 K1 ["Size"]
      181 LOADB                            R18 1
      182 SETTABLEKS                       R18 R17 K50 ["Static"]
      184 LOADB                            R18 1
      185 SETTABLEKS                       R18 R17 K51 ["Transparent"]
      187 SETTABLEKS                       R1 R17 K52 ["ref"]
      189 CALL                             R15 2 1
      190 SETTABLEKS                       R15 R14 K40 ["MaterialPreview"]
      192 GETUPVAL                         R15 0
      193 GETTABLEKS                       R15 R15 K15 ["createElement"]
      195 GETUPVAL                         R16 5
      196 DUPTABLE                         R17 K61 [{"LayoutOrder", "Size", "Text", "TextSize", "TextTruncate", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
      197 LOADN                            R18 2
      198 SETTABLEKS                       R18 R17 K17 ["LayoutOrder"]
      200 SETTABLEKS                       R5 R17 K1 ["Size"]
      202 GETTABLEKS                       R18 R0 K55 ["Text"]
      204 SETTABLEKS                       R18 R17 K55 ["Text"]
      206 GETTABLEKS                       R18 R2 K56 ["TextSize"]
      208 SETTABLEKS                       R18 R17 K56 ["TextSize"]
      210 GETIMPORT                        R18 K63 [Enum.TextTruncate.AtEnd]
      212 SETTABLEKS                       R18 R17 K57 ["TextTruncate"]
      214 GETIMPORT                        R18 K64 [Enum.TextXAlignment.Left]
      216 SETTABLEKS                       R18 R17 K58 ["TextXAlignment"]
      218 GETIMPORT                        R18 K66 [Enum.TextYAlignment.Center]
      220 SETTABLEKS                       R18 R17 K59 ["TextYAlignment"]
      222 LOADB                            R18 0
      223 SETTABLEKS                       R18 R17 K60 ["TextWrapped"]
      225 CALL                             R15 2 1
      226 SETTABLEKS                       R15 R14 K41 ["Label"]
      228 CALL                             R11 3 1
      229 SETTABLEKS                       R11 R10 K28 ["Content"]
      231 CALL                             R7 3 -1
      232 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K2 ["Parent"]
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R2 K6 ["Framework"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R2 K7 ["React"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R4 K8 ["forwardRef"]
       28 GETTABLEKS                       R6 R3 K9 ["UI"]
       30 GETTABLEKS                       R7 R6 K10 ["Button"]
       32 GETTABLEKS                       R8 R6 K11 ["Pane"]
       34 GETTABLEKS                       R9 R6 K12 ["Shimmer"]
       36 GETTABLEKS                       R10 R6 K13 ["TextLabel"]
       38 GETIMPORT                        R11 K4 [require]
       40 GETTABLEKS                       R12 R0 K14 ["Components"]
       42 GETTABLEKS                       R12 R12 K15 ["MaterialPreview"]
       44 CALL                             R11 1 1
       45 MOVE                             R12 R5
       46 DUPCLOSURE                       R13 K16 [PROTO_0]
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R11
       52 CAPTURE                          VAL R10
       53 CALL                             R12 1 1
       54 RETURN                           R12 1
