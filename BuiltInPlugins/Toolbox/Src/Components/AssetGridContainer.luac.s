PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Network"]
        3 GETTABLEKS                       R0 R0 K1 ["networkInterface"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["props"]
        8 GETTABLEKS                       R1 R1 K3 ["Settings"]
       10 LOADK                            R3 K4 ["Plugin"]
       11 NAMECALL                         R1 R1 K5 ["get"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K2 ["props"]
       17 GETTABLEKS                       R2 R2 K6 ["nextPage"]
       19 MOVE                             R3 R0
       20 MOVE                             R4 R1
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Asset"]
        2 GETTABLEKS                       R1 R1 K1 ["Id"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["getAssets"]
        7 NEWTABLE                         R3 0 1
        9 MOVE                             R4 R0
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K3 ["setAssetPreview"]
       16 LOADB                            R3 1
       17 MOVE                             R4 R1
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
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
       17 GETTABLEKS                       R8 R3 K6 ["Network"]
       19 GETTABLEKS                       R8 R8 K7 ["networkInterface"]
       21 GETTABLEKS                       R9 R0 K8 ["setAssetPreview"]
       23 CALL                             R4 5 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["idToAssetMap"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["idToAssetMap"]
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
       34 GETUPVAL                         R15 1
       35 GETTABLEKS                       R15 R15 K13 ["getTabForCategoryName"]
       37 GETTABLEKS                       R16 R1 K14 ["categoryName"]
       39 CALL                             R15 1 1
       40 GETUPVAL                         R16 1
       41 GETTABLEKS                       R16 R16 K15 ["INVENTORY"]
       43 JUMPIFEQ                         R15 R16 ; [+2]
       45 LOADB                            R14 0 +1
       46 LOADB                            R14 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R14
       49 JUMPIFNOT                        R3 ; [+3]
       50 LOADN                            R15 0
       51 JUMPIFLT                         R15 R3 ; [+22]
       53 JUMPIF                           R4 ; [+20]
       54 GETUPVAL                         R15 2
       55 GETTABLEKS                       R15 R15 K16 ["createElement"]
       57 GETUPVAL                         R16 3
       58 DUPTABLE                         R17 K20 [{["Position"], ["Text"], ["ZIndex"] = 2}]
       59 GETTABLEKS                       R18 R1 K21 ["NoResultsPosition"]
       61 SETTABLEKS                       R18 R17 K6 ["Position"]
       63 GETTABLEKS                       R18 R1 K22 ["Localization"]
       65 LOADK                            R20 K23 ["General"]
       66 LOADK                            R21 K24 ["InfoBannerText"]
       67 NAMECALL                         R18 R18 K25 ["getText"]
       69 CALL                             R18 3 1
       70 SETTABLEKS                       R18 R17 K17 ["Text"]
       72 CALL                             R15 2 -1
       73 RETURN                           R15 -1
       74 GETUPVAL                         R15 1
       75 GETTABLEKS                       R15 R15 K26 ["categoryIsPackage"]
       77 GETTABLEKS                       R16 R1 K14 ["categoryName"]
       79 CALL                             R15 1 1
       80 JUMPIFNOT                        R15 ; [+45]
       81 LENGTH                           R16 R5
       82 JUMPIFEQKN                       R16 K27 [0] ; [+43]
       84 NEWTABLE                         R16 0 0
       86 LOADN                            R17 1
       87 GETUPVAL                         R18 4
       88 GETTABLEKS                       R18 R18 K28 ["MaxPackageAssetIdsForHighestPermissionsRequest"]
       90 JUMPIFNOTLT                      R17 R18 ; [+20]
       92 GETTABLE                         R18 R5 R17
       93 JUMPIFEQKNIL                     R18 ; [+17]
       95 GETTABLE                         R18 R5 R17
       96 GETTABLEKS                       R20 R0 K0 ["props"]
       98 GETTABLEKS                       R20 R20 K29 ["currentUserPackagePermissions"]
      100 GETTABLE                         R19 R20 R18
      101 JUMPIF                           R19 ; [+7]
      102 FASTCALL2                        TABLE_INSERT R16 R18 ; [+5]
      104 MOVE                             R20 R16
      105 MOVE                             R21 R18
      106 GETIMPORT                        R19 K32 [table.insert]
      108 CALL                             R19 2 0
      109 ADDK                             R17 R17 K33 [1]
      110 JUMPBACK                         ; [-24]
      111 LENGTH                           R18 R16
      112 JUMPIFEQKN                       R18 K27 [0] ; [+13]
      114 GETTABLEKS                       R18 R0 K0 ["props"]
      116 GETTABLEKS                       R18 R18 K34 ["dispatchPostAssetCheckPermissions"]
      118 GETTABLEKS                       R19 R0 K0 ["props"]
      120 GETTABLEKS                       R19 R19 K35 ["Network"]
      122 GETTABLEKS                       R19 R19 K36 ["networkInterface"]
      124 MOVE                             R20 R16
      125 CALL                             R18 2 0
      126 GETUPVAL                         R16 1
      127 GETTABLEKS                       R16 R16 K37 ["categoryIsAudio"]
      129 GETTABLEKS                       R17 R1 K14 ["categoryName"]
      131 CALL                             R16 1 1
      132 JUMPIFNOT                        R16 ; [+42]
      133 GETUPVAL                         R16 5
      134 GETTABLEKS                       R17 R1 K4 ["assetIds"]
      136 NEWCLOSURE                       R18 P0
      137 CAPTURE                          VAL R1
      138 CALL                             R16 2 1
      139 GETUPVAL                         R17 6
      140 GETTABLEKS                       R17 R17 K38 ["Generator"]
      142 DUPTABLE                         R18 K45 [{["Assets"], ["CanInsertAsset"], ["FetchNextPage"], ["Loading"] = False, ["LogImpression"], ["OnAssetPreviewButtonClicked"], ["ParentAbsoluteSize"], ["Position"], ["Size"], ["TryInsert"], ["TryOpenAssetConfig"]}]
      143 SETTABLEKS                       R16 R18 K39 ["Assets"]
      145 SETTABLEKS                       R10 R18 K9 ["CanInsertAsset"]
      147 GETTABLEKS                       R19 R0 K46 ["requestNextPage"]
      149 SETTABLEKS                       R19 R18 K40 ["FetchNextPage"]
      151 GETTABLEKS                       R19 R0 K47 ["logImpression"]
      153 SETTABLEKS                       R19 R18 K43 ["LogImpression"]
      155 GETTABLEKS                       R19 R1 K10 ["OnAssetPreviewButtonClicked"]
      157 SETTABLEKS                       R19 R18 K10 ["OnAssetPreviewButtonClicked"]
      159 GETTABLEKS                       R19 R1 K44 ["ParentAbsoluteSize"]
      161 SETTABLEKS                       R19 R18 K44 ["ParentAbsoluteSize"]
      163 SETTABLEKS                       R7 R18 K6 ["Position"]
      165 SETTABLEKS                       R9 R18 K8 ["Size"]
      167 SETTABLEKS                       R12 R18 K11 ["TryInsert"]
      169 GETTABLEKS                       R19 R1 K12 ["TryOpenAssetConfig"]
      171 SETTABLEKS                       R19 R18 K12 ["TryOpenAssetConfig"]
      173 CALL                             R17 1 -1
      174 RETURN                           R17 -1
      175 GETUPVAL                         R16 7
      176 MOVE                             R17 R2
      177 CALL                             R16 1 1
      178 JUMPIFNOT                        R16 ; [+60]
      179 GETTABLEKS                       R16 R1 K48 ["layoutMode"]
      181 GETUPVAL                         R17 8
      182 GETTABLEKS                       R17 R17 K49 ["ListView"]
      184 JUMPIFNOTEQ                      R16 R17 ; [+54]
      186 JUMPIFNOT                        R14 ; [+52]
      187 GETUPVAL                         R16 5
      188 GETTABLEKS                       R17 R1 K4 ["assetIds"]
      190 NEWCLOSURE                       R18 P1
      191 CAPTURE                          VAL R1
      192 CALL                             R16 2 1
      193 GETUPVAL                         R17 2
      194 GETTABLEKS                       R17 R17 K16 ["createElement"]
      196 GETUPVAL                         R18 9
      197 DUPTABLE                         R19 K51 [{"Assets", "CanInsertAsset", "FetchNextPage", "LogImpression", "OnAssetPreviewButtonClicked", "OnSearchByCreator", "ParentAbsoluteSize", "Position", "Size", "TryInsert", "TryOpenAssetConfig"}]
      198 SETTABLEKS                       R16 R19 K39 ["Assets"]
      200 SETTABLEKS                       R10 R19 K9 ["CanInsertAsset"]
      202 GETTABLEKS                       R20 R0 K46 ["requestNextPage"]
      204 SETTABLEKS                       R20 R19 K40 ["FetchNextPage"]
      206 GETTABLEKS                       R20 R0 K47 ["logImpression"]
      208 SETTABLEKS                       R20 R19 K43 ["LogImpression"]
      210 GETTABLEKS                       R20 R1 K10 ["OnAssetPreviewButtonClicked"]
      212 SETTABLEKS                       R20 R19 K10 ["OnAssetPreviewButtonClicked"]
      214 GETUPVAL                         R21 10
      215 CALL                             R21 0 1
      216 JUMPIFNOT                        R21 ; [+3]
      217 GETTABLEKS                       R20 R1 K50 ["OnSearchByCreator"]
      219 JUMP                             ; [+1]
      220 LOADNIL                          R20
      221 SETTABLEKS                       R20 R19 K50 ["OnSearchByCreator"]
      223 GETTABLEKS                       R20 R1 K44 ["ParentAbsoluteSize"]
      225 SETTABLEKS                       R20 R19 K44 ["ParentAbsoluteSize"]
      227 SETTABLEKS                       R7 R19 K6 ["Position"]
      229 SETTABLEKS                       R9 R19 K8 ["Size"]
      231 SETTABLEKS                       R12 R19 K11 ["TryInsert"]
      233 GETTABLEKS                       R20 R1 K12 ["TryOpenAssetConfig"]
      235 SETTABLEKS                       R20 R19 K12 ["TryOpenAssetConfig"]
      237 CALL                             R17 2 -1
      238 RETURN                           R17 -1
      239 GETUPVAL                         R16 2
      240 GETTABLEKS                       R16 R16 K16 ["createElement"]
      242 GETUPVAL                         R17 11
      243 DUPTABLE                         R18 K58 [{"AssetIds", "AssetMap", "LayoutOrder", "Position", "RenderTopContent", "RequestNextPage", "Size", "CanInsertAsset", "LogAssetImpression", "OnAssetPreviewButtonClicked", "OnSearchByCreator", "ParentAbsolutePosition", "ParentSize", "TryInsert", "TryOpenAssetConfig"}]
      244 SETTABLEKS                       R5 R18 K52 ["AssetIds"]
      246 GETTABLEKS                       R19 R1 K59 ["idToAssetMap"]
      248 SETTABLEKS                       R19 R18 K53 ["AssetMap"]
      250 SETTABLEKS                       R6 R18 K5 ["LayoutOrder"]
      252 SETTABLEKS                       R7 R18 K6 ["Position"]
      254 SETTABLEKS                       R8 R18 K7 ["RenderTopContent"]
      256 GETTABLEKS                       R19 R0 K46 ["requestNextPage"]
      258 SETTABLEKS                       R19 R18 K54 ["RequestNextPage"]
      260 SETTABLEKS                       R9 R18 K8 ["Size"]
      262 SETTABLEKS                       R10 R18 K9 ["CanInsertAsset"]
      264 GETTABLEKS                       R19 R1 K55 ["LogAssetImpression"]
      266 SETTABLEKS                       R19 R18 K55 ["LogAssetImpression"]
      268 SETTABLEKS                       R11 R18 K10 ["OnAssetPreviewButtonClicked"]
      270 GETUPVAL                         R20 12
      271 CALL                             R20 0 1
      272 JUMPIFNOT                        R20 ; [+3]
      273 GETTABLEKS                       R19 R1 K50 ["OnSearchByCreator"]
      275 JUMP                             ; [+1]
      276 LOADNIL                          R19
      277 SETTABLEKS                       R19 R18 K50 ["OnSearchByCreator"]
      279 GETTABLEKS                       R19 R1 K56 ["ParentAbsolutePosition"]
      281 SETTABLEKS                       R19 R18 K56 ["ParentAbsolutePosition"]
      283 GETTABLEKS                       R19 R1 K44 ["ParentAbsoluteSize"]
      285 SETTABLEKS                       R19 R18 K57 ["ParentSize"]
      287 SETTABLEKS                       R12 R18 K11 ["TryInsert"]
      289 SETTABLEKS                       R13 R18 K12 ["TryOpenAssetConfig"]
      291 CALL                             R16 2 -1
      292 RETURN                           R16 -1

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
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K3 ["DEFAULT"]
       21 GETTABLEKS                       R4 R4 K4 ["name"]
       23 DUPTABLE                         R5 K11 [{"allAssetCount", "assetIds", "categoryName", "currentUserPackagePermissions", "idToAssetMap", "isLoading", "layoutMode"}]
       24 GETTABLEKS                       R7 R2 K12 ["idsToRender"]
       26 LENGTH                           R6 R7
       27 SETTABLEKS                       R6 R5 K5 ["allAssetCount"]
       29 GETTABLEKS                       R6 R2 K12 ["idsToRender"]
       31 JUMPIF                           R6 ; [+2]
       32 NEWTABLE                         R6 0 0
       34 SETTABLEKS                       R6 R5 K6 ["assetIds"]
       36 SETTABLEKS                       R4 R5 K2 ["categoryName"]
       38 GETTABLEKS                       R6 R0 K13 ["packages"]
       40 GETTABLEKS                       R6 R6 K14 ["permissionsTable"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R1 K8 ["LuauPolyfill"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R4 R4 K9 ["Array"]
       28 GETTABLEKS                       R4 R4 K10 ["map"]
       30 GETTABLEKS                       R5 R0 K11 ["Src"]
       32 GETTABLEKS                       R5 R5 K12 ["Util"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R5 K13 ["getStartupAssetId"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K11 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["ContextServices"]
       45 GETTABLEKS                       R8 R8 K15 ["IXPContext"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K11 ["Src"]
       52 GETTABLEKS                       R9 R9 K16 ["Types"]
       54 GETTABLEKS                       R9 R9 K17 ["Category"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K11 ["Src"]
       61 GETTABLEKS                       R10 R10 K16 ["Types"]
       63 GETTABLEKS                       R10 R10 K18 ["LayoutMode"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K11 ["Src"]
       70 GETTABLEKS                       R11 R11 K19 ["Components"]
       72 GETTABLEKS                       R11 R11 K20 ["AssetGrid"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K11 ["Src"]
       79 GETTABLEKS                       R12 R12 K19 ["Components"]
       81 GETTABLEKS                       R12 R12 K21 ["AssetConfiguration"]
       83 GETTABLEKS                       R12 R12 K22 ["Permissions"]
       85 GETTABLEKS                       R12 R12 K23 ["PermissionsConstants"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K11 ["Src"]
       92 GETTABLEKS                       R13 R13 K19 ["Components"]
       94 GETTABLEKS                       R13 R13 K24 ["AssetLogicWrapper"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K11 ["Src"]
      101 GETTABLEKS                       R14 R14 K19 ["Components"]
      103 GETTABLEKS                       R14 R14 K25 ["Audio"]
      105 GETTABLEKS                       R14 R14 K26 ["AudioScroller"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K11 ["Src"]
      112 GETTABLEKS                       R15 R15 K19 ["Components"]
      114 GETTABLEKS                       R15 R15 K27 ["AssetTable"]
      116 GETTABLEKS                       R15 R15 K27 ["AssetTable"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R16 R0 K11 ["Src"]
      123 GETTABLEKS                       R16 R16 K28 ["Models"]
      125 GETTABLEKS                       R16 R16 K29 ["AssetInfo"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K5 [require]
      130 GETTABLEKS                       R17 R0 K11 ["Src"]
      132 GETTABLEKS                       R17 R17 K19 ["Components"]
      134 GETTABLEKS                       R17 R17 K30 ["InfoBanner"]
      136 CALL                             R16 1 1
      137 GETIMPORT                        R17 K5 [require]
      139 GETTABLEKS                       R18 R0 K11 ["Src"]
      141 GETTABLEKS                       R18 R18 K16 ["Types"]
      143 GETTABLEKS                       R18 R18 K31 ["AssetLogicTypes"]
      145 CALL                             R17 1 1
      146 GETTABLEKS                       R18 R0 K11 ["Src"]
      148 GETTABLEKS                       R18 R18 K32 ["Actions"]
      150 GETIMPORT                        R19 K5 [require]
      152 GETTABLEKS                       R20 R18 K33 ["GetAssets"]
      154 CALL                             R19 1 1
      155 GETIMPORT                        R20 K5 [require]
      157 GETTABLEKS                       R21 R18 K34 ["SetAssetPreview"]
      159 CALL                             R20 1 1
      160 GETIMPORT                        R21 K5 [require]
      162 GETTABLEKS                       R22 R0 K11 ["Src"]
      164 GETTABLEKS                       R22 R22 K35 ["Thunks"]
      166 GETTABLEKS                       R22 R22 K36 ["GetAssetPreviewDataForStartup"]
      168 CALL                             R21 1 1
      169 GETIMPORT                        R22 K5 [require]
      171 GETTABLEKS                       R23 R1 K37 ["Framework"]
      173 CALL                             R22 1 1
      174 GETTABLEKS                       R23 R22 K14 ["ContextServices"]
      176 GETTABLEKS                       R24 R23 K38 ["withContext"]
      178 GETIMPORT                        R25 K5 [require]
      180 GETTABLEKS                       R26 R0 K11 ["Src"]
      182 GETTABLEKS                       R26 R26 K14 ["ContextServices"]
      184 GETTABLEKS                       R26 R26 K39 ["Settings"]
      186 CALL                             R25 1 1
      187 GETIMPORT                        R26 K5 [require]
      189 GETTABLEKS                       R27 R0 K11 ["Src"]
      191 GETTABLEKS                       R27 R27 K14 ["ContextServices"]
      193 GETTABLEKS                       R27 R27 K40 ["NetworkContext"]
      195 CALL                             R26 1 1
      196 GETIMPORT                        R27 K5 [require]
      198 GETTABLEKS                       R28 R0 K11 ["Src"]
      200 GETTABLEKS                       R28 R28 K41 ["Networking"]
      202 GETTABLEKS                       R28 R28 K42 ["Requests"]
      204 GETTABLEKS                       R28 R28 K43 ["NextPageRequest"]
      206 CALL                             R27 1 1
      207 GETIMPORT                        R28 K5 [require]
      209 GETTABLEKS                       R29 R0 K11 ["Src"]
      211 GETTABLEKS                       R29 R29 K41 ["Networking"]
      213 GETTABLEKS                       R29 R29 K42 ["Requests"]
      215 GETTABLEKS                       R29 R29 K44 ["PostAssetCheckPermissions"]
      217 CALL                             R28 1 1
      218 GETIMPORT                        R29 K5 [require]
      220 GETTABLEKS                       R30 R0 K11 ["Src"]
      222 GETTABLEKS                       R30 R30 K12 ["Util"]
      224 GETTABLEKS                       R30 R30 K45 ["SharedFlags"]
      226 GETTABLEKS                       R30 R30 K46 ["getIsIXPEnabledForListView"]
      228 CALL                             R29 1 1
      229 GETIMPORT                        R30 K5 [require]
      231 GETTABLEKS                       R31 R0 K11 ["Src"]
      233 GETTABLEKS                       R31 R31 K12 ["Util"]
      235 GETTABLEKS                       R31 R31 K45 ["SharedFlags"]
      237 GETTABLEKS                       R31 R31 K47 ["getFFlagToolboxEnableAssetRows"]
      239 CALL                             R30 1 1
      240 GETIMPORT                        R31 K5 [require]
      242 GETTABLEKS                       R32 R0 K11 ["Src"]
      244 GETTABLEKS                       R32 R32 K12 ["Util"]
      246 GETTABLEKS                       R32 R32 K45 ["SharedFlags"]
      248 GETTABLEKS                       R32 R32 K48 ["getFFlagToolboxFixInventoryCreatorFilter"]
      250 CALL                             R31 1 1
      251 GETIMPORT                        R32 K5 [require]
      253 GETTABLEKS                       R33 R0 K11 ["Src"]
      255 GETTABLEKS                       R33 R33 K12 ["Util"]
      257 GETTABLEKS                       R33 R33 K45 ["SharedFlags"]
      259 GETTABLEKS                       R33 R33 K49 ["getFFlagToolboxFixInventoryGridSearch"]
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
