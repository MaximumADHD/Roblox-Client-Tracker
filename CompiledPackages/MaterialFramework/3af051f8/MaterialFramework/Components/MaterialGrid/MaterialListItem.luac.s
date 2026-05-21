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
       42 JUMP                             ; [+48]
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
       66 GETUPVAL                         R16 4
       67 CALL                             R16 0 1
       68 JUMPIFNOT                        R16 ; [+3]
       69 GETTABLEKS                       R15 R1 K32 ["ListItemBackgroundColor"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R15
       73 SETTABLEKS                       R15 R14 K27 ["MeshPartBackgroundColor"]
       75 GETIMPORT                        R15 K21 [UDim2.fromOffset]
       77 MOVE                             R16 R3
       78 MOVE                             R17 R3
       79 CALL                             R15 2 1
       80 SETTABLEKS                       R15 R14 K3 ["Size"]
       82 LOADB                            R15 1
       83 SETTABLEKS                       R15 R14 K28 ["Static"]
       85 LOADB                            R15 1
       86 SETTABLEKS                       R15 R14 K29 ["Transparent"]
       88 SETTABLEKS                       R2 R14 K30 ["ref"]
       90 CALL                             R12 2 1
       91 SETTABLEKS                       R12 R11 K15 ["MaterialPreview"]
       93 GETUPVAL                         R12 1
       94 GETTABLEKS                       R12 R12 K0 ["createElement"]
       96 GETUPVAL                         R13 5
       97 DUPTABLE                         R14 K40 [{"LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextTruncate", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
       98 MOVE                             R15 R7
       99 CALL                             R15 0 1
      100 SETTABLEKS                       R15 R14 K24 ["LayoutOrder"]
      102 SETTABLEKS                       R5 R14 K3 ["Size"]
      104 GETTABLEKS                       R15 R0 K33 ["Text"]
      106 SETTABLEKS                       R15 R14 K33 ["Text"]
      108 GETTABLEKS                       R15 R1 K41 ["ListItemLabelTextColor"]
      110 SETTABLEKS                       R15 R14 K34 ["TextColor"]
      112 GETTABLEKS                       R15 R1 K35 ["TextSize"]
      114 SETTABLEKS                       R15 R14 K35 ["TextSize"]
      116 GETIMPORT                        R15 K43 [Enum.TextTruncate.AtEnd]
      118 SETTABLEKS                       R15 R14 K36 ["TextTruncate"]
      120 GETIMPORT                        R15 K44 [Enum.TextXAlignment.Left]
      122 SETTABLEKS                       R15 R14 K37 ["TextXAlignment"]
      124 GETIMPORT                        R15 K46 [Enum.TextYAlignment.Center]
      126 SETTABLEKS                       R15 R14 K38 ["TextYAlignment"]
      128 LOADB                            R15 0
      129 SETTABLEKS                       R15 R14 K39 ["TextWrapped"]
      131 CALL                             R12 2 1
      132 SETTABLEKS                       R12 R11 K16 ["Label"]
      134 CALL                             R8 3 1
      135 RETURN                           R8 1

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
       27 GETUPVAL                         R9 0
       28 CALL                             R9 0 1
       29 JUMPIFNOT                        R9 ; [+20]
       30 GETTABLEKS                       R9 R0 K10 ["Selected"]
       32 JUMPIFNOT                        R9 ; [+5]
       33 GETTABLEKS                       R9 R0 K11 ["Applied"]
       35 JUMPIFNOT                        R9 ; [+2]
       36 LOADK                            R8 K12 ["RoundActiveApplied"]
       37 JUMP                             ; [+18]
       38 GETTABLEKS                       R9 R0 K10 ["Selected"]
       40 JUMPIFNOT                        R9 ; [+2]
       41 LOADK                            R8 K13 ["RoundActive"]
       42 JUMP                             ; [+13]
       43 GETTABLEKS                       R9 R0 K11 ["Applied"]
       45 JUMPIFNOT                        R9 ; [+2]
       46 LOADK                            R8 K14 ["RoundApplied"]
       47 JUMP                             ; [+8]
       48 LOADK                            R8 K15 ["Round"]
       49 JUMP                             ; [+6]
       50 GETTABLEKS                       R9 R0 K10 ["Selected"]
       52 JUMPIFNOT                        R9 ; [+2]
       53 LOADK                            R8 K13 ["RoundActive"]
       54 JUMP                             ; [+1]
       55 LOADK                            R8 K15 ["Round"]
       56 GETUPVAL                         R9 1
       57 GETTABLEKS                       R9 R9 K16 ["useMemo"]
       59 NEWCLOSURE                       R10 P0
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R7
       68 NEWTABLE                         R11 0 11
       70 GETTABLEKS                       R12 R0 K17 ["CustomPreview"]
       72 GETTABLEKS                       R13 R0 K18 ["InitialDistance"]
       74 GETTABLEKS                       R14 R0 K19 ["Material"]
       76 GETTABLEKS                       R15 R0 K20 ["MaterialPreviewGeometryType"]
       78 GETTABLEKS                       R16 R0 K21 ["Text"]
       80 MOVE                             R17 R2
       81 MOVE                             R18 R1
       82 MOVE                             R19 R4
       83 MOVE                             R20 R5
       84 MOVE                             R21 R6
       85 MOVE                             R22 R7
       86 SETLIST                          R11 R12 11 [1]
       88 CALL                             R9 2 1
       89 GETUPVAL                         R10 1
       90 GETTABLEKS                       R10 R10 K22 ["useCallback"]
       92 NEWCLOSURE                       R11 P1
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R3
       95 NEWTABLE                         R12 0 2
       97 GETTABLEKS                       R13 R0 K23 ["OnClick"]
       99 MOVE                             R14 R3
      100 SETLIST                          R12 R13 2 [1]
      102 CALL                             R10 2 1
      103 GETUPVAL                         R11 1
      104 GETTABLEKS                       R11 R11 K22 ["useCallback"]
      106 NEWCLOSURE                       R12 P2
      107 CAPTURE                          VAL R0
      108 CAPTURE                          VAL R3
      109 NEWTABLE                         R13 0 2
      111 GETTABLEKS                       R14 R0 K24 ["OnRightClick"]
      113 MOVE                             R15 R3
      114 SETLIST                          R13 R14 2 [1]
      116 CALL                             R11 2 1
      117 GETUPVAL                         R12 1
      118 GETTABLEKS                       R12 R12 K22 ["useCallback"]
      120 NEWCLOSURE                       R13 P3
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R3
      123 NEWTABLE                         R14 0 2
      125 GETTABLEKS                       R15 R0 K25 ["OnMouseEnter"]
      127 MOVE                             R16 R3
      128 SETLIST                          R14 R15 2 [1]
      130 CALL                             R12 2 1
      131 GETUPVAL                         R13 1
      132 GETTABLEKS                       R13 R13 K22 ["useCallback"]
      134 NEWCLOSURE                       R14 P4
      135 CAPTURE                          VAL R0
      136 CAPTURE                          VAL R3
      137 NEWTABLE                         R15 0 2
      139 GETTABLEKS                       R16 R0 K26 ["OnMouseLeave"]
      141 MOVE                             R17 R3
      142 SETLIST                          R15 R16 2 [1]
      144 CALL                             R13 2 1
      145 GETTABLEKS                       R14 R0 K27 ["Loading"]
      147 JUMPIFNOT                        R14 ; [+38]
      148 GETUPVAL                         R14 1
      149 GETTABLEKS                       R14 R14 K28 ["createElement"]
      151 GETUPVAL                         R15 3
      152 DUPTABLE                         R16 K32 [{"ClipsDescendants", "LayoutOrder", "Position", "Size", "Style"}]
      153 LOADB                            R17 1
      154 SETTABLEKS                       R17 R16 K29 ["ClipsDescendants"]
      156 GETTABLEKS                       R17 R0 K30 ["LayoutOrder"]
      158 SETTABLEKS                       R17 R16 K30 ["LayoutOrder"]
      160 GETTABLEKS                       R17 R0 K31 ["Position"]
      162 SETTABLEKS                       R17 R16 K31 ["Position"]
      164 GETIMPORT                        R17 K8 [UDim2.new]
      166 LOADN                            R18 1
      167 LOADN                            R19 246
      168 LOADN                            R20 0
      169 MOVE                             R21 R4
      170 CALL                             R17 4 1
      171 SETTABLEKS                       R17 R16 K2 ["Size"]
      173 LOADK                            R17 K33 ["CornerBox"]
      174 SETTABLEKS                       R17 R16 K0 ["Style"]
      176 DUPTABLE                         R17 K35 [{"Shimmer"}]
      177 GETUPVAL                         R18 1
      178 GETTABLEKS                       R18 R18 K28 ["createElement"]
      180 GETUPVAL                         R19 4
      181 CALL                             R18 1 1
      182 SETTABLEKS                       R18 R17 K34 ["Shimmer"]
      184 CALL                             R14 3 -1
      185 RETURN                           R14 -1
      186 GETUPVAL                         R14 1
      187 GETTABLEKS                       R14 R14 K28 ["createElement"]
      189 GETUPVAL                         R15 5
      190 GETUPVAL                         R16 6
      191 GETTABLEKS                       R16 R16 K36 ["join"]
      193 DUPTABLE                         R17 K37 [{"LayoutOrder", "OnClick", "OnRightClick", "OnMouseEnter", "OnMouseLeave", "Position", "Size", "Style"}]
      194 GETTABLEKS                       R18 R0 K30 ["LayoutOrder"]
      196 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      198 JUMPIFNOT                        R7 ; [+2]
      199 GETUPVAL                         R18 7
      200 JUMP                             ; [+1]
      201 MOVE                             R18 R10
      202 SETTABLEKS                       R18 R17 K23 ["OnClick"]
      204 JUMPIFNOT                        R7 ; [+2]
      205 GETUPVAL                         R18 7
      206 JUMP                             ; [+1]
      207 MOVE                             R18 R11
      208 SETTABLEKS                       R18 R17 K24 ["OnRightClick"]
      210 JUMPIFNOT                        R7 ; [+2]
      211 LOADNIL                          R18
      212 JUMP                             ; [+1]
      213 MOVE                             R18 R12
      214 SETTABLEKS                       R18 R17 K25 ["OnMouseEnter"]
      216 JUMPIFNOT                        R7 ; [+2]
      217 LOADNIL                          R18
      218 JUMP                             ; [+1]
      219 MOVE                             R18 R13
      220 SETTABLEKS                       R18 R17 K26 ["OnMouseLeave"]
      222 GETTABLEKS                       R18 R0 K31 ["Position"]
      224 SETTABLEKS                       R18 R17 K31 ["Position"]
      226 GETIMPORT                        R18 K8 [UDim2.new]
      228 LOADN                            R19 1
      229 LOADN                            R20 246
      230 LOADN                            R21 0
      231 MOVE                             R22 R4
      232 CALL                             R18 4 1
      233 SETTABLEKS                       R18 R17 K2 ["Size"]
      235 SETTABLEKS                       R8 R17 K0 ["Style"]
      237 DUPTABLE                         R18 K40 [{"DisableHover", "StyleModifier"}]
      238 SETTABLEKS                       R7 R18 K38 ["DisableHover"]
      240 JUMPIFNOT                        R7 ; [+4]
      241 GETUPVAL                         R19 8
      242 GETTABLEKS                       R19 R19 K41 ["Disabled"]
      244 JUMP                             ; [+1]
      245 LOADNIL                          R19
      246 SETTABLEKS                       R19 R18 K39 ["StyleModifier"]
      248 CALL                             R16 2 1
      249 DUPTABLE                         R17 K43 [{"Content"}]
      250 SETTABLEKS                       R9 R17 K42 ["Content"]
      252 CALL                             R14 3 -1
      253 RETURN                           R14 -1

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
       61 GETIMPORT                        R15 K4 [require]
       63 GETTABLEKS                       R16 R0 K20 ["Flags"]
       65 GETTABLEKS                       R16 R16 K21 ["getFFlagMaterialPickerUIChanges"]
       67 CALL                             R15 1 1
       68 DUPCLOSURE                       R16 K22 [PROTO_0]
       69 DUPCLOSURE                       R17 K23 [PROTO_1]
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R14
       74 CAPTURE                          VAL R15
       75 CAPTURE                          VAL R13
       76 MOVE                             R18 R7
       77 DUPCLOSURE                       R19 K24 [PROTO_7]
       78 CAPTURE                          VAL R15
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R17
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R16
       86 CAPTURE                          VAL R8
       87 CALL                             R18 1 1
       88 RETURN                           R18 1
