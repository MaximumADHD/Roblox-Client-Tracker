PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["CREATE_URL"]
        4 GETUPVAL                         R4 2
        5 CONCAT                           R2 R3 R4
        6 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["CREATE_URL"]
        4 GETUPVAL                         R4 2
        5 CONCAT                           R2 R3 R4
        6 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Stylizer"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Localization"]
        9 NAMECALL                         R2 R2 K1 ["use"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["new"]
       15 CALL                             R3 0 1
       16 DUPTABLE                         R4 K8 [{"Font", "Style", "TextSize", "TextXAlignment"}]
       17 GETTABLEKS                       R5 R1 K4 ["Font"]
       19 SETTABLEKS                       R5 R4 K4 ["Font"]
       21 LOADK                            R5 K9 ["Body"]
       22 SETTABLEKS                       R5 R4 K5 ["Style"]
       24 LOADN                            R5 16
       25 SETTABLEKS                       R5 R4 K6 ["TextSize"]
       27 GETIMPORT                        R5 K12 [Enum.TextXAlignment.Left]
       29 SETTABLEKS                       R5 R4 K7 ["TextXAlignment"]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K13 ["createElement"]
       34 GETUPVAL                         R6 3
       35 DUPTABLE                         R7 K17 [{"AutomaticSize", "LayoutOrder", "Title"}]
       36 GETIMPORT                        R8 K19 [Enum.AutomaticSize.XY]
       38 SETTABLEKS                       R8 R7 K14 ["AutomaticSize"]
       40 GETTABLEKS                       R8 R0 K15 ["LayoutOrder"]
       42 SETTABLEKS                       R8 R7 K15 ["LayoutOrder"]
       44 LOADK                            R10 K20 ["AssetConfig"]
       45 LOADK                            R11 K21 ["ShareDataHeader"]
       46 NAMECALL                         R8 R2 K22 ["getText"]
       48 CALL                             R8 3 1
       49 SETTABLEKS                       R8 R7 K16 ["Title"]
       51 DUPTABLE                         R8 K24 [{"DescriptionPane"}]
       52 GETUPVAL                         R9 2
       53 GETTABLEKS                       R9 R9 K13 ["createElement"]
       55 GETUPVAL                         R10 4
       56 DUPTABLE                         R11 K28 [{"AutomaticSize", "LayoutOrder", "Layout", "HorizontalAlignment", "Spacing"}]
       57 GETIMPORT                        R12 K30 [Enum.AutomaticSize.Y]
       59 SETTABLEKS                       R12 R11 K14 ["AutomaticSize"]
       61 NAMECALL                         R12 R3 K31 ["getNextOrder"]
       63 CALL                             R12 1 1
       64 SETTABLEKS                       R12 R11 K15 ["LayoutOrder"]
       66 GETIMPORT                        R12 K34 [Enum.FillDirection.Vertical]
       68 SETTABLEKS                       R12 R11 K25 ["Layout"]
       70 GETIMPORT                        R12 K35 [Enum.HorizontalAlignment.Left]
       72 SETTABLEKS                       R12 R11 K26 ["HorizontalAlignment"]
       74 GETTABLEKS                       R12 R1 K36 ["toggle"]
       76 GETTABLEKS                       R12 R12 K37 ["verticalListPadding"]
       78 SETTABLEKS                       R12 R11 K27 ["Spacing"]
       80 DUPTABLE                         R12 K40 [{"ToggleButton", "DescriptionTextPane"}]
       81 GETUPVAL                         R14 5
       82 CALL                             R14 0 1
       83 JUMPIFNOT                        R14 ; [+37]
       84 GETUPVAL                         R13 2
       85 GETTABLEKS                       R13 R13 K13 ["createElement"]
       87 GETUPVAL                         R14 6
       88 GETTABLEKS                       R14 R14 K41 ["Toggle"]
       90 DUPTABLE                         R15 K47 [{"label", "isChecked", "onActivated", "LayoutOrder", "isDisabled", "size"}]
       91 LOADK                            R16 K48 [""]
       92 SETTABLEKS                       R16 R15 K42 ["label"]
       94 GETTABLEKS                       R16 R0 K49 ["dataSharingToggled"]
       96 SETTABLEKS                       R16 R15 K43 ["isChecked"]
       98 GETTABLEKS                       R16 R0 K50 ["onDataConsentToggleClick"]
      100 SETTABLEKS                       R16 R15 K44 ["onActivated"]
      102 NAMECALL                         R16 R3 K31 ["getNextOrder"]
      104 CALL                             R16 1 1
      105 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
      107 LOADB                            R16 0
      108 SETTABLEKS                       R16 R15 K45 ["isDisabled"]
      110 GETUPVAL                         R16 6
      111 GETTABLEKS                       R16 R16 K51 ["Enums"]
      113 GETTABLEKS                       R16 R16 K52 ["InputSize"]
      115 GETTABLEKS                       R16 R16 K53 ["Medium"]
      117 SETTABLEKS                       R16 R15 K46 ["size"]
      119 CALL                             R13 2 1
      120 JUMP                             ; [+34]
      121 GETUPVAL                         R13 2
      122 GETTABLEKS                       R13 R13 K13 ["createElement"]
      124 GETUPVAL                         R14 7
      125 DUPTABLE                         R15 K57 [{"LayoutOrder", "OnClick", "Selected", "Size"}]
      126 NAMECALL                         R16 R3 K31 ["getNextOrder"]
      128 CALL                             R16 1 1
      129 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
      131 GETTABLEKS                       R16 R0 K50 ["onDataConsentToggleClick"]
      133 SETTABLEKS                       R16 R15 K54 ["OnClick"]
      135 GETTABLEKS                       R16 R0 K49 ["dataSharingToggled"]
      137 SETTABLEKS                       R16 R15 K55 ["Selected"]
      139 GETIMPORT                        R16 K59 [UDim2.new]
      141 LOADN                            R17 0
      142 GETTABLEKS                       R18 R1 K36 ["toggle"]
      144 GETTABLEKS                       R18 R18 K60 ["buttonWidth"]
      146 LOADN                            R19 0
      147 GETTABLEKS                       R20 R1 K36 ["toggle"]
      149 GETTABLEKS                       R20 R20 K61 ["buttonHeight"]
      151 CALL                             R16 4 1
      152 SETTABLEKS                       R16 R15 K56 ["Size"]
      154 CALL                             R13 2 1
      155 SETTABLEKS                       R13 R12 K38 ["ToggleButton"]
      157 GETUPVAL                         R13 2
      158 GETTABLEKS                       R13 R13 K13 ["createElement"]
      160 GETUPVAL                         R14 4
      161 DUPTABLE                         R15 K62 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
      162 GETIMPORT                        R16 K30 [Enum.AutomaticSize.Y]
      164 SETTABLEKS                       R16 R15 K14 ["AutomaticSize"]
      166 GETIMPORT                        R16 K35 [Enum.HorizontalAlignment.Left]
      168 SETTABLEKS                       R16 R15 K26 ["HorizontalAlignment"]
      170 GETIMPORT                        R16 K34 [Enum.FillDirection.Vertical]
      172 SETTABLEKS                       R16 R15 K25 ["Layout"]
      174 NAMECALL                         R16 R3 K31 ["getNextOrder"]
      176 CALL                             R16 1 1
      177 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
      179 GETTABLEKS                       R16 R1 K36 ["toggle"]
      181 GETTABLEKS                       R16 R16 K63 ["verticalTextSpacing"]
      183 SETTABLEKS                       R16 R15 K27 ["Spacing"]
      185 DUPTABLE                         R16 K66 [{"DescriptionText", "LinkText"}]
      186 GETUPVAL                         R17 2
      187 GETTABLEKS                       R17 R17 K13 ["createElement"]
      189 GETUPVAL                         R18 8
      190 GETUPVAL                         R19 9
      191 GETTABLEKS                       R19 R19 K67 ["join"]
      193 DUPTABLE                         R20 K71 [{"Text", "AutomaticSize", "LayoutOrder", "MaxWidth", "TextWrapped"}]
      194 LOADK                            R23 K20 ["AssetConfig"]
      195 LOADK                            R24 K72 ["ShareDataDescriptionText"]
      196 NAMECALL                         R21 R2 K22 ["getText"]
      198 CALL                             R21 3 1
      199 SETTABLEKS                       R21 R20 K68 ["Text"]
      201 GETIMPORT                        R21 K19 [Enum.AutomaticSize.XY]
      203 SETTABLEKS                       R21 R20 K14 ["AutomaticSize"]
      205 NAMECALL                         R21 R3 K31 ["getNextOrder"]
      207 CALL                             R21 1 1
      208 SETTABLEKS                       R21 R20 K15 ["LayoutOrder"]
      210 GETTABLEKS                       R21 R1 K69 ["MaxWidth"]
      212 SETTABLEKS                       R21 R20 K69 ["MaxWidth"]
      214 LOADB                            R21 1
      215 SETTABLEKS                       R21 R20 K70 ["TextWrapped"]
      217 MOVE                             R21 R4
      218 CALL                             R19 2 -1
      219 CALL                             R17 -1 1
      220 SETTABLEKS                       R17 R16 K64 ["DescriptionText"]
      222 GETUPVAL                         R17 2
      223 GETTABLEKS                       R17 R17 K13 ["createElement"]
      225 GETUPVAL                         R18 10
      226 DUPTABLE                         R19 K75 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "LinkMap", "Text", "TextProps", "TextWrapped"}]
      227 GETIMPORT                        R20 K30 [Enum.AutomaticSize.Y]
      229 SETTABLEKS                       R20 R19 K14 ["AutomaticSize"]
      231 GETIMPORT                        R20 K35 [Enum.HorizontalAlignment.Left]
      233 SETTABLEKS                       R20 R19 K26 ["HorizontalAlignment"]
      235 NAMECALL                         R20 R3 K31 ["getNextOrder"]
      237 CALL                             R20 1 1
      238 SETTABLEKS                       R20 R19 K15 ["LayoutOrder"]
      240 NEWTABLE                         R20 2 0
      242 DUPTABLE                         R21 K77 [{"LinkText", "LinkCallback"}]
      243 LOADK                            R24 K20 ["AssetConfig"]
      244 LOADK                            R25 K78 ["ShareDataDescriptionLinkPreferences"]
      245 NAMECALL                         R22 R2 K22 ["getText"]
      247 CALL                             R22 3 1
      248 SETTABLEKS                       R22 R21 K65 ["LinkText"]
      250 DUPCLOSURE                       R22 K79 [PROTO_0]
      251 CAPTURE                          UPVAL U11
      252 CAPTURE                          UPVAL U12
      253 CAPTURE                          UPVAL U13
      254 SETTABLEKS                       R22 R21 K76 ["LinkCallback"]
      256 SETTABLEKS                       R21 R20 K80 ["[link1]"]
      258 DUPTABLE                         R21 K77 [{"LinkText", "LinkCallback"}]
      259 LOADK                            R24 K20 ["AssetConfig"]
      260 LOADK                            R25 K81 ["ShareDataDescriptionLinkLearnMore"]
      261 NAMECALL                         R22 R2 K22 ["getText"]
      263 CALL                             R22 3 1
      264 SETTABLEKS                       R22 R21 K65 ["LinkText"]
      266 DUPCLOSURE                       R22 K82 [PROTO_1]
      267 CAPTURE                          UPVAL U11
      268 CAPTURE                          UPVAL U12
      269 CAPTURE                          UPVAL U14
      270 SETTABLEKS                       R22 R21 K76 ["LinkCallback"]
      272 SETTABLEKS                       R21 R20 K83 ["[link2]"]
      274 SETTABLEKS                       R20 R19 K73 ["LinkMap"]
      276 LOADK                            R22 K20 ["AssetConfig"]
      277 LOADK                            R23 K84 ["ShareDataDescriptionLinks"]
      278 NAMECALL                         R20 R2 K22 ["getText"]
      280 CALL                             R20 3 1
      281 SETTABLEKS                       R20 R19 K68 ["Text"]
      283 SETTABLEKS                       R4 R19 K74 ["TextProps"]
      285 LOADB                            R20 1
      286 SETTABLEKS                       R20 R19 K70 ["TextWrapped"]
      288 CALL                             R17 2 1
      289 SETTABLEKS                       R17 R16 K65 ["LinkText"]
      291 CALL                             R13 3 1
      292 SETTABLEKS                       R13 R12 K39 ["DescriptionTextPane"]
      294 CALL                             R9 3 1
      295 SETTABLEKS                       R9 R8 K23 ["DescriptionPane"]
      297 CALL                             R5 3 -1
      298 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Foundation"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Src"]
       33 GETTABLEKS                       R7 R7 K12 ["Flags"]
       35 GETTABLEKS                       R7 R7 K13 ["getFFlagToolboxAssetConfigFoundationMigration"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R0 K11 ["Src"]
       40 GETTABLEKS                       R7 R7 K14 ["Util"]
       42 GETIMPORT                        R8 K6 [require]
       44 GETTABLEKS                       R9 R7 K15 ["Constants"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R10 R7 K16 ["AssetConfigConstants"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K6 [require]
       54 GETTABLEKS                       R11 R0 K17 ["Libs"]
       56 GETTABLEKS                       R11 R11 K18 ["Http"]
       58 GETTABLEKS                       R11 R11 K19 ["Url"]
       60 CALL                             R10 1 1
       61 GETTABLEKS                       R11 R3 K20 ["ContextServices"]
       63 GETIMPORT                        R12 K22 [game]
       65 LOADK                            R14 K23 ["BrowserService"]
       66 NAMECALL                         R12 R12 K24 ["GetService"]
       68 CALL                             R12 2 1
       69 GETTABLEKS                       R13 R3 K25 ["UI"]
       71 GETTABLEKS                       R14 R13 K26 ["Pane"]
       73 GETTABLEKS                       R15 R13 K27 ["TextLabel"]
       75 GETTABLEKS                       R16 R13 K28 ["TextWithLinks"]
       77 GETTABLEKS                       R17 R13 K29 ["ToggleButton"]
       79 GETTABLEKS                       R18 R3 K14 ["Util"]
       81 GETTABLEKS                       R18 R18 K30 ["LayoutOrderIterator"]
       83 GETTABLEKS                       R19 R3 K14 ["Util"]
       85 GETTABLEKS                       R19 R19 K31 ["StyleModifier"]
       87 GETTABLEKS                       R20 R0 K11 ["Src"]
       89 GETTABLEKS                       R20 R20 K32 ["Components"]
       91 GETTABLEKS                       R20 R20 K33 ["AssetConfiguration"]
       93 GETIMPORT                        R21 K6 [require]
       95 GETTABLEKS                       R22 R20 K34 ["ConfigSectionWrapper"]
       97 CALL                             R21 1 1
       98 GETIMPORT                        R22 K22 [game]
      100 LOADK                            R24 K35 ["DataSharing_PreferencesUrlSuffix"]
      101 LOADK                            R25 K36 ["settings/data-collection?tab=avatar-items"]
      102 NAMECALL                         R22 R22 K37 ["DefineFastString"]
      104 CALL                             R22 3 1
      105 GETIMPORT                        R23 K22 [game]
      107 LOADK                            R25 K38 ["DataSharing_TermsUrlSuffix"]
      108 LOADK                            R26 K39 ["docs/ai-data-sharing"]
      109 NAMECALL                         R23 R23 K37 ["DefineFastString"]
      111 CALL                             R23 3 1
      112 DUPCLOSURE                       R24 K40 [PROTO_2]
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R18
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R21
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R22
      127 CAPTURE                          VAL R23
      128 RETURN                           R24 1
