PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["createElement"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["Fragment"]
        8 NEWTABLE                         R2 0 0
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1
       12 GETUPVAL                         R0 2
       13 CALL                             R0 0 1
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K0 ["createElement"]
       17 LOADK                            R2 K2 ["Frame"]
       18 DUPTABLE                         R3 K9 [{"AnchorPoint", "AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "Position", "Size"}]
       19 GETIMPORT                        R4 K12 [Vector2.new]
       21 LOADN                            R5 0
       22 LOADN                            R6 1
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K3 ["AnchorPoint"]
       26 GETIMPORT                        R4 K15 [Enum.AutomaticSize.Y]
       28 SETTABLEKS                       R4 R3 K4 ["AutomaticSize"]
       30 LOADN                            R4 1
       31 SETTABLEKS                       R4 R3 K5 ["BackgroundTransparency"]
       33 LOADN                            R4 0
       34 SETTABLEKS                       R4 R3 K6 ["BorderSizePixel"]
       36 GETIMPORT                        R4 K18 [UDim2.fromScale]
       38 LOADN                            R5 0
       39 LOADN                            R6 1
       40 CALL                             R4 2 1
       41 SETTABLEKS                       R4 R3 K7 ["Position"]
       43 GETIMPORT                        R4 K18 [UDim2.fromScale]
       45 LOADN                            R5 1
       46 LOADN                            R6 0
       47 CALL                             R4 2 1
       48 SETTABLEKS                       R4 R3 K8 ["Size"]
       50 DUPTABLE                         R4 K21 [{"Scrim", "Text"}]
       51 GETUPVAL                         R5 1
       52 GETTABLEKS                       R5 R5 K0 ["createElement"]
       54 LOADK                            R6 K2 ["Frame"]
       55 DUPTABLE                         R7 K24 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Position", "Size", "ZIndex"}]
       56 GETUPVAL                         R8 3
       57 SETTABLEKS                       R8 R7 K22 ["BackgroundColor3"]
       59 LOADN                            R8 0
       60 SETTABLEKS                       R8 R7 K5 ["BackgroundTransparency"]
       62 LOADN                            R8 0
       63 SETTABLEKS                       R8 R7 K6 ["BorderSizePixel"]
       65 GETIMPORT                        R8 K18 [UDim2.fromScale]
       67 LOADN                            R9 0
       68 LOADN                            R10 0
       69 CALL                             R8 2 1
       70 SETTABLEKS                       R8 R7 K7 ["Position"]
       72 GETIMPORT                        R8 K18 [UDim2.fromScale]
       74 LOADN                            R9 1
       75 LOADN                            R10 1
       76 CALL                             R8 2 1
       77 SETTABLEKS                       R8 R7 K8 ["Size"]
       79 MOVE                             R8 R0
       80 CALL                             R8 0 1
       81 SETTABLEKS                       R8 R7 K23 ["ZIndex"]
       83 DUPTABLE                         R8 K26 [{"Shade"}]
       84 GETUPVAL                         R9 1
       85 GETTABLEKS                       R9 R9 K0 ["createElement"]
       87 LOADK                            R10 K27 ["UIGradient"]
       88 DUPTABLE                         R11 K31 [{"Color", "Rotation", "Transparency"}]
       89 GETIMPORT                        R12 K33 [ColorSequence.new]
       91 GETUPVAL                         R13 3
       92 GETUPVAL                         R14 3
       93 CALL                             R12 2 1
       94 SETTABLEKS                       R12 R11 K28 ["Color"]
       96 LOADN                            R12 90
       97 SETTABLEKS                       R12 R11 K29 ["Rotation"]
       99 GETIMPORT                        R12 K35 [NumberSequence.new]
      101 NEWTABLE                         R13 0 2
      103 GETIMPORT                        R14 K37 [NumberSequenceKeypoint.new]
      105 LOADN                            R15 0
      106 LOADN                            R16 1
      107 CALL                             R14 2 1
      108 GETIMPORT                        R15 K37 [NumberSequenceKeypoint.new]
      110 LOADN                            R16 1
      111 LOADN                            R17 0
      112 CALL                             R15 2 -1
      113 SETLIST                          R13 R14 -1 [1]
      115 CALL                             R12 1 1
      116 SETTABLEKS                       R12 R11 K30 ["Transparency"]
      118 CALL                             R9 2 1
      119 SETTABLEKS                       R9 R8 K25 ["Shade"]
      121 CALL                             R5 3 1
      122 SETTABLEKS                       R5 R4 K19 ["Scrim"]
      124 GETUPVAL                         R5 1
      125 GETTABLEKS                       R5 R5 K0 ["createElement"]
      127 GETUPVAL                         R6 4
      128 DUPTABLE                         R7 K44 [{"AnchorPoint", "AutomaticSize", "Size", "Position", "Text", "TextColor", "TextSize", "TextTruncate", "TextXAlignment", "TextYAlignment", "TextWrapped", "ZIndex"}]
      129 GETIMPORT                        R8 K46 [Vector2.zero]
      131 SETTABLEKS                       R8 R7 K3 ["AnchorPoint"]
      133 GETIMPORT                        R8 K15 [Enum.AutomaticSize.Y]
      135 SETTABLEKS                       R8 R7 K4 ["AutomaticSize"]
      137 GETIMPORT                        R8 K18 [UDim2.fromScale]
      139 LOADN                            R9 1
      140 LOADN                            R10 0
      141 CALL                             R8 2 1
      142 SETTABLEKS                       R8 R7 K8 ["Size"]
      144 GETIMPORT                        R8 K18 [UDim2.fromScale]
      146 LOADN                            R9 0
      147 LOADN                            R10 0
      148 CALL                             R8 2 1
      149 SETTABLEKS                       R8 R7 K7 ["Position"]
      151 GETUPVAL                         R8 5
      152 GETTABLEKS                       R8 R8 K20 ["Text"]
      154 SETTABLEKS                       R8 R7 K20 ["Text"]
      156 GETUPVAL                         R8 6
      157 GETTABLEKS                       R8 R8 K47 ["ItemLabelTextColor"]
      159 SETTABLEKS                       R8 R7 K38 ["TextColor"]
      161 GETUPVAL                         R8 6
      162 GETTABLEKS                       R8 R8 K39 ["TextSize"]
      164 SETTABLEKS                       R8 R7 K39 ["TextSize"]
      166 GETIMPORT                        R8 K49 [Enum.TextTruncate.AtEnd]
      168 SETTABLEKS                       R8 R7 K40 ["TextTruncate"]
      170 GETIMPORT                        R8 K51 [Enum.TextXAlignment.Left]
      172 SETTABLEKS                       R8 R7 K41 ["TextXAlignment"]
      174 GETIMPORT                        R8 K53 [Enum.TextYAlignment.Center]
      176 SETTABLEKS                       R8 R7 K42 ["TextYAlignment"]
      178 LOADB                            R8 0
      179 SETTABLEKS                       R8 R7 K43 ["TextWrapped"]
      181 MOVE                             R8 R0
      182 CALL                             R8 0 1
      183 SETTABLEKS                       R8 R7 K23 ["ZIndex"]
      185 DUPTABLE                         R8 K55 [{"Padding"}]
      186 GETUPVAL                         R9 1
      187 GETTABLEKS                       R9 R9 K0 ["createElement"]
      189 LOADK                            R10 K56 ["UIPadding"]
      190 DUPTABLE                         R11 K59 [{"PaddingBottom", "PaddingLeft"}]
      191 GETUPVAL                         R12 6
      192 GETTABLEKS                       R12 R12 K60 ["GridItemLabelPadding"]
      194 GETTABLEKS                       R12 R12 K57 ["PaddingBottom"]
      196 SETTABLEKS                       R12 R11 K57 ["PaddingBottom"]
      198 GETUPVAL                         R12 6
      199 GETTABLEKS                       R12 R12 K60 ["GridItemLabelPadding"]
      201 GETTABLEKS                       R12 R12 K58 ["PaddingLeft"]
      203 SETTABLEKS                       R12 R11 K58 ["PaddingLeft"]
      205 CALL                             R9 2 1
      206 SETTABLEKS                       R9 R8 K54 ["Padding"]
      208 CALL                             R5 3 1
      209 SETTABLEKS                       R5 R4 K20 ["Text"]
      211 CALL                             R1 3 -1
      212 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["OnMouseEnter"]
        6 JUMPIFNOT                        R0 ; [+5]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["OnMouseEnter"]
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 LOADB                            R1 1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["OnMouseLeave"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["OnMouseLeave"]
        9 GETUPVAL                         R1 2
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 3
       12 LOADB                            R1 0
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClick"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["Style"]
        2 GETTABLEKS                       R3 R0 K1 ["Item"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["useState"]
        7 LOADB                            R5 0
        8 CALL                             R4 1 2
        9 GETTABLEKS                       R7 R0 K3 ["ItemsDisabled"]
       11 JUMPIFEQKB                       R7 TRUE ; [+2]
       13 LOADB                            R6 0 +1
       14 LOADB                            R6 1
       15 LOADB                            R7 0
       16 GETTABLEKS                       R8 R0 K4 ["ShowGridLabels"]
       18 JUMPIFEQKB                       R8 FALSE ; [+10]
       20 GETTABLEKS                       R7 R0 K5 ["Text"]
       22 JUMPIFNOT                        R7 ; [+6]
       23 GETTABLEKS                       R8 R0 K5 ["Text"]
       25 JUMPIFNOTEQKS                    R8 K6 [""] ; [+2]
       27 LOADB                            R7 0 +1
       28 LOADB                            R7 1
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K7 ["useMemo"]
       32 NEWCLOSURE                       R9 P0
       33 CAPTURE                          VAL R7
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R2
       40 NEWTABLE                         R10 0 3
       42 MOVE                             R11 R7
       43 MOVE                             R12 R2
       44 GETTABLEKS                       R13 R0 K5 ["Text"]
       46 SETLIST                          R10 R11 3 [1]
       48 CALL                             R8 2 1
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K8 ["useCallback"]
       52 NEWCLOSURE                       R10 P1
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R5
       57 NEWTABLE                         R11 0 4
       59 MOVE                             R12 R6
       60 GETTABLEKS                       R13 R0 K9 ["OnMouseEnter"]
       62 MOVE                             R14 R3
       63 MOVE                             R15 R5
       64 SETLIST                          R11 R12 4 [1]
       66 CALL                             R9 2 1
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R10 R10 K8 ["useCallback"]
       70 NEWCLOSURE                       R11 P2
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R5
       75 NEWTABLE                         R12 0 4
       77 MOVE                             R13 R6
       78 GETTABLEKS                       R14 R0 K10 ["OnMouseLeave"]
       80 MOVE                             R15 R3
       81 MOVE                             R16 R5
       82 SETLIST                          R12 R13 4 [1]
       84 CALL                             R10 2 1
       85 GETUPVAL                         R11 0
       86 GETTABLEKS                       R11 R11 K8 ["useCallback"]
       88 NEWCLOSURE                       R12 P3
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R3
       91 NEWTABLE                         R13 0 2
       93 GETTABLEKS                       R14 R0 K11 ["OnClick"]
       95 MOVE                             R15 R3
       96 SETLIST                          R13 R14 2 [1]
       98 CALL                             R11 2 1
       99 GETUPVAL                         R12 0
      100 GETTABLEKS                       R12 R12 K8 ["useCallback"]
      102 NEWCLOSURE                       R13 P4
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R3
      105 NEWTABLE                         R14 0 2
      107 GETTABLEKS                       R15 R0 K12 ["OnRightClick"]
      109 MOVE                             R16 R3
      110 SETLIST                          R14 R15 2 [1]
      112 CALL                             R12 2 1
      113 GETTABLEKS                       R13 R0 K13 ["Loading"]
      115 JUMPIFNOT                        R13 ; [+69]
      116 GETTABLEKS                       R13 R2 K14 ["ShimmerSizeOffset"]
      118 GETUPVAL                         R14 0
      119 GETTABLEKS                       R14 R14 K15 ["createElement"]
      121 GETUPVAL                         R15 4
      122 DUPTABLE                         R16 K19 [{"LayoutOrder", "Position", "Size", "Style"}]
      123 GETTABLEKS                       R17 R0 K16 ["LayoutOrder"]
      125 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
      127 GETTABLEKS                       R17 R0 K17 ["Position"]
      129 SETTABLEKS                       R17 R16 K17 ["Position"]
      131 GETTABLEKS                       R17 R0 K18 ["Size"]
      133 SETTABLEKS                       R17 R16 K18 ["Size"]
      135 LOADK                            R17 K20 ["BorderBox"]
      136 SETTABLEKS                       R17 R16 K0 ["Style"]
      138 DUPTABLE                         R17 K22 [{"Shimmer"}]
      139 GETUPVAL                         R19 5
      140 CALL                             R19 0 1
      141 JUMPIFNOT                        R19 ; [+34]
      142 GETUPVAL                         R18 0
      143 GETTABLEKS                       R18 R18 K15 ["createElement"]
      145 GETUPVAL                         R19 6
      146 DUPTABLE                         R20 K25 [{"AnchorPoint", "CornerRadius", "Position", "Size"}]
      147 GETIMPORT                        R21 K28 [Vector2.new]
      149 LOADK                            R22 K29 [0.5]
      150 LOADK                            R23 K29 [0.5]
      151 CALL                             R21 2 1
      152 SETTABLEKS                       R21 R20 K23 ["AnchorPoint"]
      154 GETTABLEKS                       R21 R2 K30 ["GridItemCornerRadius"]
      156 SETTABLEKS                       R21 R20 K24 ["CornerRadius"]
      158 GETIMPORT                        R21 K33 [UDim2.fromScale]
      160 LOADK                            R22 K29 [0.5]
      161 LOADK                            R23 K29 [0.5]
      162 CALL                             R21 2 1
      163 SETTABLEKS                       R21 R20 K17 ["Position"]
      165 GETIMPORT                        R21 K34 [UDim2.new]
      167 LOADN                            R22 1
      168 MINUS                            R23 R13
      169 LOADN                            R24 1
      170 MINUS                            R25 R13
      171 CALL                             R21 4 1
      172 SETTABLEKS                       R21 R20 K18 ["Size"]
      174 CALL                             R18 2 1
      175 JUMP                             ; [+5]
      176 GETUPVAL                         R18 0
      177 GETTABLEKS                       R18 R18 K15 ["createElement"]
      179 GETUPVAL                         R19 6
      180 CALL                             R18 1 1
      181 SETTABLEKS                       R18 R17 K21 ["Shimmer"]
      183 CALL                             R14 3 -1
      184 RETURN                           R14 -1
      185 LOADNIL                          R13
      186 LOADNIL                          R14
      187 GETTABLEKS                       R15 R0 K35 ["ShouldCenterTooltip"]
      189 JUMPIFNOT                        R15 ; [+45]
      190 GETIMPORT                        R15 K33 [UDim2.fromScale]
      192 LOADK                            R16 K29 [0.5]
      193 LOADK                            R17 K29 [0.5]
      194 CALL                             R15 2 1
      195 MOVE                             R13 R15
      196 GETTABLEKS                       R16 R0 K17 ["Position"]
      198 GETTABLEKS                       R16 R16 K36 ["X"]
      200 GETTABLEKS                       R16 R16 K37 ["Offset"]
      202 GETTABLEKS                       R18 R0 K39 ["GridItemSize"]
      204 DIVK                             R17 R18 K38 [2]
      205 ADD                              R15 R16 R17
      206 GETTABLEKS                       R18 R0 K17 ["Position"]
      208 GETTABLEKS                       R18 R18 K40 ["Y"]
      210 GETTABLEKS                       R18 R18 K37 ["Offset"]
      212 GETTABLEKS                       R20 R0 K39 ["GridItemSize"]
      214 MULK                             R19 R20 K41 [0.8]
      215 ADD                              R17 R18 R19
      216 GETTABLEKS                       R18 R0 K42 ["CanvasPosition"]
      218 GETTABLEKS                       R18 R18 K40 ["Y"]
      220 SUB                              R16 R17 R18
      221 GETTABLEKS                       R17 R0 K43 ["ContainerYBounds"]
      223 JUMPIFNOT                        R17 ; [+5]
      224 GETTABLEKS                       R17 R0 K43 ["ContainerYBounds"]
      226 GETTABLEKS                       R17 R17 K44 ["Min"]
      228 ADD                              R16 R16 R17
      229 GETIMPORT                        R17 K28 [Vector2.new]
      231 MOVE                             R18 R15
      232 MOVE                             R19 R16
      233 CALL                             R17 2 1
      234 MOVE                             R14 R17
      235 GETTABLEKS                       R15 R2 K45 ["GridItemBackgroundColor"]
      237 GETTABLEKS                       R16 R0 K46 ["Applied"]
      239 JUMPIFNOT                        R16 ; [+2]
      240 GETTABLEKS                       R15 R2 K47 ["GridItemBackgroundColorApplied"]
      242 JUMPIFNOT                        R4 ; [+6]
      243 JUMPIF                           R6 ; [+5]
      244 GETTABLEKS                       R16 R0 K48 ["HoverEffectsEnabled"]
      246 JUMPIFNOT                        R16 ; [+2]
      247 GETTABLEKS                       R15 R2 K49 ["GridItemBackgroundColorHovered"]
      249 GETTABLEKS                       R17 R0 K50 ["Selected"]
      251 JUMPIFNOT                        R17 ; [+3]
      252 GETTABLEKS                       R16 R2 K51 ["GridItemBorderColorSelected"]
      254 JUMP                             ; [+2]
      255 GETTABLEKS                       R16 R2 K52 ["GridItemBorderColor"]
      257 DUPTABLE                         R17 K57 [{"MaterialPreview", "LabelArea", "UICorner", "UIStroke"}]
      258 GETTABLEKS                       R19 R0 K58 ["CustomPreview"]
      260 JUMPIFNOT                        R19 ; [+15]
      261 GETUPVAL                         R18 0
      262 GETTABLEKS                       R18 R18 K15 ["createElement"]
      264 GETTABLEKS                       R19 R0 K58 ["CustomPreview"]
      266 DUPTABLE                         R20 K59 [{"Size"}]
      267 GETIMPORT                        R21 K33 [UDim2.fromScale]
      269 LOADN                            R22 1
      270 LOADN                            R23 1
      271 CALL                             R21 2 1
      272 SETTABLEKS                       R21 R20 K18 ["Size"]
      274 CALL                             R18 2 1
      275 JUMP                             ; [+56]
      276 GETUPVAL                         R18 0
      277 GETTABLEKS                       R18 R18 K15 ["createElement"]
      279 GETUPVAL                         R19 7
      280 DUPTABLE                         R20 K69 [{"AnchorPoint", "BackgroundColor", "ImageTransparency", "InitialDistance", "Material", "MaterialPreviewGeometryType", "MeshPartBackgroundColor", "Position", "Static", "Style", "Transparent", "ref"}]
      281 GETIMPORT                        R21 K28 [Vector2.new]
      283 LOADK                            R22 K29 [0.5]
      284 LOADK                            R23 K29 [0.5]
      285 CALL                             R21 2 1
      286 SETTABLEKS                       R21 R20 K23 ["AnchorPoint"]
      288 SETTABLEKS                       R15 R20 K60 ["BackgroundColor"]
      290 JUMPIFNOT                        R6 ; [+2]
      291 LOADK                            R21 K70 [0.35]
      292 JUMP                             ; [+1]
      293 LOADN                            R21 0
      294 SETTABLEKS                       R21 R20 K61 ["ImageTransparency"]
      296 GETTABLEKS                       R21 R0 K62 ["InitialDistance"]
      298 SETTABLEKS                       R21 R20 K62 ["InitialDistance"]
      300 GETTABLEKS                       R21 R0 K63 ["Material"]
      302 SETTABLEKS                       R21 R20 K63 ["Material"]
      304 GETTABLEKS                       R21 R0 K64 ["MaterialPreviewGeometryType"]
      306 SETTABLEKS                       R21 R20 K64 ["MaterialPreviewGeometryType"]
      308 GETTABLEKS                       R21 R2 K45 ["GridItemBackgroundColor"]
      310 SETTABLEKS                       R21 R20 K65 ["MeshPartBackgroundColor"]
      312 GETIMPORT                        R21 K33 [UDim2.fromScale]
      314 LOADK                            R22 K29 [0.5]
      315 LOADK                            R23 K29 [0.5]
      316 CALL                             R21 2 1
      317 SETTABLEKS                       R21 R20 K17 ["Position"]
      319 LOADB                            R21 1
      320 SETTABLEKS                       R21 R20 K66 ["Static"]
      322 GETTABLEKS                       R21 R2 K71 ["MaterialPreviewStyle"]
      324 SETTABLEKS                       R21 R20 K0 ["Style"]
      326 LOADB                            R21 1
      327 SETTABLEKS                       R21 R20 K67 ["Transparent"]
      329 SETTABLEKS                       R1 R20 K68 ["ref"]
      331 CALL                             R18 2 1
      332 SETTABLEKS                       R18 R17 K53 ["MaterialPreview"]
      334 SETTABLEKS                       R8 R17 K54 ["LabelArea"]
      336 GETUPVAL                         R18 0
      337 GETTABLEKS                       R18 R18 K15 ["createElement"]
      339 LOADK                            R19 K55 ["UICorner"]
      340 DUPTABLE                         R20 K72 [{"CornerRadius"}]
      341 GETTABLEKS                       R21 R2 K30 ["GridItemCornerRadius"]
      343 SETTABLEKS                       R21 R20 K24 ["CornerRadius"]
      345 CALL                             R18 2 1
      346 SETTABLEKS                       R18 R17 K55 ["UICorner"]
      348 GETUPVAL                         R18 0
      349 GETTABLEKS                       R18 R18 K15 ["createElement"]
      351 LOADK                            R19 K56 ["UIStroke"]
      352 DUPTABLE                         R20 K77 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
      353 GETIMPORT                        R21 K80 [Enum.ApplyStrokeMode.Border]
      355 SETTABLEKS                       R21 R20 K73 ["ApplyStrokeMode"]
      357 SETTABLEKS                       R16 R20 K74 ["Color"]
      359 LOADN                            R21 1
      360 SETTABLEKS                       R21 R20 K75 ["Thickness"]
      362 JUMPIFNOT                        R6 ; [+2]
      363 LOADK                            R21 K70 [0.35]
      364 JUMP                             ; [+1]
      365 LOADN                            R21 0
      366 SETTABLEKS                       R21 R20 K76 ["Transparency"]
      368 CALL                             R18 2 1
      369 SETTABLEKS                       R18 R17 K56 ["UIStroke"]
      371 GETUPVAL                         R19 8
      372 CALL                             R19 0 1
      373 JUMPIFNOT                        R19 ; [+9]
      374 NOT                              R18 R7
      375 JUMPIF                           R18 ; [+8]
      376 GETTABLEKS                       R19 R0 K81 ["ShowTooltipWithLabel"]
      378 JUMPIFEQKB                       R19 TRUE ; [+2]
      380 LOADB                            R18 0 +1
      381 LOADB                            R18 1
      382 JUMP                             ; [+1]
      383 NOT                              R18 R7
      384 LOADNIL                          R19
      385 JUMPIFNOT                        R18 ; [+45]
      386 GETUPVAL                         R20 0
      387 GETTABLEKS                       R20 R20 K15 ["createElement"]
      389 GETUPVAL                         R21 9
      390 DUPTABLE                         R22 K86 [{"AnchorPoint", "ContainerXBounds", "ContainerYBounds", "Enabled", "OnTooltipShown", "Position", "ShowDelay", "Text"}]
      391 SETTABLEKS                       R13 R22 K23 ["AnchorPoint"]
      393 GETTABLEKS                       R23 R0 K82 ["ContainerXBounds"]
      395 SETTABLEKS                       R23 R22 K82 ["ContainerXBounds"]
      397 GETTABLEKS                       R23 R0 K43 ["ContainerYBounds"]
      399 SETTABLEKS                       R23 R22 K43 ["ContainerYBounds"]
      401 LOADB                            R23 0
      402 GETTABLEKS                       R24 R0 K48 ["HoverEffectsEnabled"]
      404 JUMPIFEQKB                       R24 FALSE ; [+2]
      406 NOT                              R23 R6
      407 SETTABLEKS                       R23 R22 K83 ["Enabled"]
      409 GETTABLEKS                       R23 R0 K84 ["OnTooltipShown"]
      411 SETTABLEKS                       R23 R22 K84 ["OnTooltipShown"]
      413 SETTABLEKS                       R14 R22 K17 ["Position"]
      415 GETTABLEKS                       R24 R0 K87 ["InstantTooltipEnabled"]
      417 JUMPIFNOT                        R24 ; [+2]
      418 LOADN                            R23 0
      419 JUMP                             ; [+2]
      420 GETTABLEKS                       R23 R0 K88 ["TooltipDelay"]
      422 SETTABLEKS                       R23 R22 K85 ["ShowDelay"]
      424 GETTABLEKS                       R23 R0 K5 ["Text"]
      426 SETTABLEKS                       R23 R22 K5 ["Text"]
      428 CALL                             R20 2 1
      429 MOVE                             R19 R20
      430 JUMP                             ; [+10]
      431 GETUPVAL                         R20 0
      432 GETTABLEKS                       R20 R20 K15 ["createElement"]
      434 GETUPVAL                         R21 0
      435 GETTABLEKS                       R21 R21 K89 ["Fragment"]
      437 NEWTABLE                         R22 0 0
      439 CALL                             R20 2 1
      440 MOVE                             R19 R20
      441 DUPTABLE                         R20 K92 [{"Swatch", "Tooltip", "UICorner"}]
      442 GETUPVAL                         R21 0
      443 GETTABLEKS                       R21 R21 K15 ["createElement"]
      445 LOADK                            R22 K93 ["Frame"]
      446 DUPTABLE                         R23 K95 [{"BackgroundTransparency", "Size"}]
      447 LOADN                            R24 1
      448 SETTABLEKS                       R24 R23 K94 ["BackgroundTransparency"]
      450 GETIMPORT                        R24 K33 [UDim2.fromScale]
      452 LOADN                            R25 1
      453 LOADN                            R26 1
      454 CALL                             R24 2 1
      455 SETTABLEKS                       R24 R23 K18 ["Size"]
      457 MOVE                             R24 R17
      458 CALL                             R21 3 1
      459 SETTABLEKS                       R21 R20 K90 ["Swatch"]
      461 SETTABLEKS                       R19 R20 K91 ["Tooltip"]
      463 GETUPVAL                         R21 0
      464 GETTABLEKS                       R21 R21 K15 ["createElement"]
      466 LOADK                            R22 K55 ["UICorner"]
      467 DUPTABLE                         R23 K72 [{"CornerRadius"}]
      468 GETTABLEKS                       R24 R2 K30 ["GridItemCornerRadius"]
      470 SETTABLEKS                       R24 R23 K24 ["CornerRadius"]
      472 CALL                             R21 2 1
      473 SETTABLEKS                       R21 R20 K55 ["UICorner"]
      475 LOADNIL                          R21
      476 GETTABLEKS                       R22 R0 K96 ["OnRenderChildren"]
      478 JUMPIFNOT                        R22 ; [+5]
      479 GETTABLEKS                       R22 R0 K96 ["OnRenderChildren"]
      481 MOVE                             R23 R3
      482 CALL                             R22 1 1
      483 MOVE                             R21 R22
      484 GETUPVAL                         R22 0
      485 GETTABLEKS                       R22 R22 K15 ["createElement"]
      487 LOADK                            R23 K97 ["TextButton"]
      488 NEWTABLE                         R24 16 0
      490 NOT                              R25 R6
      491 SETTABLEKS                       R25 R24 K98 ["Active"]
      493 LOADB                            R25 0
      494 SETTABLEKS                       R25 R24 K99 ["AutoButtonColor"]
      496 SETTABLEKS                       R15 R24 K100 ["BackgroundColor3"]
      498 JUMPIFNOT                        R6 ; [+2]
      499 LOADK                            R25 K70 [0.35]
      500 JUMP                             ; [+1]
      501 LOADN                            R25 0
      502 SETTABLEKS                       R25 R24 K94 ["BackgroundTransparency"]
      504 LOADN                            R25 0
      505 SETTABLEKS                       R25 R24 K101 ["BorderSizePixel"]
      507 GETTABLEKS                       R25 R0 K16 ["LayoutOrder"]
      509 SETTABLEKS                       R25 R24 K16 ["LayoutOrder"]
      511 GETTABLEKS                       R25 R0 K17 ["Position"]
      513 SETTABLEKS                       R25 R24 K17 ["Position"]
      515 NOT                              R25 R6
      516 SETTABLEKS                       R25 R24 K102 ["Selectable"]
      518 GETTABLEKS                       R25 R0 K18 ["Size"]
      520 SETTABLEKS                       R25 R24 K18 ["Size"]
      522 LOADK                            R25 K6 [""]
      523 SETTABLEKS                       R25 R24 K5 ["Text"]
      525 GETTABLEKS                       R25 R0 K5 ["Text"]
      527 SETTABLEKS                       R25 R24 K103 ["Name"]
      529 GETUPVAL                         R25 0
      530 GETTABLEKS                       R25 R25 K104 ["Event"]
      532 GETTABLEKS                       R25 R25 K105 ["Activated"]
      534 JUMPIFNOT                        R6 ; [+2]
      535 GETUPVAL                         R26 10
      536 JUMP                             ; [+1]
      537 MOVE                             R26 R11
      538 SETTABLE                         R26 R24 R25
      539 GETUPVAL                         R25 0
      540 GETTABLEKS                       R25 R25 K104 ["Event"]
      542 GETTABLEKS                       R25 R25 K106 ["MouseButton2Click"]
      544 JUMPIFNOT                        R6 ; [+2]
      545 GETUPVAL                         R26 10
      546 JUMP                             ; [+1]
      547 MOVE                             R26 R12
      548 SETTABLE                         R26 R24 R25
      549 GETUPVAL                         R25 0
      550 GETTABLEKS                       R25 R25 K104 ["Event"]
      552 GETTABLEKS                       R25 R25 K107 ["MouseEnter"]
      554 SETTABLE                         R9 R24 R25
      555 GETUPVAL                         R25 0
      556 GETTABLEKS                       R25 R25 K104 ["Event"]
      558 GETTABLEKS                       R25 R25 K108 ["MouseLeave"]
      560 SETTABLE                         R10 R24 R25
      561 GETUPVAL                         R25 0
      562 GETTABLEKS                       R25 R25 K104 ["Event"]
      564 GETTABLEKS                       R25 R25 K109 ["MouseMoved"]
      566 JUMPIF                           R6 ; [+3]
      567 GETTABLEKS                       R26 R0 K110 ["OnMouseMoved"]
      569 JUMP                             ; [+1]
      570 LOADNIL                          R26
      571 SETTABLE                         R26 R24 R25
      572 GETUPVAL                         R25 11
      573 GETTABLEKS                       R25 R25 K111 ["join"]
      575 MOVE                             R26 R20
      576 MOVE                             R27 R21
      577 CALL                             R25 2 -1
      578 CALL                             R22 -1 -1
      579 RETURN                           R22 -1

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
       38 GETTABLEKS                       R7 R4 K11 ["SharedFlags"]
       40 GETTABLEKS                       R7 R7 K12 ["getFFlagDevFrameworkShimmerImprovements"]
       42 GETIMPORT                        R8 K4 [require]
       44 GETTABLEKS                       R9 R0 K13 ["Flags"]
       46 GETTABLEKS                       R9 R9 K14 ["getFFlagMaterialGridShowTooltipWithLabel"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R4 K15 ["UI"]
       51 GETTABLEKS                       R10 R9 K16 ["Pane"]
       53 GETTABLEKS                       R11 R9 K17 ["Shimmer"]
       55 GETTABLEKS                       R12 R9 K18 ["TextLabel"]
       57 GETTABLEKS                       R13 R9 K19 ["Tooltip"]
       59 GETIMPORT                        R14 K4 [require]
       61 GETTABLEKS                       R15 R0 K20 ["Components"]
       63 GETTABLEKS                       R15 R15 K21 ["MaterialPreview"]
       65 CALL                             R14 1 1
       66 GETIMPORT                        R15 K24 [Color3.fromHex]
       68 LOADK                            R16 K25 ["#121215"]
       69 CALL                             R15 1 1
       70 DUPCLOSURE                       R16 K26 [PROTO_0]
       71 DUPCLOSURE                       R17 K27 [PROTO_6]
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R15
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R14
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R16
       83 CAPTURE                          VAL R3
       84 GETTABLEKS                       R18 R5 K28 ["forwardRef"]
       86 MOVE                             R19 R17
       87 CALL                             R18 1 -1
       88 RETURN                           R18 -1
