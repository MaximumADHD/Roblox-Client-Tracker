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
       38 DUPTABLE                         R7 K13 [{"entrypoint", "assetType", "isServer"}]
       39 LOADK                            R8 K14 ["validate"]
       40 SETTABLEKS                       R8 R7 K11 ["entrypoint"]
       42 GETTABLEKS                       R8 R3 K15 ["Name"]
       44 SETTABLEKS                       R8 R7 K12 ["assetType"]
       46 SETTABLEKS                       R2 R7 K6 ["isServer"]
       48 CALL                             R6 1 0
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R6 R6 K16 ["processAll"]
       52 MOVE                             R7 R1
       53 MOVE                             R8 R4
       54 CALL                             R6 2 2
       55 JUMPIF                           R6 ; [+7]
       56 JUMPIFNOT                        R2 ; [+5]
       57 GETIMPORT                        R8 K18 [error]
       59 GETTABLEN                        R9 R7 1
       60 CALL                             R8 1 0
       61 JUMP                             ; [+1]
       62 RETURN                           R6 2
       63 GETTABLEKS                       R8 R7 K19 ["editableMeshes"]
       65 SETTABLEKS                       R8 R0 K19 ["editableMeshes"]
       67 GETTABLEKS                       R8 R7 K20 ["editableImages"]
       69 SETTABLEKS                       R8 R0 K20 ["editableImages"]
       71 GETIMPORT                        R8 K9 [tick]
       73 CALL                             R8 0 1
       74 SETTABLEKS                       R8 R0 K21 ["lastTickSeconds"]
       76 GETTABLEKS                       R8 R0 K22 ["requireAllFolders"]
       78 JUMPIFNOTEQKNIL                  R8 ; [+4]
       80 LOADB                            R8 1
       81 SETTABLEKS                       R8 R0 K22 ["requireAllFolders"]
       83 GETUPVAL                         R8 2
       84 MOVE                             R9 R0
       85 CALL                             R8 1 2
       86 GETUPVAL                         R10 3
       87 GETTABLEKS                       R11 R0 K19 ["editableMeshes"]
       89 GETTABLEKS                       R12 R0 K20 ["editableImages"]
       91 CALL                             R10 2 0
       92 JUMPIFNOT                        R8 ; [+15]
       93 GETUPVAL                         R10 0
       94 GETTABLEKS                       R10 R10 K23 ["recordScriptTime"]
       96 GETIMPORT                        R11 K25 [script]
       98 GETTABLEKS                       R11 R11 K15 ["Name"]
      100 MOVE                             R12 R5
      101 MOVE                             R13 R0
      102 CALL                             R10 3 0
      103 GETUPVAL                         R10 0
      104 GETTABLEKS                       R10 R10 K26 ["reportScriptTimes"]
      106 MOVE                             R11 R0
      107 CALL                             R10 1 0
      108 GETUPVAL                         R10 0
      109 GETTABLEKS                       R10 R10 K27 ["reportCounter"]
      111 MOVE                             R11 R8
      112 GETIMPORT                        R13 K31 [Enum.AssetType.DynamicHead]
      114 JUMPIFNOTEQ                      R3 R13 ; [+3]
      116 LOADK                            R12 K32 ["Head"]
      117 JUMP                             ; [+1]
      118 LOADK                            R12 K33 ["BodyPart"]
      119 MOVE                             R13 R0
      120 CALL                             R10 3 0
      121 RETURN                           R8 2

