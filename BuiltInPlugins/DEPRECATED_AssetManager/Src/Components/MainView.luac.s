PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["getIconForCurrentTheme"]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K1 ["IconEnums"]
        6 GETTABLEKS                       R5 R6 K2 ["BlankFolder"]
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
        1 DUPTABLE                         R2 K1 [{"showConfirmRemovePlaceDialog"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showConfirmRemovePlaceDialog"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showConfirmRemovePlaceDialog"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showConfirmRemovePlaceDialog"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showOverlay"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showOverlay"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showOverlay"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showOverlay"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"showAssetPreview", "assetPreview"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showAssetPreview"]
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R2 K1 ["assetPreview"]
        8 NAMECALL                         R0 R0 K3 ["setState"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_6:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K1 [type]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+27]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["createElement"]
       12 GETUPVAL                         R3 1
       13 DUPTABLE                         R4 K7 [{"AssetPreviewData", "OnAssetPreviewClose", "AssetData"}]
       14 SETTABLEKS                       R1 R4 K4 ["AssetPreviewData"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K8 ["closeAssetPreview"]
       19 SETTABLEKS                       R5 R4 K5 ["OnAssetPreviewClose"]
       21 SETTABLEKS                       R0 R4 K6 ["AssetData"]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 2
       25 DUPTABLE                         R5 K11 [{"showAssetPreview", "assetPreview"}]
       26 LOADB                            R6 1
       27 SETTABLEKS                       R6 R5 K9 ["showAssetPreview"]
       29 SETTABLEKS                       R2 R5 K10 ["assetPreview"]
       31 NAMECALL                         R3 R3 K12 ["setState"]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R3 R4 K13 ["props"]
       38 GETTABLEKS                       R2 R3 K14 ["Localization"]
       40 LOADK                            R5 K15 ["MainView"]
       41 LOADK                            R6 K16 ["AssetPreviewError"]
       42 NAMECALL                         R3 R2 K17 ["getText"]
       44 CALL                             R3 3 1
       45 GETIMPORT                        R4 K19 [warn]
       47 MOVE                             R5 R3
       48 CALL                             R4 1 0
       49 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K5 [{"currentScreen", "showAssetPreview", "showOverlay", "showConfirmRemovePlaceDialog", "fileExplorerData"}]
        1 LOADK                            R2 K6 [""]
        2 SETTABLEKS                       R2 R1 K0 ["currentScreen"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["showAssetPreview"]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["showOverlay"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["showConfirmRemovePlaceDialog"]
       13 DUPTABLE                         R2 K10 [{"text", "Screen", "children"}]
       14 LOADK                            R3 K11 ["Game 1"]
       15 SETTABLEKS                       R3 R2 K7 ["text"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K12 ["MAIN"]
       20 GETTABLEKS                       R3 R4 K13 ["Path"]
       22 SETTABLEKS                       R3 R2 K8 ["Screen"]
       24 NEWTABLE                         R3 0 0
       26 SETTABLEKS                       R3 R2 K9 ["children"]
       28 SETTABLEKS                       R2 R1 K4 ["fileExplorerData"]
       30 SETTABLEKS                       R1 R0 K14 ["state"]
       32 LOADNIL                          R1
       33 SETTABLEKS                       R1 R0 K15 ["gamePublishedConnection"]
       35 NEWCLOSURE                       R1 P0
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R1 R0 K16 ["openConfirmRemovePlaceDialog"]
       39 NEWCLOSURE                       R1 P1
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R1 R0 K17 ["closeConfirmRemovePlaceDialog"]
       43 NEWCLOSURE                       R1 P2
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R1 R0 K18 ["openOverlay"]
       47 NEWCLOSURE                       R1 P3
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R1 R0 K19 ["closeOverlay"]
       51 NEWCLOSURE                       R1 P4
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R1 R0 K20 ["closeAssetPreview"]
       55 NEWCLOSURE                       R1 P5
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R1 R0 K21 ["openAssetPreview"]
       61 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["dispatchGetUniverseConfiguration"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["API"]
       10 NAMECALL                         R1 R1 K3 ["get"]
       12 CALL                             R1 1 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R1 R2 K2 ["GameId"]
        4 JUMPIFEQKN                       R1 K3 [0] ; [+13]
        6 GETTABLEKS                       R2 R0 K4 ["props"]
        8 GETTABLEKS                       R1 R2 K5 ["dispatchGetUniverseConfiguration"]
       10 GETTABLEKS                       R3 R0 K4 ["props"]
       12 GETTABLEKS                       R2 R3 K6 ["API"]
       14 NAMECALL                         R2 R2 K7 ["get"]
       16 CALL                             R2 1 -1
       17 CALL                             R1 -1 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K8 ["GamePublishFinished"]
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
       11 GETUPVAL                         R11 0
       12 GETTABLEKS                       R10 R11 K5 ["MAIN"]
       14 GETTABLEKS                       R9 R10 K4 ["Path"]
       16 JUMPIFEQ                         R8 R9 ; [+13]
       18 GETUPVAL                         R8 1
       19 MOVE                             R9 R7
       20 GETTABLEKS                       R11 R0 K6 ["state"]
       22 GETTABLEKS                       R10 R11 K7 ["fileExplorerData"]
       24 MOVE                             R11 R2
       25 GETTABLEKS                       R13 R1 K8 ["Stylizer"]
       27 GETTABLEKS                       R12 R13 K9 ["TreeViewItem"]
       29 CALL                             R8 4 0
       30 FORGLOOP                         R3 2 ; [-22]
       32 GETTABLEKS                       R3 R1 K10 ["API"]
       34 NAMECALL                         R3 R3 K11 ["get"]
       36 CALL                             R3 1 1
       37 GETTABLEKS                       R4 R1 K12 ["CurrentScreen"]
       39 GETTABLEKS                       R6 R0 K6 ["state"]
       41 GETTABLEKS                       R5 R6 K13 ["currentScreen"]
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
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K3 ["closeConfirmRemovePlaceDialog"]
       10 CALL                             R1 0 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["closeConfirmRemovePlaceDialog"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["UniverseName"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["new"]
       11 CALL                             R5 0 1
       12 GETTABLEKS                       R7 R0 K5 ["state"]
       14 GETTABLEKS                       R6 R7 K6 ["fileExplorerData"]
       16 SETTABLEKS                       R4 R6 K7 ["text"]
       18 JUMPIFEQKS                       R4 K8 [""] ; [+5]
       20 GETUPVAL                         R6 1
       21 JUMPIF                           R6 ; [+2]
       22 LOADB                            R6 1
       23 SETUPVAL                         R6 1
       24 GETIMPORT                        R8 K10 [game]
       26 GETTABLEKS                       R7 R8 K11 ["GameId"]
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
       45 GETTABLEKS                       R15 R2 K13 ["MainView"]
       47 GETTABLEKS                       R14 R15 K20 ["PublishText"]
       49 GETTABLEKS                       R13 R14 K21 ["Width"]
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
       84 GETTABLEKS                       R17 R2 K29 ["TopBar"]
       86 GETTABLEKS                       R16 R17 K30 ["Height"]
       88 GETTABLEKS                       R18 R2 K31 ["NavBar"]
       90 GETTABLEKS                       R17 R18 K30 ["Height"]
       92 ADD                              R15 R16 R17
       93 JUMPIFNOT                        R13 ; [+7]
       94 GETTABLEKS                       R18 R2 K32 ["RecentView"]
       96 GETTABLEKS                       R17 R18 K33 ["Bar"]
       98 GETTABLEKS                       R16 R17 K30 ["Height"]
      100 JUMPIF                           R16 ; [+1]
      101 LOADN                            R16 0
      102 ADD                              R14 R15 R16
      103 GETTABLEKS                       R17 R2 K29 ["TopBar"]
      105 GETTABLEKS                       R16 R17 K30 ["Height"]
      107 GETTABLEKS                       R18 R2 K31 ["NavBar"]
      109 GETTABLEKS                       R17 R18 K30 ["Height"]
      111 ADD                              R15 R16 R17
      112 GETTABLEKS                       R18 R0 K5 ["state"]
      114 GETTABLEKS                       R17 R18 K34 ["showOverlay"]
      116 NOT                              R16 R17
      117 JUMPIFNOT                        R16 ; [+5]
      118 GETTABLEKS                       R18 R0 K5 ["state"]
      120 GETTABLEKS                       R17 R18 K35 ["showAssetPreview"]
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
      138 GETUPVAL                         R21 3
      139 GETTABLEKS                       R20 R21 K39 ["createElement"]
      141 LOADK                            R21 K40 ["Frame"]
      142 DUPTABLE                         R22 K45 [{"Size", "Position", "BackgroundTransparency", "BackgroundColor3"}]
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
      161 LOADN                            R23 0
      162 SETTABLEKS                       R23 R22 K43 ["BackgroundTransparency"]
      164 GETTABLEKS                       R23 R2 K48 ["BackgroundColor"]
      166 SETTABLEKS                       R23 R22 K44 ["BackgroundColor3"]
      168 DUPTABLE                         R23 K58 [{"UseText", "PublishButton", "MainViewLayout", "ExplorerOverlay", "AssetPreview", "TopBar", "NavBar", "AssetGridView", "RecentsAssetGridView", "RecentlyImportedView", "ConfirmRemovePlaceDialog"}]
      169 NOT                              R24 R6
      170 JUMPIFNOT                        R24 ; [+67]
      171 GETUPVAL                         R25 3
      172 GETTABLEKS                       R24 R25 K39 ["createElement"]
      174 LOADK                            R25 K59 ["TextLabel"]
      175 DUPTABLE                         R26 K67 [{"Size", "Position", "AnchorPoint", "LayoutOrder", "BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextWrapped"}]
      176 GETIMPORT                        R27 K47 [UDim2.new]
      178 LOADN                            R28 0
      179 GETTABLEKS                       R29 R8 K68 ["X"]
      181 LOADN                            R30 0
      182 GETTABLEKS                       R31 R8 K69 ["Y"]
      184 CALL                             R27 4 1
      185 SETTABLEKS                       R27 R26 K41 ["Size"]
      187 GETIMPORT                        R27 K47 [UDim2.new]
      189 LOADK                            R28 K70 [0.5]
      190 LOADN                            R29 0
      191 LOADN                            R30 0
      192 GETTABLEKS                       R33 R2 K13 ["MainView"]
      194 GETTABLEKS                       R32 R33 K20 ["PublishText"]
      196 GETTABLEKS                       R31 R32 K71 ["Offset"]
      198 CALL                             R27 4 1
      199 SETTABLEKS                       R27 R26 K42 ["Position"]
      201 GETIMPORT                        R27 K19 [Vector2.new]
      203 LOADK                            R28 K70 [0.5]
      204 LOADK                            R29 K70 [0.5]
      205 CALL                             R27 2 1
      206 SETTABLEKS                       R27 R26 K60 ["AnchorPoint"]
      208 NAMECALL                         R27 R5 K72 ["getNextOrder"]
      210 CALL                             R27 1 1
      211 SETTABLEKS                       R27 R26 K61 ["LayoutOrder"]
      213 LOADN                            R27 1
      214 SETTABLEKS                       R27 R26 K43 ["BackgroundTransparency"]
      216 GETTABLEKS                       R27 R2 K17 ["Font"]
      218 SETTABLEKS                       R27 R26 K17 ["Font"]
      220 SETTABLEKS                       R7 R26 K62 ["Text"]
      222 GETTABLEKS                       R27 R2 K73 ["TextColor"]
      224 SETTABLEKS                       R27 R26 K63 ["TextColor3"]
      226 GETTABLEKS                       R27 R2 K16 ["FontSizeLarge"]
      228 SETTABLEKS                       R27 R26 K64 ["TextSize"]
      230 GETIMPORT                        R27 K76 [Enum.TextXAlignment.Center]
      232 SETTABLEKS                       R27 R26 K65 ["TextXAlignment"]
      234 LOADB                            R27 1
      235 SETTABLEKS                       R27 R26 K66 ["TextWrapped"]
      237 CALL                             R24 2 1
      238 SETTABLEKS                       R24 R23 K49 ["UseText"]
      240 NOT                              R24 R6
      241 JUMPIFNOT                        R24 ; [+79]
      242 GETUPVAL                         R25 3
      243 GETTABLEKS                       R24 R25 K39 ["createElement"]
      245 GETUPVAL                         R25 4
      246 DUPTABLE                         R26 K79 [{"Style", "Text", "Size", "Position", "AnchorPoint", "LayoutOrder", "OnClick"}]
      247 LOADK                            R27 K80 ["RoundPrimary"]
      248 SETTABLEKS                       R27 R26 K77 ["Style"]
      250 SETTABLEKS                       R9 R26 K62 ["Text"]
      252 GETIMPORT                        R27 K47 [UDim2.new]
      254 LOADN                            R28 0
      255 GETTABLEKS                       R30 R10 K68 ["X"]
      257 GETTABLEKS                       R33 R2 K13 ["MainView"]
      259 GETTABLEKS                       R32 R33 K50 ["PublishButton"]
      261 GETTABLEKS                       R31 R32 K81 ["PaddingX"]
      263 ADD                              R29 R30 R31
      264 LOADN                            R30 0
      265 GETTABLEKS                       R32 R10 K69 ["Y"]
      267 GETTABLEKS                       R35 R2 K13 ["MainView"]
      269 GETTABLEKS                       R34 R35 K50 ["PublishButton"]
      271 GETTABLEKS                       R33 R34 K82 ["PaddingY"]
      273 ADD                              R31 R32 R33
      274 CALL                             R27 4 1
      275 SETTABLEKS                       R27 R26 K41 ["Size"]
      277 GETIMPORT                        R27 K47 [UDim2.new]
      279 LOADK                            R28 K70 [0.5]
      280 LOADN                            R29 0
      281 LOADN                            R30 0
      282 GETTABLEKS                       R33 R2 K13 ["MainView"]
      284 GETTABLEKS                       R32 R33 K50 ["PublishButton"]
      286 GETTABLEKS                       R31 R32 K71 ["Offset"]
      288 CALL                             R27 4 1
      289 SETTABLEKS                       R27 R26 K42 ["Position"]
      291 GETIMPORT                        R27 K19 [Vector2.new]
      293 LOADK                            R28 K70 [0.5]
      294 LOADK                            R29 K70 [0.5]
      295 CALL                             R27 2 1
      296 SETTABLEKS                       R27 R26 K60 ["AnchorPoint"]
      298 NAMECALL                         R27 R5 K72 ["getNextOrder"]
      300 CALL                             R27 1 1
      301 SETTABLEKS                       R27 R26 K61 ["LayoutOrder"]
      303 DUPCLOSURE                       R27 K83 [PROTO_12]
      304 CAPTURE                          UPVAL U5
      305 SETTABLEKS                       R27 R26 K78 ["OnClick"]
      307 NEWTABLE                         R27 0 1
      309 GETUPVAL                         R29 3
      310 GETTABLEKS                       R28 R29 K39 ["createElement"]
      312 GETUPVAL                         R29 6
      313 DUPTABLE                         R30 K85 [{"Cursor"}]
      314 LOADK                            R31 K86 ["PointingHand"]
      315 SETTABLEKS                       R31 R30 K84 ["Cursor"]
      317 CALL                             R28 2 -1
      318 SETLIST                          R27 R28 -1 [1]
      320 CALL                             R24 3 1
      321 SETTABLEKS                       R24 R23 K50 ["PublishButton"]
      323 MOVE                             R24 R6
      324 JUMPIFNOT                        R24 ; [+18]
      325 GETUPVAL                         R25 3
      326 GETTABLEKS                       R24 R25 K39 ["createElement"]
      328 LOADK                            R25 K87 ["UIListLayout"]
      329 DUPTABLE                         R26 K91 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
      330 GETIMPORT                        R27 K93 [Enum.FillDirection.Vertical]
      332 SETTABLEKS                       R27 R26 K88 ["FillDirection"]
      334 GETIMPORT                        R27 K94 [Enum.SortOrder.LayoutOrder]
      336 SETTABLEKS                       R27 R26 K89 ["SortOrder"]
      338 GETIMPORT                        R27 K96 [Enum.VerticalAlignment.Top]
      340 SETTABLEKS                       R27 R26 K90 ["VerticalAlignment"]
      342 CALL                             R24 2 1
      343 SETTABLEKS                       R24 R23 K51 ["MainViewLayout"]
      345 MOVE                             R24 R6
      346 JUMPIFNOT                        R24 ; [+25]
      347 GETTABLEKS                       R25 R0 K5 ["state"]
      349 GETTABLEKS                       R24 R25 K34 ["showOverlay"]
      351 JUMPIFNOT                        R24 ; [+20]
      352 GETUPVAL                         R25 3
      353 GETTABLEKS                       R24 R25 K39 ["createElement"]
      355 GETUPVAL                         R25 7
      356 DUPTABLE                         R26 K99 [{"FileExplorerData", "CloseOverlay"}]
      357 NEWTABLE                         R27 0 1
      359 GETTABLEKS                       R29 R0 K5 ["state"]
      361 GETTABLEKS                       R28 R29 K6 ["fileExplorerData"]
      363 SETLIST                          R27 R28 1 [1]
      365 SETTABLEKS                       R27 R26 K97 ["FileExplorerData"]
      367 GETTABLEKS                       R27 R0 K100 ["closeOverlay"]
      369 SETTABLEKS                       R27 R26 K98 ["CloseOverlay"]
      371 CALL                             R24 2 1
      372 SETTABLEKS                       R24 R23 K52 ["ExplorerOverlay"]
      374 MOVE                             R24 R6
      375 JUMPIFNOT                        R24 ; [+9]
      376 GETTABLEKS                       R25 R0 K5 ["state"]
      378 GETTABLEKS                       R24 R25 K35 ["showAssetPreview"]
      380 JUMPIFNOT                        R24 ; [+4]
      381 GETTABLEKS                       R25 R0 K5 ["state"]
      383 GETTABLEKS                       R24 R25 K101 ["assetPreview"]
      385 SETTABLEKS                       R24 R23 K53 ["AssetPreview"]
      387 MOVE                             R24 R6
      388 JUMPIFNOT                        R24 ; [+36]
      389 GETUPVAL                         R25 3
      390 GETTABLEKS                       R24 R25 K39 ["createElement"]
      392 GETUPVAL                         R25 8
      393 DUPTABLE                         R26 K104 [{"Size", "LayoutOrder", "OnOverlayActivated", "Enabled"}]
      394 GETIMPORT                        R27 K47 [UDim2.new]
      396 LOADN                            R28 1
      397 LOADN                            R29 0
      398 LOADN                            R30 0
      399 GETTABLEKS                       R33 R2 K29 ["TopBar"]
      401 GETTABLEKS                       R32 R33 K105 ["Button"]
      403 GETTABLEKS                       R31 R32 K41 ["Size"]
      405 CALL                             R27 4 1
      406 SETTABLEKS                       R27 R26 K41 ["Size"]
      408 NAMECALL                         R27 R5 K72 ["getNextOrder"]
      410 CALL                             R27 1 1
      411 SETTABLEKS                       R27 R26 K61 ["LayoutOrder"]
      413 GETTABLEKS                       R27 R0 K106 ["openOverlay"]
      415 SETTABLEKS                       R27 R26 K102 ["OnOverlayActivated"]
      417 GETTABLEKS                       R29 R0 K5 ["state"]
      419 GETTABLEKS                       R28 R29 K34 ["showOverlay"]
      421 NOT                              R27 R28
      422 SETTABLEKS                       R27 R26 K103 ["Enabled"]
      424 CALL                             R24 2 1
      425 SETTABLEKS                       R24 R23 K29 ["TopBar"]
      427 MOVE                             R24 R6
      428 JUMPIFNOT                        R24 ; [+23]
      429 GETUPVAL                         R25 3
      430 GETTABLEKS                       R24 R25 K39 ["createElement"]
      432 GETUPVAL                         R25 9
      433 DUPTABLE                         R26 K107 [{"Size", "LayoutOrder"}]
      434 GETIMPORT                        R27 K47 [UDim2.new]
      436 LOADN                            R28 1
      437 LOADN                            R29 0
      438 LOADN                            R30 0
      439 GETTABLEKS                       R32 R2 K31 ["NavBar"]
      441 GETTABLEKS                       R31 R32 K30 ["Height"]
      443 CALL                             R27 4 1
      444 SETTABLEKS                       R27 R26 K41 ["Size"]
      446 NAMECALL                         R27 R5 K72 ["getNextOrder"]
      448 CALL                             R27 1 1
      449 SETTABLEKS                       R27 R26 K61 ["LayoutOrder"]
      451 CALL                             R24 2 1
      452 SETTABLEKS                       R24 R23 K31 ["NavBar"]
      454 LOADB                            R24 0
      455 SETTABLEKS                       R24 R23 K54 ["AssetGridView"]
      457 MOVE                             R24 R6
      458 JUMPIFNOT                        R24 ; [+36]
      459 NOT                              R24 R11
      460 JUMPIFNOT                        R24 ; [+34]
      461 GETUPVAL                         R25 3
      462 GETTABLEKS                       R24 R25 K39 ["createElement"]
      464 GETUPVAL                         R25 10
      465 DUPTABLE                         R26 K111 [{"Size", "LayoutOrder", "OnOpenAssetPreview", "OnAssetPreviewClose", "OnOpenConfirmRemovePlaceDialog", "Enabled"}]
      466 GETIMPORT                        R27 K47 [UDim2.new]
      468 LOADN                            R28 1
      469 LOADN                            R29 0
      470 LOADN                            R30 1
      471 MINUS                            R31 R14
      472 CALL                             R27 4 1
      473 SETTABLEKS                       R27 R26 K41 ["Size"]
      475 NAMECALL                         R27 R5 K72 ["getNextOrder"]
      477 CALL                             R27 1 1
      478 SETTABLEKS                       R27 R26 K61 ["LayoutOrder"]
      480 GETTABLEKS                       R27 R0 K112 ["openAssetPreview"]
      482 SETTABLEKS                       R27 R26 K108 ["OnOpenAssetPreview"]
      484 GETTABLEKS                       R27 R0 K113 ["closeAssetPreview"]
      486 SETTABLEKS                       R27 R26 K109 ["OnAssetPreviewClose"]
      488 GETTABLEKS                       R27 R0 K114 ["openConfirmRemovePlaceDialog"]
      490 SETTABLEKS                       R27 R26 K110 ["OnOpenConfirmRemovePlaceDialog"]
      492 SETTABLEKS                       R16 R26 K103 ["Enabled"]
      494 CALL                             R24 2 1
      495 SETTABLEKS                       R24 R23 K55 ["RecentsAssetGridView"]
      497 MOVE                             R24 R13
      498 JUMPIFNOT                        R24 ; [+38]
      499 GETUPVAL                         R25 3
      500 GETTABLEKS                       R24 R25 K39 ["createElement"]
      502 GETUPVAL                         R25 11
      503 DUPTABLE                         R26 K115 [{"Size", "LayoutOrder", "Enabled"}]
      504 GETIMPORT                        R27 K47 [UDim2.new]
      506 LOADN                            R28 1
      507 LOADN                            R29 0
      508 JUMPIFNOT                        R11 ; [+2]
      509 LOADN                            R30 1
      510 JUMP                             ; [+1]
      511 LOADN                            R30 0
      512 JUMPIFNOT                        R11 ; [+2]
      513 MINUS                            R31 R15
      514 JUMPIF                           R31 ; [+6]
      515 GETTABLEKS                       R33 R2 K32 ["RecentView"]
      517 GETTABLEKS                       R32 R33 K33 ["Bar"]
      519 GETTABLEKS                       R31 R32 K30 ["Height"]
      521 CALL                             R27 4 1
      522 SETTABLEKS                       R27 R26 K41 ["Size"]
      524 NAMECALL                         R27 R5 K72 ["getNextOrder"]
      526 CALL                             R27 1 1
      527 SETTABLEKS                       R27 R26 K61 ["LayoutOrder"]
      529 GETTABLEKS                       R29 R0 K5 ["state"]
      531 GETTABLEKS                       R28 R29 K34 ["showOverlay"]
      533 NOT                              R27 R28
      534 SETTABLEKS                       R27 R26 K103 ["Enabled"]
      536 CALL                             R24 2 1
      537 SETTABLEKS                       R24 R23 K56 ["RecentlyImportedView"]
      539 GETUPVAL                         R25 3
      540 GETTABLEKS                       R24 R25 K39 ["createElement"]
      542 GETUPVAL                         R25 12
      543 DUPTABLE                         R26 K121 [{"Style", "Enabled", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
      544 LOADK                            R27 K122 ["Alert"]
      545 SETTABLEKS                       R27 R26 K77 ["Style"]
      547 GETTABLEKS                       R28 R0 K5 ["state"]
      549 GETTABLEKS                       R27 R28 K123 ["showConfirmRemovePlaceDialog"]
      551 SETTABLEKS                       R27 R26 K103 ["Enabled"]
      553 LOADK                            R27 K8 [""]
      554 SETTABLEKS                       R27 R26 K116 ["Title"]
      556 GETTABLEKS                       R28 R2 K13 ["MainView"]
      558 GETTABLEKS                       R27 R28 K124 ["ConfirmRemovePlaceDialogSize"]
      560 SETTABLEKS                       R27 R26 K117 ["MinContentSize"]
      562 NEWTABLE                         R27 0 2
      564 DUPTABLE                         R28 K126 [{"Key", "Text"}]
      565 LOADK                            R29 K127 ["Confirm"]
      566 SETTABLEKS                       R29 R28 K125 ["Key"]
      568 SETTABLEKS                       R17 R28 K62 ["Text"]
      570 DUPTABLE                         R29 K126 [{"Key", "Text"}]
      571 LOADK                            R30 K128 ["Cancel"]
      572 SETTABLEKS                       R30 R29 K125 ["Key"]
      574 SETTABLEKS                       R18 R29 K62 ["Text"]
      576 SETLIST                          R27 R28 2 [1]
      578 SETTABLEKS                       R27 R26 K118 ["Buttons"]
      580 NEWCLOSURE                       R27 P1
      581 CAPTURE                          UPVAL U13
      582 CAPTURE                          VAL R0
      583 SETTABLEKS                       R27 R26 K119 ["OnButtonPressed"]
      585 NEWCLOSURE                       R27 P2
      586 CAPTURE                          VAL R0
      587 SETTABLEKS                       R27 R26 K120 ["OnClose"]
      589 DUPTABLE                         R27 K130 [{"Contents"}]
      590 GETUPVAL                         R29 3
      591 GETTABLEKS                       R28 R29 K39 ["createElement"]
      593 LOADK                            R29 K59 ["TextLabel"]
      594 DUPTABLE                         R30 K131 [{"BackgroundTransparency", "Position", "Size", "Font", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextWrapped"}]
      595 LOADN                            R31 1
      596 SETTABLEKS                       R31 R30 K43 ["BackgroundTransparency"]
      598 GETIMPORT                        R31 K133 [UDim2.fromScale]
      600 LOADN                            R32 0
      601 LOADN                            R33 0
      602 CALL                             R31 2 1
      603 SETTABLEKS                       R31 R30 K42 ["Position"]
      605 GETIMPORT                        R31 K133 [UDim2.fromScale]
      607 LOADN                            R32 1
      608 LOADN                            R33 1
      609 CALL                             R31 2 1
      610 SETTABLEKS                       R31 R30 K41 ["Size"]
      612 GETTABLEKS                       R31 R2 K17 ["Font"]
      614 SETTABLEKS                       R31 R30 K17 ["Font"]
      616 SETTABLEKS                       R19 R30 K62 ["Text"]
      618 GETTABLEKS                       R31 R2 K73 ["TextColor"]
      620 SETTABLEKS                       R31 R30 K63 ["TextColor3"]
      622 GETTABLEKS                       R31 R2 K16 ["FontSizeLarge"]
      624 SETTABLEKS                       R31 R30 K64 ["TextSize"]
      626 GETIMPORT                        R31 K76 [Enum.TextXAlignment.Center]
      628 SETTABLEKS                       R31 R30 K65 ["TextXAlignment"]
      630 LOADB                            R31 1
      631 SETTABLEKS                       R31 R30 K66 ["TextWrapped"]
      633 CALL                             R28 2 1
      634 SETTABLEKS                       R28 R27 K129 ["Contents"]
      636 CALL                             R24 3 1
      637 SETTABLEKS                       R24 R23 K57 ["ConfirmRemovePlaceDialog"]
      639 CALL                             R20 3 -1
      640 RETURN                           R20 -1

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["AssetManagerReducer"]
        2 DUPTABLE                         R3 K6 [{"AssetsTable", "CurrentScreen", "UniverseName", "RecentAssets", "RecentViewToggled"}]
        3 GETTABLEKS                       R4 R2 K7 ["assetsTable"]
        5 SETTABLEKS                       R4 R3 K1 ["AssetsTable"]
        7 GETTABLEKS                       R5 R0 K8 ["Screen"]
        9 GETTABLEKS                       R4 R5 K9 ["currentScreen"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
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
       52 GETTABLEKS                       R17 R0 K19 ["Src"]
       54 GETTABLEKS                       R16 R17 K20 ["Components"]
       56 GETTABLEKS                       R15 R16 K21 ["AssetGridContainer"]
       58 CALL                             R14 1 1
       59 GETIMPORT                        R15 K4 [require]
       61 GETTABLEKS                       R18 R0 K19 ["Src"]
       63 GETTABLEKS                       R17 R18 K20 ["Components"]
       65 GETTABLEKS                       R16 R17 K22 ["AssetPreviewWrapper"]
       67 CALL                             R15 1 1
       68 GETIMPORT                        R16 K4 [require]
       70 GETTABLEKS                       R19 R0 K19 ["Src"]
       72 GETTABLEKS                       R18 R19 K20 ["Components"]
       74 GETTABLEKS                       R17 R18 K23 ["ExplorerOverlay"]
       76 CALL                             R16 1 1
       77 GETIMPORT                        R17 K4 [require]
       79 GETTABLEKS                       R20 R0 K19 ["Src"]
       81 GETTABLEKS                       R19 R20 K20 ["Components"]
       83 GETTABLEKS                       R18 R19 K24 ["NavBar"]
       85 CALL                             R17 1 1
       86 GETIMPORT                        R18 K4 [require]
       88 GETTABLEKS                       R21 R0 K19 ["Src"]
       90 GETTABLEKS                       R20 R21 K20 ["Components"]
       92 GETTABLEKS                       R19 R20 K25 ["RecentlyImportedView"]
       94 CALL                             R18 1 1
       95 GETIMPORT                        R19 K4 [require]
       97 GETTABLEKS                       R22 R0 K19 ["Src"]
       99 GETTABLEKS                       R21 R22 K20 ["Components"]
      101 GETTABLEKS                       R20 R21 K26 ["TopBar"]
      103 CALL                             R19 1 1
      104 GETIMPORT                        R20 K4 [require]
      106 GETTABLEKS                       R23 R0 K19 ["Src"]
      108 GETTABLEKS                       R22 R23 K16 ["Util"]
      110 GETTABLEKS                       R21 R22 K27 ["Screens"]
      112 CALL                             R20 1 1
      113 GETIMPORT                        R21 K4 [require]
      115 GETTABLEKS                       R24 R0 K19 ["Src"]
      117 GETTABLEKS                       R23 R24 K28 ["Thunks"]
      119 GETTABLEKS                       R22 R23 K29 ["LoadAllAliases"]
      121 CALL                             R21 1 1
      122 GETIMPORT                        R22 K4 [require]
      124 GETTABLEKS                       R25 R0 K19 ["Src"]
      126 GETTABLEKS                       R24 R25 K28 ["Thunks"]
      128 GETTABLEKS                       R23 R24 K30 ["GetUniverseConfiguration"]
      130 CALL                             R22 1 1
      131 GETIMPORT                        R23 K4 [require]
      133 GETTABLEKS                       R26 R0 K19 ["Src"]
      135 GETTABLEKS                       R25 R26 K28 ["Thunks"]
      137 GETTABLEKS                       R24 R25 K31 ["OnScreenChange"]
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
      161 GETTABLEKS                       R31 R0 K19 ["Src"]
      163 GETTABLEKS                       R30 R31 K16 ["Util"]
      165 GETTABLEKS                       R29 R30 K40 ["ModernIcons"]
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
