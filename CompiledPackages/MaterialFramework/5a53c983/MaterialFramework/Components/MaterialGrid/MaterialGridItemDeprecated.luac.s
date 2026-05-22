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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["OnMouseEnter"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["OnMouseEnter"]
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 2
       12 LOADB                            R1 1
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["OnMouseLeave"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["OnMouseLeave"]
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
      111 GETTABLEKS                       R10 R0 K9 ["Position"]
      113 GETTABLEKS                       R10 R10 K28 ["X"]
      115 GETTABLEKS                       R10 R10 K29 ["Offset"]
      117 GETTABLEKS                       R12 R0 K31 ["GridItemSize"]
      119 DIVK                             R11 R12 K30 [2]
      120 ADD                              R9 R10 R11
      121 GETTABLEKS                       R12 R0 K9 ["Position"]
      123 GETTABLEKS                       R12 R12 K32 ["Y"]
      125 GETTABLEKS                       R12 R12 K29 ["Offset"]
      127 GETTABLEKS                       R14 R0 K31 ["GridItemSize"]
      129 MULK                             R13 R14 K33 [0.8]
      130 ADD                              R11 R12 R13
      131 GETTABLEKS                       R12 R0 K34 ["CanvasPosition"]
      133 GETTABLEKS                       R12 R12 K32 ["Y"]
      135 SUB                              R10 R11 R12
      136 GETTABLEKS                       R11 R0 K35 ["ContainerYBounds"]
      138 JUMPIFNOT                        R11 ; [+5]
      139 GETTABLEKS                       R11 R0 K35 ["ContainerYBounds"]
      141 GETTABLEKS                       R11 R11 K36 ["Min"]
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
      201 GETUPVAL                         R14 0
      202 GETTABLEKS                       R14 R14 K7 ["createElement"]
      204 GETTABLEKS                       R15 R0 K51 ["CustomPreview"]
      206 DUPTABLE                         R16 K52 [{"Size"}]
      207 GETIMPORT                        R17 K25 [UDim2.fromScale]
      209 LOADN                            R18 1
      210 LOADN                            R19 1
      211 CALL                             R17 2 1
      212 SETTABLEKS                       R17 R16 K10 ["Size"]
      214 CALL                             R14 2 1
      215 JUMP                             ; [+61]
      216 GETUPVAL                         R14 0
      217 GETTABLEKS                       R14 R14 K7 ["createElement"]
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
      286 GETUPVAL                         R14 0
      287 GETTABLEKS                       R14 R14 K7 ["createElement"]
      289 LOADK                            R15 K47 ["UICorner"]
      290 DUPTABLE                         R16 K63 [{"CornerRadius"}]
      291 GETTABLEKS                       R17 R2 K22 ["GridItemCornerRadius"]
      293 SETTABLEKS                       R17 R16 K16 ["CornerRadius"]
      295 CALL                             R14 2 1
      296 SETTABLEKS                       R14 R13 K47 ["UICorner"]
      298 GETUPVAL                         R14 0
      299 GETTABLEKS                       R14 R14 K7 ["createElement"]
      301 LOADK                            R15 K48 ["UIStroke"]
      302 DUPTABLE                         R16 K67 [{"ApplyStrokeMode", "Color", "Thickness"}]
      303 GETIMPORT                        R17 K70 [Enum.ApplyStrokeMode.Border]
      305 SETTABLEKS                       R17 R16 K64 ["ApplyStrokeMode"]
      307 SETTABLEKS                       R10 R16 K65 ["Color"]
      309 LOADN                            R17 1
      310 SETTABLEKS                       R17 R16 K66 ["Thickness"]
      312 CALL                             R14 2 1
      313 SETTABLEKS                       R14 R13 K48 ["UIStroke"]
      315 GETUPVAL                         R16 8
      316 CALL                             R16 0 1
      317 JUMPIFNOT                        R16 ; [+9]
      318 NOT                              R15 R4
      319 JUMPIF                           R15 ; [+8]
      320 GETTABLEKS                       R16 R0 K71 ["ShowTooltipWithLabel"]
      322 JUMPIFEQKB                       R16 TRUE ; [+2]
      324 LOADB                            R15 0 +1
      325 LOADB                            R15 1
      326 JUMP                             ; [+1]
      327 NOT                              R15 R4
      328 JUMPIFNOT                        R15 ; [+54]
      329 GETUPVAL                         R15 5
      330 CALL                             R15 0 1
      331 JUMPIFNOT                        R15 ; [+40]
      332 GETUPVAL                         R14 0
      333 GETTABLEKS                       R14 R14 K7 ["createElement"]
      335 GETUPVAL                         R15 9
      336 DUPTABLE                         R16 K76 [{"AnchorPoint", "ContainerXBounds", "ContainerYBounds", "Enabled", "OnTooltipShown", "Position", "ShowDelay", "Text"}]
      337 SETTABLEKS                       R7 R16 K15 ["AnchorPoint"]
      339 GETTABLEKS                       R17 R0 K72 ["ContainerXBounds"]
      341 SETTABLEKS                       R17 R16 K72 ["ContainerXBounds"]
      343 GETTABLEKS                       R17 R0 K35 ["ContainerYBounds"]
      345 SETTABLEKS                       R17 R16 K35 ["ContainerYBounds"]
      347 GETTABLEKS                       R17 R0 K40 ["HoverEffectsEnabled"]
      349 SETTABLEKS                       R17 R16 K73 ["Enabled"]
      351 GETTABLEKS                       R17 R0 K74 ["OnTooltipShown"]
      353 SETTABLEKS                       R17 R16 K74 ["OnTooltipShown"]
      355 SETTABLEKS                       R8 R16 K9 ["Position"]
      357 GETTABLEKS                       R18 R0 K77 ["InstantTooltipEnabled"]
      359 JUMPIFNOT                        R18 ; [+2]
      360 LOADN                            R17 0
      361 JUMP                             ; [+2]
      362 GETTABLEKS                       R17 R0 K78 ["TooltipDelay"]
      364 SETTABLEKS                       R17 R16 K75 ["ShowDelay"]
      366 GETTABLEKS                       R17 R0 K2 ["Text"]
      368 SETTABLEKS                       R17 R16 K2 ["Text"]
      370 CALL                             R14 2 1
      371 JUMP                             ; [+12]
      372 GETUPVAL                         R14 0
      373 GETTABLEKS                       R14 R14 K7 ["createElement"]
      375 GETUPVAL                         R15 9
      376 DUPTABLE                         R16 K79 [{"Text"}]
      377 GETTABLEKS                       R17 R0 K2 ["Text"]
      379 SETTABLEKS                       R17 R16 K2 ["Text"]
      381 CALL                             R14 2 1
      382 JUMP                             ; [+1]
      383 LOADNIL                          R14
      384 SETTABLEKS                       R14 R13 K49 ["Tooltip"]
      386 LOADNIL                          R14
      387 GETTABLEKS                       R15 R0 K80 ["OnRenderChildren"]
      389 JUMPIFNOT                        R15 ; [+4]
      390 GETTABLEKS                       R15 R0 K80 ["OnRenderChildren"]
      392 CALL                             R15 0 1
      393 MOVE                             R14 R15
      394 GETUPVAL                         R15 0
      395 GETTABLEKS                       R15 R15 K7 ["createElement"]
      397 LOADK                            R16 K81 ["TextButton"]
      398 NEWTABLE                         R17 16 0
      400 LOADB                            R18 0
      401 SETTABLEKS                       R18 R17 K82 ["AutoButtonColor"]
      403 SETTABLEKS                       R9 R17 K83 ["BackgroundColor3"]
      405 LOADN                            R18 0
      406 SETTABLEKS                       R18 R17 K84 ["BorderSizePixel"]
      408 GETTABLEKS                       R18 R0 K8 ["LayoutOrder"]
      410 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      412 GETTABLEKS                       R18 R0 K9 ["Position"]
      414 SETTABLEKS                       R18 R17 K9 ["Position"]
      416 GETTABLEKS                       R18 R0 K10 ["Size"]
      418 SETTABLEKS                       R18 R17 K10 ["Size"]
      420 LOADK                            R18 K3 [""]
      421 SETTABLEKS                       R18 R17 K2 ["Text"]
      423 GETTABLEKS                       R18 R0 K2 ["Text"]
      425 SETTABLEKS                       R18 R17 K85 ["Name"]
      427 GETUPVAL                         R18 0
      428 GETTABLEKS                       R18 R18 K86 ["Event"]
      430 GETTABLEKS                       R18 R18 K87 ["Activated"]
      432 GETTABLEKS                       R19 R0 K88 ["OnClick"]
      434 SETTABLE                         R19 R17 R18
      435 GETUPVAL                         R18 0
      436 GETTABLEKS                       R18 R18 K86 ["Event"]
      438 GETTABLEKS                       R18 R18 K89 ["MouseButton2Click"]
      440 GETTABLEKS                       R19 R0 K90 ["OnRightClick"]
      442 SETTABLE                         R19 R17 R18
      443 GETUPVAL                         R18 0
      444 GETTABLEKS                       R18 R18 K86 ["Event"]
      446 GETTABLEKS                       R18 R18 K91 ["MouseEnter"]
      448 SETTABLE                         R11 R17 R18
      449 GETUPVAL                         R18 0
      450 GETTABLEKS                       R18 R18 K86 ["Event"]
      452 GETTABLEKS                       R18 R18 K92 ["MouseLeave"]
      454 SETTABLE                         R12 R17 R18
      455 GETUPVAL                         R18 0
      456 GETTABLEKS                       R18 R18 K86 ["Event"]
      458 GETTABLEKS                       R18 R18 K93 ["MouseMoved"]
      460 GETUPVAL                         R20 5
      461 CALL                             R20 0 1
      462 JUMPIFNOT                        R20 ; [+3]
      463 GETTABLEKS                       R19 R0 K94 ["OnMouseMoved"]
      465 JUMP                             ; [+1]
      466 LOADNIL                          R19
      467 SETTABLE                         R19 R17 R18
      468 GETUPVAL                         R18 10
      469 GETTABLEKS                       R18 R18 K95 ["join"]
      471 MOVE                             R19 R13
      472 MOVE                             R20 R14
      473 CALL                             R18 2 -1
      474 CALL                             R15 -1 -1
      475 RETURN                           R15 -1

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
       43 GETIMPORT                        R8 K4 [require]
       45 GETTABLEKS                       R9 R0 K11 ["Flags"]
       47 GETTABLEKS                       R9 R9 K13 ["getFFlagMaterialPickerInstantTooltip"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R9 R4 K14 ["UI"]
       52 GETTABLEKS                       R10 R9 K15 ["Pane"]
       54 GETTABLEKS                       R11 R9 K16 ["Shimmer"]
       56 GETTABLEKS                       R12 R9 K17 ["TextLabel"]
       58 GETTABLEKS                       R13 R9 K18 ["Tooltip"]
       60 GETIMPORT                        R14 K4 [require]
       62 GETTABLEKS                       R15 R0 K19 ["Components"]
       64 GETTABLEKS                       R15 R15 K20 ["MaterialPreview"]
       66 CALL                             R14 1 1
       67 GETIMPORT                        R15 K4 [require]
       69 GETTABLEKS                       R16 R0 K11 ["Flags"]
       71 GETTABLEKS                       R16 R16 K21 ["getFFlagMaterialPickerUIChanges"]
       73 CALL                             R15 1 1
       74 DUPCLOSURE                       R16 K22 [PROTO_3]
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R15
       82 CAPTURE                          VAL R14
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R13
       85 CAPTURE                          VAL R3
       86 GETTABLEKS                       R17 R5 K23 ["forwardRef"]
       88 MOVE                             R18 R16
       89 CALL                             R17 1 -1
       90 RETURN                           R17 -1