PROTO_1:
        0 GETIMPORT                        R12 K1 [tick]
        2 CALL                             R12 0 1
        3 GETUPVAL                         R13 0
        4 GETTABLEKS                       R13 R13 K2 ["setMetadata"]
        6 DUPTABLE                         R14 K6 [{"entrypoint", "assetType", "isServer"}]
        7 LOADK                            R15 K7 ["validate"]
        8 SETTABLEKS                       R15 R14 K3 ["entrypoint"]
       10 GETTABLEKS                       R15 R1 K8 ["Name"]
       12 SETTABLEKS                       R15 R14 K4 ["assetType"]
       14 SETTABLEKS                       R2 R14 K5 ["isServer"]
       16 CALL                             R13 1 0
       17 GETUPVAL                         R13 1
       18 GETTABLEKS                       R13 R13 K9 ["processAll"]
       20 MOVE                             R14 R0
       21 MOVE                             R15 R7
       22 CALL                             R13 2 2
       23 JUMPIF                           R13 ; [+7]
       24 JUMPIFNOT                        R2 ; [+5]
       25 GETIMPORT                        R15 K11 [error]
       27 GETTABLEN                        R16 R14 1
       28 CALL                             R15 1 0
       29 JUMP                             ; [+1]
       30 RETURN                           R13 2
       31 DUPTABLE                         R15 K27 [{"instances", "assetTypeEnum", "allowUnreviewedAssets", "restrictedUserIds", "isServer", "token", "universeId", "isAsync", "allowEditableInstances", "bypassFlags", "validateMeshPartAccessories", "lastTickSeconds", "shouldYield", "editableMeshes", "editableImages", "requireAllFolders"}]
       32 SETTABLEKS                       R0 R15 K12 ["instances"]
       34 SETTABLEKS                       R1 R15 K13 ["assetTypeEnum"]
       36 SETTABLEKS                       R3 R15 K14 ["allowUnreviewedAssets"]
       38 SETTABLEKS                       R4 R15 K15 ["restrictedUserIds"]
       40 SETTABLEKS                       R2 R15 K5 ["isServer"]
       42 SETTABLEKS                       R5 R15 K16 ["token"]
       44 SETTABLEKS                       R6 R15 K17 ["universeId"]
       46 LOADB                            R16 0
       47 SETTABLEKS                       R16 R15 K18 ["isAsync"]
       49 SETTABLEKS                       R7 R15 K19 ["allowEditableInstances"]
       51 SETTABLEKS                       R8 R15 K20 ["bypassFlags"]
       53 JUMPIFEQKNIL                     R10 ; [+3]
       55 MOVE                             R16 R10
       56 JUMP                             ; [+1]
       57 LOADB                            R16 1
       58 SETTABLEKS                       R16 R15 K21 ["validateMeshPartAccessories"]
       60 GETIMPORT                        R16 K1 [tick]
       62 CALL                             R16 0 1
       63 SETTABLEKS                       R16 R15 K22 ["lastTickSeconds"]
       65 SETTABLEKS                       R9 R15 K23 ["shouldYield"]
       67 GETTABLEKS                       R16 R14 K24 ["editableMeshes"]
       69 SETTABLEKS                       R16 R15 K24 ["editableMeshes"]
       71 GETTABLEKS                       R16 R14 K25 ["editableImages"]
       73 SETTABLEKS                       R16 R15 K25 ["editableImages"]
       75 JUMPIFEQKNIL                     R11 ; [+3]
       77 MOVE                             R16 R11
       78 JUMP                             ; [+1]
       79 LOADB                            R16 1
       80 SETTABLEKS                       R16 R15 K26 ["requireAllFolders"]
       82 GETUPVAL                         R16 2
       83 MOVE                             R17 R15
       84 CALL                             R16 1 2
       85 GETUPVAL                         R18 3
       86 GETTABLEKS                       R19 R15 K24 ["editableMeshes"]
       88 GETTABLEKS                       R20 R15 K25 ["editableImages"]
       90 CALL                             R18 2 0
       91 JUMPIFNOT                        R16 ; [+15]
       92 GETUPVAL                         R18 0
       93 GETTABLEKS                       R18 R18 K28 ["recordScriptTime"]
       95 GETIMPORT                        R19 K30 [script]
       97 GETTABLEKS                       R19 R19 K8 ["Name"]
       99 MOVE                             R20 R12
      100 MOVE                             R21 R15
      101 CALL                             R18 3 0
      102 GETUPVAL                         R18 0
      103 GETTABLEKS                       R18 R18 K31 ["reportScriptTimes"]
      105 MOVE                             R19 R15
      106 CALL                             R18 1 0
      107 GETUPVAL                         R18 0
      108 GETTABLEKS                       R18 R18 K32 ["reportCounter"]
      110 MOVE                             R19 R16
      111 GETIMPORT                        R21 K36 [Enum.AssetType.DynamicHead]
      113 JUMPIFNOTEQ                      R1 R21 ; [+3]
      115 LOADK                            R20 K37 ["Head"]
      116 JUMP                             ; [+1]
      117 LOADK                            R20 K38 ["BodyPart"]
      118 MOVE                             R21 R15
      119 CALL                             R18 3 0
      120 RETURN                           R16 2

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
        3 DUPTABLE                         R7 K4 [{"entrypoint", "assetType", "isServer"}]
        4 LOADK                            R8 K5 ["validateAsync"]
        5 SETTABLEKS                       R8 R7 K1 ["entrypoint"]
        7 GETTABLEKS                       R8 R1 K6 ["Name"]
        9 SETTABLEKS                       R8 R7 K2 ["assetType"]
       11 SETTABLEKS                       R3 R7 K3 ["isServer"]
       13 CALL                             R6 1 0
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K7 ["processAll"]
       17 MOVE                             R7 R0
       18 CALL                             R6 1 2
       19 JUMPIF                           R6 ; [+10]
       20 JUMPIFNOT                        R3 ; [+5]
       21 GETIMPORT                        R8 K9 [error]
       23 GETTABLEN                        R9 R7 1
       24 CALL                             R8 1 0
       25 JUMP                             ; [+4]
       26 MOVE                             R8 R2
       27 MOVE                             R9 R6
       28 MOVE                             R10 R7
       29 CALL                             R8 2 0
       30 DUPTABLE                         R8 K19 [{"instances", "assetTypeEnum", "allowUnreviewedAssets", "restrictedUserIds", "isServer", "token", "isAsync", "validateMeshPartAccessories", "editableMeshes", "editableImages"}]
       31 SETTABLEKS                       R0 R8 K10 ["instances"]
       33 SETTABLEKS                       R1 R8 K11 ["assetTypeEnum"]
       35 SETTABLEKS                       R4 R8 K12 ["allowUnreviewedAssets"]
       37 SETTABLEKS                       R5 R8 K13 ["restrictedUserIds"]
       39 SETTABLEKS                       R3 R8 K3 ["isServer"]
       41 LOADK                            R9 K20 [""]
       42 SETTABLEKS                       R9 R8 K14 ["token"]
       44 LOADB                            R9 1
       45 SETTABLEKS                       R9 R8 K15 ["isAsync"]
       47 LOADB                            R9 0
       48 SETTABLEKS                       R9 R8 K16 ["validateMeshPartAccessories"]
       50 GETTABLEKS                       R9 R7 K17 ["editableMeshes"]
       52 SETTABLEKS                       R9 R8 K17 ["editableMeshes"]
       54 GETTABLEKS                       R9 R7 K18 ["editableImages"]
       56 SETTABLEKS                       R9 R8 K18 ["editableImages"]
       58 GETIMPORT                        R9 K23 [coroutine.wrap]
       60 NEWCLOSURE                       R10 P0
       61 CAPTURE                          VAL R2
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          VAL R8
       64 CAPTURE                          UPVAL U3
       65 CALL                             R9 1 1
       66 CALL                             R9 0 0
       67 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["setMetadata"]
        3 DUPTABLE                         R6 K4 [{"entrypoint", "assetType", "isServer"}]
        4 LOADK                            R7 K5 ["validateMeshPartFormat"]
        5 SETTABLEKS                       R7 R6 K1 ["entrypoint"]
        7 GETTABLEKS                       R7 R1 K6 ["Name"]
        9 SETTABLEKS                       R7 R6 K2 ["assetType"]
       11 SETTABLEKS                       R2 R6 K3 ["isServer"]
       13 CALL                             R5 1 0
       14 GETIMPORT                        R7 K10 [Enum.AssetType.DynamicHead]
       16 JUMPIFEQ                         R7 R1 ; [+2]
       18 LOADB                            R6 0 +1
       19 LOADB                            R6 1
       20 FASTCALL1                        ASSERT R6 ; [+2]
       21 GETIMPORT                        R5 K12 [assert]
       23 CALL                             R5 1 0
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K13 ["processAll"]
       27 MOVE                             R6 R0
       28 CALL                             R5 1 2
       29 JUMPIF                           R5 ; [+7]
       30 JUMPIFNOT                        R2 ; [+5]
       31 GETIMPORT                        R7 K15 [error]
       33 GETTABLEN                        R8 R6 1
       34 CALL                             R7 1 0
       35 JUMP                             ; [+1]
       36 RETURN                           R5 2
       37 DUPTABLE                         R7 K23 [{"instances", "assetTypeEnum", "allowUnreviewedAssets", "restrictedUserIds", "isServer", "validateMeshPartAccessories", "editableMeshes", "editableImages"}]
       38 SETTABLEKS                       R0 R7 K16 ["instances"]
       40 SETTABLEKS                       R1 R7 K17 ["assetTypeEnum"]
       42 SETTABLEKS                       R3 R7 K18 ["allowUnreviewedAssets"]
       44 SETTABLEKS                       R4 R7 K19 ["restrictedUserIds"]
       46 SETTABLEKS                       R2 R7 K3 ["isServer"]
       48 LOADB                            R8 0
       49 SETTABLEKS                       R8 R7 K20 ["validateMeshPartAccessories"]
       51 GETTABLEKS                       R8 R6 K21 ["editableMeshes"]
       53 SETTABLEKS                       R8 R7 K21 ["editableMeshes"]
       55 GETTABLEKS                       R8 R6 K22 ["editableImages"]
       57 SETTABLEKS                       R8 R7 K22 ["editableImages"]
       59 GETUPVAL                         R8 2
       60 MOVE                             R9 R7
       61 CALL                             R8 1 2
       62 GETUPVAL                         R10 3
       63 GETTABLEKS                       R11 R7 K21 ["editableMeshes"]
       65 GETTABLEKS                       R12 R7 K22 ["editableImages"]
       67 CALL                             R10 2 0
       68 RETURN                           R8 2

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
        3 DUPTABLE                         R7 K4 [{"entrypoint", "assetType", "isServer"}]
        4 LOADK                            R8 K5 ["validateAsyncMeshPartFormat"]
        5 SETTABLEKS                       R8 R7 K1 ["entrypoint"]
        7 GETTABLEKS                       R8 R1 K6 ["Name"]
        9 SETTABLEKS                       R8 R7 K2 ["assetType"]
       11 SETTABLEKS                       R3 R7 K3 ["isServer"]
       13 CALL                             R6 1 0
       14 GETIMPORT                        R8 K10 [Enum.AssetType.DynamicHead]
       16 JUMPIFEQ                         R8 R1 ; [+2]
       18 LOADB                            R7 0 +1
       19 LOADB                            R7 1
       20 FASTCALL1                        ASSERT R7 ; [+2]
       21 GETIMPORT                        R6 K12 [assert]
       23 CALL                             R6 1 0
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K13 ["processAll"]
       27 MOVE                             R7 R0
       28 CALL                             R6 1 2
       29 JUMPIF                           R6 ; [+10]
       30 JUMPIFNOT                        R3 ; [+5]
       31 GETIMPORT                        R8 K15 [error]
       33 GETTABLEN                        R9 R7 1
       34 CALL                             R8 1 0
       35 JUMP                             ; [+4]
       36 MOVE                             R8 R2
       37 MOVE                             R9 R6
       38 MOVE                             R10 R7
       39 CALL                             R8 2 0
       40 DUPTABLE                         R8 K23 [{"instances", "assetTypeEnum", "allowUnreviewedAssets", "restrictedUserIds", "isServer", "validateMeshPartAccessories", "editableMeshes", "editableImages"}]
       41 SETTABLEKS                       R0 R8 K16 ["instances"]
       43 SETTABLEKS                       R1 R8 K17 ["assetTypeEnum"]
       45 SETTABLEKS                       R4 R8 K18 ["allowUnreviewedAssets"]
       47 SETTABLEKS                       R5 R8 K19 ["restrictedUserIds"]
       49 SETTABLEKS                       R3 R8 K3 ["isServer"]
       51 LOADB                            R9 0
       52 SETTABLEKS                       R9 R8 K20 ["validateMeshPartAccessories"]
       54 GETTABLEKS                       R9 R7 K21 ["editableMeshes"]
       56 SETTABLEKS                       R9 R8 K21 ["editableMeshes"]
       58 GETTABLEKS                       R9 R7 K22 ["editableImages"]
       60 SETTABLEKS                       R9 R8 K22 ["editableImages"]
       62 GETIMPORT                        R9 K26 [coroutine.wrap]
       64 NEWCLOSURE                       R10 P0
       65 CAPTURE                          VAL R2
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          VAL R8
       68 CAPTURE                          UPVAL U3
       69 CALL                             R9 1 1
       70 CALL                             R9 0 0
       71 RETURN                           R0 0

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
       35 DUPTABLE                         R6 K11 [{"entrypoint", "assetType", "isServer"}]
       36 LOADK                            R7 K12 ["validateMeshPartAssetFormat2"]
       37 SETTABLEKS                       R7 R6 K9 ["entrypoint"]
       39 GETTABLEKS                       R7 R2 K13 ["Name"]
       41 SETTABLEKS                       R7 R6 K10 ["assetType"]
       43 SETTABLEKS                       R3 R6 K6 ["isServer"]
       45 CALL                             R5 1 0
       46 GETUPVAL                         R5 1
       47 GETTABLEKS                       R5 R5 K14 ["processAll"]
       49 MOVE                             R6 R1
       50 CALL                             R5 1 2
       51 JUMPIF                           R5 ; [+7]
       52 JUMPIFNOT                        R3 ; [+5]
       53 GETIMPORT                        R7 K16 [error]
       55 GETTABLEN                        R8 R6 1
       56 CALL                             R7 1 0
       57 JUMP                             ; [+1]
       58 RETURN                           R5 2
       59 GETTABLEKS                       R7 R6 K17 ["editableMeshes"]
       61 SETTABLEKS                       R7 R0 K17 ["editableMeshes"]
       63 GETTABLEKS                       R7 R6 K18 ["editableImages"]
       65 SETTABLEKS                       R7 R0 K18 ["editableImages"]
       67 LOADB                            R7 0
       68 SETTABLEKS                       R7 R0 K19 ["validateMeshPartAccessories"]
       70 LOADNIL                          R7
       71 LOADNIL                          R8
       72 GETUPVAL                         R9 2
       73 GETTABLEN                        R10 R1 1
       74 CALL                             R9 1 1
       75 JUMPIFNOT                        R9 ; [+7]
       76 GETUPVAL                         R9 3
       77 MOVE                             R10 R4
       78 MOVE                             R11 R0
       79 CALL                             R9 2 2
       80 MOVE                             R7 R9
       81 MOVE                             R8 R10
       82 JUMP                             ; [+6]
       83 GETUPVAL                         R9 4
       84 MOVE                             R10 R4
       85 MOVE                             R11 R0
       86 CALL                             R9 2 2
       87 MOVE                             R7 R9
       88 MOVE                             R8 R10
       89 GETUPVAL                         R9 5
       90 GETTABLEKS                       R10 R0 K17 ["editableMeshes"]
       92 GETTABLEKS                       R11 R0 K18 ["editableImages"]
       94 CALL                             R9 2 0
       95 RETURN                           R7 2

