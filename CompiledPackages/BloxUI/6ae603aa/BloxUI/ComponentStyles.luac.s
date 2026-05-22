PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["getChild"]
        6 LOADK                            R3 K1 ["Tokens"]
        7 CALL                             R2 1 1
        8 LOADK                            R5 K2 ["DarkTokens"]
        9 NAMECALL                         R3 R2 K3 ["FindFirstChild"]
       11 CALL                             R3 2 1
       12 LOADK                            R6 K4 ["LightTokens"]
       13 NAMECALL                         R4 R2 K3 ["FindFirstChild"]
       15 CALL                             R4 2 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K0 ["getChild"]
       19 LOADK                            R6 K5 ["ComponentRulesSheet"]
       20 CALL                             R5 1 1
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K0 ["getChild"]
       24 LOADK                            R7 K6 ["StyleLink"]
       25 CALL                             R6 1 1
       26 JUMPIFNOTEQKS                    R1 K7 ["Light"] ; [+3]
       28 MOVE                             R7 R4
       29 JUMP                             ; [+1]
       30 MOVE                             R7 R3
       31 NEWTABLE                         R10 0 1
       33 MOVE                             R11 R7
       34 SETLIST                          R10 R11 1 [1]
       36 NAMECALL                         R8 R5 K8 ["SetDerives"]
       38 CALL                             R8 2 0
       39 LOADNIL                          R8
       40 SETTABLEKS                       R8 R6 K9 ["StyleSheet"]
       42 SETTABLEKS                       R5 R6 K9 ["StyleSheet"]
       44 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["provide"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["token"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R1 K2 ["createDeferredEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R1
       11 LOADK                            R5 K3 ["component-theme-swap"]
       12 CALL                             R3 2 0
       13 NEWTABLE                         R3 0 0
       15 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Blox"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["template"]
       14 GETTABLEKS                       R3 R1 K8 ["Folder"]
       16 GETTABLEKS                       R4 R1 K9 ["StyleSheet"]
       18 GETTABLEKS                       R5 R1 K10 ["StyleLink"]
       20 GETIMPORT                        R6 K5 [require]
       22 GETIMPORT                        R7 K1 [script]
       24 GETTABLEKS                       R7 R7 K11 ["Parent"]
       26 GETTABLEKS                       R7 R7 K12 ["ThemeProvider"]
       28 CALL                             R6 1 1
       29 GETIMPORT                        R7 K5 [require]
       31 GETIMPORT                        R8 K1 [script]
       33 GETTABLEKS                       R8 R8 K11 ["Parent"]
       35 GETTABLEKS                       R8 R8 K13 ["DarkTokens"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K5 [require]
       40 GETIMPORT                        R9 K1 [script]
       42 GETTABLEKS                       R9 R9 K11 ["Parent"]
       44 GETTABLEKS                       R9 R9 K14 ["LightTokens"]
       46 CALL                             R8 1 1
       47 NEWTABLE                         R9 128 0
       49 DUPTABLE                         R10 K22 [{"AutomaticSize", "BorderSizePixel", "BackgroundTransparency", "TextSize", "FontFace", "TextColor3", "TextXAlignment"}]
       50 GETIMPORT                        R11 K25 [Enum.AutomaticSize.XY]
       52 SETTABLEKS                       R11 R10 K15 ["AutomaticSize"]
       54 LOADN                            R11 0
       55 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
       57 LOADN                            R11 1
       58 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
       60 LOADN                            R11 14
       61 SETTABLEKS                       R11 R10 K18 ["TextSize"]
       63 LOADK                            R11 K26 ["$Font"]
       64 SETTABLEKS                       R11 R10 K19 ["FontFace"]
       66 LOADK                            R11 K27 ["$ContentEmphasis"]
       67 SETTABLEKS                       R11 R10 K20 ["TextColor3"]
       69 GETIMPORT                        R11 K29 [Enum.TextXAlignment.Left]
       71 SETTABLEKS                       R11 R10 K21 ["TextXAlignment"]
       73 SETTABLEKS                       R10 R9 K30 ["TextLabel"]
       75 DUPTABLE                         R10 K32 [{"AutoButtonColor"}]
       76 LOADB                            R11 0
       77 SETTABLEKS                       R11 R10 K31 ["AutoButtonColor"]
       79 SETTABLEKS                       R10 R9 K33 ["TextButton, ImageButton"]
       81 DUPTABLE                         R10 K34 [{"AutomaticSize"}]
       82 GETIMPORT                        R11 K25 [Enum.AutomaticSize.XY]
       84 SETTABLEKS                       R11 R10 K15 ["AutomaticSize"]
       86 SETTABLEKS                       R10 R9 K35 [".auto-xy"]
       88 DUPTABLE                         R10 K34 [{"AutomaticSize"}]
       89 GETIMPORT                        R11 K37 [Enum.AutomaticSize.X]
       91 SETTABLEKS                       R11 R10 K15 ["AutomaticSize"]
       93 SETTABLEKS                       R10 R9 K38 [".auto-x"]
       95 DUPTABLE                         R10 K34 [{"AutomaticSize"}]
       96 GETIMPORT                        R11 K40 [Enum.AutomaticSize.Y]
       98 SETTABLEKS                       R11 R10 K15 ["AutomaticSize"]
      100 SETTABLEKS                       R10 R9 K41 [".auto-y"]
      102 DUPTABLE                         R10 K43 [{"Size"}]
      103 GETIMPORT                        R11 K46 [UDim2.new]
      105 LOADN                            R12 1
      106 LOADN                            R13 0
      107 LOADN                            R14 0
      108 LOADN                            R15 0
      109 CALL                             R11 4 1
      110 SETTABLEKS                       R11 R10 K42 ["Size"]
      112 SETTABLEKS                       R10 R9 K47 [".fill-x"]
      114 DUPTABLE                         R10 K43 [{"Size"}]
      115 GETIMPORT                        R11 K46 [UDim2.new]
      117 LOADN                            R12 0
      118 LOADN                            R13 0
      119 LOADN                            R14 1
      120 LOADN                            R15 0
      121 CALL                             R11 4 1
      122 SETTABLEKS                       R11 R10 K42 ["Size"]
      124 SETTABLEKS                       R10 R9 K48 [".fill-y"]
      126 NEWTABLE                         R10 1 1
      128 GETIMPORT                        R12 K46 [UDim2.new]
      130 LOADN                            R13 0
      131 LOADN                            R14 0
      132 LOADN                            R15 1
      133 LOADN                            R16 0
      134 CALL                             R12 4 1
      135 SETTABLEKS                       R12 R10 K42 ["Size"]
      137 NEWTABLE                         R11 1 0
      139 DUPTABLE                         R12 K50 [{"FlexMode"}]
      140 GETIMPORT                        R13 K53 [Enum.UIFlexMode.Grow]
      142 SETTABLEKS                       R13 R12 K49 ["FlexMode"]
      144 SETTABLEKS                       R12 R11 K54 ["::UIFlexItem"]
      146 SETLIST                          R10 R11 1 [1]
      148 SETTABLEKS                       R10 R9 K55 [".grow-x"]
      150 NEWTABLE                         R10 1 1
      152 GETIMPORT                        R12 K46 [UDim2.new]
      154 LOADN                            R13 1
      155 LOADN                            R14 0
      156 LOADN                            R15 0
      157 LOADN                            R16 0
      158 CALL                             R12 4 1
      159 SETTABLEKS                       R12 R10 K42 ["Size"]
      161 NEWTABLE                         R11 1 0
      163 DUPTABLE                         R12 K50 [{"FlexMode"}]
      164 GETIMPORT                        R13 K53 [Enum.UIFlexMode.Grow]
      166 SETTABLEKS                       R13 R12 K49 ["FlexMode"]
      168 SETTABLEKS                       R12 R11 K54 ["::UIFlexItem"]
      170 SETLIST                          R10 R11 1 [1]
      172 SETTABLEKS                       R10 R9 K56 [".grow-y"]
      174 DUPTABLE                         R10 K57 [{"BackgroundTransparency", "BorderSizePixel"}]
      175 LOADN                            R11 1
      176 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
      178 LOADN                            R11 0
      179 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
      181 SETTABLEKS                       R10 R9 K58 [".box"]
      183 NEWTABLE                         R10 0 1
      185 NEWTABLE                         R11 1 0
      187 DUPTABLE                         R12 K62 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
      188 GETIMPORT                        R13 K64 [Enum.FillDirection.Horizontal]
      190 SETTABLEKS                       R13 R12 K59 ["FillDirection"]
      192 GETIMPORT                        R13 K66 [Enum.SortOrder.LayoutOrder]
      194 SETTABLEKS                       R13 R12 K60 ["SortOrder"]
      196 GETIMPORT                        R13 K68 [Enum.VerticalAlignment.Center]
      198 SETTABLEKS                       R13 R12 K61 ["VerticalAlignment"]
      200 SETTABLEKS                       R12 R11 K69 ["::UIListLayout"]
      202 SETLIST                          R10 R11 1 [1]
      204 SETTABLEKS                       R10 R9 K70 [".row"]
      206 NEWTABLE                         R10 0 1
      208 NEWTABLE                         R11 1 0
      210 DUPTABLE                         R12 K72 [{"FillDirection", "SortOrder", "HorizontalAlignment"}]
      211 GETIMPORT                        R13 K74 [Enum.FillDirection.Vertical]
      213 SETTABLEKS                       R13 R12 K59 ["FillDirection"]
      215 GETIMPORT                        R13 K66 [Enum.SortOrder.LayoutOrder]
      217 SETTABLEKS                       R13 R12 K60 ["SortOrder"]
      219 GETIMPORT                        R13 K75 [Enum.HorizontalAlignment.Left]
      221 SETTABLEKS                       R13 R12 K71 ["HorizontalAlignment"]
      223 SETTABLEKS                       R12 R11 K69 ["::UIListLayout"]
      225 SETLIST                          R10 R11 1 [1]
      227 SETTABLEKS                       R10 R9 K76 [".col"]
      229 NEWTABLE                         R10 0 1
      231 NEWTABLE                         R11 1 0
      233 DUPTABLE                         R12 K78 [{"Padding"}]
      234 GETIMPORT                        R13 K80 [UDim.new]
      236 LOADN                            R14 0
      237 LOADN                            R15 2
      238 CALL                             R13 2 1
      239 SETTABLEKS                       R13 R12 K77 ["Padding"]
      241 SETTABLEKS                       R12 R11 K69 ["::UIListLayout"]
      243 SETLIST                          R10 R11 1 [1]
      245 SETTABLEKS                       R10 R9 K81 [".gap-2"]
      247 NEWTABLE                         R10 0 1
      249 NEWTABLE                         R11 1 0
      251 DUPTABLE                         R12 K78 [{"Padding"}]
      252 GETIMPORT                        R13 K80 [UDim.new]
      254 LOADN                            R14 0
      255 LOADN                            R15 4
      256 CALL                             R13 2 1
      257 SETTABLEKS                       R13 R12 K77 ["Padding"]
      259 SETTABLEKS                       R12 R11 K69 ["::UIListLayout"]
      261 SETLIST                          R10 R11 1 [1]
      263 SETTABLEKS                       R10 R9 K82 [".gap-4"]
      265 NEWTABLE                         R10 0 1
      267 NEWTABLE                         R11 1 0
      269 DUPTABLE                         R12 K78 [{"Padding"}]
      270 GETIMPORT                        R13 K80 [UDim.new]
      272 LOADN                            R14 0
      273 LOADN                            R15 8
      274 CALL                             R13 2 1
      275 SETTABLEKS                       R13 R12 K77 ["Padding"]
      277 SETTABLEKS                       R12 R11 K69 ["::UIListLayout"]
      279 SETLIST                          R10 R11 1 [1]
      281 SETTABLEKS                       R10 R9 K83 [".gap-8"]
      283 NEWTABLE                         R10 0 1
      285 NEWTABLE                         R11 1 0
      287 DUPTABLE                         R12 K78 [{"Padding"}]
      288 GETIMPORT                        R13 K80 [UDim.new]
      290 LOADN                            R14 0
      291 LOADN                            R15 12
      292 CALL                             R13 2 1
      293 SETTABLEKS                       R13 R12 K77 ["Padding"]
      295 SETTABLEKS                       R12 R11 K69 ["::UIListLayout"]
      297 SETLIST                          R10 R11 1 [1]
      299 SETTABLEKS                       R10 R9 K84 [".gap-12"]
      301 NEWTABLE                         R10 0 1
      303 NEWTABLE                         R11 1 0
      305 DUPTABLE                         R12 K78 [{"Padding"}]
      306 GETIMPORT                        R13 K80 [UDim.new]
      308 LOADN                            R14 0
      309 LOADN                            R15 16
      310 CALL                             R13 2 1
      311 SETTABLEKS                       R13 R12 K77 ["Padding"]
      313 SETTABLEKS                       R12 R11 K69 ["::UIListLayout"]
      315 SETLIST                          R10 R11 1 [1]
      317 SETTABLEKS                       R10 R9 K85 [".gap-16"]
      319 NEWTABLE                         R10 0 1
      321 NEWTABLE                         R11 1 0
      323 DUPTABLE                         R12 K90 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      324 GETIMPORT                        R13 K80 [UDim.new]
      326 LOADN                            R14 0
      327 LOADN                            R15 4
      328 CALL                             R13 2 1
      329 SETTABLEKS                       R13 R12 K86 ["PaddingLeft"]
      331 GETIMPORT                        R13 K80 [UDim.new]
      333 LOADN                            R14 0
      334 LOADN                            R15 4
      335 CALL                             R13 2 1
      336 SETTABLEKS                       R13 R12 K87 ["PaddingTop"]
      338 GETIMPORT                        R13 K80 [UDim.new]
      340 LOADN                            R14 0
      341 LOADN                            R15 4
      342 CALL                             R13 2 1
      343 SETTABLEKS                       R13 R12 K88 ["PaddingRight"]
      345 GETIMPORT                        R13 K80 [UDim.new]
      347 LOADN                            R14 0
      348 LOADN                            R15 4
      349 CALL                             R13 2 1
      350 SETTABLEKS                       R13 R12 K89 ["PaddingBottom"]
      352 SETTABLEKS                       R12 R11 K91 ["::UIPadding"]
      354 SETLIST                          R10 R11 1 [1]
      356 SETTABLEKS                       R10 R9 K92 [".pad-4"]
      358 NEWTABLE                         R10 0 1
      360 NEWTABLE                         R11 1 0
      362 DUPTABLE                         R12 K90 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      363 GETIMPORT                        R13 K80 [UDim.new]
      365 LOADN                            R14 0
      366 LOADN                            R15 8
      367 CALL                             R13 2 1
      368 SETTABLEKS                       R13 R12 K86 ["PaddingLeft"]
      370 GETIMPORT                        R13 K80 [UDim.new]
      372 LOADN                            R14 0
      373 LOADN                            R15 8
      374 CALL                             R13 2 1
      375 SETTABLEKS                       R13 R12 K87 ["PaddingTop"]
      377 GETIMPORT                        R13 K80 [UDim.new]
      379 LOADN                            R14 0
      380 LOADN                            R15 8
      381 CALL                             R13 2 1
      382 SETTABLEKS                       R13 R12 K88 ["PaddingRight"]
      384 GETIMPORT                        R13 K80 [UDim.new]
      386 LOADN                            R14 0
      387 LOADN                            R15 8
      388 CALL                             R13 2 1
      389 SETTABLEKS                       R13 R12 K89 ["PaddingBottom"]
      391 SETTABLEKS                       R12 R11 K91 ["::UIPadding"]
      393 SETLIST                          R10 R11 1 [1]
      395 SETTABLEKS                       R10 R9 K93 [".pad-8"]
      397 NEWTABLE                         R10 0 1
      399 NEWTABLE                         R11 1 0
      401 DUPTABLE                         R12 K90 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      402 GETIMPORT                        R13 K80 [UDim.new]
      404 LOADN                            R14 0
      405 LOADN                            R15 12
      406 CALL                             R13 2 1
      407 SETTABLEKS                       R13 R12 K86 ["PaddingLeft"]
      409 GETIMPORT                        R13 K80 [UDim.new]
      411 LOADN                            R14 0
      412 LOADN                            R15 12
      413 CALL                             R13 2 1
      414 SETTABLEKS                       R13 R12 K87 ["PaddingTop"]
      416 GETIMPORT                        R13 K80 [UDim.new]
      418 LOADN                            R14 0
      419 LOADN                            R15 12
      420 CALL                             R13 2 1
      421 SETTABLEKS                       R13 R12 K88 ["PaddingRight"]
      423 GETIMPORT                        R13 K80 [UDim.new]
      425 LOADN                            R14 0
      426 LOADN                            R15 12
      427 CALL                             R13 2 1
      428 SETTABLEKS                       R13 R12 K89 ["PaddingBottom"]
      430 SETTABLEKS                       R12 R11 K91 ["::UIPadding"]
      432 SETLIST                          R10 R11 1 [1]
      434 SETTABLEKS                       R10 R9 K94 [".pad-12"]
      436 NEWTABLE                         R10 0 1
      438 NEWTABLE                         R11 1 0
      440 DUPTABLE                         R12 K90 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      441 GETIMPORT                        R13 K80 [UDim.new]
      443 LOADN                            R14 0
      444 LOADN                            R15 16
      445 CALL                             R13 2 1
      446 SETTABLEKS                       R13 R12 K86 ["PaddingLeft"]
      448 GETIMPORT                        R13 K80 [UDim.new]
      450 LOADN                            R14 0
      451 LOADN                            R15 16
      452 CALL                             R13 2 1
      453 SETTABLEKS                       R13 R12 K87 ["PaddingTop"]
      455 GETIMPORT                        R13 K80 [UDim.new]
      457 LOADN                            R14 0
      458 LOADN                            R15 16
      459 CALL                             R13 2 1
      460 SETTABLEKS                       R13 R12 K88 ["PaddingRight"]
      462 GETIMPORT                        R13 K80 [UDim.new]
      464 LOADN                            R14 0
      465 LOADN                            R15 16
      466 CALL                             R13 2 1
      467 SETTABLEKS                       R13 R12 K89 ["PaddingBottom"]
      469 SETTABLEKS                       R12 R11 K91 ["::UIPadding"]
      471 SETLIST                          R10 R11 1 [1]
      473 SETTABLEKS                       R10 R9 K95 [".pad-16"]
      475 NEWTABLE                         R10 0 1
      477 NEWTABLE                         R11 1 0
      479 DUPTABLE                         R12 K96 [{"PaddingLeft", "PaddingRight"}]
      480 GETIMPORT                        R13 K80 [UDim.new]
      482 LOADN                            R14 0
      483 LOADN                            R15 4
      484 CALL                             R13 2 1
      485 SETTABLEKS                       R13 R12 K86 ["PaddingLeft"]
      487 GETIMPORT                        R13 K80 [UDim.new]
      489 LOADN                            R14 0
      490 LOADN                            R15 4
      491 CALL                             R13 2 1
      492 SETTABLEKS                       R13 R12 K88 ["PaddingRight"]
      494 SETTABLEKS                       R12 R11 K91 ["::UIPadding"]
      496 SETLIST                          R10 R11 1 [1]
      498 SETTABLEKS                       R10 R9 K97 [".pad-x-4"]
      500 NEWTABLE                         R10 0 1
      502 NEWTABLE                         R11 1 0
      504 DUPTABLE                         R12 K96 [{"PaddingLeft", "PaddingRight"}]
      505 GETIMPORT                        R13 K80 [UDim.new]
      507 LOADN                            R14 0
      508 LOADN                            R15 8
      509 CALL                             R13 2 1
      510 SETTABLEKS                       R13 R12 K86 ["PaddingLeft"]
      512 GETIMPORT                        R13 K80 [UDim.new]
      514 LOADN                            R14 0
      515 LOADN                            R15 8
      516 CALL                             R13 2 1
      517 SETTABLEKS                       R13 R12 K88 ["PaddingRight"]
      519 SETTABLEKS                       R12 R11 K91 ["::UIPadding"]
      521 SETLIST                          R10 R11 1 [1]
      523 SETTABLEKS                       R10 R9 K98 [".pad-x-8"]
      525 NEWTABLE                         R10 0 1
      527 NEWTABLE                         R11 1 0
      529 DUPTABLE                         R12 K99 [{"PaddingRight"}]
      530 GETIMPORT                        R13 K80 [UDim.new]
      532 LOADN                            R14 0
      533 LOADN                            R15 10
      534 CALL                             R13 2 1
      535 SETTABLEKS                       R13 R12 K88 ["PaddingRight"]
      537 SETTABLEKS                       R12 R11 K91 ["::UIPadding"]
      539 SETLIST                          R10 R11 1 [1]
      541 SETTABLEKS                       R10 R9 K100 [".pad-r-10"]
      543 NEWTABLE                         R10 0 1
      545 NEWTABLE                         R11 1 0
      547 DUPTABLE                         R12 K102 [{"CornerRadius"}]
      548 GETIMPORT                        R13 K80 [UDim.new]
      550 LOADN                            R14 0
      551 LOADN                            R15 4
      552 CALL                             R13 2 1
      553 SETTABLEKS                       R13 R12 K101 ["CornerRadius"]
      555 SETTABLEKS                       R12 R11 K103 ["::UICorner"]
      557 SETLIST                          R10 R11 1 [1]
      559 SETTABLEKS                       R10 R9 K104 [".corner-4"]
      561 NEWTABLE                         R10 0 1
      563 NEWTABLE                         R11 1 0
      565 DUPTABLE                         R12 K102 [{"CornerRadius"}]
      566 GETIMPORT                        R13 K80 [UDim.new]
      568 LOADN                            R14 0
      569 LOADN                            R15 6
      570 CALL                             R13 2 1
      571 SETTABLEKS                       R13 R12 K101 ["CornerRadius"]
      573 SETTABLEKS                       R12 R11 K103 ["::UICorner"]
      575 SETLIST                          R10 R11 1 [1]
      577 SETTABLEKS                       R10 R9 K105 [".corner-6"]
      579 NEWTABLE                         R10 0 1
      581 NEWTABLE                         R11 1 0
      583 DUPTABLE                         R12 K102 [{"CornerRadius"}]
      584 GETIMPORT                        R13 K80 [UDim.new]
      586 LOADN                            R14 0
      587 LOADN                            R15 8
      588 CALL                             R13 2 1
      589 SETTABLEKS                       R13 R12 K101 ["CornerRadius"]
      591 SETTABLEKS                       R12 R11 K103 ["::UICorner"]
      593 SETLIST                          R10 R11 1 [1]
      595 SETTABLEKS                       R10 R9 K106 [".corner-8"]
      597 DUPTABLE                         R10 K108 [{"BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
      598 LOADN                            R11 0
      599 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
      601 LOADN                            R11 0
      602 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
      604 LOADK                            R11 K109 ["$Surface_0"]
      605 SETTABLEKS                       R11 R10 K107 ["BackgroundColor3"]
      607 SETTABLEKS                       R10 R9 K110 [".surface-0"]
      609 DUPTABLE                         R10 K108 [{"BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
      610 LOADN                            R11 0
      611 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
      613 LOADN                            R11 0
      614 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
      616 LOADK                            R11 K111 ["$Surface_100"]
      617 SETTABLEKS                       R11 R10 K107 ["BackgroundColor3"]
      619 SETTABLEKS                       R10 R9 K112 [".surface-100"]
      621 DUPTABLE                         R10 K108 [{"BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
      622 LOADN                            R11 0
      623 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
      625 LOADN                            R11 0
      626 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
      628 LOADK                            R11 K113 ["$Surface_200"]
      629 SETTABLEKS                       R11 R10 K107 ["BackgroundColor3"]
      631 SETTABLEKS                       R10 R9 K114 [".surface-200"]
      633 DUPTABLE                         R10 K108 [{"BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
      634 LOADN                            R11 0
      635 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
      637 LOADN                            R11 0
      638 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
      640 LOADK                            R11 K115 ["$Surface_300"]
      641 SETTABLEKS                       R11 R10 K107 ["BackgroundColor3"]
      643 SETTABLEKS                       R10 R9 K116 [".surface-300"]
      645 NEWTABLE                         R10 8 1
      647 LOADK                            R12 K117 ["corner-6 pad-8 auto-xy"]
      648 SETTABLEKS                       R12 R10 K118 ["tags"]
      650 LOADK                            R12 K115 ["$Surface_300"]
      651 SETTABLEKS                       R12 R10 K107 ["BackgroundColor3"]
      653 LOADN                            R12 0
      654 SETTABLEKS                       R12 R10 K17 ["BackgroundTransparency"]
      656 LOADK                            R12 K119 [""]
      657 SETTABLEKS                       R12 R10 K120 ["Text"]
      659 LOADN                            R12 0
      660 SETTABLEKS                       R12 R10 K16 ["BorderSizePixel"]
      662 NEWTABLE                         R11 16 0
      664 NEWTABLE                         R12 0 1
      666 NEWTABLE                         R13 2 0
      668 DUPTABLE                         R14 K121 [{"BackgroundColor3"}]
      669 LOADK                            R15 K122 ["$StateHover"]
      670 SETTABLEKS                       R15 R14 K107 ["BackgroundColor3"]
      672 SETTABLEKS                       R14 R13 K123 [":hover"]
      674 DUPTABLE                         R14 K121 [{"BackgroundColor3"}]
      675 LOADK                            R15 K124 ["$StatePress"]
      676 SETTABLEKS                       R15 R14 K107 ["BackgroundColor3"]
      678 SETTABLEKS                       R14 R13 K125 [":press"]
      680 SETLIST                          R12 R13 1 [1]
      682 SETTABLEKS                       R12 R11 K126 [".state-enabled"]
      684 DUPTABLE                         R12 K127 [{"BackgroundTransparency"}]
      685 LOADK                            R13 K128 [0.5]
      686 SETTABLEKS                       R13 R12 K17 ["BackgroundTransparency"]
      688 SETTABLEKS                       R12 R11 K129 [".state-disabled"]
      690 NEWTABLE                         R12 1 1
      692 LOADK                            R14 K130 ["$ActionEmphasisBg"]
      693 SETTABLEKS                       R14 R12 K107 ["BackgroundColor3"]
      695 NEWTABLE                         R13 1 0
      697 NEWTABLE                         R14 0 1
      699 NEWTABLE                         R15 2 0
      701 DUPTABLE                         R16 K121 [{"BackgroundColor3"}]
      702 LOADK                            R17 K131 ["$ActionEmphasisHover"]
      703 SETTABLEKS                       R17 R16 K107 ["BackgroundColor3"]
      705 SETTABLEKS                       R16 R15 K123 [":hover"]
      707 DUPTABLE                         R16 K121 [{"BackgroundColor3"}]
      708 LOADK                            R17 K132 ["$ActionEmphasisPress"]
      709 SETTABLEKS                       R17 R16 K107 ["BackgroundColor3"]
      711 SETTABLEKS                       R16 R15 K125 [":press"]
      713 SETLIST                          R14 R15 1 [1]
      715 SETTABLEKS                       R14 R13 K126 [".state-enabled"]
      717 SETLIST                          R12 R13 1 [1]
      719 SETTABLEKS                       R12 R11 K133 [".variant-primary"]
      721 NEWTABLE                         R12 2 1
      723 LOADK                            R14 K134 ["$ActionStandardBg"]
      724 SETTABLEKS                       R14 R12 K107 ["BackgroundColor3"]
      726 LOADK                            R14 K135 [0.88]
      727 SETTABLEKS                       R14 R12 K17 ["BackgroundTransparency"]
      729 NEWTABLE                         R13 2 0
      731 NEWTABLE                         R14 0 1
      733 NEWTABLE                         R15 2 0
      735 DUPTABLE                         R16 K127 [{"BackgroundTransparency"}]
      736 LOADK                            R17 K136 [0.78]
      737 SETTABLEKS                       R17 R16 K17 ["BackgroundTransparency"]
      739 SETTABLEKS                       R16 R15 K123 [":hover"]
      741 DUPTABLE                         R16 K127 [{"BackgroundTransparency"}]
      742 LOADK                            R17 K137 [0.68]
      743 SETTABLEKS                       R17 R16 K17 ["BackgroundTransparency"]
      745 SETTABLEKS                       R16 R15 K125 [":press"]
      747 SETLIST                          R14 R15 1 [1]
      749 SETTABLEKS                       R14 R13 K126 [".state-enabled"]
      751 DUPTABLE                         R14 K127 [{"BackgroundTransparency"}]
      752 LOADK                            R15 K138 [0.94]
      753 SETTABLEKS                       R15 R14 K17 ["BackgroundTransparency"]
      755 SETTABLEKS                       R14 R13 K129 [".state-disabled"]
      757 SETLIST                          R12 R13 1 [1]
      759 SETTABLEKS                       R12 R11 K139 [".variant-standard"]
      761 NEWTABLE                         R12 1 1
      763 LOADN                            R14 1
      764 SETTABLEKS                       R14 R12 K17 ["BackgroundTransparency"]
      766 NEWTABLE                         R13 1 0
      768 NEWTABLE                         R14 0 1
      770 NEWTABLE                         R15 2 0
      772 DUPTABLE                         R16 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
      773 LOADN                            R17 0
      774 SETTABLEKS                       R17 R16 K17 ["BackgroundTransparency"]
      776 LOADK                            R17 K122 ["$StateHover"]
      777 SETTABLEKS                       R17 R16 K107 ["BackgroundColor3"]
      779 SETTABLEKS                       R16 R15 K123 [":hover"]
      781 DUPTABLE                         R16 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
      782 LOADN                            R17 0
      783 SETTABLEKS                       R17 R16 K17 ["BackgroundTransparency"]
      785 LOADK                            R17 K124 ["$StatePress"]
      786 SETTABLEKS                       R17 R16 K107 ["BackgroundColor3"]
      788 SETTABLEKS                       R16 R15 K125 [":press"]
      790 SETLIST                          R14 R15 1 [1]
      792 SETTABLEKS                       R14 R13 K126 [".state-enabled"]
      794 SETLIST                          R12 R13 1 [1]
      796 SETTABLEKS                       R12 R11 K141 [".variant-utility"]
      798 NEWTABLE                         R12 1 1
      800 LOADN                            R14 1
      801 SETTABLEKS                       R14 R12 K17 ["BackgroundTransparency"]
      803 NEWTABLE                         R13 1 0
      805 NEWTABLE                         R14 0 1
      807 NEWTABLE                         R15 2 0
      809 DUPTABLE                         R16 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
      810 LOADN                            R17 0
      811 SETTABLEKS                       R17 R16 K17 ["BackgroundTransparency"]
      813 LOADK                            R17 K122 ["$StateHover"]
      814 SETTABLEKS                       R17 R16 K107 ["BackgroundColor3"]
      816 SETTABLEKS                       R16 R15 K123 [":hover"]
      818 DUPTABLE                         R16 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
      819 LOADN                            R17 0
      820 SETTABLEKS                       R17 R16 K17 ["BackgroundTransparency"]
      822 LOADK                            R17 K124 ["$StatePress"]
      823 SETTABLEKS                       R17 R16 K107 ["BackgroundColor3"]
      825 SETTABLEKS                       R16 R15 K125 [":press"]
      827 SETLIST                          R14 R15 1 [1]
      829 SETTABLEKS                       R14 R13 K126 [".state-enabled"]
      831 SETLIST                          R12 R13 1 [1]
      833 SETTABLEKS                       R12 R11 K142 [".variant-ghost"]
      835 NEWTABLE                         R12 1 1
      837 LOADK                            R14 K143 ["pad-4"]
      838 SETTABLEKS                       R14 R12 K118 ["tags"]
      840 NEWTABLE                         R13 1 0
      842 DUPTABLE                         R14 K144 [{"TextSize"}]
      843 LOADN                            R15 12
      844 SETTABLEKS                       R15 R14 K18 ["TextSize"]
      846 SETTABLEKS                       R14 R13 K145 ["> TextLabel"]
      848 SETLIST                          R12 R13 1 [1]
      850 SETTABLEKS                       R12 R11 K146 [".size-small"]
      852 NEWTABLE                         R12 0 1
      854 NEWTABLE                         R13 2 0
      856 DUPTABLE                         R14 K147 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      857 GETIMPORT                        R15 K80 [UDim.new]
      859 LOADN                            R16 0
      860 LOADN                            R17 8
      861 CALL                             R15 2 1
      862 SETTABLEKS                       R15 R14 K86 ["PaddingLeft"]
      864 GETIMPORT                        R15 K80 [UDim.new]
      866 LOADN                            R16 0
      867 LOADN                            R17 8
      868 CALL                             R15 2 1
      869 SETTABLEKS                       R15 R14 K88 ["PaddingRight"]
      871 GETIMPORT                        R15 K80 [UDim.new]
      873 LOADN                            R16 0
      874 LOADN                            R17 4
      875 CALL                             R15 2 1
      876 SETTABLEKS                       R15 R14 K87 ["PaddingTop"]
      878 GETIMPORT                        R15 K80 [UDim.new]
      880 LOADN                            R16 0
      881 LOADN                            R17 4
      882 CALL                             R15 2 1
      883 SETTABLEKS                       R15 R14 K89 ["PaddingBottom"]
      885 SETTABLEKS                       R14 R13 K91 ["::UIPadding"]
      887 DUPTABLE                         R14 K144 [{"TextSize"}]
      888 LOADN                            R15 12
      889 SETTABLEKS                       R15 R14 K18 ["TextSize"]
      891 SETTABLEKS                       R14 R13 K145 ["> TextLabel"]
      893 SETLIST                          R12 R13 1 [1]
      895 SETTABLEKS                       R12 R11 K148 [".size-toolbar"]
      897 NEWTABLE                         R12 1 1
      899 LOADK                            R14 K149 ["pad-12"]
      900 SETTABLEKS                       R14 R12 K118 ["tags"]
      902 NEWTABLE                         R13 1 0
      904 DUPTABLE                         R14 K144 [{"TextSize"}]
      905 LOADN                            R15 16
      906 SETTABLEKS                       R15 R14 K18 ["TextSize"]
      908 SETTABLEKS                       R14 R13 K145 ["> TextLabel"]
      910 SETLIST                          R12 R13 1 [1]
      912 SETTABLEKS                       R12 R11 K150 [".size-large"]
      914 SETLIST                          R10 R11 1 [1]
      916 SETTABLEKS                       R10 R9 K151 [".button"]
      918 DUPTABLE                         R10 K153 [{"Size", "BackgroundTransparency", "ScaleType"}]
      919 GETIMPORT                        R11 K155 [UDim2.fromOffset]
      921 LOADN                            R12 16
      922 LOADN                            R13 16
      923 CALL                             R11 2 1
      924 SETTABLEKS                       R11 R10 K42 ["Size"]
      926 LOADN                            R11 1
      927 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
      929 GETIMPORT                        R11 K157 [Enum.ScaleType.Fit]
      931 SETTABLEKS                       R11 R10 K152 ["ScaleType"]
      933 SETTABLEKS                       R10 R9 K158 [".button-icon"]
      935 NEWTABLE                         R10 4 1
      937 LOADN                            R12 14
      938 SETTABLEKS                       R12 R10 K18 ["TextSize"]
      940 LOADK                            R12 K26 ["$Font"]
      941 SETTABLEKS                       R12 R10 K19 ["FontFace"]
      943 LOADK                            R12 K27 ["$ContentEmphasis"]
      944 SETTABLEKS                       R12 R10 K20 ["TextColor3"]
      946 NEWTABLE                         R11 4 0
      948 DUPTABLE                         R12 K159 [{"TextColor3"}]
      949 LOADK                            R13 K160 ["$ContentMuted"]
      950 SETTABLEKS                       R13 R12 K20 ["TextColor3"]
      952 SETTABLEKS                       R12 R11 K129 [".state-disabled"]
      954 DUPTABLE                         R12 K159 [{"TextColor3"}]
      955 LOADK                            R13 K161 ["$ActionEmphasisFg"]
      956 SETTABLEKS                       R13 R12 K20 ["TextColor3"]
      958 SETTABLEKS                       R12 R11 K133 [".variant-primary"]
      960 NEWTABLE                         R12 1 1
      962 LOADK                            R14 K27 ["$ContentEmphasis"]
      963 SETTABLEKS                       R14 R12 K20 ["TextColor3"]
      965 NEWTABLE                         R13 1 0
      967 DUPTABLE                         R14 K163 [{"TextTransparency", "TextColor3"}]
      968 LOADK                            R15 K128 [0.5]
      969 SETTABLEKS                       R15 R14 K162 ["TextTransparency"]
      971 LOADK                            R15 K27 ["$ContentEmphasis"]
      972 SETTABLEKS                       R15 R14 K20 ["TextColor3"]
      974 SETTABLEKS                       R14 R13 K129 [".state-disabled"]
      976 SETLIST                          R12 R13 1 [1]
      978 SETTABLEKS                       R12 R11 K139 [".variant-standard"]
      980 NEWTABLE                         R12 1 1
      982 LOADK                            R14 K27 ["$ContentEmphasis"]
      983 SETTABLEKS                       R14 R12 K20 ["TextColor3"]
      985 NEWTABLE                         R13 1 0
      987 DUPTABLE                         R14 K163 [{"TextTransparency", "TextColor3"}]
      988 LOADK                            R15 K128 [0.5]
      989 SETTABLEKS                       R15 R14 K162 ["TextTransparency"]
      991 LOADK                            R15 K27 ["$ContentEmphasis"]
      992 SETTABLEKS                       R15 R14 K20 ["TextColor3"]
      994 SETTABLEKS                       R14 R13 K129 [".state-disabled"]
      996 SETLIST                          R12 R13 1 [1]
      998 SETTABLEKS                       R12 R11 K141 [".variant-utility"]
     1000 SETLIST                          R10 R11 1 [1]
     1002 SETTABLEKS                       R10 R9 K164 [".button-label"]
     1004 NEWTABLE                         R10 8 1
     1006 LOADK                            R12 K165 ["corner-4 auto-xy"]
     1007 SETTABLEKS                       R12 R10 K118 ["tags"]
     1009 LOADK                            R12 K115 ["$Surface_300"]
     1010 SETTABLEKS                       R12 R10 K107 ["BackgroundColor3"]
     1012 LOADN                            R12 1
     1013 SETTABLEKS                       R12 R10 K17 ["BackgroundTransparency"]
     1015 LOADK                            R12 K119 [""]
     1016 SETTABLEKS                       R12 R10 K120 ["Text"]
     1018 LOADN                            R12 0
     1019 SETTABLEKS                       R12 R10 K16 ["BorderSizePixel"]
     1021 GETIMPORT                        R12 K155 [UDim2.fromOffset]
     1023 LOADN                            R13 32
     1024 LOADN                            R14 32
     1025 CALL                             R12 2 1
     1026 SETTABLEKS                       R12 R10 K42 ["Size"]
     1028 NEWTABLE                         R11 4 0
     1030 DUPTABLE                         R12 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
     1031 LOADN                            R13 0
     1032 SETTABLEKS                       R13 R12 K17 ["BackgroundTransparency"]
     1034 LOADK                            R13 K122 ["$StateHover"]
     1035 SETTABLEKS                       R13 R12 K107 ["BackgroundColor3"]
     1037 SETTABLEKS                       R12 R11 K123 [":hover"]
     1039 DUPTABLE                         R12 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
     1040 LOADN                            R13 0
     1041 SETTABLEKS                       R13 R12 K17 ["BackgroundTransparency"]
     1043 LOADK                            R13 K124 ["$StatePress"]
     1044 SETTABLEKS                       R13 R12 K107 ["BackgroundColor3"]
     1046 SETTABLEKS                       R12 R11 K125 [":press"]
     1048 DUPTABLE                         R12 K127 [{"BackgroundTransparency"}]
     1049 LOADK                            R13 K128 [0.5]
     1050 SETTABLEKS                       R13 R12 K17 ["BackgroundTransparency"]
     1052 SETTABLEKS                       R12 R11 K129 [".state-disabled"]
     1054 SETLIST                          R10 R11 1 [1]
     1056 SETTABLEKS                       R10 R9 K166 [".icon-button"]
     1058 DUPTABLE                         R10 K169 [{"Size", "BackgroundTransparency", "ScaleType", "Position", "AnchorPoint"}]
     1059 GETIMPORT                        R11 K155 [UDim2.fromOffset]
     1061 LOADN                            R12 16
     1062 LOADN                            R13 16
     1063 CALL                             R11 2 1
     1064 SETTABLEKS                       R11 R10 K42 ["Size"]
     1066 LOADN                            R11 1
     1067 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
     1069 GETIMPORT                        R11 K157 [Enum.ScaleType.Fit]
     1071 SETTABLEKS                       R11 R10 K152 ["ScaleType"]
     1073 GETIMPORT                        R11 K171 [UDim2.fromScale]
     1075 LOADK                            R12 K128 [0.5]
     1076 LOADK                            R13 K128 [0.5]
     1077 CALL                             R11 2 1
     1078 SETTABLEKS                       R11 R10 K167 ["Position"]
     1080 GETIMPORT                        R11 K173 [Vector2.new]
     1082 LOADK                            R12 K128 [0.5]
     1083 LOADK                            R13 K128 [0.5]
     1084 CALL                             R11 2 1
     1085 SETTABLEKS                       R11 R10 K168 ["AnchorPoint"]
     1087 SETTABLEKS                       R10 R9 K174 [".icon-button-image"]
     1089 NEWTABLE                         R10 4 1
     1091 LOADK                            R12 K175 ["box row gap-8 auto-xy"]
     1092 SETTABLEKS                       R12 R10 K118 ["tags"]
     1094 LOADK                            R12 K119 [""]
     1095 SETTABLEKS                       R12 R10 K120 ["Text"]
     1097 LOADN                            R12 0
     1098 SETTABLEKS                       R12 R10 K16 ["BorderSizePixel"]
     1100 NEWTABLE                         R11 1 0
     1102 DUPTABLE                         R12 K127 [{"BackgroundTransparency"}]
     1103 LOADK                            R13 K128 [0.5]
     1104 SETTABLEKS                       R13 R12 K17 ["BackgroundTransparency"]
     1106 SETTABLEKS                       R12 R11 K129 [".state-disabled"]
     1108 SETLIST                          R10 R11 1 [1]
     1110 SETTABLEKS                       R10 R9 K176 [".checkbox"]
     1112 NEWTABLE                         R10 8 1
     1114 LOADK                            R12 K177 ["corner-4"]
     1115 SETTABLEKS                       R12 R10 K118 ["tags"]
     1117 GETIMPORT                        R12 K155 [UDim2.fromOffset]
     1119 LOADN                            R13 18
     1120 LOADN                            R14 18
     1121 CALL                             R12 2 1
     1122 SETTABLEKS                       R12 R10 K42 ["Size"]
     1124 LOADK                            R12 K115 ["$Surface_300"]
     1125 SETTABLEKS                       R12 R10 K107 ["BackgroundColor3"]
     1127 LOADN                            R12 0
     1128 SETTABLEKS                       R12 R10 K17 ["BackgroundTransparency"]
     1130 LOADN                            R12 0
     1131 SETTABLEKS                       R12 R10 K16 ["BorderSizePixel"]
     1133 NEWTABLE                         R11 2 0
     1135 DUPTABLE                         R12 K181 [{"Thickness", "Color", "ApplyStrokeMode"}]
     1136 LOADN                            R13 1
     1137 SETTABLEKS                       R13 R12 K178 ["Thickness"]
     1139 LOADK                            R13 K182 ["$StrokeDefault"]
     1140 SETTABLEKS                       R13 R12 K179 ["Color"]
     1142 GETIMPORT                        R13 K184 [Enum.ApplyStrokeMode.Border]
     1144 SETTABLEKS                       R13 R12 K180 ["ApplyStrokeMode"]
     1146 SETTABLEKS                       R12 R11 K185 ["::UIStroke"]
     1148 NEWTABLE                         R12 1 1
     1150 LOADK                            R14 K130 ["$ActionEmphasisBg"]
     1151 SETTABLEKS                       R14 R12 K107 ["BackgroundColor3"]
     1153 NEWTABLE                         R13 1 0
     1155 DUPTABLE                         R14 K186 [{"Color"}]
     1156 LOADK                            R15 K130 ["$ActionEmphasisBg"]
     1157 SETTABLEKS                       R15 R14 K179 ["Color"]
     1159 SETTABLEKS                       R14 R13 K185 ["::UIStroke"]
     1161 SETLIST                          R12 R13 1 [1]
     1163 SETTABLEKS                       R12 R11 K187 [".state-checked"]
     1165 SETLIST                          R10 R11 1 [1]
     1167 SETTABLEKS                       R10 R9 K188 [".checkbox-box"]
     1169 DUPTABLE                         R10 K190 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency", "ScaleType", "ImageColor3"}]
     1170 GETIMPORT                        R11 K155 [UDim2.fromOffset]
     1172 LOADN                            R12 12
     1173 LOADN                            R13 12
     1174 CALL                             R11 2 1
     1175 SETTABLEKS                       R11 R10 K42 ["Size"]
     1177 GETIMPORT                        R11 K171 [UDim2.fromScale]
     1179 LOADK                            R12 K128 [0.5]
     1180 LOADK                            R13 K128 [0.5]
     1181 CALL                             R11 2 1
     1182 SETTABLEKS                       R11 R10 K167 ["Position"]
     1184 GETIMPORT                        R11 K173 [Vector2.new]
     1186 LOADK                            R12 K128 [0.5]
     1187 LOADK                            R13 K128 [0.5]
     1188 CALL                             R11 2 1
     1189 SETTABLEKS                       R11 R10 K168 ["AnchorPoint"]
     1191 LOADN                            R11 1
     1192 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
     1194 GETIMPORT                        R11 K157 [Enum.ScaleType.Fit]
     1196 SETTABLEKS                       R11 R10 K152 ["ScaleType"]
     1198 LOADK                            R11 K191 ["$White"]
     1199 SETTABLEKS                       R11 R10 K189 ["ImageColor3"]
     1201 SETTABLEKS                       R10 R9 K192 [".checkbox-mark"]
     1203 DUPTABLE                         R10 K193 [{"TextSize", "FontFace", "TextColor3"}]
     1204 LOADN                            R11 14
     1205 SETTABLEKS                       R11 R10 K18 ["TextSize"]
     1207 LOADK                            R11 K26 ["$Font"]
     1208 SETTABLEKS                       R11 R10 K19 ["FontFace"]
     1210 LOADK                            R11 K27 ["$ContentEmphasis"]
     1211 SETTABLEKS                       R11 R10 K20 ["TextColor3"]
     1213 SETTABLEKS                       R10 R9 K194 [".checkbox-label"]
     1215 DUPTABLE                         R10 K195 [{"tags", "Text", "BorderSizePixel"}]
     1216 LOADK                            R11 K175 ["box row gap-8 auto-xy"]
     1217 SETTABLEKS                       R11 R10 K118 ["tags"]
     1219 LOADK                            R11 K119 [""]
     1220 SETTABLEKS                       R11 R10 K120 ["Text"]
     1222 LOADN                            R11 0
     1223 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
     1225 SETTABLEKS                       R10 R9 K196 [".toggle"]
     1227 NEWTABLE                         R10 4 1
     1229 GETIMPORT                        R12 K155 [UDim2.fromOffset]
     1231 LOADN                            R13 36
     1232 LOADN                            R14 20
     1233 CALL                             R12 2 1
     1234 SETTABLEKS                       R12 R10 K42 ["Size"]
     1236 LOADN                            R12 0
     1237 SETTABLEKS                       R12 R10 K17 ["BackgroundTransparency"]
     1239 LOADN                            R12 0
     1240 SETTABLEKS                       R12 R10 K16 ["BorderSizePixel"]
     1242 NEWTABLE                         R11 1 0
     1244 DUPTABLE                         R12 K102 [{"CornerRadius"}]
     1245 GETIMPORT                        R13 K80 [UDim.new]
     1247 LOADN                            R14 1
     1248 LOADN                            R15 0
     1249 CALL                             R13 2 1
     1250 SETTABLEKS                       R13 R12 K101 ["CornerRadius"]
     1252 SETTABLEKS                       R12 R11 K103 ["::UICorner"]
     1254 SETLIST                          R10 R11 1 [1]
     1256 SETTABLEKS                       R10 R9 K197 [".toggle-track"]
     1258 DUPTABLE                         R10 K198 [{"Size", "BackgroundTransparency", "BorderSizePixel"}]
     1259 GETIMPORT                        R11 K155 [UDim2.fromOffset]
     1261 LOADN                            R12 14
     1262 LOADN                            R13 14
     1263 CALL                             R11 2 1
     1264 SETTABLEKS                       R11 R10 K42 ["Size"]
     1266 LOADN                            R11 1
     1267 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
     1269 LOADN                            R11 0
     1270 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
     1272 SETTABLEKS                       R10 R9 K199 [".toggle-knob"]
     1274 NEWTABLE                         R10 8 1
     1276 GETIMPORT                        R12 K155 [UDim2.fromOffset]
     1278 LOADN                            R13 14
     1279 LOADN                            R14 14
     1280 CALL                             R12 2 1
     1281 SETTABLEKS                       R12 R10 K42 ["Size"]
     1283 GETIMPORT                        R12 K171 [UDim2.fromScale]
     1285 LOADK                            R13 K128 [0.5]
     1286 LOADK                            R14 K128 [0.5]
     1287 CALL                             R12 2 1
     1288 SETTABLEKS                       R12 R10 K167 ["Position"]
     1290 GETIMPORT                        R12 K173 [Vector2.new]
     1292 LOADK                            R13 K128 [0.5]
     1293 LOADK                            R14 K128 [0.5]
     1294 CALL                             R12 2 1
     1295 SETTABLEKS                       R12 R10 K168 ["AnchorPoint"]
     1297 LOADK                            R12 K191 ["$White"]
     1298 SETTABLEKS                       R12 R10 K107 ["BackgroundColor3"]
     1300 LOADN                            R12 0
     1301 SETTABLEKS                       R12 R10 K17 ["BackgroundTransparency"]
     1303 LOADN                            R12 0
     1304 SETTABLEKS                       R12 R10 K16 ["BorderSizePixel"]
     1306 LOADN                            R12 4
     1307 SETTABLEKS                       R12 R10 K200 ["ZIndex"]
     1309 NEWTABLE                         R11 1 0
     1311 DUPTABLE                         R12 K102 [{"CornerRadius"}]
     1312 GETIMPORT                        R13 K80 [UDim.new]
     1314 LOADK                            R14 K128 [0.5]
     1315 LOADN                            R15 0
     1316 CALL                             R13 2 1
     1317 SETTABLEKS                       R13 R12 K101 ["CornerRadius"]
     1319 SETTABLEKS                       R12 R11 K103 ["::UICorner"]
     1321 SETLIST                          R10 R11 1 [1]
     1323 SETTABLEKS                       R10 R9 K201 [".toggle-knob-circle"]
     1325 DUPTABLE                         R10 K202 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency", "BorderSizePixel", "ImageColor3", "ZIndex"}]
     1326 GETIMPORT                        R11 K155 [UDim2.fromOffset]
     1328 LOADN                            R12 22
     1329 LOADN                            R13 22
     1330 CALL                             R11 2 1
     1331 SETTABLEKS                       R11 R10 K42 ["Size"]
     1333 GETIMPORT                        R11 K171 [UDim2.fromScale]
     1335 LOADK                            R12 K128 [0.5]
     1336 LOADK                            R13 K128 [0.5]
     1337 CALL                             R11 2 1
     1338 SETTABLEKS                       R11 R10 K167 ["Position"]
     1340 GETIMPORT                        R11 K173 [Vector2.new]
     1342 LOADK                            R12 K128 [0.5]
     1343 LOADK                            R13 K128 [0.5]
     1344 CALL                             R11 2 1
     1345 SETTABLEKS                       R11 R10 K168 ["AnchorPoint"]
     1347 LOADN                            R11 1
     1348 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
     1350 LOADN                            R11 0
     1351 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
     1353 LOADK                            R11 K191 ["$White"]
     1354 SETTABLEKS                       R11 R10 K189 ["ImageColor3"]
     1356 LOADN                            R11 3
     1357 SETTABLEKS                       R11 R10 K200 ["ZIndex"]
     1359 SETTABLEKS                       R10 R9 K203 [".toggle-knob-shadow"]
     1361 DUPTABLE                         R10 K193 [{"TextSize", "FontFace", "TextColor3"}]
     1362 LOADN                            R11 14
     1363 SETTABLEKS                       R11 R10 K18 ["TextSize"]
     1365 LOADK                            R11 K26 ["$Font"]
     1366 SETTABLEKS                       R11 R10 K19 ["FontFace"]
     1368 LOADK                            R11 K27 ["$ContentEmphasis"]
     1369 SETTABLEKS                       R11 R10 K20 ["TextColor3"]
     1371 SETTABLEKS                       R10 R9 K204 [".toggle-label"]
     1373 DUPTABLE                         R10 K205 [{"tags", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
     1374 LOADK                            R11 K206 ["corner-6 row auto-xy"]
     1375 SETTABLEKS                       R11 R10 K118 ["tags"]
     1377 LOADK                            R11 K113 ["$Surface_200"]
     1378 SETTABLEKS                       R11 R10 K107 ["BackgroundColor3"]
     1380 LOADN                            R11 0
     1381 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
     1383 LOADN                            R11 0
     1384 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
     1386 SETTABLEKS                       R10 R9 K207 [".segmented"]
     1388 NEWTABLE                         R10 4 1
     1390 LOADK                            R12 K208 ["corner-4 pad-8 auto-xy"]
     1391 SETTABLEKS                       R12 R10 K118 ["tags"]
     1393 LOADN                            R12 1
     1394 SETTABLEKS                       R12 R10 K17 ["BackgroundTransparency"]
     1396 LOADK                            R12 K119 [""]
     1397 SETTABLEKS                       R12 R10 K120 ["Text"]
     1399 LOADN                            R12 0
     1400 SETTABLEKS                       R12 R10 K16 ["BorderSizePixel"]
     1402 NEWTABLE                         R11 2 0
     1404 DUPTABLE                         R12 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
     1405 LOADN                            R13 0
     1406 SETTABLEKS                       R13 R12 K17 ["BackgroundTransparency"]
     1408 LOADK                            R13 K122 ["$StateHover"]
     1409 SETTABLEKS                       R13 R12 K107 ["BackgroundColor3"]
     1411 SETTABLEKS                       R12 R11 K123 [":hover"]
     1413 DUPTABLE                         R12 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
     1414 LOADN                            R13 0
     1415 SETTABLEKS                       R13 R12 K17 ["BackgroundTransparency"]
     1417 LOADK                            R13 K115 ["$Surface_300"]
     1418 SETTABLEKS                       R13 R12 K107 ["BackgroundColor3"]
     1420 SETTABLEKS                       R12 R11 K209 [".state-selected"]
     1422 SETLIST                          R10 R11 1 [1]
     1424 SETTABLEKS                       R10 R9 K210 [".segmented-item"]
     1426 DUPTABLE                         R10 K193 [{"TextSize", "FontFace", "TextColor3"}]
     1427 LOADN                            R11 13
     1428 SETTABLEKS                       R11 R10 K18 ["TextSize"]
     1430 LOADK                            R11 K26 ["$Font"]
     1431 SETTABLEKS                       R11 R10 K19 ["FontFace"]
     1433 LOADK                            R11 K27 ["$ContentEmphasis"]
     1434 SETTABLEKS                       R11 R10 K20 ["TextColor3"]
     1436 SETTABLEKS                       R10 R9 K211 [".segmented-label"]
     1438 NEWTABLE                         R10 8 1
     1440 LOADK                            R12 K212 ["corner-6 row gap-4 pad-8 auto-xy"]
     1441 SETTABLEKS                       R12 R10 K118 ["tags"]
     1443 LOADK                            R12 K115 ["$Surface_300"]
     1444 SETTABLEKS                       R12 R10 K107 ["BackgroundColor3"]
     1446 LOADN                            R12 0
     1447 SETTABLEKS                       R12 R10 K17 ["BackgroundTransparency"]
     1449 LOADK                            R12 K119 [""]
     1450 SETTABLEKS                       R12 R10 K120 ["Text"]
     1452 LOADN                            R12 0
     1453 SETTABLEKS                       R12 R10 K16 ["BorderSizePixel"]
     1455 NEWTABLE                         R11 4 0
     1457 DUPTABLE                         R12 K181 [{"Thickness", "Color", "ApplyStrokeMode"}]
     1458 LOADN                            R13 1
     1459 SETTABLEKS                       R13 R12 K178 ["Thickness"]
     1461 LOADK                            R13 K182 ["$StrokeDefault"]
     1462 SETTABLEKS                       R13 R12 K179 ["Color"]
     1464 GETIMPORT                        R13 K184 [Enum.ApplyStrokeMode.Border]
     1466 SETTABLEKS                       R13 R12 K180 ["ApplyStrokeMode"]
     1468 SETTABLEKS                       R12 R11 K185 ["::UIStroke"]
     1470 DUPTABLE                         R12 K121 [{"BackgroundColor3"}]
     1471 LOADK                            R13 K122 ["$StateHover"]
     1472 SETTABLEKS                       R13 R12 K107 ["BackgroundColor3"]
     1474 SETTABLEKS                       R12 R11 K123 [":hover"]
     1476 NEWTABLE                         R12 1 1
     1478 LOADK                            R14 K122 ["$StateHover"]
     1479 SETTABLEKS                       R14 R12 K107 ["BackgroundColor3"]
     1481 NEWTABLE                         R13 1 0
     1483 DUPTABLE                         R14 K186 [{"Color"}]
     1484 LOADK                            R15 K213 ["$SystemEmphasis"]
     1485 SETTABLEKS                       R15 R14 K179 ["Color"]
     1487 SETTABLEKS                       R14 R13 K185 ["::UIStroke"]
     1489 SETLIST                          R12 R13 1 [1]
     1491 SETTABLEKS                       R12 R11 K214 [".state-open"]
     1493 SETLIST                          R10 R11 1 [1]
     1495 SETTABLEKS                       R10 R9 K215 [".select"]
     1497 DUPTABLE                         R10 K193 [{"TextSize", "FontFace", "TextColor3"}]
     1498 LOADN                            R11 14
     1499 SETTABLEKS                       R11 R10 K18 ["TextSize"]
     1501 LOADK                            R11 K26 ["$Font"]
     1502 SETTABLEKS                       R11 R10 K19 ["FontFace"]
     1504 LOADK                            R11 K27 ["$ContentEmphasis"]
     1505 SETTABLEKS                       R11 R10 K20 ["TextColor3"]
     1507 SETTABLEKS                       R10 R9 K216 [".select-value"]
     1509 DUPTABLE                         R10 K217 [{"Size", "BackgroundTransparency", "ScaleType", "ImageColor3"}]
     1510 GETIMPORT                        R11 K155 [UDim2.fromOffset]
     1512 LOADN                            R12 12
     1513 LOADN                            R13 12
     1514 CALL                             R11 2 1
     1515 SETTABLEKS                       R11 R10 K42 ["Size"]
     1517 LOADN                            R11 1
     1518 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
     1520 GETIMPORT                        R11 K157 [Enum.ScaleType.Fit]
     1522 SETTABLEKS                       R11 R10 K152 ["ScaleType"]
     1524 LOADK                            R11 K218 ["$ContentDefault"]
     1525 SETTABLEKS                       R11 R10 K189 ["ImageColor3"]
     1527 SETTABLEKS                       R10 R9 K219 [".select-arrow"]
     1529 NEWTABLE                         R10 2 1
     1531 LOADK                            R12 K220 ["corner-6 col gap-2 pad-4 surface-200"]
     1532 SETTABLEKS                       R12 R10 K118 ["tags"]
     1534 LOADN                            R12 0
     1535 SETTABLEKS                       R12 R10 K16 ["BorderSizePixel"]
     1537 NEWTABLE                         R11 1 0
     1539 DUPTABLE                         R12 K181 [{"Thickness", "Color", "ApplyStrokeMode"}]
     1540 LOADN                            R13 1
     1541 SETTABLEKS                       R13 R12 K178 ["Thickness"]
     1543 LOADK                            R13 K182 ["$StrokeDefault"]
     1544 SETTABLEKS                       R13 R12 K179 ["Color"]
     1546 GETIMPORT                        R13 K184 [Enum.ApplyStrokeMode.Border]
     1548 SETTABLEKS                       R13 R12 K180 ["ApplyStrokeMode"]
     1550 SETTABLEKS                       R12 R11 K185 ["::UIStroke"]
     1552 SETLIST                          R10 R11 1 [1]
     1554 SETTABLEKS                       R10 R9 K221 [".select-dropdown"]
     1556 NEWTABLE                         R10 4 1
     1558 LOADK                            R12 K222 ["corner-4 pad-8 auto-xy fill-x"]
     1559 SETTABLEKS                       R12 R10 K118 ["tags"]
     1561 LOADN                            R12 1
     1562 SETTABLEKS                       R12 R10 K17 ["BackgroundTransparency"]
     1564 LOADK                            R12 K119 [""]
     1565 SETTABLEKS                       R12 R10 K120 ["Text"]
     1567 LOADN                            R12 0
     1568 SETTABLEKS                       R12 R10 K16 ["BorderSizePixel"]
     1570 NEWTABLE                         R11 2 0
     1572 DUPTABLE                         R12 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
     1573 LOADN                            R13 0
     1574 SETTABLEKS                       R13 R12 K17 ["BackgroundTransparency"]
     1576 LOADK                            R13 K122 ["$StateHover"]
     1577 SETTABLEKS                       R13 R12 K107 ["BackgroundColor3"]
     1579 SETTABLEKS                       R12 R11 K123 [":hover"]
     1581 DUPTABLE                         R12 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
     1582 LOADN                            R13 0
     1583 SETTABLEKS                       R13 R12 K17 ["BackgroundTransparency"]
     1585 LOADK                            R13 K115 ["$Surface_300"]
     1586 SETTABLEKS                       R13 R12 K107 ["BackgroundColor3"]
     1588 SETTABLEKS                       R12 R11 K209 [".state-selected"]
     1590 SETLIST                          R10 R11 1 [1]
     1592 SETTABLEKS                       R10 R9 K223 [".select-option"]
     1594 DUPTABLE                         R10 K224 [{"tags"}]
     1595 LOADK                            R11 K175 ["box row gap-8 auto-xy"]
     1596 SETTABLEKS                       R11 R10 K118 ["tags"]
     1598 SETTABLEKS                       R10 R9 K225 [".slider"]
     1600 DUPTABLE                         R10 K226 [{"tags", "Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
     1601 LOADK                            R11 K177 ["corner-4"]
     1602 SETTABLEKS                       R11 R10 K118 ["tags"]
     1604 GETIMPORT                        R11 K155 [UDim2.fromOffset]
     1606 LOADN                            R12 120
     1607 LOADN                            R13 6
     1608 CALL                             R11 2 1
     1609 SETTABLEKS                       R11 R10 K42 ["Size"]
     1611 LOADK                            R11 K182 ["$StrokeDefault"]
     1612 SETTABLEKS                       R11 R10 K107 ["BackgroundColor3"]
     1614 LOADN                            R11 0
     1615 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
     1617 LOADN                            R11 0
     1618 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
     1620 SETTABLEKS                       R10 R9 K227 [".slider-track"]
     1622 DUPTABLE                         R10 K205 [{"tags", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
     1623 LOADK                            R11 K177 ["corner-4"]
     1624 SETTABLEKS                       R11 R10 K118 ["tags"]
     1626 LOADK                            R11 K213 ["$SystemEmphasis"]
     1627 SETTABLEKS                       R11 R10 K107 ["BackgroundColor3"]
     1629 LOADN                            R11 0
     1630 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
     1632 LOADN                            R11 0
     1633 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
     1635 SETTABLEKS                       R10 R9 K228 [".slider-fill"]
     1637 NEWTABLE                         R10 8 1
     1639 GETIMPORT                        R12 K155 [UDim2.fromOffset]
     1641 LOADN                            R13 14
     1642 LOADN                            R14 14
     1643 CALL                             R12 2 1
     1644 SETTABLEKS                       R12 R10 K42 ["Size"]
     1646 LOADK                            R12 K191 ["$White"]
     1647 SETTABLEKS                       R12 R10 K107 ["BackgroundColor3"]
     1649 LOADN                            R12 0
     1650 SETTABLEKS                       R12 R10 K17 ["BackgroundTransparency"]
     1652 LOADN                            R12 0
     1653 SETTABLEKS                       R12 R10 K16 ["BorderSizePixel"]
     1655 LOADN                            R12 2
     1656 SETTABLEKS                       R12 R10 K200 ["ZIndex"]
     1658 NEWTABLE                         R11 1 0
     1660 DUPTABLE                         R12 K102 [{"CornerRadius"}]
     1661 GETIMPORT                        R13 K80 [UDim.new]
     1663 LOADK                            R14 K128 [0.5]
     1664 LOADN                            R15 0
     1665 CALL                             R13 2 1
     1666 SETTABLEKS                       R13 R12 K101 ["CornerRadius"]
     1668 SETTABLEKS                       R12 R11 K103 ["::UICorner"]
     1670 SETLIST                          R10 R11 1 [1]
     1672 SETTABLEKS                       R10 R9 K229 [".slider-thumb"]
     1674 DUPTABLE                         R10 K193 [{"TextSize", "FontFace", "TextColor3"}]
     1675 LOADN                            R11 13
     1676 SETTABLEKS                       R11 R10 K18 ["TextSize"]
     1678 LOADK                            R11 K26 ["$Font"]
     1679 SETTABLEKS                       R11 R10 K19 ["FontFace"]
     1681 LOADK                            R11 K218 ["$ContentDefault"]
     1682 SETTABLEKS                       R11 R10 K20 ["TextColor3"]
     1684 SETTABLEKS                       R10 R9 K230 [".slider-value"]
     1686 NEWTABLE                         R10 4 1
     1688 LOADK                            R12 K231 ["corner-6 row gap-2 auto-xy"]
     1689 SETTABLEKS                       R12 R10 K118 ["tags"]
     1691 LOADK                            R12 K115 ["$Surface_300"]
     1692 SETTABLEKS                       R12 R10 K107 ["BackgroundColor3"]
     1694 LOADN                            R12 0
     1695 SETTABLEKS                       R12 R10 K17 ["BackgroundTransparency"]
     1697 LOADN                            R12 0
     1698 SETTABLEKS                       R12 R10 K16 ["BorderSizePixel"]
     1700 NEWTABLE                         R11 1 0
     1702 DUPTABLE                         R12 K181 [{"Thickness", "Color", "ApplyStrokeMode"}]
     1703 LOADN                            R13 1
     1704 SETTABLEKS                       R13 R12 K178 ["Thickness"]
     1706 LOADK                            R13 K182 ["$StrokeDefault"]
     1707 SETTABLEKS                       R13 R12 K179 ["Color"]
     1709 GETIMPORT                        R13 K184 [Enum.ApplyStrokeMode.Border]
     1711 SETTABLEKS                       R13 R12 K180 ["ApplyStrokeMode"]
     1713 SETTABLEKS                       R12 R11 K185 ["::UIStroke"]
     1715 SETLIST                          R10 R11 1 [1]
     1717 SETTABLEKS                       R10 R9 K232 [".spinbox"]
     1719 DUPTABLE                         R10 K233 [{"BackgroundTransparency", "BorderSizePixel", "Size", "TextSize", "FontFace", "TextColor3", "TextXAlignment"}]
     1720 LOADN                            R11 1
     1721 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
     1723 LOADN                            R11 0
     1724 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
     1726 GETIMPORT                        R11 K155 [UDim2.fromOffset]
     1728 LOADN                            R12 48
     1729 LOADN                            R13 24
     1730 CALL                             R11 2 1
     1731 SETTABLEKS                       R11 R10 K42 ["Size"]
     1733 LOADN                            R11 14
     1734 SETTABLEKS                       R11 R10 K18 ["TextSize"]
     1736 LOADK                            R11 K26 ["$Font"]
     1737 SETTABLEKS                       R11 R10 K19 ["FontFace"]
     1739 LOADK                            R11 K27 ["$ContentEmphasis"]
     1740 SETTABLEKS                       R11 R10 K20 ["TextColor3"]
     1742 GETIMPORT                        R11 K234 [Enum.TextXAlignment.Center]
     1744 SETTABLEKS                       R11 R10 K21 ["TextXAlignment"]
     1746 SETTABLEKS                       R10 R9 K235 [".spinbox-input"]
     1748 NEWTABLE                         R10 8 1
     1750 LOADK                            R12 K177 ["corner-4"]
     1751 SETTABLEKS                       R12 R10 K118 ["tags"]
     1753 GETIMPORT                        R12 K155 [UDim2.fromOffset]
     1755 LOADN                            R13 20
     1756 LOADN                            R14 24
     1757 CALL                             R12 2 1
     1758 SETTABLEKS                       R12 R10 K42 ["Size"]
     1760 LOADN                            R12 1
     1761 SETTABLEKS                       R12 R10 K17 ["BackgroundTransparency"]
     1763 LOADK                            R12 K119 [""]
     1764 SETTABLEKS                       R12 R10 K120 ["Text"]
     1766 LOADN                            R12 0
     1767 SETTABLEKS                       R12 R10 K16 ["BorderSizePixel"]
     1769 NEWTABLE                         R11 1 0
     1771 DUPTABLE                         R12 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
     1772 LOADN                            R13 0
     1773 SETTABLEKS                       R13 R12 K17 ["BackgroundTransparency"]
     1775 LOADK                            R13 K122 ["$StateHover"]
     1776 SETTABLEKS                       R13 R12 K107 ["BackgroundColor3"]
     1778 SETTABLEKS                       R12 R11 K123 [":hover"]
     1780 SETLIST                          R10 R11 1 [1]
     1782 SETTABLEKS                       R10 R9 K236 [".spinbox-btn"]
     1784 DUPTABLE                         R10 K237 [{"TextSize", "FontFace", "TextColor3", "Position", "AnchorPoint"}]
     1785 LOADN                            R11 16
     1786 SETTABLEKS                       R11 R10 K18 ["TextSize"]
     1788 LOADK                            R11 K26 ["$Font"]
     1789 SETTABLEKS                       R11 R10 K19 ["FontFace"]
     1791 LOADK                            R11 K218 ["$ContentDefault"]
     1792 SETTABLEKS                       R11 R10 K20 ["TextColor3"]
     1794 GETIMPORT                        R11 K171 [UDim2.fromScale]
     1796 LOADK                            R12 K128 [0.5]
     1797 LOADK                            R13 K128 [0.5]
     1798 CALL                             R11 2 1
     1799 SETTABLEKS                       R11 R10 K167 ["Position"]
     1801 GETIMPORT                        R11 K173 [Vector2.new]
     1803 LOADK                            R12 K128 [0.5]
     1804 LOADK                            R13 K128 [0.5]
     1805 CALL                             R11 2 1
     1806 SETTABLEKS                       R11 R10 K168 ["AnchorPoint"]
     1808 SETTABLEKS                       R10 R9 K238 [".spinbox-btn-label"]
     1810 DUPTABLE                         R10 K239 [{"tags", "BorderSizePixel"}]
     1811 LOADK                            R11 K240 ["box row gap-2 auto-xy"]
     1812 SETTABLEKS                       R11 R10 K118 ["tags"]
     1814 LOADN                            R11 0
     1815 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
     1817 SETTABLEKS                       R10 R9 K241 [".tabs"]
     1819 NEWTABLE                         R10 4 1
     1821 LOADK                            R12 K242 ["col auto-xy pad-8"]
     1822 SETTABLEKS                       R12 R10 K118 ["tags"]
     1824 LOADN                            R12 1
     1825 SETTABLEKS                       R12 R10 K17 ["BackgroundTransparency"]
     1827 LOADK                            R12 K119 [""]
     1828 SETTABLEKS                       R12 R10 K120 ["Text"]
     1830 LOADN                            R12 0
     1831 SETTABLEKS                       R12 R10 K16 ["BorderSizePixel"]
     1833 NEWTABLE                         R11 1 0
     1835 DUPTABLE                         R12 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
     1836 LOADN                            R13 0
     1837 SETTABLEKS                       R13 R12 K17 ["BackgroundTransparency"]
     1839 LOADK                            R13 K122 ["$StateHover"]
     1840 SETTABLEKS                       R13 R12 K107 ["BackgroundColor3"]
     1842 SETTABLEKS                       R12 R11 K123 [":hover"]
     1844 SETLIST                          R10 R11 1 [1]
     1846 SETTABLEKS                       R10 R9 K243 [".tab"]
     1848 NEWTABLE                         R10 4 1
     1850 LOADN                            R12 14
     1851 SETTABLEKS                       R12 R10 K18 ["TextSize"]
     1853 LOADK                            R12 K26 ["$Font"]
     1854 SETTABLEKS                       R12 R10 K19 ["FontFace"]
     1856 LOADK                            R12 K218 ["$ContentDefault"]
     1857 SETTABLEKS                       R12 R10 K20 ["TextColor3"]
     1859 NEWTABLE                         R11 1 0
     1861 DUPTABLE                         R12 K159 [{"TextColor3"}]
     1862 LOADK                            R13 K27 ["$ContentEmphasis"]
     1863 SETTABLEKS                       R13 R12 K20 ["TextColor3"]
     1865 SETTABLEKS                       R12 R11 K209 [".state-selected"]
     1867 SETLIST                          R10 R11 1 [1]
     1869 SETTABLEKS                       R10 R9 K244 [".tab-label"]
     1871 NEWTABLE                         R10 4 1
     1873 GETIMPORT                        R12 K46 [UDim2.new]
     1875 LOADN                            R13 0
     1876 LOADN                            R14 0
     1877 LOADN                            R15 0
     1878 LOADN                            R16 2
     1879 CALL                             R12 4 1
     1880 SETTABLEKS                       R12 R10 K42 ["Size"]
     1882 LOADN                            R12 1
     1883 SETTABLEKS                       R12 R10 K17 ["BackgroundTransparency"]
     1885 LOADN                            R12 0
     1886 SETTABLEKS                       R12 R10 K16 ["BorderSizePixel"]
     1888 LOADN                            R12 2
     1889 SETTABLEKS                       R12 R10 K65 ["LayoutOrder"]
     1891 NEWTABLE                         R11 2 0
     1893 DUPTABLE                         R12 K246 [{"FlexMode", "ItemLineAlignment"}]
     1894 GETIMPORT                        R13 K248 [Enum.UIFlexMode.Fill]
     1896 SETTABLEKS                       R13 R12 K49 ["FlexMode"]
     1898 GETIMPORT                        R13 K250 [Enum.ItemLineAlignment.Stretch]
     1900 SETTABLEKS                       R13 R12 K245 ["ItemLineAlignment"]
     1902 SETTABLEKS                       R12 R11 K54 ["::UIFlexItem"]
     1904 DUPTABLE                         R12 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
     1905 LOADN                            R13 0
     1906 SETTABLEKS                       R13 R12 K17 ["BackgroundTransparency"]
     1908 LOADK                            R13 K213 ["$SystemEmphasis"]
     1909 SETTABLEKS                       R13 R12 K107 ["BackgroundColor3"]
     1911 SETTABLEKS                       R12 R11 K209 [".state-selected"]
     1913 SETLIST                          R10 R11 1 [1]
     1915 SETTABLEKS                       R10 R9 K251 [".tab-indicator"]
     1917 DUPTABLE                         R10 K205 [{"tags", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
     1918 LOADK                            R11 K206 ["corner-6 row auto-xy"]
     1919 SETTABLEKS                       R11 R10 K118 ["tags"]
     1921 LOADK                            R11 K115 ["$Surface_300"]
     1922 SETTABLEKS                       R11 R10 K107 ["BackgroundColor3"]
     1924 LOADN                            R11 0
     1925 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
     1927 LOADN                            R11 0
     1928 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
     1930 SETTABLEKS                       R10 R9 K252 [".split-button"]
     1932 NEWTABLE                         R10 4 1
     1934 LOADK                            R12 K253 ["pad-8 auto-xy"]
     1935 SETTABLEKS                       R12 R10 K118 ["tags"]
     1937 LOADN                            R12 1
     1938 SETTABLEKS                       R12 R10 K17 ["BackgroundTransparency"]
     1940 LOADK                            R12 K119 [""]
     1941 SETTABLEKS                       R12 R10 K120 ["Text"]
     1943 LOADN                            R12 0
     1944 SETTABLEKS                       R12 R10 K16 ["BorderSizePixel"]
     1946 NEWTABLE                         R11 1 0
     1948 DUPTABLE                         R12 K254 [{"BackgroundColor3", "BackgroundTransparency"}]
     1949 LOADK                            R13 K122 ["$StateHover"]
     1950 SETTABLEKS                       R13 R12 K107 ["BackgroundColor3"]
     1952 LOADN                            R13 0
     1953 SETTABLEKS                       R13 R12 K17 ["BackgroundTransparency"]
     1955 SETTABLEKS                       R12 R11 K123 [":hover"]
     1957 SETLIST                          R10 R11 1 [1]
     1959 SETTABLEKS                       R10 R9 K255 [".split-main"]
     1961 DUPTABLE                         R10 K256 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
     1962 GETIMPORT                        R11 K155 [UDim2.fromOffset]
     1964 LOADN                            R12 1
     1965 LOADN                            R13 20
     1966 CALL                             R11 2 1
     1967 SETTABLEKS                       R11 R10 K42 ["Size"]
     1969 LOADK                            R11 K182 ["$StrokeDefault"]
     1970 SETTABLEKS                       R11 R10 K107 ["BackgroundColor3"]
     1972 LOADN                            R11 0
     1973 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
     1975 LOADN                            R11 0
     1976 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
     1978 SETTABLEKS                       R10 R9 K257 [".split-divider"]
     1980 NEWTABLE                         R10 8 1
     1982 LOADK                            R12 K143 ["pad-4"]
     1983 SETTABLEKS                       R12 R10 K118 ["tags"]
     1985 GETIMPORT                        R12 K155 [UDim2.fromOffset]
     1987 LOADN                            R13 24
     1988 LOADN                            R14 0
     1989 CALL                             R12 2 1
     1990 SETTABLEKS                       R12 R10 K42 ["Size"]
     1992 GETIMPORT                        R12 K40 [Enum.AutomaticSize.Y]
     1994 SETTABLEKS                       R12 R10 K15 ["AutomaticSize"]
     1996 LOADN                            R12 1
     1997 SETTABLEKS                       R12 R10 K17 ["BackgroundTransparency"]
     1999 LOADK                            R12 K119 [""]
     2000 SETTABLEKS                       R12 R10 K120 ["Text"]
     2002 LOADN                            R12 0
     2003 SETTABLEKS                       R12 R10 K16 ["BorderSizePixel"]
     2005 NEWTABLE                         R11 1 0
     2007 DUPTABLE                         R12 K254 [{"BackgroundColor3", "BackgroundTransparency"}]
     2008 LOADK                            R13 K122 ["$StateHover"]
     2009 SETTABLEKS                       R13 R12 K107 ["BackgroundColor3"]
     2011 LOADN                            R13 0
     2012 SETTABLEKS                       R13 R12 K17 ["BackgroundTransparency"]
     2014 SETTABLEKS                       R12 R11 K123 [":hover"]
     2016 SETLIST                          R10 R11 1 [1]
     2018 SETTABLEKS                       R10 R9 K258 [".split-arrow"]
     2020 DUPTABLE                         R10 K169 [{"Size", "BackgroundTransparency", "ScaleType", "Position", "AnchorPoint"}]
     2021 GETIMPORT                        R11 K155 [UDim2.fromOffset]
     2023 LOADN                            R12 10
     2024 LOADN                            R13 10
     2025 CALL                             R11 2 1
     2026 SETTABLEKS                       R11 R10 K42 ["Size"]
     2028 LOADN                            R11 1
     2029 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
     2031 GETIMPORT                        R11 K157 [Enum.ScaleType.Fit]
     2033 SETTABLEKS                       R11 R10 K152 ["ScaleType"]
     2035 GETIMPORT                        R11 K171 [UDim2.fromScale]
     2037 LOADK                            R12 K128 [0.5]
     2038 LOADK                            R13 K128 [0.5]
     2039 CALL                             R11 2 1
     2040 SETTABLEKS                       R11 R10 K167 ["Position"]
     2042 GETIMPORT                        R11 K173 [Vector2.new]
     2044 LOADK                            R12 K128 [0.5]
     2045 LOADK                            R13 K128 [0.5]
     2046 CALL                             R11 2 1
     2047 SETTABLEKS                       R11 R10 K168 ["AnchorPoint"]
     2049 SETTABLEKS                       R10 R9 K259 [".split-arrow-icon"]
     2051 DUPTABLE                         R10 K256 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
     2052 GETIMPORT                        R11 K46 [UDim2.new]
     2054 LOADN                            R12 1
     2055 LOADN                            R13 0
     2056 LOADN                            R14 0
     2057 LOADN                            R15 1
     2058 CALL                             R11 4 1
     2059 SETTABLEKS                       R11 R10 K42 ["Size"]
     2061 LOADK                            R11 K115 ["$Surface_300"]
     2062 SETTABLEKS                       R11 R10 K107 ["BackgroundColor3"]
     2064 LOADN                            R11 0
     2065 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
     2067 LOADN                            R11 0
     2068 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
     2070 SETTABLEKS                       R10 R9 K260 [".separator-h"]
     2072 DUPTABLE                         R10 K256 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
     2073 GETIMPORT                        R11 K155 [UDim2.fromOffset]
     2075 LOADN                            R12 1
     2076 LOADN                            R13 24
     2077 CALL                             R11 2 1
     2078 SETTABLEKS                       R11 R10 K42 ["Size"]
     2080 LOADK                            R11 K115 ["$Surface_300"]
     2081 SETTABLEKS                       R11 R10 K107 ["BackgroundColor3"]
     2083 LOADN                            R11 0
     2084 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
     2086 LOADN                            R11 0
     2087 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
     2089 SETTABLEKS                       R10 R9 K261 [".separator-v"]
     2091 DUPTABLE                         R10 K193 [{"TextSize", "FontFace", "TextColor3"}]
     2092 LOADN                            R11 20
     2093 SETTABLEKS                       R11 R10 K18 ["TextSize"]
     2095 LOADK                            R11 K26 ["$Font"]
     2096 SETTABLEKS                       R11 R10 K19 ["FontFace"]
     2098 LOADK                            R11 K27 ["$ContentEmphasis"]
     2099 SETTABLEKS                       R11 R10 K20 ["TextColor3"]
     2101 SETTABLEKS                       R10 R9 K262 [".text-title"]
     2103 DUPTABLE                         R10 K193 [{"TextSize", "FontFace", "TextColor3"}]
     2104 LOADN                            R11 16
     2105 SETTABLEKS                       R11 R10 K18 ["TextSize"]
     2107 LOADK                            R11 K26 ["$Font"]
     2108 SETTABLEKS                       R11 R10 K19 ["FontFace"]
     2110 LOADK                            R11 K27 ["$ContentEmphasis"]
     2111 SETTABLEKS                       R11 R10 K20 ["TextColor3"]
     2113 SETTABLEKS                       R10 R9 K263 [".text-subtitle"]
     2115 DUPTABLE                         R10 K193 [{"TextSize", "FontFace", "TextColor3"}]
     2116 LOADN                            R11 14
     2117 SETTABLEKS                       R11 R10 K18 ["TextSize"]
     2119 LOADK                            R11 K26 ["$Font"]
     2120 SETTABLEKS                       R11 R10 K19 ["FontFace"]
     2122 LOADK                            R11 K27 ["$ContentEmphasis"]
     2123 SETTABLEKS                       R11 R10 K20 ["TextColor3"]
     2125 SETTABLEKS                       R10 R9 K264 [".text-body"]
     2127 DUPTABLE                         R10 K193 [{"TextSize", "FontFace", "TextColor3"}]
     2128 LOADN                            R11 12
     2129 SETTABLEKS                       R11 R10 K18 ["TextSize"]
     2131 LOADK                            R11 K26 ["$Font"]
     2132 SETTABLEKS                       R11 R10 K19 ["FontFace"]
     2134 LOADK                            R11 K218 ["$ContentDefault"]
     2135 SETTABLEKS                       R11 R10 K20 ["TextColor3"]
     2137 SETTABLEKS                       R10 R9 K265 [".text-caption"]
     2139 DUPTABLE                         R10 K267 [{"TextSize", "Font", "TextColor3"}]
     2140 LOADN                            R11 15
     2141 SETTABLEKS                       R11 R10 K18 ["TextSize"]
     2143 LOADK                            R11 K12 ["ThemeProvider"]
     2144 SETTABLEKS                       R11 R10 K266 ["Font"]
     2146 LOADK                            R11 K27 ["$ContentEmphasis"]
     2147 SETTABLEKS                       R11 R10 K20 ["TextColor3"]
     2149 SETTABLEKS                       R10 R9 K269 [".text-label"]
     2151 DUPTABLE                         R10 K271 [{"TextTruncate"}]
     2152 GETIMPORT                        R11 K273 [Enum.TextTruncate.AtEnd]
     2154 SETTABLEKS                       R11 R10 K270 ["TextTruncate"]
     2156 SETTABLEKS                       R10 R9 K274 [".text-truncate-end"]
     2158 MOVE                             R10 R2
     2159 LOADK                            R11 K19 ["FontFace"]
     2160 NEWTABLE                         R12 0 0
     2162 NEWTABLE                         R13 0 3
     2164 MOVE                             R14 R3
     2165 NEWTABLE                         R15 1 2
     2167 LOADK                            R18 K20 ["TextColor3"]
     2168 SETTABLEKS                       R18 R15 K277 ["Name"]
     2170 MOVE                             R16 R4
     2171 DUPTABLE                         R17 K280 [{"Name", "tokens", "rules"}]
     2172 LOADK                            R18 K13 ["DarkTokens"]
     2173 SETTABLEKS                       R18 R17 K277 ["Name"]
     2175 SETTABLEKS                       R7 R17 K278 ["tokens"]
     2177 NEWTABLE                         R18 0 0
     2179 SETTABLEKS                       R18 R17 K279 ["rules"]
     2181 CALL                             R16 1 1
     2182 MOVE                             R17 R4
     2183 DUPTABLE                         R18 K280 [{"Name", "tokens", "rules"}]
     2184 LOADK                            R19 K14 ["LightTokens"]
     2185 SETTABLEKS                       R19 R18 K277 ["Name"]
     2187 SETTABLEKS                       R8 R18 K278 ["tokens"]
     2189 NEWTABLE                         R19 0 0
     2191 SETTABLEKS                       R19 R18 K279 ["rules"]
     2193 CALL                             R17 1 -1
     2194 SETLIST                          R15 R16 -1 [1]
     2196 CALL                             R14 1 1
     2197 MOVE                             R15 R4
     2198 DUPTABLE                         R16 K280 [{"Name", "tokens", "rules"}]
     2199 LOADK                            R17 K25 [Enum.AutomaticSize.XY]
     2200 SETTABLEKS                       R17 R16 K277 ["Name"]
     2202 NEWTABLE                         R17 0 0
     2204 SETTABLEKS                       R17 R16 K278 ["tokens"]
     2206 SETTABLEKS                       R9 R16 K279 ["rules"]
     2208 CALL                             R15 1 1
     2209 MOVE                             R16 R5
     2210 NEWTABLE                         R17 0 0
     2212 CALL                             R16 1 -1
     2213 SETLIST                          R13 R14 -1 [1]
     2215 DUPCLOSURE                       R14 K282 [PROTO_1]
     2216 CAPTURE                          VAL R6
     2217 CALL                             R10 4 1
     2218 RETURN                           R10 1
