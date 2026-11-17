PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["getCreatorQueryParam"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["groupId"]
        9 GETUPVAL                         R2 3
       10 CALL                             R2 0 -1
       11 CALL                             R0 -1 1
       12 JUMP                             ; [+1]
       13 LOADK                            R0 K2 [""]
       14 GETUPVAL                         R1 4
       15 GETUPVAL                         R4 5
       16 GETTABLEKS                       R4 R4 K3 ["CREATE_URL"]
       18 GETUPVAL                         R5 6
       19 MOVE                             R6 R0
       20 CONCAT                           R3 R4 R6
       21 NAMECALL                         R1 R1 K4 ["OpenBrowserWindow"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

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
       63 NEWCLOSURE                       R11 P1
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U5
       68 CAPTURE                          UPVAL U6
       69 CAPTURE                          UPVAL U7
       70 CAPTURE                          UPVAL U8
       71 NEWTABLE                         R12 0 1
       73 GETTABLEKS                       R13 R0 K23 ["groupId"]
       75 SETLIST                          R12 R13 1 [1]
       77 CALL                             R10 2 1
       78 GETUPVAL                         R11 2
       79 GETTABLEKS                       R11 R11 K24 ["createElement"]
       81 GETUPVAL                         R12 9
       82 DUPTABLE                         R13 K28 [{"AutomaticSize", "LayoutOrder", "Title"}]
       83 GETIMPORT                        R14 K30 [Enum.AutomaticSize.XY]
       85 SETTABLEKS                       R14 R13 K25 ["AutomaticSize"]
       87 GETTABLEKS                       R14 R0 K26 ["LayoutOrder"]
       89 SETTABLEKS                       R14 R13 K26 ["LayoutOrder"]
       91 LOADK                            R16 K31 ["AssetConfig"]
       92 LOADK                            R17 K32 ["PublishToMarketplaceHeader"]
       93 NAMECALL                         R14 R2 K33 ["getText"]
       95 CALL                             R14 3 1
       96 SETTABLEKS                       R14 R13 K27 ["Title"]
       98 DUPTABLE                         R14 K35 [{"DescriptionPane"}]
       99 GETUPVAL                         R15 2
      100 GETTABLEKS                       R15 R15 K24 ["createElement"]
      102 GETUPVAL                         R16 10
      103 DUPTABLE                         R17 K40 [{"AutomaticSize", "LayoutOrder", "Layout", "HorizontalAlignment", "Padding", "Spacing"}]
      104 GETIMPORT                        R18 K42 [Enum.AutomaticSize.Y]
      106 SETTABLEKS                       R18 R17 K25 ["AutomaticSize"]
      108 NAMECALL                         R18 R3 K43 ["getNextOrder"]
      110 CALL                             R18 1 1
      111 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      113 GETIMPORT                        R18 K46 [Enum.FillDirection.Vertical]
      115 SETTABLEKS                       R18 R17 K36 ["Layout"]
      117 GETIMPORT                        R18 K47 [Enum.HorizontalAlignment.Left]
      119 SETTABLEKS                       R18 R17 K37 ["HorizontalAlignment"]
      121 DUPTABLE                         R18 K50 [{["Bottom"] = 24}]
      122 SETTABLEKS                       R18 R17 K38 ["Padding"]
      124 GETTABLEKS                       R18 R1 K19 ["toggle"]
      126 GETTABLEKS                       R18 R18 K51 ["verticalListPadding"]
      128 SETTABLEKS                       R18 R17 K39 ["Spacing"]
      130 DUPTABLE                         R18 K54 [{"ToggleButton", "DescriptionTextPane"}]
      131 GETUPVAL                         R19 2
      132 GETTABLEKS                       R19 R19 K24 ["createElement"]
      134 GETUPVAL                         R20 11
      135 GETTABLEKS                       R20 R20 K55 ["Toggle"]
      137 DUPTABLE                         R21 K62 [{["label"] = "", ["isChecked"], ["onActivated"], ["LayoutOrder"], ["isDisabled"], ["size"]}]
      138 SETTABLEKS                       R8 R21 K58 ["isChecked"]
      140 SETTABLEKS                       R9 R21 K59 ["onActivated"]
      142 NAMECALL                         R22 R3 K43 ["getNextOrder"]
      144 CALL                             R22 1 1
      145 SETTABLEKS                       R22 R21 K26 ["LayoutOrder"]
      147 NOT                              R22 R4
      148 SETTABLEKS                       R22 R21 K60 ["isDisabled"]
      150 GETUPVAL                         R22 11
      151 GETTABLEKS                       R22 R22 K63 ["Enums"]
      153 GETTABLEKS                       R22 R22 K64 ["InputSize"]
      155 GETTABLEKS                       R22 R22 K65 ["Medium"]
      157 SETTABLEKS                       R22 R21 K61 ["size"]
      159 CALL                             R19 2 1
      160 SETTABLEKS                       R19 R18 K52 ["ToggleButton"]
      162 GETUPVAL                         R19 2
      163 GETTABLEKS                       R19 R19 K24 ["createElement"]
      165 GETUPVAL                         R20 10
      166 DUPTABLE                         R21 K66 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
      167 GETIMPORT                        R22 K42 [Enum.AutomaticSize.Y]
      169 SETTABLEKS                       R22 R21 K25 ["AutomaticSize"]
      171 GETIMPORT                        R22 K47 [Enum.HorizontalAlignment.Left]
      173 SETTABLEKS                       R22 R21 K37 ["HorizontalAlignment"]
      175 GETIMPORT                        R22 K46 [Enum.FillDirection.Vertical]
      177 SETTABLEKS                       R22 R21 K36 ["Layout"]
      179 NAMECALL                         R22 R3 K43 ["getNextOrder"]
      181 CALL                             R22 1 1
      182 SETTABLEKS                       R22 R21 K26 ["LayoutOrder"]
      184 GETTABLEKS                       R22 R1 K19 ["toggle"]
      186 GETTABLEKS                       R22 R22 K20 ["verticalTextSpacing"]
      188 SETTABLEKS                       R22 R21 K39 ["Spacing"]
      190 DUPTABLE                         R22 K70 [{"FeeText", "DescriptionText", "LinkText"}]
      191 GETTABLEKS                       R24 R0 K71 ["publishingFee"]
      193 JUMPIFEQKNIL                     R24 ; [+35]
      195 GETUPVAL                         R23 2
      196 GETTABLEKS                       R23 R23 K24 ["createElement"]
      198 GETUPVAL                         R24 11
      199 GETTABLEKS                       R24 R24 K72 ["Text"]
      201 DUPTABLE                         R25 K78 [{["Text"], ["tag"] = "auto-xy text-align-x-left content-muted", ["fontStyle"], ["LayoutOrder"], ["TextWrapped"] = True}]
      202 LOADK                            R28 K31 ["AssetConfig"]
      203 LOADK                            R29 K79 ["PublishToMarketplaceFee"]
      204 DUPTABLE                         R30 K81 [{"price"}]
      205 GETUPVAL                         R32 12
      206 GETTABLEKS                       R34 R0 K71 ["publishingFee"]
      208 FASTCALL1                        TOSTRING R34 ; [+2]
      209 GETIMPORT                        R33 K83 [tostring]
      211 CALL                             R33 1 1
      212 CONCAT                           R31 R32 R33
      213 SETTABLEKS                       R31 R30 K80 ["price"]
      215 NAMECALL                         R26 R2 K33 ["getText"]
      217 CALL                             R26 4 1
      218 SETTABLEKS                       R26 R25 K72 ["Text"]
      220 SETTABLEKS                       R7 R25 K75 ["fontStyle"]
      222 NAMECALL                         R26 R3 K43 ["getNextOrder"]
      224 CALL                             R26 1 1
      225 SETTABLEKS                       R26 R25 K26 ["LayoutOrder"]
      227 CALL                             R23 2 1
      228 JUMP                             ; [+1]
      229 LOADNIL                          R23
      230 SETTABLEKS                       R23 R22 K67 ["FeeText"]
      232 GETUPVAL                         R23 2
      233 GETTABLEKS                       R23 R23 K24 ["createElement"]
      235 GETUPVAL                         R24 11
      236 GETTABLEKS                       R24 R24 K72 ["Text"]
      238 DUPTABLE                         R25 K78 [{["Text"], ["tag"] = "auto-xy text-align-x-left content-muted", ["fontStyle"], ["LayoutOrder"], ["TextWrapped"] = True}]
      239 LOADK                            R28 K31 ["AssetConfig"]
      240 LOADK                            R29 K84 ["PublishToMarketplaceDescription"]
      241 NAMECALL                         R26 R2 K33 ["getText"]
      243 CALL                             R26 3 1
      244 SETTABLEKS                       R26 R25 K72 ["Text"]
      246 SETTABLEKS                       R7 R25 K75 ["fontStyle"]
      248 NAMECALL                         R26 R3 K43 ["getNextOrder"]
      250 CALL                             R26 1 1
      251 SETTABLEKS                       R26 R25 K26 ["LayoutOrder"]
      253 CALL                             R23 2 1
      254 SETTABLEKS                       R23 R22 K68 ["DescriptionText"]
      256 GETUPVAL                         R23 2
      257 GETTABLEKS                       R23 R23 K24 ["createElement"]
      259 GETUPVAL                         R24 13
      260 DUPTABLE                         R25 K87 [{["AutomaticSize"], ["HorizontalAlignment"], ["LayoutOrder"], ["LinkMap"], ["Text"], ["TextProps"], ["TextWrapped"] = True}]
      261 GETIMPORT                        R26 K42 [Enum.AutomaticSize.Y]
      263 SETTABLEKS                       R26 R25 K25 ["AutomaticSize"]
      265 GETIMPORT                        R26 K47 [Enum.HorizontalAlignment.Left]
      267 SETTABLEKS                       R26 R25 K37 ["HorizontalAlignment"]
      269 NAMECALL                         R26 R3 K43 ["getNextOrder"]
      271 CALL                             R26 1 1
      272 SETTABLEKS                       R26 R25 K26 ["LayoutOrder"]
      274 NEWTABLE                         R26 1 0
      276 DUPTABLE                         R27 K89 [{"LinkText", "LinkCallback"}]
      277 LOADK                            R30 K31 ["AssetConfig"]
      278 LOADK                            R31 K90 ["PublishToMarketplaceCreatorDashboardLink"]
      279 NAMECALL                         R28 R2 K33 ["getText"]
      281 CALL                             R28 3 1
      282 SETTABLEKS                       R28 R27 K69 ["LinkText"]
      284 SETTABLEKS                       R10 R27 K88 ["LinkCallback"]
      286 SETTABLEKS                       R27 R26 K91 ["[link1]"]
      288 SETTABLEKS                       R26 R25 K85 ["LinkMap"]
      290 LOADK                            R28 K31 ["AssetConfig"]
      291 LOADK                            R29 K92 ["PublishToMarketplaceManageSettings"]
      292 NAMECALL                         R26 R2 K33 ["getText"]
      294 CALL                             R26 3 1
      295 SETTABLEKS                       R26 R25 K72 ["Text"]
      297 SETTABLEKS                       R6 R25 K86 ["TextProps"]
      299 CALL                             R23 2 1
      300 SETTABLEKS                       R23 R22 K69 ["LinkText"]
      302 CALL                             R19 3 1
      303 SETTABLEKS                       R19 R18 K53 ["DescriptionTextPane"]
      305 CALL                             R15 3 1
      306 SETTABLEKS                       R15 R14 K34 ["DescriptionPane"]
      308 CALL                             R11 3 -1
      309 RETURN                           R11 -1

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
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Src"]
       37 GETTABLEKS                       R7 R7 K14 ["Util"]
       39 GETTABLEKS                       R7 R7 K15 ["getUserId"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K13 ["Src"]
       46 GETTABLEKS                       R8 R8 K14 ["Util"]
       48 GETTABLEKS                       R8 R8 K16 ["AssetConfigUtil"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K13 ["Src"]
       55 GETTABLEKS                       R9 R9 K17 ["Flags"]
       57 GETTABLEKS                       R9 R9 K18 ["getFFlagToolboxPublishOnApproval"]
       59 CALL                             R8 1 1
       60 GETTABLEKS                       R9 R2 K19 ["ContextServices"]
       62 GETIMPORT                        R10 K21 [game]
       64 LOADK                            R12 K22 ["BrowserService"]
       65 NAMECALL                         R10 R10 K23 ["GetService"]
       67 CALL                             R10 2 1
       68 GETTABLEKS                       R11 R2 K24 ["UI"]
       70 GETTABLEKS                       R12 R11 K25 ["Pane"]
       72 GETTABLEKS                       R13 R11 K26 ["TextWithLinks"]
       74 GETTABLEKS                       R14 R2 K14 ["Util"]
       76 GETTABLEKS                       R14 R14 K27 ["LayoutOrderIterator"]
       78 GETTABLEKS                       R15 R0 K13 ["Src"]
       80 GETTABLEKS                       R15 R15 K28 ["Components"]
       82 GETTABLEKS                       R15 R15 K29 ["AssetConfiguration"]
       84 GETIMPORT                        R16 K6 [require]
       86 GETTABLEKS                       R17 R15 K30 ["ConfigSectionWrapper"]
       88 CALL                             R16 1 1
       89 GETIMPORT                        R17 K33 [utf8.char]
       91 LOADK                            R18 K34 [57346]
       92 CALL                             R17 1 1
       93 GETIMPORT                        R18 K21 [game]
       95 LOADK                            R20 K35 ["PublishOnApproval_SettingsUrlSuffix"]
       96 LOADK                            R21 K36 ["dashboard/creations?activeTab=AvatarItems&publishSettings=1"]
       97 NAMECALL                         R18 R18 K37 ["DefineFastString"]
       99 CALL                             R18 3 1
      100 DUPCLOSURE                       R19 K38 [PROTO_2]
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R18
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R17
      114 CAPTURE                          VAL R13
      115 RETURN                           R19 1