PROTO_8:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["setMetadata"]
        3 DUPTABLE                         R7 K4 [{"entrypoint", "assetType", "isServer"}]
        4 LOADK                            R8 K5 ["validateMeshPartAssetFormat2"]
        5 SETTABLEKS                       R8 R7 K1 ["entrypoint"]
        7 GETTABLEKS                       R8 R2 K6 ["Name"]
        9 SETTABLEKS                       R8 R7 K2 ["assetType"]
       11 SETTABLEKS                       R3 R7 K3 ["isServer"]
       13 CALL                             R6 1 0
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K7 ["processAll"]
       17 MOVE                             R7 R0
       18 CALL                             R6 1 2
       19 JUMPIF                           R6 ; [+7]
       20 JUMPIFNOT                        R3 ; [+5]
       21 GETIMPORT                        R8 K9 [error]
       23 GETTABLEN                        R9 R7 1
       24 CALL                             R8 1 0
       25 JUMP                             ; [+1]
       26 RETURN                           R6 2
       27 DUPTABLE                         R8 K16 [{"instances", "assetTypeEnum", "allowUnreviewedAssets", "isServer", "validateMeshPartAccessories", "editableMeshes", "editableImages"}]
       28 SETTABLEKS                       R0 R8 K10 ["instances"]
       30 SETTABLEKS                       R2 R8 K11 ["assetTypeEnum"]
       32 SETTABLEKS                       R4 R8 K12 ["allowUnreviewedAssets"]
       34 SETTABLEKS                       R3 R8 K3 ["isServer"]
       36 LOADB                            R9 0
       37 SETTABLEKS                       R9 R8 K13 ["validateMeshPartAccessories"]
       39 GETTABLEKS                       R9 R7 K14 ["editableMeshes"]
       41 SETTABLEKS                       R9 R8 K14 ["editableMeshes"]
       43 GETTABLEKS                       R9 R7 K15 ["editableImages"]
       45 SETTABLEKS                       R9 R8 K15 ["editableImages"]
       47 LOADNIL                          R9
       48 LOADNIL                          R10
       49 GETUPVAL                         R11 2
       50 GETTABLEN                        R12 R0 1
       51 CALL                             R11 1 1
       52 JUMPIFNOT                        R11 ; [+7]
       53 GETUPVAL                         R11 3
       54 MOVE                             R12 R1
       55 MOVE                             R13 R8
       56 CALL                             R11 2 2
       57 MOVE                             R9 R11
       58 MOVE                             R10 R12
       59 JUMP                             ; [+6]
       60 GETUPVAL                         R11 4
       61 MOVE                             R12 R1
       62 MOVE                             R13 R8
       63 CALL                             R11 2 2
       64 MOVE                             R9 R11
       65 MOVE                             R10 R12
       66 GETUPVAL                         R11 5
       67 GETTABLEKS                       R12 R8 K14 ["editableMeshes"]
       69 GETTABLEKS                       R13 R8 K15 ["editableImages"]
       71 CALL                             R11 2 0
       72 RETURN                           R9 2

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
       21 DUPTABLE                         R5 K9 [{"entrypoint", "assetType", "isServer"}]
       22 LOADK                            R6 K10 ["validateFullBody"]
       23 SETTABLEKS                       R6 R5 K7 ["entrypoint"]
       25 LOADK                            R6 K11 [""]
       26 SETTABLEKS                       R6 R5 K8 ["assetType"]
       28 SETTABLEKS                       R1 R5 K4 ["isServer"]
       30 CALL                             R4 1 0
       31 GETIMPORT                        R4 K13 [tick]
       33 CALL                             R4 0 1
       34 NEWTABLE                         R5 0 0
       36 MOVE                             R6 R2
       37 LOADNIL                          R7
       38 LOADNIL                          R8
       39 FORGPREP                         R6
       40 GETTABLEKS                       R11 R10 K14 ["allSelectedInstances"]
       42 LOADNIL                          R12
       43 LOADNIL                          R13
       44 FORGPREP                         R11
       45 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
       47 MOVE                             R17 R5
       48 MOVE                             R18 R15
       49 GETIMPORT                        R16 K17 [table.insert]
       51 CALL                             R16 2 0
       52 FORGLOOP                         R11 2 ; [-8]
       54 FORGLOOP                         R6 2 ; [-15]
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R6 R6 K18 ["processAll"]
       59 MOVE                             R7 R5
       60 MOVE                             R8 R3
       61 CALL                             R6 2 2
       62 JUMPIF                           R6 ; [+7]
       63 JUMPIFNOT                        R1 ; [+5]
       64 GETIMPORT                        R8 K20 [error]
       66 GETTABLEN                        R9 R7 1
       67 CALL                             R8 1 0
       68 JUMP                             ; [+1]
       69 RETURN                           R6 2
       70 GETTABLEKS                       R8 R7 K21 ["editableMeshes"]
       72 SETTABLEKS                       R8 R0 K21 ["editableMeshes"]
       74 GETTABLEKS                       R8 R7 K22 ["editableImages"]
       76 SETTABLEKS                       R8 R0 K22 ["editableImages"]
       78 GETIMPORT                        R8 K13 [tick]
       80 CALL                             R8 0 1
       81 SETTABLEKS                       R8 R0 K23 ["lastTickSeconds"]
       83 GETTABLEKS                       R8 R0 K24 ["requireAllFolders"]
       85 JUMPIFNOTEQKNIL                  R8 ; [+4]
       87 LOADB                            R8 1
       88 SETTABLEKS                       R8 R0 K24 ["requireAllFolders"]
       90 GETUPVAL                         R8 2
       91 MOVE                             R9 R0
       92 CALL                             R8 1 2
       93 GETUPVAL                         R10 3
       94 GETTABLEKS                       R11 R0 K21 ["editableMeshes"]
       96 GETTABLEKS                       R12 R0 K22 ["editableImages"]
       98 CALL                             R10 2 0
       99 JUMPIFNOT                        R8 ; [+15]
      100 GETUPVAL                         R10 0
      101 GETTABLEKS                       R10 R10 K25 ["recordScriptTime"]
      103 GETIMPORT                        R11 K27 [script]
      105 GETTABLEKS                       R11 R11 K28 ["Name"]
      107 MOVE                             R12 R4
      108 MOVE                             R13 R0
      109 CALL                             R10 3 0
      110 GETUPVAL                         R10 0
      111 GETTABLEKS                       R10 R10 K29 ["reportScriptTimes"]
      113 MOVE                             R11 R0
      114 CALL                             R10 1 0
      115 GETUPVAL                         R10 0
      116 GETTABLEKS                       R10 R10 K30 ["reportCounter"]
      118 MOVE                             R11 R8
      119 LOADK                            R12 K31 ["FullBody"]
      120 MOVE                             R13 R0
      121 CALL                             R10 3 0
      122 RETURN                           R8 2

