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
       68 DUPTABLE                         R14 K25 [{["Image"] = "rbxasset://textures/DevConsole/Close.png", ["Color"], ["Size"]}]
       69 GETTABLEKS                       R15 R5 K26 ["ErrorText"]
       71 SETTABLEKS                       R15 R14 K23 ["Color"]
       73 GETIMPORT                        R15 K29 [UDim2.fromScale]
       75 LOADN                            R16 1
       76 LOADN                            R17 1
       77 CALL                             R15 2 1
       78 SETTABLEKS                       R15 R14 K24 ["Size"]
       80 NEWTABLE                         R15 16 0
       82 DUPTABLE                         R16 K55 [{["GenerateButtonSize"], ["UploadButtonSize"], ["MultiLinePrompt"] = True, ["Padding"] = 10, ["PromptHeight"], ["RowHeight"] = 32, ["Size"], ["VerticalSpacing"] = 6, ["ErrorPadding"] = 32, ["ErrorSpacing"] = 32, ["ErrorLabelSpacing"] = 8, ["RetryButtonSize"], ["ErrorMessageTextColor"], ["AddImageButtonIconColor"], ["AddImageButtonIconColorNoImage"], ["ImagePadding"] = 5, ["ImageCornerRadius"], ["ImageBackgroundColor3"], ["ImageColor3"], ["ImageBorderColor"]}]
       83 GETIMPORT                        R17 K57 [UDim2.fromOffset]
       85 LOADN                            R18 80
       86 LOADN                            R19 32
       87 CALL                             R17 2 1
       88 SETTABLEKS                       R17 R16 K30 ["GenerateButtonSize"]
       90 GETIMPORT                        R17 K57 [UDim2.fromOffset]
       92 LOADN                            R18 32
       93 LOADN                            R19 32
       94 CALL                             R17 2 1
       95 SETTABLEKS                       R17 R16 K31 ["UploadButtonSize"]
       97 MOVE                             R18 R10
       98 CALL                             R18 0 1
       99 JUMPIFNOT                        R18 ; [+2]
      100 LOADN                            R17 88
      101 JUMP                             ; [+1]
      102 LOADN                            R17 64
      103 SETTABLEKS                       R17 R16 K36 ["PromptHeight"]
      105 GETIMPORT                        R17 K59 [UDim2.new]
      107 LOADN                            R18 1
      108 LOADN                            R19 0
      109 LOADN                            R20 0
      110 LOADN                            R21 102
      111 CALL                             R17 4 1
      112 SETTABLEKS                       R17 R16 K24 ["Size"]
      114 GETIMPORT                        R17 K59 [UDim2.new]
      116 LOADN                            R18 0
      117 LOADN                            R19 150
      118 LOADN                            R20 0
      119 LOADN                            R21 44
      120 CALL                             R17 4 1
      121 SETTABLEKS                       R17 R16 K45 ["RetryButtonSize"]
      123 GETTABLEKS                       R17 R5 K60 ["TextSecondary"]
      125 SETTABLEKS                       R17 R16 K46 ["ErrorMessageTextColor"]
      127 GETTABLEKS                       R17 R5 K61 ["MainText"]
      129 SETTABLEKS                       R17 R16 K47 ["AddImageButtonIconColor"]
      131 GETTABLEKS                       R17 R5 K61 ["MainText"]
      133 SETTABLEKS                       R17 R16 K48 ["AddImageButtonIconColorNoImage"]
      135 GETIMPORT                        R17 K63 [UDim.new]
      137 LOADN                            R18 0
      138 LOADN                            R19 8
      139 CALL                             R17 2 1
      140 SETTABLEKS                       R17 R16 K51 ["ImageCornerRadius"]
      142 GETTABLEKS                       R17 R5 K64 ["InputFieldBackground"]
      144 SETTABLEKS                       R17 R16 K52 ["ImageBackgroundColor3"]
      146 GETIMPORT                        R17 K66 [Color3.new]
      148 LOADN                            R18 1
      149 LOADN                            R19 1
      150 LOADN                            R20 1
      151 CALL                             R17 3 1
      152 SETTABLEKS                       R17 R16 K53 ["ImageColor3"]
      154 GETTABLEKS                       R17 R5 K67 ["InputFieldBorder"]
      156 SETTABLEKS                       R17 R16 K54 ["ImageBorderColor"]
      158 SETTABLEKS                       R16 R15 K68 ["Header"]
      160 GETTABLEKS                       R16 R11 K69 ["Selected"]
      162 DUPTABLE                         R17 K70 [{"Header"}]
      163 DUPTABLE                         R18 K71 [{"ImageColor3", "ImageBorderColor", "AddImageButtonIconColor"}]
      164 GETIMPORT                        R19 K66 [Color3.new]
      166 LOADK                            R20 K72 [0.5]
      167 LOADK                            R21 K72 [0.5]
      168 LOADK                            R22 K72 [0.5]
      169 CALL                             R19 3 1
      170 SETTABLEKS                       R19 R18 K53 ["ImageColor3"]
      172 GETTABLEKS                       R19 R5 K73 ["InputFieldBorderSelected"]
      174 SETTABLEKS                       R19 R18 K54 ["ImageBorderColor"]
      176 GETIMPORT                        R19 K66 [Color3.new]
      178 LOADN                            R20 1
      179 LOADN                            R21 1
      180 LOADN                            R22 1
      181 CALL                             R19 3 1
      182 SETTABLEKS                       R19 R18 K47 ["AddImageButtonIconColor"]
      184 SETTABLEKS                       R18 R17 K68 ["Header"]
      186 SETTABLE                         R17 R15 R16
      187 GETTABLEKS                       R16 R11 K74 ["Hover"]
      189 DUPTABLE                         R17 K76 [{"Header", "TextureItem"}]
      190 DUPTABLE                         R18 K71 [{"ImageColor3", "ImageBorderColor", "AddImageButtonIconColor"}]
      191 GETIMPORT                        R19 K66 [Color3.new]
      193 LOADK                            R20 K72 [0.5]
      194 LOADK                            R21 K72 [0.5]
      195 LOADK                            R22 K72 [0.5]
      196 CALL                             R19 3 1
      197 SETTABLEKS                       R19 R18 K53 ["ImageColor3"]
      199 GETTABLEKS                       R19 R5 K77 ["InputFieldBorderHover"]
      201 SETTABLEKS                       R19 R18 K54 ["ImageBorderColor"]
      203 GETIMPORT                        R19 K66 [Color3.new]
      205 LOADN                            R20 1
      206 LOADN                            R21 1
      207 LOADN                            R22 1
      208 CALL                             R19 3 1
      209 SETTABLEKS                       R19 R18 K47 ["AddImageButtonIconColor"]
      211 SETTABLEKS                       R18 R17 K68 ["Header"]
      213 DUPTABLE                         R18 K78 [{"ImageColor3"}]
      214 GETIMPORT                        R19 K66 [Color3.new]
      216 LOADK                            R20 K79 [0.9]
      217 LOADK                            R21 K79 [0.9]
      218 LOADK                            R22 K79 [0.9]
      219 CALL                             R19 3 1
      220 SETTABLEKS                       R19 R18 K53 ["ImageColor3"]
      222 SETTABLEKS                       R18 R17 K75 ["TextureItem"]
      224 SETTABLE                         R17 R15 R16
      225 DUPTABLE                         R16 K88 [{["Padding"] = 32, ["MaxWidth"] = 400, ["PrimaryColor"], ["CornerRadius"] = 8, ["CloseButtonPosition"], ["CloseButtonSize"], ["RightPadding"] = 15}]
      226 GETTABLEKS                       R17 R5 K26 ["ErrorText"]
      228 SETTABLEKS                       R17 R16 K82 ["PrimaryColor"]
      230 GETIMPORT                        R17 K59 [UDim2.new]
      232 LOADN                            R18 1
      233 LOADN                            R19 19
      234 LOADK                            R20 K72 [0.5]
      235 LOADN                            R21 0
      236 CALL                             R17 4 1
      237 SETTABLEKS                       R17 R16 K84 ["CloseButtonPosition"]
      239 GETIMPORT                        R17 K57 [UDim2.fromOffset]
      241 LOADN                            R18 13
      242 LOADN                            R19 13
      243 CALL                             R17 2 1
      244 SETTABLEKS                       R17 R16 K85 ["CloseButtonSize"]
      246 SETTABLEKS                       R16 R15 K89 ["ErrorBox"]
      248 DUPTABLE                         R16 K94 [{["ErrorPadding"] = 8, ["ErrorInnerPadding"] = 12, ["ErrorMaxWidth"] = ∞}]
      249 SETTABLEKS                       R16 R15 K95 ["MainView"]
      251 DUPTABLE                         R16 K108 [{["LabelWidth"] = 100, ["Padding"] = 8, ["PreviewHeight"] = 192, ["PreviewTileSize"], ["PrimarySettingsGroupBackgroundColor"], ["SaveAndApplyButtonSize"], ["ApplyButtonSize"], ["SettingsGroupPadding"], ["SettingsGroupSpacing"] = 10, ["SettingSpacing"] = 6, ["StudsPerTileSettingSize"], ["VerticalSpacing"] = 6}]
      252 GETIMPORT                        R17 K59 [UDim2.new]
      254 LOADN                            R18 0
      255 LOADN                            R19 192
      256 LOADN                            R20 0
      257 LOADN                            R21 192
      258 CALL                             R17 4 1
      259 SETTABLEKS                       R17 R16 K100 ["PreviewTileSize"]
      261 GETTABLEKS                       R17 R5 K109 ["ForegroundContrast"]
      263 SETTABLEKS                       R17 R16 K101 ["PrimarySettingsGroupBackgroundColor"]
      265 GETIMPORT                        R17 K57 [UDim2.fromOffset]
      267 LOADN                            R18 220
      268 LOADN                            R19 32
      269 CALL                             R17 2 1
      270 SETTABLEKS                       R17 R16 K102 ["SaveAndApplyButtonSize"]
      272 GETIMPORT                        R17 K57 [UDim2.fromOffset]
      274 LOADN                            R18 120
      275 LOADN                            R19 32
      276 CALL                             R17 2 1
      277 SETTABLEKS                       R17 R16 K103 ["ApplyButtonSize"]
      279 DUPTABLE                         R17 K112 [{["Left"] = 6, ["Right"] = 6}]
      280 SETTABLEKS                       R17 R16 K104 ["SettingsGroupPadding"]
      282 GETIMPORT                        R17 K59 [UDim2.new]
      284 LOADN                            R18 1
      285 LOADN                            R19 0
      286 LOADN                            R20 0
      287 LOADN                            R21 32
      288 CALL                             R17 4 1
      289 SETTABLEKS                       R17 R16 K107 ["StudsPerTileSettingSize"]
      291 SETTABLEKS                       R16 R15 K113 ["MaterialView"]
      293 DUPTABLE                         R16 K116 [{["CloseButtonSize"], ["ContentSize"], ["Transparency"] = 0.5}]
      294 GETIMPORT                        R17 K57 [UDim2.fromOffset]
      296 LOADN                            R18 24
      297 LOADN                            R19 24
      298 CALL                             R17 2 1
      299 SETTABLEKS                       R17 R16 K85 ["CloseButtonSize"]
      301 GETIMPORT                        R17 K59 [UDim2.new]
      303 LOADN                            R18 1
      304 LOADN                            R19 -30
      305 LOADN                            R20 1
      306 LOADN                            R21 -30
      307 CALL                             R17 4 1
      308 SETTABLEKS                       R17 R16 K114 ["ContentSize"]
      310 SETTABLEKS                       R16 R15 K117 ["ModalView"]
      312 DUPTABLE                         R16 K122 [{["HorizontalSpacing"] = 16, ["Size"], ["ValueLabelWidth"] = 30}]
      313 GETIMPORT                        R17 K59 [UDim2.new]
      315 LOADN                            R18 1
      316 LOADN                            R19 0
      317 LOADN                            R20 0
      318 LOADN                            R21 30
      319 CALL                             R17 4 1
      320 SETTABLEKS                       R17 R16 K24 ["Size"]
      322 SETTABLEKS                       R16 R15 K123 ["Setting"]
      324 DUPTABLE                         R16 K126 [{"CellPadding", "CellSize", "Padding"}]
      325 GETIMPORT                        R17 K57 [UDim2.fromOffset]
      327 LOADN                            R18 6
      328 LOADN                            R19 6
      329 CALL                             R17 2 1
      330 SETTABLEKS                       R17 R16 K124 ["CellPadding"]
      332 GETIMPORT                        R17 K57 [UDim2.fromOffset]
      334 LOADN                            R18 128
      335 LOADN                            R19 128
      336 CALL                             R17 2 1
      337 SETTABLEKS                       R17 R16 K125 ["CellSize"]
      339 DUPTABLE                         R17 K129 [{["Top"] = 4, ["Left"] = 10, ["Right"] = 10}]
      340 SETTABLEKS                       R17 R16 K34 ["Padding"]
      342 SETTABLEKS                       R16 R15 K130 ["TextureBrowser"]
      344 DUPTABLE                         R16 K136 [{["BackgroundColor"], ["BorderColor"], ["CornerRadius"], ["ImageColor3"], ["BorderThickness"] = 2, ["SelectedBorderColor"], ["Size"]}]
      345 GETTABLEKS                       R17 R5 K137 ["ForegroundMain"]
      347 SETTABLEKS                       R17 R16 K131 ["BackgroundColor"]
      349 GETTABLEKS                       R17 R5 K109 ["ForegroundContrast"]
      351 SETTABLEKS                       R17 R16 K132 ["BorderColor"]
      353 GETIMPORT                        R17 K63 [UDim.new]
      355 LOADN                            R18 0
      356 LOADN                            R19 6
      357 CALL                             R17 2 1
      358 SETTABLEKS                       R17 R16 K83 ["CornerRadius"]
      360 GETIMPORT                        R17 K66 [Color3.new]
      362 LOADN                            R18 1
      363 LOADN                            R19 1
      364 LOADN                            R20 1
      365 CALL                             R17 3 1
      366 SETTABLEKS                       R17 R16 K53 ["ImageColor3"]
      368 GETTABLEKS                       R17 R5 K138 ["ActionSelected"]
      370 SETTABLEKS                       R17 R16 K135 ["SelectedBorderColor"]
      372 GETIMPORT                        R17 K57 [UDim2.fromOffset]
      374 LOADN                            R18 128
      375 LOADN                            R19 128
      376 CALL                             R17 2 1
      377 SETTABLEKS                       R17 R16 K24 ["Size"]
      379 SETTABLEKS                       R16 R15 K75 ["TextureItem"]
      381 GETTABLEKS                       R16 R7 K139 ["Button"]
      383 GETTABLEKS                       R17 R1 K140 ["join"]
      385 MOVE                             R18 R6
      386 LOADK                            R19 K139 ["Button"]
      387 CALL                             R18 1 1
      388 NEWTABLE                         R19 2 0
      390 NEWTABLE                         R20 4 0
      392 SETTABLEKS                       R9 R20 K141 ["Background"]
      394 DUPTABLE                         R21 K145 [{["AnchorPoint"], ["Image"] = "rbxasset://textures/ui/TopBar/close.png", ["Color"], ["Position"], ["Size"]}]
      395 GETIMPORT                        R22 K147 [Vector2.new]
      397 LOADK                            R23 K72 [0.5]
      398 LOADK                            R24 K72 [0.5]
      399 CALL                             R22 2 1
      400 SETTABLEKS                       R22 R21 K142 ["AnchorPoint"]
      402 GETTABLEKS                       R22 R5 K148 ["ButtonText"]
      404 SETTABLEKS                       R22 R21 K23 ["Color"]
      406 GETIMPORT                        R22 K29 [UDim2.fromScale]
      408 LOADK                            R23 K72 [0.5]
      409 LOADK                            R24 K72 [0.5]
      410 CALL                             R22 2 1
      411 SETTABLEKS                       R22 R21 K144 ["Position"]
      413 GETIMPORT                        R22 K57 [UDim2.fromOffset]
      415 LOADN                            R23 18
      416 LOADN                            R24 18
      417 CALL                             R22 2 1
      418 SETTABLEKS                       R22 R21 K24 ["Size"]
      420 SETTABLEKS                       R21 R20 K149 ["BackgroundStyle"]
      422 GETTABLEKS                       R21 R11 K74 ["Hover"]
      424 DUPTABLE                         R22 K150 [{"BackgroundStyle"}]
      425 DUPTABLE                         R23 K145 [{["AnchorPoint"], ["Image"] = "rbxasset://textures/ui/TopBar/close.png", ["Color"], ["Position"], ["Size"]}]
      426 GETIMPORT                        R24 K147 [Vector2.new]
      428 LOADK                            R25 K72 [0.5]
      429 LOADK                            R26 K72 [0.5]
      430 CALL                             R24 2 1
      431 SETTABLEKS                       R24 R23 K142 ["AnchorPoint"]
      433 GETTABLEKS                       R24 R5 K151 ["BrightText"]
      435 SETTABLEKS                       R24 R23 K23 ["Color"]
      437 GETIMPORT                        R24 K29 [UDim2.fromScale]
      439 LOADK                            R25 K72 [0.5]
      440 LOADK                            R26 K72 [0.5]
      441 CALL                             R24 2 1
      442 SETTABLEKS                       R24 R23 K144 ["Position"]
      444 GETIMPORT                        R24 K57 [UDim2.fromOffset]
      446 LOADN                            R25 18
      447 LOADN                            R26 18
      448 CALL                             R24 2 1
      449 SETTABLEKS                       R24 R23 K24 ["Size"]
      451 SETTABLEKS                       R23 R22 K149 ["BackgroundStyle"]
      453 SETTABLE                         R22 R20 R21
      454 SETTABLEKS                       R20 R19 K152 ["&Close"]
      456 NEWTABLE                         R20 4 0
      458 SETTABLEKS                       R9 R20 K141 ["Background"]
      460 SETTABLEKS                       R14 R20 K149 ["BackgroundStyle"]
      462 GETTABLEKS                       R21 R11 K74 ["Hover"]
      464 DUPTABLE                         R22 K150 [{"BackgroundStyle"}]
      465 SETTABLEKS                       R14 R22 K149 ["BackgroundStyle"]
      467 SETTABLE                         R22 R20 R21
      468 SETTABLEKS                       R20 R19 K153 ["&ErrorClose"]
      470 CALL                             R17 2 1
      471 SETTABLE                         R17 R15 R16
      472 DUPCLOSURE                       R16 K154 [PROTO_0]
      473 CAPTURE                          VAL R12
      474 CAPTURE                          VAL R13
      475 RETURN                           R16 1
