PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R3 R5 K0 ["CREATE_URL"]
        4 GETUPVAL                         R4 2
        5 CONCAT                           R2 R3 R4
        6 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R3 R5 K0 ["CREATE_URL"]
        4 GETUPVAL                         R4 2
        5 CONCAT                           R2 R3 R4
        6 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Stylizer"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["Localization"]
        9 NAMECALL                         R2 R2 K1 ["use"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K3 ["new"]
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
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R5 R6 K13 ["createElement"]
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
       52 GETUPVAL                         R10 2
       53 GETTABLEKS                       R9 R10 K13 ["createElement"]
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
       74 GETTABLEKS                       R13 R1 K36 ["toggle"]
       76 GETTABLEKS                       R12 R13 K37 ["verticalListPadding"]
       78 SETTABLEKS                       R12 R11 K27 ["Spacing"]
       80 DUPTABLE                         R12 K40 [{"ToggleButton", "DescriptionTextPane"}]
       81 GETUPVAL                         R14 2
       82 GETTABLEKS                       R13 R14 K13 ["createElement"]
       84 GETUPVAL                         R14 5
       85 DUPTABLE                         R15 K44 [{"LayoutOrder", "OnClick", "Selected", "Size"}]
       86 NAMECALL                         R16 R3 K31 ["getNextOrder"]
       88 CALL                             R16 1 1
       89 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
       91 GETTABLEKS                       R16 R0 K45 ["onDataConsentToggleClick"]
       93 SETTABLEKS                       R16 R15 K41 ["OnClick"]
       95 GETTABLEKS                       R16 R0 K46 ["dataSharingToggled"]
       97 SETTABLEKS                       R16 R15 K42 ["Selected"]
       99 GETIMPORT                        R16 K48 [UDim2.new]
      101 LOADN                            R17 0
      102 GETTABLEKS                       R19 R1 K36 ["toggle"]
      104 GETTABLEKS                       R18 R19 K49 ["buttonWidth"]
      106 LOADN                            R19 0
      107 GETTABLEKS                       R21 R1 K36 ["toggle"]
      109 GETTABLEKS                       R20 R21 K50 ["buttonHeight"]
      111 CALL                             R16 4 1
      112 SETTABLEKS                       R16 R15 K43 ["Size"]
      114 CALL                             R13 2 1
      115 SETTABLEKS                       R13 R12 K38 ["ToggleButton"]
      117 GETUPVAL                         R14 2
      118 GETTABLEKS                       R13 R14 K13 ["createElement"]
      120 GETUPVAL                         R14 4
      121 DUPTABLE                         R15 K51 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
      122 GETIMPORT                        R16 K30 [Enum.AutomaticSize.Y]
      124 SETTABLEKS                       R16 R15 K14 ["AutomaticSize"]
      126 GETIMPORT                        R16 K35 [Enum.HorizontalAlignment.Left]
      128 SETTABLEKS                       R16 R15 K26 ["HorizontalAlignment"]
      130 GETIMPORT                        R16 K34 [Enum.FillDirection.Vertical]
      132 SETTABLEKS                       R16 R15 K25 ["Layout"]
      134 NAMECALL                         R16 R3 K31 ["getNextOrder"]
      136 CALL                             R16 1 1
      137 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
      139 GETTABLEKS                       R17 R1 K36 ["toggle"]
      141 GETTABLEKS                       R16 R17 K52 ["verticalTextSpacing"]
      143 SETTABLEKS                       R16 R15 K27 ["Spacing"]
      145 DUPTABLE                         R16 K55 [{"DescriptionText", "LinkText"}]
      146 GETUPVAL                         R18 2
      147 GETTABLEKS                       R17 R18 K13 ["createElement"]
      149 GETUPVAL                         R18 6
      150 GETUPVAL                         R20 7
      151 GETTABLEKS                       R19 R20 K56 ["join"]
      153 DUPTABLE                         R20 K60 [{"Text", "AutomaticSize", "LayoutOrder", "MaxWidth", "TextWrapped"}]
      154 LOADK                            R23 K20 ["AssetConfig"]
      155 LOADK                            R24 K61 ["ShareDataDescriptionText"]
      156 NAMECALL                         R21 R2 K22 ["getText"]
      158 CALL                             R21 3 1
      159 SETTABLEKS                       R21 R20 K57 ["Text"]
      161 GETIMPORT                        R21 K19 [Enum.AutomaticSize.XY]
      163 SETTABLEKS                       R21 R20 K14 ["AutomaticSize"]
      165 NAMECALL                         R21 R3 K31 ["getNextOrder"]
      167 CALL                             R21 1 1
      168 SETTABLEKS                       R21 R20 K15 ["LayoutOrder"]
      170 GETTABLEKS                       R21 R1 K58 ["MaxWidth"]
      172 SETTABLEKS                       R21 R20 K58 ["MaxWidth"]
      174 LOADB                            R21 1
      175 SETTABLEKS                       R21 R20 K59 ["TextWrapped"]
      177 MOVE                             R21 R4
      178 CALL                             R19 2 -1
      179 CALL                             R17 -1 1
      180 SETTABLEKS                       R17 R16 K53 ["DescriptionText"]
      182 GETUPVAL                         R18 2
      183 GETTABLEKS                       R17 R18 K13 ["createElement"]
      185 GETUPVAL                         R18 8
      186 DUPTABLE                         R19 K64 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "LinkMap", "Text", "TextProps", "TextWrapped"}]
      187 GETIMPORT                        R20 K30 [Enum.AutomaticSize.Y]
      189 SETTABLEKS                       R20 R19 K14 ["AutomaticSize"]
      191 GETIMPORT                        R20 K35 [Enum.HorizontalAlignment.Left]
      193 SETTABLEKS                       R20 R19 K26 ["HorizontalAlignment"]
      195 NAMECALL                         R20 R3 K31 ["getNextOrder"]
      197 CALL                             R20 1 1
      198 SETTABLEKS                       R20 R19 K15 ["LayoutOrder"]
      200 NEWTABLE                         R20 2 0
      202 DUPTABLE                         R21 K66 [{"LinkText", "LinkCallback"}]
      203 LOADK                            R24 K20 ["AssetConfig"]
      204 LOADK                            R25 K67 ["ShareDataDescriptionLinkPreferences"]
      205 NAMECALL                         R22 R2 K22 ["getText"]
      207 CALL                             R22 3 1
      208 SETTABLEKS                       R22 R21 K54 ["LinkText"]
      210 DUPCLOSURE                       R22 K68 [PROTO_0]
      211 CAPTURE                          UPVAL U9
      212 CAPTURE                          UPVAL U10
      213 CAPTURE                          UPVAL U11
      214 SETTABLEKS                       R22 R21 K65 ["LinkCallback"]
      216 SETTABLEKS                       R21 R20 K69 ["[link1]"]
      218 DUPTABLE                         R21 K66 [{"LinkText", "LinkCallback"}]
      219 LOADK                            R24 K20 ["AssetConfig"]
      220 LOADK                            R25 K70 ["ShareDataDescriptionLinkLearnMore"]
      221 NAMECALL                         R22 R2 K22 ["getText"]
      223 CALL                             R22 3 1
      224 SETTABLEKS                       R22 R21 K54 ["LinkText"]
      226 DUPCLOSURE                       R22 K71 [PROTO_1]
      227 CAPTURE                          UPVAL U9
      228 CAPTURE                          UPVAL U10
      229 CAPTURE                          UPVAL U12
      230 SETTABLEKS                       R22 R21 K65 ["LinkCallback"]
      232 SETTABLEKS                       R21 R20 K72 ["[link2]"]
      234 SETTABLEKS                       R20 R19 K62 ["LinkMap"]
      236 LOADK                            R22 K20 ["AssetConfig"]
      237 LOADK                            R23 K73 ["ShareDataDescriptionLinks"]
      238 NAMECALL                         R20 R2 K22 ["getText"]
      240 CALL                             R20 3 1
      241 SETTABLEKS                       R20 R19 K57 ["Text"]
      243 SETTABLEKS                       R4 R19 K63 ["TextProps"]
      245 LOADB                            R20 1
      246 SETTABLEKS                       R20 R19 K59 ["TextWrapped"]
      248 CALL                             R17 2 1
      249 SETTABLEKS                       R17 R16 K54 ["LinkText"]
      251 CALL                             R13 3 1
      252 SETTABLEKS                       R13 R12 K39 ["DescriptionTextPane"]
      254 CALL                             R9 3 1
      255 SETTABLEKS                       R9 R8 K23 ["DescriptionPane"]
      257 CALL                             R5 3 -1
      258 RETURN                           R5 -1

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
       24 GETTABLEKS                       R6 R0 K10 ["Src"]
       26 GETTABLEKS                       R5 R6 K11 ["Util"]
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R5 K12 ["Constants"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R5 K13 ["AssetConfigConstants"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K6 [require]
       40 GETTABLEKS                       R11 R0 K14 ["Libs"]
       42 GETTABLEKS                       R10 R11 K15 ["Http"]
       44 GETTABLEKS                       R9 R10 K16 ["Url"]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R9 R3 K17 ["ContextServices"]
       49 GETIMPORT                        R10 K19 [game]
       51 LOADK                            R12 K20 ["BrowserService"]
       52 NAMECALL                         R10 R10 K21 ["GetService"]
       54 CALL                             R10 2 1
       55 GETTABLEKS                       R11 R3 K22 ["UI"]
       57 GETTABLEKS                       R12 R11 K23 ["Pane"]
       59 GETTABLEKS                       R13 R11 K24 ["TextLabel"]
       61 GETTABLEKS                       R14 R11 K25 ["TextWithLinks"]
       63 GETTABLEKS                       R15 R11 K26 ["ToggleButton"]
       65 GETTABLEKS                       R17 R3 K11 ["Util"]
       67 GETTABLEKS                       R16 R17 K27 ["LayoutOrderIterator"]
       69 GETTABLEKS                       R18 R3 K11 ["Util"]
       71 GETTABLEKS                       R17 R18 K28 ["StyleModifier"]
       73 GETTABLEKS                       R20 R0 K10 ["Src"]
       75 GETTABLEKS                       R19 R20 K29 ["Components"]
       77 GETTABLEKS                       R18 R19 K30 ["AssetConfiguration"]
       79 GETIMPORT                        R19 K6 [require]
       81 GETTABLEKS                       R20 R18 K31 ["ConfigSectionWrapper"]
       83 CALL                             R19 1 1
       84 GETIMPORT                        R20 K19 [game]
       86 LOADK                            R22 K32 ["DataSharing_PreferencesUrlSuffix"]
       87 LOADK                            R23 K33 ["settings/data-collection?tab=avatar-items"]
       88 NAMECALL                         R20 R20 K34 ["DefineFastString"]
       90 CALL                             R20 3 1
       91 GETIMPORT                        R21 K19 [game]
       93 LOADK                            R23 K35 ["DataSharing_TermsUrlSuffix"]
       94 LOADK                            R24 K36 ["docs/ai-data-sharing"]
       95 NAMECALL                         R21 R21 K34 ["DefineFastString"]
       97 CALL                             R21 3 1
       98 DUPCLOSURE                       R22 K37 [PROTO_2]
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R19
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R20
      111 CAPTURE                          VAL R21
      112 RETURN                           R22 1
