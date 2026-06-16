PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GridItemLabelPadding"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["createElement"]
        6 GETUPVAL                         R2 2
        7 DUPTABLE                         R3 K12 [{"AnchorPoint", "AutomaticSize", "Size", "Position", "Text", "TextSize", "TextTruncate", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
        8 GETIMPORT                        R4 K15 [Vector2.new]
       10 LOADN                            R5 0
       11 LOADN                            R6 1
       12 CALL                             R4 2 1
       13 SETTABLEKS                       R4 R3 K2 ["AnchorPoint"]
       15 GETIMPORT                        R4 K18 [Enum.AutomaticSize.Y]
       17 SETTABLEKS                       R4 R3 K3 ["AutomaticSize"]
       19 GETIMPORT                        R4 K21 [UDim2.fromScale]
       21 LOADN                            R5 1
       22 LOADN                            R6 0
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K4 ["Size"]
       26 GETIMPORT                        R4 K21 [UDim2.fromScale]
       28 LOADN                            R5 0
       29 LOADN                            R6 1
       30 CALL                             R4 2 1
       31 SETTABLEKS                       R4 R3 K5 ["Position"]
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K6 ["Text"]
       36 SETTABLEKS                       R4 R3 K6 ["Text"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K7 ["TextSize"]
       41 SETTABLEKS                       R4 R3 K7 ["TextSize"]
       43 GETIMPORT                        R4 K23 [Enum.TextTruncate.AtEnd]
       45 SETTABLEKS                       R4 R3 K8 ["TextTruncate"]
       47 GETIMPORT                        R4 K25 [Enum.TextXAlignment.Left]
       49 SETTABLEKS                       R4 R3 K9 ["TextXAlignment"]
       51 GETIMPORT                        R4 K27 [Enum.TextYAlignment.Center]
       53 SETTABLEKS                       R4 R3 K10 ["TextYAlignment"]
       55 LOADB                            R4 0
       56 SETTABLEKS                       R4 R3 K11 ["TextWrapped"]
       58 DUPTABLE                         R4 K29 [{"Padding"}]
       59 GETUPVAL                         R5 1
       60 GETTABLEKS                       R5 R5 K1 ["createElement"]
       62 LOADK                            R6 K30 ["UIPadding"]
       63 DUPTABLE                         R7 K33 [{"PaddingBottom", "PaddingLeft"}]
       64 GETTABLEKS                       R8 R0 K31 ["PaddingBottom"]
       66 SETTABLEKS                       R8 R7 K31 ["PaddingBottom"]
       68 GETTABLEKS                       R8 R0 K32 ["PaddingLeft"]
       70 SETTABLEKS                       R8 R7 K32 ["PaddingLeft"]
       72 CALL                             R5 2 1
       73 SETTABLEKS                       R5 R4 K28 ["Padding"]
       75 CALL                             R1 3 -1
       76 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnMouseEnter"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnMouseEnter"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 LOADB                            R1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnMouseLeave"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnMouseLeave"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Style"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 LOADB                            R4 0
        8 GETTABLEKS                       R5 R0 K1 ["ShowGridLabels"]
       10 JUMPIFEQKB                       R5 FALSE ; [+10]
       12 GETTABLEKS                       R4 R0 K2 ["Text"]
       14 JUMPIFNOT                        R4 ; [+6]
       15 GETTABLEKS                       R5 R0 K2 ["Text"]
       17 JUMPIFNOTEQKS                    R5 K3 [""] ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K4 ["useState"]
       24 LOADB                            R6 0
       25 CALL                             R5 1 2
       26 GETTABLEKS                       R7 R0 K5 ["Loading"]
       28 JUMPIFNOT                        R7 ; [+68]
       29 GETTABLEKS                       R7 R2 K6 ["ShimmerSizeOffset"]
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K7 ["createElement"]
       34 GETUPVAL                         R9 2
       35 DUPTABLE                         R10 K11 [{"LayoutOrder", "Position", "Size", "Style"}]
       36 GETTABLEKS                       R11 R0 K8 ["LayoutOrder"]
       38 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       40 GETTABLEKS                       R11 R0 K9 ["Position"]
       42 SETTABLEKS                       R11 R10 K9 ["Position"]
       44 GETTABLEKS                       R11 R0 K10 ["Size"]
       46 SETTABLEKS                       R11 R10 K10 ["Size"]
       48 LOADK                            R11 K12 ["BorderBox"]
       49 SETTABLEKS                       R11 R10 K0 ["Style"]
       51 DUPTABLE                         R11 K14 [{"Shimmer"}]
       52 GETUPVAL                         R13 3
       53 JUMPIFNOT                        R13 ; [+34]
       54 GETUPVAL                         R12 0
       55 GETTABLEKS                       R12 R12 K7 ["createElement"]
       57 GETUPVAL                         R13 4
       58 DUPTABLE                         R14 K17 [{"AnchorPoint", "CornerRadius", "Position", "Size"}]
       59 GETIMPORT                        R15 K20 [Vector2.new]
       61 LOADK                            R16 K21 [0.5]
       62 LOADK                            R17 K21 [0.5]
       63 CALL                             R15 2 1
       64 SETTABLEKS                       R15 R14 K15 ["AnchorPoint"]
       66 GETTABLEKS                       R15 R2 K22 ["GridItemCornerRadius"]
       68 SETTABLEKS                       R15 R14 K16 ["CornerRadius"]
       70 GETIMPORT                        R15 K25 [UDim2.fromScale]
       72 LOADK                            R16 K21 [0.5]
       73 LOADK                            R17 K21 [0.5]
       74 CALL                             R15 2 1
       75 SETTABLEKS                       R15 R14 K9 ["Position"]
       77 GETIMPORT                        R15 K26 [UDim2.new]
       79 LOADN                            R16 1
       80 MINUS                            R17 R7
       81 LOADN                            R18 1
       82 MINUS                            R19 R7
       83 CALL                             R15 4 1
       84 SETTABLEKS                       R15 R14 K10 ["Size"]
       86 CALL                             R12 2 1
       87 JUMP                             ; [+5]
       88 GETUPVAL                         R12 0
       89 GETTABLEKS                       R12 R12 K7 ["createElement"]
       91 GETUPVAL                         R13 4
       92 CALL                             R12 1 1
       93 SETTABLEKS                       R12 R11 K13 ["Shimmer"]
       95 CALL                             R8 3 -1
       96 RETURN                           R8 -1
       97 LOADNIL                          R7
       98 LOADNIL                          R8
       99 GETTABLEKS                       R9 R0 K27 ["ShouldCenterTooltip"]
      101 JUMPIFNOT                        R9 ; [+45]
      102 GETIMPORT                        R9 K25 [UDim2.fromScale]
      104 LOADK                            R10 K21 [0.5]
      105 LOADK                            R11 K21 [0.5]
      106 CALL                             R9 2 1
      107 MOVE                             R7 R9
      108 GETTABLEKS                       R10 R0 K9 ["Position"]
      110 GETTABLEKS                       R10 R10 K28 ["X"]
      112 GETTABLEKS                       R10 R10 K29 ["Offset"]
      114 GETTABLEKS                       R12 R0 K31 ["GridItemSize"]
      116 DIVK                             R11 R12 K30 [2]
      117 ADD                              R9 R10 R11
      118 GETTABLEKS                       R12 R0 K9 ["Position"]
      120 GETTABLEKS                       R12 R12 K32 ["Y"]
      122 GETTABLEKS                       R12 R12 K29 ["Offset"]
      124 GETTABLEKS                       R14 R0 K31 ["GridItemSize"]
      126 MULK                             R13 R14 K33 [0.8]
      127 ADD                              R11 R12 R13
      128 GETTABLEKS                       R12 R0 K34 ["CanvasPosition"]
      130 GETTABLEKS                       R12 R12 K32 ["Y"]
      132 SUB                              R10 R11 R12
      133 GETTABLEKS                       R11 R0 K35 ["ContainerYBounds"]
      135 JUMPIFNOT                        R11 ; [+5]
      136 GETTABLEKS                       R11 R0 K35 ["ContainerYBounds"]
      138 GETTABLEKS                       R11 R11 K36 ["Min"]
      140 ADD                              R10 R10 R11
      141 GETIMPORT                        R11 K20 [Vector2.new]
      143 MOVE                             R12 R9
      144 MOVE                             R13 R10
      145 CALL                             R11 2 1
      146 MOVE                             R8 R11
      147 GETTABLEKS                       R9 R2 K37 ["GridItemBackgroundColor"]
      149 GETTABLEKS                       R10 R0 K38 ["Applied"]
      151 JUMPIFNOT                        R10 ; [+2]
      152 GETTABLEKS                       R9 R2 K39 ["GridItemBackgroundColorApplied"]
      154 JUMPIFNOT                        R5 ; [+5]
      155 GETTABLEKS                       R10 R0 K40 ["HoverEffectsEnabled"]
      157 JUMPIFNOT                        R10 ; [+2]
      158 GETTABLEKS                       R9 R2 K41 ["GridItemBackgroundColorHovered"]
      160 GETTABLEKS                       R11 R0 K42 ["Selected"]
      162 JUMPIFNOT                        R11 ; [+3]
      163 GETTABLEKS                       R10 R2 K43 ["GridItemBorderColorSelected"]
      165 JUMP                             ; [+2]
      166 GETTABLEKS                       R10 R2 K44 ["GridItemBorderColor"]
      168 NEWCLOSURE                       R11 P1
      169 CAPTURE                          VAL R0
      170 CAPTURE                          VAL R6
      171 NEWCLOSURE                       R12 P2
      172 CAPTURE                          VAL R0
      173 CAPTURE                          VAL R6
      174 DUPTABLE                         R13 K50 [{"MaterialPreview", "Label", "UICorner", "UIStroke", "Tooltip"}]
      175 GETTABLEKS                       R15 R0 K51 ["CustomPreview"]
      177 JUMPIFNOT                        R15 ; [+15]
      178 GETUPVAL                         R14 0
      179 GETTABLEKS                       R14 R14 K7 ["createElement"]
      181 GETTABLEKS                       R15 R0 K51 ["CustomPreview"]
      183 DUPTABLE                         R16 K52 [{"Size"}]
      184 GETIMPORT                        R17 K25 [UDim2.fromScale]
      186 LOADN                            R18 1
      187 LOADN                            R19 1
      188 CALL                             R17 2 1
      189 SETTABLEKS                       R17 R16 K10 ["Size"]
      191 CALL                             R14 2 1
      192 JUMP                             ; [+50]
      193 GETUPVAL                         R14 0
      194 GETTABLEKS                       R14 R14 K7 ["createElement"]
      196 GETUPVAL                         R15 5
      197 DUPTABLE                         R16 K61 [{"AnchorPoint", "BackgroundColor", "InitialDistance", "Material", "MaterialPreviewGeometryType", "MeshPartBackgroundColor", "Position", "Static", "Style", "Transparent", "ref"}]
      198 GETIMPORT                        R17 K20 [Vector2.new]
      200 LOADK                            R18 K21 [0.5]
      201 LOADK                            R19 K21 [0.5]
      202 CALL                             R17 2 1
      203 SETTABLEKS                       R17 R16 K15 ["AnchorPoint"]
      205 SETTABLEKS                       R9 R16 K53 ["BackgroundColor"]
      207 GETTABLEKS                       R17 R0 K54 ["InitialDistance"]
      209 SETTABLEKS                       R17 R16 K54 ["InitialDistance"]
      211 GETTABLEKS                       R17 R0 K55 ["Material"]
      213 SETTABLEKS                       R17 R16 K55 ["Material"]
      215 GETTABLEKS                       R17 R0 K56 ["MaterialPreviewGeometryType"]
      217 SETTABLEKS                       R17 R16 K56 ["MaterialPreviewGeometryType"]
      219 GETTABLEKS                       R17 R2 K37 ["GridItemBackgroundColor"]
      221 SETTABLEKS                       R17 R16 K57 ["MeshPartBackgroundColor"]
      223 GETIMPORT                        R17 K25 [UDim2.fromScale]
      225 LOADK                            R18 K21 [0.5]
      226 LOADK                            R19 K21 [0.5]
      227 CALL                             R17 2 1
      228 SETTABLEKS                       R17 R16 K9 ["Position"]
      230 LOADB                            R17 1
      231 SETTABLEKS                       R17 R16 K58 ["Static"]
      233 GETTABLEKS                       R17 R2 K62 ["MaterialPreviewStyle"]
      235 SETTABLEKS                       R17 R16 K0 ["Style"]
      237 LOADB                            R17 1
      238 SETTABLEKS                       R17 R16 K59 ["Transparent"]
      240 SETTABLEKS                       R1 R16 K60 ["ref"]
      242 CALL                             R14 2 1
      243 SETTABLEKS                       R14 R13 K45 ["MaterialPreview"]
      245 JUMPIFNOT                        R4 ; [+3]
      246 MOVE                             R14 R3
      247 CALL                             R14 0 1
      248 JUMP                             ; [+1]
      249 LOADNIL                          R14
      250 SETTABLEKS                       R14 R13 K46 ["Label"]
      252 GETUPVAL                         R14 0
      253 GETTABLEKS                       R14 R14 K7 ["createElement"]
      255 LOADK                            R15 K47 ["UICorner"]
      256 DUPTABLE                         R16 K63 [{"CornerRadius"}]
      257 GETTABLEKS                       R17 R2 K22 ["GridItemCornerRadius"]
      259 SETTABLEKS                       R17 R16 K16 ["CornerRadius"]
      261 CALL                             R14 2 1
      262 SETTABLEKS                       R14 R13 K47 ["UICorner"]
      264 GETUPVAL                         R14 0
      265 GETTABLEKS                       R14 R14 K7 ["createElement"]
      267 LOADK                            R15 K48 ["UIStroke"]
      268 DUPTABLE                         R16 K67 [{"ApplyStrokeMode", "Color", "Thickness"}]
      269 GETIMPORT                        R17 K70 [Enum.ApplyStrokeMode.Border]
      271 SETTABLEKS                       R17 R16 K64 ["ApplyStrokeMode"]
      273 SETTABLEKS                       R10 R16 K65 ["Color"]
      275 LOADN                            R17 1
      276 SETTABLEKS                       R17 R16 K66 ["Thickness"]
      278 CALL                             R14 2 1
      279 SETTABLEKS                       R14 R13 K48 ["UIStroke"]
      281 GETUPVAL                         R16 6
      282 CALL                             R16 0 1
      283 JUMPIFNOT                        R16 ; [+9]
      284 NOT                              R15 R4
      285 JUMPIF                           R15 ; [+8]
      286 GETTABLEKS                       R16 R0 K71 ["ShowTooltipWithLabel"]
      288 JUMPIFEQKB                       R16 TRUE ; [+2]
      290 LOADB                            R15 0 +1
      291 LOADB                            R15 1
      292 JUMP                             ; [+1]
      293 NOT                              R15 R4
      294 JUMPIFNOT                        R15 ; [+40]
      295 GETUPVAL                         R14 0
      296 GETTABLEKS                       R14 R14 K7 ["createElement"]
      298 GETUPVAL                         R15 7
      299 DUPTABLE                         R16 K76 [{"AnchorPoint", "ContainerXBounds", "ContainerYBounds", "Enabled", "OnTooltipShown", "Position", "ShowDelay", "Text"}]
      300 SETTABLEKS                       R7 R16 K15 ["AnchorPoint"]
      302 GETTABLEKS                       R17 R0 K72 ["ContainerXBounds"]
      304 SETTABLEKS                       R17 R16 K72 ["ContainerXBounds"]
      306 GETTABLEKS                       R17 R0 K35 ["ContainerYBounds"]
      308 SETTABLEKS                       R17 R16 K35 ["ContainerYBounds"]
      310 GETTABLEKS                       R17 R0 K40 ["HoverEffectsEnabled"]
      312 SETTABLEKS                       R17 R16 K73 ["Enabled"]
      314 GETTABLEKS                       R17 R0 K74 ["OnTooltipShown"]
      316 SETTABLEKS                       R17 R16 K74 ["OnTooltipShown"]
      318 SETTABLEKS                       R8 R16 K9 ["Position"]
      320 GETTABLEKS                       R18 R0 K77 ["InstantTooltipEnabled"]
      322 JUMPIFNOT                        R18 ; [+2]
      323 LOADN                            R17 0
      324 JUMP                             ; [+2]
      325 GETTABLEKS                       R17 R0 K78 ["TooltipDelay"]
      327 SETTABLEKS                       R17 R16 K75 ["ShowDelay"]
      329 GETTABLEKS                       R17 R0 K2 ["Text"]
      331 SETTABLEKS                       R17 R16 K2 ["Text"]
      333 CALL                             R14 2 1
      334 JUMP                             ; [+1]
      335 LOADNIL                          R14
      336 SETTABLEKS                       R14 R13 K49 ["Tooltip"]
      338 LOADNIL                          R14
      339 GETTABLEKS                       R15 R0 K79 ["OnRenderChildren"]
      341 JUMPIFNOT                        R15 ; [+4]
      342 GETTABLEKS                       R15 R0 K79 ["OnRenderChildren"]
      344 CALL                             R15 0 1
      345 MOVE                             R14 R15
      346 GETUPVAL                         R15 0
      347 GETTABLEKS                       R15 R15 K7 ["createElement"]
      349 LOADK                            R16 K80 ["TextButton"]
      350 NEWTABLE                         R17 16 0
      352 LOADB                            R18 0
      353 SETTABLEKS                       R18 R17 K81 ["AutoButtonColor"]
      355 SETTABLEKS                       R9 R17 K82 ["BackgroundColor3"]
      357 LOADN                            R18 0
      358 SETTABLEKS                       R18 R17 K83 ["BorderSizePixel"]
      360 GETTABLEKS                       R18 R0 K8 ["LayoutOrder"]
      362 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      364 GETTABLEKS                       R18 R0 K9 ["Position"]
      366 SETTABLEKS                       R18 R17 K9 ["Position"]
      368 GETTABLEKS                       R18 R0 K10 ["Size"]
      370 SETTABLEKS                       R18 R17 K10 ["Size"]
      372 LOADK                            R18 K3 [""]
      373 SETTABLEKS                       R18 R17 K2 ["Text"]
      375 GETTABLEKS                       R18 R0 K2 ["Text"]
      377 SETTABLEKS                       R18 R17 K84 ["Name"]
      379 GETUPVAL                         R18 0
      380 GETTABLEKS                       R18 R18 K85 ["Event"]
      382 GETTABLEKS                       R18 R18 K86 ["Activated"]
      384 GETTABLEKS                       R19 R0 K87 ["OnClick"]
      386 SETTABLE                         R19 R17 R18
      387 GETUPVAL                         R18 0
      388 GETTABLEKS                       R18 R18 K85 ["Event"]
      390 GETTABLEKS                       R18 R18 K88 ["MouseButton2Click"]
      392 GETTABLEKS                       R19 R0 K89 ["OnRightClick"]
      394 SETTABLE                         R19 R17 R18
      395 GETUPVAL                         R18 0
      396 GETTABLEKS                       R18 R18 K85 ["Event"]
      398 GETTABLEKS                       R18 R18 K90 ["MouseEnter"]
      400 SETTABLE                         R11 R17 R18
      401 GETUPVAL                         R18 0
      402 GETTABLEKS                       R18 R18 K85 ["Event"]
      404 GETTABLEKS                       R18 R18 K91 ["MouseLeave"]
      406 SETTABLE                         R12 R17 R18
      407 GETUPVAL                         R18 0
      408 GETTABLEKS                       R18 R18 K85 ["Event"]
      410 GETTABLEKS                       R18 R18 K92 ["MouseMoved"]
      412 GETTABLEKS                       R19 R0 K93 ["OnMouseMoved"]
      414 SETTABLE                         R19 R17 R18
      415 GETUPVAL                         R18 8
      416 GETTABLEKS                       R18 R18 K94 ["join"]
      418 MOVE                             R19 R13
      419 MOVE                             R20 R14
      420 CALL                             R18 2 -1
      421 CALL                             R15 -1 -1
      422 RETURN                           R15 -1

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
       31 GETTABLEKS                       R6 R4 K9 ["SharedFlags"]
       33 GETTABLEKS                       R6 R6 K10 ["getFFlagDevFrameworkShimmerImprovements"]
       35 CALL                             R6 0 1
       36 GETIMPORT                        R7 K4 [require]
       38 GETTABLEKS                       R8 R0 K11 ["Flags"]
       40 GETTABLEKS                       R8 R8 K12 ["getFFlagMaterialGridShowTooltipWithLabel"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R8 R4 K13 ["UI"]
       45 GETTABLEKS                       R9 R8 K14 ["Pane"]
       47 GETTABLEKS                       R10 R8 K15 ["Shimmer"]
       49 GETTABLEKS                       R11 R8 K16 ["TextLabel"]
       51 GETTABLEKS                       R12 R8 K17 ["Tooltip"]
       53 GETIMPORT                        R13 K4 [require]
       55 GETTABLEKS                       R14 R0 K18 ["Components"]
       57 GETTABLEKS                       R14 R14 K19 ["MaterialPreview"]
       59 CALL                             R13 1 1
       60 DUPCLOSURE                       R14 K20 [PROTO_3]
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R11
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R13
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R12
       69 CAPTURE                          VAL R3
       70 GETTABLEKS                       R15 R5 K21 ["forwardRef"]
       72 MOVE                             R16 R14
       73 CALL                             R15 1 -1
       74 RETURN                           R15 -1
