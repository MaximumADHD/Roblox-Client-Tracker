PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GridItemLabelPadding"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["createElement"]
        6 GETUPVAL                         R2 2
        7 DUPTABLE                         R3 K13 [{["AnchorPoint"], ["AutomaticSize"], ["Size"], ["Position"], ["Text"], ["TextSize"], ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = False}]
        8 GETIMPORT                        R4 K16 [Vector2.new]
       10 LOADN                            R5 0
       11 LOADN                            R6 1
       12 CALL                             R4 2 1
       13 SETTABLEKS                       R4 R3 K2 ["AnchorPoint"]
       15 GETIMPORT                        R4 K19 [Enum.AutomaticSize.Y]
       17 SETTABLEKS                       R4 R3 K3 ["AutomaticSize"]
       19 GETIMPORT                        R4 K22 [UDim2.fromScale]
       21 LOADN                            R5 1
       22 LOADN                            R6 0
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K4 ["Size"]
       26 GETIMPORT                        R4 K22 [UDim2.fromScale]
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
       43 GETIMPORT                        R4 K24 [Enum.TextTruncate.AtEnd]
       45 SETTABLEKS                       R4 R3 K8 ["TextTruncate"]
       47 GETIMPORT                        R4 K26 [Enum.TextXAlignment.Left]
       49 SETTABLEKS                       R4 R3 K9 ["TextXAlignment"]
       51 GETIMPORT                        R4 K28 [Enum.TextYAlignment.Center]
       53 SETTABLEKS                       R4 R3 K10 ["TextYAlignment"]
       55 DUPTABLE                         R4 K30 [{"Padding"}]
       56 GETUPVAL                         R5 1
       57 GETTABLEKS                       R5 R5 K1 ["createElement"]
       59 LOADK                            R6 K31 ["UIPadding"]
       60 DUPTABLE                         R7 K34 [{"PaddingBottom", "PaddingLeft"}]
       61 GETTABLEKS                       R8 R0 K32 ["PaddingBottom"]
       63 SETTABLEKS                       R8 R7 K32 ["PaddingBottom"]
       65 GETTABLEKS                       R8 R0 K33 ["PaddingLeft"]
       67 SETTABLEKS                       R8 R7 K33 ["PaddingLeft"]
       69 CALL                             R5 2 1
       70 SETTABLEKS                       R5 R4 K29 ["Padding"]
       72 CALL                             R1 3 -1
       73 RETURN                           R1 -1

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
       28 JUMPIFNOT                        R7 ; [+57]
       29 GETTABLEKS                       R7 R2 K6 ["ShimmerSizeOffset"]
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K7 ["createElement"]
       34 GETUPVAL                         R9 2
       35 DUPTABLE                         R10 K12 [{["LayoutOrder"], ["Position"], ["Size"], [4] = "BorderBox"}]
       36 GETTABLEKS                       R11 R0 K8 ["LayoutOrder"]
       38 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       40 GETTABLEKS                       R11 R0 K9 ["Position"]
       42 SETTABLEKS                       R11 R10 K9 ["Position"]
       44 GETTABLEKS                       R11 R0 K10 ["Size"]
       46 SETTABLEKS                       R11 R10 K10 ["Size"]
       48 DUPTABLE                         R11 K14 [{"Shimmer"}]
       49 GETUPVAL                         R12 0
       50 GETTABLEKS                       R12 R12 K7 ["createElement"]
       52 GETUPVAL                         R13 3
       53 DUPTABLE                         R14 K17 [{"AnchorPoint", "CornerRadius", "Position", "Size"}]
       54 GETIMPORT                        R15 K20 [Vector2.new]
       56 LOADK                            R16 K21 [0.5]
       57 LOADK                            R17 K21 [0.5]
       58 CALL                             R15 2 1
       59 SETTABLEKS                       R15 R14 K15 ["AnchorPoint"]
       61 GETTABLEKS                       R15 R2 K22 ["GridItemCornerRadius"]
       63 SETTABLEKS                       R15 R14 K16 ["CornerRadius"]
       65 GETIMPORT                        R15 K25 [UDim2.fromScale]
       67 LOADK                            R16 K21 [0.5]
       68 LOADK                            R17 K21 [0.5]
       69 CALL                             R15 2 1
       70 SETTABLEKS                       R15 R14 K9 ["Position"]
       72 GETIMPORT                        R15 K26 [UDim2.new]
       74 LOADN                            R16 1
       75 MINUS                            R17 R7
       76 LOADN                            R18 1
       77 MINUS                            R19 R7
       78 CALL                             R15 4 1
       79 SETTABLEKS                       R15 R14 K10 ["Size"]
       81 CALL                             R12 2 1
       82 SETTABLEKS                       R12 R11 K13 ["Shimmer"]
       84 CALL                             R8 3 -1
       85 RETURN                           R8 -1
       86 LOADNIL                          R7
       87 LOADNIL                          R8
       88 GETTABLEKS                       R9 R0 K27 ["ShouldCenterTooltip"]
       90 JUMPIFNOT                        R9 ; [+45]
       91 GETIMPORT                        R9 K25 [UDim2.fromScale]
       93 LOADK                            R10 K21 [0.5]
       94 LOADK                            R11 K21 [0.5]
       95 CALL                             R9 2 1
       96 MOVE                             R7 R9
       97 GETTABLEKS                       R10 R0 K9 ["Position"]
       99 GETTABLEKS                       R10 R10 K28 ["X"]
      101 GETTABLEKS                       R10 R10 K29 ["Offset"]
      103 GETTABLEKS                       R12 R0 K31 ["GridItemSize"]
      105 DIVK                             R11 R12 K30 [2]
      106 ADD                              R9 R10 R11
      107 GETTABLEKS                       R12 R0 K9 ["Position"]
      109 GETTABLEKS                       R12 R12 K32 ["Y"]
      111 GETTABLEKS                       R12 R12 K29 ["Offset"]
      113 GETTABLEKS                       R14 R0 K31 ["GridItemSize"]
      115 MULK                             R13 R14 K33 [0.8]
      116 ADD                              R11 R12 R13
      117 GETTABLEKS                       R12 R0 K34 ["CanvasPosition"]
      119 GETTABLEKS                       R12 R12 K32 ["Y"]
      121 SUB                              R10 R11 R12
      122 GETTABLEKS                       R11 R0 K35 ["ContainerYBounds"]
      124 JUMPIFNOT                        R11 ; [+5]
      125 GETTABLEKS                       R11 R0 K35 ["ContainerYBounds"]
      127 GETTABLEKS                       R11 R11 K36 ["Min"]
      129 ADD                              R10 R10 R11
      130 GETIMPORT                        R11 K20 [Vector2.new]
      132 MOVE                             R12 R9
      133 MOVE                             R13 R10
      134 CALL                             R11 2 1
      135 MOVE                             R8 R11
      136 GETTABLEKS                       R9 R2 K37 ["GridItemBackgroundColor"]
      138 GETTABLEKS                       R10 R0 K38 ["Applied"]
      140 JUMPIFNOT                        R10 ; [+2]
      141 GETTABLEKS                       R9 R2 K39 ["GridItemBackgroundColorApplied"]
      143 JUMPIFNOT                        R5 ; [+5]
      144 GETTABLEKS                       R10 R0 K40 ["HoverEffectsEnabled"]
      146 JUMPIFNOT                        R10 ; [+2]
      147 GETTABLEKS                       R9 R2 K41 ["GridItemBackgroundColorHovered"]
      149 GETTABLEKS                       R11 R0 K42 ["Selected"]
      151 JUMPIFNOT                        R11 ; [+3]
      152 GETTABLEKS                       R10 R2 K43 ["GridItemBorderColorSelected"]
      154 JUMP                             ; [+2]
      155 GETTABLEKS                       R10 R2 K44 ["GridItemBorderColor"]
      157 NEWCLOSURE                       R11 P1
      158 CAPTURE                          VAL R0
      159 CAPTURE                          VAL R6
      160 NEWCLOSURE                       R12 P2
      161 CAPTURE                          VAL R0
      162 CAPTURE                          VAL R6
      163 DUPTABLE                         R13 K50 [{"MaterialPreview", "Label", "UICorner", "UIStroke", "Tooltip"}]
      164 GETTABLEKS                       R15 R0 K51 ["CustomPreview"]
      166 JUMPIFNOT                        R15 ; [+15]
      167 GETUPVAL                         R14 0
      168 GETTABLEKS                       R14 R14 K7 ["createElement"]
      170 GETTABLEKS                       R15 R0 K51 ["CustomPreview"]
      172 DUPTABLE                         R16 K52 [{"Size"}]
      173 GETIMPORT                        R17 K25 [UDim2.fromScale]
      175 LOADN                            R18 1
      176 LOADN                            R19 1
      177 CALL                             R17 2 1
      178 SETTABLEKS                       R17 R16 K10 ["Size"]
      180 CALL                             R14 2 1
      181 JUMP                             ; [+44]
      182 GETUPVAL                         R14 0
      183 GETTABLEKS                       R14 R14 K7 ["createElement"]
      185 GETUPVAL                         R15 4
      186 DUPTABLE                         R16 K62 [{["AnchorPoint"], ["BackgroundColor"], ["InitialDistance"], ["Material"], ["MaterialPreviewGeometryType"], ["MeshPartBackgroundColor"], ["Position"], ["Static"] = True, [9], ["Transparent"] = True, ["ref"]}]
      187 GETIMPORT                        R17 K20 [Vector2.new]
      189 LOADK                            R18 K21 [0.5]
      190 LOADK                            R19 K21 [0.5]
      191 CALL                             R17 2 1
      192 SETTABLEKS                       R17 R16 K15 ["AnchorPoint"]
      194 SETTABLEKS                       R9 R16 K53 ["BackgroundColor"]
      196 GETTABLEKS                       R17 R0 K54 ["InitialDistance"]
      198 SETTABLEKS                       R17 R16 K54 ["InitialDistance"]
      200 GETTABLEKS                       R17 R0 K55 ["Material"]
      202 SETTABLEKS                       R17 R16 K55 ["Material"]
      204 GETTABLEKS                       R17 R0 K56 ["MaterialPreviewGeometryType"]
      206 SETTABLEKS                       R17 R16 K56 ["MaterialPreviewGeometryType"]
      208 GETTABLEKS                       R17 R2 K37 ["GridItemBackgroundColor"]
      210 SETTABLEKS                       R17 R16 K57 ["MeshPartBackgroundColor"]
      212 GETIMPORT                        R17 K25 [UDim2.fromScale]
      214 LOADK                            R18 K21 [0.5]
      215 LOADK                            R19 K21 [0.5]
      216 CALL                             R17 2 1
      217 SETTABLEKS                       R17 R16 K9 ["Position"]
      219 GETTABLEKS                       R17 R2 K63 ["MaterialPreviewStyle"]
      221 SETTABLEKS                       R17 R16 K0 ["Style"]
      223 SETTABLEKS                       R1 R16 K61 ["ref"]
      225 CALL                             R14 2 1
      226 SETTABLEKS                       R14 R13 K45 ["MaterialPreview"]
      228 JUMPIFNOT                        R4 ; [+3]
      229 MOVE                             R14 R3
      230 CALL                             R14 0 1
      231 JUMP                             ; [+1]
      232 LOADNIL                          R14
      233 SETTABLEKS                       R14 R13 K46 ["Label"]
      235 GETUPVAL                         R14 0
      236 GETTABLEKS                       R14 R14 K7 ["createElement"]
      238 LOADK                            R15 K47 ["UICorner"]
      239 DUPTABLE                         R16 K64 [{"CornerRadius"}]
      240 GETTABLEKS                       R17 R2 K22 ["GridItemCornerRadius"]
      242 SETTABLEKS                       R17 R16 K16 ["CornerRadius"]
      244 CALL                             R14 2 1
      245 SETTABLEKS                       R14 R13 K47 ["UICorner"]
      247 GETUPVAL                         R14 0
      248 GETTABLEKS                       R14 R14 K7 ["createElement"]
      250 LOADK                            R15 K48 ["UIStroke"]
      251 DUPTABLE                         R16 K69 [{["ApplyStrokeMode"], ["Color"], ["Thickness"] = 1}]
      252 GETIMPORT                        R17 K72 [Enum.ApplyStrokeMode.Border]
      254 SETTABLEKS                       R17 R16 K65 ["ApplyStrokeMode"]
      256 SETTABLEKS                       R10 R16 K66 ["Color"]
      258 CALL                             R14 2 1
      259 SETTABLEKS                       R14 R13 K48 ["UIStroke"]
      261 GETUPVAL                         R16 5
      262 CALL                             R16 0 1
      263 JUMPIFNOT                        R16 ; [+9]
      264 NOT                              R15 R4
      265 JUMPIF                           R15 ; [+8]
      266 GETTABLEKS                       R16 R0 K73 ["ShowTooltipWithLabel"]
      268 JUMPIFEQKB                       R16 TRUE ; [+2]
      270 LOADB                            R15 0 +1
      271 LOADB                            R15 1
      272 JUMP                             ; [+1]
      273 NOT                              R15 R4
      274 JUMPIFNOT                        R15 ; [+40]
      275 GETUPVAL                         R14 0
      276 GETTABLEKS                       R14 R14 K7 ["createElement"]
      278 GETUPVAL                         R15 6
      279 DUPTABLE                         R16 K78 [{"AnchorPoint", "ContainerXBounds", "ContainerYBounds", "Enabled", "OnTooltipShown", "Position", "ShowDelay", "Text"}]
      280 SETTABLEKS                       R7 R16 K15 ["AnchorPoint"]
      282 GETTABLEKS                       R17 R0 K74 ["ContainerXBounds"]
      284 SETTABLEKS                       R17 R16 K74 ["ContainerXBounds"]
      286 GETTABLEKS                       R17 R0 K35 ["ContainerYBounds"]
      288 SETTABLEKS                       R17 R16 K35 ["ContainerYBounds"]
      290 GETTABLEKS                       R17 R0 K40 ["HoverEffectsEnabled"]
      292 SETTABLEKS                       R17 R16 K75 ["Enabled"]
      294 GETTABLEKS                       R17 R0 K76 ["OnTooltipShown"]
      296 SETTABLEKS                       R17 R16 K76 ["OnTooltipShown"]
      298 SETTABLEKS                       R8 R16 K9 ["Position"]
      300 GETTABLEKS                       R18 R0 K79 ["InstantTooltipEnabled"]
      302 JUMPIFNOT                        R18 ; [+2]
      303 LOADN                            R17 0
      304 JUMP                             ; [+2]
      305 GETTABLEKS                       R17 R0 K80 ["TooltipDelay"]
      307 SETTABLEKS                       R17 R16 K77 ["ShowDelay"]
      309 GETTABLEKS                       R17 R0 K2 ["Text"]
      311 SETTABLEKS                       R17 R16 K2 ["Text"]
      313 CALL                             R14 2 1
      314 JUMP                             ; [+1]
      315 LOADNIL                          R14
      316 SETTABLEKS                       R14 R13 K49 ["Tooltip"]
      318 LOADNIL                          R14
      319 GETTABLEKS                       R15 R0 K81 ["OnRenderChildren"]
      321 JUMPIFNOT                        R15 ; [+4]
      322 GETTABLEKS                       R15 R0 K81 ["OnRenderChildren"]
      324 CALL                             R15 0 1
      325 MOVE                             R14 R15
      326 GETUPVAL                         R15 0
      327 GETTABLEKS                       R15 R15 K7 ["createElement"]
      329 LOADK                            R16 K82 ["TextButton"]
      330 NEWTABLE                         R17 16 0
      332 LOADB                            R18 0
      333 SETTABLEKS                       R18 R17 K83 ["AutoButtonColor"]
      335 SETTABLEKS                       R9 R17 K84 ["BackgroundColor3"]
      337 LOADN                            R18 0
      338 SETTABLEKS                       R18 R17 K85 ["BorderSizePixel"]
      340 GETTABLEKS                       R18 R0 K8 ["LayoutOrder"]
      342 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      344 GETTABLEKS                       R18 R0 K9 ["Position"]
      346 SETTABLEKS                       R18 R17 K9 ["Position"]
      348 GETTABLEKS                       R18 R0 K10 ["Size"]
      350 SETTABLEKS                       R18 R17 K10 ["Size"]
      352 LOADK                            R18 K3 [""]
      353 SETTABLEKS                       R18 R17 K2 ["Text"]
      355 GETTABLEKS                       R18 R0 K2 ["Text"]
      357 SETTABLEKS                       R18 R17 K86 ["Name"]
      359 GETUPVAL                         R18 0
      360 GETTABLEKS                       R18 R18 K87 ["Event"]
      362 GETTABLEKS                       R18 R18 K88 ["Activated"]
      364 GETTABLEKS                       R19 R0 K89 ["OnClick"]
      366 SETTABLE                         R19 R17 R18
      367 GETUPVAL                         R18 0
      368 GETTABLEKS                       R18 R18 K87 ["Event"]
      370 GETTABLEKS                       R18 R18 K90 ["MouseButton2Click"]
      372 GETTABLEKS                       R19 R0 K91 ["OnRightClick"]
      374 SETTABLE                         R19 R17 R18
      375 GETUPVAL                         R18 0
      376 GETTABLEKS                       R18 R18 K87 ["Event"]
      378 GETTABLEKS                       R18 R18 K92 ["MouseEnter"]
      380 SETTABLE                         R11 R17 R18
      381 GETUPVAL                         R18 0
      382 GETTABLEKS                       R18 R18 K87 ["Event"]
      384 GETTABLEKS                       R18 R18 K93 ["MouseLeave"]
      386 SETTABLE                         R12 R17 R18
      387 GETUPVAL                         R18 0
      388 GETTABLEKS                       R18 R18 K87 ["Event"]
      390 GETTABLEKS                       R18 R18 K94 ["MouseMoved"]
      392 GETTABLEKS                       R19 R0 K95 ["OnMouseMoved"]
      394 SETTABLE                         R19 R17 R18
      395 GETUPVAL                         R18 7
      396 GETTABLEKS                       R18 R18 K96 ["join"]
      398 MOVE                             R19 R13
      399 MOVE                             R20 R14
      400 CALL                             R18 2 -1
      401 CALL                             R15 -1 -1
      402 RETURN                           R15 -1

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
       33 GETTABLEKS                       R7 R0 K9 ["Flags"]
       35 GETTABLEKS                       R7 R7 K10 ["getFFlagMaterialGridShowTooltipWithLabel"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R4 K11 ["UI"]
       40 GETTABLEKS                       R8 R7 K12 ["Pane"]
       42 GETTABLEKS                       R9 R7 K13 ["Shimmer"]
       44 GETTABLEKS                       R10 R7 K14 ["TextLabel"]
       46 GETTABLEKS                       R11 R7 K15 ["Tooltip"]
       48 GETIMPORT                        R12 K4 [require]
       50 GETTABLEKS                       R13 R0 K16 ["Components"]
       52 GETTABLEKS                       R13 R13 K17 ["MaterialPreview"]
       54 CALL                             R12 1 1
       55 DUPCLOSURE                       R13 K18 [PROTO_3]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R12
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R11
       63 CAPTURE                          VAL R3
       64 GETTABLEKS                       R14 R5 K19 ["forwardRef"]
       66 MOVE                             R15 R13
       67 CALL                             R14 1 -1
       68 RETURN                           R14 -1