PROTO_10:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["setMetadata"]
        3 DUPTABLE                         R7 K4 [{"entrypoint", "assetType", "isServer"}]
        4 LOADK                            R8 K5 ["validateFullBody"]
        5 SETTABLEKS                       R8 R7 K1 ["entrypoint"]
        7 LOADK                            R8 K6 [""]
        8 SETTABLEKS                       R8 R7 K2 ["assetType"]
       10 SETTABLEKS                       R1 R7 K3 ["isServer"]
       12 CALL                             R6 1 0
       13 GETIMPORT                        R6 K8 [tick]
       15 CALL                             R6 0 1
       16 NEWTABLE                         R7 0 0
       18 MOVE                             R8 R0
       19 LOADNIL                          R9
       20 LOADNIL                          R10
       21 FORGPREP                         R8
       22 GETTABLEKS                       R13 R12 K9 ["allSelectedInstances"]
       24 LOADNIL                          R14
       25 LOADNIL                          R15
       26 FORGPREP                         R13
       27 FASTCALL2                        TABLE_INSERT R7 R17 ; [+5]
       29 MOVE                             R19 R7
       30 MOVE                             R20 R17
       31 GETIMPORT                        R18 K12 [table.insert]
       33 CALL                             R18 2 0
       34 FORGLOOP                         R13 2 ; [-8]
       36 FORGLOOP                         R8 2 ; [-15]
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K13 ["processAll"]
       41 MOVE                             R9 R7
       42 MOVE                             R10 R2
       43 CALL                             R8 2 2
       44 JUMPIF                           R8 ; [+7]
       45 JUMPIFNOT                        R1 ; [+5]
       46 GETIMPORT                        R10 K15 [error]
       48 GETTABLEN                        R11 R9 1
       49 CALL                             R10 1 0
       50 JUMP                             ; [+1]
       51 RETURN                           R8 2
       52 DUPTABLE                         R10 K25 [{"fullBodyData", "isServer", "allowEditableInstances", "bypassFlags", "validateMeshPartAccessories", "lastTickSeconds", "shouldYield", "editableMeshes", "editableImages", "requireAllFolders"}]
       53 SETTABLEKS                       R0 R10 K16 ["fullBodyData"]
       55 SETTABLEKS                       R1 R10 K3 ["isServer"]
       57 SETTABLEKS                       R2 R10 K17 ["allowEditableInstances"]
       59 SETTABLEKS                       R3 R10 K18 ["bypassFlags"]
       61 LOADB                            R11 0
       62 SETTABLEKS                       R11 R10 K19 ["validateMeshPartAccessories"]
       64 GETIMPORT                        R11 K8 [tick]
       66 CALL                             R11 0 1
       67 SETTABLEKS                       R11 R10 K20 ["lastTickSeconds"]
       69 SETTABLEKS                       R4 R10 K21 ["shouldYield"]
       71 GETTABLEKS                       R11 R9 K22 ["editableMeshes"]
       73 SETTABLEKS                       R11 R10 K22 ["editableMeshes"]
       75 GETTABLEKS                       R11 R9 K23 ["editableImages"]
       77 SETTABLEKS                       R11 R10 K23 ["editableImages"]
       79 JUMPIFEQKNIL                     R5 ; [+3]
       81 MOVE                             R11 R5
       82 JUMP                             ; [+1]
       83 LOADB                            R11 1
       84 SETTABLEKS                       R11 R10 K24 ["requireAllFolders"]
       86 GETUPVAL                         R11 2
       87 MOVE                             R12 R10
       88 CALL                             R11 1 2
       89 GETUPVAL                         R13 3
       90 GETTABLEKS                       R14 R10 K22 ["editableMeshes"]
       92 GETTABLEKS                       R15 R10 K23 ["editableImages"]
       94 CALL                             R13 2 0
       95 JUMPIFNOT                        R11 ; [+15]
       96 GETUPVAL                         R13 0
       97 GETTABLEKS                       R13 R13 K26 ["recordScriptTime"]
       99 GETIMPORT                        R14 K28 [script]
      101 GETTABLEKS                       R14 R14 K29 ["Name"]
      103 MOVE                             R15 R6
      104 MOVE                             R16 R10
      105 CALL                             R13 3 0
      106 GETUPVAL                         R13 0
      107 GETTABLEKS                       R13 R13 K30 ["reportScriptTimes"]
      109 MOVE                             R14 R10
      110 CALL                             R13 1 0
      111 GETUPVAL                         R13 0
      112 GETTABLEKS                       R13 R13 K31 ["reportCounter"]
      114 MOVE                             R14 R11
      115 LOADK                            R15 K32 ["FullBody"]
      116 MOVE                             R16 R10
      117 CALL                             R13 3 0
      118 RETURN                           R11 2

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
       21 DUPTABLE                         R5 K9 [{"entrypoint", "assetType", "isServer"}]
       22 LOADK                            R6 K10 ["validateShoes"]
       23 SETTABLEKS                       R6 R5 K7 ["entrypoint"]
       25 LOADK                            R6 K11 [""]
       26 SETTABLEKS                       R6 R5 K8 ["assetType"]
       28 SETTABLEKS                       R1 R5 K4 ["isServer"]
       30 CALL                             R4 1 0
       31 GETIMPORT                        R4 K13 [tick]
       33 CALL                             R4 0 1
       34 NEWTABLE                         R5 0 0
       36 MOVE                             R6 R2
       37 LOADNIL                          R7
       38 LOADNIL                          R8
       39 FORGPREP                         R6
       40 GETTABLEKS                       R11 R10 K14 ["allSelectedInstances"]
       42 LOADNIL                          R12
       43 LOADNIL                          R13
       44 FORGPREP                         R11
       45 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
       47 MOVE                             R17 R5
       48 MOVE                             R18 R15
       49 GETIMPORT                        R16 K17 [table.insert]
       51 CALL                             R16 2 0
       52 FORGLOOP                         R11 2 ; [-8]
       54 FORGLOOP                         R6 2 ; [-15]
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R6 R6 K18 ["processAll"]
       59 MOVE                             R7 R5
       60 MOVE                             R8 R3
       61 CALL                             R6 2 2
       62 JUMPIF                           R6 ; [+7]
       63 JUMPIFNOT                        R1 ; [+5]
       64 GETIMPORT                        R8 K20 [error]
       66 GETTABLEN                        R9 R7 1
       67 CALL                             R8 1 0
       68 JUMP                             ; [+1]
       69 RETURN                           R6 2
       70 GETTABLEKS                       R8 R7 K21 ["editableMeshes"]
       72 SETTABLEKS                       R8 R0 K21 ["editableMeshes"]
       74 GETTABLEKS                       R8 R7 K22 ["editableImages"]
       76 SETTABLEKS                       R8 R0 K22 ["editableImages"]
       78 GETIMPORT                        R8 K13 [tick]
       80 CALL                             R8 0 1
       81 SETTABLEKS                       R8 R0 K23 ["lastTickSeconds"]
       83 GETUPVAL                         R8 2
       84 MOVE                             R9 R0
       85 CALL                             R8 1 2
       86 GETUPVAL                         R10 3
       87 GETTABLEKS                       R11 R0 K21 ["editableMeshes"]
       89 GETTABLEKS                       R12 R0 K22 ["editableImages"]
       91 CALL                             R10 2 0
       92 JUMPIFNOT                        R8 ; [+15]
       93 GETUPVAL                         R10 0
       94 GETTABLEKS                       R10 R10 K24 ["recordScriptTime"]
       96 GETIMPORT                        R11 K26 [script]
       98 GETTABLEKS                       R11 R11 K27 ["Name"]
      100 MOVE                             R12 R4
      101 MOVE                             R13 R0
      102 CALL                             R10 3 0
      103 GETUPVAL                         R10 0
      104 GETTABLEKS                       R10 R10 K28 ["reportScriptTimes"]
      106 MOVE                             R11 R0
      107 CALL                             R10 1 0
      108 GETUPVAL                         R10 0
      109 GETTABLEKS                       R10 R10 K29 ["reportCounter"]
      111 MOVE                             R11 R8
      112 LOADK                            R12 K30 ["Shoes"]
      113 MOVE                             R13 R0
      114 CALL                             R10 3 0
      115 RETURN                           R8 2

