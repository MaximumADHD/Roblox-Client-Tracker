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
      304 GETTABLEKS                       R22 R14 K77 ["X"]
      306 GETTABLEKS                       R22 R22 K76 ["Offset"]
      308 SUB                              R21 R6 R22
      309 GETTABLEKS                       R23 R1 K4 ["Footer"]
      311 GETTABLEKS                       R23 R23 K6 ["Padding"]
      313 MULK                             R22 R23 K78 [2]
      314 SUB                              R20 R21 R22
      315 GETTABLEKS                       R21 R1 K4 ["Footer"]
      317 GETTABLEKS                       R21 R21 K12 ["Spacing"]
      319 SUB                              R19 R20 R21
      320 JUMPIFNOTLT                      R19 R15 ; [+3]
      322 SUB                              R20 R15 R19
      323 ADD                              R6 R6 R20
      324 DUPTABLE                         R20 K95 [{"Size", "TerrainSize"}]
      325 GETIMPORT                        R21 K92 [Vector2.new]
      327 MOVE                             R22 R6
      328 MOVE                             R23 R12
      329 CALL                             R21 2 1
      330 SETTABLEKS                       R21 R20 K11 ["Size"]
      332 GETIMPORT                        R21 K92 [Vector2.new]
      334 LOADN                            R22 272
      335 LOADN                            R23 340
      336 CALL                             R21 2 1
      337 SETTABLEKS                       R21 R20 K94 ["TerrainSize"]
      339 SETTABLEKS                       R20 R1 K96 ["Popup"]
      341 GETTABLEKS                       R20 R1 K4 ["Footer"]
      343 GETTABLEKS                       R20 R20 K60 ["IconButton"]
      345 GETTABLEKS                       R20 R20 K65 ["MaterialManagerButton"]
      347 GETIMPORT                        R21 K19 [UDim2.new]
      349 LOADN                            R22 0
      350 MOVE                             R23 R15
      351 LOADN                            R24 1
      352 LOADN                            R25 0
      353 CALL                             R21 4 1
      354 SETTABLEKS                       R21 R20 K11 ["Size"]
      356 GETTABLEKS                       R20 R1 K3 ["MaterialGrid"]
      358 GETIMPORT                        R21 K98 [NumberRange.new]
      360 LOADN                            R22 0
      361 GETTABLEKS                       R24 R1 K96 ["Popup"]
      363 GETTABLEKS                       R24 R24 K11 ["Size"]
      365 GETTABLEKS                       R24 R24 K77 ["X"]
      367 GETTABLEKS                       R25 R1 K0 ["MainView"]
      369 GETTABLEKS                       R25 R25 K8 ["ScrollBarThickness"]
      371 SUB                              R23 R24 R25
      372 CALL                             R21 2 1
      373 SETTABLEKS                       R21 R20 K99 ["ContainerXBounds"]
      375 GETTABLEKS                       R20 R1 K3 ["MaterialGrid"]
      377 GETIMPORT                        R21 K98 [NumberRange.new]
      379 GETTABLEKS                       R23 R1 K1 ["PrimaryTools"]
      381 GETTABLEKS                       R23 R23 K11 ["Size"]
      383 GETTABLEKS                       R23 R23 K75 ["Y"]
      385 GETTABLEKS                       R23 R23 K76 ["Offset"]
      387 GETTABLEKS                       R24 R1 K2 ["Filters"]
      389 GETTABLEKS                       R24 R24 K11 ["Size"]
      391 GETTABLEKS                       R24 R24 K75 ["Y"]
      393 GETTABLEKS                       R24 R24 K76 ["Offset"]
      395 ADD                              R22 R23 R24
      396 GETTABLEKS                       R24 R1 K96 ["Popup"]
      398 GETTABLEKS                       R24 R24 K11 ["Size"]
      400 GETTABLEKS                       R24 R24 K75 ["Y"]
      402 GETTABLEKS                       R25 R1 K4 ["Footer"]
      404 GETTABLEKS                       R25 R25 K11 ["Size"]
      406 GETTABLEKS                       R25 R25 K75 ["Y"]
      408 GETTABLEKS                       R25 R25 K76 ["Offset"]
      410 SUB                              R23 R24 R25
      411 CALL                             R21 2 1
      412 SETTABLEKS                       R21 R20 K100 ["ContainerYBounds"]
      414 GETTABLEKS                       R20 R1 K3 ["MaterialGrid"]
      416 GETIMPORT                        R21 K19 [UDim2.new]
      418 LOADN                            R22 1
      419 LOADN                            R23 0
      420 LOADN                            R24 0
      421 MOVE                             R25 R8
      422 CALL                             R21 4 1
      423 SETTABLEKS                       R21 R20 K11 ["Size"]
      425 NEWTABLE                         R20 2 0
      427 NEWCLOSURE                       R21 P0
      428 CAPTURE                          VAL R0
      429 CAPTURE                          UPVAL U5
      430 CAPTURE                          UPVAL U6
      431 CAPTURE                          UPVAL U7
      432 CAPTURE                          VAL R1
      433 SETTABLEKS                       R21 R20 K101 ["createTheme"]
      435 GETTABLEKS                       R21 R1 K96 ["Popup"]
      437 SETTABLEKS                       R21 R20 K96 ["Popup"]
      439 RETURN                           R20 1

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
       66 GETIMPORT                        R10 K27 [string.format]
       68 LOADK                            R11 K28 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Generate.png"]
       69 LOADK                            R12 K29 ["Light"]
       70 CALL                             R10 2 1
       71 GETIMPORT                        R11 K27 [string.format]
       73 LOADK                            R12 K28 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Generate.png"]
       74 LOADK                            R13 K30 ["Dark"]
       75 CALL                             R11 2 1
       76 GETIMPORT                        R12 K27 [string.format]
       78 LOADK                            R13 K31 ["rbxasset://studio_svg_textures/Shared/Modeling/%s/Large/Material.png"]
       79 LOADK                            R14 K29 ["Light"]
       80 CALL                             R12 2 1
       81 GETIMPORT                        R13 K27 [string.format]
       83 LOADK                            R14 K31 ["rbxasset://studio_svg_textures/Shared/Modeling/%s/Large/Material.png"]
       84 LOADK                            R15 K30 ["Dark"]
       85 CALL                             R13 2 1
       86 GETIMPORT                        R14 K27 [string.format]
       88 LOADK                            R15 K32 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Grid.png"]
       89 LOADK                            R16 K29 ["Light"]
       90 CALL                             R14 2 1
       91 GETIMPORT                        R15 K27 [string.format]
       93 LOADK                            R16 K32 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Grid.png"]
       94 LOADK                            R17 K30 ["Dark"]
       95 CALL                             R15 2 1
       96 GETIMPORT                        R16 K27 [string.format]
       98 LOADK                            R17 K33 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/List.png"]
       99 LOADK                            R18 K29 ["Light"]
      100 CALL                             R16 2 1
      101 GETIMPORT                        R17 K27 [string.format]
      103 LOADK                            R18 K33 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/List.png"]
      104 LOADK                            R19 K30 ["Dark"]
      105 CALL                             R17 2 1
      106 NEWTABLE                         R18 16 0
      108 GETTABLEKS                       R19 R5 K34 ["MaterialGeneratorButtonIcon"]
      110 SETTABLE                         R11 R18 R19
      111 GETTABLEKS                       R19 R5 K35 ["MaterialManagerButtonIcon"]
      113 SETTABLE                         R13 R18 R19
      114 GETTABLEKS                       R19 R5 K36 ["ViewToggleButtonGridIcon"]
      116 SETTABLE                         R15 R18 R19
      117 GETTABLEKS                       R19 R5 K37 ["ViewToggleButtonListIcon"]
      119 SETTABLE                         R17 R18 R19
      120 GETTABLEKS                       R19 R5 K38 ["FilterChipTextColor"]
      122 GETIMPORT                        R20 K41 [Color3.fromHex]
      124 LOADK                            R21 K42 ["FFFFFF"]
      125 CALL                             R20 1 1
      126 SETTABLE                         R20 R18 R19
      127 GETTABLEKS                       R19 R5 K43 ["FilterChipBorderColor"]
      129 GETIMPORT                        R20 K41 [Color3.fromHex]
      131 LOADK                            R21 K44 ["262626"]
      132 CALL                             R20 1 1
      133 SETTABLE                         R20 R18 R19
      134 GETTABLEKS                       R19 R5 K45 ["FilterChipInactiveBackgroundColor"]
      136 GETIMPORT                        R20 K41 [Color3.fromHex]
      138 LOADK                            R21 K46 ["3C3C3C"]
      139 CALL                             R20 1 1
      140 SETTABLE                         R20 R18 R19
      141 GETTABLEKS                       R19 R5 K47 ["FilterChipInactiveHoverBackgroundColor"]
      143 GETIMPORT                        R20 K41 [Color3.fromHex]
      145 LOADK                            R21 K48 ["424242"]
      146 CALL                             R20 1 1
      147 SETTABLE                         R20 R18 R19
      148 GETTABLEKS                       R19 R5 K49 ["FilterChipActiveBackgroundColor"]
      150 GETIMPORT                        R20 K41 [Color3.fromHex]
      152 LOADK                            R21 K50 ["1A1A1A"]
      153 CALL                             R20 1 1
      154 SETTABLE                         R20 R18 R19
      155 GETTABLEKS                       R19 R5 K51 ["FilterChipActiveHoverBackgroundColor"]
      157 GETIMPORT                        R20 K41 [Color3.fromHex]
      159 LOADK                            R21 K52 ["252525"]
      160 CALL                             R20 1 1
      161 SETTABLE                         R20 R18 R19
      162 NEWTABLE                         R19 16 0
      164 GETTABLEKS                       R20 R5 K34 ["MaterialGeneratorButtonIcon"]
      166 SETTABLE                         R10 R19 R20
      167 GETTABLEKS                       R20 R5 K35 ["MaterialManagerButtonIcon"]
      169 SETTABLE                         R12 R19 R20
      170 GETTABLEKS                       R20 R5 K36 ["ViewToggleButtonGridIcon"]
      172 SETTABLE                         R14 R19 R20
      173 GETTABLEKS                       R20 R5 K37 ["ViewToggleButtonListIcon"]
      175 SETTABLE                         R16 R19 R20
      176 GETTABLEKS                       R20 R5 K38 ["FilterChipTextColor"]
      178 GETIMPORT                        R21 K41 [Color3.fromHex]
      180 LOADK                            R22 K53 ["000000"]
      181 CALL                             R21 1 1
      182 SETTABLE                         R21 R19 R20
      183 GETTABLEKS                       R20 R5 K43 ["FilterChipBorderColor"]
      185 GETIMPORT                        R21 K41 [Color3.fromHex]
      187 LOADK                            R22 K54 ["B6B6B6"]
      188 CALL                             R21 1 1
      189 SETTABLE                         R21 R19 R20
      190 GETTABLEKS                       R20 R5 K45 ["FilterChipInactiveBackgroundColor"]
      192 GETIMPORT                        R21 K41 [Color3.fromHex]
      194 LOADK                            R22 K42 ["FFFFFF"]
      195 CALL                             R21 1 1
      196 SETTABLE                         R21 R19 R20
      197 GETTABLEKS                       R20 R5 K47 ["FilterChipInactiveHoverBackgroundColor"]
      199 GETIMPORT                        R21 K41 [Color3.fromHex]
      201 LOADK                            R22 K55 ["E4EEFE"]
      202 CALL                             R21 1 1
      203 SETTABLE                         R21 R19 R20
      204 GETTABLEKS                       R20 R5 K49 ["FilterChipActiveBackgroundColor"]
      206 GETIMPORT                        R21 K41 [Color3.fromHex]
      208 LOADK                            R22 K56 ["A8A8A8"]
      209 CALL                             R21 1 1
      210 SETTABLE                         R21 R19 R20
      211 GETTABLEKS                       R20 R5 K51 ["FilterChipActiveHoverBackgroundColor"]
      213 GETIMPORT                        R21 K41 [Color3.fromHex]
      215 LOADK                            R22 K57 ["D8E6FF"]
      216 CALL                             R21 1 1
      217 SETTABLE                         R21 R19 R20
      218 DUPCLOSURE                       R20 K58 [PROTO_1]
      219 CAPTURE                          VAL R5
      220 CAPTURE                          VAL R6
      221 CAPTURE                          VAL R7
      222 CAPTURE                          VAL R8
      223 CAPTURE                          VAL R9
      224 CAPTURE                          VAL R4
      225 CAPTURE                          VAL R18
      226 CAPTURE                          VAL R19
      227 RETURN                           R20 1
