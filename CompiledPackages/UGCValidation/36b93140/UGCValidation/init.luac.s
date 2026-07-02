PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["instances"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["instances required in validationContext for validateWithContext"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R3 R0 K4 ["assetTypeEnum"]
       14 JUMPIFNOTEQKNIL                  R3 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       20 LOADK                            R3 K5 ["assetTypeEnum required in validationContext for validateWithContext"]
       21 GETIMPORT                        R1 K3 [assert]
       23 CALL                             R1 2 0
       24 GETTABLEKS                       R1 R0 K0 ["instances"]
       26 GETTABLEKS                       R2 R0 K6 ["isServer"]
       28 GETTABLEKS                       R3 R0 K4 ["assetTypeEnum"]
       30 GETTABLEKS                       R4 R0 K7 ["allowEditableInstances"]
       32 GETIMPORT                        R5 K9 [tick]
       34 CALL                             R5 0 1
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K10 ["setMetadata"]
       38 DUPTABLE                         R7 K14 [{["entrypoint"] = "validate", ["assetType"], ["isServer"]}]
       39 GETTABLEKS                       R8 R3 K15 ["Name"]
       41 SETTABLEKS                       R8 R7 K13 ["assetType"]
       43 SETTABLEKS                       R2 R7 K6 ["isServer"]
       45 CALL                             R6 1 0
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K16 ["processAll"]
       49 MOVE                             R7 R1
       50 MOVE                             R8 R4
       51 CALL                             R6 2 2
       52 JUMPIF                           R6 ; [+7]
       53 JUMPIFNOT                        R2 ; [+5]
       54 GETIMPORT                        R8 K18 [error]
       56 GETTABLEN                        R9 R7 1
       57 CALL                             R8 1 0
       58 JUMP                             ; [+1]
       59 RETURN                           R6 2
       60 GETTABLEKS                       R8 R7 K19 ["editableMeshes"]
       62 SETTABLEKS                       R8 R0 K19 ["editableMeshes"]
       64 GETTABLEKS                       R8 R7 K20 ["editableImages"]
       66 SETTABLEKS                       R8 R0 K20 ["editableImages"]
       68 GETIMPORT                        R8 K9 [tick]
       70 CALL                             R8 0 1
       71 SETTABLEKS                       R8 R0 K21 ["lastTickSeconds"]
       73 GETTABLEKS                       R8 R0 K22 ["requireAllFolders"]
       75 JUMPIFNOTEQKNIL                  R8 ; [+4]
       77 LOADB                            R8 1
       78 SETTABLEKS                       R8 R0 K22 ["requireAllFolders"]
       80 GETUPVAL                         R8 2
       81 MOVE                             R9 R0
       82 CALL                             R8 1 2
       83 GETUPVAL                         R10 3
       84 GETTABLEKS                       R11 R0 K19 ["editableMeshes"]
       86 GETTABLEKS                       R12 R0 K20 ["editableImages"]
       88 CALL                             R10 2 0
       89 JUMPIFNOT                        R8 ; [+15]
       90 GETUPVAL                         R10 0
       91 GETTABLEKS                       R10 R10 K23 ["recordScriptTime"]
       93 GETIMPORT                        R11 K25 [script]
       95 GETTABLEKS                       R11 R11 K15 ["Name"]
       97 MOVE                             R12 R5
       98 MOVE                             R13 R0
       99 CALL                             R10 3 0
      100 GETUPVAL                         R10 0
      101 GETTABLEKS                       R10 R10 K26 ["reportScriptTimes"]
      103 MOVE                             R11 R0
      104 CALL                             R10 1 0
      105 GETUPVAL                         R10 0
      106 GETTABLEKS                       R10 R10 K27 ["reportCounter"]
      108 MOVE                             R11 R8
      109 GETIMPORT                        R13 K31 [Enum.AssetType.DynamicHead]
      111 JUMPIFNOTEQ                      R3 R13 ; [+3]
      113 LOADK                            R12 K32 ["Head"]
      114 JUMP                             ; [+1]
      115 LOADK                            R12 K33 ["BodyPart"]
      116 MOVE                             R13 R0
      117 CALL                             R10 3 0
      118 RETURN                           R8 2

PROTO_1:
        0 GETIMPORT                        R12 K1 [tick]
        2 CALL                             R12 0 1
        3 GETUPVAL                         R13 0
        4 GETTABLEKS                       R13 R13 K2 ["setMetadata"]
        6 DUPTABLE                         R14 K7 [{["entrypoint"] = "validate", ["assetType"], ["isServer"]}]
        7 GETTABLEKS                       R15 R1 K8 ["Name"]
        9 SETTABLEKS                       R15 R14 K5 ["assetType"]
       11 SETTABLEKS                       R2 R14 K6 ["isServer"]
       13 CALL                             R13 1 0
       14 GETUPVAL                         R13 1
       15 GETTABLEKS                       R13 R13 K9 ["processAll"]
       17 MOVE                             R14 R0
       18 MOVE                             R15 R7
       19 CALL                             R13 2 2
       20 JUMPIF                           R13 ; [+7]
       21 JUMPIFNOT                        R2 ; [+5]
       22 GETIMPORT                        R15 K11 [error]
       24 GETTABLEN                        R16 R14 1
       25 CALL                             R15 1 0
       26 JUMP                             ; [+1]
       27 RETURN                           R13 2
       28 DUPTABLE                         R15 K28 [{["instances"], ["assetTypeEnum"], ["allowUnreviewedAssets"], ["restrictedUserIds"], ["isServer"], ["token"], ["universeId"], ["isAsync"] = False, ["allowEditableInstances"], ["bypassFlags"], ["validateMeshPartAccessories"], ["lastTickSeconds"], ["shouldYield"], ["editableMeshes"], ["editableImages"], ["requireAllFolders"]}]
       29 SETTABLEKS                       R0 R15 K12 ["instances"]
       31 SETTABLEKS                       R1 R15 K13 ["assetTypeEnum"]
       33 SETTABLEKS                       R3 R15 K14 ["allowUnreviewedAssets"]
       35 SETTABLEKS                       R4 R15 K15 ["restrictedUserIds"]
       37 SETTABLEKS                       R2 R15 K6 ["isServer"]
       39 SETTABLEKS                       R5 R15 K16 ["token"]
       41 SETTABLEKS                       R6 R15 K17 ["universeId"]
       43 SETTABLEKS                       R7 R15 K20 ["allowEditableInstances"]
       45 SETTABLEKS                       R8 R15 K21 ["bypassFlags"]
       47 JUMPIFEQKNIL                     R10 ; [+3]
       49 MOVE                             R16 R10
       50 JUMP                             ; [+1]
       51 LOADB                            R16 1
       52 SETTABLEKS                       R16 R15 K22 ["validateMeshPartAccessories"]
       54 GETIMPORT                        R16 K1 [tick]
       56 CALL                             R16 0 1
       57 SETTABLEKS                       R16 R15 K23 ["lastTickSeconds"]
       59 SETTABLEKS                       R9 R15 K24 ["shouldYield"]
       61 GETTABLEKS                       R16 R14 K25 ["editableMeshes"]
       63 SETTABLEKS                       R16 R15 K25 ["editableMeshes"]
       65 GETTABLEKS                       R16 R14 K26 ["editableImages"]
       67 SETTABLEKS                       R16 R15 K26 ["editableImages"]
       69 JUMPIFEQKNIL                     R11 ; [+3]
       71 MOVE                             R16 R11
       72 JUMP                             ; [+1]
       73 LOADB                            R16 1
       74 SETTABLEKS                       R16 R15 K27 ["requireAllFolders"]
       76 GETUPVAL                         R16 2
       77 MOVE                             R17 R15
       78 CALL                             R16 1 2
       79 GETUPVAL                         R18 3
       80 GETTABLEKS                       R19 R15 K25 ["editableMeshes"]
       82 GETTABLEKS                       R20 R15 K26 ["editableImages"]
       84 CALL                             R18 2 0
       85 JUMPIFNOT                        R16 ; [+15]
       86 GETUPVAL                         R18 0
       87 GETTABLEKS                       R18 R18 K29 ["recordScriptTime"]
       89 GETIMPORT                        R19 K31 [script]
       91 GETTABLEKS                       R19 R19 K8 ["Name"]
       93 MOVE                             R20 R12
       94 MOVE                             R21 R15
       95 CALL                             R18 3 0
       96 GETUPVAL                         R18 0
       97 GETTABLEKS                       R18 R18 K32 ["reportScriptTimes"]
       99 MOVE                             R19 R15
      100 CALL                             R18 1 0
      101 GETUPVAL                         R18 0
      102 GETTABLEKS                       R18 R18 K33 ["reportCounter"]
      104 MOVE                             R19 R16
      105 GETIMPORT                        R21 K37 [Enum.AssetType.DynamicHead]
      107 JUMPIFNOTEQ                      R1 R21 ; [+3]
      109 LOADK                            R20 K38 ["Head"]
      110 JUMP                             ; [+1]
      111 LOADK                            R20 K39 ["BodyPart"]
      112 MOVE                             R21 R15
      113 CALL                             R18 3 0
      114 RETURN                           R16 2

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 GETUPVAL                         R0 3
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["editableMeshes"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["editableImages"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["setMetadata"]
        3 DUPTABLE                         R7 K5 [{["entrypoint"] = "validateAsync", ["assetType"], ["isServer"]}]
        4 GETTABLEKS                       R8 R1 K6 ["Name"]
        6 SETTABLEKS                       R8 R7 K3 ["assetType"]
        8 SETTABLEKS                       R3 R7 K4 ["isServer"]
       10 CALL                             R6 1 0
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K7 ["processAll"]
       14 MOVE                             R7 R0
       15 CALL                             R6 1 2
       16 JUMPIF                           R6 ; [+10]
       17 JUMPIFNOT                        R3 ; [+5]
       18 GETIMPORT                        R8 K9 [error]
       20 GETTABLEN                        R9 R7 1
       21 CALL                             R8 1 0
       22 JUMP                             ; [+4]
       23 MOVE                             R8 R2
       24 MOVE                             R9 R6
       25 MOVE                             R10 R7
       26 CALL                             R8 2 0
       27 DUPTABLE                         R8 K22 [{["instances"], ["assetTypeEnum"], ["allowUnreviewedAssets"], ["restrictedUserIds"], ["isServer"], ["token"] = "", ["isAsync"] = True, ["validateMeshPartAccessories"] = False, ["editableMeshes"], ["editableImages"]}]
       28 SETTABLEKS                       R0 R8 K10 ["instances"]
       30 SETTABLEKS                       R1 R8 K11 ["assetTypeEnum"]
       32 SETTABLEKS                       R4 R8 K12 ["allowUnreviewedAssets"]
       34 SETTABLEKS                       R5 R8 K13 ["restrictedUserIds"]
       36 SETTABLEKS                       R3 R8 K4 ["isServer"]
       38 GETTABLEKS                       R9 R7 K20 ["editableMeshes"]
       40 SETTABLEKS                       R9 R8 K20 ["editableMeshes"]
       42 GETTABLEKS                       R9 R7 K21 ["editableImages"]
       44 SETTABLEKS                       R9 R8 K21 ["editableImages"]
       46 GETIMPORT                        R9 K25 [coroutine.wrap]
       48 NEWCLOSURE                       R10 P0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          VAL R8
       52 CAPTURE                          UPVAL U3
       53 CALL                             R9 1 1
       54 CALL                             R9 0 0
       55 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["setMetadata"]
        3 DUPTABLE                         R6 K5 [{["entrypoint"] = "validateMeshPartFormat", ["assetType"], ["isServer"]}]
        4 GETTABLEKS                       R7 R1 K6 ["Name"]
        6 SETTABLEKS                       R7 R6 K3 ["assetType"]
        8 SETTABLEKS                       R2 R6 K4 ["isServer"]
       10 CALL                             R5 1 0
       11 GETIMPORT                        R7 K10 [Enum.AssetType.DynamicHead]
       13 JUMPIFEQ                         R7 R1 ; [+2]
       15 LOADB                            R6 0 +1
       16 LOADB                            R6 1
       17 FASTCALL1                        ASSERT R6 ; [+2]
       18 GETIMPORT                        R5 K12 [assert]
       20 CALL                             R5 1 0
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K13 ["processAll"]
       24 MOVE                             R6 R0
       25 CALL                             R5 1 2
       26 JUMPIF                           R5 ; [+7]
       27 JUMPIFNOT                        R2 ; [+5]
       28 GETIMPORT                        R7 K15 [error]
       30 GETTABLEN                        R8 R6 1
       31 CALL                             R7 1 0
       32 JUMP                             ; [+1]
       33 RETURN                           R5 2
       34 DUPTABLE                         R7 K24 [{["instances"], ["assetTypeEnum"], ["allowUnreviewedAssets"], ["restrictedUserIds"], ["isServer"], ["validateMeshPartAccessories"] = False, ["editableMeshes"], ["editableImages"]}]
       35 SETTABLEKS                       R0 R7 K16 ["instances"]
       37 SETTABLEKS                       R1 R7 K17 ["assetTypeEnum"]
       39 SETTABLEKS                       R3 R7 K18 ["allowUnreviewedAssets"]
       41 SETTABLEKS                       R4 R7 K19 ["restrictedUserIds"]
       43 SETTABLEKS                       R2 R7 K4 ["isServer"]
       45 GETTABLEKS                       R8 R6 K22 ["editableMeshes"]
       47 SETTABLEKS                       R8 R7 K22 ["editableMeshes"]
       49 GETTABLEKS                       R8 R6 K23 ["editableImages"]
       51 SETTABLEKS                       R8 R7 K23 ["editableImages"]
       53 GETUPVAL                         R8 2
       54 MOVE                             R9 R7
       55 CALL                             R8 1 2
       56 GETUPVAL                         R10 3
       57 GETTABLEKS                       R11 R7 K22 ["editableMeshes"]
       59 GETTABLEKS                       R12 R7 K23 ["editableImages"]
       61 CALL                             R10 2 0
       62 RETURN                           R8 2

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 GETUPVAL                         R0 3
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["editableMeshes"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["editableImages"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["setMetadata"]
        3 DUPTABLE                         R7 K5 [{["entrypoint"] = "validateAsyncMeshPartFormat", ["assetType"], ["isServer"]}]
        4 GETTABLEKS                       R8 R1 K6 ["Name"]
        6 SETTABLEKS                       R8 R7 K3 ["assetType"]
        8 SETTABLEKS                       R3 R7 K4 ["isServer"]
       10 CALL                             R6 1 0
       11 GETIMPORT                        R8 K10 [Enum.AssetType.DynamicHead]
       13 JUMPIFEQ                         R8 R1 ; [+2]
       15 LOADB                            R7 0 +1
       16 LOADB                            R7 1
       17 FASTCALL1                        ASSERT R7 ; [+2]
       18 GETIMPORT                        R6 K12 [assert]
       20 CALL                             R6 1 0
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K13 ["processAll"]
       24 MOVE                             R7 R0
       25 CALL                             R6 1 2
       26 JUMPIF                           R6 ; [+10]
       27 JUMPIFNOT                        R3 ; [+5]
       28 GETIMPORT                        R8 K15 [error]
       30 GETTABLEN                        R9 R7 1
       31 CALL                             R8 1 0
       32 JUMP                             ; [+4]
       33 MOVE                             R8 R2
       34 MOVE                             R9 R6
       35 MOVE                             R10 R7
       36 CALL                             R8 2 0
       37 DUPTABLE                         R8 K24 [{["instances"], ["assetTypeEnum"], ["allowUnreviewedAssets"], ["restrictedUserIds"], ["isServer"], ["validateMeshPartAccessories"] = False, ["editableMeshes"], ["editableImages"]}]
       38 SETTABLEKS                       R0 R8 K16 ["instances"]
       40 SETTABLEKS                       R1 R8 K17 ["assetTypeEnum"]
       42 SETTABLEKS                       R4 R8 K18 ["allowUnreviewedAssets"]
       44 SETTABLEKS                       R5 R8 K19 ["restrictedUserIds"]
       46 SETTABLEKS                       R3 R8 K4 ["isServer"]
       48 GETTABLEKS                       R9 R7 K22 ["editableMeshes"]
       50 SETTABLEKS                       R9 R8 K22 ["editableMeshes"]
       52 GETTABLEKS                       R9 R7 K23 ["editableImages"]
       54 SETTABLEKS                       R9 R8 K23 ["editableImages"]
       56 GETIMPORT                        R9 K27 [coroutine.wrap]
       58 NEWCLOSURE                       R10 P0
       59 CAPTURE                          VAL R2
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          VAL R8
       62 CAPTURE                          UPVAL U3
       63 CALL                             R9 1 1
       64 CALL                             R9 0 0
       65 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["assetTypeEnum"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["assetTypeEnum required in validationContext for validateMeshPartAssetFormatWithContext"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R3 R0 K4 ["instances"]
       14 JUMPIFNOTEQKNIL                  R3 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       20 LOADK                            R3 K5 ["instances required in validationContext for validateMeshPartAssetFormatWithContext"]
       21 GETIMPORT                        R1 K3 [assert]
       23 CALL                             R1 2 0
       24 GETTABLEKS                       R1 R0 K4 ["instances"]
       26 GETTABLEKS                       R2 R0 K0 ["assetTypeEnum"]
       28 GETTABLEKS                       R3 R0 K6 ["isServer"]
       30 GETTABLEKS                       R4 R0 K7 ["specialMeshAccessory"]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K8 ["setMetadata"]
       35 DUPTABLE                         R6 K12 [{["entrypoint"] = "validateMeshPartAssetFormat2", ["assetType"], ["isServer"]}]
       36 GETTABLEKS                       R7 R2 K13 ["Name"]
       38 SETTABLEKS                       R7 R6 K11 ["assetType"]
       40 SETTABLEKS                       R3 R6 K6 ["isServer"]
       42 CALL                             R5 1 0
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R5 R5 K14 ["processAll"]
       46 MOVE                             R6 R1
       47 CALL                             R5 1 2
       48 JUMPIF                           R5 ; [+7]
       49 JUMPIFNOT                        R3 ; [+5]
       50 GETIMPORT                        R7 K16 [error]
       52 GETTABLEN                        R8 R6 1
       53 CALL                             R7 1 0
       54 JUMP                             ; [+1]
       55 RETURN                           R5 2
       56 GETTABLEKS                       R7 R6 K17 ["editableMeshes"]
       58 SETTABLEKS                       R7 R0 K17 ["editableMeshes"]
       60 GETTABLEKS                       R7 R6 K18 ["editableImages"]
       62 SETTABLEKS                       R7 R0 K18 ["editableImages"]
       64 LOADB                            R7 0
       65 SETTABLEKS                       R7 R0 K19 ["validateMeshPartAccessories"]
       67 LOADNIL                          R7
       68 LOADNIL                          R8
       69 GETUPVAL                         R9 2
       70 GETTABLEN                        R10 R1 1
       71 CALL                             R9 1 1
       72 JUMPIFNOT                        R9 ; [+7]
       73 GETUPVAL                         R9 3
       74 MOVE                             R10 R4
       75 MOVE                             R11 R0
       76 CALL                             R9 2 2
       77 MOVE                             R7 R9
       78 MOVE                             R8 R10
       79 JUMP                             ; [+6]
       80 GETUPVAL                         R9 4
       81 MOVE                             R10 R4
       82 MOVE                             R11 R0
       83 CALL                             R9 2 2
       84 MOVE                             R7 R9
       85 MOVE                             R8 R10
       86 GETUPVAL                         R9 5
       87 GETTABLEKS                       R10 R0 K17 ["editableMeshes"]
       89 GETTABLEKS                       R11 R0 K18 ["editableImages"]
       91 CALL                             R9 2 0
       92 RETURN                           R7 2

PROTO_8:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["setMetadata"]
        3 DUPTABLE                         R7 K5 [{["entrypoint"] = "validateMeshPartAssetFormat2", ["assetType"], ["isServer"]}]
        4 GETTABLEKS                       R8 R2 K6 ["Name"]
        6 SETTABLEKS                       R8 R7 K3 ["assetType"]
        8 SETTABLEKS                       R3 R7 K4 ["isServer"]
       10 CALL                             R6 1 0
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K7 ["processAll"]
       14 MOVE                             R7 R0
       15 CALL                             R6 1 2
       16 JUMPIF                           R6 ; [+7]
       17 JUMPIFNOT                        R3 ; [+5]
       18 GETIMPORT                        R8 K9 [error]
       20 GETTABLEN                        R9 R7 1
       21 CALL                             R8 1 0
       22 JUMP                             ; [+1]
       23 RETURN                           R6 2
       24 DUPTABLE                         R8 K17 [{["instances"], ["assetTypeEnum"], ["allowUnreviewedAssets"], ["isServer"], ["validateMeshPartAccessories"] = False, ["editableMeshes"], ["editableImages"]}]
       25 SETTABLEKS                       R0 R8 K10 ["instances"]
       27 SETTABLEKS                       R2 R8 K11 ["assetTypeEnum"]
       29 SETTABLEKS                       R4 R8 K12 ["allowUnreviewedAssets"]
       31 SETTABLEKS                       R3 R8 K4 ["isServer"]
       33 GETTABLEKS                       R9 R7 K15 ["editableMeshes"]
       35 SETTABLEKS                       R9 R8 K15 ["editableMeshes"]
       37 GETTABLEKS                       R9 R7 K16 ["editableImages"]
       39 SETTABLEKS                       R9 R8 K16 ["editableImages"]
       41 LOADNIL                          R9
       42 LOADNIL                          R10
       43 GETUPVAL                         R11 2
       44 GETTABLEN                        R12 R0 1
       45 CALL                             R11 1 1
       46 JUMPIFNOT                        R11 ; [+7]
       47 GETUPVAL                         R11 3
       48 MOVE                             R12 R1
       49 MOVE                             R13 R8
       50 CALL                             R11 2 2
       51 MOVE                             R9 R11
       52 MOVE                             R10 R12
       53 JUMP                             ; [+6]
       54 GETUPVAL                         R11 4
       55 MOVE                             R12 R1
       56 MOVE                             R13 R8
       57 CALL                             R11 2 2
       58 MOVE                             R9 R11
       59 MOVE                             R10 R12
       60 GETUPVAL                         R11 5
       61 GETTABLEKS                       R12 R8 K15 ["editableMeshes"]
       63 GETTABLEKS                       R13 R8 K16 ["editableImages"]
       65 CALL                             R11 2 0
       66 RETURN                           R9 2

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["fullBodyData"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["fullBodyData required in validationContext for validateFullBodyWithContext"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R1 R0 K4 ["isServer"]
       14 GETTABLEKS                       R2 R0 K0 ["fullBodyData"]
       16 GETTABLEKS                       R3 R0 K5 ["allowEditableInstances"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K6 ["setMetadata"]
       21 DUPTABLE                         R5 K11 [{["entrypoint"] = "validateFullBody", ["assetType"] = "", ["isServer"]}]
       22 SETTABLEKS                       R1 R5 K4 ["isServer"]
       24 CALL                             R4 1 0
       25 GETIMPORT                        R4 K13 [tick]
       27 CALL                             R4 0 1
       28 NEWTABLE                         R5 0 0
       30 MOVE                             R6 R2
       31 LOADNIL                          R7
       32 LOADNIL                          R8
       33 FORGPREP                         R6
       34 GETTABLEKS                       R11 R10 K14 ["allSelectedInstances"]
       36 LOADNIL                          R12
       37 LOADNIL                          R13
       38 FORGPREP                         R11
       39 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
       41 MOVE                             R17 R5
       42 MOVE                             R18 R15
       43 GETIMPORT                        R16 K17 [table.insert]
       45 CALL                             R16 2 0
       46 FORGLOOP                         R11 2 ; [-8]
       48 FORGLOOP                         R6 2 ; [-15]
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R6 R6 K18 ["processAll"]
       53 MOVE                             R7 R5
       54 MOVE                             R8 R3
       55 CALL                             R6 2 2
       56 JUMPIF                           R6 ; [+7]
       57 JUMPIFNOT                        R1 ; [+5]
       58 GETIMPORT                        R8 K20 [error]
       60 GETTABLEN                        R9 R7 1
       61 CALL                             R8 1 0
       62 JUMP                             ; [+1]
       63 RETURN                           R6 2
       64 GETTABLEKS                       R8 R7 K21 ["editableMeshes"]
       66 SETTABLEKS                       R8 R0 K21 ["editableMeshes"]
       68 GETTABLEKS                       R8 R7 K22 ["editableImages"]
       70 SETTABLEKS                       R8 R0 K22 ["editableImages"]
       72 GETIMPORT                        R8 K13 [tick]
       74 CALL                             R8 0 1
       75 SETTABLEKS                       R8 R0 K23 ["lastTickSeconds"]
       77 GETTABLEKS                       R8 R0 K24 ["requireAllFolders"]
       79 JUMPIFNOTEQKNIL                  R8 ; [+4]
       81 LOADB                            R8 1
       82 SETTABLEKS                       R8 R0 K24 ["requireAllFolders"]
       84 GETUPVAL                         R8 2
       85 MOVE                             R9 R0
       86 CALL                             R8 1 2
       87 GETUPVAL                         R10 3
       88 GETTABLEKS                       R11 R0 K21 ["editableMeshes"]
       90 GETTABLEKS                       R12 R0 K22 ["editableImages"]
       92 CALL                             R10 2 0
       93 JUMPIFNOT                        R8 ; [+15]
       94 GETUPVAL                         R10 0
       95 GETTABLEKS                       R10 R10 K25 ["recordScriptTime"]
       97 GETIMPORT                        R11 K27 [script]
       99 GETTABLEKS                       R11 R11 K28 ["Name"]
      101 MOVE                             R12 R4
      102 MOVE                             R13 R0
      103 CALL                             R10 3 0
      104 GETUPVAL                         R10 0
      105 GETTABLEKS                       R10 R10 K29 ["reportScriptTimes"]
      107 MOVE                             R11 R0
      108 CALL                             R10 1 0
      109 GETUPVAL                         R10 0
      110 GETTABLEKS                       R10 R10 K30 ["reportCounter"]
      112 MOVE                             R11 R8
      113 LOADK                            R12 K31 ["FullBody"]
      114 MOVE                             R13 R0
      115 CALL                             R10 3 0
      116 RETURN                           R8 2

PROTO_10:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["setMetadata"]
        3 DUPTABLE                         R7 K6 [{["entrypoint"] = "validateFullBody", ["assetType"] = "", ["isServer"]}]
        4 SETTABLEKS                       R1 R7 K5 ["isServer"]
        6 CALL                             R6 1 0
        7 GETIMPORT                        R6 K8 [tick]
        9 CALL                             R6 0 1
       10 NEWTABLE                         R7 0 0
       12 MOVE                             R8 R0
       13 LOADNIL                          R9
       14 LOADNIL                          R10
       15 FORGPREP                         R8
       16 GETTABLEKS                       R13 R12 K9 ["allSelectedInstances"]
       18 LOADNIL                          R14
       19 LOADNIL                          R15
       20 FORGPREP                         R13
       21 FASTCALL2                        TABLE_INSERT R7 R17 ; [+5]
       23 MOVE                             R19 R7
       24 MOVE                             R20 R17
       25 GETIMPORT                        R18 K12 [table.insert]
       27 CALL                             R18 2 0
       28 FORGLOOP                         R13 2 ; [-8]
       30 FORGLOOP                         R8 2 ; [-15]
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R8 R8 K13 ["processAll"]
       35 MOVE                             R9 R7
       36 MOVE                             R10 R2
       37 CALL                             R8 2 2
       38 JUMPIF                           R8 ; [+7]
       39 JUMPIFNOT                        R1 ; [+5]
       40 GETIMPORT                        R10 K15 [error]
       42 GETTABLEN                        R11 R9 1
       43 CALL                             R10 1 0
       44 JUMP                             ; [+1]
       45 RETURN                           R8 2
       46 DUPTABLE                         R10 K26 [{["fullBodyData"], ["isServer"], ["allowEditableInstances"], ["bypassFlags"], ["validateMeshPartAccessories"] = False, ["lastTickSeconds"], ["shouldYield"], ["editableMeshes"], ["editableImages"], ["requireAllFolders"]}]
       47 SETTABLEKS                       R0 R10 K16 ["fullBodyData"]
       49 SETTABLEKS                       R1 R10 K5 ["isServer"]
       51 SETTABLEKS                       R2 R10 K17 ["allowEditableInstances"]
       53 SETTABLEKS                       R3 R10 K18 ["bypassFlags"]
       55 GETIMPORT                        R11 K8 [tick]
       57 CALL                             R11 0 1
       58 SETTABLEKS                       R11 R10 K21 ["lastTickSeconds"]
       60 SETTABLEKS                       R4 R10 K22 ["shouldYield"]
       62 GETTABLEKS                       R11 R9 K23 ["editableMeshes"]
       64 SETTABLEKS                       R11 R10 K23 ["editableMeshes"]
       66 GETTABLEKS                       R11 R9 K24 ["editableImages"]
       68 SETTABLEKS                       R11 R10 K24 ["editableImages"]
       70 JUMPIFEQKNIL                     R5 ; [+3]
       72 MOVE                             R11 R5
       73 JUMP                             ; [+1]
       74 LOADB                            R11 1
       75 SETTABLEKS                       R11 R10 K25 ["requireAllFolders"]
       77 GETUPVAL                         R11 2
       78 MOVE                             R12 R10
       79 CALL                             R11 1 2
       80 GETUPVAL                         R13 3
       81 GETTABLEKS                       R14 R10 K23 ["editableMeshes"]
       83 GETTABLEKS                       R15 R10 K24 ["editableImages"]
       85 CALL                             R13 2 0
       86 JUMPIFNOT                        R11 ; [+15]
       87 GETUPVAL                         R13 0
       88 GETTABLEKS                       R13 R13 K27 ["recordScriptTime"]
       90 GETIMPORT                        R14 K29 [script]
       92 GETTABLEKS                       R14 R14 K30 ["Name"]
       94 MOVE                             R15 R6
       95 MOVE                             R16 R10
       96 CALL                             R13 3 0
       97 GETUPVAL                         R13 0
       98 GETTABLEKS                       R13 R13 K31 ["reportScriptTimes"]
      100 MOVE                             R14 R10
      101 CALL                             R13 1 0
      102 GETUPVAL                         R13 0
      103 GETTABLEKS                       R13 R13 K32 ["reportCounter"]
      105 MOVE                             R14 R11
      106 LOADK                            R15 K33 ["FullBody"]
      107 MOVE                             R16 R10
      108 CALL                             R13 3 0
      109 RETURN                           R11 2

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["fullBodyData"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["fullBodyData required in validationContext for validateShoes"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R1 R0 K4 ["isServer"]
       14 GETTABLEKS                       R2 R0 K0 ["fullBodyData"]
       16 GETTABLEKS                       R3 R0 K5 ["allowEditableInstances"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K6 ["setMetadata"]
       21 DUPTABLE                         R5 K11 [{["entrypoint"] = "validateShoes", ["assetType"] = "", ["isServer"]}]
       22 SETTABLEKS                       R1 R5 K4 ["isServer"]
       24 CALL                             R4 1 0
       25 GETIMPORT                        R4 K13 [tick]
       27 CALL                             R4 0 1
       28 NEWTABLE                         R5 0 0
       30 MOVE                             R6 R2
       31 LOADNIL                          R7
       32 LOADNIL                          R8
       33 FORGPREP                         R6
       34 GETTABLEKS                       R11 R10 K14 ["allSelectedInstances"]
       36 LOADNIL                          R12
       37 LOADNIL                          R13
       38 FORGPREP                         R11
       39 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
       41 MOVE                             R17 R5
       42 MOVE                             R18 R15
       43 GETIMPORT                        R16 K17 [table.insert]
       45 CALL                             R16 2 0
       46 FORGLOOP                         R11 2 ; [-8]
       48 FORGLOOP                         R6 2 ; [-15]
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R6 R6 K18 ["processAll"]
       53 MOVE                             R7 R5
       54 MOVE                             R8 R3
       55 CALL                             R6 2 2
       56 JUMPIF                           R6 ; [+7]
       57 JUMPIFNOT                        R1 ; [+5]
       58 GETIMPORT                        R8 K20 [error]
       60 GETTABLEN                        R9 R7 1
       61 CALL                             R8 1 0
       62 JUMP                             ; [+1]
       63 RETURN                           R6 2
       64 GETTABLEKS                       R8 R7 K21 ["editableMeshes"]
       66 SETTABLEKS                       R8 R0 K21 ["editableMeshes"]
       68 GETTABLEKS                       R8 R7 K22 ["editableImages"]
       70 SETTABLEKS                       R8 R0 K22 ["editableImages"]
       72 GETIMPORT                        R8 K13 [tick]
       74 CALL                             R8 0 1
       75 SETTABLEKS                       R8 R0 K23 ["lastTickSeconds"]
       77 GETUPVAL                         R8 2
       78 MOVE                             R9 R0
       79 CALL                             R8 1 2
       80 GETUPVAL                         R10 3
       81 GETTABLEKS                       R11 R0 K21 ["editableMeshes"]
       83 GETTABLEKS                       R12 R0 K22 ["editableImages"]
       85 CALL                             R10 2 0
       86 JUMPIFNOT                        R8 ; [+15]
       87 GETUPVAL                         R10 0
       88 GETTABLEKS                       R10 R10 K24 ["recordScriptTime"]
       90 GETIMPORT                        R11 K26 [script]
       92 GETTABLEKS                       R11 R11 K27 ["Name"]
       94 MOVE                             R12 R4
       95 MOVE                             R13 R0
       96 CALL                             R10 3 0
       97 GETUPVAL                         R10 0
       98 GETTABLEKS                       R10 R10 K28 ["reportScriptTimes"]
      100 MOVE                             R11 R0
      101 CALL                             R10 1 0
      102 GETUPVAL                         R10 0
      103 GETTABLEKS                       R10 R10 K29 ["reportCounter"]
      105 MOVE                             R11 R8
      106 LOADK                            R12 K30 ["Shoes"]
      107 MOVE                             R13 R0
      108 CALL                             R10 3 0
      109 RETURN                           R8 2

PROTO_12:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["setMetadata"]
        3 DUPTABLE                         R6 K6 [{["entrypoint"] = "preprocessDataAsync", ["assetType"] = "", ["isServer"]}]
        4 SETTABLEKS                       R1 R6 K5 ["isServer"]
        6 CALL                             R5 1 0
        7 GETIMPORT                        R5 K8 [tick]
        9 CALL                             R5 0 1
       10 NEWTABLE                         R6 0 0
       12 MOVE                             R7 R0
       13 LOADNIL                          R8
       14 LOADNIL                          R9
       15 FORGPREP                         R7
       16 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       18 MOVE                             R13 R6
       19 MOVE                             R14 R11
       20 GETIMPORT                        R12 K11 [table.insert]
       22 CALL                             R12 2 0
       23 FORGLOOP                         R7 2 ; [-8]
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K12 ["processAll"]
       28 MOVE                             R8 R6
       29 MOVE                             R9 R2
       30 CALL                             R7 2 2
       31 JUMPIF                           R7 ; [+10]
       32 JUMPIFNOT                        R1 ; [+5]
       33 GETIMPORT                        R9 K14 [error]
       35 GETTABLEN                        R10 R8 1
       36 CALL                             R9 1 0
       37 JUMP                             ; [+4]
       38 DUPTABLE                         R9 K18 [{["ok"] = False, ["errors"]}]
       39 SETTABLEKS                       R8 R9 K17 ["errors"]
       41 RETURN                           R9 1
       42 DUPTABLE                         R9 K26 [{["isServer"], ["allowEditableInstances"], ["bypassFlags"], ["validateMeshPartAccessories"] = False, ["lastTickSeconds"], ["shouldYield"], ["editableMeshes"], ["editableImages"]}]
       43 SETTABLEKS                       R1 R9 K5 ["isServer"]
       45 SETTABLEKS                       R2 R9 K19 ["allowEditableInstances"]
       47 SETTABLEKS                       R3 R9 K20 ["bypassFlags"]
       49 GETIMPORT                        R10 K8 [tick]
       51 CALL                             R10 0 1
       52 SETTABLEKS                       R10 R9 K22 ["lastTickSeconds"]
       54 SETTABLEKS                       R4 R9 K23 ["shouldYield"]
       56 GETTABLEKS                       R10 R8 K24 ["editableMeshes"]
       58 SETTABLEKS                       R10 R9 K24 ["editableMeshes"]
       60 GETTABLEKS                       R10 R8 K25 ["editableImages"]
       62 SETTABLEKS                       R10 R9 K25 ["editableImages"]
       64 GETUPVAL                         R10 2
       65 GETTABLEKS                       R10 R10 K2 ["preprocessDataAsync"]
       67 MOVE                             R11 R0
       68 MOVE                             R12 R9
       69 CALL                             R10 2 1
       70 GETUPVAL                         R11 3
       71 GETTABLEKS                       R12 R9 K24 ["editableMeshes"]
       73 GETTABLEKS                       R13 R9 K25 ["editableImages"]
       75 CALL                             R11 2 0
       76 GETTABLEKS                       R11 R10 K15 ["ok"]
       78 JUMPIFNOT                        R11 ; [+12]
       79 GETUPVAL                         R11 0
       80 GETTABLEKS                       R11 R11 K27 ["recordScriptTime"]
       82 LOADK                            R12 K2 ["preprocessDataAsync"]
       83 MOVE                             R13 R5
       84 MOVE                             R14 R9
       85 CALL                             R11 3 0
       86 GETUPVAL                         R11 0
       87 GETTABLEKS                       R11 R11 K28 ["reportScriptTimes"]
       89 MOVE                             R12 R9
       90 CALL                             R11 1 0
       91 RETURN                           R10 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["setMetadata"]
        3 DUPTABLE                         R4 K6 [{["entrypoint"] = "isPreprocessDataCached", ["assetType"] = "", ["isServer"]}]
        4 SETTABLEKS                       R2 R4 K5 ["isServer"]
        6 CALL                             R3 1 0
        7 GETIMPORT                        R3 K8 [tick]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["isPreprocessDataCached"]
       13 MOVE                             R5 R0
       14 MOVE                             R6 R1
       15 CALL                             R4 2 1
       16 DUPTABLE                         R5 K9 [{"isServer"}]
       17 SETTABLEKS                       R2 R5 K5 ["isServer"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K10 ["recordScriptTime"]
       22 LOADK                            R7 K2 ["isPreprocessDataCached"]
       23 MOVE                             R8 R3
       24 MOVE                             R9 R5
       25 CALL                             R6 3 0
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K11 ["reportScriptTimes"]
       29 MOVE                             R7 R5
       30 CALL                             R6 1 0
       31 RETURN                           R4 1

PROTO_14:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["setMetadata"]
        3 DUPTABLE                         R7 K6 [{["entrypoint"] = "calculateScaleToValidateBoundsAsync", ["assetType"] = "", ["isServer"]}]
        4 SETTABLEKS                       R1 R7 K5 ["isServer"]
        6 CALL                             R6 1 0
        7 GETIMPORT                        R6 K8 [tick]
        9 CALL                             R6 0 1
       10 LOADNIL                          R7
       11 JUMPIF                           R5 ; [+35]
       12 NEWTABLE                         R8 0 0
       14 MOVE                             R9 R0
       15 LOADNIL                          R10
       16 LOADNIL                          R11
       17 FORGPREP                         R9
       18 FASTCALL2                        TABLE_INSERT R8 R13 ; [+5]
       20 MOVE                             R15 R8
       21 MOVE                             R16 R13
       22 GETIMPORT                        R14 K11 [table.insert]
       24 CALL                             R14 2 0
       25 FORGLOOP                         R9 2 ; [-8]
       27 LOADNIL                          R9
       28 GETUPVAL                         R10 1
       29 GETTABLEKS                       R10 R10 K12 ["processAll"]
       31 MOVE                             R11 R8
       32 MOVE                             R12 R2
       33 CALL                             R10 2 2
       34 MOVE                             R9 R10
       35 MOVE                             R7 R11
       36 JUMPIF                           R9 ; [+10]
       37 JUMPIFNOT                        R1 ; [+5]
       38 GETIMPORT                        R10 K14 [error]
       40 GETTABLEN                        R11 R7 1
       41 CALL                             R10 1 0
       42 JUMP                             ; [+4]
       43 DUPTABLE                         R10 K18 [{["ok"] = False, ["errors"]}]
       44 SETTABLEKS                       R7 R10 K17 ["errors"]
       46 RETURN                           R10 1
       47 DUPTABLE                         R8 K24 [{["isServer"], ["allowEditableInstances"], ["bypassFlags"], ["validateMeshPartAccessories"] = False, ["lastTickSeconds"], ["shouldYield"]}]
       48 SETTABLEKS                       R1 R8 K5 ["isServer"]
       50 SETTABLEKS                       R2 R8 K19 ["allowEditableInstances"]
       52 SETTABLEKS                       R3 R8 K20 ["bypassFlags"]
       54 GETIMPORT                        R9 K8 [tick]
       56 CALL                             R9 0 1
       57 SETTABLEKS                       R9 R8 K22 ["lastTickSeconds"]
       59 SETTABLEKS                       R4 R8 K23 ["shouldYield"]
       61 JUMPIF                           R5 ; [+8]
       62 GETTABLEKS                       R9 R7 K25 ["editableMeshes"]
       64 SETTABLEKS                       R9 R8 K25 ["editableMeshes"]
       66 GETTABLEKS                       R9 R7 K26 ["editableImages"]
       68 SETTABLEKS                       R9 R8 K26 ["editableImages"]
       70 GETUPVAL                         R9 2
       71 GETTABLEKS                       R9 R9 K2 ["calculateScaleToValidateBoundsAsync"]
       73 MOVE                             R10 R0
       74 MOVE                             R11 R8
       75 MOVE                             R12 R5
       76 CALL                             R9 3 1
       77 JUMPIF                           R5 ; [+6]
       78 GETUPVAL                         R10 3
       79 GETTABLEKS                       R11 R8 K25 ["editableMeshes"]
       81 GETTABLEKS                       R12 R8 K26 ["editableImages"]
       83 CALL                             R10 2 0
       84 GETTABLEKS                       R10 R9 K15 ["ok"]
       86 JUMPIFNOT                        R10 ; [+12]
       87 GETUPVAL                         R10 0
       88 GETTABLEKS                       R10 R10 K27 ["recordScriptTime"]
       90 LOADK                            R11 K2 ["calculateScaleToValidateBoundsAsync"]
       91 MOVE                             R12 R6
       92 MOVE                             R13 R8
       93 CALL                             R10 3 0
       94 GETUPVAL                         R10 0
       95 GETTABLEKS                       R10 R10 K28 ["reportScriptTimes"]
       97 MOVE                             R11 R8
       98 CALL                             R10 1 0
       99 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETIMPORT                        R1 K3 [require]
        5 GETTABLEKS                       R2 R0 K4 ["flags"]
        7 GETTABLEKS                       R2 R2 K5 ["getEngineFeatureUGCValidationWithContextEntrypoint"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K3 [require]
       12 GETTABLEKS                       R3 R0 K6 ["Analytics"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K3 [require]
       17 GETTABLEKS                       R4 R0 K7 ["Constants"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K3 [require]
       22 GETTABLEKS                       R5 R0 K8 ["util"]
       24 GETTABLEKS                       R5 R5 K9 ["BundlesMetadata"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K3 [require]
       29 GETTABLEKS                       R6 R0 K8 ["util"]
       31 GETTABLEKS                       R6 R6 K10 ["canUploadBundlesAsync"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K3 [require]
       36 GETTABLEKS                       R7 R0 K8 ["util"]
       38 GETTABLEKS                       R7 R7 K11 ["createUGCBodyPartFolders"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K3 [require]
       43 GETTABLEKS                       R8 R0 K8 ["util"]
       45 GETTABLEKS                       R8 R8 K12 ["isLayeredClothing"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K3 [require]
       50 GETTABLEKS                       R9 R0 K8 ["util"]
       52 GETTABLEKS                       R9 R9 K13 ["RigidOrLayeredAllowed"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K3 [require]
       57 GETTABLEKS                       R10 R0 K8 ["util"]
       59 GETTABLEKS                       R10 R10 K14 ["Types"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K3 [require]
       64 GETTABLEKS                       R11 R0 K8 ["util"]
       66 GETTABLEKS                       R11 R11 K15 ["createEditableInstancesForContext"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K3 [require]
       71 GETTABLEKS                       R12 R0 K8 ["util"]
       73 GETTABLEKS                       R12 R12 K16 ["destroyEditableInstances"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K3 [require]
       78 GETTABLEKS                       R13 R0 K8 ["util"]
       80 GETTABLEKS                       R13 R13 K17 ["ValidationHints"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K3 [require]
       85 GETTABLEKS                       R14 R0 K18 ["validation"]
       87 GETTABLEKS                       R14 R14 K19 ["validateInternal"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K3 [require]
       92 GETTABLEKS                       R15 R0 K18 ["validation"]
       94 GETTABLEKS                       R15 R15 K20 ["validateLayeredClothingAccessoryMeshPartAssetFormat"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K3 [require]
       99 GETTABLEKS                       R16 R0 K18 ["validation"]
      101 GETTABLEKS                       R16 R16 K21 ["validateLegacyAccessoryMeshPartAssetFormat"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K3 [require]
      106 GETTABLEKS                       R17 R0 K18 ["validation"]
      108 GETTABLEKS                       R17 R17 K22 ["validateFullBody"]
      110 CALL                             R16 1 1
      111 GETIMPORT                        R17 K3 [require]
      113 GETTABLEKS                       R18 R0 K18 ["validation"]
      115 GETTABLEKS                       R18 R18 K23 ["validateShoes"]
      117 CALL                             R17 1 1
      118 GETIMPORT                        R18 K3 [require]
      120 GETTABLEKS                       R19 R0 K18 ["validation"]
      122 GETTABLEKS                       R19 R19 K24 ["validateBundleReadyForUpload"]
      124 CALL                             R18 1 1
      125 GETIMPORT                        R19 K3 [require]
      127 GETTABLEKS                       R20 R0 K18 ["validation"]
      129 GETTABLEKS                       R20 R20 K25 ["validateShoesBundleReadyForUpload"]
      131 CALL                             R19 1 1
      132 GETIMPORT                        R20 K3 [require]
      134 GETTABLEKS                       R21 R0 K18 ["validation"]
      136 GETTABLEKS                       R21 R21 K26 ["validateAnimationBundleReadyForUpload"]
      138 CALL                             R20 1 1
      139 GETIMPORT                        R21 K3 [require]
      141 GETTABLEKS                       R22 R0 K18 ["validation"]
      143 GETTABLEKS                       R22 R22 K27 ["validateDynamicHeadMeshPartFormat"]
      145 CALL                             R21 1 1
      146 GETIMPORT                        R22 K3 [require]
      148 GETTABLEKS                       R23 R0 K28 ["validationSystem"]
      150 GETTABLEKS                       R23 R23 K29 ["ValidationManager"]
      152 CALL                             R22 1 1
      153 GETIMPORT                        R23 K3 [require]
      155 GETTABLEKS                       R24 R0 K4 ["flags"]
      157 GETTABLEKS                       R24 R24 K30 ["getFFlagUGCValidationEnableFolderStructure"]
      159 CALL                             R23 1 1
      160 GETIMPORT                        R24 K3 [require]
      162 GETTABLEKS                       R25 R0 K4 ["flags"]
      164 GETTABLEKS                       R25 R25 K31 ["getFFlagUGCValidationCombineEntrypointResults"]
      166 CALL                             R24 1 1
      167 GETIMPORT                        R25 K3 [require]
      169 GETTABLEKS                       R26 R0 K8 ["util"]
      171 GETTABLEKS                       R26 R26 K32 ["LegacyValidationAdapter"]
      173 CALL                             R25 1 1
      174 GETIMPORT                        R26 K3 [require]
      176 GETTABLEKS                       R27 R0 K8 ["util"]
      178 GETTABLEKS                       R27 R27 K33 ["SplitHumanoidRigDescriptionForUpload"]
      180 CALL                             R26 1 1
      181 NEWTABLE                         R27 32 0
      183 GETTABLEKS                       R28 R22 K34 ["ValidateAsset"]
      185 SETTABLEKS                       R28 R27 K34 ["ValidateAsset"]
      187 GETTABLEKS                       R28 R22 K35 ["ValidateFinalizedBundle"]
      189 SETTABLEKS                       R28 R27 K35 ["ValidateFinalizedBundle"]
      191 GETTABLEKS                       R28 R25 K36 ["combineResultsIntoLegacy"]
      193 SETTABLEKS                       R28 R27 K36 ["combineResultsIntoLegacy"]
      195 GETTABLEKS                       R28 R25 K37 ["mergeLegacyIntoModern"]
      197 SETTABLEKS                       R28 R27 K37 ["mergeLegacyIntoModern"]
      199 SETTABLEKS                       R23 R27 K38 ["isFolderStructureEnabled"]
      201 SETTABLEKS                       R24 R27 K39 ["isEntrypointMergingEnabled"]
      203 GETTABLEKS                       R28 R26 K40 ["fixUploadInstance"]
      205 SETTABLEKS                       R28 R27 K41 ["SplitHrdInUpload"]
      207 MOVE                             R28 R1
      208 CALL                             R28 0 1
      209 JUMPIFNOT                        R28 ; [+7]
      210 DUPCLOSURE                       R28 K42 [PROTO_0]
      211 CAPTURE                          VAL R2
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R13
      214 CAPTURE                          VAL R11
      215 SETTABLEKS                       R28 R27 K43 ["validateWithContext"]
      217 DUPCLOSURE                       R28 K44 [PROTO_1]
      218 CAPTURE                          VAL R2
      219 CAPTURE                          VAL R10
      220 CAPTURE                          VAL R13
      221 CAPTURE                          VAL R11
      222 SETTABLEKS                       R28 R27 K45 ["validate"]
      224 DUPCLOSURE                       R28 K46 [PROTO_3]
      225 CAPTURE                          VAL R2
      226 CAPTURE                          VAL R10
      227 CAPTURE                          VAL R13
      228 CAPTURE                          VAL R11
      229 SETTABLEKS                       R28 R27 K47 ["validateAsync"]
      231 DUPCLOSURE                       R28 K48 [PROTO_4]
      232 CAPTURE                          VAL R2
      233 CAPTURE                          VAL R10
      234 CAPTURE                          VAL R21
      235 CAPTURE                          VAL R11
      236 SETTABLEKS                       R28 R27 K49 ["validateMeshPartFormat"]
      238 DUPCLOSURE                       R28 K50 [PROTO_6]
      239 CAPTURE                          VAL R2
      240 CAPTURE                          VAL R10
      241 CAPTURE                          VAL R21
      242 CAPTURE                          VAL R11
      243 SETTABLEKS                       R28 R27 K51 ["validateAsyncMeshPartFormat"]
      245 MOVE                             R28 R1
      246 CALL                             R28 0 1
      247 JUMPIFNOT                        R28 ; [+9]
      248 DUPCLOSURE                       R28 K52 [PROTO_7]
      249 CAPTURE                          VAL R2
      250 CAPTURE                          VAL R10
      251 CAPTURE                          VAL R7
      252 CAPTURE                          VAL R14
      253 CAPTURE                          VAL R15
      254 CAPTURE                          VAL R11
      255 SETTABLEKS                       R28 R27 K53 ["validateMeshPartAssetFormatWithContext"]
      257 DUPCLOSURE                       R28 K54 [PROTO_8]
      258 CAPTURE                          VAL R2
      259 CAPTURE                          VAL R10
      260 CAPTURE                          VAL R7
      261 CAPTURE                          VAL R14
      262 CAPTURE                          VAL R15
      263 CAPTURE                          VAL R11
      264 SETTABLEKS                       R28 R27 K55 ["validateMeshPartAssetFormat2"]
      266 SETTABLEKS                       R18 R27 K24 ["validateBundleReadyForUpload"]
      268 SETTABLEKS                       R19 R27 K25 ["validateShoesBundleReadyForUpload"]
      270 SETTABLEKS                       R20 R27 K26 ["validateAnimationBundleReadyForUpload"]
      272 DUPTABLE                         R28 K56 [{"BundlesMetadata", "createUGCBodyPartFolders", "canUploadBundlesAsync"}]
      273 SETTABLEKS                       R4 R28 K9 ["BundlesMetadata"]
      275 SETTABLEKS                       R6 R28 K11 ["createUGCBodyPartFolders"]
      277 SETTABLEKS                       R5 R28 K10 ["canUploadBundlesAsync"]
      279 SETTABLEKS                       R28 R27 K8 ["util"]
      281 GETTABLEKS                       R28 R27 K8 ["util"]
      283 GETTABLEKS                       R29 R8 K57 ["isLayeredClothingAllowed"]
      285 SETTABLEKS                       R29 R28 K57 ["isLayeredClothingAllowed"]
      287 GETTABLEKS                       R28 R27 K8 ["util"]
      289 GETTABLEKS                       R29 R8 K58 ["isRigidAccessoryAllowed"]
      291 SETTABLEKS                       R29 R28 K58 ["isRigidAccessoryAllowed"]
      293 MOVE                             R28 R1
      294 CALL                             R28 0 1
      295 JUMPIFNOT                        R28 ; [+7]
      296 DUPCLOSURE                       R28 K59 [PROTO_9]
      297 CAPTURE                          VAL R2
      298 CAPTURE                          VAL R10
      299 CAPTURE                          VAL R16
      300 CAPTURE                          VAL R11
      301 SETTABLEKS                       R28 R27 K60 ["validateFullBodyWithContext"]
      303 DUPCLOSURE                       R28 K61 [PROTO_10]
      304 CAPTURE                          VAL R2
      305 CAPTURE                          VAL R10
      306 CAPTURE                          VAL R16
      307 CAPTURE                          VAL R11
      308 SETTABLEKS                       R28 R27 K22 ["validateFullBody"]
      310 DUPCLOSURE                       R28 K62 [PROTO_11]
      311 CAPTURE                          VAL R2
      312 CAPTURE                          VAL R10
      313 CAPTURE                          VAL R17
      314 CAPTURE                          VAL R11
      315 SETTABLEKS                       R28 R27 K63 ["validateShoesWithContext"]
      317 DUPCLOSURE                       R28 K64 [PROTO_12]
      318 CAPTURE                          VAL R2
      319 CAPTURE                          VAL R10
      320 CAPTURE                          VAL R12
      321 CAPTURE                          VAL R11
      322 SETTABLEKS                       R28 R27 K65 ["preprocessDataAsync"]
      324 DUPCLOSURE                       R28 K66 [PROTO_13]
      325 CAPTURE                          VAL R2
      326 CAPTURE                          VAL R12
      327 SETTABLEKS                       R28 R27 K67 ["isPreprocessDataCached"]
      329 DUPCLOSURE                       R28 K68 [PROTO_14]
      330 CAPTURE                          VAL R2
      331 CAPTURE                          VAL R10
      332 CAPTURE                          VAL R12
      333 CAPTURE                          VAL R11
      334 SETTABLEKS                       R28 R27 K69 ["calculateScaleToValidateBoundsAsync"]
      336 GETTABLEKS                       R28 R3 K70 ["GUIDAttributeName"]
      338 SETTABLEKS                       R28 R27 K70 ["GUIDAttributeName"]
      340 RETURN                           R27 1
