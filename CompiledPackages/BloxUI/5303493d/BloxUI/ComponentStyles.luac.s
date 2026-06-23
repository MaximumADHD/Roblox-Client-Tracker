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
        3 LOADK                            R2 K2 ["BloxUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["template"]
       16 GETTABLEKS                       R4 R2 K9 ["Folder"]
       18 GETTABLEKS                       R5 R2 K10 ["StyleSheet"]
       20 GETTABLEKS                       R6 R2 K11 ["StyleLink"]
       22 GETIMPORT                        R7 K6 [require]
       24 GETIMPORT                        R8 K1 [script]
       26 GETTABLEKS                       R8 R8 K4 ["Parent"]
       28 GETTABLEKS                       R8 R8 K12 ["ThemeProvider"]
       30 CALL                             R7 1 1
       31 GETIMPORT                        R8 K6 [require]
       33 GETIMPORT                        R9 K1 [script]
       35 GETTABLEKS                       R9 R9 K4 ["Parent"]
       37 GETTABLEKS                       R9 R9 K13 ["DarkTokens"]
       39 CALL                             R8 1 1
       40 GETIMPORT                        R9 K6 [require]
       42 GETIMPORT                        R10 K1 [script]
       44 GETTABLEKS                       R10 R10 K4 ["Parent"]
       46 GETTABLEKS                       R10 R10 K14 ["LightTokens"]
       48 CALL                             R9 1 1
       49 NEWTABLE                         R10 128 0
       51 DUPTABLE                         R11 K22 [{"AutomaticSize", "BorderSizePixel", "BackgroundTransparency", "TextSize", "FontFace", "TextColor3", "TextXAlignment"}]
       52 GETIMPORT                        R12 K25 [Enum.AutomaticSize.XY]
       54 SETTABLEKS                       R12 R11 K15 ["AutomaticSize"]
       56 LOADN                            R12 0
       57 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
       59 LOADN                            R12 1
       60 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
       62 LOADN                            R12 14
       63 SETTABLEKS                       R12 R11 K18 ["TextSize"]
       65 LOADK                            R12 K26 ["$Font"]
       66 SETTABLEKS                       R12 R11 K19 ["FontFace"]
       68 LOADK                            R12 K27 ["$ContentEmphasis"]
       69 SETTABLEKS                       R12 R11 K20 ["TextColor3"]
       71 GETIMPORT                        R12 K29 [Enum.TextXAlignment.Left]
       73 SETTABLEKS                       R12 R11 K21 ["TextXAlignment"]
       75 SETTABLEKS                       R11 R10 K30 ["TextLabel"]
       77 DUPTABLE                         R11 K32 [{"AutoButtonColor"}]
       78 LOADB                            R12 0
       79 SETTABLEKS                       R12 R11 K31 ["AutoButtonColor"]
       81 SETTABLEKS                       R11 R10 K33 ["TextButton, ImageButton"]
       83 DUPTABLE                         R11 K34 [{"AutomaticSize"}]
       84 GETIMPORT                        R12 K25 [Enum.AutomaticSize.XY]
       86 SETTABLEKS                       R12 R11 K15 ["AutomaticSize"]
       88 SETTABLEKS                       R11 R10 K35 [".auto-xy"]
       90 DUPTABLE                         R11 K34 [{"AutomaticSize"}]
       91 GETIMPORT                        R12 K37 [Enum.AutomaticSize.X]
       93 SETTABLEKS                       R12 R11 K15 ["AutomaticSize"]
       95 SETTABLEKS                       R11 R10 K38 [".auto-x"]
       97 DUPTABLE                         R11 K34 [{"AutomaticSize"}]
       98 GETIMPORT                        R12 K40 [Enum.AutomaticSize.Y]
      100 SETTABLEKS                       R12 R11 K15 ["AutomaticSize"]
      102 SETTABLEKS                       R11 R10 K41 [".auto-y"]
      104 DUPTABLE                         R11 K43 [{"Size"}]
      105 GETIMPORT                        R12 K46 [UDim2.new]
      107 LOADN                            R13 1
      108 LOADN                            R14 0
      109 LOADN                            R15 0
      110 LOADN                            R16 0
      111 CALL                             R12 4 1
      112 SETTABLEKS                       R12 R11 K42 ["Size"]
      114 SETTABLEKS                       R11 R10 K47 [".fill-x"]
      116 DUPTABLE                         R11 K43 [{"Size"}]
      117 GETIMPORT                        R12 K46 [UDim2.new]
      119 LOADN                            R13 0
      120 LOADN                            R14 0
      121 LOADN                            R15 1
      122 LOADN                            R16 0
      123 CALL                             R12 4 1
      124 SETTABLEKS                       R12 R11 K42 ["Size"]
      126 SETTABLEKS                       R11 R10 K48 [".fill-y"]
      128 NEWTABLE                         R11 1 1
      130 GETIMPORT                        R13 K46 [UDim2.new]
      132 LOADN                            R14 0
      133 LOADN                            R15 0
      134 LOADN                            R16 1
      135 LOADN                            R17 0
      136 CALL                             R13 4 1
      137 SETTABLEKS                       R13 R11 K42 ["Size"]
      139 NEWTABLE                         R12 1 0
      141 DUPTABLE                         R13 K50 [{"FlexMode"}]
      142 GETIMPORT                        R14 K53 [Enum.UIFlexMode.Grow]
      144 SETTABLEKS                       R14 R13 K49 ["FlexMode"]
      146 SETTABLEKS                       R13 R12 K54 ["::UIFlexItem"]
      148 SETLIST                          R11 R12 1 [1]
      150 SETTABLEKS                       R11 R10 K55 [".grow-x"]
      152 NEWTABLE                         R11 1 1
      154 GETIMPORT                        R13 K46 [UDim2.new]
      156 LOADN                            R14 1
      157 LOADN                            R15 0
      158 LOADN                            R16 0
      159 LOADN                            R17 0
      160 CALL                             R13 4 1
      161 SETTABLEKS                       R13 R11 K42 ["Size"]
      163 NEWTABLE                         R12 1 0
      165 DUPTABLE                         R13 K50 [{"FlexMode"}]
      166 GETIMPORT                        R14 K53 [Enum.UIFlexMode.Grow]
      168 SETTABLEKS                       R14 R13 K49 ["FlexMode"]
      170 SETTABLEKS                       R13 R12 K54 ["::UIFlexItem"]
      172 SETLIST                          R11 R12 1 [1]
      174 SETTABLEKS                       R11 R10 K56 [".grow-y"]
      176 DUPTABLE                         R11 K57 [{"BackgroundTransparency", "BorderSizePixel"}]
      177 LOADN                            R12 1
      178 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
      180 LOADN                            R12 0
      181 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
      183 SETTABLEKS                       R11 R10 K58 [".box"]
      185 NEWTABLE                         R11 0 1
      187 NEWTABLE                         R12 1 0
      189 DUPTABLE                         R13 K62 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
      190 GETIMPORT                        R14 K64 [Enum.FillDirection.Horizontal]
      192 SETTABLEKS                       R14 R13 K59 ["FillDirection"]
      194 GETIMPORT                        R14 K66 [Enum.SortOrder.LayoutOrder]
      196 SETTABLEKS                       R14 R13 K60 ["SortOrder"]
      198 GETIMPORT                        R14 K68 [Enum.VerticalAlignment.Center]
      200 SETTABLEKS                       R14 R13 K61 ["VerticalAlignment"]
      202 SETTABLEKS                       R13 R12 K69 ["::UIListLayout"]
      204 SETLIST                          R11 R12 1 [1]
      206 SETTABLEKS                       R11 R10 K70 [".row"]
      208 NEWTABLE                         R11 0 1
      210 NEWTABLE                         R12 1 0
      212 DUPTABLE                         R13 K72 [{"FillDirection", "SortOrder", "HorizontalAlignment"}]
      213 GETIMPORT                        R14 K74 [Enum.FillDirection.Vertical]
      215 SETTABLEKS                       R14 R13 K59 ["FillDirection"]
      217 GETIMPORT                        R14 K66 [Enum.SortOrder.LayoutOrder]
      219 SETTABLEKS                       R14 R13 K60 ["SortOrder"]
      221 GETIMPORT                        R14 K75 [Enum.HorizontalAlignment.Left]
      223 SETTABLEKS                       R14 R13 K71 ["HorizontalAlignment"]
      225 SETTABLEKS                       R13 R12 K69 ["::UIListLayout"]
      227 SETLIST                          R11 R12 1 [1]
      229 SETTABLEKS                       R11 R10 K76 [".col"]
      231 NEWTABLE                         R11 0 1
      233 NEWTABLE                         R12 1 0
      235 DUPTABLE                         R13 K78 [{"Padding"}]
      236 GETIMPORT                        R14 K80 [UDim.new]
      238 LOADN                            R15 0
      239 LOADN                            R16 2
      240 CALL                             R14 2 1
      241 SETTABLEKS                       R14 R13 K77 ["Padding"]
      243 SETTABLEKS                       R13 R12 K69 ["::UIListLayout"]
      245 SETLIST                          R11 R12 1 [1]
      247 SETTABLEKS                       R11 R10 K81 [".gap-2"]
      249 NEWTABLE                         R11 0 1
      251 NEWTABLE                         R12 1 0
      253 DUPTABLE                         R13 K78 [{"Padding"}]
      254 GETIMPORT                        R14 K80 [UDim.new]
      256 LOADN                            R15 0
      257 LOADN                            R16 4
      258 CALL                             R14 2 1
      259 SETTABLEKS                       R14 R13 K77 ["Padding"]
      261 SETTABLEKS                       R13 R12 K69 ["::UIListLayout"]
      263 SETLIST                          R11 R12 1 [1]
      265 SETTABLEKS                       R11 R10 K82 [".gap-4"]
      267 NEWTABLE                         R11 0 1
      269 NEWTABLE                         R12 1 0
      271 DUPTABLE                         R13 K78 [{"Padding"}]
      272 GETIMPORT                        R14 K80 [UDim.new]
      274 LOADN                            R15 0
      275 LOADN                            R16 8
      276 CALL                             R14 2 1
      277 SETTABLEKS                       R14 R13 K77 ["Padding"]
      279 SETTABLEKS                       R13 R12 K69 ["::UIListLayout"]
      281 SETLIST                          R11 R12 1 [1]
      283 SETTABLEKS                       R11 R10 K83 [".gap-8"]
      285 NEWTABLE                         R11 0 1
      287 NEWTABLE                         R12 1 0
      289 DUPTABLE                         R13 K78 [{"Padding"}]
      290 GETIMPORT                        R14 K80 [UDim.new]
      292 LOADN                            R15 0
      293 LOADN                            R16 12
      294 CALL                             R14 2 1
      295 SETTABLEKS                       R14 R13 K77 ["Padding"]
      297 SETTABLEKS                       R13 R12 K69 ["::UIListLayout"]
      299 SETLIST                          R11 R12 1 [1]
      301 SETTABLEKS                       R11 R10 K84 [".gap-12"]
      303 NEWTABLE                         R11 0 1
      305 NEWTABLE                         R12 1 0
      307 DUPTABLE                         R13 K78 [{"Padding"}]
      308 GETIMPORT                        R14 K80 [UDim.new]
      310 LOADN                            R15 0
      311 LOADN                            R16 16
      312 CALL                             R14 2 1
      313 SETTABLEKS                       R14 R13 K77 ["Padding"]
      315 SETTABLEKS                       R13 R12 K69 ["::UIListLayout"]
      317 SETLIST                          R11 R12 1 [1]
      319 SETTABLEKS                       R11 R10 K85 [".gap-16"]
      321 NEWTABLE                         R11 0 1
      323 NEWTABLE                         R12 1 0
      325 DUPTABLE                         R13 K90 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      326 GETIMPORT                        R14 K80 [UDim.new]
      328 LOADN                            R15 0
      329 LOADN                            R16 4
      330 CALL                             R14 2 1
      331 SETTABLEKS                       R14 R13 K86 ["PaddingLeft"]
      333 GETIMPORT                        R14 K80 [UDim.new]
      335 LOADN                            R15 0
      336 LOADN                            R16 4
      337 CALL                             R14 2 1
      338 SETTABLEKS                       R14 R13 K87 ["PaddingTop"]
      340 GETIMPORT                        R14 K80 [UDim.new]
      342 LOADN                            R15 0
      343 LOADN                            R16 4
      344 CALL                             R14 2 1
      345 SETTABLEKS                       R14 R13 K88 ["PaddingRight"]
      347 GETIMPORT                        R14 K80 [UDim.new]
      349 LOADN                            R15 0
      350 LOADN                            R16 4
      351 CALL                             R14 2 1
      352 SETTABLEKS                       R14 R13 K89 ["PaddingBottom"]
      354 SETTABLEKS                       R13 R12 K91 ["::UIPadding"]
      356 SETLIST                          R11 R12 1 [1]
      358 SETTABLEKS                       R11 R10 K92 [".pad-4"]
      360 NEWTABLE                         R11 0 1
      362 NEWTABLE                         R12 1 0
      364 DUPTABLE                         R13 K90 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      365 GETIMPORT                        R14 K80 [UDim.new]
      367 LOADN                            R15 0
      368 LOADN                            R16 8
      369 CALL                             R14 2 1
      370 SETTABLEKS                       R14 R13 K86 ["PaddingLeft"]
      372 GETIMPORT                        R14 K80 [UDim.new]
      374 LOADN                            R15 0
      375 LOADN                            R16 8
      376 CALL                             R14 2 1
      377 SETTABLEKS                       R14 R13 K87 ["PaddingTop"]
      379 GETIMPORT                        R14 K80 [UDim.new]
      381 LOADN                            R15 0
      382 LOADN                            R16 8
      383 CALL                             R14 2 1
      384 SETTABLEKS                       R14 R13 K88 ["PaddingRight"]
      386 GETIMPORT                        R14 K80 [UDim.new]
      388 LOADN                            R15 0
      389 LOADN                            R16 8
      390 CALL                             R14 2 1
      391 SETTABLEKS                       R14 R13 K89 ["PaddingBottom"]
      393 SETTABLEKS                       R13 R12 K91 ["::UIPadding"]
      395 SETLIST                          R11 R12 1 [1]
      397 SETTABLEKS                       R11 R10 K93 [".pad-8"]
      399 NEWTABLE                         R11 0 1
      401 NEWTABLE                         R12 1 0
      403 DUPTABLE                         R13 K90 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      404 GETIMPORT                        R14 K80 [UDim.new]
      406 LOADN                            R15 0
      407 LOADN                            R16 12
      408 CALL                             R14 2 1
      409 SETTABLEKS                       R14 R13 K86 ["PaddingLeft"]
      411 GETIMPORT                        R14 K80 [UDim.new]
      413 LOADN                            R15 0
      414 LOADN                            R16 12
      415 CALL                             R14 2 1
      416 SETTABLEKS                       R14 R13 K87 ["PaddingTop"]
      418 GETIMPORT                        R14 K80 [UDim.new]
      420 LOADN                            R15 0
      421 LOADN                            R16 12
      422 CALL                             R14 2 1
      423 SETTABLEKS                       R14 R13 K88 ["PaddingRight"]
      425 GETIMPORT                        R14 K80 [UDim.new]
      427 LOADN                            R15 0
      428 LOADN                            R16 12
      429 CALL                             R14 2 1
      430 SETTABLEKS                       R14 R13 K89 ["PaddingBottom"]
      432 SETTABLEKS                       R13 R12 K91 ["::UIPadding"]
      434 SETLIST                          R11 R12 1 [1]
      436 SETTABLEKS                       R11 R10 K94 [".pad-12"]
      438 NEWTABLE                         R11 0 1
      440 NEWTABLE                         R12 1 0
      442 DUPTABLE                         R13 K90 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      443 GETIMPORT                        R14 K80 [UDim.new]
      445 LOADN                            R15 0
      446 LOADN                            R16 16
      447 CALL                             R14 2 1
      448 SETTABLEKS                       R14 R13 K86 ["PaddingLeft"]
      450 GETIMPORT                        R14 K80 [UDim.new]
      452 LOADN                            R15 0
      453 LOADN                            R16 16
      454 CALL                             R14 2 1
      455 SETTABLEKS                       R14 R13 K87 ["PaddingTop"]
      457 GETIMPORT                        R14 K80 [UDim.new]
      459 LOADN                            R15 0
      460 LOADN                            R16 16
      461 CALL                             R14 2 1
      462 SETTABLEKS                       R14 R13 K88 ["PaddingRight"]
      464 GETIMPORT                        R14 K80 [UDim.new]
      466 LOADN                            R15 0
      467 LOADN                            R16 16
      468 CALL                             R14 2 1
      469 SETTABLEKS                       R14 R13 K89 ["PaddingBottom"]
      471 SETTABLEKS                       R13 R12 K91 ["::UIPadding"]
      473 SETLIST                          R11 R12 1 [1]
      475 SETTABLEKS                       R11 R10 K95 [".pad-16"]
      477 NEWTABLE                         R11 0 1
      479 NEWTABLE                         R12 1 0
      481 DUPTABLE                         R13 K96 [{"PaddingLeft", "PaddingRight"}]
      482 GETIMPORT                        R14 K80 [UDim.new]
      484 LOADN                            R15 0
      485 LOADN                            R16 4
      486 CALL                             R14 2 1
      487 SETTABLEKS                       R14 R13 K86 ["PaddingLeft"]
      489 GETIMPORT                        R14 K80 [UDim.new]
      491 LOADN                            R15 0
      492 LOADN                            R16 4
      493 CALL                             R14 2 1
      494 SETTABLEKS                       R14 R13 K88 ["PaddingRight"]
      496 SETTABLEKS                       R13 R12 K91 ["::UIPadding"]
      498 SETLIST                          R11 R12 1 [1]
      500 SETTABLEKS                       R11 R10 K97 [".pad-x-4"]
      502 NEWTABLE                         R11 0 1
      504 NEWTABLE                         R12 1 0
      506 DUPTABLE                         R13 K96 [{"PaddingLeft", "PaddingRight"}]
      507 GETIMPORT                        R14 K80 [UDim.new]
      509 LOADN                            R15 0
      510 LOADN                            R16 8
      511 CALL                             R14 2 1
      512 SETTABLEKS                       R14 R13 K86 ["PaddingLeft"]
      514 GETIMPORT                        R14 K80 [UDim.new]
      516 LOADN                            R15 0
      517 LOADN                            R16 8
      518 CALL                             R14 2 1
      519 SETTABLEKS                       R14 R13 K88 ["PaddingRight"]
      521 SETTABLEKS                       R13 R12 K91 ["::UIPadding"]
      523 SETLIST                          R11 R12 1 [1]
      525 SETTABLEKS                       R11 R10 K98 [".pad-x-8"]
      527 NEWTABLE                         R11 0 1
      529 NEWTABLE                         R12 1 0
      531 DUPTABLE                         R13 K99 [{"PaddingRight"}]
      532 GETIMPORT                        R14 K80 [UDim.new]
      534 LOADN                            R15 0
      535 LOADN                            R16 10
      536 CALL                             R14 2 1
      537 SETTABLEKS                       R14 R13 K88 ["PaddingRight"]
      539 SETTABLEKS                       R13 R12 K91 ["::UIPadding"]
      541 SETLIST                          R11 R12 1 [1]
      543 SETTABLEKS                       R11 R10 K100 [".pad-r-10"]
      545 NEWTABLE                         R11 0 1
      547 NEWTABLE                         R12 1 0
      549 DUPTABLE                         R13 K102 [{"CornerRadius"}]
      550 GETIMPORT                        R14 K80 [UDim.new]
      552 LOADN                            R15 0
      553 LOADN                            R16 4
      554 CALL                             R14 2 1
      555 SETTABLEKS                       R14 R13 K101 ["CornerRadius"]
      557 SETTABLEKS                       R13 R12 K103 ["::UICorner"]
      559 SETLIST                          R11 R12 1 [1]
      561 SETTABLEKS                       R11 R10 K104 [".corner-4"]
      563 NEWTABLE                         R11 0 1
      565 NEWTABLE                         R12 1 0
      567 DUPTABLE                         R13 K102 [{"CornerRadius"}]
      568 GETIMPORT                        R14 K80 [UDim.new]
      570 LOADN                            R15 0
      571 LOADN                            R16 6
      572 CALL                             R14 2 1
      573 SETTABLEKS                       R14 R13 K101 ["CornerRadius"]
      575 SETTABLEKS                       R13 R12 K103 ["::UICorner"]
      577 SETLIST                          R11 R12 1 [1]
      579 SETTABLEKS                       R11 R10 K105 [".corner-6"]
      581 NEWTABLE                         R11 0 1
      583 NEWTABLE                         R12 1 0
      585 DUPTABLE                         R13 K102 [{"CornerRadius"}]
      586 GETIMPORT                        R14 K80 [UDim.new]
      588 LOADN                            R15 0
      589 LOADN                            R16 8
      590 CALL                             R14 2 1
      591 SETTABLEKS                       R14 R13 K101 ["CornerRadius"]
      593 SETTABLEKS                       R13 R12 K103 ["::UICorner"]
      595 SETLIST                          R11 R12 1 [1]
      597 SETTABLEKS                       R11 R10 K106 [".corner-8"]
      599 DUPTABLE                         R11 K108 [{"BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
      600 LOADN                            R12 0
      601 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
      603 LOADN                            R12 0
      604 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
      606 LOADK                            R12 K109 ["$Surface_0"]
      607 SETTABLEKS                       R12 R11 K107 ["BackgroundColor3"]
      609 SETTABLEKS                       R11 R10 K110 [".surface-0"]
      611 DUPTABLE                         R11 K108 [{"BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
      612 LOADN                            R12 0
      613 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
      615 LOADN                            R12 0
      616 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
      618 LOADK                            R12 K111 ["$Surface_100"]
      619 SETTABLEKS                       R12 R11 K107 ["BackgroundColor3"]
      621 SETTABLEKS                       R11 R10 K112 [".surface-100"]
      623 DUPTABLE                         R11 K108 [{"BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
      624 LOADN                            R12 0
      625 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
      627 LOADN                            R12 0
      628 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
      630 LOADK                            R12 K113 ["$Surface_200"]
      631 SETTABLEKS                       R12 R11 K107 ["BackgroundColor3"]
      633 SETTABLEKS                       R11 R10 K114 [".surface-200"]
      635 DUPTABLE                         R11 K108 [{"BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
      636 LOADN                            R12 0
      637 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
      639 LOADN                            R12 0
      640 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
      642 LOADK                            R12 K115 ["$Surface_300"]
      643 SETTABLEKS                       R12 R11 K107 ["BackgroundColor3"]
      645 SETTABLEKS                       R11 R10 K116 [".surface-300"]
      647 NEWTABLE                         R11 8 1
      649 LOADK                            R13 K117 ["corner-6 pad-8 auto-xy"]
      650 SETTABLEKS                       R13 R11 K118 ["tags"]
      652 LOADK                            R13 K115 ["$Surface_300"]
      653 SETTABLEKS                       R13 R11 K107 ["BackgroundColor3"]
      655 LOADN                            R13 0
      656 SETTABLEKS                       R13 R11 K17 ["BackgroundTransparency"]
      658 LOADK                            R13 K119 [""]
      659 SETTABLEKS                       R13 R11 K120 ["Text"]
      661 LOADN                            R13 0
      662 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
      664 NEWTABLE                         R12 16 0
      666 NEWTABLE                         R13 0 1
      668 NEWTABLE                         R14 2 0
      670 DUPTABLE                         R15 K121 [{"BackgroundColor3"}]
      671 LOADK                            R16 K122 ["$StateHover"]
      672 SETTABLEKS                       R16 R15 K107 ["BackgroundColor3"]
      674 SETTABLEKS                       R15 R14 K123 [":hover"]
      676 DUPTABLE                         R15 K121 [{"BackgroundColor3"}]
      677 LOADK                            R16 K124 ["$StatePress"]
      678 SETTABLEKS                       R16 R15 K107 ["BackgroundColor3"]
      680 SETTABLEKS                       R15 R14 K125 [":press"]
      682 SETLIST                          R13 R14 1 [1]
      684 SETTABLEKS                       R13 R12 K126 [".state-enabled"]
      686 DUPTABLE                         R13 K127 [{"BackgroundTransparency"}]
      687 LOADK                            R14 K128 [0.5]
      688 SETTABLEKS                       R14 R13 K17 ["BackgroundTransparency"]
      690 SETTABLEKS                       R13 R12 K129 [".state-disabled"]
      692 NEWTABLE                         R13 1 1
      694 LOADK                            R15 K130 ["$ActionEmphasisBg"]
      695 SETTABLEKS                       R15 R13 K107 ["BackgroundColor3"]
      697 NEWTABLE                         R14 1 0
      699 NEWTABLE                         R15 0 1
      701 NEWTABLE                         R16 2 0
      703 DUPTABLE                         R17 K121 [{"BackgroundColor3"}]
      704 LOADK                            R18 K131 ["$ActionEmphasisHover"]
      705 SETTABLEKS                       R18 R17 K107 ["BackgroundColor3"]
      707 SETTABLEKS                       R17 R16 K123 [":hover"]
      709 DUPTABLE                         R17 K121 [{"BackgroundColor3"}]
      710 LOADK                            R18 K132 ["$ActionEmphasisPress"]
      711 SETTABLEKS                       R18 R17 K107 ["BackgroundColor3"]
      713 SETTABLEKS                       R17 R16 K125 [":press"]
      715 SETLIST                          R15 R16 1 [1]
      717 SETTABLEKS                       R15 R14 K126 [".state-enabled"]
      719 SETLIST                          R13 R14 1 [1]
      721 SETTABLEKS                       R13 R12 K133 [".variant-primary"]
      723 NEWTABLE                         R13 2 1
      725 LOADK                            R15 K134 ["$ActionStandardBg"]
      726 SETTABLEKS                       R15 R13 K107 ["BackgroundColor3"]
      728 LOADK                            R15 K135 [0.88]
      729 SETTABLEKS                       R15 R13 K17 ["BackgroundTransparency"]
      731 NEWTABLE                         R14 2 0
      733 NEWTABLE                         R15 0 1
      735 NEWTABLE                         R16 2 0
      737 DUPTABLE                         R17 K127 [{"BackgroundTransparency"}]
      738 LOADK                            R18 K136 [0.78]
      739 SETTABLEKS                       R18 R17 K17 ["BackgroundTransparency"]
      741 SETTABLEKS                       R17 R16 K123 [":hover"]
      743 DUPTABLE                         R17 K127 [{"BackgroundTransparency"}]
      744 LOADK                            R18 K137 [0.68]
      745 SETTABLEKS                       R18 R17 K17 ["BackgroundTransparency"]
      747 SETTABLEKS                       R17 R16 K125 [":press"]
      749 SETLIST                          R15 R16 1 [1]
      751 SETTABLEKS                       R15 R14 K126 [".state-enabled"]
      753 DUPTABLE                         R15 K127 [{"BackgroundTransparency"}]
      754 LOADK                            R16 K138 [0.94]
      755 SETTABLEKS                       R16 R15 K17 ["BackgroundTransparency"]
      757 SETTABLEKS                       R15 R14 K129 [".state-disabled"]
      759 SETLIST                          R13 R14 1 [1]
      761 SETTABLEKS                       R13 R12 K139 [".variant-standard"]
      763 NEWTABLE                         R13 1 1
      765 LOADN                            R15 1
      766 SETTABLEKS                       R15 R13 K17 ["BackgroundTransparency"]
      768 NEWTABLE                         R14 1 0
      770 NEWTABLE                         R15 0 1
      772 NEWTABLE                         R16 2 0
      774 DUPTABLE                         R17 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
      775 LOADN                            R18 0
      776 SETTABLEKS                       R18 R17 K17 ["BackgroundTransparency"]
      778 LOADK                            R18 K122 ["$StateHover"]
      779 SETTABLEKS                       R18 R17 K107 ["BackgroundColor3"]
      781 SETTABLEKS                       R17 R16 K123 [":hover"]
      783 DUPTABLE                         R17 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
      784 LOADN                            R18 0
      785 SETTABLEKS                       R18 R17 K17 ["BackgroundTransparency"]
      787 LOADK                            R18 K124 ["$StatePress"]
      788 SETTABLEKS                       R18 R17 K107 ["BackgroundColor3"]
      790 SETTABLEKS                       R17 R16 K125 [":press"]
      792 SETLIST                          R15 R16 1 [1]
      794 SETTABLEKS                       R15 R14 K126 [".state-enabled"]
      796 SETLIST                          R13 R14 1 [1]
      798 SETTABLEKS                       R13 R12 K141 [".variant-utility"]
      800 NEWTABLE                         R13 1 1
      802 LOADN                            R15 1
      803 SETTABLEKS                       R15 R13 K17 ["BackgroundTransparency"]
      805 NEWTABLE                         R14 1 0
      807 NEWTABLE                         R15 0 1
      809 NEWTABLE                         R16 2 0
      811 DUPTABLE                         R17 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
      812 LOADN                            R18 0
      813 SETTABLEKS                       R18 R17 K17 ["BackgroundTransparency"]
      815 LOADK                            R18 K122 ["$StateHover"]
      816 SETTABLEKS                       R18 R17 K107 ["BackgroundColor3"]
      818 SETTABLEKS                       R17 R16 K123 [":hover"]
      820 DUPTABLE                         R17 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
      821 LOADN                            R18 0
      822 SETTABLEKS                       R18 R17 K17 ["BackgroundTransparency"]
      824 LOADK                            R18 K124 ["$StatePress"]
      825 SETTABLEKS                       R18 R17 K107 ["BackgroundColor3"]
      827 SETTABLEKS                       R17 R16 K125 [":press"]
      829 SETLIST                          R15 R16 1 [1]
      831 SETTABLEKS                       R15 R14 K126 [".state-enabled"]
      833 SETLIST                          R13 R14 1 [1]
      835 SETTABLEKS                       R13 R12 K142 [".variant-ghost"]
      837 NEWTABLE                         R13 1 1
      839 LOADK                            R15 K143 ["pad-4"]
      840 SETTABLEKS                       R15 R13 K118 ["tags"]
      842 NEWTABLE                         R14 1 0
      844 DUPTABLE                         R15 K144 [{"TextSize"}]
      845 LOADN                            R16 12
      846 SETTABLEKS                       R16 R15 K18 ["TextSize"]
      848 SETTABLEKS                       R15 R14 K145 ["> TextLabel"]
      850 SETLIST                          R13 R14 1 [1]
      852 SETTABLEKS                       R13 R12 K146 [".size-small"]
      854 NEWTABLE                         R13 0 1
      856 NEWTABLE                         R14 2 0
      858 DUPTABLE                         R15 K147 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      859 GETIMPORT                        R16 K80 [UDim.new]
      861 LOADN                            R17 0
      862 LOADN                            R18 8
      863 CALL                             R16 2 1
      864 SETTABLEKS                       R16 R15 K86 ["PaddingLeft"]
      866 GETIMPORT                        R16 K80 [UDim.new]
      868 LOADN                            R17 0
      869 LOADN                            R18 8
      870 CALL                             R16 2 1
      871 SETTABLEKS                       R16 R15 K88 ["PaddingRight"]
      873 GETIMPORT                        R16 K80 [UDim.new]
      875 LOADN                            R17 0
      876 LOADN                            R18 4
      877 CALL                             R16 2 1
      878 SETTABLEKS                       R16 R15 K87 ["PaddingTop"]
      880 GETIMPORT                        R16 K80 [UDim.new]
      882 LOADN                            R17 0
      883 LOADN                            R18 4
      884 CALL                             R16 2 1
      885 SETTABLEKS                       R16 R15 K89 ["PaddingBottom"]
      887 SETTABLEKS                       R15 R14 K91 ["::UIPadding"]
      889 DUPTABLE                         R15 K144 [{"TextSize"}]
      890 LOADN                            R16 12
      891 SETTABLEKS                       R16 R15 K18 ["TextSize"]
      893 SETTABLEKS                       R15 R14 K145 ["> TextLabel"]
      895 SETLIST                          R13 R14 1 [1]
      897 SETTABLEKS                       R13 R12 K148 [".size-toolbar"]
      899 NEWTABLE                         R13 1 1
      901 LOADK                            R15 K149 ["pad-12"]
      902 SETTABLEKS                       R15 R13 K118 ["tags"]
      904 NEWTABLE                         R14 1 0
      906 DUPTABLE                         R15 K144 [{"TextSize"}]
      907 LOADN                            R16 16
      908 SETTABLEKS                       R16 R15 K18 ["TextSize"]
      910 SETTABLEKS                       R15 R14 K145 ["> TextLabel"]
      912 SETLIST                          R13 R14 1 [1]
      914 SETTABLEKS                       R13 R12 K150 [".size-large"]
      916 SETLIST                          R11 R12 1 [1]
      918 SETTABLEKS                       R11 R10 K151 [".button"]
      920 DUPTABLE                         R11 K153 [{"Size", "BackgroundTransparency", "ScaleType"}]
      921 GETIMPORT                        R12 K155 [UDim2.fromOffset]
      923 LOADN                            R13 16
      924 LOADN                            R14 16
      925 CALL                             R12 2 1
      926 SETTABLEKS                       R12 R11 K42 ["Size"]
      928 LOADN                            R12 1
      929 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
      931 GETIMPORT                        R12 K157 [Enum.ScaleType.Fit]
      933 SETTABLEKS                       R12 R11 K152 ["ScaleType"]
      935 SETTABLEKS                       R11 R10 K158 [".button-icon"]
      937 NEWTABLE                         R11 4 1
      939 LOADN                            R13 14
      940 SETTABLEKS                       R13 R11 K18 ["TextSize"]
      942 LOADK                            R13 K26 ["$Font"]
      943 SETTABLEKS                       R13 R11 K19 ["FontFace"]
      945 LOADK                            R13 K27 ["$ContentEmphasis"]
      946 SETTABLEKS                       R13 R11 K20 ["TextColor3"]
      948 NEWTABLE                         R12 4 0
      950 DUPTABLE                         R13 K159 [{"TextColor3"}]
      951 LOADK                            R14 K160 ["$ContentMuted"]
      952 SETTABLEKS                       R14 R13 K20 ["TextColor3"]
      954 SETTABLEKS                       R13 R12 K129 [".state-disabled"]
      956 DUPTABLE                         R13 K159 [{"TextColor3"}]
      957 LOADK                            R14 K161 ["$ActionEmphasisFg"]
      958 SETTABLEKS                       R14 R13 K20 ["TextColor3"]
      960 SETTABLEKS                       R13 R12 K133 [".variant-primary"]
      962 NEWTABLE                         R13 1 1
      964 LOADK                            R15 K27 ["$ContentEmphasis"]
      965 SETTABLEKS                       R15 R13 K20 ["TextColor3"]
      967 NEWTABLE                         R14 1 0
      969 DUPTABLE                         R15 K163 [{"TextTransparency", "TextColor3"}]
      970 LOADK                            R16 K128 [0.5]
      971 SETTABLEKS                       R16 R15 K162 ["TextTransparency"]
      973 LOADK                            R16 K27 ["$ContentEmphasis"]
      974 SETTABLEKS                       R16 R15 K20 ["TextColor3"]
      976 SETTABLEKS                       R15 R14 K129 [".state-disabled"]
      978 SETLIST                          R13 R14 1 [1]
      980 SETTABLEKS                       R13 R12 K139 [".variant-standard"]
      982 NEWTABLE                         R13 1 1
      984 LOADK                            R15 K27 ["$ContentEmphasis"]
      985 SETTABLEKS                       R15 R13 K20 ["TextColor3"]
      987 NEWTABLE                         R14 1 0
      989 DUPTABLE                         R15 K163 [{"TextTransparency", "TextColor3"}]
      990 LOADK                            R16 K128 [0.5]
      991 SETTABLEKS                       R16 R15 K162 ["TextTransparency"]
      993 LOADK                            R16 K27 ["$ContentEmphasis"]
      994 SETTABLEKS                       R16 R15 K20 ["TextColor3"]
      996 SETTABLEKS                       R15 R14 K129 [".state-disabled"]
      998 SETLIST                          R13 R14 1 [1]
     1000 SETTABLEKS                       R13 R12 K141 [".variant-utility"]
     1002 SETLIST                          R11 R12 1 [1]
     1004 SETTABLEKS                       R11 R10 K164 [".button-label"]
     1006 NEWTABLE                         R11 8 1
     1008 LOADK                            R13 K165 ["corner-4 auto-xy"]
     1009 SETTABLEKS                       R13 R11 K118 ["tags"]
     1011 LOADK                            R13 K115 ["$Surface_300"]
     1012 SETTABLEKS                       R13 R11 K107 ["BackgroundColor3"]
     1014 LOADN                            R13 1
     1015 SETTABLEKS                       R13 R11 K17 ["BackgroundTransparency"]
     1017 LOADK                            R13 K119 [""]
     1018 SETTABLEKS                       R13 R11 K120 ["Text"]
     1020 LOADN                            R13 0
     1021 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1023 GETIMPORT                        R13 K155 [UDim2.fromOffset]
     1025 LOADN                            R14 32
     1026 LOADN                            R15 32
     1027 CALL                             R13 2 1
     1028 SETTABLEKS                       R13 R11 K42 ["Size"]
     1030 NEWTABLE                         R12 4 0
     1032 DUPTABLE                         R13 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
     1033 LOADN                            R14 0
     1034 SETTABLEKS                       R14 R13 K17 ["BackgroundTransparency"]
     1036 LOADK                            R14 K122 ["$StateHover"]
     1037 SETTABLEKS                       R14 R13 K107 ["BackgroundColor3"]
     1039 SETTABLEKS                       R13 R12 K123 [":hover"]
     1041 DUPTABLE                         R13 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
     1042 LOADN                            R14 0
     1043 SETTABLEKS                       R14 R13 K17 ["BackgroundTransparency"]
     1045 LOADK                            R14 K124 ["$StatePress"]
     1046 SETTABLEKS                       R14 R13 K107 ["BackgroundColor3"]
     1048 SETTABLEKS                       R13 R12 K125 [":press"]
     1050 DUPTABLE                         R13 K127 [{"BackgroundTransparency"}]
     1051 LOADK                            R14 K128 [0.5]
     1052 SETTABLEKS                       R14 R13 K17 ["BackgroundTransparency"]
     1054 SETTABLEKS                       R13 R12 K129 [".state-disabled"]
     1056 SETLIST                          R11 R12 1 [1]
     1058 SETTABLEKS                       R11 R10 K166 [".icon-button"]
     1060 DUPTABLE                         R11 K169 [{"Size", "BackgroundTransparency", "ScaleType", "Position", "AnchorPoint"}]
     1061 GETIMPORT                        R12 K155 [UDim2.fromOffset]
     1063 LOADN                            R13 16
     1064 LOADN                            R14 16
     1065 CALL                             R12 2 1
     1066 SETTABLEKS                       R12 R11 K42 ["Size"]
     1068 LOADN                            R12 1
     1069 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
     1071 GETIMPORT                        R12 K157 [Enum.ScaleType.Fit]
     1073 SETTABLEKS                       R12 R11 K152 ["ScaleType"]
     1075 GETIMPORT                        R12 K171 [UDim2.fromScale]
     1077 LOADK                            R13 K128 [0.5]
     1078 LOADK                            R14 K128 [0.5]
     1079 CALL                             R12 2 1
     1080 SETTABLEKS                       R12 R11 K167 ["Position"]
     1082 GETIMPORT                        R12 K173 [Vector2.new]
     1084 LOADK                            R13 K128 [0.5]
     1085 LOADK                            R14 K128 [0.5]
     1086 CALL                             R12 2 1
     1087 SETTABLEKS                       R12 R11 K168 ["AnchorPoint"]
     1089 SETTABLEKS                       R11 R10 K174 [".icon-button-image"]
     1091 NEWTABLE                         R11 4 1
     1093 LOADK                            R13 K175 ["box row gap-8 auto-xy"]
     1094 SETTABLEKS                       R13 R11 K118 ["tags"]
     1096 LOADK                            R13 K119 [""]
     1097 SETTABLEKS                       R13 R11 K120 ["Text"]
     1099 LOADN                            R13 0
     1100 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1102 NEWTABLE                         R12 1 0
     1104 DUPTABLE                         R13 K127 [{"BackgroundTransparency"}]
     1105 LOADK                            R14 K128 [0.5]
     1106 SETTABLEKS                       R14 R13 K17 ["BackgroundTransparency"]
     1108 SETTABLEKS                       R13 R12 K129 [".state-disabled"]
     1110 SETLIST                          R11 R12 1 [1]
     1112 SETTABLEKS                       R11 R10 K176 [".checkbox"]
     1114 NEWTABLE                         R11 8 1
     1116 LOADK                            R13 K177 ["corner-4"]
     1117 SETTABLEKS                       R13 R11 K118 ["tags"]
     1119 GETIMPORT                        R13 K155 [UDim2.fromOffset]
     1121 LOADN                            R14 18
     1122 LOADN                            R15 18
     1123 CALL                             R13 2 1
     1124 SETTABLEKS                       R13 R11 K42 ["Size"]
     1126 LOADK                            R13 K115 ["$Surface_300"]
     1127 SETTABLEKS                       R13 R11 K107 ["BackgroundColor3"]
     1129 LOADN                            R13 0
     1130 SETTABLEKS                       R13 R11 K17 ["BackgroundTransparency"]
     1132 LOADN                            R13 0
     1133 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1135 NEWTABLE                         R12 2 0
     1137 DUPTABLE                         R13 K181 [{"Thickness", "Color", "ApplyStrokeMode"}]
     1138 LOADN                            R14 1
     1139 SETTABLEKS                       R14 R13 K178 ["Thickness"]
     1141 LOADK                            R14 K182 ["$StrokeDefault"]
     1142 SETTABLEKS                       R14 R13 K179 ["Color"]
     1144 GETIMPORT                        R14 K184 [Enum.ApplyStrokeMode.Border]
     1146 SETTABLEKS                       R14 R13 K180 ["ApplyStrokeMode"]
     1148 SETTABLEKS                       R13 R12 K185 ["::UIStroke"]
     1150 NEWTABLE                         R13 1 1
     1152 LOADK                            R15 K130 ["$ActionEmphasisBg"]
     1153 SETTABLEKS                       R15 R13 K107 ["BackgroundColor3"]
     1155 NEWTABLE                         R14 1 0
     1157 DUPTABLE                         R15 K186 [{"Color"}]
     1158 LOADK                            R16 K130 ["$ActionEmphasisBg"]
     1159 SETTABLEKS                       R16 R15 K179 ["Color"]
     1161 SETTABLEKS                       R15 R14 K185 ["::UIStroke"]
     1163 SETLIST                          R13 R14 1 [1]
     1165 SETTABLEKS                       R13 R12 K187 [".state-checked"]
     1167 SETLIST                          R11 R12 1 [1]
     1169 SETTABLEKS                       R11 R10 K188 [".checkbox-box"]
     1171 DUPTABLE                         R11 K190 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency", "ScaleType", "ImageColor3"}]
     1172 GETIMPORT                        R12 K155 [UDim2.fromOffset]
     1174 LOADN                            R13 12
     1175 LOADN                            R14 12
     1176 CALL                             R12 2 1
     1177 SETTABLEKS                       R12 R11 K42 ["Size"]
     1179 GETIMPORT                        R12 K171 [UDim2.fromScale]
     1181 LOADK                            R13 K128 [0.5]
     1182 LOADK                            R14 K128 [0.5]
     1183 CALL                             R12 2 1
     1184 SETTABLEKS                       R12 R11 K167 ["Position"]
     1186 GETIMPORT                        R12 K173 [Vector2.new]
     1188 LOADK                            R13 K128 [0.5]
     1189 LOADK                            R14 K128 [0.5]
     1190 CALL                             R12 2 1
     1191 SETTABLEKS                       R12 R11 K168 ["AnchorPoint"]
     1193 LOADN                            R12 1
     1194 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
     1196 GETIMPORT                        R12 K157 [Enum.ScaleType.Fit]
     1198 SETTABLEKS                       R12 R11 K152 ["ScaleType"]
     1200 LOADK                            R12 K191 ["$White"]
     1201 SETTABLEKS                       R12 R11 K189 ["ImageColor3"]
     1203 SETTABLEKS                       R11 R10 K192 [".checkbox-mark"]
     1205 DUPTABLE                         R11 K193 [{"TextSize", "FontFace", "TextColor3"}]
     1206 LOADN                            R12 14
     1207 SETTABLEKS                       R12 R11 K18 ["TextSize"]
     1209 LOADK                            R12 K26 ["$Font"]
     1210 SETTABLEKS                       R12 R11 K19 ["FontFace"]
     1212 LOADK                            R12 K27 ["$ContentEmphasis"]
     1213 SETTABLEKS                       R12 R11 K20 ["TextColor3"]
     1215 SETTABLEKS                       R11 R10 K194 [".checkbox-label"]
     1217 DUPTABLE                         R11 K195 [{"tags", "Text", "BorderSizePixel"}]
     1218 LOADK                            R12 K175 ["box row gap-8 auto-xy"]
     1219 SETTABLEKS                       R12 R11 K118 ["tags"]
     1221 LOADK                            R12 K119 [""]
     1222 SETTABLEKS                       R12 R11 K120 ["Text"]
     1224 LOADN                            R12 0
     1225 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
     1227 SETTABLEKS                       R11 R10 K196 [".toggle"]
     1229 NEWTABLE                         R11 4 1
     1231 GETIMPORT                        R13 K155 [UDim2.fromOffset]
     1233 LOADN                            R14 36
     1234 LOADN                            R15 20
     1235 CALL                             R13 2 1
     1236 SETTABLEKS                       R13 R11 K42 ["Size"]
     1238 LOADN                            R13 0
     1239 SETTABLEKS                       R13 R11 K17 ["BackgroundTransparency"]
     1241 LOADN                            R13 0
     1242 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1244 NEWTABLE                         R12 1 0
     1246 DUPTABLE                         R13 K102 [{"CornerRadius"}]
     1247 GETIMPORT                        R14 K80 [UDim.new]
     1249 LOADN                            R15 1
     1250 LOADN                            R16 0
     1251 CALL                             R14 2 1
     1252 SETTABLEKS                       R14 R13 K101 ["CornerRadius"]
     1254 SETTABLEKS                       R13 R12 K103 ["::UICorner"]
     1256 SETLIST                          R11 R12 1 [1]
     1258 SETTABLEKS                       R11 R10 K197 [".toggle-track"]
     1260 DUPTABLE                         R11 K198 [{"Size", "BackgroundTransparency", "BorderSizePixel"}]
     1261 GETIMPORT                        R12 K155 [UDim2.fromOffset]
     1263 LOADN                            R13 14
     1264 LOADN                            R14 14
     1265 CALL                             R12 2 1
     1266 SETTABLEKS                       R12 R11 K42 ["Size"]
     1268 LOADN                            R12 1
     1269 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
     1271 LOADN                            R12 0
     1272 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
     1274 SETTABLEKS                       R11 R10 K199 [".toggle-knob"]
     1276 NEWTABLE                         R11 8 1
     1278 GETIMPORT                        R13 K155 [UDim2.fromOffset]
     1280 LOADN                            R14 14
     1281 LOADN                            R15 14
     1282 CALL                             R13 2 1
     1283 SETTABLEKS                       R13 R11 K42 ["Size"]
     1285 GETIMPORT                        R13 K171 [UDim2.fromScale]
     1287 LOADK                            R14 K128 [0.5]
     1288 LOADK                            R15 K128 [0.5]
     1289 CALL                             R13 2 1
     1290 SETTABLEKS                       R13 R11 K167 ["Position"]
     1292 GETIMPORT                        R13 K173 [Vector2.new]
     1294 LOADK                            R14 K128 [0.5]
     1295 LOADK                            R15 K128 [0.5]
     1296 CALL                             R13 2 1
     1297 SETTABLEKS                       R13 R11 K168 ["AnchorPoint"]
     1299 LOADK                            R13 K191 ["$White"]
     1300 SETTABLEKS                       R13 R11 K107 ["BackgroundColor3"]
     1302 LOADN                            R13 0
     1303 SETTABLEKS                       R13 R11 K17 ["BackgroundTransparency"]
     1305 LOADN                            R13 0
     1306 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1308 LOADN                            R13 4
     1309 SETTABLEKS                       R13 R11 K200 ["ZIndex"]
     1311 NEWTABLE                         R12 1 0
     1313 DUPTABLE                         R13 K102 [{"CornerRadius"}]
     1314 GETIMPORT                        R14 K80 [UDim.new]
     1316 LOADK                            R15 K128 [0.5]
     1317 LOADN                            R16 0
     1318 CALL                             R14 2 1
     1319 SETTABLEKS                       R14 R13 K101 ["CornerRadius"]
     1321 SETTABLEKS                       R13 R12 K103 ["::UICorner"]
     1323 SETLIST                          R11 R12 1 [1]
     1325 SETTABLEKS                       R11 R10 K201 [".toggle-knob-circle"]
     1327 DUPTABLE                         R11 K202 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency", "BorderSizePixel", "ImageColor3", "ZIndex"}]
     1328 GETIMPORT                        R12 K155 [UDim2.fromOffset]
     1330 LOADN                            R13 22
     1331 LOADN                            R14 22
     1332 CALL                             R12 2 1
     1333 SETTABLEKS                       R12 R11 K42 ["Size"]
     1335 GETIMPORT                        R12 K171 [UDim2.fromScale]
     1337 LOADK                            R13 K128 [0.5]
     1338 LOADK                            R14 K128 [0.5]
     1339 CALL                             R12 2 1
     1340 SETTABLEKS                       R12 R11 K167 ["Position"]
     1342 GETIMPORT                        R12 K173 [Vector2.new]
     1344 LOADK                            R13 K128 [0.5]
     1345 LOADK                            R14 K128 [0.5]
     1346 CALL                             R12 2 1
     1347 SETTABLEKS                       R12 R11 K168 ["AnchorPoint"]
     1349 LOADN                            R12 1
     1350 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
     1352 LOADN                            R12 0
     1353 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
     1355 LOADK                            R12 K191 ["$White"]
     1356 SETTABLEKS                       R12 R11 K189 ["ImageColor3"]
     1358 LOADN                            R12 3
     1359 SETTABLEKS                       R12 R11 K200 ["ZIndex"]
     1361 SETTABLEKS                       R11 R10 K203 [".toggle-knob-shadow"]
     1363 DUPTABLE                         R11 K193 [{"TextSize", "FontFace", "TextColor3"}]
     1364 LOADN                            R12 14
     1365 SETTABLEKS                       R12 R11 K18 ["TextSize"]
     1367 LOADK                            R12 K26 ["$Font"]
     1368 SETTABLEKS                       R12 R11 K19 ["FontFace"]
     1370 LOADK                            R12 K27 ["$ContentEmphasis"]
     1371 SETTABLEKS                       R12 R11 K20 ["TextColor3"]
     1373 SETTABLEKS                       R11 R10 K204 [".toggle-label"]
     1375 DUPTABLE                         R11 K205 [{"tags", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
     1376 LOADK                            R12 K206 ["corner-6 row auto-xy"]
     1377 SETTABLEKS                       R12 R11 K118 ["tags"]
     1379 LOADK                            R12 K113 ["$Surface_200"]
     1380 SETTABLEKS                       R12 R11 K107 ["BackgroundColor3"]
     1382 LOADN                            R12 0
     1383 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
     1385 LOADN                            R12 0
     1386 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
     1388 SETTABLEKS                       R11 R10 K207 [".segmented"]
     1390 NEWTABLE                         R11 4 1
     1392 LOADK                            R13 K208 ["corner-4 pad-8 auto-xy"]
     1393 SETTABLEKS                       R13 R11 K118 ["tags"]
     1395 LOADN                            R13 1
     1396 SETTABLEKS                       R13 R11 K17 ["BackgroundTransparency"]
     1398 LOADK                            R13 K119 [""]
     1399 SETTABLEKS                       R13 R11 K120 ["Text"]
     1401 LOADN                            R13 0
     1402 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1404 NEWTABLE                         R12 2 0
     1406 DUPTABLE                         R13 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
     1407 LOADN                            R14 0
     1408 SETTABLEKS                       R14 R13 K17 ["BackgroundTransparency"]
     1410 LOADK                            R14 K122 ["$StateHover"]
     1411 SETTABLEKS                       R14 R13 K107 ["BackgroundColor3"]
     1413 SETTABLEKS                       R13 R12 K123 [":hover"]
     1415 DUPTABLE                         R13 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
     1416 LOADN                            R14 0
     1417 SETTABLEKS                       R14 R13 K17 ["BackgroundTransparency"]
     1419 LOADK                            R14 K115 ["$Surface_300"]
     1420 SETTABLEKS                       R14 R13 K107 ["BackgroundColor3"]
     1422 SETTABLEKS                       R13 R12 K209 [".state-selected"]
     1424 SETLIST                          R11 R12 1 [1]
     1426 SETTABLEKS                       R11 R10 K210 [".segmented-item"]
     1428 DUPTABLE                         R11 K193 [{"TextSize", "FontFace", "TextColor3"}]
     1429 LOADN                            R12 13
     1430 SETTABLEKS                       R12 R11 K18 ["TextSize"]
     1432 LOADK                            R12 K26 ["$Font"]
     1433 SETTABLEKS                       R12 R11 K19 ["FontFace"]
     1435 LOADK                            R12 K27 ["$ContentEmphasis"]
     1436 SETTABLEKS                       R12 R11 K20 ["TextColor3"]
     1438 SETTABLEKS                       R11 R10 K211 [".segmented-label"]
     1440 NEWTABLE                         R11 8 1
     1442 LOADK                            R13 K212 ["corner-6 row gap-4 pad-8 auto-xy"]
     1443 SETTABLEKS                       R13 R11 K118 ["tags"]
     1445 LOADK                            R13 K115 ["$Surface_300"]
     1446 SETTABLEKS                       R13 R11 K107 ["BackgroundColor3"]
     1448 LOADN                            R13 0
     1449 SETTABLEKS                       R13 R11 K17 ["BackgroundTransparency"]
     1451 LOADK                            R13 K119 [""]
     1452 SETTABLEKS                       R13 R11 K120 ["Text"]
     1454 LOADN                            R13 0
     1455 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1457 NEWTABLE                         R12 4 0
     1459 DUPTABLE                         R13 K181 [{"Thickness", "Color", "ApplyStrokeMode"}]
     1460 LOADN                            R14 1
     1461 SETTABLEKS                       R14 R13 K178 ["Thickness"]
     1463 LOADK                            R14 K182 ["$StrokeDefault"]
     1464 SETTABLEKS                       R14 R13 K179 ["Color"]
     1466 GETIMPORT                        R14 K184 [Enum.ApplyStrokeMode.Border]
     1468 SETTABLEKS                       R14 R13 K180 ["ApplyStrokeMode"]
     1470 SETTABLEKS                       R13 R12 K185 ["::UIStroke"]
     1472 DUPTABLE                         R13 K121 [{"BackgroundColor3"}]
     1473 LOADK                            R14 K122 ["$StateHover"]
     1474 SETTABLEKS                       R14 R13 K107 ["BackgroundColor3"]
     1476 SETTABLEKS                       R13 R12 K123 [":hover"]
     1478 NEWTABLE                         R13 1 1
     1480 LOADK                            R15 K122 ["$StateHover"]
     1481 SETTABLEKS                       R15 R13 K107 ["BackgroundColor3"]
     1483 NEWTABLE                         R14 1 0
     1485 DUPTABLE                         R15 K186 [{"Color"}]
     1486 LOADK                            R16 K213 ["$SystemEmphasis"]
     1487 SETTABLEKS                       R16 R15 K179 ["Color"]
     1489 SETTABLEKS                       R15 R14 K185 ["::UIStroke"]
     1491 SETLIST                          R13 R14 1 [1]
     1493 SETTABLEKS                       R13 R12 K214 [".state-open"]
     1495 SETLIST                          R11 R12 1 [1]
     1497 SETTABLEKS                       R11 R10 K215 [".select"]
     1499 DUPTABLE                         R11 K193 [{"TextSize", "FontFace", "TextColor3"}]
     1500 LOADN                            R12 14
     1501 SETTABLEKS                       R12 R11 K18 ["TextSize"]
     1503 LOADK                            R12 K26 ["$Font"]
     1504 SETTABLEKS                       R12 R11 K19 ["FontFace"]
     1506 LOADK                            R12 K27 ["$ContentEmphasis"]
     1507 SETTABLEKS                       R12 R11 K20 ["TextColor3"]
     1509 SETTABLEKS                       R11 R10 K216 [".select-value"]
     1511 DUPTABLE                         R11 K217 [{"Size", "BackgroundTransparency", "ScaleType", "ImageColor3"}]
     1512 GETIMPORT                        R12 K155 [UDim2.fromOffset]
     1514 LOADN                            R13 12
     1515 LOADN                            R14 12
     1516 CALL                             R12 2 1
     1517 SETTABLEKS                       R12 R11 K42 ["Size"]
     1519 LOADN                            R12 1
     1520 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
     1522 GETIMPORT                        R12 K157 [Enum.ScaleType.Fit]
     1524 SETTABLEKS                       R12 R11 K152 ["ScaleType"]
     1526 LOADK                            R12 K218 ["$ContentDefault"]
     1527 SETTABLEKS                       R12 R11 K189 ["ImageColor3"]
     1529 SETTABLEKS                       R11 R10 K219 [".select-arrow"]
     1531 NEWTABLE                         R11 2 1
     1533 LOADK                            R13 K220 ["corner-6 col gap-2 pad-4 surface-200"]
     1534 SETTABLEKS                       R13 R11 K118 ["tags"]
     1536 LOADN                            R13 0
     1537 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1539 NEWTABLE                         R12 1 0
     1541 DUPTABLE                         R13 K181 [{"Thickness", "Color", "ApplyStrokeMode"}]
     1542 LOADN                            R14 1
     1543 SETTABLEKS                       R14 R13 K178 ["Thickness"]
     1545 LOADK                            R14 K182 ["$StrokeDefault"]
     1546 SETTABLEKS                       R14 R13 K179 ["Color"]
     1548 GETIMPORT                        R14 K184 [Enum.ApplyStrokeMode.Border]
     1550 SETTABLEKS                       R14 R13 K180 ["ApplyStrokeMode"]
     1552 SETTABLEKS                       R13 R12 K185 ["::UIStroke"]
     1554 SETLIST                          R11 R12 1 [1]
     1556 SETTABLEKS                       R11 R10 K221 [".select-dropdown"]
     1558 NEWTABLE                         R11 4 1
     1560 LOADK                            R13 K222 ["corner-4 pad-8 auto-xy fill-x"]
     1561 SETTABLEKS                       R13 R11 K118 ["tags"]
     1563 LOADN                            R13 1
     1564 SETTABLEKS                       R13 R11 K17 ["BackgroundTransparency"]
     1566 LOADK                            R13 K119 [""]
     1567 SETTABLEKS                       R13 R11 K120 ["Text"]
     1569 LOADN                            R13 0
     1570 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1572 NEWTABLE                         R12 2 0
     1574 DUPTABLE                         R13 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
     1575 LOADN                            R14 0
     1576 SETTABLEKS                       R14 R13 K17 ["BackgroundTransparency"]
     1578 LOADK                            R14 K122 ["$StateHover"]
     1579 SETTABLEKS                       R14 R13 K107 ["BackgroundColor3"]
     1581 SETTABLEKS                       R13 R12 K123 [":hover"]
     1583 DUPTABLE                         R13 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
     1584 LOADN                            R14 0
     1585 SETTABLEKS                       R14 R13 K17 ["BackgroundTransparency"]
     1587 LOADK                            R14 K115 ["$Surface_300"]
     1588 SETTABLEKS                       R14 R13 K107 ["BackgroundColor3"]
     1590 SETTABLEKS                       R13 R12 K209 [".state-selected"]
     1592 SETLIST                          R11 R12 1 [1]
     1594 SETTABLEKS                       R11 R10 K223 [".select-option"]
     1596 DUPTABLE                         R11 K224 [{"tags"}]
     1597 LOADK                            R12 K175 ["box row gap-8 auto-xy"]
     1598 SETTABLEKS                       R12 R11 K118 ["tags"]
     1600 SETTABLEKS                       R11 R10 K225 [".slider"]
     1602 DUPTABLE                         R11 K226 [{"tags", "Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
     1603 LOADK                            R12 K177 ["corner-4"]
     1604 SETTABLEKS                       R12 R11 K118 ["tags"]
     1606 GETIMPORT                        R12 K155 [UDim2.fromOffset]
     1608 LOADN                            R13 120
     1609 LOADN                            R14 6
     1610 CALL                             R12 2 1
     1611 SETTABLEKS                       R12 R11 K42 ["Size"]
     1613 LOADK                            R12 K182 ["$StrokeDefault"]
     1614 SETTABLEKS                       R12 R11 K107 ["BackgroundColor3"]
     1616 LOADN                            R12 0
     1617 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
     1619 LOADN                            R12 0
     1620 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
     1622 SETTABLEKS                       R11 R10 K227 [".slider-track"]
     1624 DUPTABLE                         R11 K205 [{"tags", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
     1625 LOADK                            R12 K177 ["corner-4"]
     1626 SETTABLEKS                       R12 R11 K118 ["tags"]
     1628 LOADK                            R12 K213 ["$SystemEmphasis"]
     1629 SETTABLEKS                       R12 R11 K107 ["BackgroundColor3"]
     1631 LOADN                            R12 0
     1632 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
     1634 LOADN                            R12 0
     1635 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
     1637 SETTABLEKS                       R11 R10 K228 [".slider-fill"]
     1639 NEWTABLE                         R11 8 1
     1641 GETIMPORT                        R13 K155 [UDim2.fromOffset]
     1643 LOADN                            R14 14
     1644 LOADN                            R15 14
     1645 CALL                             R13 2 1
     1646 SETTABLEKS                       R13 R11 K42 ["Size"]
     1648 LOADK                            R13 K191 ["$White"]
     1649 SETTABLEKS                       R13 R11 K107 ["BackgroundColor3"]
     1651 LOADN                            R13 0
     1652 SETTABLEKS                       R13 R11 K17 ["BackgroundTransparency"]
     1654 LOADN                            R13 0
     1655 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1657 LOADN                            R13 2
     1658 SETTABLEKS                       R13 R11 K200 ["ZIndex"]
     1660 NEWTABLE                         R12 1 0
     1662 DUPTABLE                         R13 K102 [{"CornerRadius"}]
     1663 GETIMPORT                        R14 K80 [UDim.new]
     1665 LOADK                            R15 K128 [0.5]
     1666 LOADN                            R16 0
     1667 CALL                             R14 2 1
     1668 SETTABLEKS                       R14 R13 K101 ["CornerRadius"]
     1670 SETTABLEKS                       R13 R12 K103 ["::UICorner"]
     1672 SETLIST                          R11 R12 1 [1]
     1674 SETTABLEKS                       R11 R10 K229 [".slider-thumb"]
     1676 DUPTABLE                         R11 K193 [{"TextSize", "FontFace", "TextColor3"}]
     1677 LOADN                            R12 13
     1678 SETTABLEKS                       R12 R11 K18 ["TextSize"]
     1680 LOADK                            R12 K26 ["$Font"]
     1681 SETTABLEKS                       R12 R11 K19 ["FontFace"]
     1683 LOADK                            R12 K218 ["$ContentDefault"]
     1684 SETTABLEKS                       R12 R11 K20 ["TextColor3"]
     1686 SETTABLEKS                       R11 R10 K230 [".slider-value"]
     1688 NEWTABLE                         R11 4 1
     1690 LOADK                            R13 K231 ["corner-6 row gap-2 auto-xy"]
     1691 SETTABLEKS                       R13 R11 K118 ["tags"]
     1693 LOADK                            R13 K115 ["$Surface_300"]
     1694 SETTABLEKS                       R13 R11 K107 ["BackgroundColor3"]
     1696 LOADN                            R13 0
     1697 SETTABLEKS                       R13 R11 K17 ["BackgroundTransparency"]
     1699 LOADN                            R13 0
     1700 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1702 NEWTABLE                         R12 1 0
     1704 DUPTABLE                         R13 K181 [{"Thickness", "Color", "ApplyStrokeMode"}]
     1705 LOADN                            R14 1
     1706 SETTABLEKS                       R14 R13 K178 ["Thickness"]
     1708 LOADK                            R14 K182 ["$StrokeDefault"]
     1709 SETTABLEKS                       R14 R13 K179 ["Color"]
     1711 GETIMPORT                        R14 K184 [Enum.ApplyStrokeMode.Border]
     1713 SETTABLEKS                       R14 R13 K180 ["ApplyStrokeMode"]
     1715 SETTABLEKS                       R13 R12 K185 ["::UIStroke"]
     1717 SETLIST                          R11 R12 1 [1]
     1719 SETTABLEKS                       R11 R10 K232 [".spinbox"]
     1721 DUPTABLE                         R11 K233 [{"BackgroundTransparency", "BorderSizePixel", "Size", "TextSize", "FontFace", "TextColor3", "TextXAlignment"}]
     1722 LOADN                            R12 1
     1723 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
     1725 LOADN                            R12 0
     1726 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
     1728 GETIMPORT                        R12 K155 [UDim2.fromOffset]
     1730 LOADN                            R13 48
     1731 LOADN                            R14 24
     1732 CALL                             R12 2 1
     1733 SETTABLEKS                       R12 R11 K42 ["Size"]
     1735 LOADN                            R12 14
     1736 SETTABLEKS                       R12 R11 K18 ["TextSize"]
     1738 LOADK                            R12 K26 ["$Font"]
     1739 SETTABLEKS                       R12 R11 K19 ["FontFace"]
     1741 LOADK                            R12 K27 ["$ContentEmphasis"]
     1742 SETTABLEKS                       R12 R11 K20 ["TextColor3"]
     1744 GETIMPORT                        R12 K234 [Enum.TextXAlignment.Center]
     1746 SETTABLEKS                       R12 R11 K21 ["TextXAlignment"]
     1748 SETTABLEKS                       R11 R10 K235 [".spinbox-input"]
     1750 NEWTABLE                         R11 8 1
     1752 LOADK                            R13 K177 ["corner-4"]
     1753 SETTABLEKS                       R13 R11 K118 ["tags"]
     1755 GETIMPORT                        R13 K155 [UDim2.fromOffset]
     1757 LOADN                            R14 20
     1758 LOADN                            R15 24
     1759 CALL                             R13 2 1
     1760 SETTABLEKS                       R13 R11 K42 ["Size"]
     1762 LOADN                            R13 1
     1763 SETTABLEKS                       R13 R11 K17 ["BackgroundTransparency"]
     1765 LOADK                            R13 K119 [""]
     1766 SETTABLEKS                       R13 R11 K120 ["Text"]
     1768 LOADN                            R13 0
     1769 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1771 NEWTABLE                         R12 1 0
     1773 DUPTABLE                         R13 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
     1774 LOADN                            R14 0
     1775 SETTABLEKS                       R14 R13 K17 ["BackgroundTransparency"]
     1777 LOADK                            R14 K122 ["$StateHover"]
     1778 SETTABLEKS                       R14 R13 K107 ["BackgroundColor3"]
     1780 SETTABLEKS                       R13 R12 K123 [":hover"]
     1782 SETLIST                          R11 R12 1 [1]
     1784 SETTABLEKS                       R11 R10 K236 [".spinbox-btn"]
     1786 DUPTABLE                         R11 K237 [{"TextSize", "FontFace", "TextColor3", "Position", "AnchorPoint"}]
     1787 LOADN                            R12 16
     1788 SETTABLEKS                       R12 R11 K18 ["TextSize"]
     1790 LOADK                            R12 K26 ["$Font"]
     1791 SETTABLEKS                       R12 R11 K19 ["FontFace"]
     1793 LOADK                            R12 K218 ["$ContentDefault"]
     1794 SETTABLEKS                       R12 R11 K20 ["TextColor3"]
     1796 GETIMPORT                        R12 K171 [UDim2.fromScale]
     1798 LOADK                            R13 K128 [0.5]
     1799 LOADK                            R14 K128 [0.5]
     1800 CALL                             R12 2 1
     1801 SETTABLEKS                       R12 R11 K167 ["Position"]
     1803 GETIMPORT                        R12 K173 [Vector2.new]
     1805 LOADK                            R13 K128 [0.5]
     1806 LOADK                            R14 K128 [0.5]
     1807 CALL                             R12 2 1
     1808 SETTABLEKS                       R12 R11 K168 ["AnchorPoint"]
     1810 SETTABLEKS                       R11 R10 K238 [".spinbox-btn-label"]
     1812 DUPTABLE                         R11 K239 [{"tags", "BorderSizePixel"}]
     1813 LOADK                            R12 K240 ["box row gap-2 auto-xy"]
     1814 SETTABLEKS                       R12 R11 K118 ["tags"]
     1816 LOADN                            R12 0
     1817 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
     1819 SETTABLEKS                       R11 R10 K241 [".tabs"]
     1821 NEWTABLE                         R11 4 1
     1823 LOADK                            R13 K242 ["col auto-xy pad-8"]
     1824 SETTABLEKS                       R13 R11 K118 ["tags"]
     1826 LOADN                            R13 1
     1827 SETTABLEKS                       R13 R11 K17 ["BackgroundTransparency"]
     1829 LOADK                            R13 K119 [""]
     1830 SETTABLEKS                       R13 R11 K120 ["Text"]
     1832 LOADN                            R13 0
     1833 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1835 NEWTABLE                         R12 1 0
     1837 DUPTABLE                         R13 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
     1838 LOADN                            R14 0
     1839 SETTABLEKS                       R14 R13 K17 ["BackgroundTransparency"]
     1841 LOADK                            R14 K122 ["$StateHover"]
     1842 SETTABLEKS                       R14 R13 K107 ["BackgroundColor3"]
     1844 SETTABLEKS                       R13 R12 K123 [":hover"]
     1846 SETLIST                          R11 R12 1 [1]
     1848 SETTABLEKS                       R11 R10 K243 [".tab"]
     1850 NEWTABLE                         R11 4 1
     1852 LOADN                            R13 14
     1853 SETTABLEKS                       R13 R11 K18 ["TextSize"]
     1855 LOADK                            R13 K26 ["$Font"]
     1856 SETTABLEKS                       R13 R11 K19 ["FontFace"]
     1858 LOADK                            R13 K218 ["$ContentDefault"]
     1859 SETTABLEKS                       R13 R11 K20 ["TextColor3"]
     1861 NEWTABLE                         R12 1 0
     1863 DUPTABLE                         R13 K159 [{"TextColor3"}]
     1864 LOADK                            R14 K27 ["$ContentEmphasis"]
     1865 SETTABLEKS                       R14 R13 K20 ["TextColor3"]
     1867 SETTABLEKS                       R13 R12 K209 [".state-selected"]
     1869 SETLIST                          R11 R12 1 [1]
     1871 SETTABLEKS                       R11 R10 K244 [".tab-label"]
     1873 NEWTABLE                         R11 4 1
     1875 GETIMPORT                        R13 K46 [UDim2.new]
     1877 LOADN                            R14 0
     1878 LOADN                            R15 0
     1879 LOADN                            R16 0
     1880 LOADN                            R17 2
     1881 CALL                             R13 4 1
     1882 SETTABLEKS                       R13 R11 K42 ["Size"]
     1884 LOADN                            R13 1
     1885 SETTABLEKS                       R13 R11 K17 ["BackgroundTransparency"]
     1887 LOADN                            R13 0
     1888 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1890 LOADN                            R13 2
     1891 SETTABLEKS                       R13 R11 K65 ["LayoutOrder"]
     1893 NEWTABLE                         R12 2 0
     1895 DUPTABLE                         R13 K246 [{"FlexMode", "ItemLineAlignment"}]
     1896 GETIMPORT                        R14 K248 [Enum.UIFlexMode.Fill]
     1898 SETTABLEKS                       R14 R13 K49 ["FlexMode"]
     1900 GETIMPORT                        R14 K250 [Enum.ItemLineAlignment.Stretch]
     1902 SETTABLEKS                       R14 R13 K245 ["ItemLineAlignment"]
     1904 SETTABLEKS                       R13 R12 K54 ["::UIFlexItem"]
     1906 DUPTABLE                         R13 K140 [{"BackgroundTransparency", "BackgroundColor3"}]
     1907 LOADN                            R14 0
     1908 SETTABLEKS                       R14 R13 K17 ["BackgroundTransparency"]
     1910 LOADK                            R14 K213 ["$SystemEmphasis"]
     1911 SETTABLEKS                       R14 R13 K107 ["BackgroundColor3"]
     1913 SETTABLEKS                       R13 R12 K209 [".state-selected"]
     1915 SETLIST                          R11 R12 1 [1]
     1917 SETTABLEKS                       R11 R10 K251 [".tab-indicator"]
     1919 DUPTABLE                         R11 K205 [{"tags", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
     1920 LOADK                            R12 K206 ["corner-6 row auto-xy"]
     1921 SETTABLEKS                       R12 R11 K118 ["tags"]
     1923 LOADK                            R12 K115 ["$Surface_300"]
     1924 SETTABLEKS                       R12 R11 K107 ["BackgroundColor3"]
     1926 LOADN                            R12 0
     1927 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
     1929 LOADN                            R12 0
     1930 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
     1932 SETTABLEKS                       R11 R10 K252 [".split-button"]
     1934 NEWTABLE                         R11 4 1
     1936 LOADK                            R13 K253 ["pad-8 auto-xy"]
     1937 SETTABLEKS                       R13 R11 K118 ["tags"]
     1939 LOADN                            R13 1
     1940 SETTABLEKS                       R13 R11 K17 ["BackgroundTransparency"]
     1942 LOADK                            R13 K119 [""]
     1943 SETTABLEKS                       R13 R11 K120 ["Text"]
     1945 LOADN                            R13 0
     1946 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1948 NEWTABLE                         R12 1 0
     1950 DUPTABLE                         R13 K254 [{"BackgroundColor3", "BackgroundTransparency"}]
     1951 LOADK                            R14 K122 ["$StateHover"]
     1952 SETTABLEKS                       R14 R13 K107 ["BackgroundColor3"]
     1954 LOADN                            R14 0
     1955 SETTABLEKS                       R14 R13 K17 ["BackgroundTransparency"]
     1957 SETTABLEKS                       R13 R12 K123 [":hover"]
     1959 SETLIST                          R11 R12 1 [1]
     1961 SETTABLEKS                       R11 R10 K255 [".split-main"]
     1963 DUPTABLE                         R11 K256 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
     1964 GETIMPORT                        R12 K155 [UDim2.fromOffset]
     1966 LOADN                            R13 1
     1967 LOADN                            R14 20
     1968 CALL                             R12 2 1
     1969 SETTABLEKS                       R12 R11 K42 ["Size"]
     1971 LOADK                            R12 K182 ["$StrokeDefault"]
     1972 SETTABLEKS                       R12 R11 K107 ["BackgroundColor3"]
     1974 LOADN                            R12 0
     1975 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
     1977 LOADN                            R12 0
     1978 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
     1980 SETTABLEKS                       R11 R10 K257 [".split-divider"]
     1982 NEWTABLE                         R11 8 1
     1984 LOADK                            R13 K143 ["pad-4"]
     1985 SETTABLEKS                       R13 R11 K118 ["tags"]
     1987 GETIMPORT                        R13 K155 [UDim2.fromOffset]
     1989 LOADN                            R14 24
     1990 LOADN                            R15 0
     1991 CALL                             R13 2 1
     1992 SETTABLEKS                       R13 R11 K42 ["Size"]
     1994 GETIMPORT                        R13 K40 [Enum.AutomaticSize.Y]
     1996 SETTABLEKS                       R13 R11 K15 ["AutomaticSize"]
     1998 LOADN                            R13 1
     1999 SETTABLEKS                       R13 R11 K17 ["BackgroundTransparency"]
     2001 LOADK                            R13 K119 [""]
     2002 SETTABLEKS                       R13 R11 K120 ["Text"]
     2004 LOADN                            R13 0
     2005 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     2007 NEWTABLE                         R12 1 0
     2009 DUPTABLE                         R13 K254 [{"BackgroundColor3", "BackgroundTransparency"}]
     2010 LOADK                            R14 K122 ["$StateHover"]
     2011 SETTABLEKS                       R14 R13 K107 ["BackgroundColor3"]
     2013 LOADN                            R14 0
     2014 SETTABLEKS                       R14 R13 K17 ["BackgroundTransparency"]
     2016 SETTABLEKS                       R13 R12 K123 [":hover"]
     2018 SETLIST                          R11 R12 1 [1]
     2020 SETTABLEKS                       R11 R10 K258 [".split-arrow"]
     2022 DUPTABLE                         R11 K169 [{"Size", "BackgroundTransparency", "ScaleType", "Position", "AnchorPoint"}]
     2023 GETIMPORT                        R12 K155 [UDim2.fromOffset]
     2025 LOADN                            R13 10
     2026 LOADN                            R14 10
     2027 CALL                             R12 2 1
     2028 SETTABLEKS                       R12 R11 K42 ["Size"]
     2030 LOADN                            R12 1
     2031 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
     2033 GETIMPORT                        R12 K157 [Enum.ScaleType.Fit]
     2035 SETTABLEKS                       R12 R11 K152 ["ScaleType"]
     2037 GETIMPORT                        R12 K171 [UDim2.fromScale]
     2039 LOADK                            R13 K128 [0.5]
     2040 LOADK                            R14 K128 [0.5]
     2041 CALL                             R12 2 1
     2042 SETTABLEKS                       R12 R11 K167 ["Position"]
     2044 GETIMPORT                        R12 K173 [Vector2.new]
     2046 LOADK                            R13 K128 [0.5]
     2047 LOADK                            R14 K128 [0.5]
     2048 CALL                             R12 2 1
     2049 SETTABLEKS                       R12 R11 K168 ["AnchorPoint"]
     2051 SETTABLEKS                       R11 R10 K259 [".split-arrow-icon"]
     2053 DUPTABLE                         R11 K256 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
     2054 GETIMPORT                        R12 K46 [UDim2.new]
     2056 LOADN                            R13 1
     2057 LOADN                            R14 0
     2058 LOADN                            R15 0
     2059 LOADN                            R16 1
     2060 CALL                             R12 4 1
     2061 SETTABLEKS                       R12 R11 K42 ["Size"]
     2063 LOADK                            R12 K115 ["$Surface_300"]
     2064 SETTABLEKS                       R12 R11 K107 ["BackgroundColor3"]
     2066 LOADN                            R12 0
     2067 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
     2069 LOADN                            R12 0
     2070 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
     2072 SETTABLEKS                       R11 R10 K260 [".separator-h"]
     2074 DUPTABLE                         R11 K256 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
     2075 GETIMPORT                        R12 K155 [UDim2.fromOffset]
     2077 LOADN                            R13 1
     2078 LOADN                            R14 24
     2079 CALL                             R12 2 1
     2080 SETTABLEKS                       R12 R11 K42 ["Size"]
     2082 LOADK                            R12 K115 ["$Surface_300"]
     2083 SETTABLEKS                       R12 R11 K107 ["BackgroundColor3"]
     2085 LOADN                            R12 0
     2086 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
     2088 LOADN                            R12 0
     2089 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
     2091 SETTABLEKS                       R11 R10 K261 [".separator-v"]
     2093 DUPTABLE                         R11 K193 [{"TextSize", "FontFace", "TextColor3"}]
     2094 LOADN                            R12 20
     2095 SETTABLEKS                       R12 R11 K18 ["TextSize"]
     2097 LOADK                            R12 K26 ["$Font"]
     2098 SETTABLEKS                       R12 R11 K19 ["FontFace"]
     2100 LOADK                            R12 K27 ["$ContentEmphasis"]
     2101 SETTABLEKS                       R12 R11 K20 ["TextColor3"]
     2103 SETTABLEKS                       R11 R10 K262 [".text-title"]
     2105 DUPTABLE                         R11 K193 [{"TextSize", "FontFace", "TextColor3"}]
     2106 LOADN                            R12 16
     2107 SETTABLEKS                       R12 R11 K18 ["TextSize"]
     2109 LOADK                            R12 K26 ["$Font"]
     2110 SETTABLEKS                       R12 R11 K19 ["FontFace"]
     2112 LOADK                            R12 K27 ["$ContentEmphasis"]
     2113 SETTABLEKS                       R12 R11 K20 ["TextColor3"]
     2115 SETTABLEKS                       R11 R10 K263 [".text-subtitle"]
     2117 DUPTABLE                         R11 K193 [{"TextSize", "FontFace", "TextColor3"}]
     2118 LOADN                            R12 14
     2119 SETTABLEKS                       R12 R11 K18 ["TextSize"]
     2121 LOADK                            R12 K26 ["$Font"]
     2122 SETTABLEKS                       R12 R11 K19 ["FontFace"]
     2124 LOADK                            R12 K27 ["$ContentEmphasis"]
     2125 SETTABLEKS                       R12 R11 K20 ["TextColor3"]
     2127 SETTABLEKS                       R11 R10 K264 [".text-body"]
     2129 DUPTABLE                         R11 K193 [{"TextSize", "FontFace", "TextColor3"}]
     2130 LOADN                            R12 12
     2131 SETTABLEKS                       R12 R11 K18 ["TextSize"]
     2133 LOADK                            R12 K26 ["$Font"]
     2134 SETTABLEKS                       R12 R11 K19 ["FontFace"]
     2136 LOADK                            R12 K218 ["$ContentDefault"]
     2137 SETTABLEKS                       R12 R11 K20 ["TextColor3"]
     2139 SETTABLEKS                       R11 R10 K265 [".text-caption"]
     2141 DUPTABLE                         R11 K267 [{"TextSize", "Font", "TextColor3"}]
     2142 LOADN                            R12 15
     2143 SETTABLEKS                       R12 R11 K18 ["TextSize"]
     2145 LOADK                            R12 K12 ["ThemeProvider"]
     2146 SETTABLEKS                       R12 R11 K266 ["Font"]
     2148 LOADK                            R12 K27 ["$ContentEmphasis"]
     2149 SETTABLEKS                       R12 R11 K20 ["TextColor3"]
     2151 SETTABLEKS                       R11 R10 K269 [".text-label"]
     2153 DUPTABLE                         R11 K271 [{"TextTruncate"}]
     2154 GETIMPORT                        R12 K273 [Enum.TextTruncate.AtEnd]
     2156 SETTABLEKS                       R12 R11 K270 ["TextTruncate"]
     2158 SETTABLEKS                       R11 R10 K274 [".text-truncate-end"]
     2160 MOVE                             R11 R3
     2161 LOADK                            R12 K19 ["FontFace"]
     2162 NEWTABLE                         R13 0 0
     2164 NEWTABLE                         R14 0 3
     2166 MOVE                             R15 R4
     2167 NEWTABLE                         R16 1 2
     2169 LOADK                            R19 K20 ["TextColor3"]
     2170 SETTABLEKS                       R19 R16 K277 ["Name"]
     2172 MOVE                             R17 R5
     2173 DUPTABLE                         R18 K280 [{"Name", "tokens", "rules"}]
     2174 LOADK                            R19 K13 ["DarkTokens"]
     2175 SETTABLEKS                       R19 R18 K277 ["Name"]
     2177 SETTABLEKS                       R8 R18 K278 ["tokens"]
     2179 NEWTABLE                         R19 0 0
     2181 SETTABLEKS                       R19 R18 K279 ["rules"]
     2183 CALL                             R17 1 1
     2184 MOVE                             R18 R5
     2185 DUPTABLE                         R19 K280 [{"Name", "tokens", "rules"}]
     2186 LOADK                            R20 K14 ["LightTokens"]
     2187 SETTABLEKS                       R20 R19 K277 ["Name"]
     2189 SETTABLEKS                       R9 R19 K278 ["tokens"]
     2191 NEWTABLE                         R20 0 0
     2193 SETTABLEKS                       R20 R19 K279 ["rules"]
     2195 CALL                             R18 1 -1
     2196 SETLIST                          R16 R17 -1 [1]
     2198 CALL                             R15 1 1
     2199 MOVE                             R16 R5
     2200 DUPTABLE                         R17 K280 [{"Name", "tokens", "rules"}]
     2201 LOADK                            R18 K25 [Enum.AutomaticSize.XY]
     2202 SETTABLEKS                       R18 R17 K277 ["Name"]
     2204 NEWTABLE                         R18 0 0
     2206 SETTABLEKS                       R18 R17 K278 ["tokens"]
     2208 SETTABLEKS                       R10 R17 K279 ["rules"]
     2210 CALL                             R16 1 1
     2211 MOVE                             R17 R6
     2212 NEWTABLE                         R18 0 0
     2214 CALL                             R17 1 -1
     2215 SETLIST                          R14 R15 -1 [1]
     2217 DUPCLOSURE                       R15 K282 [PROTO_1]
     2218 CAPTURE                          VAL R7
     2219 CALL                             R11 4 1
     2220 RETURN                           R11 1
