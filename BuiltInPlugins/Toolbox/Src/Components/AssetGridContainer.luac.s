PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Network"]
        3 GETTABLEKS                       R0 R1 K1 ["networkInterface"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["props"]
        8 GETTABLEKS                       R1 R2 K3 ["Settings"]
       10 LOADK                            R3 K4 ["Plugin"]
       11 NAMECALL                         R1 R1 K5 ["get"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K2 ["props"]
       17 GETTABLEKS                       R2 R3 K6 ["nextPage"]
       19 MOVE                             R3 R0
       20 MOVE                             R4 R1
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Asset"]
        2 GETTABLEKS                       R1 R2 K1 ["Id"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K2 ["getAssets"]
        7 NEWTABLE                         R3 0 1
        9 MOVE                             R4 R0
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K3 ["setAssetPreview"]
       16 LOADB                            R3 1
       17 MOVE                             R4 R1
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R5 R4 K1 ["LogAssetImpression"]
        5 JUMPIFNOT                        R5 ; [+12]
        6 GETTABLEKS                       R5 R4 K1 ["LogAssetImpression"]
        8 MOVE                             R6 R0
        9 MOVE                             R7 R3
       10 MOVE                             R8 R1
       11 MOVE                             R9 R2
       12 GETTABLEKS                       R10 R4 K2 ["ParentAbsoluteSize"]
       14 GETTABLEKS                       R11 R4 K3 ["ParentAbsolutePosition"]
       16 CALL                             R5 6 -1
       17 RETURN                           R5 -1
       18 LOADNIL                          R5
       19 RETURN                           R5 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R2 R0 K0 ["requestNextPage"]
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R2 R0 K1 ["setAssetPreview"]
        9 NEWCLOSURE                       R2 P2
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R0 K2 ["logImpression"]
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL1                        TONUMBER R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K1 [tonumber]
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+16]
        8 GETTABLEKS                       R3 R0 K2 ["props"]
       10 GETTABLEKS                       R4 R3 K3 ["getAssetPreviewDataForStartup"]
       12 MOVE                             R5 R2
       13 GETTABLEKS                       R6 R3 K4 ["TryInsert"]
       15 GETTABLEKS                       R7 R3 K5 ["Localization"]
       17 GETTABLEKS                       R9 R3 K6 ["Network"]
       19 GETTABLEKS                       R8 R9 K7 ["networkInterface"]
       21 GETTABLEKS                       R9 R0 K8 ["setAssetPreview"]
       23 CALL                             R4 5 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["idToAssetMap"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["idToAssetMap"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+3]
        5 GETTABLEKS                       R2 R1 K1 ["IXP"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 GETTABLEKS                       R3 R1 K2 ["allAssetCount"]
       11 GETTABLEKS                       R4 R1 K3 ["isLoading"]
       13 GETTABLEKS                       R5 R1 K4 ["assetIds"]
       15 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       17 GETTABLEKS                       R7 R1 K6 ["Position"]
       19 GETTABLEKS                       R8 R1 K7 ["RenderTopContent"]
       21 GETTABLEKS                       R9 R1 K8 ["Size"]
       23 GETTABLEKS                       R10 R1 K9 ["CanInsertAsset"]
       25 GETTABLEKS                       R11 R1 K10 ["OnAssetPreviewButtonClicked"]
       27 GETTABLEKS                       R12 R1 K11 ["TryInsert"]
       29 GETTABLEKS                       R13 R1 K12 ["TryOpenAssetConfig"]
       31 GETUPVAL                         R15 0
       32 CALL                             R15 0 1
       33 JUMPIFNOT                        R15 ; [+14]
       34 GETUPVAL                         R16 1
       35 GETTABLEKS                       R15 R16 K13 ["getTabForCategoryName"]
       37 GETTABLEKS                       R16 R1 K14 ["categoryName"]
       39 CALL                             R15 1 1
       40 GETUPVAL                         R17 1
       41 GETTABLEKS                       R16 R17 K15 ["INVENTORY"]
       43 JUMPIFEQ                         R15 R16 ; [+2]
       45 LOADB                            R14 0 +1
       46 LOADB                            R14 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R14
       49 JUMPIFNOT                        R3 ; [+3]
       50 LOADN                            R15 0
       51 JUMPIFLT                         R15 R3 ; [+25]
       53 JUMPIF                           R4 ; [+23]
       54 GETUPVAL                         R16 2
       55 GETTABLEKS                       R15 R16 K16 ["createElement"]
       57 GETUPVAL                         R16 3
       58 DUPTABLE                         R17 K19 [{"Position", "Text", "ZIndex"}]
       59 GETTABLEKS                       R18 R1 K20 ["NoResultsPosition"]
       61 SETTABLEKS                       R18 R17 K6 ["Position"]
       63 GETTABLEKS                       R18 R1 K21 ["Localization"]
       65 LOADK                            R20 K22 ["General"]
       66 LOADK                            R21 K23 ["InfoBannerText"]
       67 NAMECALL                         R18 R18 K24 ["getText"]
       69 CALL                             R18 3 1
       70 SETTABLEKS                       R18 R17 K17 ["Text"]
       72 LOADN                            R18 2
       73 SETTABLEKS                       R18 R17 K18 ["ZIndex"]
       75 CALL                             R15 2 -1
       76 RETURN                           R15 -1
       77 GETUPVAL                         R16 1
       78 GETTABLEKS                       R15 R16 K25 ["categoryIsPackage"]
       80 GETTABLEKS                       R16 R1 K14 ["categoryName"]
       82 CALL                             R15 1 1
       83 JUMPIFNOT                        R15 ; [+45]
       84 LENGTH                           R16 R5
       85 JUMPIFEQKN                       R16 K26 [0] ; [+43]
       87 NEWTABLE                         R16 0 0
       89 LOADN                            R17 1
       90 GETUPVAL                         R19 4
       91 GETTABLEKS                       R18 R19 K27 ["MaxPackageAssetIdsForHighestPermissionsRequest"]
       93 JUMPIFNOTLT                      R17 R18 ; [+20]
       95 GETTABLE                         R18 R5 R17
       96 JUMPIFEQKNIL                     R18 ; [+17]
       98 GETTABLE                         R18 R5 R17
       99 GETTABLEKS                       R21 R0 K0 ["props"]
      101 GETTABLEKS                       R20 R21 K28 ["currentUserPackagePermissions"]
      103 GETTABLE                         R19 R20 R18
      104 JUMPIF                           R19 ; [+7]
      105 FASTCALL2                        TABLE_INSERT R16 R18 ; [+5]
      107 MOVE                             R20 R16
      108 MOVE                             R21 R18
      109 GETIMPORT                        R19 K31 [table.insert]
      111 CALL                             R19 2 0
      112 ADDK                             R17 R17 K32 [1]
      113 JUMPBACK                         ; [-24]
      114 LENGTH                           R18 R16
      115 JUMPIFEQKN                       R18 K26 [0] ; [+13]
      117 GETTABLEKS                       R19 R0 K0 ["props"]
      119 GETTABLEKS                       R18 R19 K33 ["dispatchPostAssetCheckPermissions"]
      121 GETTABLEKS                       R21 R0 K0 ["props"]
      123 GETTABLEKS                       R20 R21 K34 ["Network"]
      125 GETTABLEKS                       R19 R20 K35 ["networkInterface"]
      127 MOVE                             R20 R16
      128 CALL                             R18 2 0
      129 GETUPVAL                         R17 1
      130 GETTABLEKS                       R16 R17 K36 ["categoryIsAudio"]
      132 GETTABLEKS                       R17 R1 K14 ["categoryName"]
      134 CALL                             R16 1 1
      135 JUMPIFNOT                        R16 ; [+45]
      136 GETUPVAL                         R16 5
      137 GETTABLEKS                       R17 R1 K4 ["assetIds"]
      139 NEWCLOSURE                       R18 P0
      140 CAPTURE                          VAL R1
      141 CALL                             R16 2 1
      142 GETUPVAL                         R18 6
      143 GETTABLEKS                       R17 R18 K37 ["Generator"]
      145 DUPTABLE                         R18 K43 [{"Assets", "CanInsertAsset", "FetchNextPage", "Loading", "LogImpression", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "Position", "Size", "TryInsert", "TryOpenAssetConfig"}]
      146 SETTABLEKS                       R16 R18 K38 ["Assets"]
      148 SETTABLEKS                       R10 R18 K9 ["CanInsertAsset"]
      150 GETTABLEKS                       R19 R0 K44 ["requestNextPage"]
      152 SETTABLEKS                       R19 R18 K39 ["FetchNextPage"]
      154 LOADB                            R19 0
      155 SETTABLEKS                       R19 R18 K40 ["Loading"]
      157 GETTABLEKS                       R19 R0 K45 ["logImpression"]
      159 SETTABLEKS                       R19 R18 K41 ["LogImpression"]
      161 GETTABLEKS                       R19 R1 K10 ["OnAssetPreviewButtonClicked"]
      163 SETTABLEKS                       R19 R18 K10 ["OnAssetPreviewButtonClicked"]
      165 GETTABLEKS                       R19 R1 K42 ["ParentAbsoluteSize"]
      167 SETTABLEKS                       R19 R18 K42 ["ParentAbsoluteSize"]
      169 SETTABLEKS                       R7 R18 K6 ["Position"]
      171 SETTABLEKS                       R9 R18 K8 ["Size"]
      173 SETTABLEKS                       R12 R18 K11 ["TryInsert"]
      175 GETTABLEKS                       R19 R1 K12 ["TryOpenAssetConfig"]
      177 SETTABLEKS                       R19 R18 K12 ["TryOpenAssetConfig"]
      179 CALL                             R17 1 -1
      180 RETURN                           R17 -1
      181 GETUPVAL                         R16 7
      182 MOVE                             R17 R2
      183 CALL                             R16 1 1
      184 JUMPIFNOT                        R16 ; [+60]
      185 GETTABLEKS                       R16 R1 K46 ["layoutMode"]
      187 GETUPVAL                         R18 8
      188 GETTABLEKS                       R17 R18 K47 ["ListView"]
      190 JUMPIFNOTEQ                      R16 R17 ; [+54]
      192 JUMPIFNOT                        R14 ; [+52]
      193 GETUPVAL                         R16 5
      194 GETTABLEKS                       R17 R1 K4 ["assetIds"]
      196 NEWCLOSURE                       R18 P1
      197 CAPTURE                          VAL R1
      198 CALL                             R16 2 1
      199 GETUPVAL                         R18 2
      200 GETTABLEKS                       R17 R18 K16 ["createElement"]
      202 GETUPVAL                         R18 9
      203 DUPTABLE                         R19 K49 [{"Assets", "CanInsertAsset", "FetchNextPage", "LogImpression", "OnAssetPreviewButtonClicked", "OnSearchByCreator", "ParentAbsoluteSize", "Position", "Size", "TryInsert", "TryOpenAssetConfig"}]
      204 SETTABLEKS                       R16 R19 K38 ["Assets"]
      206 SETTABLEKS                       R10 R19 K9 ["CanInsertAsset"]
      208 GETTABLEKS                       R20 R0 K44 ["requestNextPage"]
      210 SETTABLEKS                       R20 R19 K39 ["FetchNextPage"]
      212 GETTABLEKS                       R20 R0 K45 ["logImpression"]
      214 SETTABLEKS                       R20 R19 K41 ["LogImpression"]
      216 GETTABLEKS                       R20 R1 K10 ["OnAssetPreviewButtonClicked"]
      218 SETTABLEKS                       R20 R19 K10 ["OnAssetPreviewButtonClicked"]
      220 GETUPVAL                         R21 10
      221 CALL                             R21 0 1
      222 JUMPIFNOT                        R21 ; [+3]
      223 GETTABLEKS                       R20 R1 K48 ["OnSearchByCreator"]
      225 JUMP                             ; [+1]
      226 LOADNIL                          R20
      227 SETTABLEKS                       R20 R19 K48 ["OnSearchByCreator"]
      229 GETTABLEKS                       R20 R1 K42 ["ParentAbsoluteSize"]
      231 SETTABLEKS                       R20 R19 K42 ["ParentAbsoluteSize"]
      233 SETTABLEKS                       R7 R19 K6 ["Position"]
      235 SETTABLEKS                       R9 R19 K8 ["Size"]
      237 SETTABLEKS                       R12 R19 K11 ["TryInsert"]
      239 GETTABLEKS                       R20 R1 K12 ["TryOpenAssetConfig"]
      241 SETTABLEKS                       R20 R19 K12 ["TryOpenAssetConfig"]
      243 CALL                             R17 2 -1
      244 RETURN                           R17 -1
      245 GETUPVAL                         R17 2
      246 GETTABLEKS                       R16 R17 K16 ["createElement"]
      248 GETUPVAL                         R17 11
      249 DUPTABLE                         R18 K56 [{"AssetIds", "AssetMap", "LayoutOrder", "Position", "RenderTopContent", "RequestNextPage", "Size", "CanInsertAsset", "LogAssetImpression", "OnAssetPreviewButtonClicked", "OnSearchByCreator", "ParentAbsolutePosition", "ParentSize", "TryInsert", "TryOpenAssetConfig"}]
      250 SETTABLEKS                       R5 R18 K50 ["AssetIds"]
      252 GETTABLEKS                       R19 R1 K57 ["idToAssetMap"]
      254 SETTABLEKS                       R19 R18 K51 ["AssetMap"]
      256 SETTABLEKS                       R6 R18 K5 ["LayoutOrder"]
      258 SETTABLEKS                       R7 R18 K6 ["Position"]
      260 SETTABLEKS                       R8 R18 K7 ["RenderTopContent"]
      262 GETTABLEKS                       R19 R0 K44 ["requestNextPage"]
      264 SETTABLEKS                       R19 R18 K52 ["RequestNextPage"]
      266 SETTABLEKS                       R9 R18 K8 ["Size"]
      268 SETTABLEKS                       R10 R18 K9 ["CanInsertAsset"]
      270 GETTABLEKS                       R19 R1 K53 ["LogAssetImpression"]
      272 SETTABLEKS                       R19 R18 K53 ["LogAssetImpression"]
      274 SETTABLEKS                       R11 R18 K10 ["OnAssetPreviewButtonClicked"]
      276 GETUPVAL                         R20 12
      277 CALL                             R20 0 1
      278 JUMPIFNOT                        R20 ; [+3]
      279 GETTABLEKS                       R19 R1 K48 ["OnSearchByCreator"]
      281 JUMP                             ; [+1]
      282 LOADNIL                          R19
      283 SETTABLEKS                       R19 R18 K48 ["OnSearchByCreator"]
      285 GETTABLEKS                       R19 R1 K54 ["ParentAbsolutePosition"]
      287 SETTABLEKS                       R19 R18 K54 ["ParentAbsolutePosition"]
      289 GETTABLEKS                       R19 R1 K42 ["ParentAbsoluteSize"]
      291 SETTABLEKS                       R19 R18 K55 ["ParentSize"]
      293 SETTABLEKS                       R12 R18 K11 ["TryInsert"]
      295 SETTABLEKS                       R13 R18 K12 ["TryOpenAssetConfig"]
      297 CALL                             R16 2 -1
      298 RETURN                           R16 -1

PROTO_8:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["assets"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 GETTABLEKS                       R3 R0 K1 ["pageInfo"]
       12 JUMPIF                           R3 ; [+2]
       13 NEWTABLE                         R3 0 0
       15 GETTABLEKS                       R4 R3 K2 ["categoryName"]
       17 JUMPIF                           R4 ; [+5]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K3 ["DEFAULT"]
       21 GETTABLEKS                       R4 R5 K4 ["name"]
       23 DUPTABLE                         R5 K11 [{"allAssetCount", "assetIds", "categoryName", "currentUserPackagePermissions", "idToAssetMap", "isLoading", "layoutMode"}]
       24 GETTABLEKS                       R7 R2 K12 ["idsToRender"]
       26 LENGTH                           R6 R7
       27 SETTABLEKS                       R6 R5 K5 ["allAssetCount"]
       29 GETTABLEKS                       R6 R2 K12 ["idsToRender"]
       31 JUMPIF                           R6 ; [+2]
       32 NEWTABLE                         R6 0 0
       34 SETTABLEKS                       R6 R5 K6 ["assetIds"]
       36 SETTABLEKS                       R4 R5 K2 ["categoryName"]
       38 GETTABLEKS                       R7 R0 K13 ["packages"]
       40 GETTABLEKS                       R6 R7 K14 ["permissionsTable"]
       42 JUMPIF                           R6 ; [+2]
       43 NEWTABLE                         R6 0 0
       45 SETTABLEKS                       R6 R5 K7 ["currentUserPackagePermissions"]
       47 GETTABLEKS                       R6 R2 K8 ["idToAssetMap"]
       49 SETTABLEKS                       R6 R5 K8 ["idToAssetMap"]
       51 GETTABLEKS                       R7 R2 K9 ["isLoading"]
       53 ORK                              R6 R7 K15 [False]
       54 SETTABLEKS                       R6 R5 K9 ["isLoading"]
       56 GETUPVAL                         R7 1
       57 CALL                             R7 0 1
       58 JUMPIFNOT                        R7 ; [+3]
       59 GETTABLEKS                       R6 R3 K10 ["layoutMode"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R6
       63 SETTABLEKS                       R6 R5 K10 ["layoutMode"]
       65 RETURN                           R5 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 MOVE                             R10 R3
        6 MOVE                             R11 R4
        7 CALL                             R6 5 -1
        8 CALL                             R5 -1 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 -1
        6 RETURN                           R2 -1

PROTO_14:
        0 DUPTABLE                         R1 K5 [{"dispatchPostAssetCheckPermissions", "getAssetPreviewDataForStartup", "getAssets", "nextPage", "setAssetPreview"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchPostAssetCheckPermissions"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["getAssetPreviewDataForStartup"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["getAssets"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["nextPage"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["setAssetPreview"]
       26 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R6 K5 [require]
       23 GETTABLEKS                       R7 R1 K8 ["LuauPolyfill"]
       25 CALL                             R6 1 1
       26 GETTABLEKS                       R5 R6 K9 ["Array"]
       28 GETTABLEKS                       R4 R5 K10 ["map"]
       30 GETTABLEKS                       R6 R0 K11 ["Src"]
       32 GETTABLEKS                       R5 R6 K12 ["Util"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R5 K13 ["getStartupAssetId"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R10 R0 K11 ["Src"]
       43 GETTABLEKS                       R9 R10 K14 ["ContextServices"]
       45 GETTABLEKS                       R8 R9 K15 ["IXPContext"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R11 R0 K11 ["Src"]
       52 GETTABLEKS                       R10 R11 K16 ["Types"]
       54 GETTABLEKS                       R9 R10 K17 ["Category"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R12 R0 K11 ["Src"]
       61 GETTABLEKS                       R11 R12 K16 ["Types"]
       63 GETTABLEKS                       R10 R11 K18 ["LayoutMode"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R13 R0 K11 ["Src"]
       70 GETTABLEKS                       R12 R13 K19 ["Components"]
       72 GETTABLEKS                       R11 R12 K20 ["AssetGrid"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R16 R0 K11 ["Src"]
       79 GETTABLEKS                       R15 R16 K19 ["Components"]
       81 GETTABLEKS                       R14 R15 K21 ["AssetConfiguration"]
       83 GETTABLEKS                       R13 R14 K22 ["Permissions"]
       85 GETTABLEKS                       R12 R13 K23 ["PermissionsConstants"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R15 R0 K11 ["Src"]
       92 GETTABLEKS                       R14 R15 K19 ["Components"]
       94 GETTABLEKS                       R13 R14 K24 ["AssetLogicWrapper"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R17 R0 K11 ["Src"]
      101 GETTABLEKS                       R16 R17 K19 ["Components"]
      103 GETTABLEKS                       R15 R16 K25 ["Audio"]
      105 GETTABLEKS                       R14 R15 K26 ["AudioScroller"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R18 R0 K11 ["Src"]
      112 GETTABLEKS                       R17 R18 K19 ["Components"]
      114 GETTABLEKS                       R16 R17 K27 ["AssetTable"]
      116 GETTABLEKS                       R15 R16 K27 ["AssetTable"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R18 R0 K11 ["Src"]
      123 GETTABLEKS                       R17 R18 K28 ["Models"]
      125 GETTABLEKS                       R16 R17 K29 ["AssetInfo"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K5 [require]
      130 GETTABLEKS                       R19 R0 K11 ["Src"]
      132 GETTABLEKS                       R18 R19 K19 ["Components"]
      134 GETTABLEKS                       R17 R18 K30 ["InfoBanner"]
      136 CALL                             R16 1 1
      137 GETIMPORT                        R17 K5 [require]
      139 GETTABLEKS                       R20 R0 K11 ["Src"]
      141 GETTABLEKS                       R19 R20 K16 ["Types"]
      143 GETTABLEKS                       R18 R19 K31 ["AssetLogicTypes"]
      145 CALL                             R17 1 1
      146 GETTABLEKS                       R19 R0 K11 ["Src"]
      148 GETTABLEKS                       R18 R19 K32 ["Actions"]
      150 GETIMPORT                        R19 K5 [require]
      152 GETTABLEKS                       R20 R18 K33 ["GetAssets"]
      154 CALL                             R19 1 1
      155 GETIMPORT                        R20 K5 [require]
      157 GETTABLEKS                       R21 R18 K34 ["SetAssetPreview"]
      159 CALL                             R20 1 1
      160 GETIMPORT                        R21 K5 [require]
      162 GETTABLEKS                       R24 R0 K11 ["Src"]
      164 GETTABLEKS                       R23 R24 K35 ["Thunks"]
      166 GETTABLEKS                       R22 R23 K36 ["GetAssetPreviewDataForStartup"]
      168 CALL                             R21 1 1
      169 GETIMPORT                        R22 K5 [require]
      171 GETTABLEKS                       R23 R1 K37 ["Framework"]
      173 CALL                             R22 1 1
      174 GETTABLEKS                       R23 R22 K14 ["ContextServices"]
      176 GETTABLEKS                       R24 R23 K38 ["withContext"]
      178 GETIMPORT                        R25 K5 [require]
      180 GETTABLEKS                       R28 R0 K11 ["Src"]
      182 GETTABLEKS                       R27 R28 K14 ["ContextServices"]
      184 GETTABLEKS                       R26 R27 K39 ["Settings"]
      186 CALL                             R25 1 1
      187 GETIMPORT                        R26 K5 [require]
      189 GETTABLEKS                       R29 R0 K11 ["Src"]
      191 GETTABLEKS                       R28 R29 K14 ["ContextServices"]
      193 GETTABLEKS                       R27 R28 K40 ["NetworkContext"]
      195 CALL                             R26 1 1
      196 GETIMPORT                        R27 K5 [require]
      198 GETTABLEKS                       R31 R0 K11 ["Src"]
      200 GETTABLEKS                       R30 R31 K41 ["Networking"]
      202 GETTABLEKS                       R29 R30 K42 ["Requests"]
      204 GETTABLEKS                       R28 R29 K43 ["NextPageRequest"]
      206 CALL                             R27 1 1
      207 GETIMPORT                        R28 K5 [require]
      209 GETTABLEKS                       R32 R0 K11 ["Src"]
      211 GETTABLEKS                       R31 R32 K41 ["Networking"]
      213 GETTABLEKS                       R30 R31 K42 ["Requests"]
      215 GETTABLEKS                       R29 R30 K44 ["PostAssetCheckPermissions"]
      217 CALL                             R28 1 1
      218 GETIMPORT                        R29 K5 [require]
      220 GETTABLEKS                       R33 R0 K11 ["Src"]
      222 GETTABLEKS                       R32 R33 K12 ["Util"]
      224 GETTABLEKS                       R31 R32 K45 ["SharedFlags"]
      226 GETTABLEKS                       R30 R31 K46 ["getIsIXPEnabledForListView"]
      228 CALL                             R29 1 1
      229 GETIMPORT                        R30 K5 [require]
      231 GETTABLEKS                       R34 R0 K11 ["Src"]
      233 GETTABLEKS                       R33 R34 K12 ["Util"]
      235 GETTABLEKS                       R32 R33 K45 ["SharedFlags"]
      237 GETTABLEKS                       R31 R32 K47 ["getFFlagToolboxEnableAssetRows"]
      239 CALL                             R30 1 1
      240 GETIMPORT                        R31 K5 [require]
      242 GETTABLEKS                       R35 R0 K11 ["Src"]
      244 GETTABLEKS                       R34 R35 K12 ["Util"]
      246 GETTABLEKS                       R33 R34 K45 ["SharedFlags"]
      248 GETTABLEKS                       R32 R33 K48 ["getFFlagToolboxFixInventoryCreatorFilter"]
      250 CALL                             R31 1 1
      251 GETIMPORT                        R32 K5 [require]
      253 GETTABLEKS                       R36 R0 K11 ["Src"]
      255 GETTABLEKS                       R35 R36 K12 ["Util"]
      257 GETTABLEKS                       R34 R35 K45 ["SharedFlags"]
      259 GETTABLEKS                       R33 R34 K49 ["getFFlagToolboxFixInventoryGridSearch"]
      261 CALL                             R32 1 1
      262 GETTABLEKS                       R33 R2 K50 ["PureComponent"]
      264 LOADK                            R35 K51 ["AssetGridContainer"]
      265 NAMECALL                         R33 R33 K52 ["extend"]
      267 CALL                             R33 2 1
      268 DUPTABLE                         R34 K54 [{"Size"}]
      269 GETIMPORT                        R35 K57 [UDim2.new]
      271 LOADN                            R36 1
      272 LOADN                            R37 0
      273 LOADN                            R38 1
      274 LOADN                            R39 0
      275 CALL                             R35 4 1
      276 SETTABLEKS                       R35 R34 K53 ["Size"]
      278 SETTABLEKS                       R34 R33 K58 ["defaultProps"]
      280 DUPCLOSURE                       R34 K59 [PROTO_3]
      281 SETTABLEKS                       R34 R33 K60 ["init"]
      283 DUPCLOSURE                       R34 K61 [PROTO_4]
      284 CAPTURE                          VAL R6
      285 SETTABLEKS                       R34 R33 K62 ["didMount"]
      287 DUPCLOSURE                       R34 K63 [PROTO_7]
      288 CAPTURE                          VAL R30
      289 CAPTURE                          VAL R8
      290 CAPTURE                          VAL R2
      291 CAPTURE                          VAL R16
      292 CAPTURE                          VAL R11
      293 CAPTURE                          VAL R4
      294 CAPTURE                          VAL R13
      295 CAPTURE                          VAL R29
      296 CAPTURE                          VAL R9
      297 CAPTURE                          VAL R14
      298 CAPTURE                          VAL R31
      299 CAPTURE                          VAL R10
      300 CAPTURE                          VAL R32
      301 SETTABLEKS                       R34 R33 K64 ["render"]
      303 MOVE                             R34 R12
      304 MOVE                             R35 R33
      305 CALL                             R34 1 1
      306 MOVE                             R33 R34
      307 MOVE                             R34 R24
      308 DUPTABLE                         R35 K68 [{"IXP", "Localization", "Settings", "Network"}]
      309 MOVE                             R37 R30
      310 CALL                             R37 0 1
      311 JUMPIFNOT                        R37 ; [+2]
      312 MOVE                             R36 R7
      313 JUMP                             ; [+1]
      314 LOADNIL                          R36
      315 SETTABLEKS                       R36 R35 K65 ["IXP"]
      317 GETTABLEKS                       R36 R23 K66 ["Localization"]
      319 SETTABLEKS                       R36 R35 K66 ["Localization"]
      321 SETTABLEKS                       R25 R35 K39 ["Settings"]
      323 SETTABLEKS                       R26 R35 K67 ["Network"]
      325 CALL                             R34 1 1
      326 MOVE                             R35 R33
      327 CALL                             R34 1 1
      328 MOVE                             R33 R34
      329 DUPCLOSURE                       R34 K69 [PROTO_8]
      330 CAPTURE                          VAL R8
      331 CAPTURE                          VAL R30
      332 DUPCLOSURE                       R35 K70 [PROTO_14]
      333 CAPTURE                          VAL R28
      334 CAPTURE                          VAL R21
      335 CAPTURE                          VAL R19
      336 CAPTURE                          VAL R27
      337 CAPTURE                          VAL R20
      338 GETTABLEKS                       R36 R3 K71 ["connect"]
      340 MOVE                             R37 R34
      341 MOVE                             R38 R35
      342 CALL                             R36 2 1
      343 MOVE                             R37 R33
      344 CALL                             R36 1 -1
      345 RETURN                           R36 -1
