PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onMinHeightChanged"]
        3 JUMPIFNOT                        R1 ; [+15]
        4 GETTABLEKS                       R1 R0 K1 ["AbsoluteContentSize"]
        6 GETTABLEKS                       R1 R1 K2 ["Y"]
        8 GETUPVAL                         R5 1
        9 MULK                             R4 R5 K3 [2]
       10 ADD                              R3 R1 R4
       11 GETUPVAL                         R5 2
       12 MULK                             R4 R5 K3 [2]
       13 ADD                              R2 R3 R4
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["onMinHeightChanged"]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R9 0
        1 GETTABLEKS                       R9 R9 K0 ["createElement"]
        3 LOADK                            R10 K1 ["Frame"]
        4 DUPTABLE                         R11 K8 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
        5 JUMPIFNOT                        R8 ; [+8]
        6 GETIMPORT                        R12 K11 [UDim2.new]
        8 LOADN                            R13 1
        9 LOADN                            R14 0
       10 LOADN                            R15 0
       11 LOADN                            R16 0
       12 CALL                             R12 4 1
       13 JUMP                             ; [+7]
       14 GETIMPORT                        R12 K11 [UDim2.new]
       16 LOADN                            R13 1
       17 LOADN                            R14 0
       18 LOADN                            R15 1
       19 LOADN                            R16 0
       20 CALL                             R12 4 1
       21 SETTABLEKS                       R12 R11 K2 ["Size"]
       23 JUMPIFNOT                        R8 ; [+3]
       24 GETIMPORT                        R12 K14 [Enum.AutomaticSize.Y]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R12
       28 SETTABLEKS                       R12 R11 K3 ["AutomaticSize"]
       30 DUPTABLE                         R12 K21 [{"Corner", "Stroke", "ContentPadding", "Layout", "HeadingBody", "QRSection"}]
       31 GETUPVAL                         R13 0
       32 GETTABLEKS                       R13 R13 K0 ["createElement"]
       34 LOADK                            R14 K22 ["UICorner"]
       35 DUPTABLE                         R15 K24 [{"CornerRadius"}]
       36 GETIMPORT                        R16 K26 [UDim.new]
       38 LOADN                            R17 0
       39 GETTABLEKS                       R18 R1 K27 ["Radius"]
       41 GETTABLEKS                       R18 R18 K28 ["Medium"]
       43 CALL                             R16 2 1
       44 SETTABLEKS                       R16 R15 K23 ["CornerRadius"]
       46 CALL                             R13 2 1
       47 SETTABLEKS                       R13 R12 K15 ["Corner"]
       49 GETUPVAL                         R13 0
       50 GETTABLEKS                       R13 R13 K0 ["createElement"]
       52 LOADK                            R14 K29 ["UIStroke"]
       53 DUPTABLE                         R15 K33 [{"Color", "Thickness", "Transparency"}]
       54 GETTABLEKS                       R16 R1 K34 ["DarkMode"]
       56 GETTABLEKS                       R16 R16 K16 ["Stroke"]
       58 GETTABLEKS                       R16 R16 K35 ["Default"]
       60 GETTABLEKS                       R16 R16 K36 ["Color3"]
       62 SETTABLEKS                       R16 R15 K30 ["Color"]
       64 GETTABLEKS                       R16 R1 K16 ["Stroke"]
       66 GETTABLEKS                       R16 R16 K37 ["Standard"]
       68 SETTABLEKS                       R16 R15 K31 ["Thickness"]
       70 GETTABLEKS                       R16 R1 K34 ["DarkMode"]
       72 GETTABLEKS                       R16 R16 K16 ["Stroke"]
       74 GETTABLEKS                       R16 R16 K35 ["Default"]
       76 GETTABLEKS                       R16 R16 K32 ["Transparency"]
       78 SETTABLEKS                       R16 R15 K32 ["Transparency"]
       80 CALL                             R13 2 1
       81 SETTABLEKS                       R13 R12 K16 ["Stroke"]
       83 GETUPVAL                         R13 0
       84 GETTABLEKS                       R13 R13 K0 ["createElement"]
       86 LOADK                            R14 K38 ["UIPadding"]
       87 DUPTABLE                         R15 K41 [{"PaddingTop", "PaddingBottom"}]
       88 GETIMPORT                        R16 K26 [UDim.new]
       90 LOADN                            R17 0
       91 MOVE                             R18 R3
       92 CALL                             R16 2 1
       93 SETTABLEKS                       R16 R15 K39 ["PaddingTop"]
       95 GETIMPORT                        R16 K26 [UDim.new]
       97 LOADN                            R17 0
       98 MOVE                             R18 R3
       99 CALL                             R16 2 1
      100 SETTABLEKS                       R16 R15 K40 ["PaddingBottom"]
      102 CALL                             R13 2 1
      103 SETTABLEKS                       R13 R12 K17 ["ContentPadding"]
      105 GETUPVAL                         R13 0
      106 GETTABLEKS                       R13 R13 K0 ["createElement"]
      108 LOADK                            R14 K42 ["UIListLayout"]
      109 NEWTABLE                         R15 4 0
      111 GETIMPORT                        R16 K45 [Enum.SortOrder.LayoutOrder]
      113 SETTABLEKS                       R16 R15 K43 ["SortOrder"]
      115 GETIMPORT                        R16 K48 [Enum.FillDirection.Vertical]
      117 SETTABLEKS                       R16 R15 K46 ["FillDirection"]
      119 GETIMPORT                        R16 K26 [UDim.new]
      121 LOADN                            R17 0
      122 MOVE                             R18 R4
      123 CALL                             R16 2 1
      124 SETTABLEKS                       R16 R15 K49 ["Padding"]
      126 GETUPVAL                         R16 0
      127 GETTABLEKS                       R16 R16 K50 ["Change"]
      129 GETTABLEKS                       R16 R16 K51 ["AbsoluteContentSize"]
      131 JUMPIFNOT                        R8 ; [+2]
      132 LOADNIL                          R17
      133 JUMP                             ; [+4]
      134 NEWCLOSURE                       R17 P0
      135 CAPTURE                          VAL R0
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R6
      138 SETTABLE                         R17 R15 R16
      139 CALL                             R13 2 1
      140 SETTABLEKS                       R13 R12 K18 ["Layout"]
      142 GETUPVAL                         R13 0
      143 GETTABLEKS                       R13 R13 K0 ["createElement"]
      145 LOADK                            R14 K1 ["Frame"]
      146 DUPTABLE                         R15 K52 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 1}]
      147 GETIMPORT                        R16 K11 [UDim2.new]
      149 LOADN                            R17 1
      150 LOADN                            R18 0
      151 LOADN                            R19 0
      152 LOADN                            R20 0
      153 CALL                             R16 4 1
      154 SETTABLEKS                       R16 R15 K2 ["Size"]
      156 GETIMPORT                        R16 K14 [Enum.AutomaticSize.Y]
      158 SETTABLEKS                       R16 R15 K3 ["AutomaticSize"]
      160 DUPTABLE                         R16 K57 [{"HeadingBodyPadding", "HeadingBodyLayout", "Heading", "Body"}]
      161 GETUPVAL                         R17 0
      162 GETTABLEKS                       R17 R17 K0 ["createElement"]
      164 LOADK                            R18 K38 ["UIPadding"]
      165 DUPTABLE                         R19 K60 [{"PaddingLeft", "PaddingRight"}]
      166 GETIMPORT                        R20 K26 [UDim.new]
      168 LOADN                            R21 0
      169 MOVE                             R22 R3
      170 CALL                             R20 2 1
      171 SETTABLEKS                       R20 R19 K58 ["PaddingLeft"]
      173 GETIMPORT                        R20 K26 [UDim.new]
      175 LOADN                            R21 0
      176 MOVE                             R22 R3
      177 CALL                             R20 2 1
      178 SETTABLEKS                       R20 R19 K59 ["PaddingRight"]
      180 CALL                             R17 2 1
      181 SETTABLEKS                       R17 R16 K53 ["HeadingBodyPadding"]
      183 GETUPVAL                         R17 0
      184 GETTABLEKS                       R17 R17 K0 ["createElement"]
      186 LOADK                            R18 K42 ["UIListLayout"]
      187 DUPTABLE                         R19 K61 [{"SortOrder", "FillDirection", "Padding"}]
      188 GETIMPORT                        R20 K45 [Enum.SortOrder.LayoutOrder]
      190 SETTABLEKS                       R20 R19 K43 ["SortOrder"]
      192 GETIMPORT                        R20 K48 [Enum.FillDirection.Vertical]
      194 SETTABLEKS                       R20 R19 K46 ["FillDirection"]
      196 GETIMPORT                        R20 K26 [UDim.new]
      198 LOADN                            R21 0
      199 GETTABLEKS                       R22 R1 K49 ["Padding"]
      201 GETTABLEKS                       R22 R22 K62 ["XSmall"]
      203 CALL                             R20 2 1
      204 SETTABLEKS                       R20 R19 K49 ["Padding"]
      206 CALL                             R17 2 1
      207 SETTABLEKS                       R17 R16 K54 ["HeadingBodyLayout"]
      209 GETUPVAL                         R17 0
      210 GETTABLEKS                       R17 R17 K0 ["createElement"]
      212 LOADK                            R18 K63 ["TextLabel"]
      213 DUPTABLE                         R19 K71 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"], ["TextWrapped"] = True, ["LayoutOrder"] = 1}]
      214 GETIMPORT                        R20 K11 [UDim2.new]
      216 LOADN                            R21 1
      217 LOADN                            R22 0
      218 LOADN                            R23 0
      219 LOADN                            R24 0
      220 CALL                             R20 4 1
      221 SETTABLEKS                       R20 R19 K2 ["Size"]
      223 GETIMPORT                        R20 K14 [Enum.AutomaticSize.Y]
      225 SETTABLEKS                       R20 R19 K3 ["AutomaticSize"]
      227 LOADK                            R22 K55 ["Heading"]
      228 LOADK                            R23 K72 ["QuickSignIn"]
      229 NAMECALL                         R20 R2 K73 ["getText"]
      231 CALL                             R20 3 1
      232 SETTABLEKS                       R20 R19 K64 ["Text"]
      234 GETTABLEKS                       R20 R1 K34 ["DarkMode"]
      236 GETTABLEKS                       R20 R20 K74 ["Content"]
      238 GETTABLEKS                       R20 R20 K75 ["Emphasis"]
      240 GETTABLEKS                       R20 R20 K36 ["Color3"]
      242 SETTABLEKS                       R20 R19 K65 ["TextColor3"]
      244 GETIMPORT                        R20 K77 [Enum.Font.BuilderSansBold]
      246 SETTABLEKS                       R20 R19 K66 ["Font"]
      248 GETTABLEKS                       R20 R1 K78 ["Typography"]
      250 GETTABLEKS                       R20 R20 K79 ["HeadingSmall"]
      252 GETTABLEKS                       R20 R20 K80 ["FontSize"]
      254 SETTABLEKS                       R20 R19 K67 ["TextSize"]
      256 GETIMPORT                        R20 K82 [Enum.TextXAlignment.Left]
      258 SETTABLEKS                       R20 R19 K68 ["TextXAlignment"]
      260 CALL                             R17 2 1
      261 SETTABLEKS                       R17 R16 K55 ["Heading"]
      263 GETUPVAL                         R17 0
      264 GETTABLEKS                       R17 R17 K0 ["createElement"]
      266 LOADK                            R18 K63 ["TextLabel"]
      267 DUPTABLE                         R19 K84 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"], ["TextWrapped"] = True, ["LayoutOrder"] = 2}]
      268 GETIMPORT                        R20 K11 [UDim2.new]
      270 LOADN                            R21 1
      271 LOADN                            R22 0
      272 LOADN                            R23 0
      273 LOADN                            R24 0
      274 CALL                             R20 4 1
      275 SETTABLEKS                       R20 R19 K2 ["Size"]
      277 GETIMPORT                        R20 K14 [Enum.AutomaticSize.Y]
      279 SETTABLEKS                       R20 R19 K3 ["AutomaticSize"]
      281 LOADK                            R22 K85 ["Label"]
      282 LOADK                            R23 K86 ["QuickSignInInstructions"]
      283 NAMECALL                         R20 R2 K73 ["getText"]
      285 CALL                             R20 3 1
      286 SETTABLEKS                       R20 R19 K64 ["Text"]
      288 GETTABLEKS                       R20 R1 K34 ["DarkMode"]
      290 GETTABLEKS                       R20 R20 K74 ["Content"]
      292 GETTABLEKS                       R20 R20 K35 ["Default"]
      294 GETTABLEKS                       R20 R20 K36 ["Color3"]
      296 SETTABLEKS                       R20 R19 K65 ["TextColor3"]
      298 GETTABLEKS                       R20 R1 K78 ["Typography"]
      300 GETTABLEKS                       R20 R20 K87 ["BodyLarge"]
      302 GETTABLEKS                       R20 R20 K66 ["Font"]
      304 SETTABLEKS                       R20 R19 K66 ["Font"]
      306 GETTABLEKS                       R20 R1 K78 ["Typography"]
      308 GETTABLEKS                       R20 R20 K87 ["BodyLarge"]
      310 GETTABLEKS                       R20 R20 K80 ["FontSize"]
      312 SETTABLEKS                       R20 R19 K67 ["TextSize"]
      314 GETIMPORT                        R20 K82 [Enum.TextXAlignment.Left]
      316 SETTABLEKS                       R20 R19 K68 ["TextXAlignment"]
      318 CALL                             R17 2 1
      319 SETTABLEKS                       R17 R16 K56 ["Body"]
      321 CALL                             R13 3 1
      322 SETTABLEKS                       R13 R12 K19 ["HeadingBody"]
      324 GETUPVAL                         R13 0
      325 GETTABLEKS                       R13 R13 K0 ["createElement"]
      327 LOADK                            R14 K1 ["Frame"]
      328 DUPTABLE                         R15 K88 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 2}]
      329 GETIMPORT                        R16 K11 [UDim2.new]
      331 LOADN                            R17 1
      332 LOADN                            R18 0
      333 LOADN                            R19 0
      334 LOADN                            R20 0
      335 CALL                             R16 4 1
      336 SETTABLEKS                       R16 R15 K2 ["Size"]
      338 GETIMPORT                        R16 K14 [Enum.AutomaticSize.Y]
      340 SETTABLEKS                       R16 R15 K3 ["AutomaticSize"]
      342 DUPTABLE                         R16 K91 [{"QRSectionPadding", "QRContainer"}]
      343 GETUPVAL                         R17 0
      344 GETTABLEKS                       R17 R17 K0 ["createElement"]
      346 LOADK                            R18 K38 ["UIPadding"]
      347 DUPTABLE                         R19 K60 [{"PaddingLeft", "PaddingRight"}]
      348 GETIMPORT                        R20 K26 [UDim.new]
      350 LOADN                            R21 0
      351 MOVE                             R22 R3
      352 CALL                             R20 2 1
      353 SETTABLEKS                       R20 R19 K58 ["PaddingLeft"]
      355 GETIMPORT                        R20 K26 [UDim.new]
      357 LOADN                            R21 0
      358 MOVE                             R22 R3
      359 CALL                             R20 2 1
      360 SETTABLEKS                       R20 R19 K59 ["PaddingRight"]
      362 CALL                             R17 2 1
      363 SETTABLEKS                       R17 R16 K89 ["QRSectionPadding"]
      365 GETUPVAL                         R17 0
      366 GETTABLEKS                       R17 R17 K0 ["createElement"]
      368 LOADK                            R18 K1 ["Frame"]
      369 DUPTABLE                         R19 K93 [{["Size"], ["AutomaticSize"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0}]
      370 GETIMPORT                        R20 K11 [UDim2.new]
      372 LOADN                            R21 1
      373 LOADN                            R22 0
      374 LOADN                            R23 0
      375 LOADN                            R24 0
      376 CALL                             R20 4 1
      377 SETTABLEKS                       R20 R19 K2 ["Size"]
      379 GETIMPORT                        R20 K14 [Enum.AutomaticSize.Y]
      381 SETTABLEKS                       R20 R19 K3 ["AutomaticSize"]
      383 GETTABLEKS                       R20 R1 K34 ["DarkMode"]
      385 GETTABLEKS                       R20 R20 K94 ["Shift"]
      387 GETTABLEKS                       R20 R20 K95 ["Shift_100"]
      389 GETTABLEKS                       R20 R20 K36 ["Color3"]
      391 SETTABLEKS                       R20 R19 K92 ["BackgroundColor3"]
      393 GETTABLEKS                       R20 R1 K34 ["DarkMode"]
      395 GETTABLEKS                       R20 R20 K94 ["Shift"]
      397 GETTABLEKS                       R20 R20 K95 ["Shift_100"]
      399 GETTABLEKS                       R20 R20 K32 ["Transparency"]
      401 SETTABLEKS                       R20 R19 K4 ["BackgroundTransparency"]
      403 DUPTABLE                         R20 K102 [{"ContainerCorner", "ContainerPadding", "ContainerLayout", "QRImageContainer", "Divider", "CodeLabel"}]
      404 GETUPVAL                         R21 0
      405 GETTABLEKS                       R21 R21 K0 ["createElement"]
      407 LOADK                            R22 K22 ["UICorner"]
      408 DUPTABLE                         R23 K24 [{"CornerRadius"}]
      409 GETIMPORT                        R24 K26 [UDim.new]
      411 LOADN                            R25 0
      412 GETTABLEKS                       R26 R1 K27 ["Radius"]
      414 GETTABLEKS                       R26 R26 K28 ["Medium"]
      416 CALL                             R24 2 1
      417 SETTABLEKS                       R24 R23 K23 ["CornerRadius"]
      419 CALL                             R21 2 1
      420 SETTABLEKS                       R21 R20 K96 ["ContainerCorner"]
      422 GETUPVAL                         R21 0
      423 GETTABLEKS                       R21 R21 K0 ["createElement"]
      425 LOADK                            R22 K38 ["UIPadding"]
      426 DUPTABLE                         R23 K103 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      427 GETIMPORT                        R24 K26 [UDim.new]
      429 LOADN                            R25 0
      430 MOVE                             R26 R5
      431 CALL                             R24 2 1
      432 SETTABLEKS                       R24 R23 K39 ["PaddingTop"]
      434 GETIMPORT                        R24 K26 [UDim.new]
      436 LOADN                            R25 0
      437 MOVE                             R26 R5
      438 CALL                             R24 2 1
      439 SETTABLEKS                       R24 R23 K40 ["PaddingBottom"]
      441 GETIMPORT                        R24 K26 [UDim.new]
      443 LOADN                            R25 0
      444 MOVE                             R26 R5
      445 CALL                             R24 2 1
      446 SETTABLEKS                       R24 R23 K58 ["PaddingLeft"]
      448 GETIMPORT                        R24 K26 [UDim.new]
      450 LOADN                            R25 0
      451 MOVE                             R26 R5
      452 CALL                             R24 2 1
      453 SETTABLEKS                       R24 R23 K59 ["PaddingRight"]
      455 CALL                             R21 2 1
      456 SETTABLEKS                       R21 R20 K97 ["ContainerPadding"]
      458 GETUPVAL                         R21 0
      459 GETTABLEKS                       R21 R21 K0 ["createElement"]
      461 LOADK                            R22 K42 ["UIListLayout"]
      462 DUPTABLE                         R23 K105 [{"SortOrder", "FillDirection", "HorizontalAlignment", "Padding"}]
      463 GETIMPORT                        R24 K45 [Enum.SortOrder.LayoutOrder]
      465 SETTABLEKS                       R24 R23 K43 ["SortOrder"]
      467 GETIMPORT                        R24 K48 [Enum.FillDirection.Vertical]
      469 SETTABLEKS                       R24 R23 K46 ["FillDirection"]
      471 GETIMPORT                        R24 K107 [Enum.HorizontalAlignment.Center]
      473 SETTABLEKS                       R24 R23 K104 ["HorizontalAlignment"]
      475 GETIMPORT                        R24 K26 [UDim.new]
      477 LOADN                            R25 0
      478 MOVE                             R26 R3
      479 CALL                             R24 2 1
      480 SETTABLEKS                       R24 R23 K49 ["Padding"]
      482 CALL                             R21 2 1
      483 SETTABLEKS                       R21 R20 K98 ["ContainerLayout"]
      485 GETUPVAL                         R21 0
      486 GETTABLEKS                       R21 R21 K0 ["createElement"]
      488 LOADK                            R22 K1 ["Frame"]
      489 DUPTABLE                         R23 K108 [{["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 1}]
      490 GETIMPORT                        R24 K110 [UDim2.fromOffset]
      492 LOADN                            R25 120
      493 LOADN                            R26 120
      494 CALL                             R24 2 1
      495 SETTABLEKS                       R24 R23 K2 ["Size"]
      497 GETIMPORT                        R24 K111 [Color3.new]
      499 LOADN                            R25 1
      500 LOADN                            R26 1
      501 LOADN                            R27 1
      502 CALL                             R24 3 1
      503 SETTABLEKS                       R24 R23 K92 ["BackgroundColor3"]
      505 DUPTABLE                         R24 K115 [{"QRContainerCorner", "QRContainerPadding", "QRImage"}]
      506 GETUPVAL                         R25 0
      507 GETTABLEKS                       R25 R25 K0 ["createElement"]
      509 LOADK                            R26 K22 ["UICorner"]
      510 DUPTABLE                         R27 K24 [{"CornerRadius"}]
      511 GETIMPORT                        R28 K26 [UDim.new]
      513 LOADN                            R29 0
      514 GETTABLEKS                       R30 R1 K27 ["Radius"]
      516 GETTABLEKS                       R30 R30 K116 ["Large"]
      518 CALL                             R28 2 1
      519 SETTABLEKS                       R28 R27 K23 ["CornerRadius"]
      521 CALL                             R25 2 1
      522 SETTABLEKS                       R25 R24 K112 ["QRContainerCorner"]
      524 GETUPVAL                         R25 0
      525 GETTABLEKS                       R25 R25 K0 ["createElement"]
      527 LOADK                            R26 K38 ["UIPadding"]
      528 DUPTABLE                         R27 K103 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      529 GETIMPORT                        R28 K26 [UDim.new]
      531 LOADN                            R29 0
      532 GETTABLEKS                       R30 R1 K49 ["Padding"]
      534 GETTABLEKS                       R30 R30 K28 ["Medium"]
      536 CALL                             R28 2 1
      537 SETTABLEKS                       R28 R27 K39 ["PaddingTop"]
      539 GETIMPORT                        R28 K26 [UDim.new]
      541 LOADN                            R29 0
      542 GETTABLEKS                       R30 R1 K49 ["Padding"]
      544 GETTABLEKS                       R30 R30 K28 ["Medium"]
      546 CALL                             R28 2 1
      547 SETTABLEKS                       R28 R27 K40 ["PaddingBottom"]
      549 GETIMPORT                        R28 K26 [UDim.new]
      551 LOADN                            R29 0
      552 GETTABLEKS                       R30 R1 K49 ["Padding"]
      554 GETTABLEKS                       R30 R30 K28 ["Medium"]
      556 CALL                             R28 2 1
      557 SETTABLEKS                       R28 R27 K58 ["PaddingLeft"]
      559 GETIMPORT                        R28 K26 [UDim.new]
      561 LOADN                            R29 0
      562 GETTABLEKS                       R30 R1 K49 ["Padding"]
      564 GETTABLEKS                       R30 R30 K28 ["Medium"]
      566 CALL                             R28 2 1
      567 SETTABLEKS                       R28 R27 K59 ["PaddingRight"]
      569 CALL                             R25 2 1
      570 SETTABLEKS                       R25 R24 K113 ["QRContainerPadding"]
      572 GETUPVAL                         R25 0
      573 GETTABLEKS                       R25 R25 K0 ["createElement"]
      575 LOADK                            R26 K117 ["ImageLabel"]
      576 DUPTABLE                         R27 K120 [{["Size"], ["BackgroundTransparency"] = 1, ["Image"], ["ScaleType"]}]
      577 GETIMPORT                        R28 K122 [UDim2.fromScale]
      579 LOADN                            R29 1
      580 LOADN                            R30 1
      581 CALL                             R28 2 1
      582 SETTABLEKS                       R28 R27 K2 ["Size"]
      584 SETTABLEKS                       R7 R27 K118 ["Image"]
      586 GETIMPORT                        R28 K124 [Enum.ScaleType.Fit]
      588 SETTABLEKS                       R28 R27 K119 ["ScaleType"]
      590 CALL                             R25 2 1
      591 SETTABLEKS                       R25 R24 K114 ["QRImage"]
      593 CALL                             R21 3 1
      594 SETTABLEKS                       R21 R20 K99 ["QRImageContainer"]
      596 GETUPVAL                         R21 0
      597 GETTABLEKS                       R21 R21 K0 ["createElement"]
      599 LOADK                            R22 K1 ["Frame"]
      600 DUPTABLE                         R23 K125 [{["Size"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 2}]
      601 GETIMPORT                        R24 K11 [UDim2.new]
      603 LOADN                            R25 1
      604 LOADN                            R26 0
      605 LOADN                            R27 0
      606 GETTABLEKS                       R28 R1 K16 ["Stroke"]
      608 GETTABLEKS                       R28 R28 K37 ["Standard"]
      610 CALL                             R24 4 1
      611 SETTABLEKS                       R24 R23 K2 ["Size"]
      613 GETTABLEKS                       R24 R1 K34 ["DarkMode"]
      615 GETTABLEKS                       R24 R24 K16 ["Stroke"]
      617 GETTABLEKS                       R24 R24 K35 ["Default"]
      619 GETTABLEKS                       R24 R24 K36 ["Color3"]
      621 SETTABLEKS                       R24 R23 K92 ["BackgroundColor3"]
      623 GETTABLEKS                       R24 R1 K34 ["DarkMode"]
      625 GETTABLEKS                       R24 R24 K16 ["Stroke"]
      627 GETTABLEKS                       R24 R24 K35 ["Default"]
      629 GETTABLEKS                       R24 R24 K32 ["Transparency"]
      631 SETTABLEKS                       R24 R23 K4 ["BackgroundTransparency"]
      633 CALL                             R21 2 1
      634 SETTABLEKS                       R21 R20 K100 ["Divider"]
      636 GETUPVAL                         R21 0
      637 GETTABLEKS                       R21 R21 K0 ["createElement"]
      639 LOADK                            R22 K63 ["TextLabel"]
      640 DUPTABLE                         R23 K127 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"], ["LayoutOrder"] = 3}]
      641 GETIMPORT                        R24 K11 [UDim2.new]
      643 LOADN                            R25 1
      644 LOADN                            R26 0
      645 LOADN                            R27 0
      646 LOADN                            R28 0
      647 CALL                             R24 4 1
      648 SETTABLEKS                       R24 R23 K2 ["Size"]
      650 GETIMPORT                        R24 K14 [Enum.AutomaticSize.Y]
      652 SETTABLEKS                       R24 R23 K3 ["AutomaticSize"]
      654 GETTABLEKS                       R24 R0 K128 ["code"]
      656 SETTABLEKS                       R24 R23 K64 ["Text"]
      658 GETTABLEKS                       R24 R1 K34 ["DarkMode"]
      660 GETTABLEKS                       R24 R24 K74 ["Content"]
      662 GETTABLEKS                       R24 R24 K75 ["Emphasis"]
      664 GETTABLEKS                       R24 R24 K36 ["Color3"]
      666 SETTABLEKS                       R24 R23 K65 ["TextColor3"]
      668 GETIMPORT                        R24 K77 [Enum.Font.BuilderSansBold]
      670 SETTABLEKS                       R24 R23 K66 ["Font"]
      672 GETTABLEKS                       R24 R1 K78 ["Typography"]
      674 GETTABLEKS                       R24 R24 K129 ["HeadingLarge"]
      676 GETTABLEKS                       R24 R24 K80 ["FontSize"]
      678 SETTABLEKS                       R24 R23 K67 ["TextSize"]
      680 GETIMPORT                        R24 K130 [Enum.TextXAlignment.Center]
      682 SETTABLEKS                       R24 R23 K68 ["TextXAlignment"]
      684 CALL                             R21 2 1
      685 SETTABLEKS                       R21 R20 K101 ["CodeLabel"]
      687 CALL                             R17 3 1
      688 SETTABLEKS                       R17 R16 K90 ["QRContainer"]
      690 CALL                             R13 3 1
      691 SETTABLEKS                       R13 R12 K20 ["QRSection"]
      693 CALL                             R9 3 -1
      694 RETURN                           R9 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteContentSize"]
        3 GETTABLEKS                       R3 R3 K1 ["Y"]
        5 GETUPVAL                         R4 1
        6 ADD                              R2 R3 R4
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R0 K2 ["resolvedQrImage"]
       11 GETTABLEKS                       R4 R1 K3 ["Margin"]
       13 GETTABLEKS                       R4 R4 K4 ["Large"]
       15 GETTABLEKS                       R5 R1 K5 ["Padding"]
       17 GETTABLEKS                       R5 R5 K6 ["XLarge"]
       19 GETTABLEKS                       R6 R1 K5 ["Padding"]
       21 GETTABLEKS                       R6 R6 K6 ["XLarge"]
       23 GETTABLEKS                       R7 R1 K5 ["Padding"]
       25 GETTABLEKS                       R7 R7 K7 ["XXLarge"]
       27 GETTABLEKS                       R8 R0 K8 ["isNarrow"]
       29 JUMPIFNOT                        R8 ; [+129]
       30 GETTABLEKS                       R8 R0 K9 ["onMinHeightChanged"]
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R9 R9 K10 ["createElement"]
       35 LOADK                            R10 K11 ["Frame"]
       36 DUPTABLE                         R11 K18 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       37 GETTABLEKS                       R12 R0 K12 ["Position"]
       39 SETTABLEKS                       R12 R11 K12 ["Position"]
       41 GETTABLEKS                       R12 R0 K13 ["Size"]
       43 SETTABLEKS                       R12 R11 K13 ["Size"]
       45 DUPTABLE                         R12 K21 [{"OuterPadding", "Column"}]
       46 GETUPVAL                         R13 1
       47 GETTABLEKS                       R13 R13 K10 ["createElement"]
       49 LOADK                            R14 K22 ["UIPadding"]
       50 DUPTABLE                         R15 K26 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
       51 GETIMPORT                        R16 K29 [UDim.new]
       53 LOADN                            R17 0
       54 MOVE                             R18 R4
       55 CALL                             R16 2 1
       56 SETTABLEKS                       R16 R15 K23 ["PaddingBottom"]
       58 GETIMPORT                        R16 K29 [UDim.new]
       60 LOADN                            R17 0
       61 MOVE                             R18 R4
       62 CALL                             R16 2 1
       63 SETTABLEKS                       R16 R15 K24 ["PaddingLeft"]
       65 GETIMPORT                        R16 K29 [UDim.new]
       67 LOADN                            R17 0
       68 MOVE                             R18 R4
       69 CALL                             R16 2 1
       70 SETTABLEKS                       R16 R15 K25 ["PaddingRight"]
       72 CALL                             R13 2 1
       73 SETTABLEKS                       R13 R12 K19 ["OuterPadding"]
       75 GETUPVAL                         R13 1
       76 GETTABLEKS                       R13 R13 K10 ["createElement"]
       78 LOADK                            R14 K11 ["Frame"]
       79 DUPTABLE                         R15 K31 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       80 GETIMPORT                        R16 K33 [UDim2.new]
       82 LOADN                            R17 1
       83 LOADN                            R18 0
       84 LOADN                            R19 0
       85 LOADN                            R20 0
       86 CALL                             R16 4 1
       87 SETTABLEKS                       R16 R15 K13 ["Size"]
       89 GETIMPORT                        R16 K36 [Enum.AutomaticSize.Y]
       91 SETTABLEKS                       R16 R15 K30 ["AutomaticSize"]
       93 DUPTABLE                         R16 K40 [{"ColumnLayout", "QuickSignInCard", "Terms"}]
       94 GETUPVAL                         R17 1
       95 GETTABLEKS                       R17 R17 K10 ["createElement"]
       97 LOADK                            R18 K41 ["UIListLayout"]
       98 NEWTABLE                         R19 4 0
      100 GETIMPORT                        R20 K44 [Enum.SortOrder.LayoutOrder]
      102 SETTABLEKS                       R20 R19 K42 ["SortOrder"]
      104 GETIMPORT                        R20 K47 [Enum.FillDirection.Vertical]
      106 SETTABLEKS                       R20 R19 K45 ["FillDirection"]
      108 GETIMPORT                        R20 K29 [UDim.new]
      110 LOADN                            R21 0
      111 GETTABLEKS                       R22 R1 K5 ["Padding"]
      113 GETTABLEKS                       R22 R22 K7 ["XXLarge"]
      115 CALL                             R20 2 1
      116 SETTABLEKS                       R20 R19 K5 ["Padding"]
      118 GETUPVAL                         R20 1
      119 GETTABLEKS                       R20 R20 K48 ["Change"]
      121 GETTABLEKS                       R20 R20 K49 ["AbsoluteContentSize"]
      123 JUMPIFNOT                        R8 ; [+4]
      124 NEWCLOSURE                       R21 P0
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R4
      127 JUMP                             ; [+1]
      128 LOADNIL                          R21
      129 SETTABLE                         R21 R19 R20
      130 CALL                             R17 2 1
      131 SETTABLEKS                       R17 R16 K37 ["ColumnLayout"]
      133 GETUPVAL                         R17 3
      134 MOVE                             R18 R0
      135 MOVE                             R19 R1
      136 MOVE                             R20 R2
      137 MOVE                             R21 R5
      138 MOVE                             R22 R6
      139 MOVE                             R23 R7
      140 MOVE                             R24 R4
      141 MOVE                             R25 R3
      142 LOADB                            R26 1
      143 CALL                             R17 9 1
      144 SETTABLEKS                       R17 R16 K38 ["QuickSignInCard"]
      146 GETUPVAL                         R17 1
      147 GETTABLEKS                       R17 R17 K10 ["createElement"]
      149 GETUPVAL                         R18 4
      150 DUPTABLE                         R19 K52 [{["layout"] = "inline"}]
      151 CALL                             R17 2 1
      152 SETTABLEKS                       R17 R16 K39 ["Terms"]
      154 CALL                             R13 3 1
      155 SETTABLEKS                       R13 R12 K20 ["Column"]
      157 CALL                             R9 3 -1
      158 RETURN                           R9 -1
      159 GETUPVAL                         R8 1
      160 GETTABLEKS                       R8 R8 K10 ["createElement"]
      162 LOADK                            R9 K11 ["Frame"]
      163 DUPTABLE                         R10 K18 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      164 GETTABLEKS                       R11 R0 K12 ["Position"]
      166 SETTABLEKS                       R11 R10 K12 ["Position"]
      168 GETTABLEKS                       R11 R0 K13 ["Size"]
      170 SETTABLEKS                       R11 R10 K13 ["Size"]
      172 DUPTABLE                         R11 K53 [{"OuterPadding", "QuickSignInCard"}]
      173 GETUPVAL                         R12 1
      174 GETTABLEKS                       R12 R12 K10 ["createElement"]
      176 LOADK                            R13 K22 ["UIPadding"]
      177 DUPTABLE                         R14 K55 [{"PaddingTop", "PaddingBottom"}]
      178 GETIMPORT                        R15 K29 [UDim.new]
      180 LOADN                            R16 0
      181 MOVE                             R17 R4
      182 CALL                             R15 2 1
      183 SETTABLEKS                       R15 R14 K54 ["PaddingTop"]
      185 GETIMPORT                        R15 K29 [UDim.new]
      187 LOADN                            R16 0
      188 MOVE                             R17 R4
      189 CALL                             R15 2 1
      190 SETTABLEKS                       R15 R14 K23 ["PaddingBottom"]
      192 CALL                             R12 2 1
      193 SETTABLEKS                       R12 R11 K19 ["OuterPadding"]
      195 GETUPVAL                         R12 3
      196 MOVE                             R13 R0
      197 MOVE                             R14 R1
      198 MOVE                             R15 R2
      199 MOVE                             R16 R5
      200 MOVE                             R17 R6
      201 MOVE                             R18 R7
      202 MOVE                             R19 R4
      203 MOVE                             R20 R3
      204 LOADB                            R21 0
      205 CALL                             R12 9 1
      206 SETTABLEKS                       R12 R11 K38 ["QuickSignInCard"]
      208 CALL                             R8 3 -1
      209 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LoginPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Hooks"]
       23 GETTABLEKS                       R3 R3 K10 ["useTokens"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Packages"]
       29 GETTABLEKS                       R5 R5 K11 ["StudioFoundation"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K13 ["Localization"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETIMPORT                        R7 K1 [script]
       40 GETTABLEKS                       R7 R7 K14 ["Parent"]
       42 GETTABLEKS                       R7 R7 K15 ["TermsPrivacyLinks"]
       44 CALL                             R6 1 1
       45 DUPCLOSURE                       R7 K16 [PROTO_1]
       46 CAPTURE                          VAL R1
       47 DUPCLOSURE                       R8 K17 [PROTO_3]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R6
       53 RETURN                           R8 1
