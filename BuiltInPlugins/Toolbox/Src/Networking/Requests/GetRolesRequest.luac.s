PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        5 GETTABLEKS                       R1 R1 K1 ["isBundlesControllerEnabled"]
        7 JUMPIFNOT                        R1 ; [+37]
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
       27 CALL                             R4 0 1
       28 JUMPIFNOT                        R4 ; [+9]
       29 GETUPVAL                         R4 1
       30 GETUPVAL                         R6 2
       31 MOVE                             R7 R2
       32 MOVE                             R8 R3
       33 CALL                             R6 2 -1
       34 NAMECALL                         R4 R4 K4 ["dispatch"]
       36 CALL                             R4 -1 0
       37 JUMP                             ; [+7]
       38 GETUPVAL                         R4 1
       39 GETUPVAL                         R6 3
       40 MOVE                             R7 R2
       41 CALL                             R6 1 -1
       42 NAMECALL                         R4 R4 K4 ["dispatch"]
       44 CALL                             R4 -1 0
       45 GETUPVAL                         R2 4
       46 GETTABLEKS                       R2 R2 K5 ["resolve"]
       48 CALL                             R2 0 -1
       49 RETURN                           R2 -1

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
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          UPVAL U7
       46 DUPCLOSURE                       R3 K5 [PROTO_1]
       47 CAPTURE                          UPVAL U8
       48 GETUPVAL                         R4 9
       49 NAMECALL                         R4 R4 K6 ["getBundleMetadata"]
       51 CALL                             R4 1 1
       52 MOVE                             R6 R2
       53 MOVE                             R7 R3
       54 NAMECALL                         R4 R4 K7 ["andThen"]
       56 CALL                             R4 3 -1
       57 RETURN                           R4 -1

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
        1 JUMPIFNOT                        R1 ; [+42]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U0
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          UPVAL U8
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U9
       17 GETUPVAL                         R3 0
       18 GETUPVAL                         R6 10
       19 CALL                             R6 0 1
       20 JUMPIFNOT                        R6 ; [+4]
       21 GETUPVAL                         R5 11
       22 GETTABLEKS                       R5 R5 K0 ["MARKETPLACE_ACTION_TYPE_PUBLISH"]
       24 JUMP                             ; [+3]
       25 GETUPVAL                         R5 11
       26 GETTABLEKS                       R5 R5 K1 ["MARKETPLACE_ACTION_TYPE_UPLOAD"]
       28 NEWTABLE                         R6 0 1
       30 GETUPVAL                         R7 12
       31 GETTABLEKS                       R7 R7 K2 ["TARGET_TYPE_ASSET"]
       33 SETLIST                          R6 R7 1 [1]
       35 NAMECALL                         R3 R3 K3 ["getAllowedItemTypes"]
       37 CALL                             R3 3 1
       38 MOVE                             R5 R1
       39 MOVE                             R6 R2
       40 NAMECALL                         R3 R3 K4 ["andThen"]
       42 CALL                             R3 3 -1
       43 RETURN                           R3 -1
       44 GETUPVAL                         R1 7
       45 GETTABLEKS                       R1 R1 K5 ["reject"]
       47 CALL                             R1 0 -1
       48 RETURN                           R1 -1

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
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 RETURN                           R1 1

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
       46 GETTABLEKS                       R6 R6 K13 ["SetAllowedBundleTypes"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K5 [require]
       51 GETTABLEKS                       R7 R0 K9 ["Src"]
       53 GETTABLEKS                       R7 R7 K10 ["Actions"]
       55 GETTABLEKS                       R7 R7 K14 ["BundlesMetadataReceived"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K5 [require]
       60 GETTABLEKS                       R8 R0 K9 ["Src"]
       62 GETTABLEKS                       R8 R8 K15 ["Types"]
       64 GETTABLEKS                       R8 R8 K16 ["MarketplaceActionTypes"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K5 [require]
       69 GETTABLEKS                       R9 R0 K9 ["Src"]
       71 GETTABLEKS                       R9 R9 K15 ["Types"]
       73 GETTABLEKS                       R9 R9 K17 ["TargetTypes"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K5 [require]
       78 GETTABLEKS                       R10 R0 K9 ["Src"]
       80 GETTABLEKS                       R10 R10 K7 ["Util"]
       82 GETTABLEKS                       R10 R10 K18 ["DebugFlags"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K5 [require]
       87 GETTABLEKS                       R11 R0 K9 ["Src"]
       89 GETTABLEKS                       R11 R11 K7 ["Util"]
       91 GETTABLEKS                       R11 R11 K19 ["AssetConfigUtil"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K5 [require]
       96 GETTABLEKS                       R12 R0 K9 ["Src"]
       98 GETTABLEKS                       R12 R12 K7 ["Util"]
      100 GETTABLEKS                       R12 R12 K20 ["AssetConfigConstants"]
      102 CALL                             R11 1 1
      103 GETIMPORT                        R12 K5 [require]
      105 GETTABLEKS                       R13 R0 K9 ["Src"]
      107 GETTABLEKS                       R13 R13 K21 ["Flags"]
      109 GETTABLEKS                       R13 R13 K22 ["getFFlagEnableUploadingGroupBundles"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K5 [require]
      114 GETTABLEKS                       R14 R0 K9 ["Src"]
      116 GETTABLEKS                       R14 R14 K21 ["Flags"]
      118 GETTABLEKS                       R14 R14 K23 ["getFFlagUsePublishMarketplaceActionType"]
      120 CALL                             R13 1 1
      121 DUPCLOSURE                       R14 K24 [PROTO_5]
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R8
      134 RETURN                           R14 1
