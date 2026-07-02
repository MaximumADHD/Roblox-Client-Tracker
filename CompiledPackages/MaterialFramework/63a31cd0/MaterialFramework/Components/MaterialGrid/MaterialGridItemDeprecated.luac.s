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
       28 JUMPIFNOT                        R7 ; [+65]
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
       49 GETUPVAL                         R13 3
       50 JUMPIFNOT                        R13 ; [+34]
       51 GETUPVAL                         R12 0
       52 GETTABLEKS                       R12 R12 K7 ["createElement"]
       54 GETUPVAL                         R13 4
       55 DUPTABLE                         R14 K17 [{"AnchorPoint", "CornerRadius", "Position", "Size"}]
       56 GETIMPORT                        R15 K20 [Vector2.new]
       58 LOADK                            R16 K21 [0.5]
       59 LOADK                            R17 K21 [0.5]
       60 CALL                             R15 2 1
       61 SETTABLEKS                       R15 R14 K15 ["AnchorPoint"]
       63 GETTABLEKS                       R15 R2 K22 ["GridItemCornerRadius"]
       65 SETTABLEKS                       R15 R14 K16 ["CornerRadius"]
       67 GETIMPORT                        R15 K25 [UDim2.fromScale]
       69 LOADK                            R16 K21 [0.5]
       70 LOADK                            R17 K21 [0.5]
       71 CALL                             R15 2 1
       72 SETTABLEKS                       R15 R14 K9 ["Position"]
       74 GETIMPORT                        R15 K26 [UDim2.new]
       76 LOADN                            R16 1
       77 MINUS                            R17 R7
       78 LOADN                            R18 1
       79 MINUS                            R19 R7
       80 CALL                             R15 4 1
       81 SETTABLEKS                       R15 R14 K10 ["Size"]
       83 CALL                             R12 2 1
       84 JUMP                             ; [+5]
       85 GETUPVAL                         R12 0
       86 GETTABLEKS                       R12 R12 K7 ["createElement"]
       88 GETUPVAL                         R13 4
       89 CALL                             R12 1 1
       90 SETTABLEKS                       R12 R11 K13 ["Shimmer"]
       92 CALL                             R8 3 -1
       93 RETURN                           R8 -1
       94 LOADNIL                          R7
       95 LOADNIL                          R8
       96 GETTABLEKS                       R9 R0 K27 ["ShouldCenterTooltip"]
       98 JUMPIFNOT                        R9 ; [+45]
       99 GETIMPORT                        R9 K25 [UDim2.fromScale]
      101 LOADK                            R10 K21 [0.5]
      102 LOADK                            R11 K21 [0.5]
      103 CALL                             R9 2 1
      104 MOVE                             R7 R9
      105 GETTABLEKS                       R10 R0 K9 ["Position"]
      107 GETTABLEKS                       R10 R10 K28 ["X"]
      109 GETTABLEKS                       R10 R10 K29 ["Offset"]
      111 GETTABLEKS                       R12 R0 K31 ["GridItemSize"]
      113 DIVK                             R11 R12 K30 [2]
      114 ADD                              R9 R10 R11
      115 GETTABLEKS                       R12 R0 K9 ["Position"]
      117 GETTABLEKS                       R12 R12 K32 ["Y"]
      119 GETTABLEKS                       R12 R12 K29 ["Offset"]
      121 GETTABLEKS                       R14 R0 K31 ["GridItemSize"]
      123 MULK                             R13 R14 K33 [0.8]
      124 ADD                              R11 R12 R13
      125 GETTABLEKS                       R12 R0 K34 ["CanvasPosition"]
      127 GETTABLEKS                       R12 R12 K32 ["Y"]
      129 SUB                              R10 R11 R12
      130 GETTABLEKS                       R11 R0 K35 ["ContainerYBounds"]
      132 JUMPIFNOT                        R11 ; [+5]
      133 GETTABLEKS                       R11 R0 K35 ["ContainerYBounds"]
      135 GETTABLEKS                       R11 R11 K36 ["Min"]
      137 ADD                              R10 R10 R11
      138 GETIMPORT                        R11 K20 [Vector2.new]
      140 MOVE                             R12 R9
      141 MOVE                             R13 R10
      142 CALL                             R11 2 1
      143 MOVE                             R8 R11
      144 GETTABLEKS                       R9 R2 K37 ["GridItemBackgroundColor"]
      146 GETTABLEKS                       R10 R0 K38 ["Applied"]
      148 JUMPIFNOT                        R10 ; [+2]
      149 GETTABLEKS                       R9 R2 K39 ["GridItemBackgroundColorApplied"]
      151 JUMPIFNOT                        R5 ; [+5]
      152 GETTABLEKS                       R10 R0 K40 ["HoverEffectsEnabled"]
      154 JUMPIFNOT                        R10 ; [+2]
      155 GETTABLEKS                       R9 R2 K41 ["GridItemBackgroundColorHovered"]
      157 GETTABLEKS                       R11 R0 K42 ["Selected"]
      159 JUMPIFNOT                        R11 ; [+3]
      160 GETTABLEKS                       R10 R2 K43 ["GridItemBorderColorSelected"]
      162 JUMP                             ; [+2]
      163 GETTABLEKS                       R10 R2 K44 ["GridItemBorderColor"]
      165 NEWCLOSURE                       R11 P1
      166 CAPTURE                          VAL R0
      167 CAPTURE                          VAL R6
      168 NEWCLOSURE                       R12 P2
      169 CAPTURE                          VAL R0
      170 CAPTURE                          VAL R6
      171 DUPTABLE                         R13 K50 [{"MaterialPreview", "Label", "UICorner", "UIStroke", "Tooltip"}]
      172 GETTABLEKS                       R15 R0 K51 ["CustomPreview"]
      174 JUMPIFNOT                        R15 ; [+15]
      175 GETUPVAL                         R14 0
      176 GETTABLEKS                       R14 R14 K7 ["createElement"]
      178 GETTABLEKS                       R15 R0 K51 ["CustomPreview"]
      180 DUPTABLE                         R16 K52 [{"Size"}]
      181 GETIMPORT                        R17 K25 [UDim2.fromScale]
      183 LOADN                            R18 1
      184 LOADN                            R19 1
      185 CALL                             R17 2 1
      186 SETTABLEKS                       R17 R16 K10 ["Size"]
      188 CALL                             R14 2 1
      189 JUMP                             ; [+44]
      190 GETUPVAL                         R14 0
      191 GETTABLEKS                       R14 R14 K7 ["createElement"]
      193 GETUPVAL                         R15 5
      194 DUPTABLE                         R16 K62 [{["AnchorPoint"], ["BackgroundColor"], ["InitialDistance"], ["Material"], ["MaterialPreviewGeometryType"], ["MeshPartBackgroundColor"], ["Position"], ["Static"] = True, [9], ["Transparent"] = True, ["ref"]}]
      195 GETIMPORT                        R17 K20 [Vector2.new]
      197 LOADK                            R18 K21 [0.5]
      198 LOADK                            R19 K21 [0.5]
      199 CALL                             R17 2 1
      200 SETTABLEKS                       R17 R16 K15 ["AnchorPoint"]
      202 SETTABLEKS                       R9 R16 K53 ["BackgroundColor"]
      204 GETTABLEKS                       R17 R0 K54 ["InitialDistance"]
      206 SETTABLEKS                       R17 R16 K54 ["InitialDistance"]
      208 GETTABLEKS                       R17 R0 K55 ["Material"]
      210 SETTABLEKS                       R17 R16 K55 ["Material"]
      212 GETTABLEKS                       R17 R0 K56 ["MaterialPreviewGeometryType"]
      214 SETTABLEKS                       R17 R16 K56 ["MaterialPreviewGeometryType"]
      216 GETTABLEKS                       R17 R2 K37 ["GridItemBackgroundColor"]
      218 SETTABLEKS                       R17 R16 K57 ["MeshPartBackgroundColor"]
      220 GETIMPORT                        R17 K25 [UDim2.fromScale]
      222 LOADK                            R18 K21 [0.5]
      223 LOADK                            R19 K21 [0.5]
      224 CALL                             R17 2 1
      225 SETTABLEKS                       R17 R16 K9 ["Position"]
      227 GETTABLEKS                       R17 R2 K63 ["MaterialPreviewStyle"]
      229 SETTABLEKS                       R17 R16 K0 ["Style"]
      231 SETTABLEKS                       R1 R16 K61 ["ref"]
      233 CALL                             R14 2 1
      234 SETTABLEKS                       R14 R13 K45 ["MaterialPreview"]
      236 JUMPIFNOT                        R4 ; [+3]
      237 MOVE                             R14 R3
      238 CALL                             R14 0 1
      239 JUMP                             ; [+1]
      240 LOADNIL                          R14
      241 SETTABLEKS                       R14 R13 K46 ["Label"]
      243 GETUPVAL                         R14 0
      244 GETTABLEKS                       R14 R14 K7 ["createElement"]
      246 LOADK                            R15 K47 ["UICorner"]
      247 DUPTABLE                         R16 K64 [{"CornerRadius"}]
      248 GETTABLEKS                       R17 R2 K22 ["GridItemCornerRadius"]
      250 SETTABLEKS                       R17 R16 K16 ["CornerRadius"]
      252 CALL                             R14 2 1
      253 SETTABLEKS                       R14 R13 K47 ["UICorner"]
      255 GETUPVAL                         R14 0
      256 GETTABLEKS                       R14 R14 K7 ["createElement"]
      258 LOADK                            R15 K48 ["UIStroke"]
      259 DUPTABLE                         R16 K69 [{["ApplyStrokeMode"], ["Color"], ["Thickness"] = 1}]
      260 GETIMPORT                        R17 K72 [Enum.ApplyStrokeMode.Border]
      262 SETTABLEKS                       R17 R16 K65 ["ApplyStrokeMode"]
      264 SETTABLEKS                       R10 R16 K66 ["Color"]
      266 CALL                             R14 2 1
      267 SETTABLEKS                       R14 R13 K48 ["UIStroke"]
      269 GETUPVAL                         R16 6
      270 CALL                             R16 0 1
      271 JUMPIFNOT                        R16 ; [+9]
      272 NOT                              R15 R4
      273 JUMPIF                           R15 ; [+8]
      274 GETTABLEKS                       R16 R0 K73 ["ShowTooltipWithLabel"]
      276 JUMPIFEQKB                       R16 TRUE ; [+2]
      278 LOADB                            R15 0 +1
      279 LOADB                            R15 1
      280 JUMP                             ; [+1]
      281 NOT                              R15 R4
      282 JUMPIFNOT                        R15 ; [+40]
      283 GETUPVAL                         R14 0
      284 GETTABLEKS                       R14 R14 K7 ["createElement"]
      286 GETUPVAL                         R15 7
      287 DUPTABLE                         R16 K78 [{"AnchorPoint", "ContainerXBounds", "ContainerYBounds", "Enabled", "OnTooltipShown", "Position", "ShowDelay", "Text"}]
      288 SETTABLEKS                       R7 R16 K15 ["AnchorPoint"]
      290 GETTABLEKS                       R17 R0 K74 ["ContainerXBounds"]
      292 SETTABLEKS                       R17 R16 K74 ["ContainerXBounds"]
      294 GETTABLEKS                       R17 R0 K35 ["ContainerYBounds"]
      296 SETTABLEKS                       R17 R16 K35 ["ContainerYBounds"]
      298 GETTABLEKS                       R17 R0 K40 ["HoverEffectsEnabled"]
      300 SETTABLEKS                       R17 R16 K75 ["Enabled"]
      302 GETTABLEKS                       R17 R0 K76 ["OnTooltipShown"]
      304 SETTABLEKS                       R17 R16 K76 ["OnTooltipShown"]
      306 SETTABLEKS                       R8 R16 K9 ["Position"]
      308 GETTABLEKS                       R18 R0 K79 ["InstantTooltipEnabled"]
      310 JUMPIFNOT                        R18 ; [+2]
      311 LOADN                            R17 0
      312 JUMP                             ; [+2]
      313 GETTABLEKS                       R17 R0 K80 ["TooltipDelay"]
      315 SETTABLEKS                       R17 R16 K77 ["ShowDelay"]
      317 GETTABLEKS                       R17 R0 K2 ["Text"]
      319 SETTABLEKS                       R17 R16 K2 ["Text"]
      321 CALL                             R14 2 1
      322 JUMP                             ; [+1]
      323 LOADNIL                          R14
      324 SETTABLEKS                       R14 R13 K49 ["Tooltip"]
      326 LOADNIL                          R14
      327 GETTABLEKS                       R15 R0 K81 ["OnRenderChildren"]
      329 JUMPIFNOT                        R15 ; [+4]
      330 GETTABLEKS                       R15 R0 K81 ["OnRenderChildren"]
      332 CALL                             R15 0 1
      333 MOVE                             R14 R15
      334 GETUPVAL                         R15 0
      335 GETTABLEKS                       R15 R15 K7 ["createElement"]
      337 LOADK                            R16 K82 ["TextButton"]
      338 NEWTABLE                         R17 16 0
      340 LOADB                            R18 0
      341 SETTABLEKS                       R18 R17 K83 ["AutoButtonColor"]
      343 SETTABLEKS                       R9 R17 K84 ["BackgroundColor3"]
      345 LOADN                            R18 0
      346 SETTABLEKS                       R18 R17 K85 ["BorderSizePixel"]
      348 GETTABLEKS                       R18 R0 K8 ["LayoutOrder"]
      350 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      352 GETTABLEKS                       R18 R0 K9 ["Position"]
      354 SETTABLEKS                       R18 R17 K9 ["Position"]
      356 GETTABLEKS                       R18 R0 K10 ["Size"]
      358 SETTABLEKS                       R18 R17 K10 ["Size"]
      360 LOADK                            R18 K3 [""]
      361 SETTABLEKS                       R18 R17 K2 ["Text"]
      363 GETTABLEKS                       R18 R0 K2 ["Text"]
      365 SETTABLEKS                       R18 R17 K86 ["Name"]
      367 GETUPVAL                         R18 0
      368 GETTABLEKS                       R18 R18 K87 ["Event"]
      370 GETTABLEKS                       R18 R18 K88 ["Activated"]
      372 GETTABLEKS                       R19 R0 K89 ["OnClick"]
      374 SETTABLE                         R19 R17 R18
      375 GETUPVAL                         R18 0
      376 GETTABLEKS                       R18 R18 K87 ["Event"]
      378 GETTABLEKS                       R18 R18 K90 ["MouseButton2Click"]
      380 GETTABLEKS                       R19 R0 K91 ["OnRightClick"]
      382 SETTABLE                         R19 R17 R18
      383 GETUPVAL                         R18 0
      384 GETTABLEKS                       R18 R18 K87 ["Event"]
      386 GETTABLEKS                       R18 R18 K92 ["MouseEnter"]
      388 SETTABLE                         R11 R17 R18
      389 GETUPVAL                         R18 0
      390 GETTABLEKS                       R18 R18 K87 ["Event"]
      392 GETTABLEKS                       R18 R18 K93 ["MouseLeave"]
      394 SETTABLE                         R12 R17 R18
      395 GETUPVAL                         R18 0
      396 GETTABLEKS                       R18 R18 K87 ["Event"]
      398 GETTABLEKS                       R18 R18 K94 ["MouseMoved"]
      400 GETTABLEKS                       R19 R0 K95 ["OnMouseMoved"]
      402 SETTABLE                         R19 R17 R18
      403 GETUPVAL                         R18 8
      404 GETTABLEKS                       R18 R18 K96 ["join"]
      406 MOVE                             R19 R13
      407 MOVE                             R20 R14
      408 CALL                             R18 2 -1
      409 CALL                             R15 -1 -1
      410 RETURN                           R15 -1

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
