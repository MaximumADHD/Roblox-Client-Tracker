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
       75 GETUPVAL                         R13 2
       76 GETTABLEKS                       R13 R13 K14 ["createElement"]
       78 GETUPVAL                         R14 5
       79 GETTABLEKS                       R14 R14 K42 ["Toggle"]
       81 DUPTABLE                         R15 K50 [{["label"] = "", ["isChecked"], ["onActivated"], ["LayoutOrder"], ["isDisabled"] = False, ["size"]}]
       82 GETTABLEKS                       R16 R0 K51 ["dataSharingToggled"]
       84 SETTABLEKS                       R16 R15 K45 ["isChecked"]
       86 GETTABLEKS                       R16 R0 K52 ["onDataConsentToggleClick"]
       88 SETTABLEKS                       R16 R15 K46 ["onActivated"]
       90 NAMECALL                         R16 R3 K32 ["getNextOrder"]
       92 CALL                             R16 1 1
       93 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
       95 GETUPVAL                         R16 5
       96 GETTABLEKS                       R16 R16 K53 ["Enums"]
       98 GETTABLEKS                       R16 R16 K54 ["InputSize"]
      100 GETTABLEKS                       R16 R16 K55 ["Medium"]
      102 SETTABLEKS                       R16 R15 K49 ["size"]
      104 CALL                             R13 2 1
      105 SETTABLEKS                       R13 R12 K39 ["ToggleButton"]
      107 GETUPVAL                         R13 2
      108 GETTABLEKS                       R13 R13 K14 ["createElement"]
      110 GETUPVAL                         R14 4
      111 DUPTABLE                         R15 K56 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
      112 GETIMPORT                        R16 K31 [Enum.AutomaticSize.Y]
      114 SETTABLEKS                       R16 R15 K15 ["AutomaticSize"]
      116 GETIMPORT                        R16 K36 [Enum.HorizontalAlignment.Left]
      118 SETTABLEKS                       R16 R15 K27 ["HorizontalAlignment"]
      120 GETIMPORT                        R16 K35 [Enum.FillDirection.Vertical]
      122 SETTABLEKS                       R16 R15 K26 ["Layout"]
      124 NAMECALL                         R16 R3 K32 ["getNextOrder"]
      126 CALL                             R16 1 1
      127 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
      129 GETTABLEKS                       R16 R1 K37 ["toggle"]
      131 GETTABLEKS                       R16 R16 K57 ["verticalTextSpacing"]
      133 SETTABLEKS                       R16 R15 K28 ["Spacing"]
      135 DUPTABLE                         R16 K60 [{"DescriptionText", "LinkText"}]
      136 GETUPVAL                         R17 2
      137 GETTABLEKS                       R17 R17 K14 ["createElement"]
      139 GETUPVAL                         R18 6
      140 GETUPVAL                         R19 7
      141 GETTABLEKS                       R19 R19 K61 ["join"]
      143 DUPTABLE                         R20 K66 [{["Text"], ["AutomaticSize"], ["LayoutOrder"], ["MaxWidth"], ["TextWrapped"] = True}]
      144 LOADK                            R23 K21 ["AssetConfig"]
      145 LOADK                            R24 K67 ["ShareDataDescriptionText"]
      146 NAMECALL                         R21 R2 K23 ["getText"]
      148 CALL                             R21 3 1
      149 SETTABLEKS                       R21 R20 K62 ["Text"]
      151 GETIMPORT                        R21 K20 [Enum.AutomaticSize.XY]
      153 SETTABLEKS                       R21 R20 K15 ["AutomaticSize"]
      155 NAMECALL                         R21 R3 K32 ["getNextOrder"]
      157 CALL                             R21 1 1
      158 SETTABLEKS                       R21 R20 K16 ["LayoutOrder"]
      160 GETTABLEKS                       R21 R1 K63 ["MaxWidth"]
      162 SETTABLEKS                       R21 R20 K63 ["MaxWidth"]
      164 MOVE                             R21 R4
      165 CALL                             R19 2 -1
      166 CALL                             R17 -1 1
      167 SETTABLEKS                       R17 R16 K58 ["DescriptionText"]
      169 GETUPVAL                         R17 2
      170 GETTABLEKS                       R17 R17 K14 ["createElement"]
      172 GETUPVAL                         R18 8
      173 DUPTABLE                         R19 K70 [{["AutomaticSize"], ["HorizontalAlignment"], ["LayoutOrder"], ["LinkMap"], ["Text"], ["TextProps"], ["TextWrapped"] = True}]
      174 GETIMPORT                        R20 K31 [Enum.AutomaticSize.Y]
      176 SETTABLEKS                       R20 R19 K15 ["AutomaticSize"]
      178 GETIMPORT                        R20 K36 [Enum.HorizontalAlignment.Left]
      180 SETTABLEKS                       R20 R19 K27 ["HorizontalAlignment"]
      182 NAMECALL                         R20 R3 K32 ["getNextOrder"]
      184 CALL                             R20 1 1
      185 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      187 NEWTABLE                         R20 2 0
      189 DUPTABLE                         R21 K72 [{"LinkText", "LinkCallback"}]
      190 LOADK                            R24 K21 ["AssetConfig"]
      191 LOADK                            R25 K73 ["ShareDataDescriptionLinkPreferences"]
      192 NAMECALL                         R22 R2 K23 ["getText"]
      194 CALL                             R22 3 1
      195 SETTABLEKS                       R22 R21 K59 ["LinkText"]
      197 DUPCLOSURE                       R22 K74 [PROTO_0]
      198 CAPTURE                          UPVAL U9
      199 CAPTURE                          UPVAL U10
      200 CAPTURE                          UPVAL U11
      201 SETTABLEKS                       R22 R21 K71 ["LinkCallback"]
      203 SETTABLEKS                       R21 R20 K75 ["[link1]"]
      205 DUPTABLE                         R21 K72 [{"LinkText", "LinkCallback"}]
      206 LOADK                            R24 K21 ["AssetConfig"]
      207 LOADK                            R25 K76 ["ShareDataDescriptionLinkLearnMore"]
      208 NAMECALL                         R22 R2 K23 ["getText"]
      210 CALL                             R22 3 1
      211 SETTABLEKS                       R22 R21 K59 ["LinkText"]
      213 DUPCLOSURE                       R22 K77 [PROTO_1]
      214 CAPTURE                          UPVAL U9
      215 CAPTURE                          UPVAL U10
      216 CAPTURE                          UPVAL U12
      217 SETTABLEKS                       R22 R21 K71 ["LinkCallback"]
      219 SETTABLEKS                       R21 R20 K78 ["[link2]"]
      221 SETTABLEKS                       R20 R19 K68 ["LinkMap"]
      223 LOADK                            R22 K21 ["AssetConfig"]
      224 LOADK                            R23 K79 ["ShareDataDescriptionLinks"]
      225 NAMECALL                         R20 R2 K23 ["getText"]
      227 CALL                             R20 3 1
      228 SETTABLEKS                       R20 R19 K62 ["Text"]
      230 SETTABLEKS                       R4 R19 K69 ["TextProps"]
      232 CALL                             R17 2 1
      233 SETTABLEKS                       R17 R16 K59 ["LinkText"]
      235 CALL                             R13 3 1
      236 SETTABLEKS                       R13 R12 K40 ["DescriptionTextPane"]
      238 CALL                             R9 3 1
      239 SETTABLEKS                       R9 R8 K24 ["DescriptionPane"]
      241 CALL                             R5 3 -1
      242 RETURN                           R5 -1

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
       29 GETTABLEKS                       R6 R0 K11 ["Src"]
       31 GETTABLEKS                       R6 R6 K12 ["Util"]
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R6 K13 ["Constants"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K6 [require]
       40 GETTABLEKS                       R9 R6 K14 ["AssetConfigConstants"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R0 K15 ["Libs"]
       47 GETTABLEKS                       R10 R10 K16 ["Http"]
       49 GETTABLEKS                       R10 R10 K17 ["Url"]
       51 CALL                             R9 1 1
       52 GETTABLEKS                       R10 R3 K18 ["ContextServices"]
       54 GETIMPORT                        R11 K20 [game]
       56 LOADK                            R13 K21 ["BrowserService"]
       57 NAMECALL                         R11 R11 K22 ["GetService"]
       59 CALL                             R11 2 1
       60 GETTABLEKS                       R12 R3 K23 ["UI"]
       62 GETTABLEKS                       R13 R12 K24 ["Pane"]
       64 GETTABLEKS                       R14 R12 K25 ["TextLabel"]
       66 GETTABLEKS                       R15 R12 K26 ["TextWithLinks"]
       68 GETTABLEKS                       R16 R3 K12 ["Util"]
       70 GETTABLEKS                       R16 R16 K27 ["LayoutOrderIterator"]
       72 GETTABLEKS                       R17 R3 K12 ["Util"]
       74 GETTABLEKS                       R17 R17 K28 ["StyleModifier"]
       76 GETTABLEKS                       R18 R0 K11 ["Src"]
       78 GETTABLEKS                       R18 R18 K29 ["Components"]
       80 GETTABLEKS                       R18 R18 K30 ["AssetConfiguration"]
       82 GETIMPORT                        R19 K6 [require]
       84 GETTABLEKS                       R20 R18 K31 ["ConfigSectionWrapper"]
       86 CALL                             R19 1 1
       87 GETIMPORT                        R20 K20 [game]
       89 LOADK                            R22 K32 ["DataSharing_PreferencesUrlSuffix"]
       90 LOADK                            R23 K33 ["settings/data-collection?tab=avatar-items"]
       91 NAMECALL                         R20 R20 K34 ["DefineFastString"]
       93 CALL                             R20 3 1
       94 GETIMPORT                        R21 K20 [game]
       96 LOADK                            R23 K35 ["DataSharing_TermsUrlSuffix"]
       97 LOADK                            R24 K36 ["docs/ai-data-sharing"]
       98 NAMECALL                         R21 R21 K34 ["DefineFastString"]
      100 CALL                             R21 3 1
      101 DUPCLOSURE                       R22 K37 [PROTO_2]
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R16
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R19
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R20
      114 CAPTURE                          VAL R21
      115 RETURN                           R22 1
