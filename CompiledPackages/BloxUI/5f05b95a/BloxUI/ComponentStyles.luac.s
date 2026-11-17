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
       51 DUPTABLE                         R11 K27 [{["AutomaticSize"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["TextSize"] = 14, ["FontFace"] = "$Font", ["TextColor3"] = "$ContentEmphasis", ["TextXAlignment"]}]
       52 GETIMPORT                        R12 K30 [Enum.AutomaticSize.XY]
       54 SETTABLEKS                       R12 R11 K15 ["AutomaticSize"]
       56 GETIMPORT                        R12 K32 [Enum.TextXAlignment.Left]
       58 SETTABLEKS                       R12 R11 K26 ["TextXAlignment"]
       60 SETTABLEKS                       R11 R10 K33 ["TextLabel"]
       62 DUPTABLE                         R11 K36 [{["AutoButtonColor"] = False}]
       63 SETTABLEKS                       R11 R10 K37 ["TextButton, ImageButton"]
       65 DUPTABLE                         R11 K38 [{"AutomaticSize"}]
       66 GETIMPORT                        R12 K30 [Enum.AutomaticSize.XY]
       68 SETTABLEKS                       R12 R11 K15 ["AutomaticSize"]
       70 SETTABLEKS                       R11 R10 K39 [".auto-xy"]
       72 DUPTABLE                         R11 K38 [{"AutomaticSize"}]
       73 GETIMPORT                        R12 K41 [Enum.AutomaticSize.X]
       75 SETTABLEKS                       R12 R11 K15 ["AutomaticSize"]
       77 SETTABLEKS                       R11 R10 K42 [".auto-x"]
       79 DUPTABLE                         R11 K38 [{"AutomaticSize"}]
       80 GETIMPORT                        R12 K44 [Enum.AutomaticSize.Y]
       82 SETTABLEKS                       R12 R11 K15 ["AutomaticSize"]
       84 SETTABLEKS                       R11 R10 K45 [".auto-y"]
       86 DUPTABLE                         R11 K47 [{"Size"}]
       87 GETIMPORT                        R12 K50 [UDim2.new]
       89 LOADN                            R13 1
       90 LOADN                            R14 0
       91 LOADN                            R15 0
       92 LOADN                            R16 0
       93 CALL                             R12 4 1
       94 SETTABLEKS                       R12 R11 K46 ["Size"]
       96 SETTABLEKS                       R11 R10 K51 [".fill-x"]
       98 DUPTABLE                         R11 K47 [{"Size"}]
       99 GETIMPORT                        R12 K50 [UDim2.new]
      101 LOADN                            R13 0
      102 LOADN                            R14 0
      103 LOADN                            R15 1
      104 LOADN                            R16 0
      105 CALL                             R12 4 1
      106 SETTABLEKS                       R12 R11 K46 ["Size"]
      108 SETTABLEKS                       R11 R10 K52 [".fill-y"]
      110 NEWTABLE                         R11 1 1
      112 GETIMPORT                        R13 K50 [UDim2.new]
      114 LOADN                            R14 0
      115 LOADN                            R15 0
      116 LOADN                            R16 1
      117 LOADN                            R17 0
      118 CALL                             R13 4 1
      119 SETTABLEKS                       R13 R11 K46 ["Size"]
      121 NEWTABLE                         R12 1 0
      123 DUPTABLE                         R13 K54 [{"FlexMode"}]
      124 GETIMPORT                        R14 K57 [Enum.UIFlexMode.Grow]
      126 SETTABLEKS                       R14 R13 K53 ["FlexMode"]
      128 SETTABLEKS                       R13 R12 K58 ["::UIFlexItem"]
      130 SETLIST                          R11 R12 1 [1]
      132 SETTABLEKS                       R11 R10 K59 [".grow-x"]
      134 NEWTABLE                         R11 1 1
      136 GETIMPORT                        R13 K50 [UDim2.new]
      138 LOADN                            R14 1
      139 LOADN                            R15 0
      140 LOADN                            R16 0
      141 LOADN                            R17 0
      142 CALL                             R13 4 1
      143 SETTABLEKS                       R13 R11 K46 ["Size"]
      145 NEWTABLE                         R12 1 0
      147 DUPTABLE                         R13 K54 [{"FlexMode"}]
      148 GETIMPORT                        R14 K57 [Enum.UIFlexMode.Grow]
      150 SETTABLEKS                       R14 R13 K53 ["FlexMode"]
      152 SETTABLEKS                       R13 R12 K58 ["::UIFlexItem"]
      154 SETLIST                          R11 R12 1 [1]
      156 SETTABLEKS                       R11 R10 K60 [".grow-y"]
      158 DUPTABLE                         R11 K61 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      159 SETTABLEKS                       R11 R10 K62 [".box"]
      161 NEWTABLE                         R11 0 1
      163 NEWTABLE                         R12 1 0
      165 DUPTABLE                         R13 K66 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
      166 GETIMPORT                        R14 K68 [Enum.FillDirection.Horizontal]
      168 SETTABLEKS                       R14 R13 K63 ["FillDirection"]
      170 GETIMPORT                        R14 K70 [Enum.SortOrder.LayoutOrder]
      172 SETTABLEKS                       R14 R13 K64 ["SortOrder"]
      174 GETIMPORT                        R14 K72 [Enum.VerticalAlignment.Center]
      176 SETTABLEKS                       R14 R13 K65 ["VerticalAlignment"]
      178 SETTABLEKS                       R13 R12 K73 ["::UIListLayout"]
      180 SETLIST                          R11 R12 1 [1]
      182 SETTABLEKS                       R11 R10 K74 [".row"]
      184 NEWTABLE                         R11 0 1
      186 NEWTABLE                         R12 1 0
      188 DUPTABLE                         R13 K76 [{"FillDirection", "SortOrder", "HorizontalAlignment"}]
      189 GETIMPORT                        R14 K78 [Enum.FillDirection.Vertical]
      191 SETTABLEKS                       R14 R13 K63 ["FillDirection"]
      193 GETIMPORT                        R14 K70 [Enum.SortOrder.LayoutOrder]
      195 SETTABLEKS                       R14 R13 K64 ["SortOrder"]
      197 GETIMPORT                        R14 K79 [Enum.HorizontalAlignment.Left]
      199 SETTABLEKS                       R14 R13 K75 ["HorizontalAlignment"]
      201 SETTABLEKS                       R13 R12 K73 ["::UIListLayout"]
      203 SETLIST                          R11 R12 1 [1]
      205 SETTABLEKS                       R11 R10 K80 [".col"]
      207 NEWTABLE                         R11 0 1
      209 NEWTABLE                         R12 1 0
      211 DUPTABLE                         R13 K82 [{"Padding"}]
      212 GETIMPORT                        R14 K84 [UDim.new]
      214 LOADN                            R15 0
      215 LOADN                            R16 2
      216 CALL                             R14 2 1
      217 SETTABLEKS                       R14 R13 K81 ["Padding"]
      219 SETTABLEKS                       R13 R12 K73 ["::UIListLayout"]
      221 SETLIST                          R11 R12 1 [1]
      223 SETTABLEKS                       R11 R10 K85 [".gap-2"]
      225 NEWTABLE                         R11 0 1
      227 NEWTABLE                         R12 1 0
      229 DUPTABLE                         R13 K82 [{"Padding"}]
      230 GETIMPORT                        R14 K84 [UDim.new]
      232 LOADN                            R15 0
      233 LOADN                            R16 4
      234 CALL                             R14 2 1
      235 SETTABLEKS                       R14 R13 K81 ["Padding"]
      237 SETTABLEKS                       R13 R12 K73 ["::UIListLayout"]
      239 SETLIST                          R11 R12 1 [1]
      241 SETTABLEKS                       R11 R10 K86 [".gap-4"]
      243 NEWTABLE                         R11 0 1
      245 NEWTABLE                         R12 1 0
      247 DUPTABLE                         R13 K82 [{"Padding"}]
      248 GETIMPORT                        R14 K84 [UDim.new]
      250 LOADN                            R15 0
      251 LOADN                            R16 8
      252 CALL                             R14 2 1
      253 SETTABLEKS                       R14 R13 K81 ["Padding"]
      255 SETTABLEKS                       R13 R12 K73 ["::UIListLayout"]
      257 SETLIST                          R11 R12 1 [1]
      259 SETTABLEKS                       R11 R10 K87 [".gap-8"]
      261 NEWTABLE                         R11 0 1
      263 NEWTABLE                         R12 1 0
      265 DUPTABLE                         R13 K82 [{"Padding"}]
      266 GETIMPORT                        R14 K84 [UDim.new]
      268 LOADN                            R15 0
      269 LOADN                            R16 12
      270 CALL                             R14 2 1
      271 SETTABLEKS                       R14 R13 K81 ["Padding"]
      273 SETTABLEKS                       R13 R12 K73 ["::UIListLayout"]
      275 SETLIST                          R11 R12 1 [1]
      277 SETTABLEKS                       R11 R10 K88 [".gap-12"]
      279 NEWTABLE                         R11 0 1
      281 NEWTABLE                         R12 1 0
      283 DUPTABLE                         R13 K82 [{"Padding"}]
      284 GETIMPORT                        R14 K84 [UDim.new]
      286 LOADN                            R15 0
      287 LOADN                            R16 16
      288 CALL                             R14 2 1
      289 SETTABLEKS                       R14 R13 K81 ["Padding"]
      291 SETTABLEKS                       R13 R12 K73 ["::UIListLayout"]
      293 SETLIST                          R11 R12 1 [1]
      295 SETTABLEKS                       R11 R10 K89 [".gap-16"]
      297 NEWTABLE                         R11 0 1
      299 NEWTABLE                         R12 1 0
      301 DUPTABLE                         R13 K94 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      302 GETIMPORT                        R14 K84 [UDim.new]
      304 LOADN                            R15 0
      305 LOADN                            R16 4
      306 CALL                             R14 2 1
      307 SETTABLEKS                       R14 R13 K90 ["PaddingLeft"]
      309 GETIMPORT                        R14 K84 [UDim.new]
      311 LOADN                            R15 0
      312 LOADN                            R16 4
      313 CALL                             R14 2 1
      314 SETTABLEKS                       R14 R13 K91 ["PaddingTop"]
      316 GETIMPORT                        R14 K84 [UDim.new]
      318 LOADN                            R15 0
      319 LOADN                            R16 4
      320 CALL                             R14 2 1
      321 SETTABLEKS                       R14 R13 K92 ["PaddingRight"]
      323 GETIMPORT                        R14 K84 [UDim.new]
      325 LOADN                            R15 0
      326 LOADN                            R16 4
      327 CALL                             R14 2 1
      328 SETTABLEKS                       R14 R13 K93 ["PaddingBottom"]
      330 SETTABLEKS                       R13 R12 K95 ["::UIPadding"]
      332 SETLIST                          R11 R12 1 [1]
      334 SETTABLEKS                       R11 R10 K96 [".pad-4"]
      336 NEWTABLE                         R11 0 1
      338 NEWTABLE                         R12 1 0
      340 DUPTABLE                         R13 K94 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      341 GETIMPORT                        R14 K84 [UDim.new]
      343 LOADN                            R15 0
      344 LOADN                            R16 8
      345 CALL                             R14 2 1
      346 SETTABLEKS                       R14 R13 K90 ["PaddingLeft"]
      348 GETIMPORT                        R14 K84 [UDim.new]
      350 LOADN                            R15 0
      351 LOADN                            R16 8
      352 CALL                             R14 2 1
      353 SETTABLEKS                       R14 R13 K91 ["PaddingTop"]
      355 GETIMPORT                        R14 K84 [UDim.new]
      357 LOADN                            R15 0
      358 LOADN                            R16 8
      359 CALL                             R14 2 1
      360 SETTABLEKS                       R14 R13 K92 ["PaddingRight"]
      362 GETIMPORT                        R14 K84 [UDim.new]
      364 LOADN                            R15 0
      365 LOADN                            R16 8
      366 CALL                             R14 2 1
      367 SETTABLEKS                       R14 R13 K93 ["PaddingBottom"]
      369 SETTABLEKS                       R13 R12 K95 ["::UIPadding"]
      371 SETLIST                          R11 R12 1 [1]
      373 SETTABLEKS                       R11 R10 K97 [".pad-8"]
      375 NEWTABLE                         R11 0 1
      377 NEWTABLE                         R12 1 0
      379 DUPTABLE                         R13 K94 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      380 GETIMPORT                        R14 K84 [UDim.new]
      382 LOADN                            R15 0
      383 LOADN                            R16 12
      384 CALL                             R14 2 1
      385 SETTABLEKS                       R14 R13 K90 ["PaddingLeft"]
      387 GETIMPORT                        R14 K84 [UDim.new]
      389 LOADN                            R15 0
      390 LOADN                            R16 12
      391 CALL                             R14 2 1
      392 SETTABLEKS                       R14 R13 K91 ["PaddingTop"]
      394 GETIMPORT                        R14 K84 [UDim.new]
      396 LOADN                            R15 0
      397 LOADN                            R16 12
      398 CALL                             R14 2 1
      399 SETTABLEKS                       R14 R13 K92 ["PaddingRight"]
      401 GETIMPORT                        R14 K84 [UDim.new]
      403 LOADN                            R15 0
      404 LOADN                            R16 12
      405 CALL                             R14 2 1
      406 SETTABLEKS                       R14 R13 K93 ["PaddingBottom"]
      408 SETTABLEKS                       R13 R12 K95 ["::UIPadding"]
      410 SETLIST                          R11 R12 1 [1]
      412 SETTABLEKS                       R11 R10 K98 [".pad-12"]
      414 NEWTABLE                         R11 0 1
      416 NEWTABLE                         R12 1 0
      418 DUPTABLE                         R13 K94 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
      419 GETIMPORT                        R14 K84 [UDim.new]
      421 LOADN                            R15 0
      422 LOADN                            R16 16
      423 CALL                             R14 2 1
      424 SETTABLEKS                       R14 R13 K90 ["PaddingLeft"]
      426 GETIMPORT                        R14 K84 [UDim.new]
      428 LOADN                            R15 0
      429 LOADN                            R16 16
      430 CALL                             R14 2 1
      431 SETTABLEKS                       R14 R13 K91 ["PaddingTop"]
      433 GETIMPORT                        R14 K84 [UDim.new]
      435 LOADN                            R15 0
      436 LOADN                            R16 16
      437 CALL                             R14 2 1
      438 SETTABLEKS                       R14 R13 K92 ["PaddingRight"]
      440 GETIMPORT                        R14 K84 [UDim.new]
      442 LOADN                            R15 0
      443 LOADN                            R16 16
      444 CALL                             R14 2 1
      445 SETTABLEKS                       R14 R13 K93 ["PaddingBottom"]
      447 SETTABLEKS                       R13 R12 K95 ["::UIPadding"]
      449 SETLIST                          R11 R12 1 [1]
      451 SETTABLEKS                       R11 R10 K99 [".pad-16"]
      453 NEWTABLE                         R11 0 1
      455 NEWTABLE                         R12 1 0
      457 DUPTABLE                         R13 K100 [{"PaddingLeft", "PaddingRight"}]
      458 GETIMPORT                        R14 K84 [UDim.new]
      460 LOADN                            R15 0
      461 LOADN                            R16 4
      462 CALL                             R14 2 1
      463 SETTABLEKS                       R14 R13 K90 ["PaddingLeft"]
      465 GETIMPORT                        R14 K84 [UDim.new]
      467 LOADN                            R15 0
      468 LOADN                            R16 4
      469 CALL                             R14 2 1
      470 SETTABLEKS                       R14 R13 K92 ["PaddingRight"]
      472 SETTABLEKS                       R13 R12 K95 ["::UIPadding"]
      474 SETLIST                          R11 R12 1 [1]
      476 SETTABLEKS                       R11 R10 K101 [".pad-x-4"]
      478 NEWTABLE                         R11 0 1
      480 NEWTABLE                         R12 1 0
      482 DUPTABLE                         R13 K100 [{"PaddingLeft", "PaddingRight"}]
      483 GETIMPORT                        R14 K84 [UDim.new]
      485 LOADN                            R15 0
      486 LOADN                            R16 8
      487 CALL                             R14 2 1
      488 SETTABLEKS                       R14 R13 K90 ["PaddingLeft"]
      490 GETIMPORT                        R14 K84 [UDim.new]
      492 LOADN                            R15 0
      493 LOADN                            R16 8
      494 CALL                             R14 2 1
      495 SETTABLEKS                       R14 R13 K92 ["PaddingRight"]
      497 SETTABLEKS                       R13 R12 K95 ["::UIPadding"]
      499 SETLIST                          R11 R12 1 [1]
      501 SETTABLEKS                       R11 R10 K102 [".pad-x-8"]
      503 NEWTABLE                         R11 0 1
      505 NEWTABLE                         R12 1 0
      507 DUPTABLE                         R13 K103 [{"PaddingRight"}]
      508 GETIMPORT                        R14 K84 [UDim.new]
      510 LOADN                            R15 0
      511 LOADN                            R16 10
      512 CALL                             R14 2 1
      513 SETTABLEKS                       R14 R13 K92 ["PaddingRight"]
      515 SETTABLEKS                       R13 R12 K95 ["::UIPadding"]
      517 SETLIST                          R11 R12 1 [1]
      519 SETTABLEKS                       R11 R10 K104 [".pad-r-10"]
      521 NEWTABLE                         R11 0 1
      523 NEWTABLE                         R12 1 0
      525 DUPTABLE                         R13 K106 [{"CornerRadius"}]
      526 GETIMPORT                        R14 K84 [UDim.new]
      528 LOADN                            R15 0
      529 LOADN                            R16 4
      530 CALL                             R14 2 1
      531 SETTABLEKS                       R14 R13 K105 ["CornerRadius"]
      533 SETTABLEKS                       R13 R12 K107 ["::UICorner"]
      535 SETLIST                          R11 R12 1 [1]
      537 SETTABLEKS                       R11 R10 K108 [".corner-4"]
      539 NEWTABLE                         R11 0 1
      541 NEWTABLE                         R12 1 0
      543 DUPTABLE                         R13 K106 [{"CornerRadius"}]
      544 GETIMPORT                        R14 K84 [UDim.new]
      546 LOADN                            R15 0
      547 LOADN                            R16 6
      548 CALL                             R14 2 1
      549 SETTABLEKS                       R14 R13 K105 ["CornerRadius"]
      551 SETTABLEKS                       R13 R12 K107 ["::UICorner"]
      553 SETLIST                          R11 R12 1 [1]
      555 SETTABLEKS                       R11 R10 K109 [".corner-6"]
      557 NEWTABLE                         R11 0 1
      559 NEWTABLE                         R12 1 0
      561 DUPTABLE                         R13 K106 [{"CornerRadius"}]
      562 GETIMPORT                        R14 K84 [UDim.new]
      564 LOADN                            R15 0
      565 LOADN                            R16 8
      566 CALL                             R14 2 1
      567 SETTABLEKS                       R14 R13 K105 ["CornerRadius"]
      569 SETTABLEKS                       R13 R12 K107 ["::UICorner"]
      571 SETLIST                          R11 R12 1 [1]
      573 SETTABLEKS                       R11 R10 K110 [".corner-8"]
      575 DUPTABLE                         R11 K113 [{["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["BackgroundColor3"] = "$Surface_0"}]
      576 SETTABLEKS                       R11 R10 K114 [".surface-0"]
      578 DUPTABLE                         R11 K116 [{["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["BackgroundColor3"] = "$Surface_100"}]
      579 SETTABLEKS                       R11 R10 K117 [".surface-100"]
      581 DUPTABLE                         R11 K119 [{["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["BackgroundColor3"] = "$Surface_200"}]
      582 SETTABLEKS                       R11 R10 K120 [".surface-200"]
      584 DUPTABLE                         R11 K122 [{["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["BackgroundColor3"] = "$Surface_300"}]
      585 SETTABLEKS                       R11 R10 K123 [".surface-300"]
      587 NEWTABLE                         R11 8 1
      589 LOADK                            R13 K124 ["corner-6 pad-8 auto-xy"]
      590 SETTABLEKS                       R13 R11 K125 ["tags"]
      592 LOADK                            R13 K121 ["$Surface_300"]
      593 SETTABLEKS                       R13 R11 K111 ["BackgroundColor3"]
      595 LOADN                            R13 0
      596 SETTABLEKS                       R13 R11 K18 ["BackgroundTransparency"]
      598 LOADK                            R13 K126 [""]
      599 SETTABLEKS                       R13 R11 K127 ["Text"]
      601 LOADN                            R13 0
      602 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
      604 NEWTABLE                         R12 16 0
      606 NEWTABLE                         R13 0 1
      608 NEWTABLE                         R14 2 0
      610 DUPTABLE                         R15 K129 [{["BackgroundColor3"] = "$StateHover"}]
      611 SETTABLEKS                       R15 R14 K130 [":hover"]
      613 DUPTABLE                         R15 K132 [{["BackgroundColor3"] = "$StatePress"}]
      614 SETTABLEKS                       R15 R14 K133 [":press"]
      616 SETLIST                          R13 R14 1 [1]
      618 SETTABLEKS                       R13 R12 K134 [".state-enabled"]
      620 DUPTABLE                         R13 K136 [{["BackgroundTransparency"] = 0.5}]
      621 SETTABLEKS                       R13 R12 K137 [".state-disabled"]
      623 NEWTABLE                         R13 1 1
      625 LOADK                            R15 K138 ["$ActionEmphasisBg"]
      626 SETTABLEKS                       R15 R13 K111 ["BackgroundColor3"]
      628 NEWTABLE                         R14 1 0
      630 NEWTABLE                         R15 0 1
      632 NEWTABLE                         R16 2 0
      634 DUPTABLE                         R17 K140 [{["BackgroundColor3"] = "$ActionEmphasisHover"}]
      635 SETTABLEKS                       R17 R16 K130 [":hover"]
      637 DUPTABLE                         R17 K142 [{["BackgroundColor3"] = "$ActionEmphasisPress"}]
      638 SETTABLEKS                       R17 R16 K133 [":press"]
      640 SETLIST                          R15 R16 1 [1]
      642 SETTABLEKS                       R15 R14 K134 [".state-enabled"]
      644 SETLIST                          R13 R14 1 [1]
      646 SETTABLEKS                       R13 R12 K143 [".variant-primary"]
      648 NEWTABLE                         R13 2 1
      650 LOADK                            R15 K144 ["$ActionStandardBg"]
      651 SETTABLEKS                       R15 R13 K111 ["BackgroundColor3"]
      653 LOADK                            R15 K145 [0.88]
      654 SETTABLEKS                       R15 R13 K18 ["BackgroundTransparency"]
      656 NEWTABLE                         R14 2 0
      658 NEWTABLE                         R15 0 1
      660 NEWTABLE                         R16 2 0
      662 DUPTABLE                         R17 K147 [{["BackgroundTransparency"] = 0.78}]
      663 SETTABLEKS                       R17 R16 K130 [":hover"]
      665 DUPTABLE                         R17 K149 [{["BackgroundTransparency"] = 0.68}]
      666 SETTABLEKS                       R17 R16 K133 [":press"]
      668 SETLIST                          R15 R16 1 [1]
      670 SETTABLEKS                       R15 R14 K134 [".state-enabled"]
      672 DUPTABLE                         R15 K151 [{["BackgroundTransparency"] = 0.94}]
      673 SETTABLEKS                       R15 R14 K137 [".state-disabled"]
      675 SETLIST                          R13 R14 1 [1]
      677 SETTABLEKS                       R13 R12 K152 [".variant-standard"]
      679 NEWTABLE                         R13 1 1
      681 LOADN                            R15 1
      682 SETTABLEKS                       R15 R13 K18 ["BackgroundTransparency"]
      684 NEWTABLE                         R14 1 0
      686 NEWTABLE                         R15 0 1
      688 NEWTABLE                         R16 2 0
      690 DUPTABLE                         R17 K153 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$StateHover"}]
      691 SETTABLEKS                       R17 R16 K130 [":hover"]
      693 DUPTABLE                         R17 K154 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$StatePress"}]
      694 SETTABLEKS                       R17 R16 K133 [":press"]
      696 SETLIST                          R15 R16 1 [1]
      698 SETTABLEKS                       R15 R14 K134 [".state-enabled"]
      700 SETLIST                          R13 R14 1 [1]
      702 SETTABLEKS                       R13 R12 K155 [".variant-utility"]
      704 NEWTABLE                         R13 1 1
      706 LOADN                            R15 1
      707 SETTABLEKS                       R15 R13 K18 ["BackgroundTransparency"]
      709 NEWTABLE                         R14 1 0
      711 NEWTABLE                         R15 0 1
      713 NEWTABLE                         R16 2 0
      715 DUPTABLE                         R17 K153 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$StateHover"}]
      716 SETTABLEKS                       R17 R16 K130 [":hover"]
      718 DUPTABLE                         R17 K154 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$StatePress"}]
      719 SETTABLEKS                       R17 R16 K133 [":press"]
      721 SETLIST                          R15 R16 1 [1]
      723 SETTABLEKS                       R15 R14 K134 [".state-enabled"]
      725 SETLIST                          R13 R14 1 [1]
      727 SETTABLEKS                       R13 R12 K156 [".variant-ghost"]
      729 NEWTABLE                         R13 1 1
      731 LOADK                            R15 K157 ["pad-4"]
      732 SETTABLEKS                       R15 R13 K125 ["tags"]
      734 NEWTABLE                         R14 1 0
      736 DUPTABLE                         R15 K159 [{["TextSize"] = 12}]
      737 SETTABLEKS                       R15 R14 K160 ["> TextLabel"]
      739 SETLIST                          R13 R14 1 [1]
      741 SETTABLEKS                       R13 R12 K161 [".size-small"]
      743 NEWTABLE                         R13 0 1
      745 NEWTABLE                         R14 2 0
      747 DUPTABLE                         R15 K162 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      748 GETIMPORT                        R16 K84 [UDim.new]
      750 LOADN                            R17 0
      751 LOADN                            R18 8
      752 CALL                             R16 2 1
      753 SETTABLEKS                       R16 R15 K90 ["PaddingLeft"]
      755 GETIMPORT                        R16 K84 [UDim.new]
      757 LOADN                            R17 0
      758 LOADN                            R18 8
      759 CALL                             R16 2 1
      760 SETTABLEKS                       R16 R15 K92 ["PaddingRight"]
      762 GETIMPORT                        R16 K84 [UDim.new]
      764 LOADN                            R17 0
      765 LOADN                            R18 4
      766 CALL                             R16 2 1
      767 SETTABLEKS                       R16 R15 K91 ["PaddingTop"]
      769 GETIMPORT                        R16 K84 [UDim.new]
      771 LOADN                            R17 0
      772 LOADN                            R18 4
      773 CALL                             R16 2 1
      774 SETTABLEKS                       R16 R15 K93 ["PaddingBottom"]
      776 SETTABLEKS                       R15 R14 K95 ["::UIPadding"]
      778 DUPTABLE                         R15 K159 [{["TextSize"] = 12}]
      779 SETTABLEKS                       R15 R14 K160 ["> TextLabel"]
      781 SETLIST                          R13 R14 1 [1]
      783 SETTABLEKS                       R13 R12 K163 [".size-toolbar"]
      785 NEWTABLE                         R13 1 1
      787 LOADK                            R15 K164 ["pad-12"]
      788 SETTABLEKS                       R15 R13 K125 ["tags"]
      790 NEWTABLE                         R14 1 0
      792 DUPTABLE                         R15 K166 [{["TextSize"] = 16}]
      793 SETTABLEKS                       R15 R14 K160 ["> TextLabel"]
      795 SETLIST                          R13 R14 1 [1]
      797 SETTABLEKS                       R13 R12 K167 [".size-large"]
      799 SETLIST                          R11 R12 1 [1]
      801 SETTABLEKS                       R11 R10 K168 [".button"]
      803 DUPTABLE                         R11 K170 [{["Size"], ["BackgroundTransparency"] = 1, ["ScaleType"]}]
      804 GETIMPORT                        R12 K172 [UDim2.fromOffset]
      806 LOADN                            R13 16
      807 LOADN                            R14 16
      808 CALL                             R12 2 1
      809 SETTABLEKS                       R12 R11 K46 ["Size"]
      811 GETIMPORT                        R12 K174 [Enum.ScaleType.Fit]
      813 SETTABLEKS                       R12 R11 K169 ["ScaleType"]
      815 SETTABLEKS                       R11 R10 K175 [".button-icon"]
      817 NEWTABLE                         R11 4 1
      819 LOADN                            R13 14
      820 SETTABLEKS                       R13 R11 K20 ["TextSize"]
      822 LOADK                            R13 K23 ["$Font"]
      823 SETTABLEKS                       R13 R11 K22 ["FontFace"]
      825 LOADK                            R13 K25 ["$ContentEmphasis"]
      826 SETTABLEKS                       R13 R11 K24 ["TextColor3"]
      828 NEWTABLE                         R12 4 0
      830 DUPTABLE                         R13 K177 [{["TextColor3"] = "$ContentMuted"}]
      831 SETTABLEKS                       R13 R12 K137 [".state-disabled"]
      833 DUPTABLE                         R13 K179 [{["TextColor3"] = "$ActionEmphasisFg"}]
      834 SETTABLEKS                       R13 R12 K143 [".variant-primary"]
      836 NEWTABLE                         R13 1 1
      838 LOADK                            R15 K25 ["$ContentEmphasis"]
      839 SETTABLEKS                       R15 R13 K24 ["TextColor3"]
      841 NEWTABLE                         R14 1 0
      843 DUPTABLE                         R15 K181 [{["TextTransparency"] = 0.5, ["TextColor3"] = "$ContentEmphasis"}]
      844 SETTABLEKS                       R15 R14 K137 [".state-disabled"]
      846 SETLIST                          R13 R14 1 [1]
      848 SETTABLEKS                       R13 R12 K152 [".variant-standard"]
      850 NEWTABLE                         R13 1 1
      852 LOADK                            R15 K25 ["$ContentEmphasis"]
      853 SETTABLEKS                       R15 R13 K24 ["TextColor3"]
      855 NEWTABLE                         R14 1 0
      857 DUPTABLE                         R15 K181 [{["TextTransparency"] = 0.5, ["TextColor3"] = "$ContentEmphasis"}]
      858 SETTABLEKS                       R15 R14 K137 [".state-disabled"]
      860 SETLIST                          R13 R14 1 [1]
      862 SETTABLEKS                       R13 R12 K155 [".variant-utility"]
      864 SETLIST                          R11 R12 1 [1]
      866 SETTABLEKS                       R11 R10 K182 [".button-label"]
      868 NEWTABLE                         R11 8 1
      870 LOADK                            R13 K183 ["corner-4 auto-xy"]
      871 SETTABLEKS                       R13 R11 K125 ["tags"]
      873 LOADK                            R13 K121 ["$Surface_300"]
      874 SETTABLEKS                       R13 R11 K111 ["BackgroundColor3"]
      876 LOADN                            R13 1
      877 SETTABLEKS                       R13 R11 K18 ["BackgroundTransparency"]
      879 LOADK                            R13 K126 [""]
      880 SETTABLEKS                       R13 R11 K127 ["Text"]
      882 LOADN                            R13 0
      883 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
      885 GETIMPORT                        R13 K172 [UDim2.fromOffset]
      887 LOADN                            R14 32
      888 LOADN                            R15 32
      889 CALL                             R13 2 1
      890 SETTABLEKS                       R13 R11 K46 ["Size"]
      892 NEWTABLE                         R12 4 0
      894 DUPTABLE                         R13 K153 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$StateHover"}]
      895 SETTABLEKS                       R13 R12 K130 [":hover"]
      897 DUPTABLE                         R13 K154 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$StatePress"}]
      898 SETTABLEKS                       R13 R12 K133 [":press"]
      900 DUPTABLE                         R13 K136 [{["BackgroundTransparency"] = 0.5}]
      901 SETTABLEKS                       R13 R12 K137 [".state-disabled"]
      903 SETLIST                          R11 R12 1 [1]
      905 SETTABLEKS                       R11 R10 K184 [".icon-button"]
      907 DUPTABLE                         R11 K187 [{["Size"], ["BackgroundTransparency"] = 1, ["ScaleType"], ["Position"], ["AnchorPoint"]}]
      908 GETIMPORT                        R12 K172 [UDim2.fromOffset]
      910 LOADN                            R13 16
      911 LOADN                            R14 16
      912 CALL                             R12 2 1
      913 SETTABLEKS                       R12 R11 K46 ["Size"]
      915 GETIMPORT                        R12 K174 [Enum.ScaleType.Fit]
      917 SETTABLEKS                       R12 R11 K169 ["ScaleType"]
      919 GETIMPORT                        R12 K189 [UDim2.fromScale]
      921 LOADK                            R13 K135 [0.5]
      922 LOADK                            R14 K135 [0.5]
      923 CALL                             R12 2 1
      924 SETTABLEKS                       R12 R11 K185 ["Position"]
      926 GETIMPORT                        R12 K191 [Vector2.new]
      928 LOADK                            R13 K135 [0.5]
      929 LOADK                            R14 K135 [0.5]
      930 CALL                             R12 2 1
      931 SETTABLEKS                       R12 R11 K186 ["AnchorPoint"]
      933 SETTABLEKS                       R11 R10 K192 [".icon-button-image"]
      935 NEWTABLE                         R11 4 1
      937 LOADK                            R13 K193 ["box row gap-8 auto-xy"]
      938 SETTABLEKS                       R13 R11 K125 ["tags"]
      940 LOADK                            R13 K126 [""]
      941 SETTABLEKS                       R13 R11 K127 ["Text"]
      943 LOADN                            R13 0
      944 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
      946 NEWTABLE                         R12 1 0
      948 DUPTABLE                         R13 K136 [{["BackgroundTransparency"] = 0.5}]
      949 SETTABLEKS                       R13 R12 K137 [".state-disabled"]
      951 SETLIST                          R11 R12 1 [1]
      953 SETTABLEKS                       R11 R10 K194 [".checkbox"]
      955 NEWTABLE                         R11 8 1
      957 LOADK                            R13 K195 ["corner-4"]
      958 SETTABLEKS                       R13 R11 K125 ["tags"]
      960 GETIMPORT                        R13 K172 [UDim2.fromOffset]
      962 LOADN                            R14 18
      963 LOADN                            R15 18
      964 CALL                             R13 2 1
      965 SETTABLEKS                       R13 R11 K46 ["Size"]
      967 LOADK                            R13 K121 ["$Surface_300"]
      968 SETTABLEKS                       R13 R11 K111 ["BackgroundColor3"]
      970 LOADN                            R13 0
      971 SETTABLEKS                       R13 R11 K18 ["BackgroundTransparency"]
      973 LOADN                            R13 0
      974 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
      976 NEWTABLE                         R12 2 0
      978 DUPTABLE                         R13 K200 [{["Thickness"] = 1, ["Color"] = "$StrokeDefault", ["ApplyStrokeMode"]}]
      979 GETIMPORT                        R14 K202 [Enum.ApplyStrokeMode.Border]
      981 SETTABLEKS                       R14 R13 K199 ["ApplyStrokeMode"]
      983 SETTABLEKS                       R13 R12 K203 ["::UIStroke"]
      985 NEWTABLE                         R13 1 1
      987 LOADK                            R15 K138 ["$ActionEmphasisBg"]
      988 SETTABLEKS                       R15 R13 K111 ["BackgroundColor3"]
      990 NEWTABLE                         R14 1 0
      992 DUPTABLE                         R15 K204 [{["Color"] = "$ActionEmphasisBg"}]
      993 SETTABLEKS                       R15 R14 K203 ["::UIStroke"]
      995 SETLIST                          R13 R14 1 [1]
      997 SETTABLEKS                       R13 R12 K205 [".state-checked"]
      999 SETLIST                          R11 R12 1 [1]
     1001 SETTABLEKS                       R11 R10 K206 [".checkbox-box"]
     1003 DUPTABLE                         R11 K209 [{["Size"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["ScaleType"], ["ImageColor3"] = "$White"}]
     1004 GETIMPORT                        R12 K172 [UDim2.fromOffset]
     1006 LOADN                            R13 12
     1007 LOADN                            R14 12
     1008 CALL                             R12 2 1
     1009 SETTABLEKS                       R12 R11 K46 ["Size"]
     1011 GETIMPORT                        R12 K189 [UDim2.fromScale]
     1013 LOADK                            R13 K135 [0.5]
     1014 LOADK                            R14 K135 [0.5]
     1015 CALL                             R12 2 1
     1016 SETTABLEKS                       R12 R11 K185 ["Position"]
     1018 GETIMPORT                        R12 K191 [Vector2.new]
     1020 LOADK                            R13 K135 [0.5]
     1021 LOADK                            R14 K135 [0.5]
     1022 CALL                             R12 2 1
     1023 SETTABLEKS                       R12 R11 K186 ["AnchorPoint"]
     1025 GETIMPORT                        R12 K174 [Enum.ScaleType.Fit]
     1027 SETTABLEKS                       R12 R11 K169 ["ScaleType"]
     1029 SETTABLEKS                       R11 R10 K210 [".checkbox-mark"]
     1031 DUPTABLE                         R11 K211 [{["TextSize"] = 14, ["FontFace"] = "$Font", ["TextColor3"] = "$ContentEmphasis"}]
     1032 SETTABLEKS                       R11 R10 K212 [".checkbox-label"]
     1034 DUPTABLE                         R11 K213 [{["tags"] = "box row gap-8 auto-xy", ["Text"] = "", ["BorderSizePixel"] = 0}]
     1035 SETTABLEKS                       R11 R10 K214 [".toggle"]
     1037 NEWTABLE                         R11 4 1
     1039 GETIMPORT                        R13 K172 [UDim2.fromOffset]
     1041 LOADN                            R14 36
     1042 LOADN                            R15 20
     1043 CALL                             R13 2 1
     1044 SETTABLEKS                       R13 R11 K46 ["Size"]
     1046 LOADN                            R13 0
     1047 SETTABLEKS                       R13 R11 K18 ["BackgroundTransparency"]
     1049 LOADN                            R13 0
     1050 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1052 NEWTABLE                         R12 1 0
     1054 DUPTABLE                         R13 K106 [{"CornerRadius"}]
     1055 GETIMPORT                        R14 K84 [UDim.new]
     1057 LOADN                            R15 1
     1058 LOADN                            R16 0
     1059 CALL                             R14 2 1
     1060 SETTABLEKS                       R14 R13 K105 ["CornerRadius"]
     1062 SETTABLEKS                       R13 R12 K107 ["::UICorner"]
     1064 SETLIST                          R11 R12 1 [1]
     1066 SETTABLEKS                       R11 R10 K215 [".toggle-track"]
     1068 DUPTABLE                         R11 K216 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
     1069 GETIMPORT                        R12 K172 [UDim2.fromOffset]
     1071 LOADN                            R13 14
     1072 LOADN                            R14 14
     1073 CALL                             R12 2 1
     1074 SETTABLEKS                       R12 R11 K46 ["Size"]
     1076 SETTABLEKS                       R11 R10 K217 [".toggle-knob"]
     1078 NEWTABLE                         R11 8 1
     1080 GETIMPORT                        R13 K172 [UDim2.fromOffset]
     1082 LOADN                            R14 14
     1083 LOADN                            R15 14
     1084 CALL                             R13 2 1
     1085 SETTABLEKS                       R13 R11 K46 ["Size"]
     1087 GETIMPORT                        R13 K189 [UDim2.fromScale]
     1089 LOADK                            R14 K135 [0.5]
     1090 LOADK                            R15 K135 [0.5]
     1091 CALL                             R13 2 1
     1092 SETTABLEKS                       R13 R11 K185 ["Position"]
     1094 GETIMPORT                        R13 K191 [Vector2.new]
     1096 LOADK                            R14 K135 [0.5]
     1097 LOADK                            R15 K135 [0.5]
     1098 CALL                             R13 2 1
     1099 SETTABLEKS                       R13 R11 K186 ["AnchorPoint"]
     1101 LOADK                            R13 K208 ["$White"]
     1102 SETTABLEKS                       R13 R11 K111 ["BackgroundColor3"]
     1104 LOADN                            R13 0
     1105 SETTABLEKS                       R13 R11 K18 ["BackgroundTransparency"]
     1107 LOADN                            R13 0
     1108 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1110 LOADN                            R13 4
     1111 SETTABLEKS                       R13 R11 K218 ["ZIndex"]
     1113 NEWTABLE                         R12 1 0
     1115 DUPTABLE                         R13 K106 [{"CornerRadius"}]
     1116 GETIMPORT                        R14 K84 [UDim.new]
     1118 LOADK                            R15 K135 [0.5]
     1119 LOADN                            R16 0
     1120 CALL                             R14 2 1
     1121 SETTABLEKS                       R14 R13 K105 ["CornerRadius"]
     1123 SETTABLEKS                       R13 R12 K107 ["::UICorner"]
     1125 SETLIST                          R11 R12 1 [1]
     1127 SETTABLEKS                       R11 R10 K219 [".toggle-knob-circle"]
     1129 DUPTABLE                         R11 K221 [{["Size"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ImageColor3"] = "$White", ["ZIndex"] = 3}]
     1130 GETIMPORT                        R12 K172 [UDim2.fromOffset]
     1132 LOADN                            R13 22
     1133 LOADN                            R14 22
     1134 CALL                             R12 2 1
     1135 SETTABLEKS                       R12 R11 K46 ["Size"]
     1137 GETIMPORT                        R12 K189 [UDim2.fromScale]
     1139 LOADK                            R13 K135 [0.5]
     1140 LOADK                            R14 K135 [0.5]
     1141 CALL                             R12 2 1
     1142 SETTABLEKS                       R12 R11 K185 ["Position"]
     1144 GETIMPORT                        R12 K191 [Vector2.new]
     1146 LOADK                            R13 K135 [0.5]
     1147 LOADK                            R14 K135 [0.5]
     1148 CALL                             R12 2 1
     1149 SETTABLEKS                       R12 R11 K186 ["AnchorPoint"]
     1151 SETTABLEKS                       R11 R10 K222 [".toggle-knob-shadow"]
     1153 DUPTABLE                         R11 K211 [{["TextSize"] = 14, ["FontFace"] = "$Font", ["TextColor3"] = "$ContentEmphasis"}]
     1154 SETTABLEKS                       R11 R10 K223 [".toggle-label"]
     1156 DUPTABLE                         R11 K225 [{["tags"] = "corner-6 row auto-xy", ["BackgroundColor3"] = "$Surface_200", ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0}]
     1157 SETTABLEKS                       R11 R10 K226 [".segmented"]
     1159 NEWTABLE                         R11 4 1
     1161 LOADK                            R13 K227 ["corner-4 pad-8 auto-xy"]
     1162 SETTABLEKS                       R13 R11 K125 ["tags"]
     1164 LOADN                            R13 1
     1165 SETTABLEKS                       R13 R11 K18 ["BackgroundTransparency"]
     1167 LOADK                            R13 K126 [""]
     1168 SETTABLEKS                       R13 R11 K127 ["Text"]
     1170 LOADN                            R13 0
     1171 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1173 NEWTABLE                         R12 2 0
     1175 DUPTABLE                         R13 K153 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$StateHover"}]
     1176 SETTABLEKS                       R13 R12 K130 [":hover"]
     1178 DUPTABLE                         R13 K228 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$Surface_300"}]
     1179 SETTABLEKS                       R13 R12 K229 [".state-selected"]
     1181 SETLIST                          R11 R12 1 [1]
     1183 SETTABLEKS                       R11 R10 K230 [".segmented-item"]
     1185 DUPTABLE                         R11 K232 [{["TextSize"] = 13, ["FontFace"] = "$Font", ["TextColor3"] = "$ContentEmphasis"}]
     1186 SETTABLEKS                       R11 R10 K233 [".segmented-label"]
     1188 NEWTABLE                         R11 8 1
     1190 LOADK                            R13 K234 ["corner-6 row gap-4 pad-8 auto-xy"]
     1191 SETTABLEKS                       R13 R11 K125 ["tags"]
     1193 LOADK                            R13 K121 ["$Surface_300"]
     1194 SETTABLEKS                       R13 R11 K111 ["BackgroundColor3"]
     1196 LOADN                            R13 0
     1197 SETTABLEKS                       R13 R11 K18 ["BackgroundTransparency"]
     1199 LOADK                            R13 K126 [""]
     1200 SETTABLEKS                       R13 R11 K127 ["Text"]
     1202 LOADN                            R13 0
     1203 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1205 NEWTABLE                         R12 4 0
     1207 DUPTABLE                         R13 K200 [{["Thickness"] = 1, ["Color"] = "$StrokeDefault", ["ApplyStrokeMode"]}]
     1208 GETIMPORT                        R14 K202 [Enum.ApplyStrokeMode.Border]
     1210 SETTABLEKS                       R14 R13 K199 ["ApplyStrokeMode"]
     1212 SETTABLEKS                       R13 R12 K203 ["::UIStroke"]
     1214 DUPTABLE                         R13 K129 [{["BackgroundColor3"] = "$StateHover"}]
     1215 SETTABLEKS                       R13 R12 K130 [":hover"]
     1217 NEWTABLE                         R13 1 1
     1219 LOADK                            R15 K128 ["$StateHover"]
     1220 SETTABLEKS                       R15 R13 K111 ["BackgroundColor3"]
     1222 NEWTABLE                         R14 1 0
     1224 DUPTABLE                         R15 K236 [{["Color"] = "$SystemEmphasis"}]
     1225 SETTABLEKS                       R15 R14 K203 ["::UIStroke"]
     1227 SETLIST                          R13 R14 1 [1]
     1229 SETTABLEKS                       R13 R12 K237 [".state-open"]
     1231 SETLIST                          R11 R12 1 [1]
     1233 SETTABLEKS                       R11 R10 K238 [".select"]
     1235 DUPTABLE                         R11 K211 [{["TextSize"] = 14, ["FontFace"] = "$Font", ["TextColor3"] = "$ContentEmphasis"}]
     1236 SETTABLEKS                       R11 R10 K239 [".select-value"]
     1238 DUPTABLE                         R11 K241 [{["Size"], ["BackgroundTransparency"] = 1, ["ScaleType"], ["ImageColor3"] = "$ContentDefault"}]
     1239 GETIMPORT                        R12 K172 [UDim2.fromOffset]
     1241 LOADN                            R13 12
     1242 LOADN                            R14 12
     1243 CALL                             R12 2 1
     1244 SETTABLEKS                       R12 R11 K46 ["Size"]
     1246 GETIMPORT                        R12 K174 [Enum.ScaleType.Fit]
     1248 SETTABLEKS                       R12 R11 K169 ["ScaleType"]
     1250 SETTABLEKS                       R11 R10 K242 [".select-arrow"]
     1252 NEWTABLE                         R11 2 1
     1254 LOADK                            R13 K243 ["corner-6 col gap-2 pad-4 surface-200"]
     1255 SETTABLEKS                       R13 R11 K125 ["tags"]
     1257 LOADN                            R13 0
     1258 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1260 NEWTABLE                         R12 1 0
     1262 DUPTABLE                         R13 K200 [{["Thickness"] = 1, ["Color"] = "$StrokeDefault", ["ApplyStrokeMode"]}]
     1263 GETIMPORT                        R14 K202 [Enum.ApplyStrokeMode.Border]
     1265 SETTABLEKS                       R14 R13 K199 ["ApplyStrokeMode"]
     1267 SETTABLEKS                       R13 R12 K203 ["::UIStroke"]
     1269 SETLIST                          R11 R12 1 [1]
     1271 SETTABLEKS                       R11 R10 K244 [".select-dropdown"]
     1273 NEWTABLE                         R11 4 1
     1275 LOADK                            R13 K245 ["corner-4 pad-8 auto-xy fill-x"]
     1276 SETTABLEKS                       R13 R11 K125 ["tags"]
     1278 LOADN                            R13 1
     1279 SETTABLEKS                       R13 R11 K18 ["BackgroundTransparency"]
     1281 LOADK                            R13 K126 [""]
     1282 SETTABLEKS                       R13 R11 K127 ["Text"]
     1284 LOADN                            R13 0
     1285 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1287 NEWTABLE                         R12 2 0
     1289 DUPTABLE                         R13 K153 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$StateHover"}]
     1290 SETTABLEKS                       R13 R12 K130 [":hover"]
     1292 DUPTABLE                         R13 K228 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$Surface_300"}]
     1293 SETTABLEKS                       R13 R12 K229 [".state-selected"]
     1295 SETLIST                          R11 R12 1 [1]
     1297 SETTABLEKS                       R11 R10 K246 [".select-option"]
     1299 DUPTABLE                         R11 K247 [{["tags"] = "box row gap-8 auto-xy"}]
     1300 SETTABLEKS                       R11 R10 K248 [".slider"]
     1302 DUPTABLE                         R11 K249 [{["tags"] = "corner-4", ["Size"], ["BackgroundColor3"] = "$StrokeDefault", ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0}]
     1303 GETIMPORT                        R12 K172 [UDim2.fromOffset]
     1305 LOADN                            R13 120
     1306 LOADN                            R14 6
     1307 CALL                             R12 2 1
     1308 SETTABLEKS                       R12 R11 K46 ["Size"]
     1310 SETTABLEKS                       R11 R10 K250 [".slider-track"]
     1312 DUPTABLE                         R11 K251 [{["tags"] = "corner-4", ["BackgroundColor3"] = "$SystemEmphasis", ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0}]
     1313 SETTABLEKS                       R11 R10 K252 [".slider-fill"]
     1315 NEWTABLE                         R11 8 1
     1317 GETIMPORT                        R13 K172 [UDim2.fromOffset]
     1319 LOADN                            R14 14
     1320 LOADN                            R15 14
     1321 CALL                             R13 2 1
     1322 SETTABLEKS                       R13 R11 K46 ["Size"]
     1324 LOADK                            R13 K208 ["$White"]
     1325 SETTABLEKS                       R13 R11 K111 ["BackgroundColor3"]
     1327 LOADN                            R13 0
     1328 SETTABLEKS                       R13 R11 K18 ["BackgroundTransparency"]
     1330 LOADN                            R13 0
     1331 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1333 LOADN                            R13 2
     1334 SETTABLEKS                       R13 R11 K218 ["ZIndex"]
     1336 NEWTABLE                         R12 1 0
     1338 DUPTABLE                         R13 K106 [{"CornerRadius"}]
     1339 GETIMPORT                        R14 K84 [UDim.new]
     1341 LOADK                            R15 K135 [0.5]
     1342 LOADN                            R16 0
     1343 CALL                             R14 2 1
     1344 SETTABLEKS                       R14 R13 K105 ["CornerRadius"]
     1346 SETTABLEKS                       R13 R12 K107 ["::UICorner"]
     1348 SETLIST                          R11 R12 1 [1]
     1350 SETTABLEKS                       R11 R10 K253 [".slider-thumb"]
     1352 DUPTABLE                         R11 K254 [{["TextSize"] = 13, ["FontFace"] = "$Font", ["TextColor3"] = "$ContentDefault"}]
     1353 SETTABLEKS                       R11 R10 K255 [".slider-value"]
     1355 NEWTABLE                         R11 4 1
     1357 LOADK                            R13 K256 ["corner-6 row gap-2 auto-xy"]
     1358 SETTABLEKS                       R13 R11 K125 ["tags"]
     1360 LOADK                            R13 K121 ["$Surface_300"]
     1361 SETTABLEKS                       R13 R11 K111 ["BackgroundColor3"]
     1363 LOADN                            R13 0
     1364 SETTABLEKS                       R13 R11 K18 ["BackgroundTransparency"]
     1366 LOADN                            R13 0
     1367 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1369 NEWTABLE                         R12 1 0
     1371 DUPTABLE                         R13 K200 [{["Thickness"] = 1, ["Color"] = "$StrokeDefault", ["ApplyStrokeMode"]}]
     1372 GETIMPORT                        R14 K202 [Enum.ApplyStrokeMode.Border]
     1374 SETTABLEKS                       R14 R13 K199 ["ApplyStrokeMode"]
     1376 SETTABLEKS                       R13 R12 K203 ["::UIStroke"]
     1378 SETLIST                          R11 R12 1 [1]
     1380 SETTABLEKS                       R11 R10 K257 [".spinbox"]
     1382 DUPTABLE                         R11 K258 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["TextSize"] = 14, ["FontFace"] = "$Font", ["TextColor3"] = "$ContentEmphasis", ["TextXAlignment"]}]
     1383 GETIMPORT                        R12 K172 [UDim2.fromOffset]
     1385 LOADN                            R13 48
     1386 LOADN                            R14 24
     1387 CALL                             R12 2 1
     1388 SETTABLEKS                       R12 R11 K46 ["Size"]
     1390 GETIMPORT                        R12 K259 [Enum.TextXAlignment.Center]
     1392 SETTABLEKS                       R12 R11 K26 ["TextXAlignment"]
     1394 SETTABLEKS                       R11 R10 K260 [".spinbox-input"]
     1396 NEWTABLE                         R11 8 1
     1398 LOADK                            R13 K195 ["corner-4"]
     1399 SETTABLEKS                       R13 R11 K125 ["tags"]
     1401 GETIMPORT                        R13 K172 [UDim2.fromOffset]
     1403 LOADN                            R14 20
     1404 LOADN                            R15 24
     1405 CALL                             R13 2 1
     1406 SETTABLEKS                       R13 R11 K46 ["Size"]
     1408 LOADN                            R13 1
     1409 SETTABLEKS                       R13 R11 K18 ["BackgroundTransparency"]
     1411 LOADK                            R13 K126 [""]
     1412 SETTABLEKS                       R13 R11 K127 ["Text"]
     1414 LOADN                            R13 0
     1415 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1417 NEWTABLE                         R12 1 0
     1419 DUPTABLE                         R13 K153 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$StateHover"}]
     1420 SETTABLEKS                       R13 R12 K130 [":hover"]
     1422 SETLIST                          R11 R12 1 [1]
     1424 SETTABLEKS                       R11 R10 K261 [".spinbox-btn"]
     1426 DUPTABLE                         R11 K262 [{["TextSize"] = 16, ["FontFace"] = "$Font", ["TextColor3"] = "$ContentDefault", ["Position"], ["AnchorPoint"]}]
     1427 GETIMPORT                        R12 K189 [UDim2.fromScale]
     1429 LOADK                            R13 K135 [0.5]
     1430 LOADK                            R14 K135 [0.5]
     1431 CALL                             R12 2 1
     1432 SETTABLEKS                       R12 R11 K185 ["Position"]
     1434 GETIMPORT                        R12 K191 [Vector2.new]
     1436 LOADK                            R13 K135 [0.5]
     1437 LOADK                            R14 K135 [0.5]
     1438 CALL                             R12 2 1
     1439 SETTABLEKS                       R12 R11 K186 ["AnchorPoint"]
     1441 SETTABLEKS                       R11 R10 K263 [".spinbox-btn-label"]
     1443 DUPTABLE                         R11 K265 [{["tags"] = "box row gap-2 auto-xy", ["BorderSizePixel"] = 0}]
     1444 SETTABLEKS                       R11 R10 K266 [".tabs"]
     1446 NEWTABLE                         R11 4 1
     1448 LOADK                            R13 K267 ["col auto-xy pad-8"]
     1449 SETTABLEKS                       R13 R11 K125 ["tags"]
     1451 LOADN                            R13 1
     1452 SETTABLEKS                       R13 R11 K18 ["BackgroundTransparency"]
     1454 LOADK                            R13 K126 [""]
     1455 SETTABLEKS                       R13 R11 K127 ["Text"]
     1457 LOADN                            R13 0
     1458 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1460 NEWTABLE                         R12 1 0
     1462 DUPTABLE                         R13 K153 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$StateHover"}]
     1463 SETTABLEKS                       R13 R12 K130 [":hover"]
     1465 SETLIST                          R11 R12 1 [1]
     1467 SETTABLEKS                       R11 R10 K268 [".tab"]
     1469 NEWTABLE                         R11 4 1
     1471 LOADN                            R13 14
     1472 SETTABLEKS                       R13 R11 K20 ["TextSize"]
     1474 LOADK                            R13 K23 ["$Font"]
     1475 SETTABLEKS                       R13 R11 K22 ["FontFace"]
     1477 LOADK                            R13 K240 ["$ContentDefault"]
     1478 SETTABLEKS                       R13 R11 K24 ["TextColor3"]
     1480 NEWTABLE                         R12 1 0
     1482 DUPTABLE                         R13 K269 [{["TextColor3"] = "$ContentEmphasis"}]
     1483 SETTABLEKS                       R13 R12 K229 [".state-selected"]
     1485 SETLIST                          R11 R12 1 [1]
     1487 SETTABLEKS                       R11 R10 K270 [".tab-label"]
     1489 NEWTABLE                         R11 4 1
     1491 GETIMPORT                        R13 K50 [UDim2.new]
     1493 LOADN                            R14 0
     1494 LOADN                            R15 0
     1495 LOADN                            R16 0
     1496 LOADN                            R17 2
     1497 CALL                             R13 4 1
     1498 SETTABLEKS                       R13 R11 K46 ["Size"]
     1500 LOADN                            R13 1
     1501 SETTABLEKS                       R13 R11 K18 ["BackgroundTransparency"]
     1503 LOADN                            R13 0
     1504 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1506 LOADN                            R13 2
     1507 SETTABLEKS                       R13 R11 K69 ["LayoutOrder"]
     1509 NEWTABLE                         R12 2 0
     1511 DUPTABLE                         R13 K272 [{"FlexMode", "ItemLineAlignment"}]
     1512 GETIMPORT                        R14 K274 [Enum.UIFlexMode.Fill]
     1514 SETTABLEKS                       R14 R13 K53 ["FlexMode"]
     1516 GETIMPORT                        R14 K276 [Enum.ItemLineAlignment.Stretch]
     1518 SETTABLEKS                       R14 R13 K271 ["ItemLineAlignment"]
     1520 SETTABLEKS                       R13 R12 K58 ["::UIFlexItem"]
     1522 DUPTABLE                         R13 K277 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$SystemEmphasis"}]
     1523 SETTABLEKS                       R13 R12 K229 [".state-selected"]
     1525 SETLIST                          R11 R12 1 [1]
     1527 SETTABLEKS                       R11 R10 K278 [".tab-indicator"]
     1529 DUPTABLE                         R11 K279 [{["tags"] = "corner-6 row auto-xy", ["BackgroundColor3"] = "$Surface_300", ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0}]
     1530 SETTABLEKS                       R11 R10 K280 [".split-button"]
     1532 NEWTABLE                         R11 4 1
     1534 LOADK                            R13 K281 ["pad-8 auto-xy"]
     1535 SETTABLEKS                       R13 R11 K125 ["tags"]
     1537 LOADN                            R13 1
     1538 SETTABLEKS                       R13 R11 K18 ["BackgroundTransparency"]
     1540 LOADK                            R13 K126 [""]
     1541 SETTABLEKS                       R13 R11 K127 ["Text"]
     1543 LOADN                            R13 0
     1544 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1546 NEWTABLE                         R12 1 0
     1548 DUPTABLE                         R13 K282 [{["BackgroundColor3"] = "$StateHover", ["BackgroundTransparency"] = 0}]
     1549 SETTABLEKS                       R13 R12 K130 [":hover"]
     1551 SETLIST                          R11 R12 1 [1]
     1553 SETTABLEKS                       R11 R10 K283 [".split-main"]
     1555 DUPTABLE                         R11 K284 [{["Size"], ["BackgroundColor3"] = "$StrokeDefault", ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0}]
     1556 GETIMPORT                        R12 K172 [UDim2.fromOffset]
     1558 LOADN                            R13 1
     1559 LOADN                            R14 20
     1560 CALL                             R12 2 1
     1561 SETTABLEKS                       R12 R11 K46 ["Size"]
     1563 SETTABLEKS                       R11 R10 K285 [".split-divider"]
     1565 NEWTABLE                         R11 8 1
     1567 LOADK                            R13 K157 ["pad-4"]
     1568 SETTABLEKS                       R13 R11 K125 ["tags"]
     1570 GETIMPORT                        R13 K172 [UDim2.fromOffset]
     1572 LOADN                            R14 24
     1573 LOADN                            R15 0
     1574 CALL                             R13 2 1
     1575 SETTABLEKS                       R13 R11 K46 ["Size"]
     1577 GETIMPORT                        R13 K44 [Enum.AutomaticSize.Y]
     1579 SETTABLEKS                       R13 R11 K15 ["AutomaticSize"]
     1581 LOADN                            R13 1
     1582 SETTABLEKS                       R13 R11 K18 ["BackgroundTransparency"]
     1584 LOADK                            R13 K126 [""]
     1585 SETTABLEKS                       R13 R11 K127 ["Text"]
     1587 LOADN                            R13 0
     1588 SETTABLEKS                       R13 R11 K16 ["BorderSizePixel"]
     1590 NEWTABLE                         R12 1 0
     1592 DUPTABLE                         R13 K282 [{["BackgroundColor3"] = "$StateHover", ["BackgroundTransparency"] = 0}]
     1593 SETTABLEKS                       R13 R12 K130 [":hover"]
     1595 SETLIST                          R11 R12 1 [1]
     1597 SETTABLEKS                       R11 R10 K286 [".split-arrow"]
     1599 DUPTABLE                         R11 K187 [{["Size"], ["BackgroundTransparency"] = 1, ["ScaleType"], ["Position"], ["AnchorPoint"]}]
     1600 GETIMPORT                        R12 K172 [UDim2.fromOffset]
     1602 LOADN                            R13 10
     1603 LOADN                            R14 10
     1604 CALL                             R12 2 1
     1605 SETTABLEKS                       R12 R11 K46 ["Size"]
     1607 GETIMPORT                        R12 K174 [Enum.ScaleType.Fit]
     1609 SETTABLEKS                       R12 R11 K169 ["ScaleType"]
     1611 GETIMPORT                        R12 K189 [UDim2.fromScale]
     1613 LOADK                            R13 K135 [0.5]
     1614 LOADK                            R14 K135 [0.5]
     1615 CALL                             R12 2 1
     1616 SETTABLEKS                       R12 R11 K185 ["Position"]
     1618 GETIMPORT                        R12 K191 [Vector2.new]
     1620 LOADK                            R13 K135 [0.5]
     1621 LOADK                            R14 K135 [0.5]
     1622 CALL                             R12 2 1
     1623 SETTABLEKS                       R12 R11 K186 ["AnchorPoint"]
     1625 SETTABLEKS                       R11 R10 K287 [".split-arrow-icon"]
     1627 DUPTABLE                         R11 K288 [{["Size"], ["BackgroundColor3"] = "$Surface_300", ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0}]
     1628 GETIMPORT                        R12 K50 [UDim2.new]
     1630 LOADN                            R13 1
     1631 LOADN                            R14 0
     1632 LOADN                            R15 0
     1633 LOADN                            R16 1
     1634 CALL                             R12 4 1
     1635 SETTABLEKS                       R12 R11 K46 ["Size"]
     1637 SETTABLEKS                       R11 R10 K289 [".separator-h"]
     1639 DUPTABLE                         R11 K288 [{["Size"], ["BackgroundColor3"] = "$Surface_300", ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0}]
     1640 GETIMPORT                        R12 K172 [UDim2.fromOffset]
     1642 LOADN                            R13 1
     1643 LOADN                            R14 24
     1644 CALL                             R12 2 1
     1645 SETTABLEKS                       R12 R11 K46 ["Size"]
     1647 SETTABLEKS                       R11 R10 K290 [".separator-v"]
     1649 DUPTABLE                         R11 K292 [{["TextSize"] = 20, ["FontFace"] = "$Font", ["TextColor3"] = "$ContentEmphasis"}]
     1650 SETTABLEKS                       R11 R10 K293 [".text-title"]
     1652 DUPTABLE                         R11 K294 [{["TextSize"] = 16, ["FontFace"] = "$Font", ["TextColor3"] = "$ContentEmphasis"}]
     1653 SETTABLEKS                       R11 R10 K295 [".text-subtitle"]
     1655 DUPTABLE                         R11 K211 [{["TextSize"] = 14, ["FontFace"] = "$Font", ["TextColor3"] = "$ContentEmphasis"}]
     1656 SETTABLEKS                       R11 R10 K296 [".text-body"]
     1658 DUPTABLE                         R11 K297 [{["TextSize"] = 12, ["FontFace"] = "$Font", ["TextColor3"] = "$ContentDefault"}]
     1659 SETTABLEKS                       R11 R10 K298 [".text-caption"]
     1661 DUPTABLE                         R11 K302 [{["TextSize"] = 15, ["Font"] = "$FontSemiBold", ["TextColor3"] = "$ContentEmphasis"}]
     1662 SETTABLEKS                       R11 R10 K303 [".text-label"]
     1664 DUPTABLE                         R11 K305 [{"TextTruncate"}]
     1665 GETIMPORT                        R12 K307 [Enum.TextTruncate.AtEnd]
     1667 SETTABLEKS                       R12 R11 K304 ["TextTruncate"]
     1669 SETTABLEKS                       R11 R10 K308 [".text-truncate-end"]
     1671 MOVE                             R11 R3
     1672 LOADK                            R12 K309 ["ComponentStyles"]
     1673 NEWTABLE                         R13 0 0
     1675 NEWTABLE                         R14 0 3
     1677 MOVE                             R15 R4
     1678 NEWTABLE                         R16 1 2
     1680 LOADK                            R19 K310 ["Tokens"]
     1681 SETTABLEKS                       R19 R16 K311 ["Name"]
     1683 MOVE                             R17 R5
     1684 DUPTABLE                         R18 K314 [{["Name"] = "DarkTokens", ["tokens"], ["rules"]}]
     1685 SETTABLEKS                       R8 R18 K312 ["tokens"]
     1687 NEWTABLE                         R19 0 0
     1689 SETTABLEKS                       R19 R18 K313 ["rules"]
     1691 CALL                             R17 1 1
     1692 MOVE                             R18 R5
     1693 DUPTABLE                         R19 K315 [{["Name"] = "LightTokens", ["tokens"], ["rules"]}]
     1694 SETTABLEKS                       R9 R19 K312 ["tokens"]
     1696 NEWTABLE                         R20 0 0
     1698 SETTABLEKS                       R20 R19 K313 ["rules"]
     1700 CALL                             R18 1 -1
     1701 SETLIST                          R16 R17 -1 [1]
     1703 CALL                             R15 1 1
     1704 MOVE                             R16 R5
     1705 DUPTABLE                         R17 K317 [{["Name"] = "ComponentRulesSheet", ["tokens"], ["rules"]}]
     1706 NEWTABLE                         R18 0 0
     1708 SETTABLEKS                       R18 R17 K312 ["tokens"]
     1710 SETTABLEKS                       R10 R17 K313 ["rules"]
     1712 CALL                             R16 1 1
     1713 MOVE                             R17 R6
     1714 NEWTABLE                         R18 0 0
     1716 CALL                             R17 1 -1
     1717 SETLIST                          R14 R15 -1 [1]
     1719 DUPCLOSURE                       R15 K318 [PROTO_1]
     1720 CAPTURE                          VAL R7
     1721 CALL                             R11 4 1
     1722 RETURN                           R11 1
