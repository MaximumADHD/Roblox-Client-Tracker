PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["GetHttpEnabled"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["HttpEnabled"]
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["GetStudioAccessToApisAllowed"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["StudioAccessToApisAllowed"]
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["GetThirdPartyPurchasesAllowed"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["ThirdPartyPurchaseAllowed"]
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["GetThirdPartyTeleportsAllowed"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["ThirdPartyTeleportAllowed"]
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetSecretsAsTableRows"]
        3 CALL                             R1 1 1
        4 SETTABLEKS                       R1 R0 K1 ["SecretsAsTableRows"]
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["getCreatorName"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R3 3
        7 MOVE                             R4 R0
        8 CALL                             R3 1 -1
        9 NAMECALL                         R1 R1 K1 ["dispatch"]
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["getCreatorId"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R3 3
        7 MOVE                             R4 R0
        8 CALL                             R3 1 -1
        9 NAMECALL                         R1 R1 K1 ["dispatch"]
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["getCreatorType"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R3 3
        7 MOVE                             R4 R0
        8 CALL                             R3 1 -1
        9 NAMECALL                         R1 R1 K1 ["dispatch"]
       11 CALL                             R1 -1 0
       12 GETIMPORT                        R1 K5 [Enum.CreatorType.Group]
       14 JUMPIFNOTEQ                      R0 R1 ; [+18]
       16 GETUPVAL                         R1 0
       17 GETUPVAL                         R3 1
       18 NAMECALL                         R1 R1 K6 ["getCreatorId"]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R2 4
       22 MOVE                             R4 R1
       23 NAMECALL                         R2 R2 K7 ["getOwnerId"]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R3 2
       27 GETUPVAL                         R5 5
       28 MOVE                             R6 R2
       29 CALL                             R5 1 -1
       30 NAMECALL                         R3 R3 K1 ["dispatch"]
       32 CALL                             R3 -1 0
       33 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K0 ["GetMeshTextureApiAmpStatus"]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K1 ["MeshTextureApiAmpStatus"]
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["GetMeshTextureApisAllowed"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["MeshTextureApisAllowed"]
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["GetInsertFreeAssetsAllowed"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["InsertFreeAssetsAllowed"]
        7 RETURN                           R0 0

PROTO_11:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["game"]
        7 GETTABLEKS                       R4 R2 K1 ["Metadata"]
        9 GETTABLEKS                       R4 R4 K3 ["gameId"]
       11 GETTABLEKS                       R5 R1 K4 ["universePermissionsController"]
       13 GETTABLEKS                       R6 R1 K5 ["gameMetadataController"]
       15 GETTABLEKS                       R7 R1 K6 ["groupMetadataController"]
       17 NEWTABLE                         R8 0 11
       19 NEWCLOSURE                       R9 P0
       20 CAPTURE                          VAL R5
       21 CAPTURE                          VAL R3
       22 NEWCLOSURE                       R10 P1
       23 CAPTURE                          VAL R5
       24 CAPTURE                          VAL R4
       25 NEWCLOSURE                       R11 P2
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R4
       28 NEWCLOSURE                       R12 P3
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R4
       31 NEWCLOSURE                       R13 P4
       32 CAPTURE                          VAL R5
       33 NEWCLOSURE                       R14 P5
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U0
       38 NEWCLOSURE                       R15 P6
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U1
       43 NEWCLOSURE                       R16 P7
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          VAL R7
       49 CAPTURE                          UPVAL U3
       50 NEWCLOSURE                       R17 P8
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R5
       53 NEWCLOSURE                       R18 P9
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R4
       56 NEWCLOSURE                       R19 P10
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R3
       59 SETLIST                          R8 R9 11 [1]
       61 RETURN                           R8 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Settings"]
        3 GETTABLEKS                       R1 R1 K1 ["Changed"]
        5 GETUPVAL                         R2 1
        6 GETTABLE                         R0 R1 R2
        7 JUMPIFEQKNIL                     R0 ; [+10]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["onSecuritySettingChange"]
       12 GETUPVAL                         R2 1
       13 MOVE                             R3 R0
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 3
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_13:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K1 [game]
        3 MOVE                             R4 R0
        4 NAMECALL                         R1 R1 K2 ["SetHttpEnabled"]
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetSecretsFromSecretsAsTableRows"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["SetStudioAccessToApisAllowed"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["SetThirdPartyPurchasesAllowed"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["SetThirdPartyTeleportsAllowed"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["SetMeshTextureApisAllowed"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K1 [game]
        3 MOVE                             R4 R0
        4 NAMECALL                         R1 R1 K2 ["SetInsertFreeAssetsAllowed"]
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_21:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["EditAsset"]
        5 GETTABLEKS                       R3 R3 K2 ["editSecretId"]
        7 JUMPIFNOT                        R3 ; [+48]
        8 GETTABLEKS                       R4 R2 K3 ["Settings"]
       10 GETTABLEKS                       R4 R4 K4 ["Changed"]
       12 GETTABLEKS                       R4 R4 K5 ["SecretsAsTableRows"]
       14 JUMPIFNOT                        R4 ; [+7]
       15 GETTABLEKS                       R3 R2 K3 ["Settings"]
       17 GETTABLEKS                       R3 R3 K4 ["Changed"]
       19 GETTABLEKS                       R3 R3 K5 ["SecretsAsTableRows"]
       21 JUMP                             ; [+6]
       22 GETTABLEKS                       R3 R2 K3 ["Settings"]
       24 GETTABLEKS                       R3 R3 K6 ["Current"]
       26 GETTABLEKS                       R3 R3 K5 ["SecretsAsTableRows"]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K7 ["getUpdateSecretRowAtIndex"]
       31 MOVE                             R5 R3
       32 GETTABLEKS                       R6 R2 K1 ["EditAsset"]
       34 GETTABLEKS                       R6 R6 K2 ["editSecretId"]
       36 GETTABLEKS                       R7 R2 K1 ["EditAsset"]
       38 GETTABLEKS                       R7 R7 K8 ["editSecretFormName"]
       40 GETTABLEKS                       R8 R2 K1 ["EditAsset"]
       42 GETTABLEKS                       R8 R8 K9 ["editSecretFormValue"]
       44 GETTABLEKS                       R9 R2 K1 ["EditAsset"]
       46 GETTABLEKS                       R9 R9 K10 ["editSecretFormDomain"]
       48 CALL                             R4 5 2
       49 GETUPVAL                         R8 1
       50 LOADK                            R9 K5 ["SecretsAsTableRows"]
       51 MOVE                             R10 R4
       52 CALL                             R8 2 -1
       53 NAMECALL                         R6 R0 K11 ["dispatch"]
       55 CALL                             R6 -1 0
       56 NAMECALL                         R3 R0 K0 ["getState"]
       58 CALL                             R3 1 1
       59 GETTABLEKS                       R4 R3 K12 ["Metadata"]
       61 GETTABLEKS                       R4 R4 K13 ["gameId"]
       63 GETTABLEKS                       R5 R1 K14 ["universePermissionsController"]
       65 NEWTABLE                         R6 0 7
       67 NEWCLOSURE                       R8 P0
       68 CAPTURE                          VAL R5
       69 LOADK                            R9 K15 ["HttpEnabled"]
       70 NEWCLOSURE                       R7 P1
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R9
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          VAL R8
       75 NEWCLOSURE                       R9 P2
       76 CAPTURE                          VAL R5
       77 LOADK                            R10 K5 ["SecretsAsTableRows"]
       78 NEWCLOSURE                       R8 P1
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R10
       81 CAPTURE                          UPVAL U2
       82 CAPTURE                          VAL R9
       83 NEWCLOSURE                       R10 P3
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R4
       86 LOADK                            R11 K16 ["StudioAccessToApisAllowed"]
       87 NEWCLOSURE                       R9 P1
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R11
       90 CAPTURE                          UPVAL U2
       91 CAPTURE                          VAL R10
       92 NEWCLOSURE                       R11 P4
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R4
       95 LOADK                            R12 K17 ["ThirdPartyPurchaseAllowed"]
       96 NEWCLOSURE                       R10 P1
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R12
       99 CAPTURE                          UPVAL U2
      100 CAPTURE                          VAL R11
      101 NEWCLOSURE                       R12 P5
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R4
      104 LOADK                            R13 K18 ["ThirdPartyTeleportAllowed"]
      105 NEWCLOSURE                       R11 P1
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R13
      108 CAPTURE                          UPVAL U2
      109 CAPTURE                          VAL R12
      110 NEWCLOSURE                       R13 P6
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R4
      113 LOADK                            R14 K19 ["MeshTextureApisAllowed"]
      114 NEWCLOSURE                       R12 P1
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R14
      117 CAPTURE                          UPVAL U2
      118 CAPTURE                          VAL R13
      119 NEWCLOSURE                       R14 P7
      120 CAPTURE                          VAL R5
      121 LOADK                            R15 K20 ["InsertFreeAssetsAllowed"]
      122 NEWCLOSURE                       R13 P1
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R15
      125 CAPTURE                          UPVAL U2
      126 CAPTURE                          VAL R14
      127 SETLIST                          R6 R7 7 [1]
      129 RETURN                           R6 1

PROTO_22:
        0 DUPTABLE                         R2 K10 [{"HttpEnabled", "SecretsAsTableRows", "StudioAccessToApisAllowed", "ThirdPartyPurchaseAllowed", "ThirdPartyTeleportAllowed", "InsertFreeAssetsAllowed", "HttpEnabledValueChanged", "ThirdPartyPurchaseAllowedValueChanged", "ThirdPartyTeleportAllowedValueChanged", "InsertFreeAssetsAllowedValueChanged"}]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["HttpEnabled"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R3 R2 K0 ["HttpEnabled"]
        6 MOVE                             R3 R0
        7 LOADK                            R4 K1 ["SecretsAsTableRows"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K1 ["SecretsAsTableRows"]
       11 MOVE                             R3 R0
       12 LOADK                            R4 K2 ["StudioAccessToApisAllowed"]
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R2 K2 ["StudioAccessToApisAllowed"]
       16 MOVE                             R3 R0
       17 LOADK                            R4 K3 ["ThirdPartyPurchaseAllowed"]
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R2 K3 ["ThirdPartyPurchaseAllowed"]
       21 MOVE                             R3 R0
       22 LOADK                            R4 K4 ["ThirdPartyTeleportAllowed"]
       23 CALL                             R3 1 1
       24 SETTABLEKS                       R3 R2 K4 ["ThirdPartyTeleportAllowed"]
       26 MOVE                             R3 R0
       27 LOADK                            R4 K5 ["InsertFreeAssetsAllowed"]
       28 CALL                             R3 1 1
       29 SETTABLEKS                       R3 R2 K5 ["InsertFreeAssetsAllowed"]
       31 MOVE                             R3 R1
       32 LOADK                            R4 K0 ["HttpEnabled"]
       33 CALL                             R3 1 1
       34 SETTABLEKS                       R3 R2 K6 ["HttpEnabledValueChanged"]
       36 MOVE                             R3 R1
       37 LOADK                            R4 K3 ["ThirdPartyPurchaseAllowed"]
       38 CALL                             R3 1 1
       39 SETTABLEKS                       R3 R2 K7 ["ThirdPartyPurchaseAllowedValueChanged"]
       41 MOVE                             R3 R1
       42 LOADK                            R4 K4 ["ThirdPartyTeleportAllowed"]
       43 CALL                             R3 1 1
       44 SETTABLEKS                       R3 R2 K8 ["ThirdPartyTeleportAllowedValueChanged"]
       46 MOVE                             R3 R1
       47 LOADK                            R4 K5 ["InsertFreeAssetsAllowed"]
       48 CALL                             R3 1 1
       49 SETTABLEKS                       R3 R2 K9 ["InsertFreeAssetsAllowedValueChanged"]
       51 RETURN                           R2 1

PROTO_23:
        0 DUPTABLE                         R3 K23 [{"HttpEnabled", "SecretsAsTableRows", "EditSecretId", "EditSecretFormNameField", "EditSecretFormValueField", "EditSecretFormDomainField", "EditSecretFormNameError", "EditSecretFormDomainError", "StudioAccessToApisAllowed", "ThirdPartyPurchaseAllowed", "ThirdPartyTeleportAllowed", "InsertFreeAssetsAllowed", "HttpEnabledValueChanged", "StudioAccessToApisAllowedValueChanged", "ThirdPartyPurchaseAllowedValueChanged", "ThirdPartyTeleportAllowedValueChanged", "InsertFreeAssetsAllowedValueChanged", "MeshTextureApisAllowed", "MeshTextureApisAllowedValueChanged", "MeshTextureApiAmpStatus", "OwnerId", "OwnerType", "GroupOwnerUserId"}]
        1 MOVE                             R4 R0
        2 LOADK                            R5 K0 ["HttpEnabled"]
        3 CALL                             R4 1 1
        4 SETTABLEKS                       R4 R3 K0 ["HttpEnabled"]
        6 MOVE                             R4 R0
        7 LOADK                            R5 K1 ["SecretsAsTableRows"]
        8 CALL                             R4 1 1
        9 SETTABLEKS                       R4 R3 K1 ["SecretsAsTableRows"]
       11 GETTABLEKS                       R4 R2 K24 ["EditAsset"]
       13 GETTABLEKS                       R4 R4 K25 ["editSecretId"]
       15 SETTABLEKS                       R4 R3 K2 ["EditSecretId"]
       17 GETTABLEKS                       R4 R2 K24 ["EditAsset"]
       19 GETTABLEKS                       R4 R4 K26 ["editSecretFormName"]
       21 SETTABLEKS                       R4 R3 K3 ["EditSecretFormNameField"]
       23 GETTABLEKS                       R4 R2 K24 ["EditAsset"]
       25 GETTABLEKS                       R4 R4 K27 ["editSecretFormValue"]
       27 SETTABLEKS                       R4 R3 K4 ["EditSecretFormValueField"]
       29 GETTABLEKS                       R4 R2 K24 ["EditAsset"]
       31 GETTABLEKS                       R4 R4 K28 ["editSecretFormDomain"]
       33 SETTABLEKS                       R4 R3 K5 ["EditSecretFormDomainField"]
       35 GETTABLEKS                       R4 R2 K29 ["Settings"]
       37 GETTABLEKS                       R4 R4 K30 ["Errors"]
       39 JUMPIFNOT                        R4 ; [+6]
       40 GETTABLEKS                       R4 R2 K29 ["Settings"]
       42 GETTABLEKS                       R4 R4 K30 ["Errors"]
       44 GETTABLEKS                       R4 R4 K6 ["EditSecretFormNameError"]
       46 SETTABLEKS                       R4 R3 K6 ["EditSecretFormNameError"]
       48 GETTABLEKS                       R4 R2 K29 ["Settings"]
       50 GETTABLEKS                       R4 R4 K30 ["Errors"]
       52 JUMPIFNOT                        R4 ; [+6]
       53 GETTABLEKS                       R4 R2 K29 ["Settings"]
       55 GETTABLEKS                       R4 R4 K30 ["Errors"]
       57 GETTABLEKS                       R4 R4 K7 ["EditSecretFormDomainError"]
       59 SETTABLEKS                       R4 R3 K7 ["EditSecretFormDomainError"]
       61 MOVE                             R4 R0
       62 LOADK                            R5 K8 ["StudioAccessToApisAllowed"]
       63 CALL                             R4 1 1
       64 SETTABLEKS                       R4 R3 K8 ["StudioAccessToApisAllowed"]
       66 MOVE                             R4 R0
       67 LOADK                            R5 K9 ["ThirdPartyPurchaseAllowed"]
       68 CALL                             R4 1 1
       69 SETTABLEKS                       R4 R3 K9 ["ThirdPartyPurchaseAllowed"]
       71 MOVE                             R4 R0
       72 LOADK                            R5 K10 ["ThirdPartyTeleportAllowed"]
       73 CALL                             R4 1 1
       74 SETTABLEKS                       R4 R3 K10 ["ThirdPartyTeleportAllowed"]
       76 MOVE                             R4 R0
       77 LOADK                            R5 K11 ["InsertFreeAssetsAllowed"]
       78 CALL                             R4 1 1
       79 SETTABLEKS                       R4 R3 K11 ["InsertFreeAssetsAllowed"]
       81 MOVE                             R4 R1
       82 LOADK                            R5 K0 ["HttpEnabled"]
       83 CALL                             R4 1 1
       84 SETTABLEKS                       R4 R3 K12 ["HttpEnabledValueChanged"]
       86 MOVE                             R4 R1
       87 LOADK                            R5 K8 ["StudioAccessToApisAllowed"]
       88 CALL                             R4 1 1
       89 SETTABLEKS                       R4 R3 K13 ["StudioAccessToApisAllowedValueChanged"]
       91 MOVE                             R4 R1
       92 LOADK                            R5 K9 ["ThirdPartyPurchaseAllowed"]
       93 CALL                             R4 1 1
       94 SETTABLEKS                       R4 R3 K14 ["ThirdPartyPurchaseAllowedValueChanged"]
       96 MOVE                             R4 R1
       97 LOADK                            R5 K10 ["ThirdPartyTeleportAllowed"]
       98 CALL                             R4 1 1
       99 SETTABLEKS                       R4 R3 K15 ["ThirdPartyTeleportAllowedValueChanged"]
      101 MOVE                             R4 R1
      102 LOADK                            R5 K11 ["InsertFreeAssetsAllowed"]
      103 CALL                             R4 1 1
      104 SETTABLEKS                       R4 R3 K16 ["InsertFreeAssetsAllowedValueChanged"]
      106 MOVE                             R4 R0
      107 LOADK                            R5 K17 ["MeshTextureApisAllowed"]
      108 CALL                             R4 1 1
      109 SETTABLEKS                       R4 R3 K17 ["MeshTextureApisAllowed"]
      111 MOVE                             R4 R1
      112 LOADK                            R5 K17 ["MeshTextureApisAllowed"]
      113 CALL                             R4 1 1
      114 SETTABLEKS                       R4 R3 K18 ["MeshTextureApisAllowedValueChanged"]
      116 MOVE                             R4 R0
      117 LOADK                            R5 K19 ["MeshTextureApiAmpStatus"]
      118 CALL                             R4 1 1
      119 SETTABLEKS                       R4 R3 K19 ["MeshTextureApiAmpStatus"]
      121 GETTABLEKS                       R4 R2 K31 ["GameOwnerMetadata"]
      123 GETTABLEKS                       R4 R4 K32 ["creatorId"]
      125 SETTABLEKS                       R4 R3 K20 ["OwnerId"]
      127 GETTABLEKS                       R4 R2 K31 ["GameOwnerMetadata"]
      129 GETTABLEKS                       R4 R4 K33 ["creatorType"]
      131 SETTABLEKS                       R4 R3 K21 ["OwnerType"]
      133 GETTABLEKS                       R4 R2 K31 ["GameOwnerMetadata"]
      135 GETTABLEKS                       R4 R4 K34 ["groupOwnerId"]
      137 SETTABLEKS                       R4 R3 K22 ["GroupOwnerUserId"]
      139 RETURN                           R3 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["editSecretFormName"]
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["editSecretFormValue"]
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["editSecretFormDomain"]
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 NEWTABLE                         R4 1 0
        4 SETTABLE                         R1 R4 R0
        5 CALL                             R3 1 -1
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_31:
        0 DUPTABLE                         R2 K14 [{"HttpEnabledChanged", "SecretsAsTableRowsChanged", "StudioApiServicesChanged", "ThirdPartyPurchaseChanged", "ThirdPartyTeleportAllowedChanged", "MeshTextureApisAllowedChanged", "InsertFreeAssetsAllowedChanged", "EditSecretIdChanged", "EditSecretFormNameChanged", "EditSecretFormValueChanged", "EditSecretFormDomainChanged", "ReportError", "ClearError", "ClearAllErrors"}]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K15 ["HttpEnabled"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R3 R2 K0 ["HttpEnabledChanged"]
        6 MOVE                             R3 R0
        7 LOADK                            R4 K16 ["SecretsAsTableRows"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K1 ["SecretsAsTableRowsChanged"]
       11 MOVE                             R3 R0
       12 LOADK                            R4 K17 ["StudioAccessToApisAllowed"]
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R2 K2 ["StudioApiServicesChanged"]
       16 MOVE                             R3 R0
       17 LOADK                            R4 K18 ["ThirdPartyPurchaseAllowed"]
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R2 K3 ["ThirdPartyPurchaseChanged"]
       21 MOVE                             R3 R0
       22 LOADK                            R4 K19 ["ThirdPartyTeleportAllowed"]
       23 CALL                             R3 1 1
       24 SETTABLEKS                       R3 R2 K4 ["ThirdPartyTeleportAllowedChanged"]
       26 MOVE                             R3 R0
       27 LOADK                            R4 K20 ["MeshTextureApisAllowed"]
       28 CALL                             R3 1 1
       29 SETTABLEKS                       R3 R2 K5 ["MeshTextureApisAllowedChanged"]
       31 MOVE                             R3 R0
       32 LOADK                            R4 K21 ["InsertFreeAssetsAllowed"]
       33 CALL                             R3 1 1
       34 SETTABLEKS                       R3 R2 K6 ["InsertFreeAssetsAllowedChanged"]
       36 NEWCLOSURE                       R3 P0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U0
       39 SETTABLEKS                       R3 R2 K7 ["EditSecretIdChanged"]
       41 NEWCLOSURE                       R3 P1
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U1
       44 SETTABLEKS                       R3 R2 K8 ["EditSecretFormNameChanged"]
       46 NEWCLOSURE                       R3 P2
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U1
       49 SETTABLEKS                       R3 R2 K9 ["EditSecretFormValueChanged"]
       51 NEWCLOSURE                       R3 P3
       52 CAPTURE                          VAL R1
       53 CAPTURE                          UPVAL U1
       54 SETTABLEKS                       R3 R2 K10 ["EditSecretFormDomainChanged"]
       56 NEWCLOSURE                       R3 P4
       57 CAPTURE                          VAL R1
       58 CAPTURE                          UPVAL U2
       59 SETTABLEKS                       R3 R2 K11 ["ReportError"]
       61 NEWCLOSURE                       R3 P5
       62 CAPTURE                          VAL R1
       63 CAPTURE                          UPVAL U3
       64 SETTABLEKS                       R3 R2 K12 ["ClearError"]
       66 NEWCLOSURE                       R3 P6
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U4
       69 SETTABLEKS                       R3 R2 K13 ["ClearAllErrors"]
       71 RETURN                           R2 1

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OwnerType"]
        4 GETIMPORT                        R4 K5 [Enum.CreatorType.Group]
        6 JUMPIFEQ                         R2 R4 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 RETURN                           R3 1

PROTO_33:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetUserId"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["props"]
        6 GETTABLEKS                       R3 R2 K2 ["OwnerId"]
        8 GETTABLEKS                       R4 R2 K3 ["GroupOwnerUserId"]
       10 NAMECALL                         R5 R0 K4 ["isGroupGame"]
       12 CALL                             R5 1 1
       13 JUMPIFNOT                        R5 ; [+5]
       14 JUMPIFEQ                         R1 R4 ; [+2]
       16 LOADB                            R5 0 +1
       17 LOADB                            R5 1
       18 RETURN                           R5 1
       19 JUMPIFEQ                         R1 R3 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 RETURN                           R5 1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EditSecretFormNameChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 LOADNIL                          R1
        6 JUMPIFNOTEQKS                    R0 K1 [""] ; [+9]
        8 GETUPVAL                         R2 1
        9 LOADK                            R4 K2 ["Security"]
       10 LOADK                            R5 K3 ["ErrorSecretNameCannotBeEmpty"]
       11 NAMECALL                         R2 R2 K4 ["getText"]
       13 CALL                             R2 3 1
       14 MOVE                             R1 R2
       15 JUMP                             ; [+31]
       16 NAMECALL                         R2 R0 K5 ["len"]
       18 CALL                             R2 1 1
       19 LOADN                            R3 256
       20 JUMPIFNOTLT                      R3 R2 ; [+9]
       22 GETUPVAL                         R2 1
       23 LOADK                            R4 K2 ["Security"]
       24 LOADK                            R5 K6 ["ErrorSecretNameTooLong"]
       25 NAMECALL                         R2 R2 K4 ["getText"]
       27 CALL                             R2 3 1
       28 MOVE                             R1 R2
       29 JUMP                             ; [+17]
       30 GETUPVAL                         R2 2
       31 GETTABLEKS                       R2 R2 K7 ["secretNameExists"]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K8 ["SecretsAsTableRows"]
       36 MOVE                             R4 R0
       37 GETUPVAL                         R5 3
       38 CALL                             R2 3 1
       39 JUMPIFNOT                        R2 ; [+7]
       40 GETUPVAL                         R2 1
       41 LOADK                            R4 K2 ["Security"]
       42 LOADK                            R5 K9 ["ErrorSecretNameNotAvailable"]
       43 NAMECALL                         R2 R2 K4 ["getText"]
       45 CALL                             R2 3 1
       46 MOVE                             R1 R2
       47 JUMPIFNOT                        R1 ; [+7]
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R2 R2 K10 ["ReportError"]
       51 LOADK                            R3 K11 ["EditSecretFormNameError"]
       52 MOVE                             R4 R1
       53 CALL                             R2 2 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R2 R2 K12 ["ClearError"]
       58 LOADK                            R3 K11 ["EditSecretFormNameError"]
       59 CALL                             R2 1 0
       60 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EditSecretFormValueChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EditSecretFormDomainChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 LOADNIL                          R1
        6 JUMPIFNOTEQKS                    R0 K1 [""] ; [+9]
        8 GETUPVAL                         R2 1
        9 LOADK                            R4 K2 ["Security"]
       10 LOADK                            R5 K3 ["ErrorDomainNameCannotBeEmpty"]
       11 NAMECALL                         R2 R2 K4 ["getText"]
       13 CALL                             R2 3 1
       14 MOVE                             R1 R2
       15 JUMP                             ; [+13]
       16 NAMECALL                         R2 R0 K5 ["len"]
       18 CALL                             R2 1 1
       19 LOADN                            R3 1024
       20 JUMPIFNOTLT                      R3 R2 ; [+8]
       22 GETUPVAL                         R2 1
       23 LOADK                            R4 K2 ["Security"]
       24 LOADK                            R5 K6 ["ErrorDomainNameTooLong"]
       25 NAMECALL                         R2 R2 K4 ["getText"]
       27 CALL                             R2 3 1
       28 MOVE                             R1 R2
       29 JUMPIFNOT                        R1 ; [+7]
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K7 ["ReportError"]
       33 LOADK                            R3 K8 ["EditSecretFormDomainError"]
       34 MOVE                             R4 R1
       35 CALL                             R2 2 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K9 ["ClearError"]
       40 LOADK                            R3 K8 ["EditSecretFormDomainError"]
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["EditSecretFormNameError"]
        3 JUMPIF                           R0 ; [+3]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["EditSecretFormDomainError"]
        7 JUMPIFNOT                        R0 ; [+56]
        8 DUPTABLE                         R1 K6 [{"Size", "Title", "Header", "Buttons"}]
        9 GETIMPORT                        R2 K9 [Vector2.new]
       11 LOADN                            R3 500
       12 LOADN                            R4 145
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R1 K2 ["Size"]
       16 GETUPVAL                         R2 1
       17 LOADK                            R4 K10 ["Security"]
       18 LOADK                            R5 K11 ["TitleUnsavedChanges"]
       19 NAMECALL                         R2 R2 K12 ["getText"]
       21 CALL                             R2 3 1
       22 SETTABLEKS                       R2 R1 K3 ["Title"]
       24 GETUPVAL                         R2 1
       25 LOADK                            R4 K10 ["Security"]
       26 LOADK                            R5 K13 ["TextInputErrors"]
       27 NAMECALL                         R2 R2 K12 ["getText"]
       29 CALL                             R2 3 1
       30 SETTABLEKS                       R2 R1 K4 ["Header"]
       32 NEWTABLE                         R2 0 2
       34 GETUPVAL                         R3 1
       35 LOADK                            R5 K14 ["General"]
       36 LOADK                            R6 K15 ["ReplyNo"]
       37 NAMECALL                         R3 R3 K12 ["getText"]
       39 CALL                             R3 3 1
       40 GETUPVAL                         R4 1
       41 LOADK                            R6 K14 ["General"]
       42 LOADK                            R7 K16 ["ReplyYes"]
       43 NAMECALL                         R4 R4 K12 ["getText"]
       45 CALL                             R4 3 -1
       46 SETLIST                          R2 R3 -1 [1]
       48 SETTABLEKS                       R2 R1 K5 ["Buttons"]
       50 GETUPVAL                         R2 0
       51 GETTABLEKS                       R2 R2 K17 ["Dialog"]
       53 GETTABLEKS                       R2 R2 K18 ["showDialog"]
       55 GETUPVAL                         R3 2
       56 MOVE                             R4 R1
       57 CALL                             R2 2 1
       58 NAMECALL                         R2 R2 K19 ["await"]
       60 CALL                             R2 1 1
       61 JUMPIF                           R2 ; [+21]
       62 RETURN                           R0 0
       63 JUMP                             ; [+19]
       64 GETUPVAL                         R1 3
       65 GETTABLEKS                       R1 R1 K20 ["getUpdateSecretRowAtIndex"]
       67 GETUPVAL                         R2 0
       68 GETTABLEKS                       R2 R2 K21 ["SecretsAsTableRows"]
       70 GETUPVAL                         R3 0
       71 GETTABLEKS                       R3 R3 K22 ["EditSecretId"]
       73 GETUPVAL                         R4 4
       74 GETUPVAL                         R5 5
       75 GETUPVAL                         R6 6
       76 CALL                             R1 5 2
       77 JUMPIFNOT                        R2 ; [+5]
       78 GETUPVAL                         R3 0
       79 GETTABLEKS                       R3 R3 K23 ["SecretsAsTableRowsChanged"]
       81 MOVE                             R4 R1
       82 CALL                             R3 1 0
       83 GETUPVAL                         R1 0
       84 GETTABLEKS                       R1 R1 K24 ["ClearAllErrors"]
       86 CALL                             R1 0 0
       87 GETUPVAL                         R1 0
       88 GETTABLEKS                       R1 R1 K25 ["EditSecretFormNameChanged"]
       90 LOADNIL                          R2
       91 CALL                             R1 1 0
       92 GETUPVAL                         R1 0
       93 GETTABLEKS                       R1 R1 K26 ["EditSecretFormValueChanged"]
       95 LOADNIL                          R2
       96 CALL                             R1 1 0
       97 GETUPVAL                         R1 0
       98 GETTABLEKS                       R1 R1 K27 ["EditSecretFormDomainChanged"]
      100 LOADNIL                          R2
      101 CALL                             R1 1 0
      102 GETUPVAL                         R1 0
      103 GETTABLEKS                       R1 R1 K28 ["EditSecretIdChanged"]
      105 LOADNIL                          R2
      106 CALL                             R1 1 0
      107 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["Stylizer"]
        2 GETTABLEKS                       R2 R0 K1 ["Localization"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["new"]
        7 CALL                             R3 0 1
        8 GETTABLEKS                       R4 R0 K3 ["EditSecretId"]
       10 GETTABLEKS                       R5 R0 K4 ["EditSecretFormNameField"]
       12 GETTABLEKS                       R6 R0 K5 ["EditSecretFormValueField"]
       14 GETTABLEKS                       R7 R0 K6 ["EditSecretFormDomainField"]
       16 NEWCLOSURE                       R8 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R4
       21 NEWCLOSURE                       R9 P1
       22 CAPTURE                          VAL R0
       23 NEWCLOSURE                       R10 P2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 NEWCLOSURE                       R11 P3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R6
       33 CAPTURE                          VAL R7
       34 DUPTABLE                         R12 K11 [{"HeaderFrame", "Name", "Domain", "NewValue"}]
       35 GETUPVAL                         R13 3
       36 GETTABLEKS                       R13 R13 K12 ["createElement"]
       38 GETUPVAL                         R14 4
       39 DUPTABLE                         R15 K19 [{["LayoutOrder"], ["BackgroundTransparency"] = 1, ["axis"], ["minimumSize"], ["contentPadding"]}]
       40 NAMECALL                         R16 R3 K20 ["getNextOrder"]
       42 CALL                             R16 1 1
       43 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
       45 GETUPVAL                         R16 4
       46 GETTABLEKS                       R16 R16 K21 ["Axis"]
       48 GETTABLEKS                       R16 R16 K22 ["Vertical"]
       50 SETTABLEKS                       R16 R15 K16 ["axis"]
       52 GETIMPORT                        R16 K24 [UDim2.new]
       54 LOADN                            R17 1
       55 LOADN                            R18 0
       56 LOADN                            R19 0
       57 LOADN                            R20 0
       58 CALL                             R16 4 1
       59 SETTABLEKS                       R16 R15 K17 ["minimumSize"]
       61 GETIMPORT                        R16 K26 [UDim.new]
       63 LOADN                            R17 0
       64 GETTABLEKS                       R18 R1 K27 ["settingsPage"]
       66 GETTABLEKS                       R18 R18 K28 ["headerPadding"]
       68 CALL                             R16 2 1
       69 SETTABLEKS                       R16 R15 K18 ["contentPadding"]
       71 NEWTABLE                         R16 2 1
       73 GETUPVAL                         R18 3
       74 GETTABLEKS                       R18 R18 K12 ["createElement"]
       76 LOADK                            R19 K29 ["ImageButton"]
       77 NEWTABLE                         R20 8 0
       79 GETIMPORT                        R21 K24 [UDim2.new]
       81 LOADN                            R22 0
       82 GETTABLEKS                       R23 R1 K30 ["backButton"]
       84 GETTABLEKS                       R23 R23 K31 ["size"]
       86 LOADN                            R24 0
       87 GETTABLEKS                       R25 R1 K30 ["backButton"]
       89 GETTABLEKS                       R25 R25 K31 ["size"]
       91 CALL                             R21 4 1
       92 SETTABLEKS                       R21 R20 K32 ["Size"]
       94 LOADN                            R21 0
       95 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
       97 GETTABLEKS                       R21 R1 K30 ["backButton"]
       99 GETTABLEKS                       R21 R21 K33 ["image"]
      101 SETTABLEKS                       R21 R20 K34 ["Image"]
      103 LOADN                            R21 1
      104 SETTABLEKS                       R21 R20 K14 ["BackgroundTransparency"]
      106 GETUPVAL                         R21 3
      107 GETTABLEKS                       R21 R21 K35 ["Event"]
      109 GETTABLEKS                       R21 R21 K36 ["Activated"]
      111 SETTABLE                         R11 R20 R21
      112 NEWTABLE                         R21 0 1
      114 GETUPVAL                         R22 3
      115 GETTABLEKS                       R22 R22 K12 ["createElement"]
      117 GETUPVAL                         R23 5
      118 DUPTABLE                         R24 K39 [{["Cursor"] = "PointingHand"}]
      119 CALL                             R22 2 -1
      120 SETLIST                          R21 R22 -1 [1]
      122 CALL                             R18 3 1
      123 SETTABLEKS                       R18 R16 K40 ["BackButton"]
      125 GETUPVAL                         R17 3
      126 GETTABLEKS                       R17 R17 K12 ["createElement"]
      128 GETUPVAL                         R18 6
      129 DUPTABLE                         R19 K41 [{["LayoutOrder"] = 1}]
      130 CALL                             R17 2 1
      131 SETLIST                          R16 R17 1 [1]
      133 GETUPVAL                         R18 3
      134 GETTABLEKS                       R18 R18 K12 ["createElement"]
      136 GETUPVAL                         R19 7
      137 DUPTABLE                         R20 K44 [{["Title"], ["LayoutOrder"] = 2}]
      138 LOADK                            R23 K45 ["Security"]
      139 LOADK                            R24 K46 ["TitleEditSecret"]
      140 NAMECALL                         R21 R2 K47 ["getText"]
      142 CALL                             R21 3 1
      143 SETTABLEKS                       R21 R20 K42 ["Title"]
      145 CALL                             R18 2 1
      146 SETTABLEKS                       R18 R16 K48 ["Header"]
      148 CALL                             R13 3 1
      149 SETTABLEKS                       R13 R12 K7 ["HeaderFrame"]
      151 GETUPVAL                         R13 3
      152 GETTABLEKS                       R13 R13 K12 ["createElement"]
      154 GETUPVAL                         R14 8
      155 DUPTABLE                         R15 K49 [{"LayoutOrder", "Title"}]
      156 NAMECALL                         R16 R3 K20 ["getNextOrder"]
      158 CALL                             R16 1 1
      159 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      161 LOADK                            R18 K45 ["Security"]
      162 LOADK                            R19 K50 ["SecretNameLabel"]
      163 NAMECALL                         R16 R2 K47 ["getText"]
      165 CALL                             R16 3 1
      166 SETTABLEKS                       R16 R15 K42 ["Title"]
      168 DUPTABLE                         R16 K52 [{"TextBox"}]
      169 GETUPVAL                         R17 3
      170 GETTABLEKS                       R17 R17 K12 ["createElement"]
      172 GETUPVAL                         R18 9
      173 DUPTABLE                         R19 K56 [{"ErrorText", "OnTextChanged", "Text"}]
      174 GETTABLEKS                       R20 R0 K57 ["EditSecretFormNameError"]
      176 SETTABLEKS                       R20 R19 K53 ["ErrorText"]
      178 SETTABLEKS                       R8 R19 K54 ["OnTextChanged"]
      180 SETTABLEKS                       R5 R19 K55 ["Text"]
      182 CALL                             R17 2 1
      183 SETTABLEKS                       R17 R16 K51 ["TextBox"]
      185 CALL                             R13 3 1
      186 SETTABLEKS                       R13 R12 K8 ["Name"]
      188 GETUPVAL                         R13 3
      189 GETTABLEKS                       R13 R13 K12 ["createElement"]
      191 GETUPVAL                         R14 8
      192 DUPTABLE                         R15 K49 [{"LayoutOrder", "Title"}]
      193 NAMECALL                         R16 R3 K20 ["getNextOrder"]
      195 CALL                             R16 1 1
      196 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      198 LOADK                            R18 K45 ["Security"]
      199 LOADK                            R19 K58 ["SecretDomainLabel"]
      200 NAMECALL                         R16 R2 K47 ["getText"]
      202 CALL                             R16 3 1
      203 SETTABLEKS                       R16 R15 K42 ["Title"]
      205 DUPTABLE                         R16 K52 [{"TextBox"}]
      206 GETUPVAL                         R17 3
      207 GETTABLEKS                       R17 R17 K12 ["createElement"]
      209 GETUPVAL                         R18 9
      210 DUPTABLE                         R19 K56 [{"ErrorText", "OnTextChanged", "Text"}]
      211 GETTABLEKS                       R20 R0 K59 ["EditSecretFormDomainError"]
      213 SETTABLEKS                       R20 R19 K53 ["ErrorText"]
      215 SETTABLEKS                       R10 R19 K54 ["OnTextChanged"]
      217 SETTABLEKS                       R7 R19 K55 ["Text"]
      219 CALL                             R17 2 1
      220 SETTABLEKS                       R17 R16 K51 ["TextBox"]
      222 CALL                             R13 3 1
      223 SETTABLEKS                       R13 R12 K9 ["Domain"]
      225 GETUPVAL                         R13 3
      226 GETTABLEKS                       R13 R13 K12 ["createElement"]
      228 GETUPVAL                         R14 8
      229 DUPTABLE                         R15 K49 [{"LayoutOrder", "Title"}]
      230 NAMECALL                         R16 R3 K20 ["getNextOrder"]
      232 CALL                             R16 1 1
      233 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      235 LOADK                            R18 K45 ["Security"]
      236 LOADK                            R19 K60 ["SecretNewValueLabel"]
      237 NAMECALL                         R16 R2 K47 ["getText"]
      239 CALL                             R16 3 1
      240 SETTABLEKS                       R16 R15 K42 ["Title"]
      242 DUPTABLE                         R16 K52 [{"TextBox"}]
      243 GETUPVAL                         R17 3
      244 GETTABLEKS                       R17 R17 K12 ["createElement"]
      246 GETUPVAL                         R18 9
      247 DUPTABLE                         R19 K64 [{["ErrorText"] = , ["OnTextChanged"], ["Text"], ["PlaceholderText"], ["BottomText"]}]
      248 SETTABLEKS                       R9 R19 K54 ["OnTextChanged"]
      250 SETTABLEKS                       R6 R19 K55 ["Text"]
      252 LOADK                            R22 K45 ["Security"]
      253 LOADK                            R23 K65 ["PlaceholderTextSecretNewValueInput"]
      254 NAMECALL                         R20 R2 K47 ["getText"]
      256 CALL                             R20 3 1
      257 SETTABLEKS                       R20 R19 K62 ["PlaceholderText"]
      259 LOADK                            R22 K45 ["Security"]
      260 LOADK                            R23 K66 ["BottomTextSecretNewValueInput"]
      261 NAMECALL                         R20 R2 K47 ["getText"]
      263 CALL                             R20 3 1
      264 SETTABLEKS                       R20 R19 K63 ["BottomText"]
      266 CALL                             R17 2 1
      267 SETTABLEKS                       R17 R16 K51 ["TextBox"]
      269 CALL                             R13 3 1
      270 SETTABLEKS                       R13 R12 K10 ["NewValue"]
      272 RETURN                           R12 1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["HttpEnabledChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["HttpEnabled"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SecretsAsTableRowsChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["StudioApiServicesChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["StudioAccessToApisAllowed"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ThirdPartyPurchaseChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["ThirdPartyPurchaseAllowed"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ThirdPartyTeleportAllowedChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["ThirdPartyTeleportAllowed"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MeshTextureApisAllowedChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["MeshTextureApisAllowed"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["InsertFreeAssetsAllowedChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["InsertFreeAssetsAllowed"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Localization"]
        5 GETTABLEKS                       R2 R0 K2 ["InsertFreeAssetsAllowedValueChanged"]
        7 JUMPIFNOT                        R2 ; [+2]
        8 GETTABLEKS                       R2 R0 K3 ["InsertFreeAssetsAllowed"]
       10 GETTABLEKS                       R4 R0 K4 ["HttpEnabledValueChanged"]
       12 JUMPIFNOT                        R4 ; [+3]
       13 GETTABLEKS                       R3 R0 K5 ["HttpEnabled"]
       15 JUMPIF                           R3 ; [+13]
       16 GETTABLEKS                       R4 R0 K6 ["ThirdPartyPurchaseAllowedValueChanged"]
       18 JUMPIFNOT                        R4 ; [+3]
       19 GETTABLEKS                       R3 R0 K7 ["ThirdPartyPurchaseAllowed"]
       21 JUMPIF                           R3 ; [+7]
       22 GETTABLEKS                       R4 R0 K8 ["ThirdPartyTeleportAllowedValueChanged"]
       24 JUMPIFNOT                        R4 ; [+3]
       25 GETTABLEKS                       R3 R0 K9 ["ThirdPartyTeleportAllowed"]
       27 JUMPIF                           R3 ; [+1]
       28 MOVE                             R3 R2
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 LOADNIL                          R6
       32 GETUPVAL                         R7 1
       33 CALL                             R7 0 1
       34 JUMPIF                           R7 ; [+21]
       35 GETUPVAL                         R7 0
       36 NAMECALL                         R7 R7 K10 ["isLoggedInUserGameOwner"]
       38 CALL                             R7 1 1
       39 MOVE                             R4 R7
       40 JUMPIFNOT                        R4 ; [+5]
       41 LOADB                            R7 1
       42 GETTABLEKS                       R8 R0 K11 ["MeshTextureApiAmpStatus"]
       44 JUMPIFEQKS                       R8 K12 ["Granted"] ; [+2]
       46 LOADB                            R7 0
       47 MOVE                             R5 R7
       48 JUMPIFNOT                        R4 ; [+5]
       49 LOADB                            R7 1
       50 GETTABLEKS                       R8 R0 K11 ["MeshTextureApiAmpStatus"]
       52 JUMPIFEQKS                       R8 K13 ["Denied"] ; [+2]
       54 LOADB                            R7 0
       55 MOVE                             R6 R7
       56 GETTABLEKS                       R7 R0 K14 ["Stylizer"]
       58 GETUPVAL                         R8 2
       59 GETTABLEKS                       R8 R8 K15 ["new"]
       61 LOADN                            R9 1
       62 CALL                             R8 1 1
       63 GETUPVAL                         R9 3
       64 DUPTABLE                         R10 K19 [{"isOwner", "idVerified", "meshTextureApisAllowed"}]
       65 SETTABLEKS                       R4 R10 K16 ["isOwner"]
       67 SETTABLEKS                       R5 R10 K17 ["idVerified"]
       69 GETTABLEKS                       R11 R0 K20 ["MeshTextureApisAllowed"]
       71 SETTABLEKS                       R11 R10 K18 ["meshTextureApisAllowed"]
       73 CALL                             R9 1 1
       74 LOADNIL                          R10
       75 LOADNIL                          R11
       76 GETUPVAL                         R12 1
       77 CALL                             R12 0 1
       78 JUMPIFNOT                        R12 ; [+24]
       79 LOADNIL                          R10
       80 DUPTABLE                         R12 K24 [{"Text", "LinkText", "OnLinkClicked"}]
       81 LOADK                            R15 K25 ["Security"]
       82 LOADK                            R16 K26 ["EnableMeshTextureApisDescription"]
       83 DUPTABLE                         R17 K29 [{["EditableMesh"] = "EditableMesh", ["EditableImage"] = "EditableImage"}]
       84 NAMECALL                         R13 R1 K30 ["getText"]
       86 CALL                             R13 4 1
       87 SETTABLEKS                       R13 R12 K21 ["Text"]
       89 LOADK                            R15 K25 ["Security"]
       90 LOADK                            R16 K31 ["MeshTextureApisPolicyLinkText"]
       91 NAMECALL                         R13 R1 K30 ["getText"]
       93 CALL                             R13 3 1
       94 SETTABLEKS                       R13 R12 K22 ["LinkText"]
       96 DUPCLOSURE                       R13 K32 [PROTO_39]
       97 CAPTURE                          UPVAL U4
       98 CAPTURE                          UPVAL U5
       99 SETTABLEKS                       R13 R12 K23 ["OnLinkClicked"]
      101 MOVE                             R11 R12
      102 JUMP                             ; [+78]
      103 JUMPIF                           R4 ; [+6]
      104 LOADK                            R14 K25 ["Security"]
      105 LOADK                            R15 K33 ["EnableMeshTextureApisNotOwnerDescription"]
      106 NAMECALL                         R12 R1 K30 ["getText"]
      108 CALL                             R12 3 1
      109 JUMPIF                           R12 ; [+1]
      110 LOADNIL                          R12
      111 MOVE                             R10 R12
      112 JUMPIFNOT                        R5 ; [+22]
      113 DUPTABLE                         R12 K24 [{"Text", "LinkText", "OnLinkClicked"}]
      114 LOADK                            R15 K25 ["Security"]
      115 LOADK                            R16 K26 ["EnableMeshTextureApisDescription"]
      116 DUPTABLE                         R17 K29 [{["EditableMesh"] = "EditableMesh", ["EditableImage"] = "EditableImage"}]
      117 NAMECALL                         R13 R1 K30 ["getText"]
      119 CALL                             R13 4 1
      120 SETTABLEKS                       R13 R12 K21 ["Text"]
      122 LOADK                            R15 K25 ["Security"]
      123 LOADK                            R16 K31 ["MeshTextureApisPolicyLinkText"]
      124 NAMECALL                         R13 R1 K30 ["getText"]
      126 CALL                             R13 3 1
      127 SETTABLEKS                       R13 R12 K22 ["LinkText"]
      129 DUPCLOSURE                       R13 K34 [PROTO_40]
      130 CAPTURE                          UPVAL U4
      131 CAPTURE                          UPVAL U5
      132 SETTABLEKS                       R13 R12 K23 ["OnLinkClicked"]
      134 JUMPIF                           R12 ; [+45]
      135 JUMPIFNOT                        R4 ; [+22]
      136 JUMPIF                           R6 ; [+21]
      137 DUPTABLE                         R12 K24 [{"Text", "LinkText", "OnLinkClicked"}]
      138 LOADK                            R15 K25 ["Security"]
      139 LOADK                            R16 K35 ["EnableMeshTextureApisIdActionableDescription"]
      140 NAMECALL                         R13 R1 K30 ["getText"]
      142 CALL                             R13 3 1
      143 SETTABLEKS                       R13 R12 K21 ["Text"]
      145 LOADK                            R15 K25 ["Security"]
      146 LOADK                            R16 K36 ["AccountIdVerificationLinkText"]
      147 NAMECALL                         R13 R1 K30 ["getText"]
      149 CALL                             R13 3 1
      150 SETTABLEKS                       R13 R12 K22 ["LinkText"]
      152 DUPCLOSURE                       R13 K37 [PROTO_41]
      153 CAPTURE                          UPVAL U4
      154 CAPTURE                          UPVAL U6
      155 SETTABLEKS                       R13 R12 K23 ["OnLinkClicked"]
      157 JUMPIF                           R12 ; [+22]
      158 MOVE                             R12 R6
      159 JUMPIFNOT                        R12 ; [+20]
      160 DUPTABLE                         R12 K24 [{"Text", "LinkText", "OnLinkClicked"}]
      161 LOADK                            R15 K25 ["Security"]
      162 LOADK                            R16 K38 ["EnableMeshTextureApisIdDeniedDescription"]
      163 NAMECALL                         R13 R1 K30 ["getText"]
      165 CALL                             R13 3 1
      166 SETTABLEKS                       R13 R12 K21 ["Text"]
      168 LOADK                            R15 K39 ["General"]
      169 LOADK                            R16 K40 ["GuidelinesLearnMoreLink"]
      170 NAMECALL                         R13 R1 K30 ["getText"]
      172 CALL                             R13 3 1
      173 SETTABLEKS                       R13 R12 K22 ["LinkText"]
      175 DUPCLOSURE                       R13 K41 [PROTO_42]
      176 CAPTURE                          UPVAL U4
      177 CAPTURE                          UPVAL U7
      178 SETTABLEKS                       R13 R12 K23 ["OnLinkClicked"]
      180 MOVE                             R11 R12
      181 DUPTABLE                         R12 K49 [{"WarningPopup", "HttpEnabled", "Secrets", "StudioApiServicesEnabled", "ThirdPartyPurchasesEnabled", "ThirdPartyTeleportsEnabled", "MeshTextureApisEnabled", "AllowInsertFreeAssets"}]
      182 MOVE                             R13 R3
      183 JUMPIFNOT                        R13 ; [+322]
      184 GETUPVAL                         R13 8
      185 GETTABLEKS                       R13 R13 K50 ["createElement"]
      187 LOADK                            R14 K51 ["Frame"]
      188 DUPTABLE                         R15 K58 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
      189 GETIMPORT                        R16 K61 [Enum.AutomaticSize.XY]
      191 SETTABLEKS                       R16 R15 K52 ["AutomaticSize"]
      193 NAMECALL                         R16 R8 K62 ["getNextOrder"]
      195 CALL                             R16 1 1
      196 SETTABLEKS                       R16 R15 K57 ["LayoutOrder"]
      198 DUPTABLE                         R16 K66 [{"UILayout", "InsecureWarning", "AssetInsertionWarning"}]
      199 GETUPVAL                         R17 8
      200 GETTABLEKS                       R17 R17 K50 ["createElement"]
      202 LOADK                            R18 K67 ["UIListLayout"]
      203 DUPTABLE                         R19 K73 [{"FillDirection", "Padding", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
      204 GETIMPORT                        R20 K75 [Enum.FillDirection.Vertical]
      206 SETTABLEKS                       R20 R19 K68 ["FillDirection"]
      208 GETIMPORT                        R20 K77 [UDim.new]
      210 LOADN                            R21 0
      211 LOADN                            R22 4
      212 CALL                             R20 2 1
      213 SETTABLEKS                       R20 R19 K69 ["Padding"]
      215 GETIMPORT                        R20 K78 [Enum.SortOrder.LayoutOrder]
      217 SETTABLEKS                       R20 R19 K70 ["SortOrder"]
      219 GETIMPORT                        R20 K80 [Enum.HorizontalAlignment.Left]
      221 SETTABLEKS                       R20 R19 K71 ["HorizontalAlignment"]
      223 GETIMPORT                        R20 K82 [Enum.VerticalAlignment.Center]
      225 SETTABLEKS                       R20 R19 K72 ["VerticalAlignment"]
      227 CALL                             R17 2 1
      228 SETTABLEKS                       R17 R16 K63 ["UILayout"]
      230 GETUPVAL                         R17 8
      231 GETTABLEKS                       R17 R17 K50 ["createElement"]
      233 LOADK                            R18 K51 ["Frame"]
      234 DUPTABLE                         R19 K58 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
      235 GETIMPORT                        R20 K61 [Enum.AutomaticSize.XY]
      237 SETTABLEKS                       R20 R19 K52 ["AutomaticSize"]
      239 NAMECALL                         R20 R8 K62 ["getNextOrder"]
      241 CALL                             R20 1 1
      242 SETTABLEKS                       R20 R19 K57 ["LayoutOrder"]
      244 DUPTABLE                         R20 K85 [{"UILayout", "Warning", "Description"}]
      245 GETUPVAL                         R21 8
      246 GETTABLEKS                       R21 R21 K50 ["createElement"]
      248 LOADK                            R22 K67 ["UIListLayout"]
      249 DUPTABLE                         R23 K86 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
      250 GETIMPORT                        R24 K88 [Enum.FillDirection.Horizontal]
      252 SETTABLEKS                       R24 R23 K68 ["FillDirection"]
      254 GETIMPORT                        R24 K77 [UDim.new]
      256 LOADN                            R25 0
      257 GETTABLEKS                       R26 R7 K89 ["dialog"]
      259 GETTABLEKS                       R26 R26 K90 ["spacing"]
      261 CALL                             R24 2 1
      262 SETTABLEKS                       R24 R23 K69 ["Padding"]
      264 GETIMPORT                        R24 K78 [Enum.SortOrder.LayoutOrder]
      266 SETTABLEKS                       R24 R23 K70 ["SortOrder"]
      268 GETIMPORT                        R24 K82 [Enum.VerticalAlignment.Center]
      270 SETTABLEKS                       R24 R23 K72 ["VerticalAlignment"]
      272 CALL                             R21 2 1
      273 SETTABLEKS                       R21 R20 K63 ["UILayout"]
      275 GETUPVAL                         R21 8
      276 GETTABLEKS                       R21 R21 K50 ["createElement"]
      278 LOADK                            R22 K91 ["ImageLabel"]
      279 DUPTABLE                         R23 K94 [{["Image"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["Size"]}]
      280 GETTABLEKS                       R24 R7 K95 ["warningIcon"]
      282 SETTABLEKS                       R24 R23 K92 ["Image"]
      284 NAMECALL                         R24 R8 K62 ["getNextOrder"]
      286 CALL                             R24 1 1
      287 SETTABLEKS                       R24 R23 K57 ["LayoutOrder"]
      289 GETIMPORT                        R24 K98 [UDim2.fromOffset]
      291 GETTABLEKS                       R25 R7 K99 ["warningDialog"]
      293 GETTABLEKS                       R25 R25 K100 ["icon"]
      295 GETTABLEKS                       R25 R25 K101 ["size"]
      297 GETTABLEKS                       R26 R7 K99 ["warningDialog"]
      299 GETTABLEKS                       R26 R26 K100 ["icon"]
      301 GETTABLEKS                       R26 R26 K101 ["size"]
      303 CALL                             R24 2 1
      304 SETTABLEKS                       R24 R23 K93 ["Size"]
      306 CALL                             R21 2 1
      307 SETTABLEKS                       R21 R20 K83 ["Warning"]
      309 GETUPVAL                         R21 8
      310 GETTABLEKS                       R21 R21 K50 ["createElement"]
      312 GETUPVAL                         R22 9
      313 DUPTABLE                         R23 K107 [{["AutomaticSize"], ["LayoutOrder"], ["Style"] = "SubText", ["Text"], ["TextXAlignment"], ["TextColor"], ["TextSize"]}]
      314 GETIMPORT                        R24 K61 [Enum.AutomaticSize.XY]
      316 SETTABLEKS                       R24 R23 K52 ["AutomaticSize"]
      318 NAMECALL                         R24 R8 K62 ["getNextOrder"]
      320 CALL                             R24 1 1
      321 SETTABLEKS                       R24 R23 K57 ["LayoutOrder"]
      323 LOADK                            R26 K25 ["Security"]
      324 LOADK                            R27 K64 ["InsecureWarning"]
      325 NAMECALL                         R24 R1 K30 ["getText"]
      327 CALL                             R24 3 1
      328 SETTABLEKS                       R24 R23 K21 ["Text"]
      330 GETIMPORT                        R24 K108 [Enum.TextXAlignment.Left]
      332 SETTABLEKS                       R24 R23 K104 ["TextXAlignment"]
      334 GETTABLEKS                       R24 R7 K109 ["warningColor"]
      336 SETTABLEKS                       R24 R23 K105 ["TextColor"]
      338 GETTABLEKS                       R24 R7 K110 ["fontStyle"]
      340 GETTABLEKS                       R24 R24 K111 ["Subtitle"]
      342 GETTABLEKS                       R24 R24 K106 ["TextSize"]
      344 SETTABLEKS                       R24 R23 K106 ["TextSize"]
      346 CALL                             R21 2 1
      347 SETTABLEKS                       R21 R20 K84 ["Description"]
      349 CALL                             R17 3 1
      350 SETTABLEKS                       R17 R16 K64 ["InsecureWarning"]
      352 MOVE                             R17 R2
      353 JUMPIFNOT                        R17 ; [+149]
      354 GETUPVAL                         R17 8
      355 GETTABLEKS                       R17 R17 K50 ["createElement"]
      357 LOADK                            R18 K51 ["Frame"]
      358 DUPTABLE                         R19 K112 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"], ["Size"]}]
      359 GETIMPORT                        R20 K114 [Enum.AutomaticSize.Y]
      361 SETTABLEKS                       R20 R19 K52 ["AutomaticSize"]
      363 NAMECALL                         R20 R8 K62 ["getNextOrder"]
      365 CALL                             R20 1 1
      366 SETTABLEKS                       R20 R19 K57 ["LayoutOrder"]
      368 GETIMPORT                        R20 K116 [UDim2.fromScale]
      370 LOADN                            R21 1
      371 LOADN                            R22 0
      372 CALL                             R20 2 1
      373 SETTABLEKS                       R20 R19 K93 ["Size"]
      375 DUPTABLE                         R20 K118 [{"UILayout", "UIPadding", "Description"}]
      376 GETUPVAL                         R21 8
      377 GETTABLEKS                       R21 R21 K50 ["createElement"]
      379 LOADK                            R22 K67 ["UIListLayout"]
      380 DUPTABLE                         R23 K119 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
      381 GETIMPORT                        R24 K88 [Enum.FillDirection.Horizontal]
      383 SETTABLEKS                       R24 R23 K68 ["FillDirection"]
      385 GETIMPORT                        R24 K78 [Enum.SortOrder.LayoutOrder]
      387 SETTABLEKS                       R24 R23 K70 ["SortOrder"]
      389 GETIMPORT                        R24 K82 [Enum.VerticalAlignment.Center]
      391 SETTABLEKS                       R24 R23 K72 ["VerticalAlignment"]
      393 CALL                             R21 2 1
      394 SETTABLEKS                       R21 R20 K63 ["UILayout"]
      396 GETUPVAL                         R21 8
      397 GETTABLEKS                       R21 R21 K50 ["createElement"]
      399 LOADK                            R22 K117 ["UIPadding"]
      400 DUPTABLE                         R23 K121 [{"PaddingLeft"}]
      401 GETIMPORT                        R24 K77 [UDim.new]
      403 LOADN                            R25 0
      404 GETTABLEKS                       R27 R7 K99 ["warningDialog"]
      406 GETTABLEKS                       R27 R27 K100 ["icon"]
      408 GETTABLEKS                       R27 R27 K101 ["size"]
      410 GETTABLEKS                       R28 R7 K89 ["dialog"]
      412 GETTABLEKS                       R28 R28 K90 ["spacing"]
      414 ADD                              R26 R27 R28
      415 CALL                             R24 2 1
      416 SETTABLEKS                       R24 R23 K120 ["PaddingLeft"]
      418 CALL                             R21 2 1
      419 SETTABLEKS                       R21 R20 K117 ["UIPadding"]
      421 GETUPVAL                         R21 8
      422 GETTABLEKS                       R21 R21 K50 ["createElement"]
      424 GETUPVAL                         R22 10
      425 DUPTABLE                         R23 K124 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "LinkMap", "Size", "Text", "TextProps"}]
      426 GETIMPORT                        R24 K114 [Enum.AutomaticSize.Y]
      428 SETTABLEKS                       R24 R23 K52 ["AutomaticSize"]
      430 GETIMPORT                        R24 K80 [Enum.HorizontalAlignment.Left]
      432 SETTABLEKS                       R24 R23 K71 ["HorizontalAlignment"]
      434 NAMECALL                         R24 R8 K62 ["getNextOrder"]
      436 CALL                             R24 1 1
      437 SETTABLEKS                       R24 R23 K57 ["LayoutOrder"]
      439 NEWTABLE                         R24 1 0
      441 DUPTABLE                         R25 K126 [{"LinkText", "LinkCallback"}]
      442 LOADK                            R28 K25 ["Security"]
      443 LOADK                            R29 K127 ["AssetInsertionWarningLinkTOS"]
      444 NAMECALL                         R26 R1 K30 ["getText"]
      446 CALL                             R26 3 1
      447 SETTABLEKS                       R26 R25 K22 ["LinkText"]
      449 DUPCLOSURE                       R26 K128 [PROTO_43]
      450 CAPTURE                          UPVAL U4
      451 CAPTURE                          UPVAL U11
      452 SETTABLEKS                       R26 R25 K125 ["LinkCallback"]
      454 SETTABLEKS                       R25 R24 K129 ["[linkTOS]"]
      456 SETTABLEKS                       R24 R23 K122 ["LinkMap"]
      458 GETIMPORT                        R24 K116 [UDim2.fromScale]
      460 LOADN                            R25 1
      461 LOADN                            R26 0
      462 CALL                             R24 2 1
      463 SETTABLEKS                       R24 R23 K93 ["Size"]
      465 LOADK                            R26 K25 ["Security"]
      466 LOADK                            R27 K65 ["AssetInsertionWarning"]
      467 NAMECALL                         R24 R1 K30 ["getText"]
      469 CALL                             R24 3 1
      470 SETTABLEKS                       R24 R23 K21 ["Text"]
      472 DUPTABLE                         R24 K131 [{["Font"], ["Style"] = "SubText", ["TextColor"], ["TextSize"], ["TextXAlignment"]}]
      473 GETTABLEKS                       R25 R7 K110 ["fontStyle"]
      475 GETTABLEKS                       R25 R25 K111 ["Subtitle"]
      477 GETTABLEKS                       R25 R25 K130 ["Font"]
      479 SETTABLEKS                       R25 R24 K130 ["Font"]
      481 GETTABLEKS                       R25 R7 K109 ["warningColor"]
      483 SETTABLEKS                       R25 R24 K105 ["TextColor"]
      485 GETTABLEKS                       R25 R7 K110 ["fontStyle"]
      487 GETTABLEKS                       R25 R25 K111 ["Subtitle"]
      489 GETTABLEKS                       R25 R25 K106 ["TextSize"]
      491 SETTABLEKS                       R25 R24 K106 ["TextSize"]
      493 GETIMPORT                        R25 K108 [Enum.TextXAlignment.Left]
      495 SETTABLEKS                       R25 R24 K104 ["TextXAlignment"]
      497 SETTABLEKS                       R24 R23 K123 ["TextProps"]
      499 CALL                             R21 2 1
      500 SETTABLEKS                       R21 R20 K84 ["Description"]
      502 CALL                             R17 3 1
      503 SETTABLEKS                       R17 R16 K65 ["AssetInsertionWarning"]
      505 CALL                             R13 3 1
      506 SETTABLEKS                       R13 R12 K42 ["WarningPopup"]
      508 GETUPVAL                         R13 8
      509 GETTABLEKS                       R13 R13 K50 ["createElement"]
      511 GETUPVAL                         R14 12
      512 DUPTABLE                         R15 K136 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
      513 GETUPVAL                         R17 13
      514 JUMPIFNOT                        R17 ; [+6]
      515 LOADK                            R18 K39 ["General"]
      516 LOADK                            R19 K137 ["HttpDescExp"]
      517 NAMECALL                         R16 R1 K30 ["getText"]
      519 CALL                             R16 3 1
      520 JUMP                             ; [+5]
      521 LOADK                            R18 K39 ["General"]
      522 LOADK                            R19 K138 ["HttpDesc"]
      523 NAMECALL                         R16 R1 K30 ["getText"]
      525 CALL                             R16 3 1
      526 SETTABLEKS                       R16 R15 K84 ["Description"]
      528 GETTABLEKS                       R17 R0 K5 ["HttpEnabled"]
      530 JUMPIFEQKNIL                     R17 ; [+2]
      532 LOADB                            R16 0 +1
      533 LOADB                            R16 1
      534 SETTABLEKS                       R16 R15 K132 ["Disabled"]
      536 NAMECALL                         R16 R8 K62 ["getNextOrder"]
      538 CALL                             R16 1 1
      539 SETTABLEKS                       R16 R15 K57 ["LayoutOrder"]
      541 NEWCLOSURE                       R16 P5
      542 CAPTURE                          VAL R0
      543 SETTABLEKS                       R16 R15 K133 ["OnClick"]
      545 GETTABLEKS                       R16 R0 K5 ["HttpEnabled"]
      547 SETTABLEKS                       R16 R15 K134 ["Selected"]
      549 LOADK                            R18 K39 ["General"]
      550 LOADK                            R19 K139 ["TitleHttp"]
      551 NAMECALL                         R16 R1 K30 ["getText"]
      553 CALL                             R16 3 1
      554 SETTABLEKS                       R16 R15 K135 ["Title"]
      556 CALL                             R13 2 1
      557 SETTABLEKS                       R13 R12 K5 ["HttpEnabled"]
      559 GETUPVAL                         R13 8
      560 GETTABLEKS                       R13 R13 K50 ["createElement"]
      562 GETUPVAL                         R14 14
      563 DUPTABLE                         R15 K146 [{"LayoutOrder", "SecretsAsTableRows", "OnChanged", "EditSecretIdChanged", "EditSecretFormNameChanged", "EditSecretFormValueChanged", "EditSecretFormDomainChanged", "Disabled"}]
      564 NAMECALL                         R16 R8 K62 ["getNextOrder"]
      566 CALL                             R16 1 1
      567 SETTABLEKS                       R16 R15 K57 ["LayoutOrder"]
      569 GETTABLEKS                       R16 R0 K140 ["SecretsAsTableRows"]
      571 SETTABLEKS                       R16 R15 K140 ["SecretsAsTableRows"]
      573 NEWCLOSURE                       R16 P6
      574 CAPTURE                          VAL R0
      575 SETTABLEKS                       R16 R15 K141 ["OnChanged"]
      577 GETTABLEKS                       R16 R0 K142 ["EditSecretIdChanged"]
      579 SETTABLEKS                       R16 R15 K142 ["EditSecretIdChanged"]
      581 GETTABLEKS                       R16 R0 K143 ["EditSecretFormNameChanged"]
      583 SETTABLEKS                       R16 R15 K143 ["EditSecretFormNameChanged"]
      585 GETTABLEKS                       R16 R0 K144 ["EditSecretFormValueChanged"]
      587 SETTABLEKS                       R16 R15 K144 ["EditSecretFormValueChanged"]
      589 GETTABLEKS                       R16 R0 K145 ["EditSecretFormDomainChanged"]
      591 SETTABLEKS                       R16 R15 K145 ["EditSecretFormDomainChanged"]
      593 GETTABLEKS                       R17 R0 K5 ["HttpEnabled"]
      595 NOT                              R16 R17
      596 SETTABLEKS                       R16 R15 K132 ["Disabled"]
      598 CALL                             R13 2 1
      599 SETTABLEKS                       R13 R12 K43 ["Secrets"]
      601 GETUPVAL                         R13 8
      602 GETTABLEKS                       R13 R13 K50 ["createElement"]
      604 GETUPVAL                         R14 12
      605 DUPTABLE                         R15 K136 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
      606 GETUPVAL                         R17 15
      607 JUMPIFNOT                        R17 ; [+6]
      608 LOADK                            R18 K39 ["General"]
      609 LOADK                            R19 K147 ["StudioApiServicesDescExp"]
      610 NAMECALL                         R16 R1 K30 ["getText"]
      612 CALL                             R16 3 1
      613 JUMP                             ; [+5]
      614 LOADK                            R18 K39 ["General"]
      615 LOADK                            R19 K148 ["StudioApiServicesDesc"]
      616 NAMECALL                         R16 R1 K30 ["getText"]
      618 CALL                             R16 3 1
      619 SETTABLEKS                       R16 R15 K84 ["Description"]
      621 GETTABLEKS                       R17 R0 K149 ["StudioAccessToApisAllowed"]
      623 JUMPIFEQKNIL                     R17 ; [+2]
      625 LOADB                            R16 0 +1
      626 LOADB                            R16 1
      627 SETTABLEKS                       R16 R15 K132 ["Disabled"]
      629 NAMECALL                         R16 R8 K62 ["getNextOrder"]
      631 CALL                             R16 1 1
      632 SETTABLEKS                       R16 R15 K57 ["LayoutOrder"]
      634 NEWCLOSURE                       R16 P7
      635 CAPTURE                          VAL R0
      636 SETTABLEKS                       R16 R15 K133 ["OnClick"]
      638 GETTABLEKS                       R16 R0 K149 ["StudioAccessToApisAllowed"]
      640 SETTABLEKS                       R16 R15 K134 ["Selected"]
      642 LOADK                            R18 K39 ["General"]
      643 LOADK                            R19 K150 ["TitleStudioApiServices"]
      644 NAMECALL                         R16 R1 K30 ["getText"]
      646 CALL                             R16 3 1
      647 SETTABLEKS                       R16 R15 K135 ["Title"]
      649 CALL                             R13 2 1
      650 SETTABLEKS                       R13 R12 K44 ["StudioApiServicesEnabled"]
      652 GETUPVAL                         R13 8
      653 GETTABLEKS                       R13 R13 K50 ["createElement"]
      655 GETUPVAL                         R14 12
      656 DUPTABLE                         R15 K136 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
      657 LOADK                            R18 K25 ["Security"]
      658 LOADK                            R19 K151 ["EnableThirdPartyPurchasesDescription"]
      659 NAMECALL                         R16 R1 K30 ["getText"]
      661 CALL                             R16 3 1
      662 SETTABLEKS                       R16 R15 K84 ["Description"]
      664 GETTABLEKS                       R17 R0 K7 ["ThirdPartyPurchaseAllowed"]
      666 JUMPIFEQKNIL                     R17 ; [+2]
      668 LOADB                            R16 0 +1
      669 LOADB                            R16 1
      670 SETTABLEKS                       R16 R15 K132 ["Disabled"]
      672 NAMECALL                         R16 R8 K62 ["getNextOrder"]
      674 CALL                             R16 1 1
      675 SETTABLEKS                       R16 R15 K57 ["LayoutOrder"]
      677 NEWCLOSURE                       R16 P8
      678 CAPTURE                          VAL R0
      679 SETTABLEKS                       R16 R15 K133 ["OnClick"]
      681 GETTABLEKS                       R16 R0 K7 ["ThirdPartyPurchaseAllowed"]
      683 SETTABLEKS                       R16 R15 K134 ["Selected"]
      685 LOADK                            R18 K25 ["Security"]
      686 LOADK                            R19 K152 ["EnableThirdPartyPurchases"]
      687 NAMECALL                         R16 R1 K30 ["getText"]
      689 CALL                             R16 3 1
      690 SETTABLEKS                       R16 R15 K135 ["Title"]
      692 CALL                             R13 2 1
      693 SETTABLEKS                       R13 R12 K45 ["ThirdPartyPurchasesEnabled"]
      695 GETUPVAL                         R13 8
      696 GETTABLEKS                       R13 R13 K50 ["createElement"]
      698 GETUPVAL                         R14 12
      699 DUPTABLE                         R15 K136 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
      700 GETUPVAL                         R17 13
      701 JUMPIFNOT                        R17 ; [+6]
      702 LOADK                            R18 K25 ["Security"]
      703 LOADK                            R19 K153 ["EnableThirdPartyTeleportsDescriptionExp"]
      704 NAMECALL                         R16 R1 K30 ["getText"]
      706 CALL                             R16 3 1
      707 JUMP                             ; [+5]
      708 LOADK                            R18 K25 ["Security"]
      709 LOADK                            R19 K154 ["EnableThirdPartyTeleportsDescription"]
      710 NAMECALL                         R16 R1 K30 ["getText"]
      712 CALL                             R16 3 1
      713 SETTABLEKS                       R16 R15 K84 ["Description"]
      715 GETTABLEKS                       R17 R0 K9 ["ThirdPartyTeleportAllowed"]
      717 JUMPIFEQKNIL                     R17 ; [+2]
      719 LOADB                            R16 0 +1
      720 LOADB                            R16 1
      721 SETTABLEKS                       R16 R15 K132 ["Disabled"]
      723 NAMECALL                         R16 R8 K62 ["getNextOrder"]
      725 CALL                             R16 1 1
      726 SETTABLEKS                       R16 R15 K57 ["LayoutOrder"]
      728 NEWCLOSURE                       R16 P9
      729 CAPTURE                          VAL R0
      730 SETTABLEKS                       R16 R15 K133 ["OnClick"]
      732 GETTABLEKS                       R16 R0 K9 ["ThirdPartyTeleportAllowed"]
      734 SETTABLEKS                       R16 R15 K134 ["Selected"]
      736 LOADK                            R18 K25 ["Security"]
      737 LOADK                            R19 K155 ["EnableThirdPartyTeleports"]
      738 NAMECALL                         R16 R1 K30 ["getText"]
      740 CALL                             R16 3 1
      741 SETTABLEKS                       R16 R15 K135 ["Title"]
      743 CALL                             R13 2 1
      744 SETTABLEKS                       R13 R12 K46 ["ThirdPartyTeleportsEnabled"]
      746 GETUPVAL                         R13 8
      747 GETTABLEKS                       R13 R13 K50 ["createElement"]
      749 GETUPVAL                         R14 12
      750 DUPTABLE                         R15 K157 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title", "LinkProps"}]
      751 SETTABLEKS                       R10 R15 K84 ["Description"]
      753 SETTABLEKS                       R9 R15 K132 ["Disabled"]
      755 NAMECALL                         R16 R8 K62 ["getNextOrder"]
      757 CALL                             R16 1 1
      758 SETTABLEKS                       R16 R15 K57 ["LayoutOrder"]
      760 NEWCLOSURE                       R16 P10
      761 CAPTURE                          VAL R0
      762 SETTABLEKS                       R16 R15 K133 ["OnClick"]
      764 GETTABLEKS                       R16 R0 K20 ["MeshTextureApisAllowed"]
      766 SETTABLEKS                       R16 R15 K134 ["Selected"]
      768 LOADK                            R18 K25 ["Security"]
      769 LOADK                            R19 K158 ["EnableMeshTextureApis"]
      770 NAMECALL                         R16 R1 K30 ["getText"]
      772 CALL                             R16 3 1
      773 SETTABLEKS                       R16 R15 K135 ["Title"]
      775 SETTABLEKS                       R11 R15 K156 ["LinkProps"]
      777 CALL                             R13 2 1
      778 SETTABLEKS                       R13 R12 K47 ["MeshTextureApisEnabled"]
      780 GETUPVAL                         R13 8
      781 GETTABLEKS                       R13 R13 K50 ["createElement"]
      783 GETUPVAL                         R14 12
      784 DUPTABLE                         R15 K136 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
      785 LOADK                            R18 K39 ["General"]
      786 LOADK                            R19 K159 ["AllowInsertFreeAssetsDesc"]
      787 NAMECALL                         R16 R1 K30 ["getText"]
      789 CALL                             R16 3 1
      790 SETTABLEKS                       R16 R15 K84 ["Description"]
      792 GETTABLEKS                       R17 R0 K3 ["InsertFreeAssetsAllowed"]
      794 JUMPIFEQKNIL                     R17 ; [+2]
      796 LOADB                            R16 0 +1
      797 LOADB                            R16 1
      798 SETTABLEKS                       R16 R15 K132 ["Disabled"]
      800 NAMECALL                         R16 R8 K62 ["getNextOrder"]
      802 CALL                             R16 1 1
      803 SETTABLEKS                       R16 R15 K57 ["LayoutOrder"]
      805 NEWCLOSURE                       R16 P11
      806 CAPTURE                          VAL R0
      807 SETTABLEKS                       R16 R15 K133 ["OnClick"]
      809 GETTABLEKS                       R16 R0 K3 ["InsertFreeAssetsAllowed"]
      811 SETTABLEKS                       R16 R15 K134 ["Selected"]
      813 LOADK                            R18 K39 ["General"]
      814 LOADK                            R19 K160 ["AllowInsertFreeAssetsTitle"]
      815 NAMECALL                         R16 R1 K30 ["getText"]
      817 CALL                             R16 3 1
      818 SETTABLEKS                       R16 R15 K135 ["Title"]
      820 CALL                             R13 2 1
      821 SETTABLEKS                       R13 R12 K48 ["AllowInsertFreeAssets"]
      823 RETURN                           R12 1

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["props"]
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_53:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 LOADB                            R2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          UPVAL U9
       17 CAPTURE                          UPVAL U10
       18 CAPTURE                          UPVAL U11
       19 CAPTURE                          UPVAL U12
       20 CAPTURE                          UPVAL U13
       21 CAPTURE                          UPVAL U14
       22 GETTABLEKS                       R4 R0 K0 ["props"]
       24 GETTABLEKS                       R4 R4 K2 ["EditSecretId"]
       26 JUMPIFNOT                        R4 ; [+4]
       27 LOADB                            R2 0
       28 NEWCLOSURE                       R3 P1
       29 CAPTURE                          UPVAL U15
       30 CAPTURE                          VAL R0
       31 GETUPVAL                         R4 7
       32 GETTABLEKS                       R4 R4 K3 ["createElement"]
       34 GETUPVAL                         R5 16
       35 DUPTABLE                         R6 K10 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren", "ShowHeader"}]
       36 GETUPVAL                         R7 17
       37 SETTABLEKS                       R7 R6 K4 ["SettingsLoadJobs"]
       39 GETUPVAL                         R7 18
       40 SETTABLEKS                       R7 R6 K5 ["SettingsSaveJobs"]
       42 LOADK                            R9 K11 ["General"]
       43 LOADK                            R11 K12 ["Category"]
       44 GETUPVAL                         R12 19
       45 CONCAT                           R10 R11 R12
       46 NAMECALL                         R7 R1 K13 ["getText"]
       48 CALL                             R7 3 1
       49 SETTABLEKS                       R7 R6 K6 ["Title"]
       51 GETUPVAL                         R7 19
       52 SETTABLEKS                       R7 R6 K7 ["PageId"]
       54 SETTABLEKS                       R3 R6 K8 ["CreateChildren"]
       56 SETTABLEKS                       R2 R6 K9 ["ShowHeader"]
       58 CALL                             R4 2 -1
       59 RETURN                           R4 -1

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Settings"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_55:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Settings"]
        3 GETTABLEKS                       R3 R3 K1 ["Changed"]
        5 GETTABLE                         R2 R3 R0
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_56:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R0
        7 GETUPVAL                         R4 1
        8 MOVE                             R5 R2
        9 MOVE                             R6 R3
       10 MOVE                             R7 R0
       11 CALL                             R4 3 1
       12 RETURN                           R4 1

PROTO_57:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_58:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_59:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

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
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K9 ["FitFrame"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K10 ["FitFrameOnAxis"]
       39 GETTABLEKS                       R6 R3 K11 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K12 ["withContext"]
       43 GETIMPORT                        R8 K4 [require]
       45 GETTABLEKS                       R9 R0 K13 ["Src"]
       47 GETTABLEKS                       R9 R9 K11 ["ContextServices"]
       49 GETTABLEKS                       R9 R9 K14 ["Dialog"]
       51 CALL                             R8 1 1
       52 GETTABLEKS                       R9 R3 K15 ["UI"]
       54 GETTABLEKS                       R10 R9 K16 ["HoverArea"]
       56 GETTABLEKS                       R11 R9 K17 ["Separator"]
       58 GETTABLEKS                       R12 R9 K18 ["TextInput"]
       60 GETTABLEKS                       R13 R9 K19 ["TextLabel"]
       62 GETTABLEKS                       R14 R9 K20 ["TextWithLinks"]
       64 GETTABLEKS                       R15 R9 K21 ["TitledFrame"]
       66 GETTABLEKS                       R16 R3 K22 ["Util"]
       68 GETTABLEKS                       R17 R16 K23 ["LayoutOrderIterator"]
       70 GETIMPORT                        R18 K25 [game]
       72 LOADK                            R20 K26 ["ExperienceSettingsApiServicesGameToExp"]
       73 LOADB                            R21 0
       74 NAMECALL                         R18 R18 K27 ["DefineFastFlag"]
       76 CALL                             R18 3 1
       77 GETIMPORT                        R19 K25 [game]
       79 LOADK                            R21 K28 ["StudioService"]
       80 NAMECALL                         R19 R19 K29 ["GetService"]
       82 CALL                             R19 2 1
       83 GETIMPORT                        R20 K25 [game]
       85 LOADK                            R22 K30 ["GuiService"]
       86 NAMECALL                         R20 R20 K29 ["GetService"]
       88 CALL                             R20 2 1
       89 GETIMPORT                        R21 K1 [script]
       91 GETTABLEKS                       R21 R21 K2 ["Parent"]
       93 GETIMPORT                        R22 K4 [require]
       95 GETTABLEKS                       R23 R0 K13 ["Src"]
       97 GETTABLEKS                       R23 R23 K31 ["Actions"]
       99 GETTABLEKS                       R23 R23 K32 ["SetCreatorId"]
      101 CALL                             R22 1 1
      102 GETIMPORT                        R23 K4 [require]
      104 GETTABLEKS                       R24 R0 K13 ["Src"]
      106 GETTABLEKS                       R24 R24 K31 ["Actions"]
      108 GETTABLEKS                       R24 R24 K33 ["SetCreatorName"]
      110 CALL                             R23 1 1
      111 GETIMPORT                        R24 K4 [require]
      113 GETTABLEKS                       R25 R0 K13 ["Src"]
      115 GETTABLEKS                       R25 R25 K31 ["Actions"]
      117 GETTABLEKS                       R25 R25 K34 ["SetCreatorType"]
      119 CALL                             R24 1 1
      120 GETIMPORT                        R25 K4 [require]
      122 GETTABLEKS                       R26 R21 K31 ["Actions"]
      124 GETTABLEKS                       R26 R26 K35 ["SetGroupOwnerId"]
      126 CALL                             R25 1 1
      127 GETIMPORT                        R26 K4 [require]
      129 GETTABLEKS                       R27 R0 K13 ["Src"]
      131 GETTABLEKS                       R27 R27 K36 ["Components"]
      133 GETTABLEKS                       R27 R27 K37 ["Header"]
      135 CALL                             R26 1 1
      136 GETIMPORT                        R27 K4 [require]
      138 GETTABLEKS                       R28 R0 K13 ["Src"]
      140 GETTABLEKS                       R28 R28 K36 ["Components"]
      142 GETTABLEKS                       R28 R28 K38 ["SettingsPages"]
      144 GETTABLEKS                       R28 R28 K39 ["SettingsPage"]
      146 CALL                             R27 1 1
      147 GETIMPORT                        R28 K4 [require]
      149 GETTABLEKS                       R29 R0 K13 ["Src"]
      151 GETTABLEKS                       R29 R29 K36 ["Components"]
      153 GETTABLEKS                       R29 R29 K14 ["Dialog"]
      155 GETTABLEKS                       R29 R29 K40 ["SimpleDialog"]
      157 CALL                             R28 1 1
      158 GETIMPORT                        R29 K4 [require]
      160 GETTABLEKS                       R30 R0 K13 ["Src"]
      162 GETTABLEKS                       R30 R30 K36 ["Components"]
      164 GETTABLEKS                       R30 R30 K41 ["ToggleButtonWithTitle"]
      166 CALL                             R29 1 1
      167 GETIMPORT                        R30 K4 [require]
      169 GETTABLEKS                       R31 R0 K13 ["Src"]
      171 GETTABLEKS                       R31 R31 K31 ["Actions"]
      173 GETTABLEKS                       R31 R31 K42 ["AddChange"]
      175 CALL                             R30 1 1
      176 GETIMPORT                        R31 K4 [require]
      178 GETTABLEKS                       R32 R0 K13 ["Src"]
      180 GETTABLEKS                       R32 R32 K31 ["Actions"]
      182 GETTABLEKS                       R32 R32 K43 ["AddErrors"]
      184 CALL                             R31 1 1
      185 GETIMPORT                        R32 K4 [require]
      187 GETTABLEKS                       R33 R0 K13 ["Src"]
      189 GETTABLEKS                       R33 R33 K31 ["Actions"]
      191 GETTABLEKS                       R33 R33 K44 ["DiscardError"]
      193 CALL                             R32 1 1
      194 GETIMPORT                        R33 K4 [require]
      196 GETTABLEKS                       R34 R0 K13 ["Src"]
      198 GETTABLEKS                       R34 R34 K31 ["Actions"]
      200 GETTABLEKS                       R34 R34 K45 ["DiscardErrors"]
      202 CALL                             R33 1 1
      203 GETIMPORT                        R34 K4 [require]
      205 GETTABLEKS                       R35 R0 K13 ["Src"]
      207 GETTABLEKS                       R35 R35 K31 ["Actions"]
      209 GETTABLEKS                       R35 R35 K46 ["SetEditSecretFormField"]
      211 CALL                             R34 1 1
      212 GETIMPORT                        R35 K4 [require]
      214 GETTABLEKS                       R36 R0 K13 ["Src"]
      216 GETTABLEKS                       R36 R36 K31 ["Actions"]
      218 GETTABLEKS                       R36 R36 K47 ["SetEditSecretId"]
      220 CALL                             R35 1 1
      221 GETIMPORT                        R36 K4 [require]
      223 GETTABLEKS                       R37 R0 K13 ["Src"]
      225 GETTABLEKS                       R37 R37 K22 ["Util"]
      227 GETTABLEKS                       R37 R37 K48 ["Analytics"]
      229 CALL                             R36 1 1
      230 GETIMPORT                        R37 K4 [require]
      232 GETTABLEKS                       R38 R0 K13 ["Src"]
      234 GETTABLEKS                       R38 R38 K22 ["Util"]
      236 GETTABLEKS                       R38 R38 K49 ["SecretUtils"]
      238 CALL                             R37 1 1
      239 GETIMPORT                        R38 K4 [require]
      241 GETTABLEKS                       R39 R21 K36 ["Components"]
      243 GETTABLEKS                       R39 R39 K50 ["Secrets"]
      245 CALL                             R38 1 1
      246 GETIMPORT                        R39 K4 [require]
      248 GETTABLEKS                       R40 R0 K13 ["Src"]
      250 GETTABLEKS                       R40 R40 K51 ["Flags"]
      252 GETTABLEKS                       R40 R40 K52 ["getFFlagGameSettingsEditableApiRemoveIdVerification"]
      254 CALL                             R39 1 1
      255 GETIMPORT                        R40 K4 [require]
      257 GETTABLEKS                       R41 R0 K13 ["Src"]
      259 GETTABLEKS                       R41 R41 K22 ["Util"]
      261 GETTABLEKS                       R41 R41 K53 ["getMeshTextureApisToggleDisabled"]
      263 CALL                             R40 1 1
      264 GETIMPORT                        R41 K1 [script]
      266 GETTABLEKS                       R41 R41 K54 ["Name"]
      268 GETIMPORT                        R42 K25 [game]
      270 LOADK                            R44 K55 ["PolicyLink"]
      271 LOADK                            R45 K56 ["https://help.roblox.com/hc/articles/115004647846-Roblox-Terms-of-Use#creators-restrictions-on-use"]
      272 NAMECALL                         R42 R42 K57 ["DefineFastString"]
      274 CALL                             R42 3 1
      275 GETIMPORT                        R43 K25 [game]
      277 LOADK                            R45 K58 ["IdVerificationLink"]
      278 LOADK                            R46 K59 ["https://www.roblox.com/my/account#!/info"]
      279 NAMECALL                         R43 R43 K57 ["DefineFastString"]
      281 CALL                             R43 3 1
      282 GETIMPORT                        R44 K25 [game]
      284 LOADK                            R46 K60 ["CreatorIdVerificationLink"]
      285 LOADK                            R47 K61 ["https://create.roblox.com/docs/production/publishing/account-verification"]
      286 NAMECALL                         R44 R44 K57 ["DefineFastString"]
      288 CALL                             R44 3 1
      289 GETIMPORT                        R45 K25 [game]
      291 LOADK                            R47 K62 ["TermsOfUseCreatorTermsLink"]
      292 LOADK                            R48 K63 ["https://help.roblox.com/hc/articles/115004647846-Roblox-Terms-of-Use#creator-terms"]
      293 NAMECALL                         R45 R45 K57 ["DefineFastString"]
      295 CALL                             R45 3 1
      296 GETIMPORT                        R46 K4 [require]
      298 GETTABLEKS                       R47 R0 K13 ["Src"]
      300 GETTABLEKS                       R47 R47 K51 ["Flags"]
      302 GETTABLEKS                       R47 R47 K64 ["getFFlagGameSettingsGameToExperience"]
      304 CALL                             R46 1 1
      305 CALL                             R46 0 1
      306 DUPCLOSURE                       R47 K65 [PROTO_11]
      307 CAPTURE                          VAL R23
      308 CAPTURE                          VAL R22
      309 CAPTURE                          VAL R24
      310 CAPTURE                          VAL R25
      311 CAPTURE                          VAL R39
      312 DUPCLOSURE                       R48 K66 [PROTO_13]
      313 CAPTURE                          VAL R36
      314 DUPCLOSURE                       R49 K67 [PROTO_21]
      315 CAPTURE                          VAL R37
      316 CAPTURE                          VAL R30
      317 CAPTURE                          VAL R36
      318 DUPCLOSURE                       R50 K68 [PROTO_22]
      319 DUPCLOSURE                       R51 K69 [PROTO_23]
      320 DUPCLOSURE                       R52 K70 [PROTO_31]
      321 CAPTURE                          VAL R35
      322 CAPTURE                          VAL R34
      323 CAPTURE                          VAL R31
      324 CAPTURE                          VAL R32
      325 CAPTURE                          VAL R33
      326 GETTABLEKS                       R53 R1 K71 ["PureComponent"]
      328 GETIMPORT                        R55 K1 [script]
      330 GETTABLEKS                       R55 R55 K54 ["Name"]
      332 NAMECALL                         R53 R53 K72 ["extend"]
      334 CALL                             R53 2 1
      335 DUPCLOSURE                       R54 K73 [PROTO_32]
      336 SETTABLEKS                       R54 R53 K74 ["isGroupGame"]
      338 DUPCLOSURE                       R54 K75 [PROTO_33]
      339 CAPTURE                          VAL R19
      340 SETTABLEKS                       R54 R53 K76 ["isLoggedInUserGameOwner"]
      342 DUPCLOSURE                       R54 K77 [PROTO_38]
      343 CAPTURE                          VAL R17
      344 CAPTURE                          VAL R37
      345 CAPTURE                          VAL R28
      346 CAPTURE                          VAL R1
      347 CAPTURE                          VAL R5
      348 CAPTURE                          VAL R10
      349 CAPTURE                          VAL R11
      350 CAPTURE                          VAL R26
      351 CAPTURE                          VAL R15
      352 CAPTURE                          VAL R12
      353 DUPCLOSURE                       R55 K78 [PROTO_53]
      354 CAPTURE                          VAL R39
      355 CAPTURE                          VAL R17
      356 CAPTURE                          VAL R40
      357 CAPTURE                          VAL R20
      358 CAPTURE                          VAL R42
      359 CAPTURE                          VAL R43
      360 CAPTURE                          VAL R44
      361 CAPTURE                          VAL R1
      362 CAPTURE                          VAL R13
      363 CAPTURE                          VAL R14
      364 CAPTURE                          VAL R45
      365 CAPTURE                          VAL R29
      366 CAPTURE                          VAL R46
      367 CAPTURE                          VAL R38
      368 CAPTURE                          VAL R18
      369 CAPTURE                          VAL R54
      370 CAPTURE                          VAL R27
      371 CAPTURE                          VAL R47
      372 CAPTURE                          VAL R49
      373 CAPTURE                          VAL R41
      374 SETTABLEKS                       R55 R53 K79 ["render"]
      376 MOVE                             R55 R7
      377 DUPTABLE                         R56 K82 [{"Localization", "Stylizer", "Dialog"}]
      378 GETTABLEKS                       R57 R6 K80 ["Localization"]
      380 SETTABLEKS                       R57 R56 K80 ["Localization"]
      382 GETTABLEKS                       R57 R6 K81 ["Stylizer"]
      384 SETTABLEKS                       R57 R56 K81 ["Stylizer"]
      386 SETTABLEKS                       R8 R56 K14 ["Dialog"]
      388 CALL                             R55 1 1
      389 MOVE                             R56 R53
      390 CALL                             R55 1 1
      391 MOVE                             R53 R55
      392 GETIMPORT                        R55 K4 [require]
      394 GETTABLEKS                       R56 R0 K13 ["Src"]
      396 GETTABLEKS                       R56 R56 K83 ["Networking"]
      398 GETTABLEKS                       R56 R56 K84 ["settingFromState"]
      400 CALL                             R55 1 1
      401 GETTABLEKS                       R56 R2 K85 ["connect"]
      403 DUPCLOSURE                       R57 K86 [PROTO_56]
      404 CAPTURE                          VAL R55
      405 CAPTURE                          VAL R51
      406 DUPCLOSURE                       R58 K87 [PROTO_59]
      407 CAPTURE                          VAL R30
      408 CAPTURE                          VAL R52
      409 CALL                             R56 2 1
      410 MOVE                             R57 R53
      411 CALL                             R56 1 1
      412 MOVE                             R53 R56
      413 SETTABLEKS                       R41 R53 K88 ["LocalizationId"]
      415 RETURN                           R53 1
