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
       16 DUPTABLE                         R4 K10 [{["Font"], ["Style"] = "Body", ["TextSize"] = 16, ["TextXAlignment"]}]
       17 GETTABLEKS                       R5 R1 K4 ["Font"]
       19 SETTABLEKS                       R5 R4 K4 ["Font"]
       21 GETIMPORT                        R5 K13 [Enum.TextXAlignment.Left]
       23 SETTABLEKS                       R5 R4 K9 ["TextXAlignment"]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K14 ["createElement"]
       28 GETUPVAL                         R6 3
       29 DUPTABLE                         R7 K18 [{"AutomaticSize", "LayoutOrder", "Title"}]
       30 GETIMPORT                        R8 K20 [Enum.AutomaticSize.XY]
       32 SETTABLEKS                       R8 R7 K15 ["AutomaticSize"]
       34 GETTABLEKS                       R8 R0 K16 ["LayoutOrder"]
       36 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
       38 LOADK                            R10 K21 ["AssetConfig"]
       39 LOADK                            R11 K22 ["ShareDataHeader"]
       40 NAMECALL                         R8 R2 K23 ["getText"]
       42 CALL                             R8 3 1
       43 SETTABLEKS                       R8 R7 K17 ["Title"]
       45 DUPTABLE                         R8 K25 [{"DescriptionPane"}]
       46 GETUPVAL                         R9 2
       47 GETTABLEKS                       R9 R9 K14 ["createElement"]
       49 GETUPVAL                         R10 4
       50 DUPTABLE                         R11 K29 [{"AutomaticSize", "LayoutOrder", "Layout", "HorizontalAlignment", "Spacing"}]
       51 GETIMPORT                        R12 K31 [Enum.AutomaticSize.Y]
       53 SETTABLEKS                       R12 R11 K15 ["AutomaticSize"]
       55 NAMECALL                         R12 R3 K32 ["getNextOrder"]
       57 CALL                             R12 1 1
       58 SETTABLEKS                       R12 R11 K16 ["LayoutOrder"]
       60 GETIMPORT                        R12 K35 [Enum.FillDirection.Vertical]
       62 SETTABLEKS                       R12 R11 K26 ["Layout"]
       64 GETIMPORT                        R12 K36 [Enum.HorizontalAlignment.Left]
       66 SETTABLEKS                       R12 R11 K27 ["HorizontalAlignment"]
       68 GETTABLEKS                       R12 R1 K37 ["toggle"]
       70 GETTABLEKS                       R12 R12 K38 ["verticalListPadding"]
       72 SETTABLEKS                       R12 R11 K28 ["Spacing"]
       74 DUPTABLE                         R12 K41 [{"ToggleButton", "DescriptionTextPane"}]
       75 GETUPVAL                         R14 5
       76 CALL                             R14 0 1
       77 JUMPIFNOT                        R14 ; [+31]
       78 GETUPVAL                         R13 2
       79 GETTABLEKS                       R13 R13 K14 ["createElement"]
       81 GETUPVAL                         R14 6
       82 GETTABLEKS                       R14 R14 K42 ["Toggle"]
       84 DUPTABLE                         R15 K50 [{["label"] = "", ["isChecked"], ["onActivated"], ["LayoutOrder"], ["isDisabled"] = False, ["size"]}]
       85 GETTABLEKS                       R16 R0 K51 ["dataSharingToggled"]
       87 SETTABLEKS                       R16 R15 K45 ["isChecked"]
       89 GETTABLEKS                       R16 R0 K52 ["onDataConsentToggleClick"]
       91 SETTABLEKS                       R16 R15 K46 ["onActivated"]
       93 NAMECALL                         R16 R3 K32 ["getNextOrder"]
       95 CALL                             R16 1 1
       96 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
       98 GETUPVAL                         R16 6
       99 GETTABLEKS                       R16 R16 K53 ["Enums"]
      101 GETTABLEKS                       R16 R16 K54 ["InputSize"]
      103 GETTABLEKS                       R16 R16 K55 ["Medium"]
      105 SETTABLEKS                       R16 R15 K49 ["size"]
      107 CALL                             R13 2 1
      108 JUMP                             ; [+34]
      109 GETUPVAL                         R13 2
      110 GETTABLEKS                       R13 R13 K14 ["createElement"]
      112 GETUPVAL                         R14 7
      113 DUPTABLE                         R15 K59 [{"LayoutOrder", "OnClick", "Selected", "Size"}]
      114 NAMECALL                         R16 R3 K32 ["getNextOrder"]
      116 CALL                             R16 1 1
      117 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
      119 GETTABLEKS                       R16 R0 K52 ["onDataConsentToggleClick"]
      121 SETTABLEKS                       R16 R15 K56 ["OnClick"]
      123 GETTABLEKS                       R16 R0 K51 ["dataSharingToggled"]
      125 SETTABLEKS                       R16 R15 K57 ["Selected"]
      127 GETIMPORT                        R16 K61 [UDim2.new]
      129 LOADN                            R17 0
      130 GETTABLEKS                       R18 R1 K37 ["toggle"]
      132 GETTABLEKS                       R18 R18 K62 ["buttonWidth"]
      134 LOADN                            R19 0
      135 GETTABLEKS                       R20 R1 K37 ["toggle"]
      137 GETTABLEKS                       R20 R20 K63 ["buttonHeight"]
      139 CALL                             R16 4 1
      140 SETTABLEKS                       R16 R15 K58 ["Size"]
      142 CALL                             R13 2 1
      143 SETTABLEKS                       R13 R12 K39 ["ToggleButton"]
      145 GETUPVAL                         R13 2
      146 GETTABLEKS                       R13 R13 K14 ["createElement"]
      148 GETUPVAL                         R14 4
      149 DUPTABLE                         R15 K64 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
      150 GETIMPORT                        R16 K31 [Enum.AutomaticSize.Y]
      152 SETTABLEKS                       R16 R15 K15 ["AutomaticSize"]
      154 GETIMPORT                        R16 K36 [Enum.HorizontalAlignment.Left]
      156 SETTABLEKS                       R16 R15 K27 ["HorizontalAlignment"]
      158 GETIMPORT                        R16 K35 [Enum.FillDirection.Vertical]
      160 SETTABLEKS                       R16 R15 K26 ["Layout"]
      162 NAMECALL                         R16 R3 K32 ["getNextOrder"]
      164 CALL                             R16 1 1
      165 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
      167 GETTABLEKS                       R16 R1 K37 ["toggle"]
      169 GETTABLEKS                       R16 R16 K65 ["verticalTextSpacing"]
      171 SETTABLEKS                       R16 R15 K28 ["Spacing"]
      173 DUPTABLE                         R16 K68 [{"DescriptionText", "LinkText"}]
      174 GETUPVAL                         R17 2
      175 GETTABLEKS                       R17 R17 K14 ["createElement"]
      177 GETUPVAL                         R18 8
      178 GETUPVAL                         R19 9
      179 GETTABLEKS                       R19 R19 K69 ["join"]
      181 DUPTABLE                         R20 K74 [{["Text"], ["AutomaticSize"], ["LayoutOrder"], ["MaxWidth"], ["TextWrapped"] = True}]
      182 LOADK                            R23 K21 ["AssetConfig"]
      183 LOADK                            R24 K75 ["ShareDataDescriptionText"]
      184 NAMECALL                         R21 R2 K23 ["getText"]
      186 CALL                             R21 3 1
      187 SETTABLEKS                       R21 R20 K70 ["Text"]
      189 GETIMPORT                        R21 K20 [Enum.AutomaticSize.XY]
      191 SETTABLEKS                       R21 R20 K15 ["AutomaticSize"]
      193 NAMECALL                         R21 R3 K32 ["getNextOrder"]
      195 CALL                             R21 1 1
      196 SETTABLEKS                       R21 R20 K16 ["LayoutOrder"]
      198 GETTABLEKS                       R21 R1 K71 ["MaxWidth"]
      200 SETTABLEKS                       R21 R20 K71 ["MaxWidth"]
      202 MOVE                             R21 R4
      203 CALL                             R19 2 -1
      204 CALL                             R17 -1 1
      205 SETTABLEKS                       R17 R16 K66 ["DescriptionText"]
      207 GETUPVAL                         R17 2
      208 GETTABLEKS                       R17 R17 K14 ["createElement"]
      210 GETUPVAL                         R18 10
      211 DUPTABLE                         R19 K78 [{["AutomaticSize"], ["HorizontalAlignment"], ["LayoutOrder"], ["LinkMap"], ["Text"], ["TextProps"], ["TextWrapped"] = True}]
      212 GETIMPORT                        R20 K31 [Enum.AutomaticSize.Y]
      214 SETTABLEKS                       R20 R19 K15 ["AutomaticSize"]
      216 GETIMPORT                        R20 K36 [Enum.HorizontalAlignment.Left]
      218 SETTABLEKS                       R20 R19 K27 ["HorizontalAlignment"]
      220 NAMECALL                         R20 R3 K32 ["getNextOrder"]
      222 CALL                             R20 1 1
      223 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      225 NEWTABLE                         R20 2 0
      227 DUPTABLE                         R21 K80 [{"LinkText", "LinkCallback"}]
      228 LOADK                            R24 K21 ["AssetConfig"]
      229 LOADK                            R25 K81 ["ShareDataDescriptionLinkPreferences"]
      230 NAMECALL                         R22 R2 K23 ["getText"]
      232 CALL                             R22 3 1
      233 SETTABLEKS                       R22 R21 K67 ["LinkText"]
      235 DUPCLOSURE                       R22 K82 [PROTO_0]
      236 CAPTURE                          UPVAL U11
      237 CAPTURE                          UPVAL U12
      238 CAPTURE                          UPVAL U13
      239 SETTABLEKS                       R22 R21 K79 ["LinkCallback"]
      241 SETTABLEKS                       R21 R20 K83 ["[link1]"]
      243 DUPTABLE                         R21 K80 [{"LinkText", "LinkCallback"}]
      244 LOADK                            R24 K21 ["AssetConfig"]
      245 LOADK                            R25 K84 ["ShareDataDescriptionLinkLearnMore"]
      246 NAMECALL                         R22 R2 K23 ["getText"]
      248 CALL                             R22 3 1
      249 SETTABLEKS                       R22 R21 K67 ["LinkText"]
      251 DUPCLOSURE                       R22 K85 [PROTO_1]
      252 CAPTURE                          UPVAL U11
      253 CAPTURE                          UPVAL U12
      254 CAPTURE                          UPVAL U14
      255 SETTABLEKS                       R22 R21 K79 ["LinkCallback"]
      257 SETTABLEKS                       R21 R20 K86 ["[link2]"]
      259 SETTABLEKS                       R20 R19 K76 ["LinkMap"]
      261 LOADK                            R22 K21 ["AssetConfig"]
      262 LOADK                            R23 K87 ["ShareDataDescriptionLinks"]
      263 NAMECALL                         R20 R2 K23 ["getText"]
      265 CALL                             R20 3 1
      266 SETTABLEKS                       R20 R19 K70 ["Text"]
      268 SETTABLEKS                       R4 R19 K77 ["TextProps"]
      270 CALL                             R17 2 1
      271 SETTABLEKS                       R17 R16 K67 ["LinkText"]
      273 CALL                             R13 3 1
      274 SETTABLEKS                       R13 R12 K40 ["DescriptionTextPane"]
      276 CALL                             R9 3 1
      277 SETTABLEKS                       R9 R8 K24 ["DescriptionPane"]
      279 CALL                             R5 3 -1
      280 RETURN                           R5 -1

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
