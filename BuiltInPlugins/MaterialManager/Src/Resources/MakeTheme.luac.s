PROTO_0:
        0 GETIMPORT                        R0 K3 [Enum.Font.SourceSansBold]
        2 GETIMPORT                        R1 K3 [Enum.Font.SourceSansBold]
        4 GETIMPORT                        R2 K6 [UDim2.fromOffset]
        6 LOADN                            R3 20
        7 LOADN                            R4 20
        8 CALL                             R2 2 1
        9 GETIMPORT                        R3 K6 [UDim2.fromOffset]
       11 LOADN                            R4 5
       12 LOADN                            R5 5
       13 CALL                             R3 2 1
       14 GETIMPORT                        R4 K6 [UDim2.fromOffset]
       16 LOADN                            R5 20
       17 LOADN                            R6 20
       18 CALL                             R4 2 1
       19 GETIMPORT                        R5 K9 [UDim.new]
       21 LOADN                            R6 0
       22 LOADN                            R7 108
       23 CALL                             R5 2 1
       24 GETIMPORT                        R6 K9 [UDim.new]
       26 LOADN                            R7 0
       27 LOADN                            R8 89
       28 CALL                             R6 2 1
       29 GETIMPORT                        R7 K10 [UDim2.new]
       31 LOADN                            R8 1
       32 LOADN                            R9 226
       33 LOADN                            R10 0
       34 LOADN                            R11 5
       35 CALL                             R7 4 1
       36 GETIMPORT                        R8 K6 [UDim2.fromOffset]
       38 LOADN                            R9 30
       39 LOADN                            R10 30
       40 CALL                             R8 2 1
       41 GETIMPORT                        R9 K10 [UDim2.new]
       43 LOADN                            R10 1
       44 LOADN                            R11 0
       45 LOADN                            R12 0
       46 LOADN                            R13 30
       47 CALL                             R9 4 1
       48 DUPTABLE                         R10 K34 [{"MaterialBrowser", "MaterialPreview", "GeneralSettings", "TextureSettings", "PhysicalSettings", "LabeledElement", "CustomSelectInput", "CustomExpandablePane", "MaterialGrid", "MaterialListItem", "MaterialTileItem", "MaterialHeader", "MaterialInformation", "MaterialOverrides", "OverrideSettings", "TerrainDetailsEditor", "TerrainDetailsSettings", "TilingSettings", "StatusIcon", "TopBar", "PromptSelectorWithPreview", "ViewTypeButton", "ActionButton"}]
       49 DUPTABLE                         R11 K48 [{"BackgroundColor", "GridBackgroundColor", "HideIcon", "IconColor", "IconSize", "MainViewSize", "MaterialEditorSize", "MaterialEditorWidth", "MaterialGridSize", "MaterialTileWidth", "MinSideBarWidth", "Padding", "TopBarSize"}]
       50 GETUPVAL                         R12 0
       51 GETTABLEKS                       R12 R12 K49 ["MainBackground"]
       53 SETTABLEKS                       R12 R11 K35 ["BackgroundColor"]
       55 GETUPVAL                         R12 0
       56 GETTABLEKS                       R12 R12 K50 ["ScrollingFrameBackgroundColor"]
       58 SETTABLEKS                       R12 R11 K36 ["GridBackgroundColor"]
       60 LOADK                            R12 K51 ["rbxasset://textures/MaterialManager/chevrons-left.png"]
       61 SETTABLEKS                       R12 R11 K37 ["HideIcon"]
       63 GETUPVAL                         R12 0
       64 GETTABLEKS                       R12 R12 K52 ["ButtonText"]
       66 SETTABLEKS                       R12 R11 K38 ["IconColor"]
       68 SETTABLEKS                       R2 R11 K39 ["IconSize"]
       70 GETIMPORT                        R12 K10 [UDim2.new]
       72 LOADN                            R13 1
       73 LOADN                            R14 0
       74 LOADN                            R15 1
       75 LOADN                            R16 220
       76 CALL                             R12 4 1
       77 SETTABLEKS                       R12 R11 K40 ["MainViewSize"]
       79 GETIMPORT                        R12 K10 [UDim2.new]
       81 LOADN                            R13 0
       82 LOADN                            R14 59
       83 LOADN                            R15 1
       84 LOADN                            R16 0
       85 CALL                             R12 4 1
       86 SETTABLEKS                       R12 R11 K41 ["MaterialEditorSize"]
       88 LOADN                            R12 59
       89 SETTABLEKS                       R12 R11 K42 ["MaterialEditorWidth"]
       91 GETIMPORT                        R12 K10 [UDim2.new]
       93 LOADN                            R13 1
       94 LOADN                            R14 197
       95 LOADN                            R15 1
       96 LOADN                            R16 0
       97 CALL                             R12 4 1
       98 SETTABLEKS                       R12 R11 K43 ["MaterialGridSize"]
      100 LOADN                            R12 200
      101 SETTABLEKS                       R12 R11 K44 ["MaterialTileWidth"]
      103 LOADN                            R12 120
      104 SETTABLEKS                       R12 R11 K45 ["MinSideBarWidth"]
      106 LOADN                            R12 10
      107 SETTABLEKS                       R12 R11 K46 ["Padding"]
      109 GETIMPORT                        R12 K10 [UDim2.new]
      111 LOADN                            R13 1
      112 LOADN                            R14 0
      113 LOADN                            R15 0
      114 LOADN                            R16 36
      115 CALL                             R12 4 1
      116 SETTABLEKS                       R12 R11 K47 ["TopBarSize"]
      118 SETTABLEKS                       R11 R10 K11 ["MaterialBrowser"]
      120 DUPTABLE                         R11 K57 [{"Ambient", "BackgroundColor", "BackgroundColorHover", "LightColor", "LightDirection"}]
      121 GETUPVAL                         R13 1
      122 CALL                             R13 0 1
      123 JUMPIFNOT                        R13 ; [+7]
      124 GETIMPORT                        R12 K60 [Color3.fromRGB]
      126 LOADN                            R13 120
      127 LOADN                            R14 120
      128 LOADN                            R15 135
      129 CALL                             R12 3 1
      130 JUMP                             ; [+6]
      131 GETIMPORT                        R12 K61 [Color3.new]
      133 LOADK                            R13 K62 [0.274]
      134 LOADK                            R14 K62 [0.274]
      135 LOADK                            R15 K62 [0.274]
      136 CALL                             R12 3 1
      137 SETTABLEKS                       R12 R11 K53 ["Ambient"]
      139 GETUPVAL                         R12 0
      140 GETTABLEKS                       R12 R12 K63 ["Button"]
      142 SETTABLEKS                       R12 R11 K35 ["BackgroundColor"]
      144 GETUPVAL                         R12 0
      145 GETTABLEKS                       R12 R12 K64 ["ButtonHover"]
      147 SETTABLEKS                       R12 R11 K54 ["BackgroundColorHover"]
      149 GETUPVAL                         R13 1
      150 CALL                             R13 0 1
      151 JUMPIFNOT                        R13 ; [+7]
      152 GETIMPORT                        R12 K60 [Color3.fromRGB]
      154 LOADN                            R13 60
      155 LOADN                            R14 60
      156 LOADN                            R15 75
      157 CALL                             R12 3 1
      158 JUMP                             ; [+6]
      159 GETIMPORT                        R12 K61 [Color3.new]
      161 LOADN                            R13 1
      162 LOADN                            R14 1
      163 LOADN                            R15 1
      164 CALL                             R12 3 1
      165 SETTABLEKS                       R12 R11 K55 ["LightColor"]
      167 LOADK                            R12 K65 [{-10, -10, 5}]
      168 SETTABLEKS                       R12 R11 K56 ["LightDirection"]
      170 SETTABLEKS                       R11 R10 K12 ["MaterialPreview"]
      172 DUPTABLE                         R11 K70 [{"DialogColumnSize", "LabelColumnWidth", "ItemSpacing", "ContentPadding"}]
      173 GETIMPORT                        R12 K10 [UDim2.new]
      175 LOADN                            R13 0
      176 LOADN                            R14 145
      177 LOADN                            R15 0
      178 LOADN                            R16 25
      179 CALL                             R12 4 1
      180 SETTABLEKS                       R12 R11 K66 ["DialogColumnSize"]
      182 SETTABLEKS                       R5 R11 K67 ["LabelColumnWidth"]
      184 LOADN                            R12 3
      185 SETTABLEKS                       R12 R11 K68 ["ItemSpacing"]
      187 LOADN                            R12 5
      188 SETTABLEKS                       R12 R11 K69 ["ContentPadding"]
      190 SETTABLEKS                       R11 R10 K13 ["GeneralSettings"]
      192 DUPTABLE                         R11 K73 [{"ColumnWidth", "ContentPadding", "ItemSpacing", "LabelColumnWidth", "LabelWidth"}]
      193 LOADN                            R12 145
      194 SETTABLEKS                       R12 R11 K71 ["ColumnWidth"]
      196 LOADN                            R12 5
      197 SETTABLEKS                       R12 R11 K69 ["ContentPadding"]
      199 LOADN                            R12 3
      200 SETTABLEKS                       R12 R11 K68 ["ItemSpacing"]
      202 SETTABLEKS                       R5 R11 K67 ["LabelColumnWidth"]
      204 SETTABLEKS                       R6 R11 K72 ["LabelWidth"]
      206 SETTABLEKS                       R11 R10 K14 ["TextureSettings"]
      208 DUPTABLE                         R11 K76 [{"ButtonPadding", "ButtonSize", "DialogColumnSize", "LabelColumnWidth", "ItemSpacing", "ContentPadding"}]
      209 LOADN                            R12 18
      210 SETTABLEKS                       R12 R11 K74 ["ButtonPadding"]
      212 GETIMPORT                        R12 K10 [UDim2.new]
      214 LOADN                            R13 1
      215 LOADN                            R14 250
      216 LOADN                            R15 0
      217 LOADN                            R16 25
      218 CALL                             R12 4 1
      219 SETTABLEKS                       R12 R11 K75 ["ButtonSize"]
      221 GETIMPORT                        R12 K10 [UDim2.new]
      223 LOADN                            R13 0
      224 LOADN                            R14 145
      225 LOADN                            R15 0
      226 LOADN                            R16 25
      227 CALL                             R12 4 1
      228 SETTABLEKS                       R12 R11 K66 ["DialogColumnSize"]
      230 SETTABLEKS                       R5 R11 K67 ["LabelColumnWidth"]
      232 LOADN                            R12 3
      233 SETTABLEKS                       R12 R11 K68 ["ItemSpacing"]
      235 LOADN                            R12 5
      236 SETTABLEKS                       R12 R11 K69 ["ContentPadding"]
      238 SETTABLEKS                       R11 R10 K15 ["PhysicalSettings"]
      240 DUPTABLE                         R11 K81 [{"FillDirection", "ImageSize", "LabelYSize", "TextXAlignment"}]
      241 GETIMPORT                        R12 K83 [Enum.FillDirection.Horizontal]
      243 SETTABLEKS                       R12 R11 K77 ["FillDirection"]
      245 SETTABLEKS                       R4 R11 K78 ["ImageSize"]
      247 GETIMPORT                        R12 K9 [UDim.new]
      249 LOADN                            R13 0
      250 LOADN                            R14 24
      251 CALL                             R12 2 1
      252 SETTABLEKS                       R12 R11 K79 ["LabelYSize"]
      254 GETIMPORT                        R12 K85 [Enum.TextXAlignment.Left]
      256 SETTABLEKS                       R12 R11 K80 ["TextXAlignment"]
      258 SETTABLEKS                       R11 R10 K16 ["LabeledElement"]
      260 GETUPVAL                         R11 2
      261 GETUPVAL                         R12 3
      262 DUPTABLE                         R13 K88 [{"PlaceholderTextColor", "BackgroundStyle"}]
      263 GETUPVAL                         R14 0
      264 GETTABLEKS                       R14 R14 K52 ["ButtonText"]
      266 SETTABLEKS                       R14 R13 K86 ["PlaceholderTextColor"]
      268 GETUPVAL                         R14 2
      269 GETUPVAL                         R15 4
      270 DUPTABLE                         R16 K90 [{"Color"}]
      271 GETUPVAL                         R17 0
      272 GETTABLEKS                       R17 R17 K91 ["SelectInputBackgroundColor"]
      274 SETTABLEKS                       R17 R16 K89 ["Color"]
      276 CALL                             R14 2 1
      277 SETTABLEKS                       R14 R13 K87 ["BackgroundStyle"]
      279 CALL                             R11 2 1
      280 SETTABLEKS                       R11 R10 K17 ["CustomSelectInput"]
      282 GETUPVAL                         R11 5
      283 GETTABLEKS                       R11 R11 K92 ["joinDeep"]
      285 GETUPVAL                         R12 6
      286 DUPTABLE                         R13 K94 [{"Header"}]
      287 DUPTABLE                         R14 K97 [{"Background", "Text"}]
      288 GETUPVAL                         R15 0
      289 GETTABLEKS                       R15 R15 K98 ["Titlebar"]
      291 SETTABLEKS                       R15 R14 K95 ["Background"]
      293 DUPTABLE                         R15 K100 [{"Font", "TextSize"}]
      294 SETTABLEKS                       R0 R15 K1 ["Font"]
      296 LOADN                            R16 18
      297 SETTABLEKS                       R16 R15 K99 ["TextSize"]
      299 SETTABLEKS                       R15 R14 K96 ["Text"]
      301 SETTABLEKS                       R14 R13 K93 ["Header"]
      303 CALL                             R11 2 1
      304 SETTABLEKS                       R11 R10 K18 ["CustomExpandablePane"]
      306 DUPTABLE                         R11 K106 [{"BackgroundColor", "ChevronRight", "GridPadding", "IconColor", "IconSize", "ListHeight", "ListPadding", "Padding", "ShowIcon"}]
      307 GETUPVAL                         R12 0
      308 GETTABLEKS                       R12 R12 K50 ["ScrollingFrameBackgroundColor"]
      310 SETTABLEKS                       R12 R11 K35 ["BackgroundColor"]
      312 LOADK                            R12 K107 ["rbxasset://textures/MaterialManager/chevrons-right.png"]
      313 SETTABLEKS                       R12 R11 K101 ["ChevronRight"]
      315 LOADN                            R12 4
      316 SETTABLEKS                       R12 R11 K102 ["GridPadding"]
      318 GETUPVAL                         R12 0
      319 GETTABLEKS                       R12 R12 K52 ["ButtonText"]
      321 SETTABLEKS                       R12 R11 K38 ["IconColor"]
      323 SETTABLEKS                       R2 R11 K39 ["IconSize"]
      325 LOADN                            R12 40
      326 SETTABLEKS                       R12 R11 K103 ["ListHeight"]
      328 LOADN                            R12 2
      329 SETTABLEKS                       R12 R11 K104 ["ListPadding"]
      331 LOADN                            R12 5
      332 SETTABLEKS                       R12 R11 K46 ["Padding"]
      334 LOADK                            R12 K107 ["rbxasset://textures/MaterialManager/chevrons-right.png"]
      335 SETTABLEKS                       R12 R11 K105 ["ShowIcon"]
      337 SETTABLEKS                       R11 R10 K19 ["MaterialGrid"]
      339 DUPTABLE                         R11 K113 [{"ApplyIcon", "ApplyIconPosition", "ButtonSize", "Height", "IconSize", "MaterialVariantIcon", "Spacing", "TextSize"}]
      340 DUPTABLE                         R12 K115 [{"Image", "Color"}]
      341 LOADK                            R13 K116 ["rbxasset://textures/MaterialManager/Apply_To_Selection.png"]
      342 SETTABLEKS                       R13 R12 K114 ["Image"]
      344 GETUPVAL                         R13 0
      345 GETTABLEKS                       R13 R13 K117 ["BrightText"]
      347 SETTABLEKS                       R13 R12 K89 ["Color"]
      349 SETTABLEKS                       R12 R11 K108 ["ApplyIcon"]
      351 GETIMPORT                        R12 K10 [UDim2.new]
      353 LOADN                            R13 1
      354 LOADN                            R14 252
      355 LOADN                            R15 0
      356 LOADN                            R16 4
      357 CALL                             R12 4 1
      358 SETTABLEKS                       R12 R11 K109 ["ApplyIconPosition"]
      360 GETIMPORT                        R12 K6 [UDim2.fromOffset]
      362 LOADN                            R13 28
      363 LOADN                            R14 28
      364 CALL                             R12 2 1
      365 SETTABLEKS                       R12 R11 K75 ["ButtonSize"]
      367 LOADN                            R12 40
      368 SETTABLEKS                       R12 R11 K110 ["Height"]
      370 SETTABLEKS                       R2 R11 K39 ["IconSize"]
      372 DUPTABLE                         R12 K118 [{"Image"}]
      373 LOADK                            R13 K119 ["rbxasset://textures/MaterialManager/Material_Variant.png"]
      374 SETTABLEKS                       R13 R12 K114 ["Image"]
      376 SETTABLEKS                       R12 R11 K111 ["MaterialVariantIcon"]
      378 LOADN                            R12 4
      379 SETTABLEKS                       R12 R11 K112 ["Spacing"]
      381 LOADN                            R12 20
      382 SETTABLEKS                       R12 R11 K99 ["TextSize"]
      384 SETTABLEKS                       R11 R10 K20 ["MaterialListItem"]
      386 DUPTABLE                         R11 K128 [{"ApplyIcon", "ApplyIconPosition", "ApplyIconAnchorPoint", "ButtonSize", "Gradient", "GradientHover", "GradientPosition", "GradientSize", "IconSize", "MaterialVariantIcon", "MaterialVariantIconAnchorPoint", "MaterialVariantIconPosition", "Padding", "StatusIconPosition", "TextSize"}]
      387 DUPTABLE                         R12 K115 [{"Image", "Color"}]
      388 LOADK                            R13 K116 ["rbxasset://textures/MaterialManager/Apply_To_Selection.png"]
      389 SETTABLEKS                       R13 R12 K114 ["Image"]
      391 GETUPVAL                         R13 0
      392 GETTABLEKS                       R13 R13 K117 ["BrightText"]
      394 SETTABLEKS                       R13 R12 K89 ["Color"]
      396 SETTABLEKS                       R12 R11 K108 ["ApplyIcon"]
      398 GETIMPORT                        R12 K10 [UDim2.new]
      400 LOADN                            R13 1
      401 LOADN                            R14 252
      402 LOADN                            R15 0
      403 LOADN                            R16 4
      404 CALL                             R12 4 1
      405 SETTABLEKS                       R12 R11 K109 ["ApplyIconPosition"]
      407 GETIMPORT                        R12 K130 [Vector2.new]
      409 LOADN                            R13 1
      410 LOADN                            R14 0
      411 CALL                             R12 2 1
      412 SETTABLEKS                       R12 R11 K120 ["ApplyIconAnchorPoint"]
      414 GETIMPORT                        R12 K6 [UDim2.fromOffset]
      416 LOADN                            R13 28
      417 LOADN                            R14 28
      418 CALL                             R12 2 1
      419 SETTABLEKS                       R12 R11 K75 ["ButtonSize"]
      421 GETUPVAL                         R12 0
      422 GETTABLEKS                       R12 R12 K121 ["Gradient"]
      424 SETTABLEKS                       R12 R11 K121 ["Gradient"]
      426 GETUPVAL                         R12 0
      427 GETTABLEKS                       R12 R12 K122 ["GradientHover"]
      429 SETTABLEKS                       R12 R11 K122 ["GradientHover"]
      431 GETIMPORT                        R12 K10 [UDim2.new]
      433 LOADK                            R13 K131 [0.5]
      434 LOADN                            R14 0
      435 LOADN                            R15 1
      436 LOADN                            R16 254
      437 CALL                             R12 4 1
      438 SETTABLEKS                       R12 R11 K123 ["GradientPosition"]
      440 GETIMPORT                        R12 K10 [UDim2.new]
      442 LOADN                            R13 1
      443 LOADN                            R14 248
      444 LOADN                            R15 0
      445 LOADN                            R16 24
      446 CALL                             R12 4 1
      447 SETTABLEKS                       R12 R11 K124 ["GradientSize"]
      449 SETTABLEKS                       R2 R11 K39 ["IconSize"]
      451 DUPTABLE                         R12 K118 [{"Image"}]
      452 LOADK                            R13 K119 ["rbxasset://textures/MaterialManager/Material_Variant.png"]
      453 SETTABLEKS                       R13 R12 K114 ["Image"]
      455 SETTABLEKS                       R12 R11 K111 ["MaterialVariantIcon"]
      457 GETIMPORT                        R12 K130 [Vector2.new]
      459 LOADN                            R13 1
      460 LOADN                            R14 1
      461 CALL                             R12 2 1
      462 SETTABLEKS                       R12 R11 K125 ["MaterialVariantIconAnchorPoint"]
      464 GETIMPORT                        R12 K10 [UDim2.new]
      466 LOADN                            R13 1
      467 LOADN                            R14 252
      468 LOADN                            R15 1
      469 LOADN                            R16 252
      470 CALL                             R12 4 1
      471 SETTABLEKS                       R12 R11 K126 ["MaterialVariantIconPosition"]
      473 LOADN                            R12 6
      474 SETTABLEKS                       R12 R11 K46 ["Padding"]
      476 GETIMPORT                        R12 K10 [UDim2.new]
      478 LOADN                            R13 0
      479 LOADN                            R14 10
      480 LOADN                            R15 0
      481 LOADN                            R16 10
      482 CALL                             R12 4 1
      483 SETTABLEKS                       R12 R11 K127 ["StatusIconPosition"]
      485 LOADN                            R12 20
      486 SETTABLEKS                       R12 R11 K99 ["TextSize"]
      488 SETTABLEKS                       R11 R10 K21 ["MaterialTileItem"]
      490 DUPTABLE                         R11 K138 [{"ButtonPosition", "ButtonSize", "ButtonStyle", "Close", "HeaderBackground", "HeaderSize", "ImagePosition", "ImageSize"}]
      491 SETTABLEKS                       R7 R11 K132 ["ButtonPosition"]
      493 SETTABLEKS                       R8 R11 K75 ["ButtonSize"]
      495 LOADK                            R12 K139 ["RoundSubtle"]
      496 SETTABLEKS                       R12 R11 K133 ["ButtonStyle"]
      498 DUPTABLE                         R12 K115 [{"Image", "Color"}]
      499 LOADK                            R13 K140 ["rbxasset://textures/ui/TopBar/close.png"]
      500 SETTABLEKS                       R13 R12 K114 ["Image"]
      502 GETUPVAL                         R13 0
      503 GETTABLEKS                       R13 R13 K117 ["BrightText"]
      505 SETTABLEKS                       R13 R12 K89 ["Color"]
      507 SETTABLEKS                       R12 R11 K134 ["Close"]
      509 GETUPVAL                         R12 0
      510 GETTABLEKS                       R12 R12 K50 ["ScrollingFrameBackgroundColor"]
      512 SETTABLEKS                       R12 R11 K135 ["HeaderBackground"]
      514 GETIMPORT                        R12 K10 [UDim2.new]
      516 LOADN                            R13 1
      517 LOADN                            R14 0
      518 LOADN                            R15 0
      519 LOADN                            R16 44
      520 CALL                             R12 4 1
      521 SETTABLEKS                       R12 R11 K136 ["HeaderSize"]
      523 SETTABLEKS                       R3 R11 K137 ["ImagePosition"]
      525 SETTABLEKS                       R4 R11 K78 ["ImageSize"]
      527 SETTABLEKS                       R11 R10 K22 ["MaterialHeader"]
      529 DUPTABLE                         R11 K147 [{"ApplyToSelection", "ButtonPosition", "ButtonSize", "ButtonStyle", "CreateVariant", "Delete", "HeaderFont", "ImagePosition", "ImageSize", "LabelRowSize", "Padding", "TitleTextSize"}]
      530 DUPTABLE                         R12 K115 [{"Image", "Color"}]
      531 LOADK                            R13 K116 ["rbxasset://textures/MaterialManager/Apply_To_Selection.png"]
      532 SETTABLEKS                       R13 R12 K114 ["Image"]
      534 GETUPVAL                         R13 0
      535 GETTABLEKS                       R13 R13 K117 ["BrightText"]
      537 SETTABLEKS                       R13 R12 K89 ["Color"]
      539 SETTABLEKS                       R12 R11 K141 ["ApplyToSelection"]
      541 SETTABLEKS                       R7 R11 K132 ["ButtonPosition"]
      543 SETTABLEKS                       R8 R11 K75 ["ButtonSize"]
      545 LOADK                            R12 K139 ["RoundSubtle"]
      546 SETTABLEKS                       R12 R11 K133 ["ButtonStyle"]
      548 DUPTABLE                         R12 K115 [{"Image", "Color"}]
      549 LOADK                            R13 K148 ["rbxasset://textures/MaterialManager/Create_New_Variant.png"]
      550 SETTABLEKS                       R13 R12 K114 ["Image"]
      552 GETUPVAL                         R13 0
      553 GETTABLEKS                       R13 R13 K117 ["BrightText"]
      555 SETTABLEKS                       R13 R12 K89 ["Color"]
      557 SETTABLEKS                       R12 R11 K142 ["CreateVariant"]
      559 DUPTABLE                         R12 K115 [{"Image", "Color"}]
      560 LOADK                            R13 K149 ["rbxasset://textures/MaterialManager/Delete.png"]
      561 SETTABLEKS                       R13 R12 K114 ["Image"]
      563 GETUPVAL                         R13 0
      564 GETTABLEKS                       R13 R13 K117 ["BrightText"]
      566 SETTABLEKS                       R13 R12 K89 ["Color"]
      568 SETTABLEKS                       R12 R11 K143 ["Delete"]
      570 SETTABLEKS                       R1 R11 K144 ["HeaderFont"]
      572 SETTABLEKS                       R3 R11 K137 ["ImagePosition"]
      574 SETTABLEKS                       R4 R11 K78 ["ImageSize"]
      576 SETTABLEKS                       R9 R11 K145 ["LabelRowSize"]
      578 LOADN                            R12 10
      579 SETTABLEKS                       R12 R11 K46 ["Padding"]
      581 LOADN                            R12 22
      582 SETTABLEKS                       R12 R11 K146 ["TitleTextSize"]
      584 SETTABLEKS                       R11 R10 K23 ["MaterialInformation"]
      586 DUPTABLE                         R11 K152 [{"HeaderFont", "ImageSize", "LabelRowSize", "OverrideSize", "Padding", "SectionHeaderTextSize", "Spacing"}]
      587 SETTABLEKS                       R1 R11 K144 ["HeaderFont"]
      589 SETTABLEKS                       R4 R11 K78 ["ImageSize"]
      591 SETTABLEKS                       R9 R11 K145 ["LabelRowSize"]
      593 GETIMPORT                        R12 K6 [UDim2.fromOffset]
      595 LOADN                            R13 140
      596 LOADN                            R14 20
      597 CALL                             R12 2 1
      598 SETTABLEKS                       R12 R11 K150 ["OverrideSize"]
      600 LOADN                            R12 10
      601 SETTABLEKS                       R12 R11 K46 ["Padding"]
      603 LOADN                            R12 18
      604 SETTABLEKS                       R12 R11 K151 ["SectionHeaderTextSize"]
      606 LOADN                            R12 20
      607 SETTABLEKS                       R12 R11 K112 ["Spacing"]
      609 SETTABLEKS                       R11 R10 K24 ["MaterialOverrides"]
      611 DUPTABLE                         R11 K153 [{"ContentPadding", "ItemSpacing", "LabelColumnWidth"}]
      612 LOADN                            R12 5
      613 SETTABLEKS                       R12 R11 K69 ["ContentPadding"]
      615 LOADN                            R12 3
      616 SETTABLEKS                       R12 R11 K68 ["ItemSpacing"]
      618 SETTABLEKS                       R5 R11 K67 ["LabelColumnWidth"]
      620 SETTABLEKS                       R11 R10 K25 ["OverrideSettings"]
      622 DUPTABLE                         R11 K155 [{"ButtonSize", "ButtonStyle", "Delete", "DialogColumnSize", "ImagePosition", "ImageSize", "LabelColumnWidth", "NameLabelSize"}]
      623 SETTABLEKS                       R8 R11 K75 ["ButtonSize"]
      625 LOADK                            R12 K139 ["RoundSubtle"]
      626 SETTABLEKS                       R12 R11 K133 ["ButtonStyle"]
      628 DUPTABLE                         R12 K115 [{"Image", "Color"}]
      629 LOADK                            R13 K149 ["rbxasset://textures/MaterialManager/Delete.png"]
      630 SETTABLEKS                       R13 R12 K114 ["Image"]
      632 GETUPVAL                         R13 0
      633 GETTABLEKS                       R13 R13 K117 ["BrightText"]
      635 SETTABLEKS                       R13 R12 K89 ["Color"]
      637 SETTABLEKS                       R12 R11 K143 ["Delete"]
      639 GETIMPORT                        R12 K10 [UDim2.new]
      641 LOADN                            R13 0
      642 LOADN                            R14 145
      643 LOADN                            R15 0
      644 LOADN                            R16 25
      645 CALL                             R12 4 1
      646 SETTABLEKS                       R12 R11 K66 ["DialogColumnSize"]
      648 SETTABLEKS                       R3 R11 K137 ["ImagePosition"]
      650 SETTABLEKS                       R4 R11 K78 ["ImageSize"]
      652 SETTABLEKS                       R5 R11 K67 ["LabelColumnWidth"]
      654 GETIMPORT                        R12 K10 [UDim2.new]
      656 LOADN                            R13 0
      657 LOADN                            R14 110
      658 LOADN                            R15 0
      659 LOADN                            R16 20
      660 CALL                             R12 4 1
      661 SETTABLEKS                       R12 R11 K154 ["NameLabelSize"]
      663 SETTABLEKS                       R11 R10 K26 ["TerrainDetailsEditor"]
      665 DUPTABLE                         R11 K156 [{"ContentPadding", "DialogColumnSize", "ItemSpacing", "LabelColumnWidth"}]
      666 LOADN                            R12 5
      667 SETTABLEKS                       R12 R11 K69 ["ContentPadding"]
      669 GETIMPORT                        R12 K10 [UDim2.new]
      671 LOADN                            R13 0
      672 LOADN                            R14 145
      673 LOADN                            R15 0
      674 LOADN                            R16 25
      675 CALL                             R12 4 1
      676 SETTABLEKS                       R12 R11 K66 ["DialogColumnSize"]
      678 LOADN                            R12 3
      679 SETTABLEKS                       R12 R11 K68 ["ItemSpacing"]
      681 SETTABLEKS                       R5 R11 K67 ["LabelColumnWidth"]
      683 SETTABLEKS                       R11 R10 K27 ["TerrainDetailsSettings"]
      685 DUPTABLE                         R11 K156 [{"ContentPadding", "DialogColumnSize", "ItemSpacing", "LabelColumnWidth"}]
      686 LOADN                            R12 5
      687 SETTABLEKS                       R12 R11 K69 ["ContentPadding"]
      689 GETIMPORT                        R12 K10 [UDim2.new]
      691 LOADN                            R13 0
      692 LOADN                            R14 145
      693 LOADN                            R15 0
      694 LOADN                            R16 25
      695 CALL                             R12 4 1
      696 SETTABLEKS                       R12 R11 K66 ["DialogColumnSize"]
      698 LOADN                            R12 3
      699 SETTABLEKS                       R12 R11 K68 ["ItemSpacing"]
      701 SETTABLEKS                       R5 R11 K67 ["LabelColumnWidth"]
      703 SETTABLEKS                       R11 R10 K28 ["TilingSettings"]
      705 DUPTABLE                         R11 K159 [{"Error", "Warning"}]
      706 DUPTABLE                         R12 K118 [{"Image"}]
      707 LOADK                            R13 K160 ["rbxasset://textures/StudioSharedUI/alert_error@2x.png"]
      708 SETTABLEKS                       R13 R12 K114 ["Image"]
      710 SETTABLEKS                       R12 R11 K157 ["Error"]
      712 DUPTABLE                         R12 K118 [{"Image"}]
      713 LOADK                            R13 K161 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
      714 SETTABLEKS                       R13 R12 K114 ["Image"]
      716 SETTABLEKS                       R12 R11 K158 ["Warning"]
      718 SETTABLEKS                       R11 R10 K29 ["StatusIcon"]
      720 DUPTABLE                         R11 K169 [{"CreateNewVariant", "ShowInExplorer", "TopBarButtonWidth", "BackgroundColor", "ViewTypeBackground", "ButtonSize", "Padding", "SearchBarMaxWidth", "SpacerWidth", "ViewTypeSize"}]
      721 DUPTABLE                         R12 K172 [{"Image", "Color", "Position", "Size"}]
      722 LOADK                            R13 K148 ["rbxasset://textures/MaterialManager/Create_New_Variant.png"]
      723 SETTABLEKS                       R13 R12 K114 ["Image"]
      725 GETUPVAL                         R13 0
      726 GETTABLEKS                       R13 R13 K117 ["BrightText"]
      728 SETTABLEKS                       R13 R12 K89 ["Color"]
      730 GETIMPORT                        R13 K6 [UDim2.fromOffset]
      732 LOADN                            R14 6
      733 LOADN                            R15 6
      734 CALL                             R13 2 1
      735 SETTABLEKS                       R13 R12 K170 ["Position"]
      737 GETIMPORT                        R13 K6 [UDim2.fromOffset]
      739 LOADN                            R14 16
      740 LOADN                            R15 16
      741 CALL                             R13 2 1
      742 SETTABLEKS                       R13 R12 K171 ["Size"]
      744 SETTABLEKS                       R12 R11 K162 ["CreateNewVariant"]
      746 NEWTABLE                         R12 8 0
      748 LOADK                            R13 K173 ["rbxasset://textures/MaterialManager/Show_In_Explorer.png"]
      749 SETTABLEKS                       R13 R12 K114 ["Image"]
      751 GETUPVAL                         R13 0
      752 GETTABLEKS                       R13 R13 K117 ["BrightText"]
      754 SETTABLEKS                       R13 R12 K89 ["Color"]
      756 GETIMPORT                        R13 K6 [UDim2.fromOffset]
      758 LOADN                            R14 6
      759 LOADN                            R15 6
      760 CALL                             R13 2 1
      761 SETTABLEKS                       R13 R12 K170 ["Position"]
      763 GETIMPORT                        R13 K6 [UDim2.fromOffset]
      765 LOADN                            R14 16
      766 LOADN                            R15 16
      767 CALL                             R13 2 1
      768 SETTABLEKS                       R13 R12 K171 ["Size"]
      770 GETUPVAL                         R13 7
      771 GETTABLEKS                       R13 R13 K174 ["Disabled"]
      773 DUPTABLE                         R14 K176 [{"Transparency"}]
      774 LOADK                            R15 K131 [0.5]
      775 SETTABLEKS                       R15 R14 K175 ["Transparency"]
      777 SETTABLE                         R14 R12 R13
      778 SETTABLEKS                       R12 R11 K163 ["ShowInExplorer"]
      780 LOADN                            R12 28
      781 SETTABLEKS                       R12 R11 K164 ["TopBarButtonWidth"]
      783 GETUPVAL                         R12 0
      784 GETTABLEKS                       R12 R12 K98 ["Titlebar"]
      786 SETTABLEKS                       R12 R11 K35 ["BackgroundColor"]
      788 GETUPVAL                         R12 0
      789 GETTABLEKS                       R12 R12 K63 ["Button"]
      791 SETTABLEKS                       R12 R11 K165 ["ViewTypeBackground"]
      793 GETIMPORT                        R12 K6 [UDim2.fromOffset]
      795 LOADN                            R13 28
      796 LOADN                            R14 28
      797 CALL                             R12 2 1
      798 SETTABLEKS                       R12 R11 K75 ["ButtonSize"]
      800 LOADN                            R12 4
      801 SETTABLEKS                       R12 R11 K46 ["Padding"]
      803 LOADN                            R12 88
      804 SETTABLEKS                       R12 R11 K166 ["SearchBarMaxWidth"]
      806 LOADN                            R12 12
      807 SETTABLEKS                       R12 R11 K167 ["SpacerWidth"]
      809 GETIMPORT                        R12 K10 [UDim2.new]
      811 LOADN                            R13 0
      812 LOADN                            R14 50
      813 LOADN                            R15 1
      814 LOADN                            R16 0
      815 CALL                             R12 4 1
      816 SETTABLEKS                       R12 R11 K168 ["ViewTypeSize"]
      818 SETTABLEKS                       R11 R10 K30 ["TopBar"]
      820 DUPTABLE                         R11 K199 [{"ExpandIcon", "ClearIcon", "ImportIcon", "PreviewBackgroundColor", "PreviewBorderColor", "ImportIconColor", "ImportImageBackground", "ButtonColor", "ButtonHeight", "ButtonIconColor", "ButtonIconHoveredColor", "ToolbarTransparency", "ToolbarBackgroundColor", "ToolbarButtonBackgroundColor", "ToolbarHeight", "ColumnWidth", "LabelColumnWidth", "PreviewSize", "PaddingVertical", "PaddingHorizontal", "TextHeight", "ExpandedPreviewDefaultSize", "ExpandedPreviewMinSize", "ExpandedPreviewPadding"}]
      821 LOADK                            R12 K200 ["rbxasset://textures/StudioSharedUI/preview_expand.png"]
      822 SETTABLEKS                       R12 R11 K177 ["ExpandIcon"]
      824 LOADK                            R12 K201 ["rbxasset://textures/StudioSharedUI/preview_clear.png"]
      825 SETTABLEKS                       R12 R11 K178 ["ClearIcon"]
      827 LOADK                            R12 K202 ["rbxasset://textures/StudioSharedUI/import@2x.png"]
      828 SETTABLEKS                       R12 R11 K179 ["ImportIcon"]
      830 GETUPVAL                         R12 0
      831 GETTABLEKS                       R12 R12 K50 ["ScrollingFrameBackgroundColor"]
      833 SETTABLEKS                       R12 R11 K180 ["PreviewBackgroundColor"]
      835 GETUPVAL                         R12 0
      836 GETTABLEKS                       R12 R12 K203 ["Border"]
      838 SETTABLEKS                       R12 R11 K181 ["PreviewBorderColor"]
      840 GETUPVAL                         R12 0
      841 GETTABLEKS                       R12 R12 K52 ["ButtonText"]
      843 SETTABLEKS                       R12 R11 K182 ["ImportIconColor"]
      845 GETUPVAL                         R12 0
      846 GETTABLEKS                       R12 R12 K183 ["ImportImageBackground"]
      848 SETTABLEKS                       R12 R11 K183 ["ImportImageBackground"]
      850 GETUPVAL                         R12 0
      851 GETTABLEKS                       R12 R12 K63 ["Button"]
      853 SETTABLEKS                       R12 R11 K184 ["ButtonColor"]
      855 LOADN                            R12 24
      856 SETTABLEKS                       R12 R11 K185 ["ButtonHeight"]
      858 GETUPVAL                         R12 0
      859 GETTABLEKS                       R12 R12 K204 ["Icon"]
      861 SETTABLEKS                       R12 R11 K186 ["ButtonIconColor"]
      863 GETIMPORT                        R12 K60 [Color3.fromRGB]
      865 LOADN                            R13 255
      866 LOADN                            R14 255
      867 LOADN                            R15 255
      868 CALL                             R12 3 1
      869 SETTABLEKS                       R12 R11 K187 ["ButtonIconHoveredColor"]
      871 LOADK                            R12 K205 [0.4]
      872 SETTABLEKS                       R12 R11 K188 ["ToolbarTransparency"]
      874 GETUPVAL                         R12 0
      875 GETTABLEKS                       R12 R12 K189 ["ToolbarBackgroundColor"]
      877 SETTABLEKS                       R12 R11 K189 ["ToolbarBackgroundColor"]
      879 GETUPVAL                         R12 0
      880 GETTABLEKS                       R12 R12 K190 ["ToolbarButtonBackgroundColor"]
      882 SETTABLEKS                       R12 R11 K190 ["ToolbarButtonBackgroundColor"]
      884 LOADN                            R12 32
      885 SETTABLEKS                       R12 R11 K191 ["ToolbarHeight"]
      887 LOADN                            R12 145
      888 SETTABLEKS                       R12 R11 K71 ["ColumnWidth"]
      890 SETTABLEKS                       R5 R11 K67 ["LabelColumnWidth"]
      892 LOADN                            R12 74
      893 SETTABLEKS                       R12 R11 K192 ["PreviewSize"]
      895 LOADN                            R12 4
      896 SETTABLEKS                       R12 R11 K193 ["PaddingVertical"]
      898 LOADN                            R12 21
      899 SETTABLEKS                       R12 R11 K194 ["PaddingHorizontal"]
      901 LOADN                            R12 16
      902 SETTABLEKS                       R12 R11 K195 ["TextHeight"]
      904 GETIMPORT                        R12 K130 [Vector2.new]
      906 LOADN                            R13 144
      907 LOADN                            R14 144
      908 CALL                             R12 2 1
      909 SETTABLEKS                       R12 R11 K196 ["ExpandedPreviewDefaultSize"]
      911 GETIMPORT                        R12 K130 [Vector2.new]
      913 LOADN                            R13 100
      914 LOADN                            R14 100
      915 CALL                             R12 2 1
      916 SETTABLEKS                       R12 R11 K197 ["ExpandedPreviewMinSize"]
      918 GETIMPORT                        R12 K9 [UDim.new]
      920 LOADN                            R13 0
      921 LOADN                            R14 16
      922 CALL                             R12 2 1
      923 SETTABLEKS                       R12 R11 K198 ["ExpandedPreviewPadding"]
      925 SETTABLEKS                       R11 R10 K31 ["PromptSelectorWithPreview"]
      927 DUPTABLE                         R11 K208 [{"Grid", "List", "ViewTypeBackground", "ViewTypeSize"}]
      928 GETUPVAL                         R12 0
      929 GETTABLEKS                       R12 R12 K209 ["GridIcon"]
      931 SETTABLEKS                       R12 R11 K206 ["Grid"]
      933 GETUPVAL                         R12 0
      934 GETTABLEKS                       R12 R12 K210 ["ListIcon"]
      936 SETTABLEKS                       R12 R11 K207 ["List"]
      938 GETUPVAL                         R12 0
      939 GETTABLEKS                       R12 R12 K63 ["Button"]
      941 SETTABLEKS                       R12 R11 K165 ["ViewTypeBackground"]
      943 GETIMPORT                        R12 K10 [UDim2.new]
      945 LOADN                            R13 0
      946 LOADN                            R14 50
      947 LOADN                            R15 1
      948 LOADN                            R16 0
      949 CALL                             R12 4 1
      950 SETTABLEKS                       R12 R11 K168 ["ViewTypeSize"]
      952 SETTABLEKS                       R11 R10 K32 ["ViewTypeButton"]
      954 DUPTABLE                         R11 K211 [{"ButtonSize"}]
      955 GETIMPORT                        R12 K6 [UDim2.fromOffset]
      957 LOADN                            R13 28
      958 LOADN                            R14 28
      959 CALL                             R12 2 1
      960 SETTABLEKS                       R12 R11 K75 ["ButtonSize"]
      962 SETTABLEKS                       R11 R10 K33 ["ActionButton"]
      964 RETURN                           R10 1

