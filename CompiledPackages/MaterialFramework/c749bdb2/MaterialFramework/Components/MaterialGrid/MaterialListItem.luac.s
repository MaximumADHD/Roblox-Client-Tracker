PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Style"]
        2 GETTABLEKS                       R5 R0 K1 ["Size"]
        4 GETTABLEKS                       R4 R5 K2 ["Y"]
        6 GETTABLEKS                       R3 R4 K3 ["Offset"]
        8 GETTABLEKS                       R4 R2 K4 ["ListItemSpacing"]
       10 GETIMPORT                        R5 K7 [UDim2.new]
       12 LOADN                            R6 1
       13 ADD                              R8 R3 R4
       14 MINUS                            R7 R8
       15 LOADN                            R8 1
       16 LOADN                            R9 0
       17 CALL                             R5 4 1
       18 LOADNIL                          R6
       19 GETUPVAL                         R7 0
       20 CALL                             R7 0 1
       21 JUMPIFNOT                        R7 ; [+20]
       22 GETTABLEKS                       R7 R0 K8 ["Selected"]
       24 JUMPIFNOT                        R7 ; [+5]
       25 GETTABLEKS                       R7 R0 K9 ["Applied"]
       27 JUMPIFNOT                        R7 ; [+2]
       28 LOADK                            R6 K10 ["RoundActiveApplied"]
       29 JUMP                             ; [+18]
       30 GETTABLEKS                       R7 R0 K8 ["Selected"]
       32 JUMPIFNOT                        R7 ; [+2]
       33 LOADK                            R6 K11 ["RoundActive"]
       34 JUMP                             ; [+13]
       35 GETTABLEKS                       R7 R0 K9 ["Applied"]
       37 JUMPIFNOT                        R7 ; [+2]
       38 LOADK                            R6 K12 ["RoundApplied"]
       39 JUMP                             ; [+8]
       40 LOADK                            R6 K13 ["Round"]
       41 JUMP                             ; [+6]
       42 GETTABLEKS                       R7 R0 K8 ["Selected"]
       44 JUMPIFNOT                        R7 ; [+2]
       45 LOADK                            R6 K11 ["RoundActive"]
       46 JUMP                             ; [+1]
       47 LOADK                            R6 K13 ["Round"]
       48 GETTABLEKS                       R7 R0 K14 ["Loading"]
       50 JUMPIFNOT                        R7 ; [+38]
       51 GETUPVAL                         R8 1
       52 GETTABLEKS                       R7 R8 K15 ["createElement"]
       54 GETUPVAL                         R8 2
       55 DUPTABLE                         R9 K19 [{"ClipsDescendants", "LayoutOrder", "Position", "Size", "Style"}]
       56 LOADB                            R10 1
       57 SETTABLEKS                       R10 R9 K16 ["ClipsDescendants"]
       59 GETTABLEKS                       R10 R0 K17 ["LayoutOrder"]
       61 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
       63 GETTABLEKS                       R10 R0 K18 ["Position"]
       65 SETTABLEKS                       R10 R9 K18 ["Position"]
       67 GETIMPORT                        R10 K7 [UDim2.new]
       69 LOADN                            R11 1
       70 LOADN                            R12 246
       71 LOADN                            R13 0
       72 MOVE                             R14 R3
       73 CALL                             R10 4 1
       74 SETTABLEKS                       R10 R9 K1 ["Size"]
       76 LOADK                            R10 K20 ["CornerBox"]
       77 SETTABLEKS                       R10 R9 K0 ["Style"]
       79 DUPTABLE                         R10 K22 [{"Shimmer"}]
       80 GETUPVAL                         R12 1
       81 GETTABLEKS                       R11 R12 K15 ["createElement"]
       83 GETUPVAL                         R12 3
       84 CALL                             R11 1 1
       85 SETTABLEKS                       R11 R10 K21 ["Shimmer"]
       87 CALL                             R7 3 -1
       88 RETURN                           R7 -1
       89 GETUPVAL                         R8 1
       90 GETTABLEKS                       R7 R8 K15 ["createElement"]
       92 GETUPVAL                         R8 4
       93 DUPTABLE                         R9 K27 [{"LayoutOrder", "OnClick", "OnRightClick", "OnMouseEnter", "OnMouseLeave", "Position", "Size", "Style"}]
       94 GETTABLEKS                       R10 R0 K17 ["LayoutOrder"]
       96 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
       98 GETTABLEKS                       R10 R0 K23 ["OnClick"]
      100 SETTABLEKS                       R10 R9 K23 ["OnClick"]
      102 GETTABLEKS                       R10 R0 K24 ["OnRightClick"]
      104 SETTABLEKS                       R10 R9 K24 ["OnRightClick"]
      106 GETTABLEKS                       R10 R0 K25 ["OnMouseEnter"]
      108 SETTABLEKS                       R10 R9 K25 ["OnMouseEnter"]
      110 GETTABLEKS                       R10 R0 K26 ["OnMouseLeave"]
      112 SETTABLEKS                       R10 R9 K26 ["OnMouseLeave"]
      114 GETTABLEKS                       R10 R0 K18 ["Position"]
      116 SETTABLEKS                       R10 R9 K18 ["Position"]
      118 GETIMPORT                        R10 K7 [UDim2.new]
      120 LOADN                            R11 1
      121 LOADN                            R12 246
      122 LOADN                            R13 0
      123 MOVE                             R14 R3
      124 CALL                             R10 4 1
      125 SETTABLEKS                       R10 R9 K1 ["Size"]
      127 SETTABLEKS                       R6 R9 K0 ["Style"]
      129 DUPTABLE                         R10 K29 [{"Content"}]
      130 GETUPVAL                         R12 1
      131 GETTABLEKS                       R11 R12 K15 ["createElement"]
      133 GETUPVAL                         R12 2
      134 DUPTABLE                         R13 K33 [{"HorizontalAlignment", "Layout", "Spacing"}]
      135 GETIMPORT                        R14 K36 [Enum.HorizontalAlignment.Left]
      137 SETTABLEKS                       R14 R13 K30 ["HorizontalAlignment"]
      139 GETIMPORT                        R14 K39 [Enum.FillDirection.Horizontal]
      141 SETTABLEKS                       R14 R13 K31 ["Layout"]
      143 SETTABLEKS                       R4 R13 K32 ["Spacing"]
      145 DUPTABLE                         R14 K42 [{"MaterialPreview", "Label"}]
      146 GETTABLEKS                       R16 R0 K43 ["CustomPreview"]
      148 JUMPIFNOT                        R16 ; [+15]
      149 GETUPVAL                         R16 1
      150 GETTABLEKS                       R15 R16 K15 ["createElement"]
      152 GETTABLEKS                       R16 R0 K43 ["CustomPreview"]
      154 DUPTABLE                         R17 K44 [{"Size"}]
      155 GETIMPORT                        R18 K46 [UDim2.fromOffset]
      157 MOVE                             R19 R3
      158 MOVE                             R20 R3
      159 CALL                             R18 2 1
      160 SETTABLEKS                       R18 R17 K1 ["Size"]
      162 CALL                             R15 2 1
      163 JUMP                             ; [+41]
      164 GETUPVAL                         R16 1
      165 GETTABLEKS                       R15 R16 K15 ["createElement"]
      167 GETUPVAL                         R16 5
      168 DUPTABLE                         R17 K53 [{"InitialDistance", "LayoutOrder", "Material", "MeshPartBackgroundColor", "Size", "Static", "Transparent", "ref"}]
      169 GETTABLEKS                       R18 R0 K47 ["InitialDistance"]
      171 SETTABLEKS                       R18 R17 K47 ["InitialDistance"]
      173 LOADN                            R18 1
      174 SETTABLEKS                       R18 R17 K17 ["LayoutOrder"]
      176 GETTABLEKS                       R18 R0 K48 ["Material"]
      178 SETTABLEKS                       R18 R17 K48 ["Material"]
      180 GETUPVAL                         R19 0
      181 CALL                             R19 0 1
      182 JUMPIFNOT                        R19 ; [+3]
      183 GETTABLEKS                       R18 R2 K54 ["ListItemBackgroundColor"]
      185 JUMP                             ; [+1]
      186 LOADNIL                          R18
      187 SETTABLEKS                       R18 R17 K49 ["MeshPartBackgroundColor"]
      189 GETIMPORT                        R18 K46 [UDim2.fromOffset]
      191 MOVE                             R19 R3
      192 MOVE                             R20 R3
      193 CALL                             R18 2 1
      194 SETTABLEKS                       R18 R17 K1 ["Size"]
      196 LOADB                            R18 1
      197 SETTABLEKS                       R18 R17 K50 ["Static"]
      199 LOADB                            R18 1
      200 SETTABLEKS                       R18 R17 K51 ["Transparent"]
      202 SETTABLEKS                       R1 R17 K52 ["ref"]
      204 CALL                             R15 2 1
      205 SETTABLEKS                       R15 R14 K40 ["MaterialPreview"]
      207 GETUPVAL                         R16 1
      208 GETTABLEKS                       R15 R16 K15 ["createElement"]
      210 GETUPVAL                         R16 6
      211 DUPTABLE                         R17 K61 [{"LayoutOrder", "Size", "Text", "TextSize", "TextTruncate", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
      212 LOADN                            R18 2
      213 SETTABLEKS                       R18 R17 K17 ["LayoutOrder"]
      215 SETTABLEKS                       R5 R17 K1 ["Size"]
      217 GETTABLEKS                       R18 R0 K55 ["Text"]
      219 SETTABLEKS                       R18 R17 K55 ["Text"]
      221 GETTABLEKS                       R18 R2 K56 ["TextSize"]
      223 SETTABLEKS                       R18 R17 K56 ["TextSize"]
      225 GETIMPORT                        R18 K63 [Enum.TextTruncate.AtEnd]
      227 SETTABLEKS                       R18 R17 K57 ["TextTruncate"]
      229 GETIMPORT                        R18 K64 [Enum.TextXAlignment.Left]
      231 SETTABLEKS                       R18 R17 K58 ["TextXAlignment"]
      233 GETIMPORT                        R18 K66 [Enum.TextYAlignment.Center]
      235 SETTABLEKS                       R18 R17 K59 ["TextYAlignment"]
      237 LOADB                            R18 0
      238 SETTABLEKS                       R18 R17 K60 ["TextWrapped"]
      240 CALL                             R15 2 1
      241 SETTABLEKS                       R15 R14 K41 ["Label"]
      243 CALL                             R11 3 1
      244 SETTABLEKS                       R11 R10 K28 ["Content"]
      246 CALL                             R7 3 -1
      247 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
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
       40 GETTABLEKS                       R13 R0 K14 ["Components"]
       42 GETTABLEKS                       R12 R13 K15 ["MaterialPreview"]
       44 CALL                             R11 1 1
       45 GETIMPORT                        R12 K4 [require]
       47 GETTABLEKS                       R14 R0 K16 ["Flags"]
       49 GETTABLEKS                       R13 R14 K17 ["getFFlagMaterialPickerUIChanges"]
       51 CALL                             R12 1 1
       52 MOVE                             R13 R5
       53 DUPCLOSURE                       R14 K18 [PROTO_0]
       54 CAPTURE                          VAL R12
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R11
       60 CAPTURE                          VAL R10
       61 CALL                             R13 1 1
       62 RETURN                           R13 1
