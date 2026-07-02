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
       32 LOADN                            R9 -30
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
       49 DUPTABLE                         R11 K53 [{["BackgroundColor"], ["GridBackgroundColor"], ["HideIcon"] = "rbxasset://textures/MaterialManager/chevrons-left.png", ["IconColor"], ["IconSize"], ["MainViewSize"], ["MaterialEditorSize"], ["MaterialEditorWidth"] = 315, ["MaterialGridSize"], ["MaterialTileWidth"] = 200, ["MinSideBarWidth"] = 120, ["Padding"] = 10, ["TopBarSize"]}]
       50 GETUPVAL                         R12 0
       51 GETTABLEKS                       R12 R12 K54 ["MainBackground"]
       53 SETTABLEKS                       R12 R11 K35 ["BackgroundColor"]
       55 GETUPVAL                         R12 0
       56 GETTABLEKS                       R12 R12 K55 ["ScrollingFrameBackgroundColor"]
       58 SETTABLEKS                       R12 R11 K36 ["GridBackgroundColor"]
       60 GETUPVAL                         R12 0
       61 GETTABLEKS                       R12 R12 K56 ["ButtonText"]
       63 SETTABLEKS                       R12 R11 K39 ["IconColor"]
       65 SETTABLEKS                       R2 R11 K40 ["IconSize"]
       67 GETIMPORT                        R12 K10 [UDim2.new]
       69 LOADN                            R13 1
       70 LOADN                            R14 0
       71 LOADN                            R15 1
       72 LOADN                            R16 -36
       73 CALL                             R12 4 1
       74 SETTABLEKS                       R12 R11 K41 ["MainViewSize"]
       76 GETIMPORT                        R12 K10 [UDim2.new]
       78 LOADN                            R13 0
       79 LOADN                            R14 315
       80 LOADN                            R15 1
       81 LOADN                            R16 0
       82 CALL                             R12 4 1
       83 SETTABLEKS                       R12 R11 K42 ["MaterialEditorSize"]
       85 GETIMPORT                        R12 K10 [UDim2.new]
       87 LOADN                            R13 1
       88 LOADN                            R14 -315
       89 LOADN                            R15 1
       90 LOADN                            R16 0
       91 CALL                             R12 4 1
       92 SETTABLEKS                       R12 R11 K45 ["MaterialGridSize"]
       94 GETIMPORT                        R12 K10 [UDim2.new]
       96 LOADN                            R13 1
       97 LOADN                            R14 0
       98 LOADN                            R15 0
       99 LOADN                            R16 36
      100 CALL                             R12 4 1
      101 SETTABLEKS                       R12 R11 K52 ["TopBarSize"]
      103 SETTABLEKS                       R11 R10 K11 ["MaterialBrowser"]
      105 DUPTABLE                         R11 K62 [{["Ambient"], ["BackgroundColor"], ["BackgroundColorHover"], ["LightColor"], ["LightDirection"] = {-10, -10, 5}}]
      106 GETUPVAL                         R13 1
      107 CALL                             R13 0 1
      108 JUMPIFNOT                        R13 ; [+7]
      109 GETIMPORT                        R12 K65 [Color3.fromRGB]
      111 LOADN                            R13 120
      112 LOADN                            R14 120
      113 LOADN                            R15 135
      114 CALL                             R12 3 1
      115 JUMP                             ; [+6]
      116 GETIMPORT                        R12 K66 [Color3.new]
      118 LOADK                            R13 K67 [0.274]
      119 LOADK                            R14 K67 [0.274]
      120 LOADK                            R15 K67 [0.274]
      121 CALL                             R12 3 1
      122 SETTABLEKS                       R12 R11 K57 ["Ambient"]
      124 GETUPVAL                         R12 0
      125 GETTABLEKS                       R12 R12 K68 ["Button"]
      127 SETTABLEKS                       R12 R11 K35 ["BackgroundColor"]
      129 GETUPVAL                         R12 0
      130 GETTABLEKS                       R12 R12 K69 ["ButtonHover"]
      132 SETTABLEKS                       R12 R11 K58 ["BackgroundColorHover"]
      134 GETUPVAL                         R13 1
      135 CALL                             R13 0 1
      136 JUMPIFNOT                        R13 ; [+7]
      137 GETIMPORT                        R12 K65 [Color3.fromRGB]
      139 LOADN                            R13 316
      140 LOADN                            R14 316
      141 LOADN                            R15 331
      142 CALL                             R12 3 1
      143 JUMP                             ; [+6]
      144 GETIMPORT                        R12 K66 [Color3.new]
      146 LOADN                            R13 1
      147 LOADN                            R14 1
      148 LOADN                            R15 1
      149 CALL                             R12 3 1
      150 SETTABLEKS                       R12 R11 K59 ["LightColor"]
      152 SETTABLEKS                       R11 R10 K12 ["MaterialPreview"]
      154 DUPTABLE                         R11 K76 [{["DialogColumnSize"], ["LabelColumnWidth"], ["ItemSpacing"] = 3, ["ContentPadding"] = 5}]
      155 GETIMPORT                        R12 K10 [UDim2.new]
      157 LOADN                            R13 0
      158 LOADN                            R14 145
      159 LOADN                            R15 0
      160 LOADN                            R16 25
      161 CALL                             R12 4 1
      162 SETTABLEKS                       R12 R11 K70 ["DialogColumnSize"]
      164 SETTABLEKS                       R5 R11 K71 ["LabelColumnWidth"]
      166 SETTABLEKS                       R11 R10 K13 ["GeneralSettings"]
      168 DUPTABLE                         R11 K80 [{["ColumnWidth"] = 145, ["ContentPadding"] = 5, ["ItemSpacing"] = 3, ["LabelColumnWidth"], ["LabelWidth"]}]
      169 SETTABLEKS                       R5 R11 K71 ["LabelColumnWidth"]
      171 SETTABLEKS                       R6 R11 K79 ["LabelWidth"]
      173 SETTABLEKS                       R11 R10 K14 ["TextureSettings"]
      175 DUPTABLE                         R11 K84 [{["ButtonPadding"] = 18, ["ButtonSize"], ["DialogColumnSize"], ["LabelColumnWidth"], ["ItemSpacing"] = 3, ["ContentPadding"] = 5}]
      176 GETIMPORT                        R12 K10 [UDim2.new]
      178 LOADN                            R13 1
      179 LOADN                            R14 -6
      180 LOADN                            R15 0
      181 LOADN                            R16 25
      182 CALL                             R12 4 1
      183 SETTABLEKS                       R12 R11 K83 ["ButtonSize"]
      185 GETIMPORT                        R12 K10 [UDim2.new]
      187 LOADN                            R13 0
      188 LOADN                            R14 145
      189 LOADN                            R15 0
      190 LOADN                            R16 25
      191 CALL                             R12 4 1
      192 SETTABLEKS                       R12 R11 K70 ["DialogColumnSize"]
      194 SETTABLEKS                       R5 R11 K71 ["LabelColumnWidth"]
      196 SETTABLEKS                       R11 R10 K15 ["PhysicalSettings"]
      198 DUPTABLE                         R11 K89 [{"FillDirection", "ImageSize", "LabelYSize", "TextXAlignment"}]
      199 GETIMPORT                        R12 K91 [Enum.FillDirection.Horizontal]
      201 SETTABLEKS                       R12 R11 K85 ["FillDirection"]
      203 SETTABLEKS                       R4 R11 K86 ["ImageSize"]
      205 GETIMPORT                        R12 K9 [UDim.new]
      207 LOADN                            R13 0
      208 LOADN                            R14 24
      209 CALL                             R12 2 1
      210 SETTABLEKS                       R12 R11 K87 ["LabelYSize"]
      212 GETIMPORT                        R12 K93 [Enum.TextXAlignment.Left]
      214 SETTABLEKS                       R12 R11 K88 ["TextXAlignment"]
      216 SETTABLEKS                       R11 R10 K16 ["LabeledElement"]
      218 GETUPVAL                         R11 2
      219 GETUPVAL                         R12 3
      220 DUPTABLE                         R13 K96 [{"PlaceholderTextColor", "BackgroundStyle"}]
      221 GETUPVAL                         R14 0
      222 GETTABLEKS                       R14 R14 K56 ["ButtonText"]
      224 SETTABLEKS                       R14 R13 K94 ["PlaceholderTextColor"]
      226 GETUPVAL                         R14 2
      227 GETUPVAL                         R15 4
      228 DUPTABLE                         R16 K98 [{"Color"}]
      229 GETUPVAL                         R17 0
      230 GETTABLEKS                       R17 R17 K99 ["SelectInputBackgroundColor"]
      232 SETTABLEKS                       R17 R16 K97 ["Color"]
      234 CALL                             R14 2 1
      235 SETTABLEKS                       R14 R13 K95 ["BackgroundStyle"]
      237 CALL                             R11 2 1
      238 SETTABLEKS                       R11 R10 K17 ["CustomSelectInput"]
      240 GETUPVAL                         R11 5
      241 GETTABLEKS                       R11 R11 K100 ["joinDeep"]
      243 GETUPVAL                         R12 6
      244 DUPTABLE                         R13 K102 [{"Header"}]
      245 DUPTABLE                         R14 K105 [{"Background", "Text"}]
      246 GETUPVAL                         R15 0
      247 GETTABLEKS                       R15 R15 K106 ["Titlebar"]
      249 SETTABLEKS                       R15 R14 K103 ["Background"]
      251 DUPTABLE                         R15 K108 [{["Font"], ["TextSize"] = 18}]
      252 SETTABLEKS                       R0 R15 K1 ["Font"]
      254 SETTABLEKS                       R15 R14 K104 ["Text"]
      256 SETTABLEKS                       R14 R13 K101 ["Header"]
      258 CALL                             R11 2 1
      259 SETTABLEKS                       R11 R10 K18 ["CustomExpandablePane"]
      261 DUPTABLE                         R11 K118 [{["BackgroundColor"], ["ChevronRight"] = "rbxasset://textures/MaterialManager/chevrons-right.png", ["GridPadding"] = 4, ["IconColor"], ["IconSize"], ["ListHeight"] = 40, ["ListPadding"] = 2, ["Padding"] = 5, ["ShowIcon"] = "rbxasset://textures/MaterialManager/chevrons-right.png"}]
      262 GETUPVAL                         R12 0
      263 GETTABLEKS                       R12 R12 K55 ["ScrollingFrameBackgroundColor"]
      265 SETTABLEKS                       R12 R11 K35 ["BackgroundColor"]
      267 GETUPVAL                         R12 0
      268 GETTABLEKS                       R12 R12 K56 ["ButtonText"]
      270 SETTABLEKS                       R12 R11 K39 ["IconColor"]
      272 SETTABLEKS                       R2 R11 K40 ["IconSize"]
      274 SETTABLEKS                       R11 R10 K19 ["MaterialGrid"]
      276 DUPTABLE                         R11 K125 [{["ApplyIcon"], ["ApplyIconPosition"], ["ButtonSize"], ["Height"] = 40, ["IconSize"], ["MaterialVariantIcon"], ["Spacing"] = 4, ["TextSize"] = 20}]
      277 DUPTABLE                         R12 K128 [{["Image"] = "rbxasset://textures/MaterialManager/Apply_To_Selection.png", ["Color"]}]
      278 GETUPVAL                         R13 0
      279 GETTABLEKS                       R13 R13 K129 ["BrightText"]
      281 SETTABLEKS                       R13 R12 K97 ["Color"]
      283 SETTABLEKS                       R12 R11 K119 ["ApplyIcon"]
      285 GETIMPORT                        R12 K10 [UDim2.new]
      287 LOADN                            R13 1
      288 LOADN                            R14 -4
      289 LOADN                            R15 0
      290 LOADN                            R16 4
      291 CALL                             R12 4 1
      292 SETTABLEKS                       R12 R11 K120 ["ApplyIconPosition"]
      294 GETIMPORT                        R12 K6 [UDim2.fromOffset]
      296 LOADN                            R13 28
      297 LOADN                            R14 28
      298 CALL                             R12 2 1
      299 SETTABLEKS                       R12 R11 K83 ["ButtonSize"]
      301 SETTABLEKS                       R2 R11 K40 ["IconSize"]
      303 DUPTABLE                         R12 K131 [{["Image"] = "rbxasset://textures/MaterialManager/Material_Variant.png"}]
      304 SETTABLEKS                       R12 R11 K122 ["MaterialVariantIcon"]
      306 SETTABLEKS                       R11 R10 K20 ["MaterialListItem"]
      308 DUPTABLE                         R11 K141 [{["ApplyIcon"], ["ApplyIconPosition"], ["ApplyIconAnchorPoint"], ["ButtonSize"], ["Gradient"], ["GradientHover"], ["GradientPosition"], ["GradientSize"], ["IconSize"], ["MaterialVariantIcon"], ["MaterialVariantIconAnchorPoint"], ["MaterialVariantIconPosition"], ["Padding"] = 6, ["StatusIconPosition"], ["TextSize"] = 20}]
      309 DUPTABLE                         R12 K128 [{["Image"] = "rbxasset://textures/MaterialManager/Apply_To_Selection.png", ["Color"]}]
      310 GETUPVAL                         R13 0
      311 GETTABLEKS                       R13 R13 K129 ["BrightText"]
      313 SETTABLEKS                       R13 R12 K97 ["Color"]
      315 SETTABLEKS                       R12 R11 K119 ["ApplyIcon"]
      317 GETIMPORT                        R12 K10 [UDim2.new]
      319 LOADN                            R13 1
      320 LOADN                            R14 -4
      321 LOADN                            R15 0
      322 LOADN                            R16 4
      323 CALL                             R12 4 1
      324 SETTABLEKS                       R12 R11 K120 ["ApplyIconPosition"]
      326 GETIMPORT                        R12 K143 [Vector2.new]
      328 LOADN                            R13 1
      329 LOADN                            R14 0
      330 CALL                             R12 2 1
      331 SETTABLEKS                       R12 R11 K132 ["ApplyIconAnchorPoint"]
      333 GETIMPORT                        R12 K6 [UDim2.fromOffset]
      335 LOADN                            R13 28
      336 LOADN                            R14 28
      337 CALL                             R12 2 1
      338 SETTABLEKS                       R12 R11 K83 ["ButtonSize"]
      340 GETUPVAL                         R12 0
      341 GETTABLEKS                       R12 R12 K133 ["Gradient"]
      343 SETTABLEKS                       R12 R11 K133 ["Gradient"]
      345 GETUPVAL                         R12 0
      346 GETTABLEKS                       R12 R12 K134 ["GradientHover"]
      348 SETTABLEKS                       R12 R11 K134 ["GradientHover"]
      350 GETIMPORT                        R12 K10 [UDim2.new]
      352 LOADK                            R13 K144 [0.5]
      353 LOADN                            R14 0
      354 LOADN                            R15 1
      355 LOADN                            R16 -2
      356 CALL                             R12 4 1
      357 SETTABLEKS                       R12 R11 K135 ["GradientPosition"]
      359 GETIMPORT                        R12 K10 [UDim2.new]
      361 LOADN                            R13 1
      362 LOADN                            R14 -8
      363 LOADN                            R15 0
      364 LOADN                            R16 24
      365 CALL                             R12 4 1
      366 SETTABLEKS                       R12 R11 K136 ["GradientSize"]
      368 SETTABLEKS                       R2 R11 K40 ["IconSize"]
      370 DUPTABLE                         R12 K131 [{["Image"] = "rbxasset://textures/MaterialManager/Material_Variant.png"}]
      371 SETTABLEKS                       R12 R11 K122 ["MaterialVariantIcon"]
      373 GETIMPORT                        R12 K143 [Vector2.new]
      375 LOADN                            R13 1
      376 LOADN                            R14 1
      377 CALL                             R12 2 1
      378 SETTABLEKS                       R12 R11 K137 ["MaterialVariantIconAnchorPoint"]
      380 GETIMPORT                        R12 K10 [UDim2.new]
      382 LOADN                            R13 1
      383 LOADN                            R14 -4
      384 LOADN                            R15 1
      385 LOADN                            R16 -4
      386 CALL                             R12 4 1
      387 SETTABLEKS                       R12 R11 K138 ["MaterialVariantIconPosition"]
      389 GETIMPORT                        R12 K10 [UDim2.new]
      391 LOADN                            R13 0
      392 LOADN                            R14 10
      393 LOADN                            R15 0
      394 LOADN                            R16 10
      395 CALL                             R12 4 1
      396 SETTABLEKS                       R12 R11 K140 ["StatusIconPosition"]
      398 SETTABLEKS                       R11 R10 K21 ["MaterialTileItem"]
      400 DUPTABLE                         R11 K152 [{["ButtonPosition"], ["ButtonSize"], ["ButtonStyle"] = "RoundSubtle", ["Close"], ["HeaderBackground"], ["HeaderSize"], ["ImagePosition"], ["ImageSize"]}]
      401 SETTABLEKS                       R7 R11 K145 ["ButtonPosition"]
      403 SETTABLEKS                       R8 R11 K83 ["ButtonSize"]
      405 DUPTABLE                         R12 K154 [{["Image"] = "rbxasset://textures/ui/TopBar/close.png", ["Color"]}]
      406 GETUPVAL                         R13 0
      407 GETTABLEKS                       R13 R13 K129 ["BrightText"]
      409 SETTABLEKS                       R13 R12 K97 ["Color"]
      411 SETTABLEKS                       R12 R11 K148 ["Close"]
      413 GETUPVAL                         R12 0
      414 GETTABLEKS                       R12 R12 K55 ["ScrollingFrameBackgroundColor"]
      416 SETTABLEKS                       R12 R11 K149 ["HeaderBackground"]
      418 GETIMPORT                        R12 K10 [UDim2.new]
      420 LOADN                            R13 1
      421 LOADN                            R14 0
      422 LOADN                            R15 0
      423 LOADN                            R16 300
      424 CALL                             R12 4 1
      425 SETTABLEKS                       R12 R11 K150 ["HeaderSize"]
      427 SETTABLEKS                       R3 R11 K151 ["ImagePosition"]
      429 SETTABLEKS                       R4 R11 K86 ["ImageSize"]
      431 SETTABLEKS                       R11 R10 K22 ["MaterialHeader"]
      433 DUPTABLE                         R11 K162 [{["ApplyToSelection"], ["ButtonPosition"], ["ButtonSize"], ["ButtonStyle"] = "RoundSubtle", ["CreateVariant"], ["Delete"], ["HeaderFont"], ["ImagePosition"], ["ImageSize"], ["LabelRowSize"], ["Padding"] = 10, ["TitleTextSize"] = 22}]
      434 DUPTABLE                         R12 K128 [{["Image"] = "rbxasset://textures/MaterialManager/Apply_To_Selection.png", ["Color"]}]
      435 GETUPVAL                         R13 0
      436 GETTABLEKS                       R13 R13 K129 ["BrightText"]
      438 SETTABLEKS                       R13 R12 K97 ["Color"]
      440 SETTABLEKS                       R12 R11 K155 ["ApplyToSelection"]
      442 SETTABLEKS                       R7 R11 K145 ["ButtonPosition"]
      444 SETTABLEKS                       R8 R11 K83 ["ButtonSize"]
      446 DUPTABLE                         R12 K164 [{["Image"] = "rbxasset://textures/MaterialManager/Create_New_Variant.png", ["Color"]}]
      447 GETUPVAL                         R13 0
      448 GETTABLEKS                       R13 R13 K129 ["BrightText"]
      450 SETTABLEKS                       R13 R12 K97 ["Color"]
      452 SETTABLEKS                       R12 R11 K156 ["CreateVariant"]
      454 DUPTABLE                         R12 K166 [{["Image"] = "rbxasset://textures/MaterialManager/Delete.png", ["Color"]}]
      455 GETUPVAL                         R13 0
      456 GETTABLEKS                       R13 R13 K129 ["BrightText"]
      458 SETTABLEKS                       R13 R12 K97 ["Color"]
      460 SETTABLEKS                       R12 R11 K157 ["Delete"]
      462 SETTABLEKS                       R1 R11 K158 ["HeaderFont"]
      464 SETTABLEKS                       R3 R11 K151 ["ImagePosition"]
      466 SETTABLEKS                       R4 R11 K86 ["ImageSize"]
      468 SETTABLEKS                       R9 R11 K159 ["LabelRowSize"]
      470 SETTABLEKS                       R11 R10 K23 ["MaterialInformation"]
      472 DUPTABLE                         R11 K169 [{["HeaderFont"], ["ImageSize"], ["LabelRowSize"], ["OverrideSize"], ["Padding"] = 10, ["SectionHeaderTextSize"] = 18, ["Spacing"] = 20}]
      473 SETTABLEKS                       R1 R11 K158 ["HeaderFont"]
      475 SETTABLEKS                       R4 R11 K86 ["ImageSize"]
      477 SETTABLEKS                       R9 R11 K159 ["LabelRowSize"]
      479 GETIMPORT                        R12 K6 [UDim2.fromOffset]
      481 LOADN                            R13 140
      482 LOADN                            R14 20
      483 CALL                             R12 2 1
      484 SETTABLEKS                       R12 R11 K167 ["OverrideSize"]
      486 SETTABLEKS                       R11 R10 K24 ["MaterialOverrides"]
      488 DUPTABLE                         R11 K170 [{["ContentPadding"] = 5, ["ItemSpacing"] = 3, ["LabelColumnWidth"]}]
      489 SETTABLEKS                       R5 R11 K71 ["LabelColumnWidth"]
      491 SETTABLEKS                       R11 R10 K25 ["OverrideSettings"]
      493 DUPTABLE                         R11 K172 [{["ButtonSize"], ["ButtonStyle"] = "RoundSubtle", ["Delete"], ["DialogColumnSize"], ["ImagePosition"], ["ImageSize"], ["LabelColumnWidth"], ["NameLabelSize"]}]
      494 SETTABLEKS                       R8 R11 K83 ["ButtonSize"]
      496 DUPTABLE                         R12 K166 [{["Image"] = "rbxasset://textures/MaterialManager/Delete.png", ["Color"]}]
      497 GETUPVAL                         R13 0
      498 GETTABLEKS                       R13 R13 K129 ["BrightText"]
      500 SETTABLEKS                       R13 R12 K97 ["Color"]
      502 SETTABLEKS                       R12 R11 K157 ["Delete"]
      504 GETIMPORT                        R12 K10 [UDim2.new]
      506 LOADN                            R13 0
      507 LOADN                            R14 145
      508 LOADN                            R15 0
      509 LOADN                            R16 25
      510 CALL                             R12 4 1
      511 SETTABLEKS                       R12 R11 K70 ["DialogColumnSize"]
      513 SETTABLEKS                       R3 R11 K151 ["ImagePosition"]
      515 SETTABLEKS                       R4 R11 K86 ["ImageSize"]
      517 SETTABLEKS                       R5 R11 K71 ["LabelColumnWidth"]
      519 GETIMPORT                        R12 K10 [UDim2.new]
      521 LOADN                            R13 0
      522 LOADN                            R14 110
      523 LOADN                            R15 0
      524 LOADN                            R16 20
      525 CALL                             R12 4 1
      526 SETTABLEKS                       R12 R11 K171 ["NameLabelSize"]
      528 SETTABLEKS                       R11 R10 K26 ["TerrainDetailsEditor"]
      530 DUPTABLE                         R11 K173 [{["ContentPadding"] = 5, ["DialogColumnSize"], ["ItemSpacing"] = 3, ["LabelColumnWidth"]}]
      531 GETIMPORT                        R12 K10 [UDim2.new]
      533 LOADN                            R13 0
      534 LOADN                            R14 145
      535 LOADN                            R15 0
      536 LOADN                            R16 25
      537 CALL                             R12 4 1
      538 SETTABLEKS                       R12 R11 K70 ["DialogColumnSize"]
      540 SETTABLEKS                       R5 R11 K71 ["LabelColumnWidth"]
      542 SETTABLEKS                       R11 R10 K27 ["TerrainDetailsSettings"]
      544 DUPTABLE                         R11 K173 [{["ContentPadding"] = 5, ["DialogColumnSize"], ["ItemSpacing"] = 3, ["LabelColumnWidth"]}]
      545 GETIMPORT                        R12 K10 [UDim2.new]
      547 LOADN                            R13 0
      548 LOADN                            R14 145
      549 LOADN                            R15 0
      550 LOADN                            R16 25
      551 CALL                             R12 4 1
      552 SETTABLEKS                       R12 R11 K70 ["DialogColumnSize"]
      554 SETTABLEKS                       R5 R11 K71 ["LabelColumnWidth"]
      556 SETTABLEKS                       R11 R10 K28 ["TilingSettings"]
      558 DUPTABLE                         R11 K176 [{"Error", "Warning"}]
      559 DUPTABLE                         R12 K178 [{["Image"] = "rbxasset://textures/StudioSharedUI/alert_error@2x.png"}]
      560 SETTABLEKS                       R12 R11 K174 ["Error"]
      562 DUPTABLE                         R12 K180 [{["Image"] = "rbxasset://textures/StudioSharedUI/alert_warning@2x.png"}]
      563 SETTABLEKS                       R12 R11 K175 ["Warning"]
      565 SETTABLEKS                       R11 R10 K29 ["StatusIcon"]
      567 DUPTABLE                         R11 K191 [{["CreateNewVariant"], ["ShowInExplorer"], ["TopBarButtonWidth"] = 28, ["BackgroundColor"], ["ViewTypeBackground"], ["ButtonSize"], ["Padding"] = 4, ["SearchBarMaxWidth"] = 600, ["SpacerWidth"] = 12, ["ViewTypeSize"]}]
      568 DUPTABLE                         R12 K194 [{["Image"] = "rbxasset://textures/MaterialManager/Create_New_Variant.png", ["Color"], ["Position"], ["Size"]}]
      569 GETUPVAL                         R13 0
      570 GETTABLEKS                       R13 R13 K129 ["BrightText"]
      572 SETTABLEKS                       R13 R12 K97 ["Color"]
      574 GETIMPORT                        R13 K6 [UDim2.fromOffset]
      576 LOADN                            R14 6
      577 LOADN                            R15 6
      578 CALL                             R13 2 1
      579 SETTABLEKS                       R13 R12 K192 ["Position"]
      581 GETIMPORT                        R13 K6 [UDim2.fromOffset]
      583 LOADN                            R14 16
      584 LOADN                            R15 16
      585 CALL                             R13 2 1
      586 SETTABLEKS                       R13 R12 K193 ["Size"]
      588 SETTABLEKS                       R12 R11 K181 ["CreateNewVariant"]
      590 NEWTABLE                         R12 8 0
      592 LOADK                            R13 K195 ["rbxasset://textures/MaterialManager/Show_In_Explorer.png"]
      593 SETTABLEKS                       R13 R12 K126 ["Image"]
      595 GETUPVAL                         R13 0
      596 GETTABLEKS                       R13 R13 K129 ["BrightText"]
      598 SETTABLEKS                       R13 R12 K97 ["Color"]
      600 GETIMPORT                        R13 K6 [UDim2.fromOffset]
      602 LOADN                            R14 6
      603 LOADN                            R15 6
      604 CALL                             R13 2 1
      605 SETTABLEKS                       R13 R12 K192 ["Position"]
      607 GETIMPORT                        R13 K6 [UDim2.fromOffset]
      609 LOADN                            R14 16
      610 LOADN                            R15 16
      611 CALL                             R13 2 1
      612 SETTABLEKS                       R13 R12 K193 ["Size"]
      614 GETUPVAL                         R13 7
      615 GETTABLEKS                       R13 R13 K196 ["Disabled"]
      617 DUPTABLE                         R14 K198 [{["Transparency"] = 0.5}]
      618 SETTABLE                         R14 R12 R13
      619 SETTABLEKS                       R12 R11 K182 ["ShowInExplorer"]
      621 GETUPVAL                         R12 0
      622 GETTABLEKS                       R12 R12 K106 ["Titlebar"]
      624 SETTABLEKS                       R12 R11 K35 ["BackgroundColor"]
      626 GETUPVAL                         R12 0
      627 GETTABLEKS                       R12 R12 K68 ["Button"]
      629 SETTABLEKS                       R12 R11 K185 ["ViewTypeBackground"]
      631 GETIMPORT                        R12 K6 [UDim2.fromOffset]
      633 LOADN                            R13 28
      634 LOADN                            R14 28
      635 CALL                             R12 2 1
      636 SETTABLEKS                       R12 R11 K83 ["ButtonSize"]
      638 GETIMPORT                        R12 K10 [UDim2.new]
      640 LOADN                            R13 0
      641 LOADN                            R14 50
      642 LOADN                            R15 1
      643 LOADN                            R16 0
      644 CALL                             R12 4 1
      645 SETTABLEKS                       R12 R11 K190 ["ViewTypeSize"]
      647 SETTABLEKS                       R11 R10 K30 ["TopBar"]
      649 DUPTABLE                         R11 K230 [{["ExpandIcon"] = "rbxasset://textures/StudioSharedUI/preview_expand.png", ["ClearIcon"] = "rbxasset://textures/StudioSharedUI/preview_clear.png", ["ImportIcon"] = "rbxasset://textures/StudioSharedUI/import@2x.png", ["PreviewBackgroundColor"], ["PreviewBorderColor"], ["ImportIconColor"], ["ImportImageBackground"], ["ButtonColor"], ["ButtonHeight"] = 24, ["ButtonIconColor"], ["ButtonIconHoveredColor"], ["ToolbarTransparency"] = 0.4, ["ToolbarBackgroundColor"], ["ToolbarButtonBackgroundColor"], ["ToolbarHeight"] = 32, ["ColumnWidth"] = 145, ["LabelColumnWidth"], ["PreviewSize"] = 74, ["PaddingVertical"] = 4, ["PaddingHorizontal"] = 21, ["TextHeight"] = 16, ["ExpandedPreviewDefaultSize"], ["ExpandedPreviewMinSize"], ["ExpandedPreviewPadding"]}]
      650 GETUPVAL                         R12 0
      651 GETTABLEKS                       R12 R12 K55 ["ScrollingFrameBackgroundColor"]
      653 SETTABLEKS                       R12 R11 K205 ["PreviewBackgroundColor"]
      655 GETUPVAL                         R12 0
      656 GETTABLEKS                       R12 R12 K231 ["Border"]
      658 SETTABLEKS                       R12 R11 K206 ["PreviewBorderColor"]
      660 GETUPVAL                         R12 0
      661 GETTABLEKS                       R12 R12 K56 ["ButtonText"]
      663 SETTABLEKS                       R12 R11 K207 ["ImportIconColor"]
      665 GETUPVAL                         R12 0
      666 GETTABLEKS                       R12 R12 K208 ["ImportImageBackground"]
      668 SETTABLEKS                       R12 R11 K208 ["ImportImageBackground"]
      670 GETUPVAL                         R12 0
      671 GETTABLEKS                       R12 R12 K68 ["Button"]
      673 SETTABLEKS                       R12 R11 K209 ["ButtonColor"]
      675 GETUPVAL                         R12 0
      676 GETTABLEKS                       R12 R12 K232 ["Icon"]
      678 SETTABLEKS                       R12 R11 K212 ["ButtonIconColor"]
      680 GETIMPORT                        R12 K65 [Color3.fromRGB]
      682 LOADN                            R13 255
      683 LOADN                            R14 255
      684 LOADN                            R15 255
      685 CALL                             R12 3 1
      686 SETTABLEKS                       R12 R11 K213 ["ButtonIconHoveredColor"]
      688 GETUPVAL                         R12 0
      689 GETTABLEKS                       R12 R12 K216 ["ToolbarBackgroundColor"]
      691 SETTABLEKS                       R12 R11 K216 ["ToolbarBackgroundColor"]
      693 GETUPVAL                         R12 0
      694 GETTABLEKS                       R12 R12 K217 ["ToolbarButtonBackgroundColor"]
      696 SETTABLEKS                       R12 R11 K217 ["ToolbarButtonBackgroundColor"]
      698 SETTABLEKS                       R5 R11 K71 ["LabelColumnWidth"]
      700 GETIMPORT                        R12 K143 [Vector2.new]
      702 LOADN                            R13 400
      703 LOADN                            R14 400
      704 CALL                             R12 2 1
      705 SETTABLEKS                       R12 R11 K227 ["ExpandedPreviewDefaultSize"]
      707 GETIMPORT                        R12 K143 [Vector2.new]
      709 LOADN                            R13 100
      710 LOADN                            R14 100
      711 CALL                             R12 2 1
      712 SETTABLEKS                       R12 R11 K228 ["ExpandedPreviewMinSize"]
      714 GETIMPORT                        R12 K9 [UDim.new]
      716 LOADN                            R13 0
      717 LOADN                            R14 16
      718 CALL                             R12 2 1
      719 SETTABLEKS                       R12 R11 K229 ["ExpandedPreviewPadding"]
      721 SETTABLEKS                       R11 R10 K31 ["PromptSelectorWithPreview"]
      723 DUPTABLE                         R11 K235 [{"Grid", "List", "ViewTypeBackground", "ViewTypeSize"}]
      724 GETUPVAL                         R12 0
      725 GETTABLEKS                       R12 R12 K236 ["GridIcon"]
      727 SETTABLEKS                       R12 R11 K233 ["Grid"]
      729 GETUPVAL                         R12 0
      730 GETTABLEKS                       R12 R12 K237 ["ListIcon"]
      732 SETTABLEKS                       R12 R11 K234 ["List"]
      734 GETUPVAL                         R12 0
      735 GETTABLEKS                       R12 R12 K68 ["Button"]
      737 SETTABLEKS                       R12 R11 K185 ["ViewTypeBackground"]
      739 GETIMPORT                        R12 K10 [UDim2.new]
      741 LOADN                            R13 0
      742 LOADN                            R14 50
      743 LOADN                            R15 1
      744 LOADN                            R16 0
      745 CALL                             R12 4 1
      746 SETTABLEKS                       R12 R11 K190 ["ViewTypeSize"]
      748 SETTABLEKS                       R11 R10 K32 ["ViewTypeButton"]
      750 DUPTABLE                         R11 K238 [{"ButtonSize"}]
      751 GETIMPORT                        R12 K6 [UDim2.fromOffset]
      753 LOADN                            R13 28
      754 LOADN                            R14 28
      755 CALL                             R12 2 1
      756 SETTABLEKS                       R12 R11 K83 ["ButtonSize"]
      758 SETTABLEKS                       R11 R10 K33 ["ActionButton"]
      760 RETURN                           R10 1

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
