PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getIconForCurrentTheme"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["IconEnums"]
        6 GETTABLEKS                       R5 R5 K2 ["BlankFolder"]
        8 CALL                             R4 1 1
        9 GETTABLEKS                       R5 R3 K3 ["Height"]
       11 DUPTABLE                         R6 K9 [{"text", "icon", "Screen", "children", "Parent"}]
       12 LOADK                            R9 K10 ["Folders"]
       13 GETTABLEKS                       R10 R0 K11 ["Path"]
       15 NAMECALL                         R7 R2 K12 ["getText"]
       17 CALL                             R7 3 1
       18 SETTABLEKS                       R7 R6 K4 ["text"]
       20 DUPTABLE                         R7 K16 [{"Image", "Size", "ImageColor3"}]
       21 SETTABLEKS                       R4 R7 K13 ["Image"]
       23 GETIMPORT                        R8 K19 [UDim2.new]
       25 LOADN                            R9 0
       26 MOVE                             R10 R5
       27 LOADN                            R11 0
       28 MOVE                             R12 R5
       29 CALL                             R8 4 1
       30 SETTABLEKS                       R8 R7 K14 ["Size"]
       32 GETTABLEKS                       R8 R3 K20 ["ColorIcon"]
       34 SETTABLEKS                       R8 R7 K15 ["ImageColor3"]
       36 SETTABLEKS                       R7 R6 K5 ["icon"]
       38 GETTABLEKS                       R7 R0 K11 ["Path"]
       40 SETTABLEKS                       R7 R6 K6 ["Screen"]
       42 NEWTABLE                         R7 0 0
       44 SETTABLEKS                       R7 R6 K7 ["children"]
       46 SETTABLEKS                       R1 R6 K8 ["Parent"]
       48 JUMPIFNOT                        R1 ; [+5]
       49 GETTABLEKS                       R7 R1 K7 ["children"]
       51 GETTABLEKS                       R8 R0 K21 ["LayoutOrder"]
       53 SETTABLE                         R6 R7 R8
       54 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K4 [{[1] = False, ["assetPreview"] = }]
        2 NAMECALL                         R0 R0 K5 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K1 [type]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+24]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["createElement"]
       12 GETUPVAL                         R3 1
       13 DUPTABLE                         R4 K7 [{"AssetPreviewData", "OnAssetPreviewClose", "AssetData"}]
       14 SETTABLEKS                       R1 R4 K4 ["AssetPreviewData"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K8 ["closeAssetPreview"]
       19 SETTABLEKS                       R5 R4 K5 ["OnAssetPreviewClose"]
       21 SETTABLEKS                       R0 R4 K6 ["AssetData"]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 2
       25 DUPTABLE                         R5 K12 [{["showAssetPreview"] = True, ["assetPreview"]}]
       26 SETTABLEKS                       R2 R5 K11 ["assetPreview"]
       28 NAMECALL                         R3 R3 K13 ["setState"]
       30 CALL                             R3 2 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K14 ["props"]
       35 GETTABLEKS                       R2 R2 K15 ["Localization"]
       37 LOADK                            R5 K16 ["MainView"]
       38 LOADK                            R6 K17 ["AssetPreviewError"]
       39 NAMECALL                         R3 R2 K18 ["getText"]
       41 CALL                             R3 3 1
       42 GETIMPORT                        R4 K20 [warn]
       44 MOVE                             R5 R3
       45 CALL                             R4 1 0
       46 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K7 [{[1] = "", ["showAssetPreview"] = False, ["showOverlay"] = False, ["showConfirmRemovePlaceDialog"] = False, ["fileExplorerData"]}]
        1 DUPTABLE                         R2 K12 [{["text"] = "Game 1", ["Screen"], ["children"]}]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K13 ["MAIN"]
        5 GETTABLEKS                       R3 R3 K14 ["Path"]
        7 SETTABLEKS                       R3 R2 K10 ["Screen"]
        9 NEWTABLE                         R3 0 0
       11 SETTABLEKS                       R3 R2 K11 ["children"]
       13 SETTABLEKS                       R2 R1 K6 ["fileExplorerData"]
       15 SETTABLEKS                       R1 R0 K15 ["state"]
       17 LOADNIL                          R1
       18 SETTABLEKS                       R1 R0 K16 ["gamePublishedConnection"]
       20 NEWCLOSURE                       R1 P0
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K17 ["openConfirmRemovePlaceDialog"]
       24 NEWCLOSURE                       R1 P1
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K18 ["closeConfirmRemovePlaceDialog"]
       28 NEWCLOSURE                       R1 P2
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R1 R0 K19 ["openOverlay"]
       32 NEWCLOSURE                       R1 P3
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R1 R0 K20 ["closeOverlay"]
       36 NEWCLOSURE                       R1 P4
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R1 R0 K21 ["closeAssetPreview"]
       40 NEWCLOSURE                       R1 P5
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R1 R0 K22 ["openAssetPreview"]
       46 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["dispatchGetUniverseConfiguration"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["API"]
       10 NAMECALL                         R1 R1 K3 ["get"]
       12 CALL                             R1 1 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["GameId"]
        4 JUMPIFEQKN                       R1 K3 [0] ; [+13]
        6 GETTABLEKS                       R1 R0 K4 ["props"]
        8 GETTABLEKS                       R1 R1 K5 ["dispatchGetUniverseConfiguration"]
       10 GETTABLEKS                       R2 R0 K4 ["props"]
       12 GETTABLEKS                       R2 R2 K6 ["API"]
       14 NAMECALL                         R2 R2 K7 ["get"]
       16 CALL                             R2 1 -1
       17 CALL                             R1 -1 0
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K8 ["GamePublishFinished"]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          VAL R0
       23 NAMECALL                         R1 R1 K9 ["connect"]
       25 CALL                             R1 2 1
       26 SETTABLEKS                       R1 R0 K10 ["gamePublishedConnection"]
       28 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["gamePublishedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["gamePublishedConnection"]
        5 NAMECALL                         R1 R1 K1 ["disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETIMPORT                        R3 K3 [pairs]
        6 GETUPVAL                         R4 0
        7 CALL                             R3 1 3
        8 FORGPREP_NEXT                    R3
        9 GETTABLEKS                       R8 R7 K4 ["Path"]
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R9 R9 K5 ["MAIN"]
       14 GETTABLEKS                       R9 R9 K4 ["Path"]
       16 JUMPIFEQ                         R8 R9 ; [+13]
       18 GETUPVAL                         R8 1
       19 MOVE                             R9 R7
       20 GETTABLEKS                       R10 R0 K6 ["state"]
       22 GETTABLEKS                       R10 R10 K7 ["fileExplorerData"]
       24 MOVE                             R11 R2
       25 GETTABLEKS                       R12 R1 K8 ["Stylizer"]
       27 GETTABLEKS                       R12 R12 K9 ["TreeViewItem"]
       29 CALL                             R8 4 0
       30 FORGLOOP                         R3 2 ; [-22]
       32 GETTABLEKS                       R3 R1 K10 ["API"]
       34 NAMECALL                         R3 R3 K11 ["get"]
       36 CALL                             R3 1 1
       37 GETTABLEKS                       R4 R1 K12 ["CurrentScreen"]
       39 GETTABLEKS                       R5 R0 K6 ["state"]
       41 GETTABLEKS                       R5 R5 K13 ["currentScreen"]
       43 JUMPIFEQ                         R4 R5 ; [+12]
       45 GETTABLEKS                       R5 R1 K14 ["dispatchOnScreenChange"]
       47 MOVE                             R6 R3
       48 MOVE                             R7 R4
       49 CALL                             R5 2 0
       50 DUPTABLE                         R7 K15 [{"currentScreen"}]
       51 SETTABLEKS                       R4 R7 K13 ["currentScreen"]
       53 NAMECALL                         R5 R0 K16 ["setState"]
       55 CALL                             R5 2 0
       56 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 LOADB                            R3 0
        3 GETIMPORT                        R4 K3 [Enum.StudioCloseMode.None]
        5 NAMECALL                         R0 R0 K4 ["ShowSaveOrPublishPlaceToRoblox"]
        7 CALL                             R0 4 0
        8 RETURN                           R0 0

PROTO_13:
        0 JUMPIFNOTEQKS                    R0 K0 ["Confirm"] ; [+6]
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K1 ["RemovePlaceConfirmed"]
        4 NAMECALL                         R1 R1 K2 ["Fire"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["closeConfirmRemovePlaceDialog"]
       10 CALL                             R1 0 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["closeConfirmRemovePlaceDialog"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["UniverseName"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["new"]
       11 CALL                             R5 0 1
       12 GETTABLEKS                       R6 R0 K5 ["state"]
       14 GETTABLEKS                       R6 R6 K6 ["fileExplorerData"]
       16 SETTABLEKS                       R4 R6 K7 ["text"]
       18 JUMPIFEQKS                       R4 K8 [""] ; [+5]
       20 GETUPVAL                         R6 1
       21 JUMPIF                           R6 ; [+2]
       22 LOADB                            R6 1
       23 SETUPVAL                         R6 1
       24 GETIMPORT                        R7 K10 [game]
       26 GETTABLEKS                       R7 R7 K11 ["GameId"]
       28 JUMPIFNOTEQKN                    R7 K12 [0] ; [+2]
       30 LOADB                            R6 0 +1
       31 LOADB                            R6 1
       32 LOADK                            R9 K13 ["MainView"]
       33 LOADK                            R10 K14 ["SaveText"]
       34 NAMECALL                         R7 R3 K15 ["getText"]
       36 CALL                             R7 3 1
       37 GETUPVAL                         R8 2
       38 MOVE                             R9 R7
       39 GETTABLEKS                       R10 R2 K16 ["FontSizeLarge"]
       41 GETTABLEKS                       R11 R2 K17 ["Font"]
       43 GETIMPORT                        R12 K19 [Vector2.new]
       45 GETTABLEKS                       R13 R2 K13 ["MainView"]
       47 GETTABLEKS                       R13 R13 K20 ["PublishText"]
       49 GETTABLEKS                       R13 R13 K21 ["Width"]
       51 LOADK                            R14 K22 [∞]
       52 CALL                             R12 2 -1
       53 CALL                             R8 -1 1
       54 LOADK                            R11 K13 ["MainView"]
       55 LOADK                            R12 K23 ["ButtonText"]
       56 NAMECALL                         R9 R3 K15 ["getText"]
       58 CALL                             R9 3 1
       59 LOADK                            R12 K13 ["MainView"]
       60 LOADK                            R13 K24 ["SaveToRobloxButtonText"]
       61 NAMECALL                         R10 R3 K15 ["getText"]
       63 CALL                             R10 3 1
       64 MOVE                             R9 R10
       65 GETUPVAL                         R10 2
       66 MOVE                             R11 R9
       67 GETTABLEKS                       R12 R2 K16 ["FontSizeLarge"]
       69 GETTABLEKS                       R13 R2 K17 ["Font"]
       71 CALL                             R10 3 1
       72 GETTABLEKS                       R11 R1 K25 ["RecentViewToggled"]
       74 GETTABLEKS                       R12 R1 K26 ["RecentAssets"]
       76 GETIMPORT                        R14 K28 [next]
       78 MOVE                             R15 R12
       79 CALL                             R14 1 1
       80 JUMPIFNOTEQKNIL                  R14 ; [+2]
       82 LOADB                            R13 0 +1
       83 LOADB                            R13 1
       84 GETTABLEKS                       R16 R2 K29 ["TopBar"]
       86 GETTABLEKS                       R16 R16 K30 ["Height"]
       88 GETTABLEKS                       R17 R2 K31 ["NavBar"]
       90 GETTABLEKS                       R17 R17 K30 ["Height"]
       92 ADD                              R15 R16 R17
       93 JUMPIFNOT                        R13 ; [+7]
       94 GETTABLEKS                       R16 R2 K32 ["RecentView"]
       96 GETTABLEKS                       R16 R16 K33 ["Bar"]
       98 GETTABLEKS                       R16 R16 K30 ["Height"]
      100 JUMPIF                           R16 ; [+1]
      101 LOADN                            R16 0
      102 ADD                              R14 R15 R16
      103 GETTABLEKS                       R16 R2 K29 ["TopBar"]
      105 GETTABLEKS                       R16 R16 K30 ["Height"]
      107 GETTABLEKS                       R17 R2 K31 ["NavBar"]
      109 GETTABLEKS                       R17 R17 K30 ["Height"]
      111 ADD                              R15 R16 R17
      112 GETTABLEKS                       R17 R0 K5 ["state"]
      114 GETTABLEKS                       R17 R17 K34 ["showOverlay"]
      116 NOT                              R16 R17
      117 JUMPIFNOT                        R16 ; [+5]
      118 GETTABLEKS                       R17 R0 K5 ["state"]
      120 GETTABLEKS                       R17 R17 K35 ["showAssetPreview"]
      122 NOT                              R16 R17
      123 LOADK                            R19 K13 ["MainView"]
      124 LOADK                            R20 K36 ["ConfirmText"]
      125 NAMECALL                         R17 R3 K15 ["getText"]
      127 CALL                             R17 3 1
      128 LOADK                            R20 K13 ["MainView"]
      129 LOADK                            R21 K37 ["CancelText"]
      130 NAMECALL                         R18 R3 K15 ["getText"]
      132 CALL                             R18 3 1
      133 LOADK                            R21 K13 ["MainView"]
      134 LOADK                            R22 K38 ["ConfirmRemovePlaceText"]
      135 NAMECALL                         R19 R3 K15 ["getText"]
      137 CALL                             R19 3 1
      138 GETUPVAL                         R20 3
      139 GETTABLEKS                       R20 R20 K39 ["createElement"]
      141 LOADK                            R21 K40 ["Frame"]
      142 DUPTABLE                         R22 K45 [{["Size"], ["Position"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"]}]
      143 GETIMPORT                        R23 K47 [UDim2.new]
      145 LOADN                            R24 1
      146 LOADN                            R25 0
      147 LOADN                            R26 1
      148 LOADN                            R27 0
      149 CALL                             R23 4 1
      150 SETTABLEKS                       R23 R22 K41 ["Size"]
      152 GETIMPORT                        R23 K47 [UDim2.new]
      154 LOADN                            R24 0
      155 LOADN                            R25 0
      156 LOADN                            R26 0
      157 LOADN                            R27 0
      158 CALL                             R23 4 1
      159 SETTABLEKS                       R23 R22 K42 ["Position"]
      161 GETTABLEKS                       R23 R2 K48 ["BackgroundColor"]
      163 SETTABLEKS                       R23 R22 K44 ["BackgroundColor3"]
      165 DUPTABLE                         R23 K59 [{["UseText"], ["PublishButton"], ["MainViewLayout"], ["ExplorerOverlay"], ["AssetPreview"], ["TopBar"], ["NavBar"], ["AssetGridView"] = False, ["RecentsAssetGridView"], ["RecentlyImportedView"], ["ConfirmRemovePlaceDialog"]}]
      166 NOT                              R24 R6
      167 JUMPIFNOT                        R24 ; [+61]
      168 GETUPVAL                         R24 3
      169 GETTABLEKS                       R24 R24 K39 ["createElement"]
      171 LOADK                            R25 K60 ["TextLabel"]
      172 DUPTABLE                         R26 K70 [{["Size"], ["Position"], ["AnchorPoint"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["Font"], ["Text"], ["TextColor3"], ["TextSize"], ["TextXAlignment"], ["TextWrapped"] = True}]
      173 GETIMPORT                        R27 K47 [UDim2.new]
      175 LOADN                            R28 0
      176 GETTABLEKS                       R29 R8 K71 ["X"]
      178 LOADN                            R30 0
      179 GETTABLEKS                       R31 R8 K72 ["Y"]
      181 CALL                             R27 4 1
      182 SETTABLEKS                       R27 R26 K41 ["Size"]
      184 GETIMPORT                        R27 K47 [UDim2.new]
      186 LOADK                            R28 K73 [0.5]
      187 LOADN                            R29 0
      188 LOADN                            R30 0
      189 GETTABLEKS                       R31 R2 K13 ["MainView"]
      191 GETTABLEKS                       R31 R31 K20 ["PublishText"]
      193 GETTABLEKS                       R31 R31 K74 ["Offset"]
      195 CALL                             R27 4 1
      196 SETTABLEKS                       R27 R26 K42 ["Position"]
      198 GETIMPORT                        R27 K19 [Vector2.new]
      200 LOADK                            R28 K73 [0.5]
      201 LOADK                            R29 K73 [0.5]
      202 CALL                             R27 2 1
      203 SETTABLEKS                       R27 R26 K61 ["AnchorPoint"]
      205 NAMECALL                         R27 R5 K75 ["getNextOrder"]
      207 CALL                             R27 1 1
      208 SETTABLEKS                       R27 R26 K62 ["LayoutOrder"]
      210 GETTABLEKS                       R27 R2 K17 ["Font"]
      212 SETTABLEKS                       R27 R26 K17 ["Font"]
      214 SETTABLEKS                       R7 R26 K64 ["Text"]
      216 GETTABLEKS                       R27 R2 K76 ["TextColor"]
      218 SETTABLEKS                       R27 R26 K65 ["TextColor3"]
      220 GETTABLEKS                       R27 R2 K16 ["FontSizeLarge"]
      222 SETTABLEKS                       R27 R26 K66 ["TextSize"]
      224 GETIMPORT                        R27 K79 [Enum.TextXAlignment.Center]
      226 SETTABLEKS                       R27 R26 K67 ["TextXAlignment"]
      228 CALL                             R24 2 1
      229 SETTABLEKS                       R24 R23 K49 ["UseText"]
      231 NOT                              R24 R6
      232 JUMPIFNOT                        R24 ; [+73]
      233 GETUPVAL                         R24 3
      234 GETTABLEKS                       R24 R24 K39 ["createElement"]
      236 GETUPVAL                         R25 4
      237 DUPTABLE                         R26 K83 [{["Style"] = "RoundPrimary", ["Text"], ["Size"], ["Position"], ["AnchorPoint"], ["LayoutOrder"], ["OnClick"]}]
      238 SETTABLEKS                       R9 R26 K64 ["Text"]
      240 GETIMPORT                        R27 K47 [UDim2.new]
      242 LOADN                            R28 0
      243 GETTABLEKS                       R30 R10 K71 ["X"]
      245 GETTABLEKS                       R31 R2 K13 ["MainView"]
      247 GETTABLEKS                       R31 R31 K50 ["PublishButton"]
      249 GETTABLEKS                       R31 R31 K84 ["PaddingX"]
      251 ADD                              R29 R30 R31
      252 LOADN                            R30 0
      253 GETTABLEKS                       R32 R10 K72 ["Y"]
      255 GETTABLEKS                       R33 R2 K13 ["MainView"]
      257 GETTABLEKS                       R33 R33 K50 ["PublishButton"]
      259 GETTABLEKS                       R33 R33 K85 ["PaddingY"]
      261 ADD                              R31 R32 R33
      262 CALL                             R27 4 1
      263 SETTABLEKS                       R27 R26 K41 ["Size"]
      265 GETIMPORT                        R27 K47 [UDim2.new]
      267 LOADK                            R28 K73 [0.5]
      268 LOADN                            R29 0
      269 LOADN                            R30 0
      270 GETTABLEKS                       R31 R2 K13 ["MainView"]
      272 GETTABLEKS                       R31 R31 K50 ["PublishButton"]
      274 GETTABLEKS                       R31 R31 K74 ["Offset"]
      276 CALL                             R27 4 1
      277 SETTABLEKS                       R27 R26 K42 ["Position"]
      279 GETIMPORT                        R27 K19 [Vector2.new]
      281 LOADK                            R28 K73 [0.5]
      282 LOADK                            R29 K73 [0.5]
      283 CALL                             R27 2 1
      284 SETTABLEKS                       R27 R26 K61 ["AnchorPoint"]
      286 NAMECALL                         R27 R5 K75 ["getNextOrder"]
      288 CALL                             R27 1 1
      289 SETTABLEKS                       R27 R26 K62 ["LayoutOrder"]
      291 DUPCLOSURE                       R27 K86 [PROTO_12]
      292 CAPTURE                          UPVAL U5
      293 SETTABLEKS                       R27 R26 K82 ["OnClick"]
      295 NEWTABLE                         R27 0 1
      297 GETUPVAL                         R28 3
      298 GETTABLEKS                       R28 R28 K39 ["createElement"]
      300 GETUPVAL                         R29 6
      301 DUPTABLE                         R30 K89 [{["Cursor"] = "PointingHand"}]
      302 CALL                             R28 2 -1
      303 SETLIST                          R27 R28 -1 [1]
      305 CALL                             R24 3 1
      306 SETTABLEKS                       R24 R23 K50 ["PublishButton"]
      308 MOVE                             R24 R6
      309 JUMPIFNOT                        R24 ; [+18]
      310 GETUPVAL                         R24 3
      311 GETTABLEKS                       R24 R24 K39 ["createElement"]
      313 LOADK                            R25 K90 ["UIListLayout"]
      314 DUPTABLE                         R26 K94 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
      315 GETIMPORT                        R27 K96 [Enum.FillDirection.Vertical]
      317 SETTABLEKS                       R27 R26 K91 ["FillDirection"]
      319 GETIMPORT                        R27 K97 [Enum.SortOrder.LayoutOrder]
      321 SETTABLEKS                       R27 R26 K92 ["SortOrder"]
      323 GETIMPORT                        R27 K99 [Enum.VerticalAlignment.Top]
      325 SETTABLEKS                       R27 R26 K93 ["VerticalAlignment"]
      327 CALL                             R24 2 1
      328 SETTABLEKS                       R24 R23 K51 ["MainViewLayout"]
      330 MOVE                             R24 R6
      331 JUMPIFNOT                        R24 ; [+25]
      332 GETTABLEKS                       R24 R0 K5 ["state"]
      334 GETTABLEKS                       R24 R24 K34 ["showOverlay"]
      336 JUMPIFNOT                        R24 ; [+20]
      337 GETUPVAL                         R24 3
      338 GETTABLEKS                       R24 R24 K39 ["createElement"]
      340 GETUPVAL                         R25 7
      341 DUPTABLE                         R26 K102 [{"FileExplorerData", "CloseOverlay"}]
      342 NEWTABLE                         R27 0 1
      344 GETTABLEKS                       R28 R0 K5 ["state"]
      346 GETTABLEKS                       R28 R28 K6 ["fileExplorerData"]
      348 SETLIST                          R27 R28 1 [1]
      350 SETTABLEKS                       R27 R26 K100 ["FileExplorerData"]
      352 GETTABLEKS                       R27 R0 K103 ["closeOverlay"]
      354 SETTABLEKS                       R27 R26 K101 ["CloseOverlay"]
      356 CALL                             R24 2 1
      357 SETTABLEKS                       R24 R23 K52 ["ExplorerOverlay"]
      359 MOVE                             R24 R6
      360 JUMPIFNOT                        R24 ; [+9]
      361 GETTABLEKS                       R24 R0 K5 ["state"]
      363 GETTABLEKS                       R24 R24 K35 ["showAssetPreview"]
      365 JUMPIFNOT                        R24 ; [+4]
      366 GETTABLEKS                       R24 R0 K5 ["state"]
      368 GETTABLEKS                       R24 R24 K104 ["assetPreview"]
      370 SETTABLEKS                       R24 R23 K53 ["AssetPreview"]
      372 MOVE                             R24 R6
      373 JUMPIFNOT                        R24 ; [+36]
      374 GETUPVAL                         R24 3
      375 GETTABLEKS                       R24 R24 K39 ["createElement"]
      377 GETUPVAL                         R25 8
      378 DUPTABLE                         R26 K107 [{"Size", "LayoutOrder", "OnOverlayActivated", "Enabled"}]
      379 GETIMPORT                        R27 K47 [UDim2.new]
      381 LOADN                            R28 1
      382 LOADN                            R29 0
      383 LOADN                            R30 0
      384 GETTABLEKS                       R31 R2 K29 ["TopBar"]
      386 GETTABLEKS                       R31 R31 K108 ["Button"]
      388 GETTABLEKS                       R31 R31 K41 ["Size"]
      390 CALL                             R27 4 1
      391 SETTABLEKS                       R27 R26 K41 ["Size"]
      393 NAMECALL                         R27 R5 K75 ["getNextOrder"]
      395 CALL                             R27 1 1
      396 SETTABLEKS                       R27 R26 K62 ["LayoutOrder"]
      398 GETTABLEKS                       R27 R0 K109 ["openOverlay"]
      400 SETTABLEKS                       R27 R26 K105 ["OnOverlayActivated"]
      402 GETTABLEKS                       R28 R0 K5 ["state"]
      404 GETTABLEKS                       R28 R28 K34 ["showOverlay"]
      406 NOT                              R27 R28
      407 SETTABLEKS                       R27 R26 K106 ["Enabled"]
      409 CALL                             R24 2 1
      410 SETTABLEKS                       R24 R23 K29 ["TopBar"]
      412 MOVE                             R24 R6
      413 JUMPIFNOT                        R24 ; [+23]
      414 GETUPVAL                         R24 3
      415 GETTABLEKS                       R24 R24 K39 ["createElement"]
      417 GETUPVAL                         R25 9
      418 DUPTABLE                         R26 K110 [{"Size", "LayoutOrder"}]
      419 GETIMPORT                        R27 K47 [UDim2.new]
      421 LOADN                            R28 1
      422 LOADN                            R29 0
      423 LOADN                            R30 0
      424 GETTABLEKS                       R31 R2 K31 ["NavBar"]
      426 GETTABLEKS                       R31 R31 K30 ["Height"]
      428 CALL                             R27 4 1
      429 SETTABLEKS                       R27 R26 K41 ["Size"]
      431 NAMECALL                         R27 R5 K75 ["getNextOrder"]
      433 CALL                             R27 1 1
      434 SETTABLEKS                       R27 R26 K62 ["LayoutOrder"]
      436 CALL                             R24 2 1
      437 SETTABLEKS                       R24 R23 K31 ["NavBar"]
      439 MOVE                             R24 R6
      440 JUMPIFNOT                        R24 ; [+36]
      441 NOT                              R24 R11
      442 JUMPIFNOT                        R24 ; [+34]
      443 GETUPVAL                         R24 3
      444 GETTABLEKS                       R24 R24 K39 ["createElement"]
      446 GETUPVAL                         R25 10
      447 DUPTABLE                         R26 K114 [{"Size", "LayoutOrder", "OnOpenAssetPreview", "OnAssetPreviewClose", "OnOpenConfirmRemovePlaceDialog", "Enabled"}]
      448 GETIMPORT                        R27 K47 [UDim2.new]
      450 LOADN                            R28 1
      451 LOADN                            R29 0
      452 LOADN                            R30 1
      453 MINUS                            R31 R14
      454 CALL                             R27 4 1
      455 SETTABLEKS                       R27 R26 K41 ["Size"]
      457 NAMECALL                         R27 R5 K75 ["getNextOrder"]
      459 CALL                             R27 1 1
      460 SETTABLEKS                       R27 R26 K62 ["LayoutOrder"]
      462 GETTABLEKS                       R27 R0 K115 ["openAssetPreview"]
      464 SETTABLEKS                       R27 R26 K111 ["OnOpenAssetPreview"]
      466 GETTABLEKS                       R27 R0 K116 ["closeAssetPreview"]
      468 SETTABLEKS                       R27 R26 K112 ["OnAssetPreviewClose"]
      470 GETTABLEKS                       R27 R0 K117 ["openConfirmRemovePlaceDialog"]
      472 SETTABLEKS                       R27 R26 K113 ["OnOpenConfirmRemovePlaceDialog"]
      474 SETTABLEKS                       R16 R26 K106 ["Enabled"]
      476 CALL                             R24 2 1
      477 SETTABLEKS                       R24 R23 K56 ["RecentsAssetGridView"]
      479 MOVE                             R24 R13
      480 JUMPIFNOT                        R24 ; [+38]
      481 GETUPVAL                         R24 3
      482 GETTABLEKS                       R24 R24 K39 ["createElement"]
      484 GETUPVAL                         R25 11
      485 DUPTABLE                         R26 K118 [{"Size", "LayoutOrder", "Enabled"}]
      486 GETIMPORT                        R27 K47 [UDim2.new]
      488 LOADN                            R28 1
      489 LOADN                            R29 0
      490 JUMPIFNOT                        R11 ; [+2]
      491 LOADN                            R30 1
      492 JUMP                             ; [+1]
      493 LOADN                            R30 0
      494 JUMPIFNOT                        R11 ; [+2]
      495 MINUS                            R31 R15
      496 JUMPIF                           R31 ; [+6]
      497 GETTABLEKS                       R31 R2 K32 ["RecentView"]
      499 GETTABLEKS                       R31 R31 K33 ["Bar"]
      501 GETTABLEKS                       R31 R31 K30 ["Height"]
      503 CALL                             R27 4 1
      504 SETTABLEKS                       R27 R26 K41 ["Size"]
      506 NAMECALL                         R27 R5 K75 ["getNextOrder"]
      508 CALL                             R27 1 1
      509 SETTABLEKS                       R27 R26 K62 ["LayoutOrder"]
      511 GETTABLEKS                       R28 R0 K5 ["state"]
      513 GETTABLEKS                       R28 R28 K34 ["showOverlay"]
      515 NOT                              R27 R28
      516 SETTABLEKS                       R27 R26 K106 ["Enabled"]
      518 CALL                             R24 2 1
      519 SETTABLEKS                       R24 R23 K57 ["RecentlyImportedView"]
      521 GETUPVAL                         R24 3
      522 GETTABLEKS                       R24 R24 K39 ["createElement"]
      524 GETUPVAL                         R25 12
      525 DUPTABLE                         R26 K125 [{["Style"] = "Alert", ["Enabled"], ["Title"] = "", ["MinContentSize"], ["Buttons"], ["OnButtonPressed"], ["OnClose"]}]
      526 GETTABLEKS                       R27 R0 K5 ["state"]
      528 GETTABLEKS                       R27 R27 K126 ["showConfirmRemovePlaceDialog"]
      530 SETTABLEKS                       R27 R26 K106 ["Enabled"]
      532 GETTABLEKS                       R27 R2 K13 ["MainView"]
      534 GETTABLEKS                       R27 R27 K127 ["ConfirmRemovePlaceDialogSize"]
      536 SETTABLEKS                       R27 R26 K121 ["MinContentSize"]
      538 NEWTABLE                         R27 0 2
      540 DUPTABLE                         R28 K130 [{["Key"] = "Confirm", ["Text"]}]
      541 SETTABLEKS                       R17 R28 K64 ["Text"]
      543 DUPTABLE                         R29 K132 [{["Key"] = "Cancel", ["Text"]}]
      544 SETTABLEKS                       R18 R29 K64 ["Text"]
      546 SETLIST                          R27 R28 2 [1]
      548 SETTABLEKS                       R27 R26 K122 ["Buttons"]
      550 NEWCLOSURE                       R27 P1
      551 CAPTURE                          UPVAL U13
      552 CAPTURE                          VAL R0
      553 SETTABLEKS                       R27 R26 K123 ["OnButtonPressed"]
      555 NEWCLOSURE                       R27 P2
      556 CAPTURE                          VAL R0
      557 SETTABLEKS                       R27 R26 K124 ["OnClose"]
      559 DUPTABLE                         R27 K134 [{"Contents"}]
      560 GETUPVAL                         R28 3
      561 GETTABLEKS                       R28 R28 K39 ["createElement"]
      563 LOADK                            R29 K60 ["TextLabel"]
      564 DUPTABLE                         R30 K135 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["Font"], ["Text"], ["TextColor3"], ["TextSize"], ["TextXAlignment"], ["TextWrapped"] = True}]
      565 GETIMPORT                        R31 K137 [UDim2.fromScale]
      567 LOADN                            R32 0
      568 LOADN                            R33 0
      569 CALL                             R31 2 1
      570 SETTABLEKS                       R31 R30 K42 ["Position"]
      572 GETIMPORT                        R31 K137 [UDim2.fromScale]
      574 LOADN                            R32 1
      575 LOADN                            R33 1
      576 CALL                             R31 2 1
      577 SETTABLEKS                       R31 R30 K41 ["Size"]
      579 GETTABLEKS                       R31 R2 K17 ["Font"]
      581 SETTABLEKS                       R31 R30 K17 ["Font"]
      583 SETTABLEKS                       R19 R30 K64 ["Text"]
      585 GETTABLEKS                       R31 R2 K76 ["TextColor"]
      587 SETTABLEKS                       R31 R30 K65 ["TextColor3"]
      589 GETTABLEKS                       R31 R2 K16 ["FontSizeLarge"]
      591 SETTABLEKS                       R31 R30 K66 ["TextSize"]
      593 GETIMPORT                        R31 K79 [Enum.TextXAlignment.Center]
      595 SETTABLEKS                       R31 R30 K67 ["TextXAlignment"]
      597 CALL                             R28 2 1
      598 SETTABLEKS                       R28 R27 K133 ["Contents"]
      600 CALL                             R24 3 1
      601 SETTABLEKS                       R24 R23 K58 ["ConfirmRemovePlaceDialog"]
      603 CALL                             R20 3 -1
      604 RETURN                           R20 -1

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["AssetManagerReducer"]
        2 DUPTABLE                         R3 K6 [{"AssetsTable", "CurrentScreen", "UniverseName", "RecentAssets", "RecentViewToggled"}]
        3 GETTABLEKS                       R4 R2 K7 ["assetsTable"]
        5 SETTABLEKS                       R4 R3 K1 ["AssetsTable"]
        7 GETTABLEKS                       R4 R0 K8 ["Screen"]
        9 GETTABLEKS                       R4 R4 K9 ["currentScreen"]
       11 SETTABLEKS                       R4 R3 K2 ["CurrentScreen"]
       13 GETTABLEKS                       R4 R2 K10 ["universeName"]
       15 SETTABLEKS                       R4 R3 K3 ["UniverseName"]
       17 GETTABLEKS                       R4 R2 K11 ["recentAssets"]
       19 SETTABLEKS                       R4 R3 K4 ["RecentAssets"]
       21 GETTABLEKS                       R4 R2 K12 ["recentViewToggled"]
       23 SETTABLEKS                       R4 R3 K5 ["RecentViewToggled"]
       25 RETURN                           R3 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_20:
        0 DUPTABLE                         R1 K3 [{"dispatchLoadAllAliases", "dispatchGetUniverseConfiguration", "dispatchOnScreenChange"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchLoadAllAliases"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["dispatchGetUniverseConfiguration"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["dispatchOnScreenChange"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R3 K11 ["UI"]
       36 GETTABLEKS                       R7 R6 K12 ["Button"]
       38 GETTABLEKS                       R8 R6 K13 ["HoverArea"]
       40 GETTABLEKS                       R9 R6 K14 ["StyledDialog"]
       42 GETTABLEKS                       R10 R6 K15 ["TextLabel"]
       44 GETTABLEKS                       R11 R3 K16 ["Util"]
       46 GETTABLEKS                       R12 R11 K17 ["LayoutOrderIterator"]
       48 GETTABLEKS                       R13 R11 K18 ["GetTextSize"]
       50 GETIMPORT                        R14 K4 [require]
       52 GETTABLEKS                       R15 R0 K19 ["Src"]
       54 GETTABLEKS                       R15 R15 K20 ["Components"]
       56 GETTABLEKS                       R15 R15 K21 ["AssetGridContainer"]
       58 CALL                             R14 1 1
       59 GETIMPORT                        R15 K4 [require]
       61 GETTABLEKS                       R16 R0 K19 ["Src"]
       63 GETTABLEKS                       R16 R16 K20 ["Components"]
       65 GETTABLEKS                       R16 R16 K22 ["AssetPreviewWrapper"]
       67 CALL                             R15 1 1
       68 GETIMPORT                        R16 K4 [require]
       70 GETTABLEKS                       R17 R0 K19 ["Src"]
       72 GETTABLEKS                       R17 R17 K20 ["Components"]
       74 GETTABLEKS                       R17 R17 K23 ["ExplorerOverlay"]
       76 CALL                             R16 1 1
       77 GETIMPORT                        R17 K4 [require]
       79 GETTABLEKS                       R18 R0 K19 ["Src"]
       81 GETTABLEKS                       R18 R18 K20 ["Components"]
       83 GETTABLEKS                       R18 R18 K24 ["NavBar"]
       85 CALL                             R17 1 1
       86 GETIMPORT                        R18 K4 [require]
       88 GETTABLEKS                       R19 R0 K19 ["Src"]
       90 GETTABLEKS                       R19 R19 K20 ["Components"]
       92 GETTABLEKS                       R19 R19 K25 ["RecentlyImportedView"]
       94 CALL                             R18 1 1
       95 GETIMPORT                        R19 K4 [require]
       97 GETTABLEKS                       R20 R0 K19 ["Src"]
       99 GETTABLEKS                       R20 R20 K20 ["Components"]
      101 GETTABLEKS                       R20 R20 K26 ["TopBar"]
      103 CALL                             R19 1 1
      104 GETIMPORT                        R20 K4 [require]
      106 GETTABLEKS                       R21 R0 K19 ["Src"]
      108 GETTABLEKS                       R21 R21 K16 ["Util"]
      110 GETTABLEKS                       R21 R21 K27 ["Screens"]
      112 CALL                             R20 1 1
      113 GETIMPORT                        R21 K4 [require]
      115 GETTABLEKS                       R22 R0 K19 ["Src"]
      117 GETTABLEKS                       R22 R22 K28 ["Thunks"]
      119 GETTABLEKS                       R22 R22 K29 ["LoadAllAliases"]
      121 CALL                             R21 1 1
      122 GETIMPORT                        R22 K4 [require]
      124 GETTABLEKS                       R23 R0 K19 ["Src"]
      126 GETTABLEKS                       R23 R23 K28 ["Thunks"]
      128 GETTABLEKS                       R23 R23 K30 ["GetUniverseConfiguration"]
      130 CALL                             R22 1 1
      131 GETIMPORT                        R23 K4 [require]
      133 GETTABLEKS                       R24 R0 K19 ["Src"]
      135 GETTABLEKS                       R24 R24 K28 ["Thunks"]
      137 GETTABLEKS                       R24 R24 K31 ["OnScreenChange"]
      139 CALL                             R23 1 1
      140 GETIMPORT                        R24 K33 [game]
      142 LOADK                            R26 K34 ["StudioPublishService"]
      143 NAMECALL                         R24 R24 K35 ["GetService"]
      145 CALL                             R24 2 1
      146 GETIMPORT                        R25 K33 [game]
      148 LOADK                            R27 K36 ["MemStorageService"]
      149 NAMECALL                         R25 R25 K35 ["GetService"]
      151 CALL                             R25 2 1
      152 GETTABLEKS                       R26 R1 K37 ["PureComponent"]
      154 LOADK                            R28 K38 ["MainView"]
      155 NAMECALL                         R26 R26 K39 ["extend"]
      157 CALL                             R26 2 1
      158 LOADB                            R27 0
      159 GETIMPORT                        R28 K4 [require]
      161 GETTABLEKS                       R29 R0 K19 ["Src"]
      163 GETTABLEKS                       R29 R29 K16 ["Util"]
      165 GETTABLEKS                       R29 R29 K40 ["ModernIcons"]
      167 CALL                             R28 1 1
      168 DUPCLOSURE                       R29 K41 [PROTO_0]
      169 CAPTURE                          VAL R28
      170 DUPCLOSURE                       R30 K42 [PROTO_7]
      171 CAPTURE                          VAL R20
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R15
      174 SETTABLEKS                       R30 R26 K43 ["init"]
      176 DUPCLOSURE                       R30 K44 [PROTO_9]
      177 CAPTURE                          VAL R24
      178 SETTABLEKS                       R30 R26 K45 ["didMount"]
      180 DUPCLOSURE                       R30 K46 [PROTO_10]
      181 SETTABLEKS                       R30 R26 K47 ["willUnmount"]
      183 DUPCLOSURE                       R30 K48 [PROTO_11]
      184 CAPTURE                          VAL R20
      185 CAPTURE                          VAL R29
      186 SETTABLEKS                       R30 R26 K49 ["didUpdate"]
      188 NEWCLOSURE                       R30 P5
      189 CAPTURE                          VAL R12
      190 CAPTURE                          REF R27
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R1
      193 CAPTURE                          VAL R7
      194 CAPTURE                          VAL R24
      195 CAPTURE                          VAL R8
      196 CAPTURE                          VAL R16
      197 CAPTURE                          VAL R19
      198 CAPTURE                          VAL R17
      199 CAPTURE                          VAL R14
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R9
      202 CAPTURE                          VAL R25
      203 SETTABLEKS                       R30 R26 K50 ["render"]
      205 MOVE                             R30 R5
      206 DUPTABLE                         R31 K54 [{"API", "Stylizer", "Localization"}]
      207 GETTABLEKS                       R32 R4 K51 ["API"]
      209 SETTABLEKS                       R32 R31 K51 ["API"]
      211 GETTABLEKS                       R32 R4 K52 ["Stylizer"]
      213 SETTABLEKS                       R32 R31 K52 ["Stylizer"]
      215 GETTABLEKS                       R32 R4 K53 ["Localization"]
      217 SETTABLEKS                       R32 R31 K53 ["Localization"]
      219 CALL                             R30 1 1
      220 MOVE                             R31 R26
      221 CALL                             R30 1 1
      222 MOVE                             R26 R30
      223 DUPCLOSURE                       R30 K55 [PROTO_16]
      224 DUPCLOSURE                       R31 K56 [PROTO_20]
      225 CAPTURE                          VAL R21
      226 CAPTURE                          VAL R22
      227 CAPTURE                          VAL R23
      228 GETTABLEKS                       R32 R2 K57 ["connect"]
      230 MOVE                             R33 R30
      231 MOVE                             R34 R31
      232 CALL                             R32 2 1
      233 MOVE                             R33 R26
      234 CALL                             R32 1 -1
      235 CLOSEUPVALS                      R27
      236 RETURN                           R32 -1
