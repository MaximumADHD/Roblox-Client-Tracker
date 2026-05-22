PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        5 GETTABLEKS                       R1 R1 K1 ["isBundlesControllerEnabled"]
        7 JUMPIFNOT                        R1 ; [+26]
        8 GETTABLEKS                       R2 R0 K0 ["responseBody"]
       10 JUMPIFNOT                        R2 ; [+4]
       11 GETTABLEKS                       R2 R0 K0 ["responseBody"]
       13 GETTABLEKS                       R2 R2 K2 ["allowedBundleTypeSettings"]
       15 GETTABLEKS                       R4 R0 K0 ["responseBody"]
       17 JUMPIFNOT                        R4 ; [+7]
       18 GETTABLEKS                       R4 R0 K0 ["responseBody"]
       20 GETTABLEKS                       R4 R4 K3 ["isGroupBundlesUploadEnabled"]
       22 JUMPIFNOT                        R4 ; [+2]
       23 LOADB                            R3 1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R3
       26 GETUPVAL                         R4 0
       27 GETUPVAL                         R6 1
       28 MOVE                             R7 R2
       29 MOVE                             R8 R3
       30 CALL                             R6 2 -1
       31 NAMECALL                         R4 R4 K4 ["dispatch"]
       33 CALL                             R4 -1 0
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R2 R2 K5 ["resolve"]
       37 CALL                             R2 0 -1
       38 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Lua toolbox: Could not get bundles metadata"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        4 JUMPIFNOT                        R2 ; [+26]
        5 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        7 GETTABLEKS                       R2 R2 K1 ["allowedAssetTypes"]
        9 JUMPIFNOT                        R2 ; [+21]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["filterAllowedAssetTypesForRelease"]
       13 GETTABLEKS                       R3 R0 K0 ["responseBody"]
       15 GETTABLEKS                       R3 R3 K1 ["allowedAssetTypes"]
       17 CALL                             R2 1 1
       18 MOVE                             R1 R2
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K3 ["populateAssetTypeInfoFromNetwork"]
       22 JUMPIFNOT                        R2 ; [+8]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K3 ["populateAssetTypeInfoFromNetwork"]
       26 GETTABLEKS                       R3 R0 K0 ["responseBody"]
       28 GETTABLEKS                       R3 R3 K1 ["allowedAssetTypes"]
       30 CALL                             R2 1 0
       31 GETUPVAL                         R2 2
       32 GETUPVAL                         R4 3
       33 MOVE                             R5 R1
       34 LOADNIL                          R6
       35 LOADNIL                          R7
       36 CALL                             R4 3 -1
       37 NAMECALL                         R2 R2 K4 ["dispatch"]
       39 CALL                             R2 -1 0
       40 NEWCLOSURE                       R2 P0
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U5
       44 DUPCLOSURE                       R3 K5 [PROTO_1]
       45 CAPTURE                          UPVAL U6
       46 GETUPVAL                         R4 7
       47 NAMECALL                         R4 R4 K6 ["getBundleMetadata"]
       49 CALL                             R4 1 1
       50 MOVE                             R6 R2
       51 MOVE                             R7 R3
       52 NAMECALL                         R4 R4 K7 ["andThen"]
       54 CALL                             R4 3 -1
       55 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Lua toolbox: Could not get roleset back-end data"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R1 K4 ["dispatch"]
       15 CALL                             R1 -1 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+40]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U0
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U7
       15 GETUPVAL                         R3 0
       16 GETUPVAL                         R6 8
       17 CALL                             R6 0 1
       18 JUMPIFNOT                        R6 ; [+4]
       19 GETUPVAL                         R5 9
       20 GETTABLEKS                       R5 R5 K0 ["MARKETPLACE_ACTION_TYPE_PUBLISH"]
       22 JUMP                             ; [+3]
       23 GETUPVAL                         R5 9
       24 GETTABLEKS                       R5 R5 K1 ["MARKETPLACE_ACTION_TYPE_UPLOAD"]
       26 NEWTABLE                         R6 0 1
       28 GETUPVAL                         R7 10
       29 GETTABLEKS                       R7 R7 K2 ["TARGET_TYPE_ASSET"]
       31 SETLIST                          R6 R7 1 [1]
       33 NAMECALL                         R3 R3 K3 ["getAllowedItemTypes"]
       35 CALL                             R3 3 1
       36 MOVE                             R5 R1
       37 MOVE                             R6 R2
       38 NAMECALL                         R3 R3 K4 ["andThen"]
       40 CALL                             R3 3 -1
       41 RETURN                           R3 -1
       42 GETUPVAL                         R1 5
       43 GETTABLEKS                       R1 R1 K5 ["reject"]
       45 CALL                             R1 0 -1
       46 RETURN                           R1 -1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Framework"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R2 R2 K7 ["Util"]
       20 GETTABLEKS                       R2 R2 K8 ["Promise"]
       22 GETIMPORT                        R3 K5 [require]
       24 GETTABLEKS                       R4 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R4 K10 ["Actions"]
       28 GETTABLEKS                       R4 R4 K11 ["NetworkError"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K5 [require]
       33 GETTABLEKS                       R5 R0 K9 ["Src"]
       35 GETTABLEKS                       R5 R5 K10 ["Actions"]
       37 GETTABLEKS                       R5 R5 K12 ["SetAllowedAssetTypes"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K5 [require]
       42 GETTABLEKS                       R6 R0 K9 ["Src"]
       44 GETTABLEKS                       R6 R6 K10 ["Actions"]
       46 GETTABLEKS                       R6 R6 K13 ["BundlesMetadataReceived"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K5 [require]
       51 GETTABLEKS                       R7 R0 K9 ["Src"]
       53 GETTABLEKS                       R7 R7 K14 ["Types"]
       55 GETTABLEKS                       R7 R7 K15 ["MarketplaceActionTypes"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K5 [require]
       60 GETTABLEKS                       R8 R0 K9 ["Src"]
       62 GETTABLEKS                       R8 R8 K14 ["Types"]
       64 GETTABLEKS                       R8 R8 K16 ["TargetTypes"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K5 [require]
       69 GETTABLEKS                       R9 R0 K9 ["Src"]
       71 GETTABLEKS                       R9 R9 K7 ["Util"]
       73 GETTABLEKS                       R9 R9 K17 ["DebugFlags"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K5 [require]
       78 GETTABLEKS                       R10 R0 K9 ["Src"]
       80 GETTABLEKS                       R10 R10 K7 ["Util"]
       82 GETTABLEKS                       R10 R10 K18 ["AssetConfigUtil"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K5 [require]
       87 GETTABLEKS                       R11 R0 K9 ["Src"]
       89 GETTABLEKS                       R11 R11 K7 ["Util"]
       91 GETTABLEKS                       R11 R11 K19 ["AssetConfigConstants"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K5 [require]
       96 GETTABLEKS                       R12 R0 K9 ["Src"]
       98 GETTABLEKS                       R12 R12 K20 ["Flags"]
      100 GETTABLEKS                       R12 R12 K21 ["getFFlagUsePublishMarketplaceActionType"]
      102 CALL                             R11 1 1
      103 DUPCLOSURE                       R12 K22 [PROTO_5]
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R7
      114 RETURN                           R12 1
