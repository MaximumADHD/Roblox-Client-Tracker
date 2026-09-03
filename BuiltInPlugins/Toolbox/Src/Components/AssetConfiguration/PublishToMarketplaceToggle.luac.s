PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

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
       16 GETTABLEKS                       R4 R0 K4 ["canOptIn"]
       18 GETTABLEKS                       R5 R0 K5 ["onPublishOnApprovalToggleClick"]
       20 DUPTABLE                         R6 K12 [{["Font"], ["Style"] = "Body", ["TextSize"] = 16, ["TextXAlignment"]}]
       21 GETTABLEKS                       R7 R1 K6 ["Font"]
       23 SETTABLEKS                       R7 R6 K6 ["Font"]
       25 GETIMPORT                        R7 K15 [Enum.TextXAlignment.Left]
       27 SETTABLEKS                       R7 R6 K11 ["TextXAlignment"]
       29 DUPTABLE                         R7 K18 [{["Font"], ["FontSize"] = 16, ["LineHeight"]}]
       30 GETTABLEKS                       R8 R1 K6 ["Font"]
       32 SETTABLEKS                       R8 R7 K6 ["Font"]
       34 LOADN                            R9 1
       35 GETTABLEKS                       R11 R1 K19 ["toggle"]
       37 GETTABLEKS                       R11 R11 K20 ["verticalTextSpacing"]
       39 DIVK                             R10 R11 K10 [16]
       40 ADD                              R8 R9 R10
       41 SETTABLEKS                       R8 R7 K17 ["LineHeight"]
       43 MOVE                             R8 R4
       44 JUMPIFNOT                        R8 ; [+2]
       45 GETTABLEKS                       R8 R0 K21 ["publishOnApprovalToggled"]
       47 GETUPVAL                         R9 2
       48 GETTABLEKS                       R9 R9 K22 ["useCallback"]
       50 NEWCLOSURE                       R10 P0
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 NEWTABLE                         R11 0 2
       55 MOVE                             R12 R4
       56 MOVE                             R13 R5
       57 SETLIST                          R11 R12 2 [1]
       59 CALL                             R9 2 1
       60 GETUPVAL                         R10 2
       61 GETTABLEKS                       R10 R10 K22 ["useCallback"]
       63 DUPCLOSURE                       R11 K23 [PROTO_1]
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          UPVAL U5
       67 NEWTABLE                         R12 0 0
       69 CALL                             R10 2 1
       70 GETUPVAL                         R11 2
       71 GETTABLEKS                       R11 R11 K24 ["createElement"]
       73 GETUPVAL                         R12 6
       74 DUPTABLE                         R13 K28 [{"AutomaticSize", "LayoutOrder", "Title"}]
       75 GETIMPORT                        R14 K30 [Enum.AutomaticSize.XY]
       77 SETTABLEKS                       R14 R13 K25 ["AutomaticSize"]
       79 GETTABLEKS                       R14 R0 K26 ["LayoutOrder"]
       81 SETTABLEKS                       R14 R13 K26 ["LayoutOrder"]
       83 LOADK                            R16 K31 ["AssetConfig"]
       84 LOADK                            R17 K32 ["PublishToMarketplaceHeader"]
       85 NAMECALL                         R14 R2 K33 ["getText"]
       87 CALL                             R14 3 1
       88 SETTABLEKS                       R14 R13 K27 ["Title"]
       90 DUPTABLE                         R14 K35 [{"DescriptionPane"}]
       91 GETUPVAL                         R15 2
       92 GETTABLEKS                       R15 R15 K24 ["createElement"]
       94 GETUPVAL                         R16 7
       95 DUPTABLE                         R17 K40 [{"AutomaticSize", "LayoutOrder", "Layout", "HorizontalAlignment", "Padding", "Spacing"}]
       96 GETIMPORT                        R18 K42 [Enum.AutomaticSize.Y]
       98 SETTABLEKS                       R18 R17 K25 ["AutomaticSize"]
      100 NAMECALL                         R18 R3 K43 ["getNextOrder"]
      102 CALL                             R18 1 1
      103 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      105 GETIMPORT                        R18 K46 [Enum.FillDirection.Vertical]
      107 SETTABLEKS                       R18 R17 K36 ["Layout"]
      109 GETIMPORT                        R18 K47 [Enum.HorizontalAlignment.Left]
      111 SETTABLEKS                       R18 R17 K37 ["HorizontalAlignment"]
      113 DUPTABLE                         R18 K50 [{["Bottom"] = 24}]
      114 SETTABLEKS                       R18 R17 K38 ["Padding"]
      116 GETTABLEKS                       R18 R1 K19 ["toggle"]
      118 GETTABLEKS                       R18 R18 K51 ["verticalListPadding"]
      120 SETTABLEKS                       R18 R17 K39 ["Spacing"]
      122 DUPTABLE                         R18 K54 [{"ToggleButton", "DescriptionTextPane"}]
      123 GETUPVAL                         R19 2
      124 GETTABLEKS                       R19 R19 K24 ["createElement"]
      126 GETUPVAL                         R20 8
      127 GETTABLEKS                       R20 R20 K55 ["Toggle"]
      129 DUPTABLE                         R21 K62 [{["label"] = "", ["isChecked"], ["onActivated"], ["LayoutOrder"], ["isDisabled"], ["size"]}]
      130 SETTABLEKS                       R8 R21 K58 ["isChecked"]
      132 SETTABLEKS                       R9 R21 K59 ["onActivated"]
      134 NAMECALL                         R22 R3 K43 ["getNextOrder"]
      136 CALL                             R22 1 1
      137 SETTABLEKS                       R22 R21 K26 ["LayoutOrder"]
      139 NOT                              R22 R4
      140 SETTABLEKS                       R22 R21 K60 ["isDisabled"]
      142 GETUPVAL                         R22 8
      143 GETTABLEKS                       R22 R22 K63 ["Enums"]
      145 GETTABLEKS                       R22 R22 K64 ["InputSize"]
      147 GETTABLEKS                       R22 R22 K65 ["Medium"]
      149 SETTABLEKS                       R22 R21 K61 ["size"]
      151 CALL                             R19 2 1
      152 SETTABLEKS                       R19 R18 K52 ["ToggleButton"]
      154 GETUPVAL                         R19 2
      155 GETTABLEKS                       R19 R19 K24 ["createElement"]
      157 GETUPVAL                         R20 7
      158 DUPTABLE                         R21 K66 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
      159 GETIMPORT                        R22 K42 [Enum.AutomaticSize.Y]
      161 SETTABLEKS                       R22 R21 K25 ["AutomaticSize"]
      163 GETIMPORT                        R22 K47 [Enum.HorizontalAlignment.Left]
      165 SETTABLEKS                       R22 R21 K37 ["HorizontalAlignment"]
      167 GETIMPORT                        R22 K46 [Enum.FillDirection.Vertical]
      169 SETTABLEKS                       R22 R21 K36 ["Layout"]
      171 NAMECALL                         R22 R3 K43 ["getNextOrder"]
      173 CALL                             R22 1 1
      174 SETTABLEKS                       R22 R21 K26 ["LayoutOrder"]
      176 GETTABLEKS                       R22 R1 K19 ["toggle"]
      178 GETTABLEKS                       R22 R22 K20 ["verticalTextSpacing"]
      180 SETTABLEKS                       R22 R21 K39 ["Spacing"]
      182 DUPTABLE                         R22 K70 [{"FeeText", "DescriptionText", "LinkText"}]
      183 GETTABLEKS                       R24 R0 K71 ["publishingFee"]
      185 JUMPIFEQKNIL                     R24 ; [+35]
      187 GETUPVAL                         R23 2
      188 GETTABLEKS                       R23 R23 K24 ["createElement"]
      190 GETUPVAL                         R24 8
      191 GETTABLEKS                       R24 R24 K72 ["Text"]
      193 DUPTABLE                         R25 K78 [{["Text"], ["tag"] = "auto-xy text-align-x-left content-muted", ["fontStyle"], ["LayoutOrder"], ["TextWrapped"] = True}]
      194 LOADK                            R28 K31 ["AssetConfig"]
      195 LOADK                            R29 K79 ["PublishToMarketplaceFee"]
      196 DUPTABLE                         R30 K81 [{"price"}]
      197 GETUPVAL                         R32 9
      198 GETTABLEKS                       R34 R0 K71 ["publishingFee"]
      200 FASTCALL1                        TOSTRING R34 ; [+2]
      201 GETIMPORT                        R33 K83 [tostring]
      203 CALL                             R33 1 1
      204 CONCAT                           R31 R32 R33
      205 SETTABLEKS                       R31 R30 K80 ["price"]
      207 NAMECALL                         R26 R2 K33 ["getText"]
      209 CALL                             R26 4 1
      210 SETTABLEKS                       R26 R25 K72 ["Text"]
      212 SETTABLEKS                       R7 R25 K75 ["fontStyle"]
      214 NAMECALL                         R26 R3 K43 ["getNextOrder"]
      216 CALL                             R26 1 1
      217 SETTABLEKS                       R26 R25 K26 ["LayoutOrder"]
      219 CALL                             R23 2 1
      220 JUMP                             ; [+1]
      221 LOADNIL                          R23
      222 SETTABLEKS                       R23 R22 K67 ["FeeText"]
      224 GETUPVAL                         R23 2
      225 GETTABLEKS                       R23 R23 K24 ["createElement"]
      227 GETUPVAL                         R24 8
      228 GETTABLEKS                       R24 R24 K72 ["Text"]
      230 DUPTABLE                         R25 K78 [{["Text"], ["tag"] = "auto-xy text-align-x-left content-muted", ["fontStyle"], ["LayoutOrder"], ["TextWrapped"] = True}]
      231 LOADK                            R28 K31 ["AssetConfig"]
      232 LOADK                            R29 K84 ["PublishToMarketplaceDescription"]
      233 NAMECALL                         R26 R2 K33 ["getText"]
      235 CALL                             R26 3 1
      236 SETTABLEKS                       R26 R25 K72 ["Text"]
      238 SETTABLEKS                       R7 R25 K75 ["fontStyle"]
      240 NAMECALL                         R26 R3 K43 ["getNextOrder"]
      242 CALL                             R26 1 1
      243 SETTABLEKS                       R26 R25 K26 ["LayoutOrder"]
      245 CALL                             R23 2 1
      246 SETTABLEKS                       R23 R22 K68 ["DescriptionText"]
      248 GETUPVAL                         R23 2
      249 GETTABLEKS                       R23 R23 K24 ["createElement"]
      251 GETUPVAL                         R24 10
      252 DUPTABLE                         R25 K87 [{["AutomaticSize"], ["HorizontalAlignment"], ["LayoutOrder"], ["LinkMap"], ["Text"], ["TextProps"], ["TextWrapped"] = True}]
      253 GETIMPORT                        R26 K42 [Enum.AutomaticSize.Y]
      255 SETTABLEKS                       R26 R25 K25 ["AutomaticSize"]
      257 GETIMPORT                        R26 K47 [Enum.HorizontalAlignment.Left]
      259 SETTABLEKS                       R26 R25 K37 ["HorizontalAlignment"]
      261 NAMECALL                         R26 R3 K43 ["getNextOrder"]
      263 CALL                             R26 1 1
      264 SETTABLEKS                       R26 R25 K26 ["LayoutOrder"]
      266 NEWTABLE                         R26 1 0
      268 DUPTABLE                         R27 K89 [{"LinkText", "LinkCallback"}]
      269 LOADK                            R30 K31 ["AssetConfig"]
      270 LOADK                            R31 K90 ["PublishToMarketplaceCreatorDashboardLink"]
      271 NAMECALL                         R28 R2 K33 ["getText"]
      273 CALL                             R28 3 1
      274 SETTABLEKS                       R28 R27 K69 ["LinkText"]
      276 SETTABLEKS                       R10 R27 K88 ["LinkCallback"]
      278 SETTABLEKS                       R27 R26 K91 ["[link1]"]
      280 SETTABLEKS                       R26 R25 K85 ["LinkMap"]
      282 LOADK                            R28 K31 ["AssetConfig"]
      283 LOADK                            R29 K92 ["PublishToMarketplaceManageSettings"]
      284 NAMECALL                         R26 R2 K33 ["getText"]
      286 CALL                             R26 3 1
      287 SETTABLEKS                       R26 R25 K72 ["Text"]
      289 SETTABLEKS                       R6 R25 K86 ["TextProps"]
      291 CALL                             R23 2 1
      292 SETTABLEKS                       R23 R22 K69 ["LinkText"]
      294 CALL                             R19 3 1
      295 SETTABLEKS                       R19 R18 K53 ["DescriptionTextPane"]
      297 CALL                             R15 3 1
      298 SETTABLEKS                       R15 R14 K34 ["DescriptionPane"]
      300 CALL                             R11 3 -1
      301 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Foundation"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Libs"]
       28 GETTABLEKS                       R6 R6 K11 ["Http"]
       30 GETTABLEKS                       R6 R6 K12 ["Url"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R2 K13 ["ContextServices"]
       35 GETIMPORT                        R7 K15 [game]
       37 LOADK                            R9 K16 ["BrowserService"]
       38 NAMECALL                         R7 R7 K17 ["GetService"]
       40 CALL                             R7 2 1
       41 GETTABLEKS                       R8 R2 K18 ["UI"]
       43 GETTABLEKS                       R9 R8 K19 ["Pane"]
       45 GETTABLEKS                       R10 R8 K20 ["TextWithLinks"]
       47 GETTABLEKS                       R11 R2 K21 ["Util"]
       49 GETTABLEKS                       R11 R11 K22 ["LayoutOrderIterator"]
       51 GETTABLEKS                       R12 R0 K23 ["Src"]
       53 GETTABLEKS                       R12 R12 K24 ["Components"]
       55 GETTABLEKS                       R12 R12 K25 ["AssetConfiguration"]
       57 GETIMPORT                        R13 K6 [require]
       59 GETTABLEKS                       R14 R12 K26 ["ConfigSectionWrapper"]
       61 CALL                             R13 1 1
       62 GETIMPORT                        R14 K29 [utf8.char]
       64 LOADK                            R15 K30 [57346]
       65 CALL                             R14 1 1
       66 GETIMPORT                        R15 K15 [game]
       68 LOADK                            R17 K31 ["PublishOnApproval_SettingsUrlSuffix"]
       69 LOADK                            R18 K32 ["dashboard/creations?activeTab=AvatarItems&publishSettings=1"]
       70 NAMECALL                         R15 R15 K33 ["DefineFastString"]
       72 CALL                             R15 3 1
       73 DUPCLOSURE                       R16 K34 [PROTO_2]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R15
       80 CAPTURE                          VAL R13
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R10
       85 RETURN                           R16 1