PROTO_1:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 NEWTABLE                         R4 8 0
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K0 ["ScrollingFrameBackgroundColor"]
        8 GETIMPORT                        R6 K3 [Color3.fromRGB]
       10 LOADN                            R7 41
       11 LOADN                            R8 41
       12 LOADN                            R9 41
       13 CALL                             R6 3 1
       14 SETTABLE                         R6 R4 R5
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K4 ["SelectInputBackgroundColor"]
       18 GETIMPORT                        R6 K3 [Color3.fromRGB]
       20 LOADN                            R7 60
       21 LOADN                            R8 60
       22 LOADN                            R9 60
       23 CALL                             R6 3 1
       24 SETTABLE                         R6 R4 R5
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K5 ["ImportImageBackground"]
       28 GETIMPORT                        R6 K3 [Color3.fromRGB]
       30 LOADN                            R7 34
       31 LOADN                            R8 34
       32 LOADN                            R9 34
       33 CALL                             R6 3 1
       34 SETTABLE                         R6 R4 R5
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R5 R5 K6 ["GridIcon"]
       38 LOADK                            R6 K7 ["rbxasset://textures/MaterialManager/Grid_DT.png"]
       39 SETTABLE                         R6 R4 R5
       40 GETUPVAL                         R5 2
       41 GETTABLEKS                       R5 R5 K8 ["ListIcon"]
       43 LOADK                            R6 K9 ["rbxasset://textures/MaterialManager/List_DT.png"]
       44 SETTABLE                         R6 R4 R5
       45 GETUPVAL                         R5 2
       46 GETTABLEKS                       R5 R5 K10 ["Gradient"]
       48 LOADK                            R6 K11 ["rbxasset://textures/MaterialManager/Gradient_DT.png"]
       49 SETTABLE                         R6 R4 R5
       50 GETUPVAL                         R5 2
       51 GETTABLEKS                       R5 R5 K12 ["GradientHover"]
       53 LOADK                            R6 K13 ["rbxasset://textures/MaterialManager/Gradient_Hover_DT.png"]
       54 SETTABLE                         R6 R4 R5
       55 GETUPVAL                         R5 2
       56 GETTABLEKS                       R5 R5 K14 ["FillBucket"]
       58 LOADK                            R6 K15 ["rbxasset://textures/MaterialManager/Fill.png"]
       59 SETTABLE                         R6 R4 R5
       60 CALL                             R2 2 1
       61 GETUPVAL                         R3 0
       62 GETUPVAL                         R4 3
       63 NEWTABLE                         R5 8 0
       65 GETUPVAL                         R6 2
       66 GETTABLEKS                       R6 R6 K0 ["ScrollingFrameBackgroundColor"]
       68 GETIMPORT                        R7 K3 [Color3.fromRGB]
       70 LOADN                            R8 245
       71 LOADN                            R9 245
       72 LOADN                            R10 245
       73 CALL                             R7 3 1
       74 SETTABLE                         R7 R5 R6
       75 GETUPVAL                         R6 2
       76 GETTABLEKS                       R6 R6 K4 ["SelectInputBackgroundColor"]
       78 GETIMPORT                        R7 K3 [Color3.fromRGB]
       80 LOADN                            R8 255
       81 LOADN                            R9 255
       82 LOADN                            R10 255
       83 CALL                             R7 3 1
       84 SETTABLE                         R7 R5 R6
       85 GETUPVAL                         R6 2
       86 GETTABLEKS                       R6 R6 K5 ["ImportImageBackground"]
       88 GETIMPORT                        R7 K3 [Color3.fromRGB]
       90 LOADN                            R8 255
       91 LOADN                            R9 255
       92 LOADN                            R10 255
       93 CALL                             R7 3 1
       94 SETTABLE                         R7 R5 R6
       95 GETUPVAL                         R6 2
       96 GETTABLEKS                       R6 R6 K6 ["GridIcon"]
       98 LOADK                            R7 K16 ["rbxasset://textures/MaterialManager/Grid_LT.png"]
       99 SETTABLE                         R7 R5 R6
      100 GETUPVAL                         R6 2
      101 GETTABLEKS                       R6 R6 K8 ["ListIcon"]
      103 LOADK                            R7 K17 ["rbxasset://textures/MaterialManager/List_LT.png"]
      104 SETTABLE                         R7 R5 R6
      105 GETUPVAL                         R6 2
      106 GETTABLEKS                       R6 R6 K10 ["Gradient"]
      108 LOADK                            R7 K18 ["rbxasset://textures/MaterialManager/Gradient_LT.png"]
      109 SETTABLE                         R7 R5 R6
      110 GETUPVAL                         R6 2
      111 GETTABLEKS                       R6 R6 K12 ["GradientHover"]
      113 LOADK                            R7 K19 ["rbxasset://textures/MaterialManager/Gradient_Hover_LT.png"]
      114 SETTABLE                         R7 R5 R6
      115 GETUPVAL                         R6 2
      116 GETTABLEKS                       R6 R6 K14 ["FillBucket"]
      118 LOADK                            R7 K20 ["rbxasset://textures/MaterialManager/Fill-lighttheme.png"]
      119 SETTABLE                         R7 R5 R6
      120 CALL                             R3 2 1
      121 JUMPIFNOT                        R0 ; [+8]
      122 GETUPVAL                         R4 4
      123 GETTABLEKS                       R4 R4 K21 ["mock"]
      125 MOVE                             R5 R2
      126 MOVE                             R6 R3
      127 CALL                             R4 2 1
      128 MOVE                             R1 R4
      129 JUMP                             ; [+7]
      130 GETUPVAL                         R4 4
      131 GETTABLEKS                       R4 R4 K22 ["new"]
      133 MOVE                             R5 R2
      134 MOVE                             R6 R3
      135 CALL                             R4 2 1
      136 MOVE                             R1 R4
      137 GETUPVAL                         R6 5
      138 CALL                             R6 0 1
      139 NAMECALL                         R4 R1 K23 ["extend"]
      141 CALL                             R4 2 -1
      142 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Style"]
       18 GETTABLEKS                       R3 R2 K8 ["getRawComponentStyle"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K9 ["Src"]
       24 GETTABLEKS                       R5 R5 K10 ["Flags"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R4 K11 ["getFFlagBetterMaterialManagerPreviews"]
       29 GETTABLEKS                       R6 R1 K12 ["Dash"]
       31 GETTABLEKS                       R7 R1 K12 ["Dash"]
       33 GETTABLEKS                       R7 R7 K13 ["join"]
       35 GETTABLEKS                       R8 R1 K14 ["Util"]
       37 GETTABLEKS                       R9 R8 K15 ["StyleModifier"]
       39 GETTABLEKS                       R10 R8 K16 ["deepCopy"]
       41 GETTABLEKS                       R11 R1 K7 ["Style"]
       43 GETTABLEKS                       R12 R11 K17 ["Themes"]
       45 GETTABLEKS                       R12 R12 K18 ["StudioTheme"]
       47 GETTABLEKS                       R13 R11 K17 ["Themes"]
       49 GETTABLEKS                       R13 R13 K19 ["DarkTheme"]
       51 GETTABLEKS                       R14 R11 K17 ["Themes"]
       53 GETTABLEKS                       R14 R14 K20 ["LightTheme"]
       55 GETTABLEKS                       R15 R11 K21 ["StyleKey"]
       57 MOVE                             R16 R3
       58 LOADK                            R17 K22 ["RoundBox"]
       59 CALL                             R16 1 1
       60 MOVE                             R17 R3
       61 LOADK                            R18 K23 ["SelectInput"]
       62 CALL                             R17 1 1
       63 MOVE                             R18 R3
       64 LOADK                            R19 K24 ["ExpandablePane"]
       65 CALL                             R18 1 1
       66 MOVE                             R19 R10
       67 MOVE                             R20 R16
       68 CALL                             R19 1 1
       69 MOVE                             R20 R10
       70 MOVE                             R21 R17
       71 CALL                             R20 1 1
       72 MOVE                             R21 R10
       73 MOVE                             R22 R18
       74 CALL                             R21 1 1
       75 DUPCLOSURE                       R22 K25 [PROTO_0]
       76 CAPTURE                          VAL R15
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R20
       80 CAPTURE                          VAL R19
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R21
       83 CAPTURE                          VAL R9
       84 DUPCLOSURE                       R23 K26 [PROTO_1]
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R12
       90 CAPTURE                          VAL R22
       91 RETURN                           R23 1