PROTO_12:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["setMetadata"]
        3 DUPTABLE                         R6 K4 [{"entrypoint", "assetType", "isServer"}]
        4 LOADK                            R7 K5 ["preprocessDataAsync"]
        5 SETTABLEKS                       R7 R6 K1 ["entrypoint"]
        7 LOADK                            R7 K6 [""]
        8 SETTABLEKS                       R7 R6 K2 ["assetType"]
       10 SETTABLEKS                       R1 R6 K3 ["isServer"]
       12 CALL                             R5 1 0
       13 GETIMPORT                        R5 K8 [tick]
       15 CALL                             R5 0 1
       16 NEWTABLE                         R6 0 0
       18 MOVE                             R7 R0
       19 LOADNIL                          R8
       20 LOADNIL                          R9
       21 FORGPREP                         R7
       22 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       24 MOVE                             R13 R6
       25 MOVE                             R14 R11
       26 GETIMPORT                        R12 K11 [table.insert]
       28 CALL                             R12 2 0
       29 FORGLOOP                         R7 2 ; [-8]
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R7 R7 K12 ["processAll"]
       34 MOVE                             R8 R6
       35 MOVE                             R9 R2
       36 CALL                             R7 2 2
       37 JUMPIF                           R7 ; [+13]
       38 JUMPIFNOT                        R1 ; [+5]
       39 GETIMPORT                        R9 K14 [error]
       41 GETTABLEN                        R10 R8 1
       42 CALL                             R9 1 0
       43 JUMP                             ; [+7]
       44 DUPTABLE                         R9 K17 [{"ok", "errors"}]
       45 LOADB                            R10 0
       46 SETTABLEKS                       R10 R9 K15 ["ok"]
       48 SETTABLEKS                       R8 R9 K16 ["errors"]
       50 RETURN                           R9 1
       51 DUPTABLE                         R9 K25 [{"isServer", "allowEditableInstances", "bypassFlags", "validateMeshPartAccessories", "lastTickSeconds", "shouldYield", "editableMeshes", "editableImages"}]
       52 SETTABLEKS                       R1 R9 K3 ["isServer"]
       54 SETTABLEKS                       R2 R9 K18 ["allowEditableInstances"]
       56 SETTABLEKS                       R3 R9 K19 ["bypassFlags"]
       58 LOADB                            R10 0
       59 SETTABLEKS                       R10 R9 K20 ["validateMeshPartAccessories"]
       61 GETIMPORT                        R10 K8 [tick]
       63 CALL                             R10 0 1
       64 SETTABLEKS                       R10 R9 K21 ["lastTickSeconds"]
       66 SETTABLEKS                       R4 R9 K22 ["shouldYield"]
       68 GETTABLEKS                       R10 R8 K23 ["editableMeshes"]
       70 SETTABLEKS                       R10 R9 K23 ["editableMeshes"]
       72 GETTABLEKS                       R10 R8 K24 ["editableImages"]
       74 SETTABLEKS                       R10 R9 K24 ["editableImages"]
       76 GETUPVAL                         R10 2
       77 GETTABLEKS                       R10 R10 K5 ["preprocessDataAsync"]
       79 MOVE                             R11 R0
       80 MOVE                             R12 R9
       81 CALL                             R10 2 1
       82 GETUPVAL                         R11 3
       83 GETTABLEKS                       R12 R9 K23 ["editableMeshes"]
       85 GETTABLEKS                       R13 R9 K24 ["editableImages"]
       87 CALL                             R11 2 0
       88 GETTABLEKS                       R11 R10 K15 ["ok"]
       90 JUMPIFNOT                        R11 ; [+12]
       91 GETUPVAL                         R11 0
       92 GETTABLEKS                       R11 R11 K26 ["recordScriptTime"]
       94 LOADK                            R12 K5 ["preprocessDataAsync"]
       95 MOVE                             R13 R5
       96 MOVE                             R14 R9
       97 CALL                             R11 3 0
       98 GETUPVAL                         R11 0
       99 GETTABLEKS                       R11 R11 K27 ["reportScriptTimes"]
      101 MOVE                             R12 R9
      102 CALL                             R11 1 0
      103 RETURN                           R10 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["setMetadata"]
        3 DUPTABLE                         R4 K4 [{"entrypoint", "assetType", "isServer"}]
        4 LOADK                            R5 K5 ["isPreprocessDataCached"]
        5 SETTABLEKS                       R5 R4 K1 ["entrypoint"]
        7 LOADK                            R5 K6 [""]
        8 SETTABLEKS                       R5 R4 K2 ["assetType"]
       10 SETTABLEKS                       R2 R4 K3 ["isServer"]
       12 CALL                             R3 1 0
       13 GETIMPORT                        R3 K8 [tick]
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K5 ["isPreprocessDataCached"]
       19 MOVE                             R5 R0
       20 MOVE                             R6 R1
       21 CALL                             R4 2 1
       22 DUPTABLE                         R5 K9 [{"isServer"}]
       23 SETTABLEKS                       R2 R5 K3 ["isServer"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K10 ["recordScriptTime"]
       28 LOADK                            R7 K5 ["isPreprocessDataCached"]
       29 MOVE                             R8 R3
       30 MOVE                             R9 R5
       31 CALL                             R6 3 0
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K11 ["reportScriptTimes"]
       35 MOVE                             R7 R5
       36 CALL                             R6 1 0
       37 RETURN                           R4 1

PROTO_14:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["setMetadata"]
        3 DUPTABLE                         R7 K4 [{"entrypoint", "assetType", "isServer"}]
        4 LOADK                            R8 K5 ["calculateScaleToValidateBoundsAsync"]
        5 SETTABLEKS                       R8 R7 K1 ["entrypoint"]
        7 LOADK                            R8 K6 [""]
        8 SETTABLEKS                       R8 R7 K2 ["assetType"]
       10 SETTABLEKS                       R1 R7 K3 ["isServer"]
       12 CALL                             R6 1 0
       13 GETIMPORT                        R6 K8 [tick]
       15 CALL                             R6 0 1
       16 LOADNIL                          R7
       17 JUMPIF                           R5 ; [+38]
       18 NEWTABLE                         R8 0 0
       20 MOVE                             R9 R0
       21 LOADNIL                          R10
       22 LOADNIL                          R11
       23 FORGPREP                         R9
       24 FASTCALL2                        TABLE_INSERT R8 R13 ; [+5]
       26 MOVE                             R15 R8
       27 MOVE                             R16 R13
       28 GETIMPORT                        R14 K11 [table.insert]
       30 CALL                             R14 2 0
       31 FORGLOOP                         R9 2 ; [-8]
       33 LOADNIL                          R9
       34 GETUPVAL                         R10 1
       35 GETTABLEKS                       R10 R10 K12 ["processAll"]
       37 MOVE                             R11 R8
       38 MOVE                             R12 R2
       39 CALL                             R10 2 2
       40 MOVE                             R9 R10
       41 MOVE                             R7 R11
       42 JUMPIF                           R9 ; [+13]
       43 JUMPIFNOT                        R1 ; [+5]
       44 GETIMPORT                        R10 K14 [error]
       46 GETTABLEN                        R11 R7 1
       47 CALL                             R10 1 0
       48 JUMP                             ; [+7]
       49 DUPTABLE                         R10 K17 [{"ok", "errors"}]
       50 LOADB                            R11 0
       51 SETTABLEKS                       R11 R10 K15 ["ok"]
       53 SETTABLEKS                       R7 R10 K16 ["errors"]
       55 RETURN                           R10 1
       56 DUPTABLE                         R8 K23 [{"isServer", "allowEditableInstances", "bypassFlags", "validateMeshPartAccessories", "lastTickSeconds", "shouldYield"}]
       57 SETTABLEKS                       R1 R8 K3 ["isServer"]
       59 SETTABLEKS                       R2 R8 K18 ["allowEditableInstances"]
       61 SETTABLEKS                       R3 R8 K19 ["bypassFlags"]
       63 LOADB                            R9 0
       64 SETTABLEKS                       R9 R8 K20 ["validateMeshPartAccessories"]
       66 GETIMPORT                        R9 K8 [tick]
       68 CALL                             R9 0 1
       69 SETTABLEKS                       R9 R8 K21 ["lastTickSeconds"]
       71 SETTABLEKS                       R4 R8 K22 ["shouldYield"]
       73 JUMPIF                           R5 ; [+8]
       74 GETTABLEKS                       R9 R7 K24 ["editableMeshes"]
       76 SETTABLEKS                       R9 R8 K24 ["editableMeshes"]
       78 GETTABLEKS                       R9 R7 K25 ["editableImages"]
       80 SETTABLEKS                       R9 R8 K25 ["editableImages"]
       82 GETUPVAL                         R9 2
       83 GETTABLEKS                       R9 R9 K5 ["calculateScaleToValidateBoundsAsync"]
       85 MOVE                             R10 R0
       86 MOVE                             R11 R8
       87 MOVE                             R12 R5
       88 CALL                             R9 3 1
       89 JUMPIF                           R5 ; [+6]
       90 GETUPVAL                         R10 3
       91 GETTABLEKS                       R11 R8 K24 ["editableMeshes"]
       93 GETTABLEKS                       R12 R8 K25 ["editableImages"]
       95 CALL                             R10 2 0
       96 GETTABLEKS                       R10 R9 K15 ["ok"]
       98 JUMPIFNOT                        R10 ; [+12]
       99 GETUPVAL                         R10 0
      100 GETTABLEKS                       R10 R10 K26 ["recordScriptTime"]
      102 LOADK                            R11 K5 ["calculateScaleToValidateBoundsAsync"]
      103 MOVE                             R12 R6
      104 MOVE                             R13 R8
      105 CALL                             R10 3 0
      106 GETUPVAL                         R10 0
      107 GETTABLEKS                       R10 R10 K27 ["reportScriptTimes"]
      109 MOVE                             R11 R8
      110 CALL                             R10 1 0
      111 RETURN                           R9 1

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
