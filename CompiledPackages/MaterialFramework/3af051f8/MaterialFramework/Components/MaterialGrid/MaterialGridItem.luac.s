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
        4 CALL                             R0 0 1
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["OnMouseEnter"]
        9 JUMPIFNOT                        R0 ; [+5]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K0 ["OnMouseEnter"]
       13 GETUPVAL                         R1 3
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 4
       16 LOADB                            R1 1
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+9]
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["OnMouseLeave"]
        8 JUMPIFNOT                        R0 ; [+5]
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K0 ["OnMouseLeave"]
       12 GETUPVAL                         R1 3
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 4
       15 LOADB                            R1 0
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

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
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 NEWTABLE                         R11 0 4
       60 MOVE                             R12 R6
       61 GETTABLEKS                       R13 R0 K9 ["OnMouseEnter"]
       63 MOVE                             R14 R3
       64 MOVE                             R15 R5
       65 SETLIST                          R11 R12 4 [1]
       67 CALL                             R9 2 1
       68 GETUPVAL                         R10 0
       69 GETTABLEKS                       R10 R10 K8 ["useCallback"]
       71 NEWCLOSURE                       R11 P2
       72 CAPTURE                          VAL R6
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R5
       77 NEWTABLE                         R12 0 4
       79 MOVE                             R13 R6
       80 GETTABLEKS                       R14 R0 K10 ["OnMouseLeave"]
       82 MOVE                             R15 R3
       83 MOVE                             R16 R5
       84 SETLIST                          R12 R13 4 [1]
       86 CALL                             R10 2 1
       87 GETUPVAL                         R11 0
       88 GETTABLEKS                       R11 R11 K8 ["useCallback"]
       90 NEWCLOSURE                       R12 P3
       91 CAPTURE                          VAL R0
       92 CAPTURE                          VAL R3
       93 NEWTABLE                         R13 0 2
       95 GETTABLEKS                       R14 R0 K11 ["OnClick"]
       97 MOVE                             R15 R3
       98 SETLIST                          R13 R14 2 [1]
      100 CALL                             R11 2 1
      101 GETUPVAL                         R12 0
      102 GETTABLEKS                       R12 R12 K8 ["useCallback"]
      104 NEWCLOSURE                       R13 P4
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R3
      107 NEWTABLE                         R14 0 2
      109 GETTABLEKS                       R15 R0 K12 ["OnRightClick"]
      111 MOVE                             R16 R3
      112 SETLIST                          R14 R15 2 [1]
      114 CALL                             R12 2 1
      115 GETTABLEKS                       R13 R0 K13 ["Loading"]
      117 JUMPIFNOT                        R13 ; [+69]
      118 GETTABLEKS                       R13 R2 K14 ["ShimmerSizeOffset"]
      120 GETUPVAL                         R14 0
      121 GETTABLEKS                       R14 R14 K15 ["createElement"]
      123 GETUPVAL                         R15 5
      124 DUPTABLE                         R16 K19 [{"LayoutOrder", "Position", "Size", "Style"}]
      125 GETTABLEKS                       R17 R0 K16 ["LayoutOrder"]
      127 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
      129 GETTABLEKS                       R17 R0 K17 ["Position"]
      131 SETTABLEKS                       R17 R16 K17 ["Position"]
      133 GETTABLEKS                       R17 R0 K18 ["Size"]
      135 SETTABLEKS                       R17 R16 K18 ["Size"]
      137 LOADK                            R17 K20 ["BorderBox"]
      138 SETTABLEKS                       R17 R16 K0 ["Style"]
      140 DUPTABLE                         R17 K22 [{"Shimmer"}]
      141 GETUPVAL                         R19 6
      142 CALL                             R19 0 1
      143 JUMPIFNOT                        R19 ; [+34]
      144 GETUPVAL                         R18 0
      145 GETTABLEKS                       R18 R18 K15 ["createElement"]
      147 GETUPVAL                         R19 7
      148 DUPTABLE                         R20 K25 [{"AnchorPoint", "CornerRadius", "Position", "Size"}]
      149 GETIMPORT                        R21 K28 [Vector2.new]
      151 LOADK                            R22 K29 [0.5]
      152 LOADK                            R23 K29 [0.5]
      153 CALL                             R21 2 1
      154 SETTABLEKS                       R21 R20 K23 ["AnchorPoint"]
      156 GETTABLEKS                       R21 R2 K30 ["GridItemCornerRadius"]
      158 SETTABLEKS                       R21 R20 K24 ["CornerRadius"]
      160 GETIMPORT                        R21 K33 [UDim2.fromScale]
      162 LOADK                            R22 K29 [0.5]
      163 LOADK                            R23 K29 [0.5]
      164 CALL                             R21 2 1
      165 SETTABLEKS                       R21 R20 K17 ["Position"]
      167 GETIMPORT                        R21 K34 [UDim2.new]
      169 LOADN                            R22 1
      170 MINUS                            R23 R13
      171 LOADN                            R24 1
      172 MINUS                            R25 R13
      173 CALL                             R21 4 1
      174 SETTABLEKS                       R21 R20 K18 ["Size"]
      176 CALL                             R18 2 1
      177 JUMP                             ; [+5]
      178 GETUPVAL                         R18 0
      179 GETTABLEKS                       R18 R18 K15 ["createElement"]
      181 GETUPVAL                         R19 7
      182 CALL                             R18 1 1
      183 SETTABLEKS                       R18 R17 K21 ["Shimmer"]
      185 CALL                             R14 3 -1
      186 RETURN                           R14 -1
      187 LOADNIL                          R13
      188 LOADNIL                          R14
      189 GETUPVAL                         R15 8
      190 CALL                             R15 0 1
      191 JUMPIFNOT                        R15 ; [+48]
      192 GETTABLEKS                       R15 R0 K35 ["ShouldCenterTooltip"]
      194 JUMPIFNOT                        R15 ; [+45]
      195 GETIMPORT                        R15 K33 [UDim2.fromScale]
      197 LOADK                            R16 K29 [0.5]
      198 LOADK                            R17 K29 [0.5]
      199 CALL                             R15 2 1
      200 MOVE                             R13 R15
      201 GETTABLEKS                       R16 R0 K17 ["Position"]
      203 GETTABLEKS                       R16 R16 K36 ["X"]
      205 GETTABLEKS                       R16 R16 K37 ["Offset"]
      207 GETTABLEKS                       R18 R0 K39 ["GridItemSize"]
      209 DIVK                             R17 R18 K38 [2]
      210 ADD                              R15 R16 R17
      211 GETTABLEKS                       R18 R0 K17 ["Position"]
      213 GETTABLEKS                       R18 R18 K40 ["Y"]
      215 GETTABLEKS                       R18 R18 K37 ["Offset"]
      217 GETTABLEKS                       R20 R0 K39 ["GridItemSize"]
      219 MULK                             R19 R20 K41 [0.8]
      220 ADD                              R17 R18 R19
      221 GETTABLEKS                       R18 R0 K42 ["CanvasPosition"]
      223 GETTABLEKS                       R18 R18 K40 ["Y"]
      225 SUB                              R16 R17 R18
      226 GETTABLEKS                       R17 R0 K43 ["ContainerYBounds"]
      228 JUMPIFNOT                        R17 ; [+5]
      229 GETTABLEKS                       R17 R0 K43 ["ContainerYBounds"]
      231 GETTABLEKS                       R17 R17 K44 ["Min"]
      233 ADD                              R16 R16 R17
      234 GETIMPORT                        R17 K28 [Vector2.new]
      236 MOVE                             R18 R15
      237 MOVE                             R19 R16
      238 CALL                             R17 2 1
      239 MOVE                             R14 R17
      240 LOADNIL                          R15
      241 GETUPVAL                         R16 4
      242 CALL                             R16 0 1
      243 JUMPIFNOT                        R16 ; [+23]
      244 GETTABLEKS                       R15 R2 K45 ["GridItemBackgroundColor"]
      246 GETTABLEKS                       R16 R0 K46 ["Applied"]
      248 JUMPIFNOT                        R16 ; [+2]
      249 GETTABLEKS                       R15 R2 K47 ["GridItemBackgroundColorApplied"]
      251 GETUPVAL                         R16 8
      252 CALL                             R16 0 1
      253 JUMPIFNOT                        R16 ; [+8]
      254 JUMPIFNOT                        R4 ; [+19]
      255 JUMPIF                           R6 ; [+18]
      256 GETTABLEKS                       R16 R0 K48 ["HoverEffectsEnabled"]
      258 JUMPIFNOT                        R16 ; [+15]
      259 GETTABLEKS                       R15 R2 K49 ["GridItemBackgroundColorHovered"]
      261 JUMP                             ; [+12]
      262 JUMPIFNOT                        R4 ; [+11]
      263 JUMPIF                           R6 ; [+10]
      264 GETTABLEKS                       R15 R2 K49 ["GridItemBackgroundColorHovered"]
      266 JUMP                             ; [+7]
      267 JUMPIFNOT                        R4 ; [+4]
      268 JUMPIF                           R6 ; [+3]
      269 GETTABLEKS                       R15 R2 K49 ["GridItemBackgroundColorHovered"]
      271 JUMP                             ; [+2]
      272 GETTABLEKS                       R15 R2 K45 ["GridItemBackgroundColor"]
      274 GETTABLEKS                       R17 R0 K50 ["Selected"]
      276 JUMPIFNOT                        R17 ; [+3]
      277 GETTABLEKS                       R16 R2 K51 ["GridItemBorderColorSelected"]
      279 JUMP                             ; [+2]
      280 GETTABLEKS                       R16 R2 K52 ["GridItemBorderColor"]
      282 DUPTABLE                         R17 K57 [{"MaterialPreview", "LabelArea", "UICorner", "UIStroke"}]
      283 GETTABLEKS                       R19 R0 K58 ["CustomPreview"]
      285 JUMPIFNOT                        R19 ; [+15]
      286 GETUPVAL                         R18 0
      287 GETTABLEKS                       R18 R18 K15 ["createElement"]
      289 GETTABLEKS                       R19 R0 K58 ["CustomPreview"]
      291 DUPTABLE                         R20 K59 [{"Size"}]
      292 GETIMPORT                        R21 K33 [UDim2.fromScale]
      294 LOADN                            R22 1
      295 LOADN                            R23 1
      296 CALL                             R21 2 1
      297 SETTABLEKS                       R21 R20 K18 ["Size"]
      299 CALL                             R18 2 1
      300 JUMP                             ; [+67]
      301 GETUPVAL                         R18 0
      302 GETTABLEKS                       R18 R18 K15 ["createElement"]
      304 GETUPVAL                         R19 9
      305 DUPTABLE                         R20 K69 [{"AnchorPoint", "BackgroundColor", "ImageTransparency", "InitialDistance", "Material", "MaterialPreviewGeometryType", "MeshPartBackgroundColor", "Position", "Static", "Style", "Transparent", "ref"}]
      306 GETIMPORT                        R21 K28 [Vector2.new]
      308 LOADK                            R22 K29 [0.5]
      309 LOADK                            R23 K29 [0.5]
      310 CALL                             R21 2 1
      311 SETTABLEKS                       R21 R20 K23 ["AnchorPoint"]
      313 SETTABLEKS                       R15 R20 K60 ["BackgroundColor"]
      315 JUMPIFNOT                        R6 ; [+2]
      316 LOADK                            R21 K70 [0.35]
      317 JUMP                             ; [+1]
      318 LOADN                            R21 0
      319 SETTABLEKS                       R21 R20 K61 ["ImageTransparency"]
      321 GETTABLEKS                       R21 R0 K62 ["InitialDistance"]
      323 SETTABLEKS                       R21 R20 K62 ["InitialDistance"]
      325 GETTABLEKS                       R21 R0 K63 ["Material"]
      327 SETTABLEKS                       R21 R20 K63 ["Material"]
      329 GETTABLEKS                       R21 R0 K64 ["MaterialPreviewGeometryType"]
      331 SETTABLEKS                       R21 R20 K64 ["MaterialPreviewGeometryType"]
      333 GETUPVAL                         R22 4
      334 CALL                             R22 0 1
      335 JUMPIFNOT                        R22 ; [+3]
      336 GETTABLEKS                       R21 R2 K45 ["GridItemBackgroundColor"]
      338 JUMP                             ; [+1]
      339 LOADNIL                          R21
      340 SETTABLEKS                       R21 R20 K65 ["MeshPartBackgroundColor"]
      342 GETIMPORT                        R21 K33 [UDim2.fromScale]
      344 LOADK                            R22 K29 [0.5]
      345 LOADK                            R23 K29 [0.5]
      346 CALL                             R21 2 1
      347 SETTABLEKS                       R21 R20 K17 ["Position"]
      349 LOADB                            R21 1
      350 SETTABLEKS                       R21 R20 K66 ["Static"]
      352 GETTABLEKS                       R21 R2 K71 ["MaterialPreviewStyle"]
      354 SETTABLEKS                       R21 R20 K0 ["Style"]
      356 LOADB                            R21 1
      357 SETTABLEKS                       R21 R20 K67 ["Transparent"]
      359 GETUPVAL                         R22 4
      360 CALL                             R22 0 1
      361 JUMPIFNOT                        R22 ; [+2]
      362 MOVE                             R21 R1
      363 JUMP                             ; [+1]
      364 LOADNIL                          R21
      365 SETTABLEKS                       R21 R20 K68 ["ref"]
      367 CALL                             R18 2 1
      368 SETTABLEKS                       R18 R17 K53 ["MaterialPreview"]
      370 SETTABLEKS                       R8 R17 K54 ["LabelArea"]
      372 GETUPVAL                         R18 0
      373 GETTABLEKS                       R18 R18 K15 ["createElement"]
      375 LOADK                            R19 K55 ["UICorner"]
      376 DUPTABLE                         R20 K72 [{"CornerRadius"}]
      377 GETTABLEKS                       R21 R2 K30 ["GridItemCornerRadius"]
      379 SETTABLEKS                       R21 R20 K24 ["CornerRadius"]
      381 CALL                             R18 2 1
      382 SETTABLEKS                       R18 R17 K55 ["UICorner"]
      384 GETUPVAL                         R18 0
      385 GETTABLEKS                       R18 R18 K15 ["createElement"]
      387 LOADK                            R19 K56 ["UIStroke"]
      388 DUPTABLE                         R20 K77 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
      389 GETIMPORT                        R21 K80 [Enum.ApplyStrokeMode.Border]
      391 SETTABLEKS                       R21 R20 K73 ["ApplyStrokeMode"]
      393 SETTABLEKS                       R16 R20 K74 ["Color"]
      395 LOADN                            R21 1
      396 SETTABLEKS                       R21 R20 K75 ["Thickness"]
      398 JUMPIFNOT                        R6 ; [+2]
      399 LOADK                            R21 K70 [0.35]
      400 JUMP                             ; [+1]
      401 LOADN                            R21 0
      402 SETTABLEKS                       R21 R20 K76 ["Transparency"]
      404 CALL                             R18 2 1
      405 SETTABLEKS                       R18 R17 K56 ["UIStroke"]
      407 LOADNIL                          R18
      408 JUMPIF                           R7 ; [+63]
      409 GETUPVAL                         R19 8
      410 CALL                             R19 0 1
      411 JUMPIFNOT                        R19 ; [+45]
      412 GETUPVAL                         R19 0
      413 GETTABLEKS                       R19 R19 K15 ["createElement"]
      415 GETUPVAL                         R20 10
      416 DUPTABLE                         R21 K85 [{"AnchorPoint", "ContainerXBounds", "ContainerYBounds", "Enabled", "OnTooltipShown", "Position", "ShowDelay", "Text"}]
      417 SETTABLEKS                       R13 R21 K23 ["AnchorPoint"]
      419 GETTABLEKS                       R22 R0 K81 ["ContainerXBounds"]
      421 SETTABLEKS                       R22 R21 K81 ["ContainerXBounds"]
      423 GETTABLEKS                       R22 R0 K43 ["ContainerYBounds"]
      425 SETTABLEKS                       R22 R21 K43 ["ContainerYBounds"]
      427 LOADB                            R22 0
      428 GETTABLEKS                       R23 R0 K48 ["HoverEffectsEnabled"]
      430 JUMPIFEQKB                       R23 FALSE ; [+2]
      432 NOT                              R22 R6
      433 SETTABLEKS                       R22 R21 K82 ["Enabled"]
      435 GETTABLEKS                       R22 R0 K83 ["OnTooltipShown"]
      437 SETTABLEKS                       R22 R21 K83 ["OnTooltipShown"]
      439 SETTABLEKS                       R14 R21 K17 ["Position"]
      441 GETTABLEKS                       R23 R0 K86 ["InstantTooltipEnabled"]
      443 JUMPIFNOT                        R23 ; [+2]
      444 LOADN                            R22 0
      445 JUMP                             ; [+2]
      446 GETTABLEKS                       R22 R0 K87 ["TooltipDelay"]
      448 SETTABLEKS                       R22 R21 K84 ["ShowDelay"]
      450 GETTABLEKS                       R22 R0 K5 ["Text"]
      452 SETTABLEKS                       R22 R21 K5 ["Text"]
      454 CALL                             R19 2 1
      455 MOVE                             R18 R19
      456 JUMP                             ; [+25]
      457 GETUPVAL                         R19 0
      458 GETTABLEKS                       R19 R19 K15 ["createElement"]
      460 GETUPVAL                         R20 10
      461 DUPTABLE                         R21 K88 [{"Enabled", "Text"}]
      462 NOT                              R22 R6
      463 SETTABLEKS                       R22 R21 K82 ["Enabled"]
      465 GETTABLEKS                       R22 R0 K5 ["Text"]
      467 SETTABLEKS                       R22 R21 K5 ["Text"]
      469 CALL                             R19 2 1
      470 MOVE                             R18 R19
      471 JUMP                             ; [+10]
      472 GETUPVAL                         R19 0
      473 GETTABLEKS                       R19 R19 K15 ["createElement"]
      475 GETUPVAL                         R20 0
      476 GETTABLEKS                       R20 R20 K89 ["Fragment"]
      478 NEWTABLE                         R21 0 0
      480 CALL                             R19 2 1
      481 MOVE                             R18 R19
      482 DUPTABLE                         R19 K92 [{"Swatch", "Tooltip", "UICorner"}]
      483 GETUPVAL                         R20 0
      484 GETTABLEKS                       R20 R20 K15 ["createElement"]
      486 LOADK                            R21 K93 ["Frame"]
      487 DUPTABLE                         R22 K95 [{"BackgroundTransparency", "Size"}]
      488 LOADN                            R23 1
      489 SETTABLEKS                       R23 R22 K94 ["BackgroundTransparency"]
      491 GETIMPORT                        R23 K33 [UDim2.fromScale]
      493 LOADN                            R24 1
      494 LOADN                            R25 1
      495 CALL                             R23 2 1
      496 SETTABLEKS                       R23 R22 K18 ["Size"]
      498 MOVE                             R23 R17
      499 CALL                             R20 3 1
      500 SETTABLEKS                       R20 R19 K90 ["Swatch"]
      502 SETTABLEKS                       R18 R19 K91 ["Tooltip"]
      504 GETUPVAL                         R20 0
      505 GETTABLEKS                       R20 R20 K15 ["createElement"]
      507 LOADK                            R21 K55 ["UICorner"]
      508 DUPTABLE                         R22 K72 [{"CornerRadius"}]
      509 GETTABLEKS                       R23 R2 K30 ["GridItemCornerRadius"]
      511 SETTABLEKS                       R23 R22 K24 ["CornerRadius"]
      513 CALL                             R20 2 1
      514 SETTABLEKS                       R20 R19 K55 ["UICorner"]
      516 LOADNIL                          R20
      517 GETTABLEKS                       R21 R0 K96 ["OnRenderChildren"]
      519 JUMPIFNOT                        R21 ; [+5]
      520 GETTABLEKS                       R21 R0 K96 ["OnRenderChildren"]
      522 MOVE                             R22 R3
      523 CALL                             R21 1 1
      524 MOVE                             R20 R21
      525 GETUPVAL                         R21 0
      526 GETTABLEKS                       R21 R21 K15 ["createElement"]
      528 LOADK                            R22 K97 ["TextButton"]
      529 NEWTABLE                         R23 16 0
      531 NOT                              R24 R6
      532 SETTABLEKS                       R24 R23 K98 ["Active"]
      534 LOADB                            R24 0
      535 SETTABLEKS                       R24 R23 K99 ["AutoButtonColor"]
      537 SETTABLEKS                       R15 R23 K100 ["BackgroundColor3"]
      539 JUMPIFNOT                        R6 ; [+2]
      540 LOADK                            R24 K70 [0.35]
      541 JUMP                             ; [+1]
      542 LOADN                            R24 0
      543 SETTABLEKS                       R24 R23 K94 ["BackgroundTransparency"]
      545 LOADN                            R24 0
      546 SETTABLEKS                       R24 R23 K101 ["BorderSizePixel"]
      548 GETTABLEKS                       R24 R0 K16 ["LayoutOrder"]
      550 SETTABLEKS                       R24 R23 K16 ["LayoutOrder"]
      552 GETTABLEKS                       R24 R0 K17 ["Position"]
      554 SETTABLEKS                       R24 R23 K17 ["Position"]
      556 NOT                              R24 R6
      557 SETTABLEKS                       R24 R23 K102 ["Selectable"]
      559 GETTABLEKS                       R24 R0 K18 ["Size"]
      561 SETTABLEKS                       R24 R23 K18 ["Size"]
      563 LOADK                            R24 K6 [""]
      564 SETTABLEKS                       R24 R23 K5 ["Text"]
      566 GETTABLEKS                       R24 R0 K5 ["Text"]
      568 SETTABLEKS                       R24 R23 K103 ["Name"]
      570 GETUPVAL                         R24 0
      571 GETTABLEKS                       R24 R24 K104 ["Event"]
      573 GETTABLEKS                       R24 R24 K105 ["Activated"]
      575 JUMPIFNOT                        R6 ; [+2]
      576 GETUPVAL                         R25 11
      577 JUMP                             ; [+1]
      578 MOVE                             R25 R11
      579 SETTABLE                         R25 R23 R24
      580 GETUPVAL                         R24 0
      581 GETTABLEKS                       R24 R24 K104 ["Event"]
      583 GETTABLEKS                       R24 R24 K106 ["MouseButton2Click"]
      585 JUMPIFNOT                        R6 ; [+2]
      586 GETUPVAL                         R25 11
      587 JUMP                             ; [+1]
      588 MOVE                             R25 R12
      589 SETTABLE                         R25 R23 R24
      590 GETUPVAL                         R24 0
      591 GETTABLEKS                       R24 R24 K104 ["Event"]
      593 GETTABLEKS                       R24 R24 K107 ["MouseEnter"]
      595 SETTABLE                         R9 R23 R24
      596 GETUPVAL                         R24 0
      597 GETTABLEKS                       R24 R24 K104 ["Event"]
      599 GETTABLEKS                       R24 R24 K108 ["MouseLeave"]
      601 SETTABLE                         R10 R23 R24
      602 GETUPVAL                         R24 0
      603 GETTABLEKS                       R24 R24 K104 ["Event"]
      605 GETTABLEKS                       R24 R24 K109 ["MouseMoved"]
      607 GETUPVAL                         R26 8
      608 CALL                             R26 0 1
      609 JUMPIFNOT                        R26 ; [+4]
      610 JUMPIF                           R6 ; [+3]
      611 GETTABLEKS                       R25 R0 K110 ["OnMouseMoved"]
      613 JUMP                             ; [+1]
      614 LOADNIL                          R25
      615 SETTABLE                         R25 R23 R24
      616 GETUPVAL                         R24 12
      617 GETTABLEKS                       R24 R24 K111 ["join"]
      619 MOVE                             R25 R19
      620 MOVE                             R26 R20
      621 CALL                             R24 2 -1
      622 CALL                             R21 -1 -1
      623 RETURN                           R21 -1

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
       46 GETTABLEKS                       R9 R9 K14 ["getFFlagMaterialPickerInstantTooltip"]
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
       66 GETIMPORT                        R15 K4 [require]
       68 GETTABLEKS                       R16 R0 K13 ["Flags"]
       70 GETTABLEKS                       R16 R16 K22 ["getFFlagMaterialPickerUIChanges"]
       72 CALL                             R15 1 1
       73 GETIMPORT                        R16 K25 [Color3.fromHex]
       75 LOADK                            R17 K26 ["#121215"]
       76 CALL                             R16 1 1
       77 DUPCLOSURE                       R17 K27 [PROTO_0]
       78 DUPCLOSURE                       R18 K28 [PROTO_6]
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R16
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R15
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R17
       91 CAPTURE                          VAL R3
       92 GETTABLEKS                       R19 R5 K29 ["forwardRef"]
       94 MOVE                             R20 R18
       95 CALL                             R19 1 -1
       96 RETURN                           R19 -1
