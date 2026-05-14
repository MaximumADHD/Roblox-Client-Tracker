PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["mock"]
        5 CALL                             R2 0 1
        6 MOVE                             R1 R2
        7 JUMP                             ; [+5]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["new"]
       11 CALL                             R2 0 1
       12 MOVE                             R1 R2
       13 GETUPVAL                         R4 1
       14 NAMECALL                         R2 R1 K2 ["extend"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Dash"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["MaterialFramework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K9 ["Style"]
       32 GETTABLEKS                       R5 R4 K10 ["StyleKey"]
       34 GETTABLEKS                       R6 R4 K11 ["getRawComponentStyle"]
       36 GETTABLEKS                       R7 R4 K12 ["ComponentSymbols"]
       38 GETTABLEKS                       R8 R2 K13 ["UI"]
       40 GETTABLEKS                       R9 R8 K14 ["Image"]
       42 GETIMPORT                        R10 K4 [require]
       44 GETTABLEKS                       R11 R0 K15 ["Src"]
       46 GETTABLEKS                       R11 R11 K16 ["Flags"]
       48 GETTABLEKS                       R11 R11 K17 ["getFFlagMaterialGeneratorSupportVariations2"]
       50 CALL                             R10 1 1
       51 GETTABLEKS                       R11 R2 K18 ["Util"]
       53 GETTABLEKS                       R11 R11 K19 ["StyleModifier"]
       55 GETTABLEKS                       R12 R3 K20 ["Resources"]
       57 GETTABLEKS                       R12 R12 K21 ["Theme"]
       59 GETIMPORT                        R13 K4 [require]
       61 GETTABLEKS                       R14 R0 K15 ["Src"]
       63 GETTABLEKS                       R14 R14 K20 ["Resources"]
       65 GETTABLEKS                       R14 R14 K21 ["Theme"]
       67 CALL                             R13 1 1
       68 DUPTABLE                         R14 K24 [{"Image", "Color", "Size"}]
       69 LOADK                            R15 K25 ["rbxasset://textures/DevConsole/Close.png"]
       70 SETTABLEKS                       R15 R14 K14 ["Image"]
       72 GETTABLEKS                       R15 R5 K26 ["ErrorText"]
       74 SETTABLEKS                       R15 R14 K22 ["Color"]
       76 GETIMPORT                        R15 K29 [UDim2.fromScale]
       78 LOADN                            R16 1
       79 LOADN                            R17 1
       80 CALL                             R15 2 1
       81 SETTABLEKS                       R15 R14 K23 ["Size"]
       83 NEWTABLE                         R15 16 0
       85 DUPTABLE                         R16 K49 [{"GenerateButtonSize", "UploadButtonSize", "MultiLinePrompt", "Padding", "PromptHeight", "RowHeight", "Size", "VerticalSpacing", "ErrorPadding", "ErrorSpacing", "ErrorLabelSpacing", "RetryButtonSize", "ErrorMessageTextColor", "AddImageButtonIconColor", "AddImageButtonIconColorNoImage", "ImagePadding", "ImageCornerRadius", "ImageBackgroundColor3", "ImageColor3", "ImageBorderColor"}]
       86 GETIMPORT                        R17 K51 [UDim2.fromOffset]
       88 LOADN                            R18 80
       89 LOADN                            R19 32
       90 CALL                             R17 2 1
       91 SETTABLEKS                       R17 R16 K30 ["GenerateButtonSize"]
       93 GETIMPORT                        R17 K51 [UDim2.fromOffset]
       95 LOADN                            R18 32
       96 LOADN                            R19 32
       97 CALL                             R17 2 1
       98 SETTABLEKS                       R17 R16 K31 ["UploadButtonSize"]
      100 LOADB                            R17 1
      101 SETTABLEKS                       R17 R16 K32 ["MultiLinePrompt"]
      103 LOADN                            R17 10
      104 SETTABLEKS                       R17 R16 K33 ["Padding"]
      106 MOVE                             R18 R10
      107 CALL                             R18 0 1
      108 JUMPIFNOT                        R18 ; [+2]
      109 LOADN                            R17 88
      110 JUMP                             ; [+1]
      111 LOADN                            R17 64
      112 SETTABLEKS                       R17 R16 K34 ["PromptHeight"]
      114 LOADN                            R17 32
      115 SETTABLEKS                       R17 R16 K35 ["RowHeight"]
      117 GETIMPORT                        R17 K53 [UDim2.new]
      119 LOADN                            R18 1
      120 LOADN                            R19 0
      121 LOADN                            R20 0
      122 LOADN                            R21 102
      123 CALL                             R17 4 1
      124 SETTABLEKS                       R17 R16 K23 ["Size"]
      126 LOADN                            R17 6
      127 SETTABLEKS                       R17 R16 K36 ["VerticalSpacing"]
      129 LOADN                            R17 32
      130 SETTABLEKS                       R17 R16 K37 ["ErrorPadding"]
      132 LOADN                            R17 32
      133 SETTABLEKS                       R17 R16 K38 ["ErrorSpacing"]
      135 LOADN                            R17 8
      136 SETTABLEKS                       R17 R16 K39 ["ErrorLabelSpacing"]
      138 GETIMPORT                        R17 K53 [UDim2.new]
      140 LOADN                            R18 0
      141 LOADN                            R19 150
      142 LOADN                            R20 0
      143 LOADN                            R21 44
      144 CALL                             R17 4 1
      145 SETTABLEKS                       R17 R16 K40 ["RetryButtonSize"]
      147 GETTABLEKS                       R17 R5 K54 ["TextSecondary"]
      149 SETTABLEKS                       R17 R16 K41 ["ErrorMessageTextColor"]
      151 GETTABLEKS                       R17 R5 K55 ["MainText"]
      153 SETTABLEKS                       R17 R16 K42 ["AddImageButtonIconColor"]
      155 GETTABLEKS                       R17 R5 K55 ["MainText"]
      157 SETTABLEKS                       R17 R16 K43 ["AddImageButtonIconColorNoImage"]
      159 LOADN                            R17 5
      160 SETTABLEKS                       R17 R16 K44 ["ImagePadding"]
      162 GETIMPORT                        R17 K57 [UDim.new]
      164 LOADN                            R18 0
      165 LOADN                            R19 8
      166 CALL                             R17 2 1
      167 SETTABLEKS                       R17 R16 K45 ["ImageCornerRadius"]
      169 GETTABLEKS                       R17 R5 K58 ["InputFieldBackground"]
      171 SETTABLEKS                       R17 R16 K46 ["ImageBackgroundColor3"]
      173 GETIMPORT                        R17 K60 [Color3.new]
      175 LOADN                            R18 1
      176 LOADN                            R19 1
      177 LOADN                            R20 1
      178 CALL                             R17 3 1
      179 SETTABLEKS                       R17 R16 K47 ["ImageColor3"]
      181 GETTABLEKS                       R17 R5 K61 ["InputFieldBorder"]
      183 SETTABLEKS                       R17 R16 K48 ["ImageBorderColor"]
      185 SETTABLEKS                       R16 R15 K62 ["Header"]
      187 GETTABLEKS                       R16 R11 K63 ["Selected"]
      189 DUPTABLE                         R17 K64 [{"Header"}]
      190 DUPTABLE                         R18 K65 [{"ImageColor3", "ImageBorderColor", "AddImageButtonIconColor"}]
      191 GETIMPORT                        R19 K60 [Color3.new]
      193 LOADK                            R20 K66 [0.5]
      194 LOADK                            R21 K66 [0.5]
      195 LOADK                            R22 K66 [0.5]
      196 CALL                             R19 3 1
      197 SETTABLEKS                       R19 R18 K47 ["ImageColor3"]
      199 GETTABLEKS                       R19 R5 K67 ["InputFieldBorderSelected"]
      201 SETTABLEKS                       R19 R18 K48 ["ImageBorderColor"]
      203 GETIMPORT                        R19 K60 [Color3.new]
      205 LOADN                            R20 1
      206 LOADN                            R21 1
      207 LOADN                            R22 1
      208 CALL                             R19 3 1
      209 SETTABLEKS                       R19 R18 K42 ["AddImageButtonIconColor"]
      211 SETTABLEKS                       R18 R17 K62 ["Header"]
      213 SETTABLE                         R17 R15 R16
      214 GETTABLEKS                       R16 R11 K68 ["Hover"]
      216 DUPTABLE                         R17 K70 [{"Header", "TextureItem"}]
      217 DUPTABLE                         R18 K65 [{"ImageColor3", "ImageBorderColor", "AddImageButtonIconColor"}]
      218 GETIMPORT                        R19 K60 [Color3.new]
      220 LOADK                            R20 K66 [0.5]
      221 LOADK                            R21 K66 [0.5]
      222 LOADK                            R22 K66 [0.5]
      223 CALL                             R19 3 1
      224 SETTABLEKS                       R19 R18 K47 ["ImageColor3"]
      226 GETTABLEKS                       R19 R5 K71 ["InputFieldBorderHover"]
      228 SETTABLEKS                       R19 R18 K48 ["ImageBorderColor"]
      230 GETIMPORT                        R19 K60 [Color3.new]
      232 LOADN                            R20 1
      233 LOADN                            R21 1
      234 LOADN                            R22 1
      235 CALL                             R19 3 1
      236 SETTABLEKS                       R19 R18 K42 ["AddImageButtonIconColor"]
      238 SETTABLEKS                       R18 R17 K62 ["Header"]
      240 DUPTABLE                         R18 K72 [{"ImageColor3"}]
      241 GETIMPORT                        R19 K60 [Color3.new]
      243 LOADK                            R20 K73 [0.9]
      244 LOADK                            R21 K73 [0.9]
      245 LOADK                            R22 K73 [0.9]
      246 CALL                             R19 3 1
      247 SETTABLEKS                       R19 R18 K47 ["ImageColor3"]
      249 SETTABLEKS                       R18 R17 K69 ["TextureItem"]
      251 SETTABLE                         R17 R15 R16
      252 DUPTABLE                         R16 K80 [{"Padding", "MaxWidth", "PrimaryColor", "CornerRadius", "CloseButtonPosition", "CloseButtonSize", "RightPadding"}]
      253 LOADN                            R17 32
      254 SETTABLEKS                       R17 R16 K33 ["Padding"]
      256 LOADN                            R17 144
      257 SETTABLEKS                       R17 R16 K74 ["MaxWidth"]
      259 GETTABLEKS                       R17 R5 K26 ["ErrorText"]
      261 SETTABLEKS                       R17 R16 K75 ["PrimaryColor"]
      263 LOADN                            R17 8
      264 SETTABLEKS                       R17 R16 K76 ["CornerRadius"]
      266 GETIMPORT                        R17 K53 [UDim2.new]
      268 LOADN                            R18 1
      269 LOADN                            R19 19
      270 LOADK                            R20 K66 [0.5]
      271 LOADN                            R21 0
      272 CALL                             R17 4 1
      273 SETTABLEKS                       R17 R16 K77 ["CloseButtonPosition"]
      275 GETIMPORT                        R17 K51 [UDim2.fromOffset]
      277 LOADN                            R18 13
      278 LOADN                            R19 13
      279 CALL                             R17 2 1
      280 SETTABLEKS                       R17 R16 K78 ["CloseButtonSize"]
      282 LOADN                            R17 15
      283 SETTABLEKS                       R17 R16 K79 ["RightPadding"]
      285 SETTABLEKS                       R16 R15 K81 ["ErrorBox"]
      287 DUPTABLE                         R16 K84 [{"ErrorPadding", "ErrorInnerPadding", "ErrorMaxWidth"}]
      288 LOADN                            R17 8
      289 SETTABLEKS                       R17 R16 K37 ["ErrorPadding"]
      291 LOADN                            R17 12
      292 SETTABLEKS                       R17 R16 K82 ["ErrorInnerPadding"]
      294 LOADK                            R17 K85 [∞]
      295 SETTABLEKS                       R17 R16 K83 ["ErrorMaxWidth"]
      297 SETTABLEKS                       R16 R15 K86 ["MainView"]
      299 DUPTABLE                         R16 K97 [{"LabelWidth", "Padding", "PreviewHeight", "PreviewTileSize", "PrimarySettingsGroupBackgroundColor", "SaveAndApplyButtonSize", "ApplyButtonSize", "SettingsGroupPadding", "SettingsGroupSpacing", "SettingSpacing", "StudsPerTileSettingSize", "VerticalSpacing"}]
      300 LOADN                            R17 100
      301 SETTABLEKS                       R17 R16 K87 ["LabelWidth"]
      303 LOADN                            R17 8
      304 SETTABLEKS                       R17 R16 K33 ["Padding"]
      306 LOADN                            R17 192
      307 SETTABLEKS                       R17 R16 K88 ["PreviewHeight"]
      309 GETIMPORT                        R17 K53 [UDim2.new]
      311 LOADN                            R18 0
      312 LOADN                            R19 192
      313 LOADN                            R20 0
      314 LOADN                            R21 192
      315 CALL                             R17 4 1
      316 SETTABLEKS                       R17 R16 K89 ["PreviewTileSize"]
      318 GETTABLEKS                       R17 R5 K98 ["ForegroundContrast"]
      320 SETTABLEKS                       R17 R16 K90 ["PrimarySettingsGroupBackgroundColor"]
      322 GETIMPORT                        R17 K51 [UDim2.fromOffset]
      324 LOADN                            R18 220
      325 LOADN                            R19 32
      326 CALL                             R17 2 1
      327 SETTABLEKS                       R17 R16 K91 ["SaveAndApplyButtonSize"]
      329 GETIMPORT                        R17 K51 [UDim2.fromOffset]
      331 LOADN                            R18 120
      332 LOADN                            R19 32
      333 CALL                             R17 2 1
      334 SETTABLEKS                       R17 R16 K92 ["ApplyButtonSize"]
      336 DUPTABLE                         R17 K101 [{"Left", "Right"}]
      337 LOADN                            R18 6
      338 SETTABLEKS                       R18 R17 K99 ["Left"]
      340 LOADN                            R18 6
      341 SETTABLEKS                       R18 R17 K100 ["Right"]
      343 SETTABLEKS                       R17 R16 K93 ["SettingsGroupPadding"]
      345 LOADN                            R17 10
      346 SETTABLEKS                       R17 R16 K94 ["SettingsGroupSpacing"]
      348 LOADN                            R17 6
      349 SETTABLEKS                       R17 R16 K95 ["SettingSpacing"]
      351 GETIMPORT                        R17 K53 [UDim2.new]
      353 LOADN                            R18 1
      354 LOADN                            R19 0
      355 LOADN                            R20 0
      356 LOADN                            R21 32
      357 CALL                             R17 4 1
      358 SETTABLEKS                       R17 R16 K96 ["StudsPerTileSettingSize"]
      360 LOADN                            R17 6
      361 SETTABLEKS                       R17 R16 K36 ["VerticalSpacing"]
      363 SETTABLEKS                       R16 R15 K102 ["MaterialView"]
      365 DUPTABLE                         R16 K105 [{"CloseButtonSize", "ContentSize", "Transparency"}]
      366 GETIMPORT                        R17 K51 [UDim2.fromOffset]
      368 LOADN                            R18 24
      369 LOADN                            R19 24
      370 CALL                             R17 2 1
      371 SETTABLEKS                       R17 R16 K78 ["CloseButtonSize"]
      373 GETIMPORT                        R17 K53 [UDim2.new]
      375 LOADN                            R18 1
      376 LOADN                            R19 226
      377 LOADN                            R20 1
      378 LOADN                            R21 226
      379 CALL                             R17 4 1
      380 SETTABLEKS                       R17 R16 K103 ["ContentSize"]
      382 LOADK                            R17 K66 [0.5]
      383 SETTABLEKS                       R17 R16 K104 ["Transparency"]
      385 SETTABLEKS                       R16 R15 K106 ["ModalView"]
      387 DUPTABLE                         R16 K109 [{"HorizontalSpacing", "Size", "ValueLabelWidth"}]
      388 LOADN                            R17 16
      389 SETTABLEKS                       R17 R16 K107 ["HorizontalSpacing"]
      391 GETIMPORT                        R17 K53 [UDim2.new]
      393 LOADN                            R18 1
      394 LOADN                            R19 0
      395 LOADN                            R20 0
      396 LOADN                            R21 30
      397 CALL                             R17 4 1
      398 SETTABLEKS                       R17 R16 K23 ["Size"]
      400 LOADN                            R17 30
      401 SETTABLEKS                       R17 R16 K108 ["ValueLabelWidth"]
      403 SETTABLEKS                       R16 R15 K110 ["Setting"]
      405 DUPTABLE                         R16 K113 [{"CellPadding", "CellSize", "Padding"}]
      406 GETIMPORT                        R17 K51 [UDim2.fromOffset]
      408 LOADN                            R18 6
      409 LOADN                            R19 6
      410 CALL                             R17 2 1
      411 SETTABLEKS                       R17 R16 K111 ["CellPadding"]
      413 GETIMPORT                        R17 K51 [UDim2.fromOffset]
      415 LOADN                            R18 128
      416 LOADN                            R19 128
      417 CALL                             R17 2 1
      418 SETTABLEKS                       R17 R16 K112 ["CellSize"]
      420 DUPTABLE                         R17 K115 [{"Top", "Left", "Right"}]
      421 LOADN                            R18 4
      422 SETTABLEKS                       R18 R17 K114 ["Top"]
      424 LOADN                            R18 10
      425 SETTABLEKS                       R18 R17 K99 ["Left"]
      427 LOADN                            R18 10
      428 SETTABLEKS                       R18 R17 K100 ["Right"]
      430 SETTABLEKS                       R17 R16 K33 ["Padding"]
      432 SETTABLEKS                       R16 R15 K116 ["TextureBrowser"]
      434 DUPTABLE                         R16 K121 [{"BackgroundColor", "BorderColor", "CornerRadius", "ImageColor3", "BorderThickness", "SelectedBorderColor", "Size"}]
      435 GETTABLEKS                       R17 R5 K122 ["ForegroundMain"]
      437 SETTABLEKS                       R17 R16 K117 ["BackgroundColor"]
      439 GETTABLEKS                       R17 R5 K98 ["ForegroundContrast"]
      441 SETTABLEKS                       R17 R16 K118 ["BorderColor"]
      443 GETIMPORT                        R17 K57 [UDim.new]
      445 LOADN                            R18 0
      446 LOADN                            R19 6
      447 CALL                             R17 2 1
      448 SETTABLEKS                       R17 R16 K76 ["CornerRadius"]
      450 GETIMPORT                        R17 K60 [Color3.new]
      452 LOADN                            R18 1
      453 LOADN                            R19 1
      454 LOADN                            R20 1
      455 CALL                             R17 3 1
      456 SETTABLEKS                       R17 R16 K47 ["ImageColor3"]
      458 LOADN                            R17 2
      459 SETTABLEKS                       R17 R16 K119 ["BorderThickness"]
      461 GETTABLEKS                       R17 R5 K123 ["ActionSelected"]
      463 SETTABLEKS                       R17 R16 K120 ["SelectedBorderColor"]
      465 GETIMPORT                        R17 K51 [UDim2.fromOffset]
      467 LOADN                            R18 128
      468 LOADN                            R19 128
      469 CALL                             R17 2 1
      470 SETTABLEKS                       R17 R16 K23 ["Size"]
      472 SETTABLEKS                       R16 R15 K69 ["TextureItem"]
      474 GETTABLEKS                       R16 R7 K124 ["Button"]
      476 GETTABLEKS                       R17 R1 K125 ["join"]
      478 MOVE                             R18 R6
      479 LOADK                            R19 K124 ["Button"]
      480 CALL                             R18 1 1
      481 NEWTABLE                         R19 2 0
      483 NEWTABLE                         R20 4 0
      485 SETTABLEKS                       R9 R20 K126 ["Background"]
      487 DUPTABLE                         R21 K129 [{"AnchorPoint", "Image", "Color", "Position", "Size"}]
      488 GETIMPORT                        R22 K131 [Vector2.new]
      490 LOADK                            R23 K66 [0.5]
      491 LOADK                            R24 K66 [0.5]
      492 CALL                             R22 2 1
      493 SETTABLEKS                       R22 R21 K127 ["AnchorPoint"]
      495 LOADK                            R22 K132 ["rbxasset://textures/ui/TopBar/close.png"]
      496 SETTABLEKS                       R22 R21 K14 ["Image"]
      498 GETTABLEKS                       R22 R5 K133 ["ButtonText"]
      500 SETTABLEKS                       R22 R21 K22 ["Color"]
      502 GETIMPORT                        R22 K29 [UDim2.fromScale]
      504 LOADK                            R23 K66 [0.5]
      505 LOADK                            R24 K66 [0.5]
      506 CALL                             R22 2 1
      507 SETTABLEKS                       R22 R21 K128 ["Position"]
      509 GETIMPORT                        R22 K51 [UDim2.fromOffset]
      511 LOADN                            R23 18
      512 LOADN                            R24 18
      513 CALL                             R22 2 1
      514 SETTABLEKS                       R22 R21 K23 ["Size"]
      516 SETTABLEKS                       R21 R20 K134 ["BackgroundStyle"]
      518 GETTABLEKS                       R21 R11 K68 ["Hover"]
      520 DUPTABLE                         R22 K135 [{"BackgroundStyle"}]
      521 DUPTABLE                         R23 K129 [{"AnchorPoint", "Image", "Color", "Position", "Size"}]
      522 GETIMPORT                        R24 K131 [Vector2.new]
      524 LOADK                            R25 K66 [0.5]
      525 LOADK                            R26 K66 [0.5]
      526 CALL                             R24 2 1
      527 SETTABLEKS                       R24 R23 K127 ["AnchorPoint"]
      529 LOADK                            R24 K132 ["rbxasset://textures/ui/TopBar/close.png"]
      530 SETTABLEKS                       R24 R23 K14 ["Image"]
      532 GETTABLEKS                       R24 R5 K136 ["BrightText"]
      534 SETTABLEKS                       R24 R23 K22 ["Color"]
      536 GETIMPORT                        R24 K29 [UDim2.fromScale]
      538 LOADK                            R25 K66 [0.5]
      539 LOADK                            R26 K66 [0.5]
      540 CALL                             R24 2 1
      541 SETTABLEKS                       R24 R23 K128 ["Position"]
      543 GETIMPORT                        R24 K51 [UDim2.fromOffset]
      545 LOADN                            R25 18
      546 LOADN                            R26 18
      547 CALL                             R24 2 1
      548 SETTABLEKS                       R24 R23 K23 ["Size"]
      550 SETTABLEKS                       R23 R22 K134 ["BackgroundStyle"]
      552 SETTABLE                         R22 R20 R21
      553 SETTABLEKS                       R20 R19 K137 ["&Close"]
      555 NEWTABLE                         R20 4 0
      557 SETTABLEKS                       R9 R20 K126 ["Background"]
      559 SETTABLEKS                       R14 R20 K134 ["BackgroundStyle"]
      561 GETTABLEKS                       R21 R11 K68 ["Hover"]
      563 DUPTABLE                         R22 K135 [{"BackgroundStyle"}]
      564 SETTABLEKS                       R14 R22 K134 ["BackgroundStyle"]
      566 SETTABLE                         R22 R20 R21
      567 SETTABLEKS                       R20 R19 K138 ["&ErrorClose"]
      569 CALL                             R17 2 1
      570 SETTABLE                         R17 R15 R16
      571 DUPCLOSURE                       R16 K139 [PROTO_0]
      572 CAPTURE                          VAL R12
      573 CAPTURE                          VAL R13
      574 RETURN                           R16 1
