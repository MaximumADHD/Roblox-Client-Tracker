PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GridItemLabelPadding"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["createElement"]
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
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R4 R5 K6 ["Text"]
       36 SETTABLEKS                       R4 R3 K6 ["Text"]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R4 R5 K7 ["TextSize"]
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
       59 GETUPVAL                         R6 1
       60 GETTABLEKS                       R5 R6 K1 ["createElement"]
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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["OnMouseEnter"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K0 ["OnMouseEnter"]
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 2
       12 LOADB                            R1 1
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["OnMouseLeave"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K0 ["OnMouseLeave"]
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 2
       12 LOADB                            R1 0
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

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
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K4 ["useState"]
       24 LOADB                            R6 0
       25 CALL                             R5 1 2
       26 GETTABLEKS                       R7 R0 K5 ["Loading"]
       28 JUMPIFNOT                        R7 ; [+68]
       29 GETTABLEKS                       R7 R2 K6 ["ShimmerSizeOffset"]
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R8 R9 K7 ["createElement"]
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
       54 GETUPVAL                         R13 0
       55 GETTABLEKS                       R12 R13 K7 ["createElement"]
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
       88 GETUPVAL                         R13 0
       89 GETTABLEKS                       R12 R13 K7 ["createElement"]
       91 GETUPVAL                         R13 4
       92 CALL                             R12 1 1
       93 SETTABLEKS                       R12 R11 K13 ["Shimmer"]
       95 CALL                             R8 3 -1
       96 RETURN                           R8 -1
       97 LOADNIL                          R7
       98 LOADNIL                          R8
       99 GETUPVAL                         R9 5
      100 CALL                             R9 0 1
      101 JUMPIFNOT                        R9 ; [+48]
      102 GETTABLEKS                       R9 R0 K27 ["ShouldCenterTooltip"]
      104 JUMPIFNOT                        R9 ; [+45]
      105 GETIMPORT                        R9 K25 [UDim2.fromScale]
      107 LOADK                            R10 K21 [0.5]
      108 LOADK                            R11 K21 [0.5]
      109 CALL                             R9 2 1
      110 MOVE                             R7 R9
      111 GETTABLEKS                       R12 R0 K9 ["Position"]
      113 GETTABLEKS                       R11 R12 K28 ["X"]
      115 GETTABLEKS                       R10 R11 K29 ["Offset"]
      117 GETTABLEKS                       R12 R0 K31 ["GridItemSize"]
      119 DIVK                             R11 R12 K30 [2]
      120 ADD                              R9 R10 R11
      121 GETTABLEKS                       R14 R0 K9 ["Position"]
      123 GETTABLEKS                       R13 R14 K32 ["Y"]
      125 GETTABLEKS                       R12 R13 K29 ["Offset"]
      127 GETTABLEKS                       R14 R0 K31 ["GridItemSize"]
      129 MULK                             R13 R14 K33 [0.8]
      130 ADD                              R11 R12 R13
      131 GETTABLEKS                       R13 R0 K34 ["CanvasPosition"]
      133 GETTABLEKS                       R12 R13 K32 ["Y"]
      135 SUB                              R10 R11 R12
      136 GETTABLEKS                       R11 R0 K35 ["ContainerYBounds"]
      138 JUMPIFNOT                        R11 ; [+5]
      139 GETTABLEKS                       R12 R0 K35 ["ContainerYBounds"]
      141 GETTABLEKS                       R11 R12 K36 ["Min"]
      143 ADD                              R10 R10 R11
      144 GETIMPORT                        R11 K20 [Vector2.new]
      146 MOVE                             R12 R9
      147 MOVE                             R13 R10
      148 CALL                             R11 2 1
      149 MOVE                             R8 R11
      150 LOADNIL                          R9
      151 GETUPVAL                         R10 6
      152 CALL                             R10 0 1
      153 JUMPIFNOT                        R10 ; [+21]
      154 GETTABLEKS                       R9 R2 K37 ["GridItemBackgroundColor"]
      156 GETTABLEKS                       R10 R0 K38 ["Applied"]
      158 JUMPIFNOT                        R10 ; [+2]
      159 GETTABLEKS                       R9 R2 K39 ["GridItemBackgroundColorApplied"]
      161 GETUPVAL                         R10 5
      162 CALL                             R10 0 1
      163 JUMPIFNOT                        R10 ; [+7]
      164 JUMPIFNOT                        R5 ; [+16]
      165 GETTABLEKS                       R10 R0 K40 ["HoverEffectsEnabled"]
      167 JUMPIFNOT                        R10 ; [+13]
      168 GETTABLEKS                       R9 R2 K41 ["GridItemBackgroundColorHovered"]
      170 JUMP                             ; [+10]
      171 JUMPIFNOT                        R5 ; [+9]
      172 GETTABLEKS                       R9 R2 K41 ["GridItemBackgroundColorHovered"]
      174 JUMP                             ; [+6]
      175 JUMPIFNOT                        R5 ; [+3]
      176 GETTABLEKS                       R9 R2 K41 ["GridItemBackgroundColorHovered"]
      178 JUMP                             ; [+2]
      179 GETTABLEKS                       R9 R2 K37 ["GridItemBackgroundColor"]
      181 GETTABLEKS                       R11 R0 K42 ["Selected"]
      183 JUMPIFNOT                        R11 ; [+3]
      184 GETTABLEKS                       R10 R2 K43 ["GridItemBorderColorSelected"]
      186 JUMP                             ; [+2]
      187 GETTABLEKS                       R10 R2 K44 ["GridItemBorderColor"]
      189 NEWCLOSURE                       R11 P1
      190 CAPTURE                          UPVAL U6
      191 CAPTURE                          VAL R0
      192 CAPTURE                          VAL R6
      193 NEWCLOSURE                       R12 P2
      194 CAPTURE                          UPVAL U6
      195 CAPTURE                          VAL R0
      196 CAPTURE                          VAL R6
      197 DUPTABLE                         R13 K50 [{"MaterialPreview", "Label", "UICorner", "UIStroke", "Tooltip"}]
      198 GETTABLEKS                       R15 R0 K51 ["CustomPreview"]
      200 JUMPIFNOT                        R15 ; [+15]
      201 GETUPVAL                         R15 0
      202 GETTABLEKS                       R14 R15 K7 ["createElement"]
      204 GETTABLEKS                       R15 R0 K51 ["CustomPreview"]
      206 DUPTABLE                         R16 K52 [{"Size"}]
      207 GETIMPORT                        R17 K25 [UDim2.fromScale]
      209 LOADN                            R18 1
      210 LOADN                            R19 1
      211 CALL                             R17 2 1
      212 SETTABLEKS                       R17 R16 K10 ["Size"]
      214 CALL                             R14 2 1
      215 JUMP                             ; [+61]
      216 GETUPVAL                         R15 0
      217 GETTABLEKS                       R14 R15 K7 ["createElement"]
      219 GETUPVAL                         R15 7
      220 DUPTABLE                         R16 K61 [{"AnchorPoint", "BackgroundColor", "InitialDistance", "Material", "MaterialPreviewGeometryType", "MeshPartBackgroundColor", "Position", "Static", "Style", "Transparent", "ref"}]
      221 GETIMPORT                        R17 K20 [Vector2.new]
      223 LOADK                            R18 K21 [0.5]
      224 LOADK                            R19 K21 [0.5]
      225 CALL                             R17 2 1
      226 SETTABLEKS                       R17 R16 K15 ["AnchorPoint"]
      228 SETTABLEKS                       R9 R16 K53 ["BackgroundColor"]
      230 GETTABLEKS                       R17 R0 K54 ["InitialDistance"]
      232 SETTABLEKS                       R17 R16 K54 ["InitialDistance"]
      234 GETTABLEKS                       R17 R0 K55 ["Material"]
      236 SETTABLEKS                       R17 R16 K55 ["Material"]
      238 GETTABLEKS                       R17 R0 K56 ["MaterialPreviewGeometryType"]
      240 SETTABLEKS                       R17 R16 K56 ["MaterialPreviewGeometryType"]
      242 GETUPVAL                         R18 6
      243 CALL                             R18 0 1
      244 JUMPIFNOT                        R18 ; [+3]
      245 GETTABLEKS                       R17 R2 K37 ["GridItemBackgroundColor"]
      247 JUMP                             ; [+1]
      248 LOADNIL                          R17
      249 SETTABLEKS                       R17 R16 K57 ["MeshPartBackgroundColor"]
      251 GETIMPORT                        R17 K25 [UDim2.fromScale]
      253 LOADK                            R18 K21 [0.5]
      254 LOADK                            R19 K21 [0.5]
      255 CALL                             R17 2 1
      256 SETTABLEKS                       R17 R16 K9 ["Position"]
      258 LOADB                            R17 1
      259 SETTABLEKS                       R17 R16 K58 ["Static"]
      261 GETTABLEKS                       R17 R2 K62 ["MaterialPreviewStyle"]
      263 SETTABLEKS                       R17 R16 K0 ["Style"]
      265 LOADB                            R17 1
      266 SETTABLEKS                       R17 R16 K59 ["Transparent"]
      268 GETUPVAL                         R18 6
      269 CALL                             R18 0 1
      270 JUMPIFNOT                        R18 ; [+2]
      271 MOVE                             R17 R1
      272 JUMP                             ; [+1]
      273 LOADNIL                          R17
      274 SETTABLEKS                       R17 R16 K60 ["ref"]
      276 CALL                             R14 2 1
      277 SETTABLEKS                       R14 R13 K45 ["MaterialPreview"]
      279 JUMPIFNOT                        R4 ; [+3]
      280 MOVE                             R14 R3
      281 CALL                             R14 0 1
      282 JUMP                             ; [+1]
      283 LOADNIL                          R14
      284 SETTABLEKS                       R14 R13 K46 ["Label"]
      286 GETUPVAL                         R15 0
      287 GETTABLEKS                       R14 R15 K7 ["createElement"]
      289 LOADK                            R15 K47 ["UICorner"]
      290 DUPTABLE                         R16 K63 [{"CornerRadius"}]
      291 GETTABLEKS                       R17 R2 K22 ["GridItemCornerRadius"]
      293 SETTABLEKS                       R17 R16 K16 ["CornerRadius"]
      295 CALL                             R14 2 1
      296 SETTABLEKS                       R14 R13 K47 ["UICorner"]
      298 GETUPVAL                         R15 0
      299 GETTABLEKS                       R14 R15 K7 ["createElement"]
      301 LOADK                            R15 K48 ["UIStroke"]
      302 DUPTABLE                         R16 K67 [{"ApplyStrokeMode", "Color", "Thickness"}]
      303 GETIMPORT                        R17 K70 [Enum.ApplyStrokeMode.Border]
      305 SETTABLEKS                       R17 R16 K64 ["ApplyStrokeMode"]
      307 SETTABLEKS                       R10 R16 K65 ["Color"]
      309 LOADN                            R17 1
      310 SETTABLEKS                       R17 R16 K66 ["Thickness"]
      312 CALL                             R14 2 1
      313 SETTABLEKS                       R14 R13 K48 ["UIStroke"]
      315 JUMPIF                           R4 ; [+54]
      316 GETUPVAL                         R15 5
      317 CALL                             R15 0 1
      318 JUMPIFNOT                        R15 ; [+40]
      319 GETUPVAL                         R15 0
      320 GETTABLEKS                       R14 R15 K7 ["createElement"]
      322 GETUPVAL                         R15 8
      323 DUPTABLE                         R16 K75 [{"AnchorPoint", "ContainerXBounds", "ContainerYBounds", "Enabled", "OnTooltipShown", "Position", "ShowDelay", "Text"}]
      324 SETTABLEKS                       R7 R16 K15 ["AnchorPoint"]
      326 GETTABLEKS                       R17 R0 K71 ["ContainerXBounds"]
      328 SETTABLEKS                       R17 R16 K71 ["ContainerXBounds"]
      330 GETTABLEKS                       R17 R0 K35 ["ContainerYBounds"]
      332 SETTABLEKS                       R17 R16 K35 ["ContainerYBounds"]
      334 GETTABLEKS                       R17 R0 K40 ["HoverEffectsEnabled"]
      336 SETTABLEKS                       R17 R16 K72 ["Enabled"]
      338 GETTABLEKS                       R17 R0 K73 ["OnTooltipShown"]
      340 SETTABLEKS                       R17 R16 K73 ["OnTooltipShown"]
      342 SETTABLEKS                       R8 R16 K9 ["Position"]
      344 GETTABLEKS                       R18 R0 K76 ["InstantTooltipEnabled"]
      346 JUMPIFNOT                        R18 ; [+2]
      347 LOADN                            R17 0
      348 JUMP                             ; [+2]
      349 GETTABLEKS                       R17 R0 K77 ["TooltipDelay"]
      351 SETTABLEKS                       R17 R16 K74 ["ShowDelay"]
      353 GETTABLEKS                       R17 R0 K2 ["Text"]
      355 SETTABLEKS                       R17 R16 K2 ["Text"]
      357 CALL                             R14 2 1
      358 JUMP                             ; [+12]
      359 GETUPVAL                         R15 0
      360 GETTABLEKS                       R14 R15 K7 ["createElement"]
      362 GETUPVAL                         R15 8
      363 DUPTABLE                         R16 K78 [{"Text"}]
      364 GETTABLEKS                       R17 R0 K2 ["Text"]
      366 SETTABLEKS                       R17 R16 K2 ["Text"]
      368 CALL                             R14 2 1
      369 JUMP                             ; [+1]
      370 LOADNIL                          R14
      371 SETTABLEKS                       R14 R13 K49 ["Tooltip"]
      373 LOADNIL                          R14
      374 GETTABLEKS                       R15 R0 K79 ["OnRenderChildren"]
      376 JUMPIFNOT                        R15 ; [+4]
      377 GETTABLEKS                       R15 R0 K79 ["OnRenderChildren"]
      379 CALL                             R15 0 1
      380 MOVE                             R14 R15
      381 GETUPVAL                         R16 0
      382 GETTABLEKS                       R15 R16 K7 ["createElement"]
      384 LOADK                            R16 K80 ["TextButton"]
      385 NEWTABLE                         R17 16 0
      387 LOADB                            R18 0
      388 SETTABLEKS                       R18 R17 K81 ["AutoButtonColor"]
      390 SETTABLEKS                       R9 R17 K82 ["BackgroundColor3"]
      392 LOADN                            R18 0
      393 SETTABLEKS                       R18 R17 K83 ["BorderSizePixel"]
      395 GETTABLEKS                       R18 R0 K8 ["LayoutOrder"]
      397 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      399 GETTABLEKS                       R18 R0 K9 ["Position"]
      401 SETTABLEKS                       R18 R17 K9 ["Position"]
      403 GETTABLEKS                       R18 R0 K10 ["Size"]
      405 SETTABLEKS                       R18 R17 K10 ["Size"]
      407 LOADK                            R18 K3 [""]
      408 SETTABLEKS                       R18 R17 K2 ["Text"]
      410 GETTABLEKS                       R18 R0 K2 ["Text"]
      412 SETTABLEKS                       R18 R17 K84 ["Name"]
      414 GETUPVAL                         R20 0
      415 GETTABLEKS                       R19 R20 K85 ["Event"]
      417 GETTABLEKS                       R18 R19 K86 ["Activated"]
      419 GETTABLEKS                       R19 R0 K87 ["OnClick"]
      421 SETTABLE                         R19 R17 R18
      422 GETUPVAL                         R20 0
      423 GETTABLEKS                       R19 R20 K85 ["Event"]
      425 GETTABLEKS                       R18 R19 K88 ["MouseButton2Click"]
      427 GETTABLEKS                       R19 R0 K89 ["OnRightClick"]
      429 SETTABLE                         R19 R17 R18
      430 GETUPVAL                         R20 0
      431 GETTABLEKS                       R19 R20 K85 ["Event"]
      433 GETTABLEKS                       R18 R19 K90 ["MouseEnter"]
      435 SETTABLE                         R11 R17 R18
      436 GETUPVAL                         R20 0
      437 GETTABLEKS                       R19 R20 K85 ["Event"]
      439 GETTABLEKS                       R18 R19 K91 ["MouseLeave"]
      441 SETTABLE                         R12 R17 R18
      442 GETUPVAL                         R20 0
      443 GETTABLEKS                       R19 R20 K85 ["Event"]
      445 GETTABLEKS                       R18 R19 K92 ["MouseMoved"]
      447 GETUPVAL                         R20 5
      448 CALL                             R20 0 1
      449 JUMPIFNOT                        R20 ; [+3]
      450 GETTABLEKS                       R19 R0 K93 ["OnMouseMoved"]
      452 JUMP                             ; [+1]
      453 LOADNIL                          R19
      454 SETTABLE                         R19 R17 R18
      455 GETUPVAL                         R19 9
      456 GETTABLEKS                       R18 R19 K94 ["join"]
      458 MOVE                             R19 R13
      459 MOVE                             R20 R14
      460 CALL                             R18 2 -1
      461 CALL                             R15 -1 -1
      462 RETURN                           R15 -1

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
       18 GETTABLEKS                       R4 R2 K6 ["Dash"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R2 K7 ["Framework"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K4 [require]
       28 GETTABLEKS                       R6 R2 K8 ["React"]
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R7 R4 K9 ["SharedFlags"]
       33 GETTABLEKS                       R6 R7 K10 ["getFFlagDevFrameworkShimmerImprovements"]
       35 CALL                             R6 0 1
       36 GETIMPORT                        R7 K4 [require]
       38 GETTABLEKS                       R9 R0 K11 ["Flags"]
       40 GETTABLEKS                       R8 R9 K12 ["getFFlagMaterialPickerInstantTooltip"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R8 R4 K13 ["UI"]
       45 GETTABLEKS                       R9 R8 K14 ["Pane"]
       47 GETTABLEKS                       R10 R8 K15 ["Shimmer"]
       49 GETTABLEKS                       R11 R8 K16 ["TextLabel"]
       51 GETTABLEKS                       R12 R8 K17 ["Tooltip"]
       53 GETIMPORT                        R13 K4 [require]
       55 GETTABLEKS                       R15 R0 K18 ["Components"]
       57 GETTABLEKS                       R14 R15 K19 ["MaterialPreview"]
       59 CALL                             R13 1 1
       60 GETIMPORT                        R14 K4 [require]
       62 GETTABLEKS                       R16 R0 K11 ["Flags"]
       64 GETTABLEKS                       R15 R16 K20 ["getFFlagMaterialPickerUIChanges"]
       66 CALL                             R14 1 1
       67 DUPCLOSURE                       R15 K21 [PROTO_3]
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R14
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R3
       78 GETTABLEKS                       R16 R5 K22 ["forwardRef"]
       80 MOVE                             R17 R15
       81 CALL                             R16 1 -1
       82 RETURN                           R16 -1
