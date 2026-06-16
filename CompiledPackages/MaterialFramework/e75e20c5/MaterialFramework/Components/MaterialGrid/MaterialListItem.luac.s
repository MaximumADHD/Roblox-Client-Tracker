PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R7 0
        1 CALL                             R7 0 1
        2 GETUPVAL                         R8 1
        3 GETTABLEKS                       R8 R8 K0 ["createElement"]
        5 GETUPVAL                         R9 2
        6 DUPTABLE                         R10 K5 [{"HorizontalAlignment", "Layout", "Size", "Spacing"}]
        7 GETIMPORT                        R11 K8 [Enum.HorizontalAlignment.Left]
        9 SETTABLEKS                       R11 R10 K1 ["HorizontalAlignment"]
       11 GETIMPORT                        R11 K11 [Enum.FillDirection.Horizontal]
       13 SETTABLEKS                       R11 R10 K2 ["Layout"]
       15 GETIMPORT                        R11 K14 [UDim2.fromScale]
       17 LOADN                            R12 1
       18 LOADN                            R13 1
       19 CALL                             R11 2 1
       20 SETTABLEKS                       R11 R10 K3 ["Size"]
       22 SETTABLEKS                       R4 R10 K4 ["Spacing"]
       24 DUPTABLE                         R11 K17 [{"MaterialPreview", "Label"}]
       25 GETTABLEKS                       R13 R0 K18 ["CustomPreview"]
       27 JUMPIFNOT                        R13 ; [+15]
       28 GETUPVAL                         R12 1
       29 GETTABLEKS                       R12 R12 K0 ["createElement"]
       31 GETTABLEKS                       R13 R0 K18 ["CustomPreview"]
       33 DUPTABLE                         R14 K19 [{"Size"}]
       34 GETIMPORT                        R15 K21 [UDim2.fromOffset]
       36 MOVE                             R16 R3
       37 MOVE                             R17 R3
       38 CALL                             R15 2 1
       39 SETTABLEKS                       R15 R14 K3 ["Size"]
       41 CALL                             R12 2 1
       42 JUMP                             ; [+43]
       43 GETUPVAL                         R12 1
       44 GETTABLEKS                       R12 R12 K0 ["createElement"]
       46 GETUPVAL                         R13 3
       47 DUPTABLE                         R14 K31 [{"ImageTransparency", "InitialDistance", "LayoutOrder", "Material", "MaterialPreviewGeometryType", "MeshPartBackgroundColor", "Size", "Static", "Transparent", "ref"}]
       48 SETTABLEKS                       R6 R14 K22 ["ImageTransparency"]
       50 GETTABLEKS                       R15 R0 K23 ["InitialDistance"]
       52 SETTABLEKS                       R15 R14 K23 ["InitialDistance"]
       54 MOVE                             R15 R7
       55 CALL                             R15 0 1
       56 SETTABLEKS                       R15 R14 K24 ["LayoutOrder"]
       58 GETTABLEKS                       R15 R0 K25 ["Material"]
       60 SETTABLEKS                       R15 R14 K25 ["Material"]
       62 GETTABLEKS                       R15 R0 K26 ["MaterialPreviewGeometryType"]
       64 SETTABLEKS                       R15 R14 K26 ["MaterialPreviewGeometryType"]
       66 GETTABLEKS                       R15 R1 K32 ["ListItemBackgroundColor"]
       68 SETTABLEKS                       R15 R14 K27 ["MeshPartBackgroundColor"]
       70 GETIMPORT                        R15 K21 [UDim2.fromOffset]
       72 MOVE                             R16 R3
       73 MOVE                             R17 R3
       74 CALL                             R15 2 1
       75 SETTABLEKS                       R15 R14 K3 ["Size"]
       77 LOADB                            R15 1
       78 SETTABLEKS                       R15 R14 K28 ["Static"]
       80 LOADB                            R15 1
       81 SETTABLEKS                       R15 R14 K29 ["Transparent"]
       83 SETTABLEKS                       R2 R14 K30 ["ref"]
       85 CALL                             R12 2 1
       86 SETTABLEKS                       R12 R11 K15 ["MaterialPreview"]
       88 GETUPVAL                         R12 1
       89 GETTABLEKS                       R12 R12 K0 ["createElement"]
       91 GETUPVAL                         R13 4
       92 DUPTABLE                         R14 K40 [{"LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextTruncate", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
       93 MOVE                             R15 R7
       94 CALL                             R15 0 1
       95 SETTABLEKS                       R15 R14 K24 ["LayoutOrder"]
       97 SETTABLEKS                       R5 R14 K3 ["Size"]
       99 GETTABLEKS                       R15 R0 K33 ["Text"]
      101 SETTABLEKS                       R15 R14 K33 ["Text"]
      103 GETTABLEKS                       R15 R1 K41 ["ListItemLabelTextColor"]
      105 SETTABLEKS                       R15 R14 K34 ["TextColor"]
      107 GETTABLEKS                       R15 R1 K35 ["TextSize"]
      109 SETTABLEKS                       R15 R14 K35 ["TextSize"]
      111 GETIMPORT                        R15 K43 [Enum.TextTruncate.AtEnd]
      113 SETTABLEKS                       R15 R14 K36 ["TextTruncate"]
      115 GETIMPORT                        R15 K44 [Enum.TextXAlignment.Left]
      117 SETTABLEKS                       R15 R14 K37 ["TextXAlignment"]
      119 GETIMPORT                        R15 K46 [Enum.TextYAlignment.Center]
      121 SETTABLEKS                       R15 R14 K38 ["TextYAlignment"]
      123 LOADB                            R15 0
      124 SETTABLEKS                       R15 R14 K39 ["TextWrapped"]
      126 CALL                             R12 2 1
      127 SETTABLEKS                       R12 R11 K16 ["Label"]
      129 CALL                             R8 3 1
      130 RETURN                           R8 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 GETUPVAL                         R5 5
        6 GETUPVAL                         R6 6
        7 GETUPVAL                         R8 7
        8 JUMPIFNOT                        R8 ; [+2]
        9 LOADK                            R7 K0 [0.35]
       10 JUMP                             ; [+1]
       11 LOADN                            R7 0
       12 CALL                             R0 7 1
       13 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClick"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnMouseEnter"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnMouseEnter"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnMouseLeave"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnMouseLeave"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["Style"]
        2 GETTABLEKS                       R3 R0 K1 ["Item"]
        4 GETTABLEKS                       R4 R0 K2 ["Size"]
        6 GETTABLEKS                       R4 R4 K3 ["Y"]
        8 GETTABLEKS                       R4 R4 K4 ["Offset"]
       10 GETTABLEKS                       R5 R2 K5 ["ListItemSpacing"]
       12 GETIMPORT                        R6 K8 [UDim2.new]
       14 LOADN                            R7 1
       15 ADD                              R9 R4 R5
       16 MINUS                            R8 R9
       17 LOADN                            R9 1
       18 LOADN                            R10 0
       19 CALL                             R6 4 1
       20 GETTABLEKS                       R8 R0 K9 ["ItemsDisabled"]
       22 JUMPIFEQKB                       R8 TRUE ; [+2]
       24 LOADB                            R7 0 +1
       25 LOADB                            R7 1
       26 LOADNIL                          R8
       27 GETTABLEKS                       R9 R0 K10 ["Selected"]
       29 JUMPIFNOT                        R9 ; [+5]
       30 GETTABLEKS                       R9 R0 K11 ["Applied"]
       32 JUMPIFNOT                        R9 ; [+2]
       33 LOADK                            R8 K12 ["RoundActiveApplied"]
       34 JUMP                             ; [+11]
       35 GETTABLEKS                       R9 R0 K10 ["Selected"]
       37 JUMPIFNOT                        R9 ; [+2]
       38 LOADK                            R8 K13 ["RoundActive"]
       39 JUMP                             ; [+6]
       40 GETTABLEKS                       R9 R0 K11 ["Applied"]
       42 JUMPIFNOT                        R9 ; [+2]
       43 LOADK                            R8 K14 ["RoundApplied"]
       44 JUMP                             ; [+1]
       45 LOADK                            R8 K15 ["Round"]
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R9 R9 K16 ["useMemo"]
       49 NEWCLOSURE                       R10 P0
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 NEWTABLE                         R11 0 11
       60 GETTABLEKS                       R12 R0 K17 ["CustomPreview"]
       62 GETTABLEKS                       R13 R0 K18 ["InitialDistance"]
       64 GETTABLEKS                       R14 R0 K19 ["Material"]
       66 GETTABLEKS                       R15 R0 K20 ["MaterialPreviewGeometryType"]
       68 GETTABLEKS                       R16 R0 K21 ["Text"]
       70 MOVE                             R17 R2
       71 MOVE                             R18 R1
       72 MOVE                             R19 R4
       73 MOVE                             R20 R5
       74 MOVE                             R21 R6
       75 MOVE                             R22 R7
       76 SETLIST                          R11 R12 11 [1]
       78 CALL                             R9 2 1
       79 GETUPVAL                         R10 0
       80 GETTABLEKS                       R10 R10 K22 ["useCallback"]
       82 NEWCLOSURE                       R11 P1
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R3
       85 NEWTABLE                         R12 0 2
       87 GETTABLEKS                       R13 R0 K23 ["OnClick"]
       89 MOVE                             R14 R3
       90 SETLIST                          R12 R13 2 [1]
       92 CALL                             R10 2 1
       93 GETUPVAL                         R11 0
       94 GETTABLEKS                       R11 R11 K22 ["useCallback"]
       96 NEWCLOSURE                       R12 P2
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R3
       99 NEWTABLE                         R13 0 2
      101 GETTABLEKS                       R14 R0 K24 ["OnRightClick"]
      103 MOVE                             R15 R3
      104 SETLIST                          R13 R14 2 [1]
      106 CALL                             R11 2 1
      107 GETUPVAL                         R12 0
      108 GETTABLEKS                       R12 R12 K22 ["useCallback"]
      110 NEWCLOSURE                       R13 P3
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R3
      113 NEWTABLE                         R14 0 2
      115 GETTABLEKS                       R15 R0 K25 ["OnMouseEnter"]
      117 MOVE                             R16 R3
      118 SETLIST                          R14 R15 2 [1]
      120 CALL                             R12 2 1
      121 GETUPVAL                         R13 0
      122 GETTABLEKS                       R13 R13 K22 ["useCallback"]
      124 NEWCLOSURE                       R14 P4
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R3
      127 NEWTABLE                         R15 0 2
      129 GETTABLEKS                       R16 R0 K26 ["OnMouseLeave"]
      131 MOVE                             R17 R3
      132 SETLIST                          R15 R16 2 [1]
      134 CALL                             R13 2 1
      135 GETTABLEKS                       R14 R0 K27 ["Loading"]
      137 JUMPIFNOT                        R14 ; [+38]
      138 GETUPVAL                         R14 0
      139 GETTABLEKS                       R14 R14 K28 ["createElement"]
      141 GETUPVAL                         R15 2
      142 DUPTABLE                         R16 K32 [{"ClipsDescendants", "LayoutOrder", "Position", "Size", "Style"}]
      143 LOADB                            R17 1
      144 SETTABLEKS                       R17 R16 K29 ["ClipsDescendants"]
      146 GETTABLEKS                       R17 R0 K30 ["LayoutOrder"]
      148 SETTABLEKS                       R17 R16 K30 ["LayoutOrder"]
      150 GETTABLEKS                       R17 R0 K31 ["Position"]
      152 SETTABLEKS                       R17 R16 K31 ["Position"]
      154 GETIMPORT                        R17 K8 [UDim2.new]
      156 LOADN                            R18 1
      157 LOADN                            R19 246
      158 LOADN                            R20 0
      159 MOVE                             R21 R4
      160 CALL                             R17 4 1
      161 SETTABLEKS                       R17 R16 K2 ["Size"]
      163 LOADK                            R17 K33 ["CornerBox"]
      164 SETTABLEKS                       R17 R16 K0 ["Style"]
      166 DUPTABLE                         R17 K35 [{"Shimmer"}]
      167 GETUPVAL                         R18 0
      168 GETTABLEKS                       R18 R18 K28 ["createElement"]
      170 GETUPVAL                         R19 3
      171 CALL                             R18 1 1
      172 SETTABLEKS                       R18 R17 K34 ["Shimmer"]
      174 CALL                             R14 3 -1
      175 RETURN                           R14 -1
      176 GETUPVAL                         R14 0
      177 GETTABLEKS                       R14 R14 K28 ["createElement"]
      179 GETUPVAL                         R15 4
      180 GETUPVAL                         R16 5
      181 GETTABLEKS                       R16 R16 K36 ["join"]
      183 DUPTABLE                         R17 K37 [{"LayoutOrder", "OnClick", "OnRightClick", "OnMouseEnter", "OnMouseLeave", "Position", "Size", "Style"}]
      184 GETTABLEKS                       R18 R0 K30 ["LayoutOrder"]
      186 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      188 JUMPIFNOT                        R7 ; [+2]
      189 GETUPVAL                         R18 6
      190 JUMP                             ; [+1]
      191 MOVE                             R18 R10
      192 SETTABLEKS                       R18 R17 K23 ["OnClick"]
      194 JUMPIFNOT                        R7 ; [+2]
      195 GETUPVAL                         R18 6
      196 JUMP                             ; [+1]
      197 MOVE                             R18 R11
      198 SETTABLEKS                       R18 R17 K24 ["OnRightClick"]
      200 JUMPIFNOT                        R7 ; [+2]
      201 LOADNIL                          R18
      202 JUMP                             ; [+1]
      203 MOVE                             R18 R12
      204 SETTABLEKS                       R18 R17 K25 ["OnMouseEnter"]
      206 JUMPIFNOT                        R7 ; [+2]
      207 LOADNIL                          R18
      208 JUMP                             ; [+1]
      209 MOVE                             R18 R13
      210 SETTABLEKS                       R18 R17 K26 ["OnMouseLeave"]
      212 GETTABLEKS                       R18 R0 K31 ["Position"]
      214 SETTABLEKS                       R18 R17 K31 ["Position"]
      216 GETIMPORT                        R18 K8 [UDim2.new]
      218 LOADN                            R19 1
      219 LOADN                            R20 246
      220 LOADN                            R21 0
      221 MOVE                             R22 R4
      222 CALL                             R18 4 1
      223 SETTABLEKS                       R18 R17 K2 ["Size"]
      225 SETTABLEKS                       R8 R17 K0 ["Style"]
      227 DUPTABLE                         R18 K40 [{"DisableHover", "StyleModifier"}]
      228 SETTABLEKS                       R7 R18 K38 ["DisableHover"]
      230 JUMPIFNOT                        R7 ; [+4]
      231 GETUPVAL                         R19 7
      232 GETTABLEKS                       R19 R19 K41 ["Disabled"]
      234 JUMP                             ; [+1]
      235 LOADNIL                          R19
      236 SETTABLEKS                       R19 R18 K39 ["StyleModifier"]
      238 CALL                             R16 2 1
      239 DUPTABLE                         R17 K43 [{"Content"}]
      240 SETTABLEKS                       R9 R17 K42 ["Content"]
      242 CALL                             R14 3 -1
      243 RETURN                           R14 -1

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
       18 GETTABLEKS                       R4 R2 K6 ["Dash"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R2 K7 ["Framework"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K4 [require]
       28 GETTABLEKS                       R6 R2 K8 ["React"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K4 [require]
       33 GETTABLEKS                       R7 R0 K9 ["Util"]
       35 GETTABLEKS                       R7 R7 K10 ["createNextOrder"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R5 K11 ["forwardRef"]
       40 GETTABLEKS                       R8 R4 K9 ["Util"]
       42 GETTABLEKS                       R8 R8 K12 ["StyleModifier"]
       44 GETTABLEKS                       R9 R4 K13 ["UI"]
       46 GETTABLEKS                       R10 R9 K14 ["Button"]
       48 GETTABLEKS                       R11 R9 K15 ["Pane"]
       50 GETTABLEKS                       R12 R9 K16 ["Shimmer"]
       52 GETTABLEKS                       R13 R9 K17 ["TextLabel"]
       54 GETIMPORT                        R14 K4 [require]
       56 GETTABLEKS                       R15 R0 K18 ["Components"]
       58 GETTABLEKS                       R15 R15 K19 ["MaterialPreview"]
       60 CALL                             R14 1 1
       61 DUPCLOSURE                       R15 K20 [PROTO_0]
       62 DUPCLOSURE                       R16 K21 [PROTO_1]
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R14
       67 CAPTURE                          VAL R13
       68 MOVE                             R17 R7
       69 DUPCLOSURE                       R18 K22 [PROTO_7]
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R16
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R15
       77 CAPTURE                          VAL R8
       78 CALL                             R17 1 1
       79 RETURN                           R17 1
