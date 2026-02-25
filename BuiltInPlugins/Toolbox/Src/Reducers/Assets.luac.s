PROTO_0:
        0 JUMPIF                           R1 ; [+10]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K0 ["shouldDebugWarnings"]
        4 CALL                             R4 0 1
        5 JUMPIFNOT                        R4 ; [+4]
        6 GETIMPORT                        R4 K2 [warn]
        8 LOADK                            R5 K3 ["Lua Toolbox: handleAssetsAddedToState() got assets = nil"]
        9 CALL                             R4 1 0
       10 RETURN                           R0 1
       11 NEWTABLE                         R4 0 0
       13 NEWTABLE                         R5 0 0
       15 DUPTABLE                         R6 K5 [{"Voting"}]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R7 R8 K6 ["None"]
       19 SETTABLEKS                       R7 R6 K4 ["Voting"]
       21 GETIMPORT                        R7 K8 [ipairs]
       23 MOVE                             R8 R1
       24 CALL                             R7 1 3
       25 FORGPREP_INEXT                   R7
       26 GETTABLEKS                       R13 R11 K9 ["Asset"]
       28 GETTABLEKS                       R12 R13 K10 ["Id"]
       30 LENGTH                           R14 R5
       31 ADDK                             R13 R14 K11 [1]
       32 GETTABLE                         R14 R4 R12
       33 JUMPIFNOTEQKNIL                  R14 ; [+46]
       35 GETTABLEKS                       R15 R0 K13 ["assetsReceived"]
       37 ORK                              R14 R15 K12 [0]
       38 ADD                              R15 R14 R13
       39 GETUPVAL                         R18 2
       40 GETTABLEKS                       R17 R18 K14 ["round"]
       42 GETUPVAL                         R20 3
       43 GETTABLEKS                       R19 R20 K15 ["TOOLBOX_ITEM_SEARCH_LIMIT"]
       45 DIV                              R18 R14 R19
       46 LOADN                            R19 0
       47 CALL                             R17 2 1
       48 ADDK                             R16 R17 K11 [1]
       49 GETTABLEKS                       R17 R11 K16 ["Context"]
       51 JUMPIF                           R17 ; [+2]
       52 NEWTABLE                         R17 0 0
       54 GETUPVAL                         R20 1
       55 GETTABLEKS                       R19 R20 K17 ["Dictionary"]
       57 GETTABLEKS                       R18 R19 K18 ["join"]
       59 MOVE                             R19 R17
       60 DUPTABLE                         R20 K22 [{"page", "pagePosition", "position"}]
       61 SETTABLEKS                       R16 R20 K19 ["page"]
       63 SETTABLEKS                       R13 R20 K20 ["pagePosition"]
       65 SETTABLEKS                       R15 R20 K21 ["position"]
       67 CALL                             R18 2 1
       68 SETTABLEKS                       R18 R11 K16 ["Context"]
       70 GETUPVAL                         R20 1
       71 GETTABLEKS                       R19 R20 K17 ["Dictionary"]
       73 GETTABLEKS                       R18 R19 K18 ["join"]
       75 MOVE                             R19 R11
       76 MOVE                             R20 R6
       77 CALL                             R18 2 1
       78 SETTABLE                         R18 R4 R12
       79 SETTABLE                         R12 R5 R13
       80 FORGLOOP                         R7 2 [inext] ; [-55]
       82 GETTABLEKS                       R9 R0 K23 ["totalAssets"]
       84 ORK                              R8 R9 K12 [0]
       85 ORK                              R9 R2 K12 [0]
       86 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       88 GETIMPORT                        R7 K26 [math.max]
       90 CALL                             R7 2 1
       91 GETTABLEKS                       R10 R0 K13 ["assetsReceived"]
       93 ORK                              R9 R10 K12 [0]
       94 LENGTH                           R10 R5
       95 ADD                              R8 R9 R10
       96 LOADB                            R9 0
       97 JUMPIFNOT                        R3 ; [+7]
       98 GETUPVAL                         R11 4
       99 GETTABLEKS                       R10 R11 K27 ["isNextPageAvailable"]
      101 MOVE                             R11 R3
      102 CALL                             R10 1 1
      103 NOT                              R9 R10
      104 JUMP                             ; [+23]
      105 LOADB                            R10 0
      106 JUMPIFNOTLE                      R7 R8 ; [+6]
      108 LENGTH                           R11 R1
      109 JUMPIFEQKN                       R11 K12 [0] ; [+2]
      111 LOADB                            R10 0 +1
      112 LOADB                            R10 1
      113 GETTABLEKS                       R11 R0 K28 ["hasReachedBottom"]
      115 JUMPIF                           R11 ; [+11]
      116 MOVE                             R11 R10
      117 JUMPIF                           R11 ; [+9]
      118 LOADB                            R11 0
      119 LENGTH                           R12 R5
      120 JUMPIFNOTEQKN                    R12 K12 [0] ; [+6]
      122 LOADN                            R12 0
      123 JUMPIFLT                         R12 R7 ; [+2]
      125 LOADB                            R11 0 +1
      126 LOADB                            R11 1
      127 MOVE                             R9 R11
      128 GETUPVAL                         R12 1
      129 GETTABLEKS                       R11 R12 K17 ["Dictionary"]
      131 GETTABLEKS                       R10 R11 K18 ["join"]
      133 MOVE                             R11 R0
      134 DUPTABLE                         R12 K32 [{"idToAssetMap", "idsToRender", "totalAssets", "assetsReceived", "hasReachedBottom", "currentCursor"}]
      135 GETUPVAL                         R15 1
      136 GETTABLEKS                       R14 R15 K17 ["Dictionary"]
      138 GETTABLEKS                       R13 R14 K18 ["join"]
      140 GETTABLEKS                       R14 R0 K29 ["idToAssetMap"]
      142 JUMPIF                           R14 ; [+2]
      143 NEWTABLE                         R14 0 0
      145 MOVE                             R15 R4
      146 CALL                             R13 2 1
      147 SETTABLEKS                       R13 R12 K29 ["idToAssetMap"]
      149 GETUPVAL                         R15 1
      150 GETTABLEKS                       R14 R15 K33 ["List"]
      152 GETTABLEKS                       R13 R14 K18 ["join"]
      154 GETTABLEKS                       R14 R0 K30 ["idsToRender"]
      156 JUMPIF                           R14 ; [+2]
      157 NEWTABLE                         R14 0 0
      159 MOVE                             R15 R5
      160 CALL                             R13 2 1
      161 SETTABLEKS                       R13 R12 K30 ["idsToRender"]
      163 SETTABLEKS                       R7 R12 K23 ["totalAssets"]
      165 SETTABLEKS                       R8 R12 K13 ["assetsReceived"]
      167 SETTABLEKS                       R9 R12 K28 ["hasReachedBottom"]
      169 MOVE                             R13 R3
      170 JUMPIF                           R13 ; [+4]
      171 GETUPVAL                         R14 4
      172 GETTABLEKS                       R13 R14 K34 ["createDefaultCursor"]
      174 CALL                             R13 0 1
      175 SETTABLEKS                       R13 R12 K31 ["currentCursor"]
      177 CALL                             R10 2 -1
      178 RETURN                           R10 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K8 [{"idsToRender", "totalAssets", "assetsReceived", "hasReachedBottom", "currentCursor", "manageableAssets"}]
        7 NEWTABLE                         R5 0 0
        9 SETTABLEKS                       R5 R4 K2 ["idsToRender"]
       11 LOADN                            R5 0
       12 SETTABLEKS                       R5 R4 K3 ["totalAssets"]
       14 LOADN                            R5 0
       15 SETTABLEKS                       R5 R4 K4 ["assetsReceived"]
       17 LOADB                            R5 0
       18 SETTABLEKS                       R5 R4 K5 ["hasReachedBottom"]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R5 R6 K9 ["createDefaultCursor"]
       23 CALL                             R5 0 1
       24 SETTABLEKS                       R5 R4 K6 ["currentCursor"]
       26 NEWTABLE                         R5 0 0
       28 SETTABLEKS                       R5 R4 K7 ["manageableAssets"]
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"isLoading"}]
        7 GETTABLEKS                       R5 R1 K2 ["isLoading"]
        9 SETTABLEKS                       R5 R4 K2 ["isLoading"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"cachedCreatorInfo"}]
        7 GETTABLEKS                       R5 R1 K2 ["cachedCreatorInfo"]
        9 SETTABLEKS                       R5 R4 K2 ["cachedCreatorInfo"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["idToAssetMap"]
        2 JUMPIFNOT                        R3 ; [+14]
        3 GETTABLEKS                       R4 R0 K0 ["idToAssetMap"]
        5 GETTABLEKS                       R5 R1 K1 ["assetId"]
        7 GETTABLE                         R3 R4 R5
        8 JUMPIFNOT                        R3 ; [+8]
        9 GETTABLEKS                       R4 R0 K0 ["idToAssetMap"]
       11 GETTABLEKS                       R5 R1 K1 ["assetId"]
       13 GETTABLE                         R3 R4 R5
       14 GETTABLEKS                       R2 R3 K2 ["Asset"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R2
       18 JUMPIFNOTEQKNIL                  R2 ; [+2]
       20 RETURN                           R0 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K3 ["Dictionary"]
       24 GETTABLEKS                       R3 R4 K4 ["join"]
       26 MOVE                             R4 R2
       27 DUPTABLE                         R5 K6 [{"AssetMediaIds"}]
       28 GETTABLEKS                       R6 R1 K7 ["assetMediaIds"]
       30 SETTABLEKS                       R6 R5 K5 ["AssetMediaIds"]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R5 R6 K3 ["Dictionary"]
       36 GETTABLEKS                       R4 R5 K4 ["join"]
       38 GETTABLEKS                       R6 R0 K0 ["idToAssetMap"]
       40 GETTABLEKS                       R7 R1 K1 ["assetId"]
       42 GETTABLE                         R5 R6 R7
       43 DUPTABLE                         R6 K8 [{"Asset"}]
       44 SETTABLEKS                       R3 R6 K2 ["Asset"]
       46 CALL                             R4 2 1
       47 NEWTABLE                         R5 0 0
       49 GETTABLEKS                       R6 R1 K1 ["assetId"]
       51 SETTABLE                         R4 R5 R6
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R7 R8 K3 ["Dictionary"]
       55 GETTABLEKS                       R6 R7 K4 ["join"]
       57 MOVE                             R7 R0
       58 DUPTABLE                         R8 K9 [{"idToAssetMap"}]
       59 GETUPVAL                         R11 0
       60 GETTABLEKS                       R10 R11 K3 ["Dictionary"]
       62 GETTABLEKS                       R9 R10 K4 ["join"]
       64 GETTABLEKS                       R10 R0 K0 ["idToAssetMap"]
       66 MOVE                             R11 R5
       67 CALL                             R9 2 1
       68 SETTABLEKS                       R9 R8 K0 ["idToAssetMap"]
       70 CALL                             R6 2 -1
       71 RETURN                           R6 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["assets"]
        4 GETTABLEKS                       R5 R1 K1 ["totalResults"]
        6 GETTABLEKS                       R6 R1 K2 ["cursor"]
        8 CALL                             R2 4 -1
        9 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K5 [{"isPreviewing", "previewAssetId", "previewSwimlaneName"}]
        7 GETTABLEKS                       R5 R1 K2 ["isPreviewing"]
        9 SETTABLEKS                       R5 R4 K2 ["isPreviewing"]
       11 GETTABLEKS                       R5 R1 K3 ["previewAssetId"]
       13 SETTABLEKS                       R5 R4 K3 ["previewAssetId"]
       15 GETTABLEKS                       R6 R1 K4 ["previewSwimlaneName"]
       17 JUMPIFNOT                        R6 ; [+3]
       18 GETTABLEKS                       R5 R1 K4 ["previewSwimlaneName"]
       20 JUMP                             ; [+3]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K6 ["None"]
       24 SETTABLEKS                       R5 R4 K4 ["previewSwimlaneName"]
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"previewModel"}]
        7 GETTABLEKS                       R5 R1 K2 ["previewModel"]
        9 SETTABLEKS                       R5 R4 K2 ["previewModel"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"previewModel", "previewPluginData"}]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K5 ["None"]
       10 SETTABLEKS                       R5 R4 K2 ["previewModel"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K5 ["None"]
       15 SETTABLEKS                       R5 R4 K3 ["previewPluginData"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["canManage"]
        2 GETTABLEKS                       R3 R1 K1 ["assetId"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["Dictionary"]
        7 GETTABLEKS                       R4 R5 K3 ["join"]
        9 GETTABLEKS                       R5 R0 K4 ["manageableAssets"]
       11 NEWTABLE                         R6 1 0
       13 FASTCALL1                        TOSTRING R3 ; [+3]
       14 MOVE                             R8 R3
       15 GETIMPORT                        R7 K6 [tostring]
       17 CALL                             R7 1 1
       18 SETTABLE                         R2 R6 R7
       19 CALL                             R4 2 1
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K2 ["Dictionary"]
       23 GETTABLEKS                       R5 R6 K3 ["join"]
       25 MOVE                             R6 R0
       26 DUPTABLE                         R7 K7 [{"manageableAssets"}]
       27 SETTABLEKS                       R4 R7 K4 ["manageableAssets"]
       29 CALL                             R5 2 -1
       30 RETURN                           R5 -1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"previewPluginData"}]
        7 GETTABLEKS                       R5 R1 K4 ["pluginData"]
        9 SETTABLEKS                       R5 R4 K2 ["previewPluginData"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"mostRecentAssetInsertTime"}]
        7 GETTABLEKS                       R5 R1 K2 ["mostRecentAssetInsertTime"]
        9 SETTABLEKS                       R5 R4 K2 ["mostRecentAssetInsertTime"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K5 [{"creatingUniverseId", "creatingUniverseName", "creatingUniverseRootPlaceId"}]
        7 GETTABLEKS                       R5 R1 K2 ["creatingUniverseId"]
        9 SETTABLEKS                       R5 R4 K2 ["creatingUniverseId"]
       11 GETTABLEKS                       R5 R1 K3 ["creatingUniverseName"]
       13 SETTABLEKS                       R5 R4 K3 ["creatingUniverseName"]
       15 GETTABLEKS                       R5 R1 K4 ["creatingUniverseRootPlaceId"]
       17 SETTABLEKS                       R5 R4 K4 ["creatingUniverseRootPlaceId"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"codeSummaryMap"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 MOVE                             R6 R0
       13 NEWTABLE                         R7 1 0
       15 GETTABLEKS                       R9 R1 K4 ["assetId"]
       17 FASTCALL1                        TOSTRING R9 ; [+2]
       18 GETIMPORT                        R8 K6 [tostring]
       20 CALL                             R8 1 1
       21 GETTABLEKS                       R9 R1 K7 ["codeSummary"]
       23 SETTABLE                         R9 R7 R8
       24 CALL                             R5 2 1
       25 SETTABLEKS                       R5 R4 K2 ["codeSummaryMap"]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["idToAssetMap"]
        2 JUMPIFNOT                        R3 ; [+12]
        3 GETTABLEKS                       R4 R0 K0 ["idToAssetMap"]
        5 GETTABLEKS                       R5 R1 K1 ["assetId"]
        7 GETTABLE                         R3 R4 R5
        8 JUMPIFNOT                        R3 ; [+6]
        9 GETTABLEKS                       R3 R0 K0 ["idToAssetMap"]
       11 GETTABLEKS                       R4 R1 K1 ["assetId"]
       13 GETTABLE                         R2 R3 R4
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 JUMPIFNOT                        R2 ; [+26]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K2 ["Dictionary"]
       20 GETTABLEKS                       R3 R4 K3 ["join"]
       22 MOVE                             R4 R0
       23 DUPTABLE                         R5 K4 [{"idToAssetMap"}]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R7 R8 K2 ["Dictionary"]
       27 GETTABLEKS                       R6 R7 K3 ["join"]
       29 GETTABLEKS                       R7 R0 K0 ["idToAssetMap"]
       31 NEWTABLE                         R8 1 0
       33 GETTABLEKS                       R9 R1 K1 ["assetId"]
       35 GETTABLEKS                       R10 R1 K5 ["assetData"]
       37 SETTABLE                         R10 R8 R9
       38 CALL                             R6 2 1
       39 SETTABLEKS                       R6 R5 K0 ["idToAssetMap"]
       41 CALL                             R3 2 -1
       42 RETURN                           R3 -1
       43 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Rodux"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R5 R0 K8 ["Src"]
       23 GETTABLEKS                       R4 R5 K9 ["Util"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R4 K10 ["Constants"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R7 R4 K11 ["DebugFlags"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R8 R4 K12 ["PagedRequestCursor"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R1 K13 ["Framework"]
       44 CALL                             R8 1 1
       45 GETTABLEKS                       R10 R8 K9 ["Util"]
       47 GETTABLEKS                       R9 R10 K14 ["Math"]
       49 GETTABLEKS                       R11 R0 K8 ["Src"]
       51 GETTABLEKS                       R10 R11 K15 ["Actions"]
       53 GETIMPORT                        R11 K5 [require]
       55 GETTABLEKS                       R12 R10 K16 ["ClearAssets"]
       57 CALL                             R11 1 1
       58 GETIMPORT                        R12 K5 [require]
       60 GETTABLEKS                       R15 R0 K8 ["Src"]
       62 GETTABLEKS                       R14 R15 K15 ["Actions"]
       64 GETTABLEKS                       R13 R14 K17 ["SetAssetMediaIds"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K5 [require]
       69 GETTABLEKS                       R14 R10 K18 ["GetAssets"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K5 [require]
       74 GETTABLEKS                       R15 R10 K19 ["SetLoading"]
       76 CALL                             R14 1 1
       77 GETIMPORT                        R15 K5 [require]
       79 GETTABLEKS                       R16 R10 K20 ["SetCachedCreatorInfo"]
       81 CALL                             R15 1 1
       82 GETIMPORT                        R16 K5 [require]
       84 GETTABLEKS                       R17 R10 K21 ["SetAssetPreview"]
       86 CALL                             R16 1 1
       87 GETIMPORT                        R17 K5 [require]
       89 GETTABLEKS                       R18 R10 K22 ["SetPreviewModel"]
       91 CALL                             R17 1 1
       92 GETIMPORT                        R18 K5 [require]
       94 GETTABLEKS                       R19 R10 K23 ["ClearPreview"]
       96 CALL                             R18 1 1
       97 GETIMPORT                        R19 K5 [require]
       99 GETTABLEKS                       R20 R10 K24 ["SetCanManageAsset"]
      101 CALL                             R19 1 1
      102 GETIMPORT                        R20 K5 [require]
      104 GETTABLEKS                       R21 R10 K25 ["SetCodeSummaryForAsset"]
      106 CALL                             R20 1 1
      107 GETIMPORT                        R21 K5 [require]
      109 GETTABLEKS                       R22 R10 K26 ["SetPluginData"]
      111 CALL                             R21 1 1
      112 GETIMPORT                        R22 K5 [require]
      114 GETTABLEKS                       R23 R10 K27 ["SetMostRecentAssetInsertTime"]
      116 CALL                             R22 1 1
      117 GETIMPORT                        R23 K5 [require]
      119 GETTABLEKS                       R24 R10 K28 ["GetAssetContentAttributionInfo"]
      121 CALL                             R23 1 1
      122 GETIMPORT                        R24 K5 [require]
      124 GETTABLEKS                       R27 R0 K8 ["Src"]
      126 GETTABLEKS                       R26 R27 K15 ["Actions"]
      128 GETTABLEKS                       R25 R26 K29 ["UpdateAssetData"]
      130 CALL                             R24 1 1
      131 GETIMPORT                        R25 K5 [require]
      133 GETTABLEKS                       R29 R0 K8 ["Src"]
      135 GETTABLEKS                       R28 R29 K9 ["Util"]
      137 GETTABLEKS                       R27 R28 K30 ["SharedFlags"]
      139 GETTABLEKS                       R26 R27 K31 ["getFFlagToolboxCodeUnderstandingSummary"]
      141 CALL                             R25 1 1
      142 DUPCLOSURE                       R26 K32 [PROTO_0]
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R7
      148 GETTABLEKS                       R27 R3 K33 ["createReducer"]
      150 DUPTABLE                         R28 K51 [{"idToAssetMap", "idsToRender", "isLoading", "totalAssets", "assetsReceived", "hasReachedBottom", "currentCursor", "previewModel", "previewAssetId", "previewSwimlaneName", "isPreviewing", "mostRecentAssetInsertTime", "manageableAssets", "previewPluginData", "creatingUniverseName", "creatingUniverseRootPlaceId", "codeSummaryMap"}]
      151 NEWTABLE                         R29 0 0
      153 SETTABLEKS                       R29 R28 K34 ["idToAssetMap"]
      155 NEWTABLE                         R29 0 0
      157 SETTABLEKS                       R29 R28 K35 ["idsToRender"]
      159 LOADB                            R29 1
      160 SETTABLEKS                       R29 R28 K36 ["isLoading"]
      162 LOADN                            R29 0
      163 SETTABLEKS                       R29 R28 K37 ["totalAssets"]
      165 LOADN                            R29 0
      166 SETTABLEKS                       R29 R28 K38 ["assetsReceived"]
      168 LOADB                            R29 0
      169 SETTABLEKS                       R29 R28 K39 ["hasReachedBottom"]
      171 GETTABLEKS                       R29 R7 K52 ["createDefaultCursor"]
      173 CALL                             R29 0 1
      174 SETTABLEKS                       R29 R28 K40 ["currentCursor"]
      176 LOADNIL                          R29
      177 SETTABLEKS                       R29 R28 K41 ["previewModel"]
      179 LOADNIL                          R29
      180 SETTABLEKS                       R29 R28 K42 ["previewAssetId"]
      182 LOADNIL                          R29
      183 SETTABLEKS                       R29 R28 K43 ["previewSwimlaneName"]
      185 LOADB                            R29 0
      186 SETTABLEKS                       R29 R28 K44 ["isPreviewing"]
      188 LOADN                            R29 0
      189 SETTABLEKS                       R29 R28 K45 ["mostRecentAssetInsertTime"]
      191 NEWTABLE                         R29 0 0
      193 SETTABLEKS                       R29 R28 K46 ["manageableAssets"]
      195 LOADNIL                          R29
      196 SETTABLEKS                       R29 R28 K47 ["previewPluginData"]
      198 LOADNIL                          R29
      199 SETTABLEKS                       R29 R28 K48 ["creatingUniverseName"]
      201 LOADNIL                          R29
      202 SETTABLEKS                       R29 R28 K49 ["creatingUniverseRootPlaceId"]
      204 MOVE                             R30 R25
      205 CALL                             R30 0 1
      206 JUMPIFNOT                        R30 ; [+3]
      207 NEWTABLE                         R29 0 0
      209 JUMP                             ; [+1]
      210 LOADNIL                          R29
      211 SETTABLEKS                       R29 R28 K50 ["codeSummaryMap"]
      213 NEWTABLE                         R29 16 0
      215 GETTABLEKS                       R30 R11 K53 ["name"]
      217 DUPCLOSURE                       R31 K54 [PROTO_1]
      218 CAPTURE                          VAL R2
      219 CAPTURE                          VAL R7
      220 SETTABLE                         R31 R29 R30
      221 GETTABLEKS                       R30 R14 K53 ["name"]
      223 DUPCLOSURE                       R31 K55 [PROTO_2]
      224 CAPTURE                          VAL R2
      225 SETTABLE                         R31 R29 R30
      226 GETTABLEKS                       R30 R15 K53 ["name"]
      228 DUPCLOSURE                       R31 K56 [PROTO_3]
      229 CAPTURE                          VAL R2
      230 SETTABLE                         R31 R29 R30
      231 GETTABLEKS                       R30 R12 K53 ["name"]
      233 DUPCLOSURE                       R31 K57 [PROTO_4]
      234 CAPTURE                          VAL R2
      235 SETTABLE                         R31 R29 R30
      236 GETTABLEKS                       R30 R13 K53 ["name"]
      238 DUPCLOSURE                       R31 K58 [PROTO_5]
      239 CAPTURE                          VAL R26
      240 SETTABLE                         R31 R29 R30
      241 GETTABLEKS                       R30 R16 K53 ["name"]
      243 DUPCLOSURE                       R31 K59 [PROTO_6]
      244 CAPTURE                          VAL R2
      245 SETTABLE                         R31 R29 R30
      246 GETTABLEKS                       R30 R17 K53 ["name"]
      248 DUPCLOSURE                       R31 K60 [PROTO_7]
      249 CAPTURE                          VAL R2
      250 SETTABLE                         R31 R29 R30
      251 GETTABLEKS                       R30 R18 K53 ["name"]
      253 DUPCLOSURE                       R31 K61 [PROTO_8]
      254 CAPTURE                          VAL R2
      255 SETTABLE                         R31 R29 R30
      256 GETTABLEKS                       R30 R19 K53 ["name"]
      258 DUPCLOSURE                       R31 K62 [PROTO_9]
      259 CAPTURE                          VAL R2
      260 SETTABLE                         R31 R29 R30
      261 GETTABLEKS                       R30 R21 K53 ["name"]
      263 DUPCLOSURE                       R31 K63 [PROTO_10]
      264 CAPTURE                          VAL R2
      265 SETTABLE                         R31 R29 R30
      266 GETTABLEKS                       R30 R22 K53 ["name"]
      268 DUPCLOSURE                       R31 K64 [PROTO_11]
      269 CAPTURE                          VAL R2
      270 SETTABLE                         R31 R29 R30
      271 GETTABLEKS                       R30 R23 K53 ["name"]
      273 DUPCLOSURE                       R31 K65 [PROTO_12]
      274 CAPTURE                          VAL R2
      275 SETTABLE                         R31 R29 R30
      276 GETTABLEKS                       R30 R20 K53 ["name"]
      278 MOVE                             R32 R25
      279 CALL                             R32 0 1
      280 JUMPIFNOT                        R32 ; [+3]
      281 DUPCLOSURE                       R31 K66 [PROTO_13]
      282 CAPTURE                          VAL R2
      283 JUMP                             ; [+1]
      284 LOADNIL                          R31
      285 SETTABLE                         R31 R29 R30
      286 GETTABLEKS                       R30 R24 K53 ["name"]
      288 DUPCLOSURE                       R31 K67 [PROTO_14]
      289 CAPTURE                          VAL R2
      290 SETTABLE                         R31 R29 R30
      291 CALL                             R27 2 -1
      292 RETURN                           R27 -1
