PROTO_0:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["mock"]
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 1
        8 MOVE                             R0 R1
        9 JUMP                             ; [+7]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["new"]
       13 GETUPVAL                         R2 2
       14 GETUPVAL                         R3 3
       15 CALL                             R1 2 1
       16 MOVE                             R0 R1
       17 GETUPVAL                         R3 4
       18 NAMECALL                         R1 R0 K2 ["extend"]
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R1 K5 [{"MainView", "PrimaryTools", "Filters", "MaterialGrid", "Footer"}]
        1 DUPTABLE                         R2 K10 [{["Padding"] = 10, ["ScrollBarThickness"] = 8}]
        2 SETTABLEKS                       R2 R1 K0 ["MainView"]
        4 DUPTABLE                         R2 K16 [{["Size"], ["Spacing"] = 4, ["Padding"] = 8, ["SearchBar"], ["ViewToggle"]}]
        5 GETIMPORT                        R3 K19 [UDim2.new]
        7 LOADN                            R4 1
        8 LOADN                            R5 0
        9 LOADN                            R6 0
       10 LOADN                            R7 40
       11 CALL                             R3 4 1
       12 SETTABLEKS                       R3 R2 K11 ["Size"]
       14 DUPTABLE                         R3 K20 [{"Size"}]
       15 GETIMPORT                        R4 K19 [UDim2.new]
       17 LOADN                            R5 1
       18 LOADN                            R6 -24
       19 LOADN                            R7 1
       20 LOADN                            R8 0
       21 CALL                             R4 4 1
       22 SETTABLEKS                       R4 R3 K11 ["Size"]
       24 SETTABLEKS                       R3 R2 K14 ["SearchBar"]
       26 DUPTABLE                         R3 K23 [{"Size", "LeftIconGrid", "LeftIconList"}]
       27 GETIMPORT                        R4 K19 [UDim2.new]
       29 LOADN                            R5 0
       30 LOADN                            R6 24
       31 LOADN                            R7 0
       32 LOADN                            R8 24
       33 CALL                             R4 4 1
       34 SETTABLEKS                       R4 R3 K11 ["Size"]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K24 ["ViewToggleButtonGridIcon"]
       39 SETTABLEKS                       R4 R3 K21 ["LeftIconGrid"]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K25 ["ViewToggleButtonListIcon"]
       44 SETTABLEKS                       R4 R3 K22 ["LeftIconList"]
       46 SETTABLEKS                       R3 R2 K15 ["ViewToggle"]
       48 SETTABLEKS                       R2 R1 K1 ["PrimaryTools"]
       50 DUPTABLE                         R2 K35 [{["Size"], ["ChipSize"], ["TextColor"], ["BorderColor"], ["InactiveBackgroundColor"], ["InactiveHoverBackgroundColor"], ["ActiveBackgroundColor"], ["ActiveHoverBackgroundColor"], ["TextSize"] = 15}]
       51 GETIMPORT                        R3 K19 [UDim2.new]
       53 LOADN                            R4 1
       54 LOADN                            R5 0
       55 LOADN                            R6 0
       56 LOADN                            R7 30
       57 CALL                             R3 4 1
       58 SETTABLEKS                       R3 R2 K11 ["Size"]
       60 GETIMPORT                        R3 K19 [UDim2.new]
       62 LOADN                            R4 1
       63 LOADN                            R5 0
       64 LOADN                            R6 0
       65 LOADN                            R7 22
       66 CALL                             R3 4 1
       67 SETTABLEKS                       R3 R2 K26 ["ChipSize"]
       69 GETUPVAL                         R3 0
       70 GETTABLEKS                       R3 R3 K36 ["FilterChipTextColor"]
       72 SETTABLEKS                       R3 R2 K27 ["TextColor"]
       74 GETUPVAL                         R3 0
       75 GETTABLEKS                       R3 R3 K37 ["FilterChipBorderColor"]
       77 SETTABLEKS                       R3 R2 K28 ["BorderColor"]
       79 GETUPVAL                         R3 0
       80 GETTABLEKS                       R3 R3 K38 ["FilterChipInactiveBackgroundColor"]
       82 SETTABLEKS                       R3 R2 K29 ["InactiveBackgroundColor"]
       84 GETUPVAL                         R3 0
       85 GETTABLEKS                       R3 R3 K39 ["FilterChipInactiveHoverBackgroundColor"]
       87 SETTABLEKS                       R3 R2 K30 ["InactiveHoverBackgroundColor"]
       89 GETUPVAL                         R3 0
       90 GETTABLEKS                       R3 R3 K40 ["FilterChipActiveBackgroundColor"]
       92 SETTABLEKS                       R3 R2 K31 ["ActiveBackgroundColor"]
       94 GETUPVAL                         R3 0
       95 GETTABLEKS                       R3 R3 K41 ["FilterChipActiveHoverBackgroundColor"]
       97 SETTABLEKS                       R3 R2 K32 ["ActiveHoverBackgroundColor"]
       99 SETTABLEKS                       R2 R1 K2 ["Filters"]
      101 DUPTABLE                         R2 K54 [{["GridItemsPerRow"] = 3, ["GridItemRowsPerPage"] = 3, ["GridItemPadding"] = 4, ["GridItemSize"] = 80, ["ListPadding"], ["SnapshotSize"], ["SnapshotBorderThickness"] = 0.6, ["TooltipDelay"] = 0.4}]
      102 DUPTABLE                         R3 K57 [{["Top"] = 3, ["Left"] = 3}]
      103 SETTABLEKS                       R3 R2 K48 ["ListPadding"]
      105 GETIMPORT                        R3 K59 [UDim2.fromOffset]
      107 LOADN                            R4 64
      108 LOADN                            R5 64
      109 CALL                             R3 2 1
      110 SETTABLEKS                       R3 R2 K49 ["SnapshotSize"]
      112 SETTABLEKS                       R2 R1 K3 ["MaterialGrid"]
      114 DUPTABLE                         R2 K61 [{["Padding"] = 8, ["Spacing"] = 4, ["Size"], ["IconButton"]}]
      115 GETIMPORT                        R3 K19 [UDim2.new]
      117 LOADN                            R4 1
      118 LOADN                            R5 0
      119 LOADN                            R6 0
      120 LOADN                            R7 40
      121 CALL                             R3 4 1
      122 SETTABLEKS                       R3 R2 K11 ["Size"]
      124 DUPTABLE                         R3 K67 [{["BackgroundColor"], ["IconSize"] = 16, ["Spacing"] = 8, ["Padding"] = 8, ["MaterialManagerButton"], ["MaterialGeneratorButton"]}]
      125 GETUPVAL                         R4 0
      126 GETTABLEKS                       R4 R4 K68 ["Button"]
      128 SETTABLEKS                       R4 R3 K62 ["BackgroundColor"]
      130 DUPTABLE                         R4 K70 [{"Icon"}]
      131 GETUPVAL                         R5 0
      132 GETTABLEKS                       R5 R5 K71 ["MaterialManagerButtonIcon"]
      134 SETTABLEKS                       R5 R4 K69 ["Icon"]
      136 SETTABLEKS                       R4 R3 K65 ["MaterialManagerButton"]
      138 DUPTABLE                         R4 K72 [{"Icon", "Size"}]
      139 GETUPVAL                         R5 0
      140 GETTABLEKS                       R5 R5 K73 ["MaterialGeneratorButtonIcon"]
      142 SETTABLEKS                       R5 R4 K69 ["Icon"]
      144 GETIMPORT                        R5 K19 [UDim2.new]
      146 LOADN                            R6 0
      147 LOADN                            R7 97
      148 LOADN                            R8 1
      149 LOADN                            R9 0
      150 CALL                             R5 4 1
      151 SETTABLEKS                       R5 R4 K11 ["Size"]
      153 SETTABLEKS                       R4 R3 K66 ["MaterialGeneratorButton"]
      155 SETTABLEKS                       R3 R2 K60 ["IconButton"]
      157 SETTABLEKS                       R2 R1 K4 ["Footer"]
      159 GETTABLEKS                       R2 R1 K3 ["MaterialGrid"]
      161 GETTABLEKS                       R2 R2 K46 ["GridItemSize"]
      163 GETTABLEKS                       R3 R1 K0 ["MainView"]
      165 GETTABLEKS                       R3 R3 K8 ["ScrollBarThickness"]
      167 GETTABLEKS                       R4 R1 K3 ["MaterialGrid"]
      169 GETTABLEKS                       R4 R4 K42 ["GridItemsPerRow"]
      171 GETTABLEKS                       R5 R1 K3 ["MaterialGrid"]
      173 GETTABLEKS                       R5 R5 K45 ["GridItemPadding"]
      175 MUL                              R8 R4 R2
      176 ADDK                             R10 R4 K74 [1]
      177 MUL                              R9 R10 R5
      178 ADD                              R7 R8 R9
      179 ADD                              R6 R7 R3
      180 GETTABLEKS                       R7 R1 K3 ["MaterialGrid"]
      182 GETTABLEKS                       R7 R7 K44 ["GridItemRowsPerPage"]
      184 MUL                              R9 R7 R2
      185 ADDK                             R11 R7 K74 [1]
      186 MUL                              R10 R11 R5
      187 ADD                              R8 R9 R10
      188 GETTABLEKS                       R9 R1 K1 ["PrimaryTools"]
      190 GETTABLEKS                       R9 R9 K11 ["Size"]
      192 GETTABLEKS                       R9 R9 K75 ["Y"]
      194 GETTABLEKS                       R9 R9 K76 ["Offset"]
      196 GETTABLEKS                       R10 R1 K2 ["Filters"]
      198 GETTABLEKS                       R10 R10 K11 ["Size"]
      200 GETTABLEKS                       R10 R10 K75 ["Y"]
      202 GETTABLEKS                       R10 R10 K76 ["Offset"]
      204 GETTABLEKS                       R11 R1 K4 ["Footer"]
      206 GETTABLEKS                       R11 R11 K11 ["Size"]
      208 GETTABLEKS                       R11 R11 K75 ["Y"]
      210 GETTABLEKS                       R11 R11 K76 ["Offset"]
      212 ADD                              R14 R9 R10
      213 ADD                              R13 R14 R8
      214 ADD                              R12 R13 R11
      215 GETTABLEKS                       R13 R1 K4 ["Footer"]
      217 GETTABLEKS                       R13 R13 K60 ["IconButton"]
      219 GETTABLEKS                       R13 R13 K63 ["IconSize"]
      221 GETTABLEKS                       R14 R1 K4 ["Footer"]
      223 GETTABLEKS                       R14 R14 K60 ["IconButton"]
      225 GETTABLEKS                       R14 R14 K66 ["MaterialGeneratorButton"]
      227 GETTABLEKS                       R14 R14 K11 ["Size"]
      229 GETTABLEKS                       R18 R14 K77 ["X"]
      231 GETTABLEKS                       R18 R18 K76 ["Offset"]
      233 SUB                              R17 R6 R18
      234 GETTABLEKS                       R19 R1 K4 ["Footer"]
      236 GETTABLEKS                       R19 R19 K6 ["Padding"]
      238 MULK                             R18 R19 K78 [2]
      239 SUB                              R16 R17 R18
      240 GETTABLEKS                       R17 R1 K4 ["Footer"]
      242 GETTABLEKS                       R17 R17 K12 ["Spacing"]
      244 SUB                              R15 R16 R17
      245 LOADNIL                          R16
      246 JUMPIFNOT                        R0 ; [+2]
      247 LOADK                            R16 K79 ["Material Manager"]
      248 JUMP                             ; [+19]
      249 GETUPVAL                         R17 1
      250 GETTABLEKS                       R17 R17 K80 ["Localization"]
      252 GETTABLEKS                       R17 R17 K18 ["new"]
      254 DUPTABLE                         R18 K85 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "MaterialPicker"}]
      255 GETUPVAL                         R19 2
      256 SETTABLEKS                       R19 R18 K81 ["stringResourceTable"]
      258 GETUPVAL                         R19 3
      259 SETTABLEKS                       R19 R18 K82 ["translationResourceTable"]
      261 CALL                             R17 1 1
      262 LOADK                            R20 K0 ["MainView"]
      263 LOADK                            R21 K65 ["MaterialManagerButton"]
      264 NAMECALL                         R18 R17 K86 ["getText"]
      266 CALL                             R18 3 1
      267 MOVE                             R16 R18
      268 SUB                              R19 R15 R13
      269 GETTABLEKS                       R21 R1 K4 ["Footer"]
      271 GETTABLEKS                       R21 R21 K60 ["IconButton"]
      273 GETTABLEKS                       R21 R21 K6 ["Padding"]
      275 MULK                             R20 R21 K78 [2]
      276 SUB                              R18 R19 R20
      277 GETTABLEKS                       R19 R1 K4 ["Footer"]
      279 GETTABLEKS                       R19 R19 K60 ["IconButton"]
      281 GETTABLEKS                       R19 R19 K12 ["Spacing"]
      283 SUB                              R17 R18 R19
      284 GETUPVAL                         R18 4
      285 MOVE                             R20 R16
      286 MOVE                             R21 R13
      287 GETIMPORT                        R22 K90 [Enum.Font.SourceSans]
      289 GETIMPORT                        R23 K92 [Vector2.new]
      291 MOVE                             R24 R15
      292 MOVE                             R25 R13
      293 CALL                             R23 2 -1
      294 NAMECALL                         R18 R18 K93 ["GetTextSize"]
      296 CALL                             R18 -1 1
      297 GETTABLEKS                       R18 R18 K77 ["X"]
      299 JUMPIFNOTLT                      R17 R18 ; [+4]
      301 SUB                              R20 R18 R17
      302 ADD                              R19 R15 R20
      303 ADDK                             R15 R19 K64 [16]
      304 LOADNIL                          R19
      305 GETUPVAL                         R20 5
      306 CALL                             R20 0 1
      307 JUMPIFNOT                        R20 ; [+17]
      308 GETTABLEKS                       R22 R14 K77 ["X"]
      310 GETTABLEKS                       R22 R22 K76 ["Offset"]
      312 SUB                              R21 R6 R22
      313 GETTABLEKS                       R23 R1 K4 ["Footer"]
      315 GETTABLEKS                       R23 R23 K6 ["Padding"]
      317 MULK                             R22 R23 K78 [2]
      318 SUB                              R20 R21 R22
      319 GETTABLEKS                       R21 R1 K4 ["Footer"]
      321 GETTABLEKS                       R21 R21 K12 ["Spacing"]
      323 SUB                              R19 R20 R21
      324 JUMP                             ; [+11]
      325 GETTABLEKS                       R22 R1 K4 ["Footer"]
      327 GETTABLEKS                       R22 R22 K6 ["Padding"]
      329 MULK                             R21 R22 K78 [2]
      330 SUB                              R20 R6 R21
      331 GETTABLEKS                       R21 R1 K4 ["Footer"]
      333 GETTABLEKS                       R21 R21 K12 ["Spacing"]
      335 SUB                              R19 R20 R21
      336 JUMPIFNOTLT                      R19 R15 ; [+3]
      338 SUB                              R20 R15 R19
      339 ADD                              R6 R6 R20
      340 DUPTABLE                         R20 K95 [{"Size", "TerrainSize"}]
      341 GETIMPORT                        R21 K92 [Vector2.new]
      343 MOVE                             R22 R6
      344 MOVE                             R23 R12
      345 CALL                             R21 2 1
      346 SETTABLEKS                       R21 R20 K11 ["Size"]
      348 GETIMPORT                        R21 K92 [Vector2.new]
      350 LOADN                            R22 272
      351 LOADN                            R23 340
      352 CALL                             R21 2 1
      353 SETTABLEKS                       R21 R20 K94 ["TerrainSize"]
      355 SETTABLEKS                       R20 R1 K96 ["Popup"]
      357 GETTABLEKS                       R20 R1 K4 ["Footer"]
      359 GETTABLEKS                       R20 R20 K60 ["IconButton"]
      361 GETTABLEKS                       R20 R20 K65 ["MaterialManagerButton"]
      363 GETIMPORT                        R21 K19 [UDim2.new]
      365 LOADN                            R22 0
      366 MOVE                             R23 R15
      367 LOADN                            R24 1
      368 LOADN                            R25 0
      369 CALL                             R21 4 1
      370 SETTABLEKS                       R21 R20 K11 ["Size"]
      372 GETTABLEKS                       R20 R1 K3 ["MaterialGrid"]
      374 GETIMPORT                        R21 K98 [NumberRange.new]
      376 LOADN                            R22 0
      377 GETTABLEKS                       R24 R1 K96 ["Popup"]
      379 GETTABLEKS                       R24 R24 K11 ["Size"]
      381 GETTABLEKS                       R24 R24 K77 ["X"]
      383 GETTABLEKS                       R25 R1 K0 ["MainView"]
      385 GETTABLEKS                       R25 R25 K8 ["ScrollBarThickness"]
      387 SUB                              R23 R24 R25
      388 CALL                             R21 2 1
      389 SETTABLEKS                       R21 R20 K99 ["ContainerXBounds"]
      391 GETTABLEKS                       R20 R1 K3 ["MaterialGrid"]
      393 GETIMPORT                        R21 K98 [NumberRange.new]
      395 GETTABLEKS                       R23 R1 K1 ["PrimaryTools"]
      397 GETTABLEKS                       R23 R23 K11 ["Size"]
      399 GETTABLEKS                       R23 R23 K75 ["Y"]
      401 GETTABLEKS                       R23 R23 K76 ["Offset"]
      403 GETTABLEKS                       R24 R1 K2 ["Filters"]
      405 GETTABLEKS                       R24 R24 K11 ["Size"]
      407 GETTABLEKS                       R24 R24 K75 ["Y"]
      409 GETTABLEKS                       R24 R24 K76 ["Offset"]
      411 ADD                              R22 R23 R24
      412 GETTABLEKS                       R24 R1 K96 ["Popup"]
      414 GETTABLEKS                       R24 R24 K11 ["Size"]
      416 GETTABLEKS                       R24 R24 K75 ["Y"]
      418 GETTABLEKS                       R25 R1 K4 ["Footer"]
      420 GETTABLEKS                       R25 R25 K11 ["Size"]
      422 GETTABLEKS                       R25 R25 K75 ["Y"]
      424 GETTABLEKS                       R25 R25 K76 ["Offset"]
      426 SUB                              R23 R24 R25
      427 CALL                             R21 2 1
      428 SETTABLEKS                       R21 R20 K100 ["ContainerYBounds"]
      430 GETTABLEKS                       R20 R1 K3 ["MaterialGrid"]
      432 GETIMPORT                        R21 K19 [UDim2.new]
      434 LOADN                            R22 1
      435 LOADN                            R23 0
      436 LOADN                            R24 0
      437 MOVE                             R25 R8
      438 CALL                             R21 4 1
      439 SETTABLEKS                       R21 R20 K11 ["Size"]
      441 NEWTABLE                         R20 2 0
      443 NEWCLOSURE                       R21 P0
      444 CAPTURE                          VAL R0
      445 CAPTURE                          UPVAL U6
      446 CAPTURE                          UPVAL U7
      447 CAPTURE                          UPVAL U8
      448 CAPTURE                          VAL R1
      449 SETTABLEKS                       R21 R20 K101 ["createTheme"]
      451 GETTABLEKS                       R21 R1 K96 ["Popup"]
      453 SETTABLEKS                       R21 R20 K96 ["Popup"]
      455 RETURN                           R20 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["MaterialFramework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["_Index"]
       27 GETTABLEKS                       R4 R4 K10 ["DeveloperFramework"]
       29 GETTABLEKS                       R4 R4 K10 ["DeveloperFramework"]
       31 GETTABLEKS                       R4 R4 K11 ["Types"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K12 ["Resources"]
       36 GETTABLEKS                       R4 R4 K13 ["Theme"]
       38 GETTABLEKS                       R5 R2 K14 ["Style"]
       40 GETTABLEKS                       R5 R5 K15 ["StyleKey"]
       42 GETTABLEKS                       R6 R2 K16 ["ContextServices"]
       44 GETTABLEKS                       R7 R0 K17 ["Src"]
       46 GETTABLEKS                       R7 R7 K12 ["Resources"]
       48 GETTABLEKS                       R7 R7 K18 ["Localization"]
       50 GETTABLEKS                       R7 R7 K19 ["SourceStrings"]
       52 GETTABLEKS                       R8 R0 K17 ["Src"]
       54 GETTABLEKS                       R8 R8 K12 ["Resources"]
       56 GETTABLEKS                       R8 R8 K18 ["Localization"]
       58 GETTABLEKS                       R8 R8 K20 ["LocalizedStrings"]
       60 GETIMPORT                        R9 K22 [game]
       62 LOADK                            R11 K23 ["TextService"]
       63 NAMECALL                         R9 R9 K24 ["GetService"]
       65 CALL                             R9 2 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K17 ["Src"]
       70 GETTABLEKS                       R11 R11 K25 ["Flags"]
       72 GETTABLEKS                       R11 R11 K26 ["getFFlagEnableMaterialGenerator"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K29 [string.format]
       77 LOADK                            R12 K30 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Generate.png"]
       78 LOADK                            R13 K31 ["Light"]
       79 CALL                             R11 2 1
       80 GETIMPORT                        R12 K29 [string.format]
       82 LOADK                            R13 K30 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Generate.png"]
       83 LOADK                            R14 K32 ["Dark"]
       84 CALL                             R12 2 1
       85 GETIMPORT                        R13 K29 [string.format]
       87 LOADK                            R14 K33 ["rbxasset://studio_svg_textures/Shared/Modeling/%s/Large/Material.png"]
       88 LOADK                            R15 K31 ["Light"]
       89 CALL                             R13 2 1
       90 GETIMPORT                        R14 K29 [string.format]
       92 LOADK                            R15 K33 ["rbxasset://studio_svg_textures/Shared/Modeling/%s/Large/Material.png"]
       93 LOADK                            R16 K32 ["Dark"]
       94 CALL                             R14 2 1
       95 GETIMPORT                        R15 K29 [string.format]
       97 LOADK                            R16 K34 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Grid.png"]
       98 LOADK                            R17 K31 ["Light"]
       99 CALL                             R15 2 1
      100 GETIMPORT                        R16 K29 [string.format]
      102 LOADK                            R17 K34 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Grid.png"]
      103 LOADK                            R18 K32 ["Dark"]
      104 CALL                             R16 2 1
      105 GETIMPORT                        R17 K29 [string.format]
      107 LOADK                            R18 K35 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/List.png"]
      108 LOADK                            R19 K31 ["Light"]
      109 CALL                             R17 2 1
      110 GETIMPORT                        R18 K29 [string.format]
      112 LOADK                            R19 K35 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/List.png"]
      113 LOADK                            R20 K32 ["Dark"]
      114 CALL                             R18 2 1
      115 NEWTABLE                         R19 16 0
      117 GETTABLEKS                       R20 R5 K36 ["MaterialGeneratorButtonIcon"]
      119 SETTABLE                         R12 R19 R20
      120 GETTABLEKS                       R20 R5 K37 ["MaterialManagerButtonIcon"]
      122 SETTABLE                         R14 R19 R20
      123 GETTABLEKS                       R20 R5 K38 ["ViewToggleButtonGridIcon"]
      125 SETTABLE                         R16 R19 R20
      126 GETTABLEKS                       R20 R5 K39 ["ViewToggleButtonListIcon"]
      128 SETTABLE                         R18 R19 R20
      129 GETTABLEKS                       R20 R5 K40 ["FilterChipTextColor"]
      131 GETIMPORT                        R21 K43 [Color3.fromHex]
      133 LOADK                            R22 K44 ["FFFFFF"]
      134 CALL                             R21 1 1
      135 SETTABLE                         R21 R19 R20
      136 GETTABLEKS                       R20 R5 K45 ["FilterChipBorderColor"]
      138 GETIMPORT                        R21 K43 [Color3.fromHex]
      140 LOADK                            R22 K46 ["262626"]
      141 CALL                             R21 1 1
      142 SETTABLE                         R21 R19 R20
      143 GETTABLEKS                       R20 R5 K47 ["FilterChipInactiveBackgroundColor"]
      145 GETIMPORT                        R21 K43 [Color3.fromHex]
      147 LOADK                            R22 K48 ["3C3C3C"]
      148 CALL                             R21 1 1
      149 SETTABLE                         R21 R19 R20
      150 GETTABLEKS                       R20 R5 K49 ["FilterChipInactiveHoverBackgroundColor"]
      152 GETIMPORT                        R21 K43 [Color3.fromHex]
      154 LOADK                            R22 K50 ["424242"]
      155 CALL                             R21 1 1
      156 SETTABLE                         R21 R19 R20
      157 GETTABLEKS                       R20 R5 K51 ["FilterChipActiveBackgroundColor"]
      159 GETIMPORT                        R21 K43 [Color3.fromHex]
      161 LOADK                            R22 K52 ["1A1A1A"]
      162 CALL                             R21 1 1
      163 SETTABLE                         R21 R19 R20
      164 GETTABLEKS                       R20 R5 K53 ["FilterChipActiveHoverBackgroundColor"]
      166 GETIMPORT                        R21 K43 [Color3.fromHex]
      168 LOADK                            R22 K54 ["252525"]
      169 CALL                             R21 1 1
      170 SETTABLE                         R21 R19 R20
      171 NEWTABLE                         R20 16 0
      173 GETTABLEKS                       R21 R5 K36 ["MaterialGeneratorButtonIcon"]
      175 SETTABLE                         R11 R20 R21
      176 GETTABLEKS                       R21 R5 K37 ["MaterialManagerButtonIcon"]
      178 SETTABLE                         R13 R20 R21
      179 GETTABLEKS                       R21 R5 K38 ["ViewToggleButtonGridIcon"]
      181 SETTABLE                         R15 R20 R21
      182 GETTABLEKS                       R21 R5 K39 ["ViewToggleButtonListIcon"]
      184 SETTABLE                         R17 R20 R21
      185 GETTABLEKS                       R21 R5 K40 ["FilterChipTextColor"]
      187 GETIMPORT                        R22 K43 [Color3.fromHex]
      189 LOADK                            R23 K55 ["000000"]
      190 CALL                             R22 1 1
      191 SETTABLE                         R22 R20 R21
      192 GETTABLEKS                       R21 R5 K45 ["FilterChipBorderColor"]
      194 GETIMPORT                        R22 K43 [Color3.fromHex]
      196 LOADK                            R23 K56 ["B6B6B6"]
      197 CALL                             R22 1 1
      198 SETTABLE                         R22 R20 R21
      199 GETTABLEKS                       R21 R5 K47 ["FilterChipInactiveBackgroundColor"]
      201 GETIMPORT                        R22 K43 [Color3.fromHex]
      203 LOADK                            R23 K44 ["FFFFFF"]
      204 CALL                             R22 1 1
      205 SETTABLE                         R22 R20 R21
      206 GETTABLEKS                       R21 R5 K49 ["FilterChipInactiveHoverBackgroundColor"]
      208 GETIMPORT                        R22 K43 [Color3.fromHex]
      210 LOADK                            R23 K57 ["E4EEFE"]
      211 CALL                             R22 1 1
      212 SETTABLE                         R22 R20 R21
      213 GETTABLEKS                       R21 R5 K51 ["FilterChipActiveBackgroundColor"]
      215 GETIMPORT                        R22 K43 [Color3.fromHex]
      217 LOADK                            R23 K58 ["A8A8A8"]
      218 CALL                             R22 1 1
      219 SETTABLE                         R22 R20 R21
      220 GETTABLEKS                       R21 R5 K53 ["FilterChipActiveHoverBackgroundColor"]
      222 GETIMPORT                        R22 K43 [Color3.fromHex]
      224 LOADK                            R23 K59 ["D8E6FF"]
      225 CALL                             R22 1 1
      226 SETTABLE                         R22 R20 R21
      227 DUPCLOSURE                       R21 K60 [PROTO_1]
      228 CAPTURE                          VAL R5
      229 CAPTURE                          VAL R6
      230 CAPTURE                          VAL R7
      231 CAPTURE                          VAL R8
      232 CAPTURE                          VAL R9
      233 CAPTURE                          VAL R10
      234 CAPTURE                          VAL R4
      235 CAPTURE                          VAL R19
      236 CAPTURE                          VAL R20
      237 RETURN                           R21 1
