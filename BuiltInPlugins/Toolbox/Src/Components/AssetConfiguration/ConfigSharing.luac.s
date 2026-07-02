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
      196 DUPTABLE                         R27 K59 [{["Bottom"] = 25}]
      197 SETTABLEKS                       R27 R26 K46 ["Padding"]
      199 GETIMPORT                        R27 K61 [UDim2.new]
      201 LOADN                            R28 1
      202 LOADN                            R29 0
      203 LOADN                            R30 0
      204 LOADN                            R31 0
      205 CALL                             R27 4 1
      206 SETTABLEKS                       R27 R26 K47 ["Size"]
      208 GETIMPORT                        R27 K63 [Enum.VerticalAlignment.Top]
      210 SETTABLEKS                       R27 R26 K48 ["VerticalAlignment"]
      212 DUPTABLE                         R27 K66 [{"Title", "RightFrame"}]
      213 GETUPVAL                         R28 7
      214 GETTABLEKS                       R28 R28 K42 ["createElement"]
      216 GETUPVAL                         R29 9
      217 DUPTABLE                         R30 K73 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Size"], ["Text"], ["TextColor"], ["TextSize"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      218 GETIMPORT                        R31 K51 [Enum.AutomaticSize.Y]
      220 SETTABLEKS                       R31 R30 K43 ["AutomaticSize"]
      222 GETIMPORT                        R31 K61 [UDim2.new]
      224 LOADN                            R32 0
      225 GETUPVAL                         R33 6
      226 GETTABLEKS                       R33 R33 K74 ["TITLE_GUTTER_WIDTH"]
      228 LOADN                            R34 0
      229 LOADN                            R35 0
      230 CALL                             R31 4 1
      231 SETTABLEKS                       R31 R30 K47 ["Size"]
      233 SETTABLEKS                       R16 R30 K29 ["Text"]
      235 GETTABLEKS                       R31 R4 K75 ["titleTextColor"]
      237 SETTABLEKS                       R31 R30 K68 ["TextColor"]
      239 GETUPVAL                         R31 10
      240 GETTABLEKS                       R31 R31 K76 ["FONT_SIZE_TITLE"]
      242 SETTABLEKS                       R31 R30 K69 ["TextSize"]
      244 GETIMPORT                        R31 K77 [Enum.TextXAlignment.Left]
      246 SETTABLEKS                       R31 R30 K72 ["TextXAlignment"]
      248 CALL                             R28 2 1
      249 SETTABLEKS                       R28 R27 K64 ["Title"]
      251 GETUPVAL                         R28 7
      252 GETTABLEKS                       R28 R28 K42 ["createElement"]
      254 GETUPVAL                         R29 8
      255 DUPTABLE                         R30 K80 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"] = 2, ["Size"], ["Spacing"] = 2}]
      256 GETIMPORT                        R31 K51 [Enum.AutomaticSize.Y]
      258 SETTABLEKS                       R31 R30 K43 ["AutomaticSize"]
      260 GETIMPORT                        R31 K53 [Enum.HorizontalAlignment.Left]
      262 SETTABLEKS                       R31 R30 K44 ["HorizontalAlignment"]
      264 GETIMPORT                        R31 K82 [Enum.FillDirection.Vertical]
      266 SETTABLEKS                       R31 R30 K45 ["Layout"]
      268 GETIMPORT                        R31 K61 [UDim2.new]
      270 LOADN                            R32 1
      271 GETUPVAL                         R34 6
      272 GETTABLEKS                       R34 R34 K74 ["TITLE_GUTTER_WIDTH"]
      274 MINUS                            R33 R34
      275 LOADN                            R34 0
      276 LOADN                            R35 0
      277 CALL                             R31 4 1
      278 SETTABLEKS                       R31 R30 K47 ["Size"]
      280 DUPTABLE                         R31 K84 [{"ContentContainer"}]
      281 GETUPVAL                         R32 7
      282 GETTABLEKS                       R32 R32 K42 ["createElement"]
      284 GETUPVAL                         R33 8
      285 DUPTABLE                         R34 K86 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Size"], ["Spacing"] = 10}]
      286 GETIMPORT                        R35 K51 [Enum.AutomaticSize.Y]
      288 SETTABLEKS                       R35 R34 K43 ["AutomaticSize"]
      290 GETIMPORT                        R35 K53 [Enum.HorizontalAlignment.Left]
      292 SETTABLEKS                       R35 R34 K44 ["HorizontalAlignment"]
      294 GETIMPORT                        R35 K82 [Enum.FillDirection.Vertical]
      296 SETTABLEKS                       R35 R34 K45 ["Layout"]
      298 NAMECALL                         R35 R22 K87 ["getNextOrder"]
      300 CALL                             R35 1 1
      301 SETTABLEKS                       R35 R34 K7 ["LayoutOrder"]
      303 GETIMPORT                        R35 K61 [UDim2.new]
      305 LOADN                            R36 1
      306 LOADN                            R37 0
      307 LOADN                            R38 0
      308 LOADN                            R39 0
      309 CALL                             R35 4 1
      310 SETTABLEKS                       R35 R34 K47 ["Size"]
      312 DUPTABLE                         R35 K90 [{"SubtitleLabel", "RadioButtonList"}]
      313 GETUPVAL                         R36 7
      314 GETTABLEKS                       R36 R36 K42 ["createElement"]
      316 GETUPVAL                         R37 9
      317 DUPTABLE                         R38 K73 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Size"], ["Text"], ["TextColor"], ["TextSize"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      318 GETIMPORT                        R39 K51 [Enum.AutomaticSize.Y]
      320 SETTABLEKS                       R39 R38 K43 ["AutomaticSize"]
      322 GETIMPORT                        R39 K61 [UDim2.new]
      324 LOADN                            R40 1
      325 LOADN                            R41 0
      326 LOADN                            R42 0
      327 LOADN                            R43 0
      328 CALL                             R39 4 1
      329 SETTABLEKS                       R39 R38 K47 ["Size"]
      331 SETTABLEKS                       R12 R38 K29 ["Text"]
      333 GETTABLEKS                       R39 R3 K91 ["brightText"]
      335 SETTABLEKS                       R39 R38 K68 ["TextColor"]
      337 GETUPVAL                         R39 10
      338 GETTABLEKS                       R39 R39 K92 ["FONT_SIZE_ASSET_CONFIG_INPUT"]
      340 SETTABLEKS                       R39 R38 K69 ["TextSize"]
      342 GETIMPORT                        R39 K77 [Enum.TextXAlignment.Left]
      344 SETTABLEKS                       R39 R38 K72 ["TextXAlignment"]
      346 CALL                             R36 2 1
      347 SETTABLEKS                       R36 R35 K88 ["SubtitleLabel"]
      349 GETUPVAL                         R36 7
      350 GETTABLEKS                       R36 R36 K42 ["createElement"]
      352 GETUPVAL                         R37 11
      353 DUPTABLE                         R38 K98 [{["AutomaticSize"], ["Buttons"], ["FillDirection"], ["LayoutOrder"] = 2, ["OnClick"], ["CurrentSelectedKey"], ["SelectedKey"], ["Style"] = "AssetConfigRadioButtonList", ["TextWrapped"] = True, ["TextXAlignment"], ["VerticalAlignment"]}]
      354 GETIMPORT                        R39 K51 [Enum.AutomaticSize.Y]
      356 SETTABLEKS                       R39 R38 K43 ["AutomaticSize"]
      358 NEWTABLE                         R39 0 2
      360 DUPTABLE                         R40 K103 [{"Key", "Text", "Description", "LinkProps", "Disabled"}]
      361 GETUPVAL                         R41 6
      362 GETTABLEKS                       R41 R41 K39 ["SHARING_KEYS"]
      364 GETTABLEKS                       R41 R41 K41 ["Private"]
      366 SETTABLEKS                       R41 R40 K99 ["Key"]
      368 SETTABLEKS                       R14 R40 K29 ["Text"]
      370 SETTABLEKS                       R17 R40 K100 ["Description"]
      372 SETTABLEKS                       R20 R40 K101 ["LinkProps"]
      374 NOT                              R41 R7
      375 SETTABLEKS                       R41 R40 K102 ["Disabled"]
      377 DUPTABLE                         R41 K103 [{"Key", "Text", "Description", "LinkProps", "Disabled"}]
      378 GETUPVAL                         R42 6
      379 GETTABLEKS                       R42 R42 K39 ["SHARING_KEYS"]
      381 GETTABLEKS                       R42 R42 K40 ["Public"]
      383 SETTABLEKS                       R42 R41 K99 ["Key"]
      385 SETTABLEKS                       R15 R41 K29 ["Text"]
      387 SETTABLEKS                       R18 R41 K100 ["Description"]
      389 SETTABLEKS                       R19 R41 K101 ["LinkProps"]
      391 NOT                              R42 R21
      392 SETTABLEKS                       R42 R41 K102 ["Disabled"]
      394 SETLIST                          R39 R40 2 [1]
      396 SETTABLEKS                       R39 R38 K93 ["Buttons"]
      398 GETIMPORT                        R39 K82 [Enum.FillDirection.Vertical]
      400 SETTABLEKS                       R39 R38 K54 ["FillDirection"]
      402 SETTABLEKS                       R10 R38 K30 ["OnClick"]
      404 SETTABLEKS                       R23 R38 K94 ["CurrentSelectedKey"]
      406 SETTABLEKS                       R23 R38 K95 ["SelectedKey"]
      408 GETIMPORT                        R39 K77 [Enum.TextXAlignment.Left]
      410 SETTABLEKS                       R39 R38 K72 ["TextXAlignment"]
      412 GETIMPORT                        R39 K63 [Enum.VerticalAlignment.Top]
      414 SETTABLEKS                       R39 R38 K48 ["VerticalAlignment"]
      416 CALL                             R36 2 1
      417 SETTABLEKS                       R36 R35 K89 ["RadioButtonList"]
      419 CALL                             R32 3 1
      420 SETTABLEKS                       R32 R31 K83 ["ContentContainer"]
      422 CALL                             R28 3 1
      423 SETTABLEKS                       R28 R27 K65 ["RightFrame"]
      425 CALL                             R24 3 -1
      426 RETURN                           R24 -1

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
