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
        1 NAMECALL                         R1 R1 K0 ["GetMeshTextureApiAmpStatus"]
        3 CALL                             R1 1 1
        4 SETTABLEKS                       R1 R0 K1 ["MeshTextureApiAmpStatus"]
        6 RETURN                           R0 0

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
       51 CAPTURE                          VAL R5
       52 NEWCLOSURE                       R18 P9
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R4
       55 NEWCLOSURE                       R19 P10
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R3
       58 SETLIST                          R8 R9 11 [1]
       60 RETURN                           R8 1

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
        1 GETTABLEKS                       R0 R0 K0 ["HttpEnabledChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["HttpEnabled"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SecretsAsTableRowsChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["StudioApiServicesChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["StudioAccessToApisAllowed"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ThirdPartyPurchaseChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["ThirdPartyPurchaseAllowed"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ThirdPartyTeleportAllowedChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["ThirdPartyTeleportAllowed"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MeshTextureApisAllowedChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["MeshTextureApisAllowed"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["InsertFreeAssetsAllowedChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["InsertFreeAssetsAllowed"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_50:
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
       32 GETUPVAL                         R7 0
       33 NAMECALL                         R7 R7 K10 ["isLoggedInUserGameOwner"]
       35 CALL                             R7 1 1
       36 MOVE                             R4 R7
       37 JUMPIFNOT                        R4 ; [+5]
       38 LOADB                            R7 1
       39 GETTABLEKS                       R8 R0 K11 ["MeshTextureApiAmpStatus"]
       41 JUMPIFEQKS                       R8 K12 ["Granted"] ; [+2]
       43 LOADB                            R7 0
       44 MOVE                             R5 R7
       45 JUMPIFNOT                        R4 ; [+5]
       46 LOADB                            R7 1
       47 GETTABLEKS                       R8 R0 K11 ["MeshTextureApiAmpStatus"]
       49 JUMPIFEQKS                       R8 K13 ["Denied"] ; [+2]
       51 LOADB                            R7 0
       52 MOVE                             R6 R7
       53 GETTABLEKS                       R7 R0 K14 ["Stylizer"]
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K15 ["new"]
       58 LOADN                            R9 1
       59 CALL                             R8 1 1
       60 DUPTABLE                         R9 K23 [{"WarningPopup", "HttpEnabled", "Secrets", "StudioApiServicesEnabled", "ThirdPartyPurchasesEnabled", "ThirdPartyTeleportsEnabled", "MeshTextureApisEnabled", "AllowInsertFreeAssets"}]
       61 MOVE                             R10 R3
       62 JUMPIFNOT                        R10 ; [+322]
       63 GETUPVAL                         R10 2
       64 GETTABLEKS                       R10 R10 K24 ["createElement"]
       66 LOADK                            R11 K25 ["Frame"]
       67 DUPTABLE                         R12 K32 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
       68 GETIMPORT                        R13 K35 [Enum.AutomaticSize.XY]
       70 SETTABLEKS                       R13 R12 K26 ["AutomaticSize"]
       72 NAMECALL                         R13 R8 K36 ["getNextOrder"]
       74 CALL                             R13 1 1
       75 SETTABLEKS                       R13 R12 K31 ["LayoutOrder"]
       77 DUPTABLE                         R13 K40 [{"UILayout", "InsecureWarning", "AssetInsertionWarning"}]
       78 GETUPVAL                         R14 2
       79 GETTABLEKS                       R14 R14 K24 ["createElement"]
       81 LOADK                            R15 K41 ["UIListLayout"]
       82 DUPTABLE                         R16 K47 [{"FillDirection", "Padding", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
       83 GETIMPORT                        R17 K49 [Enum.FillDirection.Vertical]
       85 SETTABLEKS                       R17 R16 K42 ["FillDirection"]
       87 GETIMPORT                        R17 K51 [UDim.new]
       89 LOADN                            R18 0
       90 LOADN                            R19 4
       91 CALL                             R17 2 1
       92 SETTABLEKS                       R17 R16 K43 ["Padding"]
       94 GETIMPORT                        R17 K52 [Enum.SortOrder.LayoutOrder]
       96 SETTABLEKS                       R17 R16 K44 ["SortOrder"]
       98 GETIMPORT                        R17 K54 [Enum.HorizontalAlignment.Left]
      100 SETTABLEKS                       R17 R16 K45 ["HorizontalAlignment"]
      102 GETIMPORT                        R17 K56 [Enum.VerticalAlignment.Center]
      104 SETTABLEKS                       R17 R16 K46 ["VerticalAlignment"]
      106 CALL                             R14 2 1
      107 SETTABLEKS                       R14 R13 K37 ["UILayout"]
      109 GETUPVAL                         R14 2
      110 GETTABLEKS                       R14 R14 K24 ["createElement"]
      112 LOADK                            R15 K25 ["Frame"]
      113 DUPTABLE                         R16 K32 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
      114 GETIMPORT                        R17 K35 [Enum.AutomaticSize.XY]
      116 SETTABLEKS                       R17 R16 K26 ["AutomaticSize"]
      118 NAMECALL                         R17 R8 K36 ["getNextOrder"]
      120 CALL                             R17 1 1
      121 SETTABLEKS                       R17 R16 K31 ["LayoutOrder"]
      123 DUPTABLE                         R17 K59 [{"UILayout", "Warning", "Description"}]
      124 GETUPVAL                         R18 2
      125 GETTABLEKS                       R18 R18 K24 ["createElement"]
      127 LOADK                            R19 K41 ["UIListLayout"]
      128 DUPTABLE                         R20 K60 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
      129 GETIMPORT                        R21 K62 [Enum.FillDirection.Horizontal]
      131 SETTABLEKS                       R21 R20 K42 ["FillDirection"]
      133 GETIMPORT                        R21 K51 [UDim.new]
      135 LOADN                            R22 0
      136 GETTABLEKS                       R23 R7 K63 ["dialog"]
      138 GETTABLEKS                       R23 R23 K64 ["spacing"]
      140 CALL                             R21 2 1
      141 SETTABLEKS                       R21 R20 K43 ["Padding"]
      143 GETIMPORT                        R21 K52 [Enum.SortOrder.LayoutOrder]
      145 SETTABLEKS                       R21 R20 K44 ["SortOrder"]
      147 GETIMPORT                        R21 K56 [Enum.VerticalAlignment.Center]
      149 SETTABLEKS                       R21 R20 K46 ["VerticalAlignment"]
      151 CALL                             R18 2 1
      152 SETTABLEKS                       R18 R17 K37 ["UILayout"]
      154 GETUPVAL                         R18 2
      155 GETTABLEKS                       R18 R18 K24 ["createElement"]
      157 LOADK                            R19 K65 ["ImageLabel"]
      158 DUPTABLE                         R20 K68 [{["Image"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["Size"]}]
      159 GETTABLEKS                       R21 R7 K69 ["warningIcon"]
      161 SETTABLEKS                       R21 R20 K66 ["Image"]
      163 NAMECALL                         R21 R8 K36 ["getNextOrder"]
      165 CALL                             R21 1 1
      166 SETTABLEKS                       R21 R20 K31 ["LayoutOrder"]
      168 GETIMPORT                        R21 K72 [UDim2.fromOffset]
      170 GETTABLEKS                       R22 R7 K73 ["warningDialog"]
      172 GETTABLEKS                       R22 R22 K74 ["icon"]
      174 GETTABLEKS                       R22 R22 K75 ["size"]
      176 GETTABLEKS                       R23 R7 K73 ["warningDialog"]
      178 GETTABLEKS                       R23 R23 K74 ["icon"]
      180 GETTABLEKS                       R23 R23 K75 ["size"]
      182 CALL                             R21 2 1
      183 SETTABLEKS                       R21 R20 K67 ["Size"]
      185 CALL                             R18 2 1
      186 SETTABLEKS                       R18 R17 K57 ["Warning"]
      188 GETUPVAL                         R18 2
      189 GETTABLEKS                       R18 R18 K24 ["createElement"]
      191 GETUPVAL                         R19 3
      192 DUPTABLE                         R20 K82 [{["AutomaticSize"], ["LayoutOrder"], ["Style"] = "SubText", ["Text"], ["TextXAlignment"], ["TextColor"], ["TextSize"]}]
      193 GETIMPORT                        R21 K35 [Enum.AutomaticSize.XY]
      195 SETTABLEKS                       R21 R20 K26 ["AutomaticSize"]
      197 NAMECALL                         R21 R8 K36 ["getNextOrder"]
      199 CALL                             R21 1 1
      200 SETTABLEKS                       R21 R20 K31 ["LayoutOrder"]
      202 LOADK                            R23 K83 ["Security"]
      203 LOADK                            R24 K38 ["InsecureWarning"]
      204 NAMECALL                         R21 R1 K84 ["getText"]
      206 CALL                             R21 3 1
      207 SETTABLEKS                       R21 R20 K78 ["Text"]
      209 GETIMPORT                        R21 K85 [Enum.TextXAlignment.Left]
      211 SETTABLEKS                       R21 R20 K79 ["TextXAlignment"]
      213 GETTABLEKS                       R21 R7 K86 ["warningColor"]
      215 SETTABLEKS                       R21 R20 K80 ["TextColor"]
      217 GETTABLEKS                       R21 R7 K87 ["fontStyle"]
      219 GETTABLEKS                       R21 R21 K88 ["Subtitle"]
      221 GETTABLEKS                       R21 R21 K81 ["TextSize"]
      223 SETTABLEKS                       R21 R20 K81 ["TextSize"]
      225 CALL                             R18 2 1
      226 SETTABLEKS                       R18 R17 K58 ["Description"]
      228 CALL                             R14 3 1
      229 SETTABLEKS                       R14 R13 K38 ["InsecureWarning"]
      231 MOVE                             R14 R2
      232 JUMPIFNOT                        R14 ; [+149]
      233 GETUPVAL                         R14 2
      234 GETTABLEKS                       R14 R14 K24 ["createElement"]
      236 LOADK                            R15 K25 ["Frame"]
      237 DUPTABLE                         R16 K89 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"], ["Size"]}]
      238 GETIMPORT                        R17 K91 [Enum.AutomaticSize.Y]
      240 SETTABLEKS                       R17 R16 K26 ["AutomaticSize"]
      242 NAMECALL                         R17 R8 K36 ["getNextOrder"]
      244 CALL                             R17 1 1
      245 SETTABLEKS                       R17 R16 K31 ["LayoutOrder"]
      247 GETIMPORT                        R17 K93 [UDim2.fromScale]
      249 LOADN                            R18 1
      250 LOADN                            R19 0
      251 CALL                             R17 2 1
      252 SETTABLEKS                       R17 R16 K67 ["Size"]
      254 DUPTABLE                         R17 K95 [{"UILayout", "UIPadding", "Description"}]
      255 GETUPVAL                         R18 2
      256 GETTABLEKS                       R18 R18 K24 ["createElement"]
      258 LOADK                            R19 K41 ["UIListLayout"]
      259 DUPTABLE                         R20 K96 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
      260 GETIMPORT                        R21 K62 [Enum.FillDirection.Horizontal]
      262 SETTABLEKS                       R21 R20 K42 ["FillDirection"]
      264 GETIMPORT                        R21 K52 [Enum.SortOrder.LayoutOrder]
      266 SETTABLEKS                       R21 R20 K44 ["SortOrder"]
      268 GETIMPORT                        R21 K56 [Enum.VerticalAlignment.Center]
      270 SETTABLEKS                       R21 R20 K46 ["VerticalAlignment"]
      272 CALL                             R18 2 1
      273 SETTABLEKS                       R18 R17 K37 ["UILayout"]
      275 GETUPVAL                         R18 2
      276 GETTABLEKS                       R18 R18 K24 ["createElement"]
      278 LOADK                            R19 K94 ["UIPadding"]
      279 DUPTABLE                         R20 K98 [{"PaddingLeft"}]
      280 GETIMPORT                        R21 K51 [UDim.new]
      282 LOADN                            R22 0
      283 GETTABLEKS                       R24 R7 K73 ["warningDialog"]
      285 GETTABLEKS                       R24 R24 K74 ["icon"]
      287 GETTABLEKS                       R24 R24 K75 ["size"]
      289 GETTABLEKS                       R25 R7 K63 ["dialog"]
      291 GETTABLEKS                       R25 R25 K64 ["spacing"]
      293 ADD                              R23 R24 R25
      294 CALL                             R21 2 1
      295 SETTABLEKS                       R21 R20 K97 ["PaddingLeft"]
      297 CALL                             R18 2 1
      298 SETTABLEKS                       R18 R17 K94 ["UIPadding"]
      300 GETUPVAL                         R18 2
      301 GETTABLEKS                       R18 R18 K24 ["createElement"]
      303 GETUPVAL                         R19 4
      304 DUPTABLE                         R20 K101 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "LinkMap", "Size", "Text", "TextProps"}]
      305 GETIMPORT                        R21 K91 [Enum.AutomaticSize.Y]
      307 SETTABLEKS                       R21 R20 K26 ["AutomaticSize"]
      309 GETIMPORT                        R21 K54 [Enum.HorizontalAlignment.Left]
      311 SETTABLEKS                       R21 R20 K45 ["HorizontalAlignment"]
      313 NAMECALL                         R21 R8 K36 ["getNextOrder"]
      315 CALL                             R21 1 1
      316 SETTABLEKS                       R21 R20 K31 ["LayoutOrder"]
      318 NEWTABLE                         R21 1 0
      320 DUPTABLE                         R22 K104 [{"LinkText", "LinkCallback"}]
      321 LOADK                            R25 K83 ["Security"]
      322 LOADK                            R26 K105 ["AssetInsertionWarningLinkTOS"]
      323 NAMECALL                         R23 R1 K84 ["getText"]
      325 CALL                             R23 3 1
      326 SETTABLEKS                       R23 R22 K102 ["LinkText"]
      328 DUPCLOSURE                       R23 K106 [PROTO_39]
      329 CAPTURE                          UPVAL U5
      330 CAPTURE                          UPVAL U6
      331 SETTABLEKS                       R23 R22 K103 ["LinkCallback"]
      333 SETTABLEKS                       R22 R21 K107 ["[linkTOS]"]
      335 SETTABLEKS                       R21 R20 K99 ["LinkMap"]
      337 GETIMPORT                        R21 K93 [UDim2.fromScale]
      339 LOADN                            R22 1
      340 LOADN                            R23 0
      341 CALL                             R21 2 1
      342 SETTABLEKS                       R21 R20 K67 ["Size"]
      344 LOADK                            R23 K83 ["Security"]
      345 LOADK                            R24 K39 ["AssetInsertionWarning"]
      346 NAMECALL                         R21 R1 K84 ["getText"]
      348 CALL                             R21 3 1
      349 SETTABLEKS                       R21 R20 K78 ["Text"]
      351 DUPTABLE                         R21 K109 [{["Font"], ["Style"] = "SubText", ["TextColor"], ["TextSize"], ["TextXAlignment"]}]
      352 GETTABLEKS                       R22 R7 K87 ["fontStyle"]
      354 GETTABLEKS                       R22 R22 K88 ["Subtitle"]
      356 GETTABLEKS                       R22 R22 K108 ["Font"]
      358 SETTABLEKS                       R22 R21 K108 ["Font"]
      360 GETTABLEKS                       R22 R7 K86 ["warningColor"]
      362 SETTABLEKS                       R22 R21 K80 ["TextColor"]
      364 GETTABLEKS                       R22 R7 K87 ["fontStyle"]
      366 GETTABLEKS                       R22 R22 K88 ["Subtitle"]
      368 GETTABLEKS                       R22 R22 K81 ["TextSize"]
      370 SETTABLEKS                       R22 R21 K81 ["TextSize"]
      372 GETIMPORT                        R22 K85 [Enum.TextXAlignment.Left]
      374 SETTABLEKS                       R22 R21 K79 ["TextXAlignment"]
      376 SETTABLEKS                       R21 R20 K100 ["TextProps"]
      378 CALL                             R18 2 1
      379 SETTABLEKS                       R18 R17 K58 ["Description"]
      381 CALL                             R14 3 1
      382 SETTABLEKS                       R14 R13 K39 ["AssetInsertionWarning"]
      384 CALL                             R10 3 1
      385 SETTABLEKS                       R10 R9 K16 ["WarningPopup"]
      387 GETUPVAL                         R10 2
      388 GETTABLEKS                       R10 R10 K24 ["createElement"]
      390 GETUPVAL                         R11 7
      391 DUPTABLE                         R12 K114 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
      392 GETUPVAL                         R14 8
      393 JUMPIFNOT                        R14 ; [+6]
      394 LOADK                            R15 K115 ["General"]
      395 LOADK                            R16 K116 ["HttpDescExp"]
      396 NAMECALL                         R13 R1 K84 ["getText"]
      398 CALL                             R13 3 1
      399 JUMP                             ; [+5]
      400 LOADK                            R15 K115 ["General"]
      401 LOADK                            R16 K117 ["HttpDesc"]
      402 NAMECALL                         R13 R1 K84 ["getText"]
      404 CALL                             R13 3 1
      405 SETTABLEKS                       R13 R12 K58 ["Description"]
      407 GETTABLEKS                       R14 R0 K5 ["HttpEnabled"]
      409 JUMPIFEQKNIL                     R14 ; [+2]
      411 LOADB                            R13 0 +1
      412 LOADB                            R13 1
      413 SETTABLEKS                       R13 R12 K110 ["Disabled"]
      415 NAMECALL                         R13 R8 K36 ["getNextOrder"]
      417 CALL                             R13 1 1
      418 SETTABLEKS                       R13 R12 K31 ["LayoutOrder"]
      420 NEWCLOSURE                       R13 P1
      421 CAPTURE                          VAL R0
      422 SETTABLEKS                       R13 R12 K111 ["OnClick"]
      424 GETTABLEKS                       R13 R0 K5 ["HttpEnabled"]
      426 SETTABLEKS                       R13 R12 K112 ["Selected"]
      428 LOADK                            R15 K115 ["General"]
      429 LOADK                            R16 K118 ["TitleHttp"]
      430 NAMECALL                         R13 R1 K84 ["getText"]
      432 CALL                             R13 3 1
      433 SETTABLEKS                       R13 R12 K113 ["Title"]
      435 CALL                             R10 2 1
      436 SETTABLEKS                       R10 R9 K5 ["HttpEnabled"]
      438 GETUPVAL                         R10 2
      439 GETTABLEKS                       R10 R10 K24 ["createElement"]
      441 GETUPVAL                         R11 9
      442 DUPTABLE                         R12 K125 [{"LayoutOrder", "SecretsAsTableRows", "OnChanged", "EditSecretIdChanged", "EditSecretFormNameChanged", "EditSecretFormValueChanged", "EditSecretFormDomainChanged", "Disabled"}]
      443 NAMECALL                         R13 R8 K36 ["getNextOrder"]
      445 CALL                             R13 1 1
      446 SETTABLEKS                       R13 R12 K31 ["LayoutOrder"]
      448 GETTABLEKS                       R13 R0 K119 ["SecretsAsTableRows"]
      450 SETTABLEKS                       R13 R12 K119 ["SecretsAsTableRows"]
      452 NEWCLOSURE                       R13 P2
      453 CAPTURE                          VAL R0
      454 SETTABLEKS                       R13 R12 K120 ["OnChanged"]
      456 GETTABLEKS                       R13 R0 K121 ["EditSecretIdChanged"]
      458 SETTABLEKS                       R13 R12 K121 ["EditSecretIdChanged"]
      460 GETTABLEKS                       R13 R0 K122 ["EditSecretFormNameChanged"]
      462 SETTABLEKS                       R13 R12 K122 ["EditSecretFormNameChanged"]
      464 GETTABLEKS                       R13 R0 K123 ["EditSecretFormValueChanged"]
      466 SETTABLEKS                       R13 R12 K123 ["EditSecretFormValueChanged"]
      468 GETTABLEKS                       R13 R0 K124 ["EditSecretFormDomainChanged"]
      470 SETTABLEKS                       R13 R12 K124 ["EditSecretFormDomainChanged"]
      472 GETTABLEKS                       R14 R0 K5 ["HttpEnabled"]
      474 NOT                              R13 R14
      475 SETTABLEKS                       R13 R12 K110 ["Disabled"]
      477 CALL                             R10 2 1
      478 SETTABLEKS                       R10 R9 K17 ["Secrets"]
      480 GETUPVAL                         R10 2
      481 GETTABLEKS                       R10 R10 K24 ["createElement"]
      483 GETUPVAL                         R11 7
      484 DUPTABLE                         R12 K114 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
      485 GETUPVAL                         R14 10
      486 JUMPIFNOT                        R14 ; [+6]
      487 LOADK                            R15 K115 ["General"]
      488 LOADK                            R16 K126 ["StudioApiServicesDescExp"]
      489 NAMECALL                         R13 R1 K84 ["getText"]
      491 CALL                             R13 3 1
      492 JUMP                             ; [+5]
      493 LOADK                            R15 K115 ["General"]
      494 LOADK                            R16 K127 ["StudioApiServicesDesc"]
      495 NAMECALL                         R13 R1 K84 ["getText"]
      497 CALL                             R13 3 1
      498 SETTABLEKS                       R13 R12 K58 ["Description"]
      500 GETTABLEKS                       R14 R0 K128 ["StudioAccessToApisAllowed"]
      502 JUMPIFEQKNIL                     R14 ; [+2]
      504 LOADB                            R13 0 +1
      505 LOADB                            R13 1
      506 SETTABLEKS                       R13 R12 K110 ["Disabled"]
      508 NAMECALL                         R13 R8 K36 ["getNextOrder"]
      510 CALL                             R13 1 1
      511 SETTABLEKS                       R13 R12 K31 ["LayoutOrder"]
      513 NEWCLOSURE                       R13 P3
      514 CAPTURE                          VAL R0
      515 SETTABLEKS                       R13 R12 K111 ["OnClick"]
      517 GETTABLEKS                       R13 R0 K128 ["StudioAccessToApisAllowed"]
      519 SETTABLEKS                       R13 R12 K112 ["Selected"]
      521 LOADK                            R15 K115 ["General"]
      522 LOADK                            R16 K129 ["TitleStudioApiServices"]
      523 NAMECALL                         R13 R1 K84 ["getText"]
      525 CALL                             R13 3 1
      526 SETTABLEKS                       R13 R12 K113 ["Title"]
      528 CALL                             R10 2 1
      529 SETTABLEKS                       R10 R9 K18 ["StudioApiServicesEnabled"]
      531 GETUPVAL                         R10 2
      532 GETTABLEKS                       R10 R10 K24 ["createElement"]
      534 GETUPVAL                         R11 7
      535 DUPTABLE                         R12 K114 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
      536 LOADK                            R15 K83 ["Security"]
      537 LOADK                            R16 K130 ["EnableThirdPartyPurchasesDescription"]
      538 NAMECALL                         R13 R1 K84 ["getText"]
      540 CALL                             R13 3 1
      541 SETTABLEKS                       R13 R12 K58 ["Description"]
      543 GETTABLEKS                       R14 R0 K7 ["ThirdPartyPurchaseAllowed"]
      545 JUMPIFEQKNIL                     R14 ; [+2]
      547 LOADB                            R13 0 +1
      548 LOADB                            R13 1
      549 SETTABLEKS                       R13 R12 K110 ["Disabled"]
      551 NAMECALL                         R13 R8 K36 ["getNextOrder"]
      553 CALL                             R13 1 1
      554 SETTABLEKS                       R13 R12 K31 ["LayoutOrder"]
      556 NEWCLOSURE                       R13 P4
      557 CAPTURE                          VAL R0
      558 SETTABLEKS                       R13 R12 K111 ["OnClick"]
      560 GETTABLEKS                       R13 R0 K7 ["ThirdPartyPurchaseAllowed"]
      562 SETTABLEKS                       R13 R12 K112 ["Selected"]
      564 LOADK                            R15 K83 ["Security"]
      565 LOADK                            R16 K131 ["EnableThirdPartyPurchases"]
      566 NAMECALL                         R13 R1 K84 ["getText"]
      568 CALL                             R13 3 1
      569 SETTABLEKS                       R13 R12 K113 ["Title"]
      571 CALL                             R10 2 1
      572 SETTABLEKS                       R10 R9 K19 ["ThirdPartyPurchasesEnabled"]
      574 GETUPVAL                         R10 2
      575 GETTABLEKS                       R10 R10 K24 ["createElement"]
      577 GETUPVAL                         R11 7
      578 DUPTABLE                         R12 K114 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
      579 GETUPVAL                         R14 8
      580 JUMPIFNOT                        R14 ; [+6]
      581 LOADK                            R15 K83 ["Security"]
      582 LOADK                            R16 K132 ["EnableThirdPartyTeleportsDescriptionExp"]
      583 NAMECALL                         R13 R1 K84 ["getText"]
      585 CALL                             R13 3 1
      586 JUMP                             ; [+5]
      587 LOADK                            R15 K83 ["Security"]
      588 LOADK                            R16 K133 ["EnableThirdPartyTeleportsDescription"]
      589 NAMECALL                         R13 R1 K84 ["getText"]
      591 CALL                             R13 3 1
      592 SETTABLEKS                       R13 R12 K58 ["Description"]
      594 GETTABLEKS                       R14 R0 K9 ["ThirdPartyTeleportAllowed"]
      596 JUMPIFEQKNIL                     R14 ; [+2]
      598 LOADB                            R13 0 +1
      599 LOADB                            R13 1
      600 SETTABLEKS                       R13 R12 K110 ["Disabled"]
      602 NAMECALL                         R13 R8 K36 ["getNextOrder"]
      604 CALL                             R13 1 1
      605 SETTABLEKS                       R13 R12 K31 ["LayoutOrder"]
      607 NEWCLOSURE                       R13 P5
      608 CAPTURE                          VAL R0
      609 SETTABLEKS                       R13 R12 K111 ["OnClick"]
      611 GETTABLEKS                       R13 R0 K9 ["ThirdPartyTeleportAllowed"]
      613 SETTABLEKS                       R13 R12 K112 ["Selected"]
      615 LOADK                            R15 K83 ["Security"]
      616 LOADK                            R16 K134 ["EnableThirdPartyTeleports"]
      617 NAMECALL                         R13 R1 K84 ["getText"]
      619 CALL                             R13 3 1
      620 SETTABLEKS                       R13 R12 K113 ["Title"]
      622 CALL                             R10 2 1
      623 SETTABLEKS                       R10 R9 K20 ["ThirdPartyTeleportsEnabled"]
      625 GETUPVAL                         R10 2
      626 GETTABLEKS                       R10 R10 K24 ["createElement"]
      628 GETUPVAL                         R11 7
      629 DUPTABLE                         R12 K136 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title", "LinkProps"}]
      630 JUMPIF                           R4 ; [+6]
      631 LOADK                            R15 K83 ["Security"]
      632 LOADK                            R16 K137 ["EnableMeshTextureApisNotOwnerDescription"]
      633 NAMECALL                         R13 R1 K84 ["getText"]
      635 CALL                             R13 3 1
      636 JUMPIF                           R13 ; [+1]
      637 LOADNIL                          R13
      638 SETTABLEKS                       R13 R12 K58 ["Description"]
      640 NOT                              R13 R5
      641 JUMPIF                           R13 ; [+8]
      642 NOT                              R13 R4
      643 JUMPIF                           R13 ; [+6]
      644 GETTABLEKS                       R14 R0 K138 ["MeshTextureApisAllowed"]
      646 JUMPIFEQKNIL                     R14 ; [+2]
      648 LOADB                            R13 0 +1
      649 LOADB                            R13 1
      650 SETTABLEKS                       R13 R12 K110 ["Disabled"]
      652 NAMECALL                         R13 R8 K36 ["getNextOrder"]
      654 CALL                             R13 1 1
      655 SETTABLEKS                       R13 R12 K31 ["LayoutOrder"]
      657 NEWCLOSURE                       R13 P6
      658 CAPTURE                          VAL R0
      659 SETTABLEKS                       R13 R12 K111 ["OnClick"]
      661 GETTABLEKS                       R13 R0 K138 ["MeshTextureApisAllowed"]
      663 SETTABLEKS                       R13 R12 K112 ["Selected"]
      665 LOADK                            R15 K83 ["Security"]
      666 LOADK                            R16 K139 ["EnableMeshTextureApis"]
      667 NAMECALL                         R13 R1 K84 ["getText"]
      669 CALL                             R13 3 1
      670 SETTABLEKS                       R13 R12 K113 ["Title"]
      672 JUMPIFNOT                        R5 ; [+22]
      673 DUPTABLE                         R13 K141 [{"Text", "LinkText", "OnLinkClicked"}]
      674 LOADK                            R16 K83 ["Security"]
      675 LOADK                            R17 K142 ["EnableMeshTextureApisDescription"]
      676 DUPTABLE                         R18 K145 [{["EditableMesh"] = "EditableMesh", ["EditableImage"] = "EditableImage"}]
      677 NAMECALL                         R14 R1 K84 ["getText"]
      679 CALL                             R14 4 1
      680 SETTABLEKS                       R14 R13 K78 ["Text"]
      682 LOADK                            R16 K83 ["Security"]
      683 LOADK                            R17 K146 ["MeshTextureApisPolicyLinkText"]
      684 NAMECALL                         R14 R1 K84 ["getText"]
      686 CALL                             R14 3 1
      687 SETTABLEKS                       R14 R13 K102 ["LinkText"]
      689 DUPCLOSURE                       R14 K147 [PROTO_46]
      690 CAPTURE                          UPVAL U5
      691 CAPTURE                          UPVAL U11
      692 SETTABLEKS                       R14 R13 K140 ["OnLinkClicked"]
      694 JUMPIF                           R13 ; [+45]
      695 JUMPIFNOT                        R4 ; [+22]
      696 JUMPIF                           R6 ; [+21]
      697 DUPTABLE                         R13 K141 [{"Text", "LinkText", "OnLinkClicked"}]
      698 LOADK                            R16 K83 ["Security"]
      699 LOADK                            R17 K148 ["EnableMeshTextureApisIdActionableDescription"]
      700 NAMECALL                         R14 R1 K84 ["getText"]
      702 CALL                             R14 3 1
      703 SETTABLEKS                       R14 R13 K78 ["Text"]
      705 LOADK                            R16 K83 ["Security"]
      706 LOADK                            R17 K149 ["AccountIdVerificationLinkText"]
      707 NAMECALL                         R14 R1 K84 ["getText"]
      709 CALL                             R14 3 1
      710 SETTABLEKS                       R14 R13 K102 ["LinkText"]
      712 DUPCLOSURE                       R14 K150 [PROTO_47]
      713 CAPTURE                          UPVAL U5
      714 CAPTURE                          UPVAL U12
      715 SETTABLEKS                       R14 R13 K140 ["OnLinkClicked"]
      717 JUMPIF                           R13 ; [+22]
      718 MOVE                             R13 R6
      719 JUMPIFNOT                        R13 ; [+20]
      720 DUPTABLE                         R13 K141 [{"Text", "LinkText", "OnLinkClicked"}]
      721 LOADK                            R16 K83 ["Security"]
      722 LOADK                            R17 K151 ["EnableMeshTextureApisIdDeniedDescription"]
      723 NAMECALL                         R14 R1 K84 ["getText"]
      725 CALL                             R14 3 1
      726 SETTABLEKS                       R14 R13 K78 ["Text"]
      728 LOADK                            R16 K115 ["General"]
      729 LOADK                            R17 K152 ["GuidelinesLearnMoreLink"]
      730 NAMECALL                         R14 R1 K84 ["getText"]
      732 CALL                             R14 3 1
      733 SETTABLEKS                       R14 R13 K102 ["LinkText"]
      735 DUPCLOSURE                       R14 K153 [PROTO_48]
      736 CAPTURE                          UPVAL U5
      737 CAPTURE                          UPVAL U13
      738 SETTABLEKS                       R14 R13 K140 ["OnLinkClicked"]
      740 SETTABLEKS                       R13 R12 K135 ["LinkProps"]
      742 CALL                             R10 2 1
      743 SETTABLEKS                       R10 R9 K21 ["MeshTextureApisEnabled"]
      745 GETUPVAL                         R10 2
      746 GETTABLEKS                       R10 R10 K24 ["createElement"]
      748 GETUPVAL                         R11 7
      749 DUPTABLE                         R12 K114 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
      750 LOADK                            R15 K115 ["General"]
      751 LOADK                            R16 K154 ["AllowInsertFreeAssetsDesc"]
      752 NAMECALL                         R13 R1 K84 ["getText"]
      754 CALL                             R13 3 1
      755 SETTABLEKS                       R13 R12 K58 ["Description"]
      757 GETTABLEKS                       R14 R0 K3 ["InsertFreeAssetsAllowed"]
      759 JUMPIFEQKNIL                     R14 ; [+2]
      761 LOADB                            R13 0 +1
      762 LOADB                            R13 1
      763 SETTABLEKS                       R13 R12 K110 ["Disabled"]
      765 NAMECALL                         R13 R8 K36 ["getNextOrder"]
      767 CALL                             R13 1 1
      768 SETTABLEKS                       R13 R12 K31 ["LayoutOrder"]
      770 NEWCLOSURE                       R13 P10
      771 CAPTURE                          VAL R0
      772 SETTABLEKS                       R13 R12 K111 ["OnClick"]
      774 GETTABLEKS                       R13 R0 K3 ["InsertFreeAssetsAllowed"]
      776 SETTABLEKS                       R13 R12 K112 ["Selected"]
      778 LOADK                            R15 K115 ["General"]
      779 LOADK                            R16 K155 ["AllowInsertFreeAssetsTitle"]
      780 NAMECALL                         R13 R1 K84 ["getText"]
      782 CALL                             R13 3 1
      783 SETTABLEKS                       R13 R12 K113 ["Title"]
      785 CALL                             R10 2 1
      786 SETTABLEKS                       R10 R9 K22 ["AllowInsertFreeAssets"]
      788 RETURN                           R9 1

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["props"]
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_52:
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
       20 GETTABLEKS                       R4 R0 K0 ["props"]
       22 GETTABLEKS                       R4 R4 K2 ["EditSecretId"]
       24 JUMPIFNOT                        R4 ; [+4]
       25 LOADB                            R2 0
       26 NEWCLOSURE                       R3 P1
       27 CAPTURE                          UPVAL U13
       28 CAPTURE                          VAL R0
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K3 ["createElement"]
       32 GETUPVAL                         R5 14
       33 DUPTABLE                         R6 K10 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren", "ShowHeader"}]
       34 GETUPVAL                         R7 15
       35 SETTABLEKS                       R7 R6 K4 ["SettingsLoadJobs"]
       37 GETUPVAL                         R7 16
       38 SETTABLEKS                       R7 R6 K5 ["SettingsSaveJobs"]
       40 LOADK                            R9 K11 ["General"]
       41 LOADK                            R11 K12 ["Category"]
       42 GETUPVAL                         R12 17
       43 CONCAT                           R10 R11 R12
       44 NAMECALL                         R7 R1 K13 ["getText"]
       46 CALL                             R7 3 1
       47 SETTABLEKS                       R7 R6 K6 ["Title"]
       49 GETUPVAL                         R7 17
       50 SETTABLEKS                       R7 R6 K7 ["PageId"]
       52 SETTABLEKS                       R3 R6 K8 ["CreateChildren"]
       54 SETTABLEKS                       R2 R6 K9 ["ShowHeader"]
       56 CALL                             R4 2 -1
       57 RETURN                           R4 -1

PROTO_53:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Settings"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_54:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Settings"]
        3 GETTABLEKS                       R3 R3 K1 ["Changed"]
        5 GETTABLE                         R2 R3 R0
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_55:
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

PROTO_56:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_57:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_58:
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
      246 GETIMPORT                        R39 K1 [script]
      248 GETTABLEKS                       R39 R39 K51 ["Name"]
      250 GETIMPORT                        R40 K25 [game]
      252 LOADK                            R42 K52 ["PolicyLink"]
      253 LOADK                            R43 K53 ["https://help.roblox.com/hc/articles/115004647846-Roblox-Terms-of-Use#creators-restrictions-on-use"]
      254 NAMECALL                         R40 R40 K54 ["DefineFastString"]
      256 CALL                             R40 3 1
      257 GETIMPORT                        R41 K25 [game]
      259 LOADK                            R43 K55 ["IdVerificationLink"]
      260 LOADK                            R44 K56 ["https://www.roblox.com/my/account#!/info"]
      261 NAMECALL                         R41 R41 K54 ["DefineFastString"]
      263 CALL                             R41 3 1
      264 GETIMPORT                        R42 K25 [game]
      266 LOADK                            R44 K57 ["CreatorIdVerificationLink"]
      267 LOADK                            R45 K58 ["https://create.roblox.com/docs/production/publishing/account-verification"]
      268 NAMECALL                         R42 R42 K54 ["DefineFastString"]
      270 CALL                             R42 3 1
      271 GETIMPORT                        R43 K25 [game]
      273 LOADK                            R45 K59 ["TermsOfUseCreatorTermsLink"]
      274 LOADK                            R46 K60 ["https://help.roblox.com/hc/articles/115004647846-Roblox-Terms-of-Use#creator-terms"]
      275 NAMECALL                         R43 R43 K54 ["DefineFastString"]
      277 CALL                             R43 3 1
      278 GETIMPORT                        R44 K4 [require]
      280 GETTABLEKS                       R45 R0 K13 ["Src"]
      282 GETTABLEKS                       R45 R45 K61 ["Flags"]
      284 GETTABLEKS                       R45 R45 K62 ["getFFlagGameSettingsGameToExperience"]
      286 CALL                             R44 1 1
      287 CALL                             R44 0 1
      288 DUPCLOSURE                       R45 K63 [PROTO_11]
      289 CAPTURE                          VAL R23
      290 CAPTURE                          VAL R22
      291 CAPTURE                          VAL R24
      292 CAPTURE                          VAL R25
      293 DUPCLOSURE                       R46 K64 [PROTO_13]
      294 CAPTURE                          VAL R36
      295 DUPCLOSURE                       R47 K65 [PROTO_21]
      296 CAPTURE                          VAL R37
      297 CAPTURE                          VAL R30
      298 CAPTURE                          VAL R36
      299 DUPCLOSURE                       R48 K66 [PROTO_22]
      300 DUPCLOSURE                       R49 K67 [PROTO_23]
      301 DUPCLOSURE                       R50 K68 [PROTO_31]
      302 CAPTURE                          VAL R35
      303 CAPTURE                          VAL R34
      304 CAPTURE                          VAL R31
      305 CAPTURE                          VAL R32
      306 CAPTURE                          VAL R33
      307 GETTABLEKS                       R51 R1 K69 ["PureComponent"]
      309 GETIMPORT                        R53 K1 [script]
      311 GETTABLEKS                       R53 R53 K51 ["Name"]
      313 NAMECALL                         R51 R51 K70 ["extend"]
      315 CALL                             R51 2 1
      316 DUPCLOSURE                       R52 K71 [PROTO_32]
      317 SETTABLEKS                       R52 R51 K72 ["isGroupGame"]
      319 DUPCLOSURE                       R52 K73 [PROTO_33]
      320 CAPTURE                          VAL R19
      321 SETTABLEKS                       R52 R51 K74 ["isLoggedInUserGameOwner"]
      323 DUPCLOSURE                       R52 K75 [PROTO_38]
      324 CAPTURE                          VAL R17
      325 CAPTURE                          VAL R37
      326 CAPTURE                          VAL R28
      327 CAPTURE                          VAL R1
      328 CAPTURE                          VAL R5
      329 CAPTURE                          VAL R10
      330 CAPTURE                          VAL R11
      331 CAPTURE                          VAL R26
      332 CAPTURE                          VAL R15
      333 CAPTURE                          VAL R12
      334 DUPCLOSURE                       R53 K76 [PROTO_52]
      335 CAPTURE                          VAL R17
      336 CAPTURE                          VAL R1
      337 CAPTURE                          VAL R13
      338 CAPTURE                          VAL R14
      339 CAPTURE                          VAL R20
      340 CAPTURE                          VAL R43
      341 CAPTURE                          VAL R29
      342 CAPTURE                          VAL R44
      343 CAPTURE                          VAL R38
      344 CAPTURE                          VAL R18
      345 CAPTURE                          VAL R40
      346 CAPTURE                          VAL R41
      347 CAPTURE                          VAL R42
      348 CAPTURE                          VAL R52
      349 CAPTURE                          VAL R27
      350 CAPTURE                          VAL R45
      351 CAPTURE                          VAL R47
      352 CAPTURE                          VAL R39
      353 SETTABLEKS                       R53 R51 K77 ["render"]
      355 MOVE                             R53 R7
      356 DUPTABLE                         R54 K80 [{"Localization", "Stylizer", "Dialog"}]
      357 GETTABLEKS                       R55 R6 K78 ["Localization"]
      359 SETTABLEKS                       R55 R54 K78 ["Localization"]
      361 GETTABLEKS                       R55 R6 K79 ["Stylizer"]
      363 SETTABLEKS                       R55 R54 K79 ["Stylizer"]
      365 SETTABLEKS                       R8 R54 K14 ["Dialog"]
      367 CALL                             R53 1 1
      368 MOVE                             R54 R51
      369 CALL                             R53 1 1
      370 MOVE                             R51 R53
      371 GETIMPORT                        R53 K4 [require]
      373 GETTABLEKS                       R54 R0 K13 ["Src"]
      375 GETTABLEKS                       R54 R54 K81 ["Networking"]
      377 GETTABLEKS                       R54 R54 K82 ["settingFromState"]
      379 CALL                             R53 1 1
      380 GETTABLEKS                       R54 R2 K83 ["connect"]
      382 DUPCLOSURE                       R55 K84 [PROTO_55]
      383 CAPTURE                          VAL R53
      384 CAPTURE                          VAL R49
      385 DUPCLOSURE                       R56 K85 [PROTO_58]
      386 CAPTURE                          VAL R30
      387 CAPTURE                          VAL R50
      388 CALL                             R54 2 1
      389 MOVE                             R55 R51
      390 CALL                             R54 1 1
      391 MOVE                             R51 R54
      392 SETTABLEKS                       R39 R51 K86 ["LocalizationId"]
      394 RETURN                           R51 1
