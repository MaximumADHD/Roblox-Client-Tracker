PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K1 ["getAssetConfigMessaging"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R0 R1 K0 ["audioPublicationDisabledLink"]
        6 JUMPIFNOT                        R0 ; [+5]
        7 GETUPVAL                         R1 1
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K2 ["OpenBrowserWindow"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 SETTABLEKS                       R1 R0 K1 ["onLearnMoreActivated"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [string.format]
        2 LOADK                            R1 K3 ["%slibrary/configure?id=%s#!/general"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K4 ["BaseUrl"]
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R5 2
        8 NAMECALL                         R3 R3 K5 ["urlEncode"]
       10 CALL                             R3 2 -1
       11 CALL                             R0 -1 1
       12 GETUPVAL                         R1 3
       13 MOVE                             R3 R0
       14 NAMECALL                         R1 R1 K6 ["OpenBrowserWindow"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["assetConfig"]
        6 GETTABLEKS                       R4 R2 K3 ["publishAsset"]
        8 GETTABLEKS                       R5 R1 K4 ["AssetId"]
       10 GETTABLEKS                       R6 R1 K5 ["AssetType"]
       12 GETTABLEKS                       R7 R1 K6 ["AllowSelectPrivate"]
       14 GETTABLEKS                       R8 R1 K7 ["LayoutOrder"]
       16 GETTABLEKS                       R9 R1 K8 ["IsAssetPublic"]
       18 GETTABLEKS                       R10 R1 K9 ["OnSelected"]
       20 GETTABLEKS                       R11 R1 K10 ["Localization"]
       22 LOADK                            R14 K11 ["AssetConfigSharing"]
       23 LOADK                            R15 K12 ["SubTitle"]
       24 NAMECALL                         R12 R11 K13 ["getText"]
       26 CALL                             R12 3 1
       27 LOADK                            R15 K14 ["General"]
       28 LOADK                            R16 K15 ["TermsOfUse"]
       29 NAMECALL                         R13 R11 K13 ["getText"]
       31 CALL                             R13 3 1
       32 LOADK                            R16 K11 ["AssetConfigSharing"]
       33 LOADK                            R17 K16 ["PrivateSpecificExperiences"]
       34 NAMECALL                         R14 R11 K13 ["getText"]
       36 CALL                             R14 3 1
       37 LOADK                            R17 K11 ["AssetConfigSharing"]
       38 LOADK                            R18 K17 ["PublicAllExperiences"]
       39 NAMECALL                         R15 R11 K13 ["getText"]
       41 CALL                             R15 3 1
       42 LOADK                            R18 K11 ["AssetConfigSharing"]
       43 LOADK                            R19 K18 ["ExperiencesWithAccess"]
       44 NAMECALL                         R16 R11 K13 ["getText"]
       46 CALL                             R16 3 1
       47 LOADNIL                          R17
       48 JUMPIFNOT                        R7 ; [+7]
       49 LOADK                            R20 K11 ["AssetConfigSharing"]
       50 LOADK                            R21 K19 ["PrivateInformation"]
       51 NAMECALL                         R18 R11 K13 ["getText"]
       53 CALL                             R18 3 1
       54 MOVE                             R17 R18
       55 JUMP                             ; [+6]
       56 LOADK                            R20 K11 ["AssetConfigSharing"]
       57 LOADK                            R21 K20 ["PrivateDisabledInformation"]
       58 NAMECALL                         R18 R11 K13 ["getText"]
       60 CALL                             R18 3 1
       61 MOVE                             R17 R18
       62 LOADNIL                          R18
       63 LOADNIL                          R19
       64 LOADNIL                          R20
       65 LOADB                            R21 1
       66 GETIMPORT                        R22 K23 [Enum.AssetType.Audio]
       68 JUMPIFEQ                         R6 R22 ; [+7]
       70 GETUPVAL                         R22 0
       71 JUMPIFNOT                        R22 ; [+83]
       72 GETIMPORT                        R22 K25 [Enum.AssetType.Video]
       74 JUMPIFNOTEQ                      R6 R22 ; [+80]
       76 JUMPIFNOT                        R9 ; [+7]
       77 LOADK                            R24 K11 ["AssetConfigSharing"]
       78 LOADK                            R25 K26 ["PublicInformation"]
       79 NAMECALL                         R22 R11 K13 ["getText"]
       81 CALL                             R22 3 1
       82 MOVE                             R18 R22
       83 JUMP                             ; [+77]
       84 GETUPVAL                         R22 0
       85 JUMPIFNOT                        R22 ; [+18]
       86 GETIMPORT                        R22 K25 [Enum.AssetType.Video]
       88 JUMPIFNOTEQ                      R6 R22 ; [+8]
       90 LOADK                            R24 K11 ["AssetConfigSharing"]
       91 LOADK                            R25 K27 ["VideoPublicDisabledInformation"]
       92 NAMECALL                         R22 R11 K13 ["getText"]
       94 CALL                             R22 3 1
       95 MOVE                             R18 R22
       96 JUMP                             ; [+13]
       97 LOADK                            R24 K11 ["AssetConfigSharing"]
       98 LOADK                            R25 K28 ["PublicDisabledInformation"]
       99 NAMECALL                         R22 R11 K13 ["getText"]
      101 CALL                             R22 3 1
      102 MOVE                             R18 R22
      103 JUMP                             ; [+6]
      104 LOADK                            R24 K11 ["AssetConfigSharing"]
      105 LOADK                            R25 K28 ["PublicDisabledInformation"]
      106 NAMECALL                         R22 R11 K13 ["getText"]
      108 CALL                             R22 3 1
      109 MOVE                             R18 R22
      110 LOADB                            R21 0
      111 DUPTABLE                         R22 K31 [{"Text", "OnClick"}]
      112 LOADK                            R25 K11 ["AssetConfigSharing"]
      113 LOADK                            R26 K32 ["PublicDisabledLinkText"]
      114 NAMECALL                         R23 R11 K13 ["getText"]
      116 CALL                             R23 3 1
      117 SETTABLEKS                       R23 R22 K29 ["Text"]
      119 GETTABLEKS                       R23 R0 K33 ["onLearnMoreActivated"]
      121 SETTABLEKS                       R23 R22 K30 ["OnClick"]
      123 MOVE                             R19 R22
      124 LOADK                            R24 K11 ["AssetConfigSharing"]
      125 LOADK                            R25 K34 ["PrivateInformationVersionTwo"]
      126 NAMECALL                         R22 R11 K13 ["getText"]
      128 CALL                             R22 3 1
      129 MOVE                             R17 R22
      130 GETUPVAL                         R23 1
      131 GETTABLEKS                       R23 R23 K36 ["getAssetConfigMessaging"]
      133 CALL                             R23 0 1
      134 GETTABLEKS                       R22 R23 K35 ["showManageUniversePermissionsLink"]
      136 JUMPIFNOT                        R22 ; [+24]
      137 JUMPIFNOT                        R5 ; [+23]
      138 DUPTABLE                         R22 K31 [{"Text", "OnClick"}]
      139 LOADK                            R25 K11 ["AssetConfigSharing"]
      140 LOADK                            R26 K37 ["PrivateInformationLinkText"]
      141 NAMECALL                         R23 R11 K13 ["getText"]
      143 CALL                             R23 3 1
      144 SETTABLEKS                       R23 R22 K29 ["Text"]
      146 NEWCLOSURE                       R23 P0
      147 CAPTURE                          UPVAL U2
      148 CAPTURE                          UPVAL U3
      149 CAPTURE                          VAL R5
      150 CAPTURE                          UPVAL U4
      151 SETTABLEKS                       R23 R22 K30 ["OnClick"]
      153 MOVE                             R20 R22
      154 JUMP                             ; [+6]
      155 LOADK                            R24 K11 ["AssetConfigSharing"]
      156 LOADK                            R25 K26 ["PublicInformation"]
      157 NAMECALL                         R22 R11 K13 ["getText"]
      159 CALL                             R22 3 1
      160 MOVE                             R18 R22
      161 GETUPVAL                         R22 5
      162 GETTABLEKS                       R22 R22 K38 ["new"]
      164 CALL                             R22 0 1
      165 JUMPIFNOT                        R9 ; [+6]
      166 GETUPVAL                         R23 6
      167 GETTABLEKS                       R23 R23 K39 ["SHARING_KEYS"]
      169 GETTABLEKS                       R23 R23 K40 ["Public"]
      171 JUMP                             ; [+5]
      172 GETUPVAL                         R23 6
      173 GETTABLEKS                       R23 R23 K39 ["SHARING_KEYS"]
      175 GETTABLEKS                       R23 R23 K41 ["Private"]
      177 GETUPVAL                         R24 7
      178 GETTABLEKS                       R24 R24 K42 ["createElement"]
      180 GETUPVAL                         R25 8
      181 DUPTABLE                         R26 K49 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Size", "VerticalAlignment"}]
      182 GETIMPORT                        R27 K51 [Enum.AutomaticSize.Y]
      184 SETTABLEKS                       R27 R26 K43 ["AutomaticSize"]
      186 GETIMPORT                        R27 K53 [Enum.HorizontalAlignment.Left]
      188 SETTABLEKS                       R27 R26 K44 ["HorizontalAlignment"]
      190 GETIMPORT                        R27 K56 [Enum.FillDirection.Horizontal]
      192 SETTABLEKS                       R27 R26 K45 ["Layout"]
      194 SETTABLEKS                       R8 R26 K7 ["LayoutOrder"]
      196 DUPTABLE                         R27 K58 [{"Bottom"}]
      197 LOADN                            R28 25
      198 SETTABLEKS                       R28 R27 K57 ["Bottom"]
      200 SETTABLEKS                       R27 R26 K46 ["Padding"]
      202 GETIMPORT                        R27 K60 [UDim2.new]
      204 LOADN                            R28 1
      205 LOADN                            R29 0
      206 LOADN                            R30 0
      207 LOADN                            R31 0
      208 CALL                             R27 4 1
      209 SETTABLEKS                       R27 R26 K47 ["Size"]
      211 GETIMPORT                        R27 K62 [Enum.VerticalAlignment.Top]
      213 SETTABLEKS                       R27 R26 K48 ["VerticalAlignment"]
      215 DUPTABLE                         R27 K65 [{"Title", "RightFrame"}]
      216 GETUPVAL                         R28 7
      217 GETTABLEKS                       R28 R28 K42 ["createElement"]
      219 GETUPVAL                         R29 9
      220 DUPTABLE                         R30 K70 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment"}]
      221 GETIMPORT                        R31 K51 [Enum.AutomaticSize.Y]
      223 SETTABLEKS                       R31 R30 K43 ["AutomaticSize"]
      225 LOADN                            R31 1
      226 SETTABLEKS                       R31 R30 K7 ["LayoutOrder"]
      228 GETIMPORT                        R31 K60 [UDim2.new]
      230 LOADN                            R32 0
      231 GETUPVAL                         R33 6
      232 GETTABLEKS                       R33 R33 K71 ["TITLE_GUTTER_WIDTH"]
      234 LOADN                            R34 0
      235 LOADN                            R35 0
      236 CALL                             R31 4 1
      237 SETTABLEKS                       R31 R30 K47 ["Size"]
      239 SETTABLEKS                       R16 R30 K29 ["Text"]
      241 GETTABLEKS                       R31 R4 K72 ["titleTextColor"]
      243 SETTABLEKS                       R31 R30 K66 ["TextColor"]
      245 GETUPVAL                         R31 10
      246 GETTABLEKS                       R31 R31 K73 ["FONT_SIZE_TITLE"]
      248 SETTABLEKS                       R31 R30 K67 ["TextSize"]
      250 LOADB                            R31 1
      251 SETTABLEKS                       R31 R30 K68 ["TextWrapped"]
      253 GETIMPORT                        R31 K74 [Enum.TextXAlignment.Left]
      255 SETTABLEKS                       R31 R30 K69 ["TextXAlignment"]
      257 CALL                             R28 2 1
      258 SETTABLEKS                       R28 R27 K63 ["Title"]
      260 GETUPVAL                         R28 7
      261 GETTABLEKS                       R28 R28 K42 ["createElement"]
      263 GETUPVAL                         R29 8
      264 DUPTABLE                         R30 K76 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing"}]
      265 GETIMPORT                        R31 K51 [Enum.AutomaticSize.Y]
      267 SETTABLEKS                       R31 R30 K43 ["AutomaticSize"]
      269 GETIMPORT                        R31 K53 [Enum.HorizontalAlignment.Left]
      271 SETTABLEKS                       R31 R30 K44 ["HorizontalAlignment"]
      273 GETIMPORT                        R31 K78 [Enum.FillDirection.Vertical]
      275 SETTABLEKS                       R31 R30 K45 ["Layout"]
      277 LOADN                            R31 2
      278 SETTABLEKS                       R31 R30 K7 ["LayoutOrder"]
      280 GETIMPORT                        R31 K60 [UDim2.new]
      282 LOADN                            R32 1
      283 GETUPVAL                         R34 6
      284 GETTABLEKS                       R34 R34 K71 ["TITLE_GUTTER_WIDTH"]
      286 MINUS                            R33 R34
      287 LOADN                            R34 0
      288 LOADN                            R35 0
      289 CALL                             R31 4 1
      290 SETTABLEKS                       R31 R30 K47 ["Size"]
      292 LOADN                            R31 2
      293 SETTABLEKS                       R31 R30 K75 ["Spacing"]
      295 DUPTABLE                         R31 K80 [{"ContentContainer"}]
      296 GETUPVAL                         R32 7
      297 GETTABLEKS                       R32 R32 K42 ["createElement"]
      299 GETUPVAL                         R33 8
      300 DUPTABLE                         R34 K76 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing"}]
      301 GETIMPORT                        R35 K51 [Enum.AutomaticSize.Y]
      303 SETTABLEKS                       R35 R34 K43 ["AutomaticSize"]
      305 GETIMPORT                        R35 K53 [Enum.HorizontalAlignment.Left]
      307 SETTABLEKS                       R35 R34 K44 ["HorizontalAlignment"]
      309 GETIMPORT                        R35 K78 [Enum.FillDirection.Vertical]
      311 SETTABLEKS                       R35 R34 K45 ["Layout"]
      313 NAMECALL                         R35 R22 K81 ["getNextOrder"]
      315 CALL                             R35 1 1
      316 SETTABLEKS                       R35 R34 K7 ["LayoutOrder"]
      318 GETIMPORT                        R35 K60 [UDim2.new]
      320 LOADN                            R36 1
      321 LOADN                            R37 0
      322 LOADN                            R38 0
      323 LOADN                            R39 0
      324 CALL                             R35 4 1
      325 SETTABLEKS                       R35 R34 K47 ["Size"]
      327 LOADN                            R35 10
      328 SETTABLEKS                       R35 R34 K75 ["Spacing"]
      330 DUPTABLE                         R35 K84 [{"SubtitleLabel", "RadioButtonList"}]
      331 GETUPVAL                         R36 7
      332 GETTABLEKS                       R36 R36 K42 ["createElement"]
      334 GETUPVAL                         R37 9
      335 DUPTABLE                         R38 K70 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment"}]
      336 GETIMPORT                        R39 K51 [Enum.AutomaticSize.Y]
      338 SETTABLEKS                       R39 R38 K43 ["AutomaticSize"]
      340 LOADN                            R39 1
      341 SETTABLEKS                       R39 R38 K7 ["LayoutOrder"]
      343 GETIMPORT                        R39 K60 [UDim2.new]
      345 LOADN                            R40 1
      346 LOADN                            R41 0
      347 LOADN                            R42 0
      348 LOADN                            R43 0
      349 CALL                             R39 4 1
      350 SETTABLEKS                       R39 R38 K47 ["Size"]
      352 SETTABLEKS                       R12 R38 K29 ["Text"]
      354 GETTABLEKS                       R39 R3 K85 ["brightText"]
      356 SETTABLEKS                       R39 R38 K66 ["TextColor"]
      358 GETUPVAL                         R39 10
      359 GETTABLEKS                       R39 R39 K86 ["FONT_SIZE_ASSET_CONFIG_INPUT"]
      361 SETTABLEKS                       R39 R38 K67 ["TextSize"]
      363 LOADB                            R39 1
      364 SETTABLEKS                       R39 R38 K68 ["TextWrapped"]
      366 GETIMPORT                        R39 K74 [Enum.TextXAlignment.Left]
      368 SETTABLEKS                       R39 R38 K69 ["TextXAlignment"]
      370 CALL                             R36 2 1
      371 SETTABLEKS                       R36 R35 K82 ["SubtitleLabel"]
      373 GETUPVAL                         R36 7
      374 GETTABLEKS                       R36 R36 K42 ["createElement"]
      376 GETUPVAL                         R37 11
      377 DUPTABLE                         R38 K91 [{"AutomaticSize", "Buttons", "FillDirection", "LayoutOrder", "OnClick", "CurrentSelectedKey", "SelectedKey", "Style", "TextWrapped", "TextXAlignment", "VerticalAlignment"}]
      378 GETIMPORT                        R39 K51 [Enum.AutomaticSize.Y]
      380 SETTABLEKS                       R39 R38 K43 ["AutomaticSize"]
      382 NEWTABLE                         R39 0 2
      384 DUPTABLE                         R40 K96 [{"Key", "Text", "Description", "LinkProps", "Disabled"}]
      385 GETUPVAL                         R41 6
      386 GETTABLEKS                       R41 R41 K39 ["SHARING_KEYS"]
      388 GETTABLEKS                       R41 R41 K41 ["Private"]
      390 SETTABLEKS                       R41 R40 K92 ["Key"]
      392 SETTABLEKS                       R14 R40 K29 ["Text"]
      394 SETTABLEKS                       R17 R40 K93 ["Description"]
      396 SETTABLEKS                       R20 R40 K94 ["LinkProps"]
      398 NOT                              R41 R7
      399 SETTABLEKS                       R41 R40 K95 ["Disabled"]
      401 DUPTABLE                         R41 K96 [{"Key", "Text", "Description", "LinkProps", "Disabled"}]
      402 GETUPVAL                         R42 6
      403 GETTABLEKS                       R42 R42 K39 ["SHARING_KEYS"]
      405 GETTABLEKS                       R42 R42 K40 ["Public"]
      407 SETTABLEKS                       R42 R41 K92 ["Key"]
      409 SETTABLEKS                       R15 R41 K29 ["Text"]
      411 SETTABLEKS                       R18 R41 K93 ["Description"]
      413 SETTABLEKS                       R19 R41 K94 ["LinkProps"]
      415 NOT                              R42 R21
      416 SETTABLEKS                       R42 R41 K95 ["Disabled"]
      418 SETLIST                          R39 R40 2 [1]
      420 SETTABLEKS                       R39 R38 K87 ["Buttons"]
      422 GETIMPORT                        R39 K78 [Enum.FillDirection.Vertical]
      424 SETTABLEKS                       R39 R38 K54 ["FillDirection"]
      426 LOADN                            R39 2
      427 SETTABLEKS                       R39 R38 K7 ["LayoutOrder"]
      429 SETTABLEKS                       R10 R38 K30 ["OnClick"]
      431 SETTABLEKS                       R23 R38 K88 ["CurrentSelectedKey"]
      433 SETTABLEKS                       R23 R38 K89 ["SelectedKey"]
      435 LOADK                            R39 K97 ["AssetConfigRadioButtonList"]
      436 SETTABLEKS                       R39 R38 K90 ["Style"]
      438 LOADB                            R39 1
      439 SETTABLEKS                       R39 R38 K68 ["TextWrapped"]
      441 GETIMPORT                        R39 K74 [Enum.TextXAlignment.Left]
      443 SETTABLEKS                       R39 R38 K69 ["TextXAlignment"]
      445 GETIMPORT                        R39 K62 [Enum.VerticalAlignment.Top]
      447 SETTABLEKS                       R39 R38 K48 ["VerticalAlignment"]
      449 CALL                             R36 2 1
      450 SETTABLEKS                       R36 R35 K83 ["RadioButtonList"]
      452 CALL                             R32 3 1
      453 SETTABLEKS                       R32 R31 K79 ["ContentContainer"]
      455 CALL                             R28 3 1
      456 SETTABLEKS                       R28 R27 K64 ["RightFrame"]
      458 CALL                             R24 3 -1
      459 RETURN                           R24 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ToolboxVideoConfigSharing2"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETTABLEKS                       R2 R1 K7 ["Packages"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Framework"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R2 K11 ["Roact"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R5 R3 K12 ["UI"]
       31 GETTABLEKS                       R6 R5 K13 ["Button"]
       33 GETTABLEKS                       R7 R5 K14 ["LinkText"]
       35 GETTABLEKS                       R8 R5 K15 ["Pane"]
       37 GETTABLEKS                       R9 R5 K16 ["RadioButtonList"]
       39 GETTABLEKS                       R10 R5 K17 ["TextLabel"]
       41 GETTABLEKS                       R11 R3 K18 ["ContextServices"]
       43 GETTABLEKS                       R12 R11 K19 ["withContext"]
       45 GETTABLEKS                       R13 R1 K20 ["Src"]
       47 GETTABLEKS                       R13 R13 K21 ["Util"]
       49 GETIMPORT                        R14 K9 [require]
       51 GETTABLEKS                       R15 R13 K22 ["Constants"]
       53 CALL                             R14 1 1
       54 GETIMPORT                        R15 K9 [require]
       56 GETTABLEKS                       R16 R13 K23 ["AssetConfigConstants"]
       58 CALL                             R15 1 1
       59 GETIMPORT                        R16 K9 [require]
       61 GETTABLEKS                       R17 R13 K24 ["ToolboxUtilities"]
       63 CALL                             R16 1 1
       64 GETTABLEKS                       R17 R3 K21 ["Util"]
       66 GETTABLEKS                       R17 R17 K25 ["LayoutOrderIterator"]
       68 GETIMPORT                        R18 K1 [game]
       70 LOADK                            R20 K26 ["ContentProvider"]
       71 NAMECALL                         R18 R18 K27 ["GetService"]
       73 CALL                             R18 2 1
       74 GETIMPORT                        R19 K1 [game]
       76 LOADK                            R21 K28 ["HttpService"]
       77 NAMECALL                         R19 R19 K27 ["GetService"]
       79 CALL                             R19 2 1
       80 GETIMPORT                        R20 K1 [game]
       82 LOADK                            R22 K29 ["GuiService"]
       83 NAMECALL                         R20 R20 K27 ["GetService"]
       85 CALL                             R20 2 1
       86 GETTABLEKS                       R21 R4 K30 ["PureComponent"]
       88 LOADK                            R23 K31 ["ConfigSharing"]
       89 NAMECALL                         R21 R21 K32 ["extend"]
       91 CALL                             R21 2 1
       92 GETIMPORT                        R22 K35 [UDim2.fromOffset]
       94 LOADN                            R23 160
       95 LOADN                            R24 32
       96 CALL                             R22 2 1
       97 DUPCLOSURE                       R23 K36 [PROTO_1]
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R20
      100 SETTABLEKS                       R23 R21 K37 ["init"]
      102 DUPCLOSURE                       R23 K38 [PROTO_3]
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R16
      105 CAPTURE                          VAL R18
      106 CAPTURE                          VAL R19
      107 CAPTURE                          VAL R20
      108 CAPTURE                          VAL R17
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R9
      115 SETTABLEKS                       R23 R21 K39 ["render"]
      117 MOVE                             R23 R12
      118 DUPTABLE                         R24 K42 [{"Localization", "Stylizer"}]
      119 GETTABLEKS                       R25 R11 K40 ["Localization"]
      121 SETTABLEKS                       R25 R24 K40 ["Localization"]
      123 GETTABLEKS                       R25 R11 K41 ["Stylizer"]
      125 SETTABLEKS                       R25 R24 K41 ["Stylizer"]
      127 CALL                             R23 1 1
      128 MOVE                             R24 R21
      129 CALL                             R23 1 1
      130 MOVE                             R21 R23
      131 RETURN                           R21 1
