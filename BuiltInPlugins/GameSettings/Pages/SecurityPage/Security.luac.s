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
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R1 1
        3 NAMECALL                         R1 R1 K0 ["GetSecretsAsTableRows"]
        5 CALL                             R1 1 1
        6 SETTABLEKS                       R1 R0 K1 ["SecretsAsTableRows"]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 NAMECALL                         R1 R1 K2 ["GetSecrets"]
       12 CALL                             R1 1 1
       13 SETTABLEKS                       R1 R0 K3 ["Secrets"]
       15 RETURN                           R0 0

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
        3 GETTABLEKS                       R4 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R4 K2 ["game"]
        7 GETTABLEKS                       R5 R2 K1 ["Metadata"]
        9 GETTABLEKS                       R4 R5 K3 ["gameId"]
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
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          VAL R5
       34 NEWCLOSURE                       R14 P5
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U1
       39 NEWCLOSURE                       R15 P6
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U2
       44 NEWCLOSURE                       R16 P7
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R7
       50 CAPTURE                          UPVAL U4
       51 NEWCLOSURE                       R17 P8
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Settings"]
        3 GETTABLEKS                       R1 R2 K1 ["Changed"]
        5 GETUPVAL                         R2 1
        6 GETTABLE                         R0 R1 R2
        7 JUMPIFEQKNIL                     R0 ; [+10]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K2 ["onSecuritySettingChange"]
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
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetSecrets"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["SetStudioAccessToApisAllowed"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["SetThirdPartyPurchasesAllowed"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["SetThirdPartyTeleportsAllowed"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["SetMeshTextureApisAllowed"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K1 [game]
        3 MOVE                             R4 R0
        4 NAMECALL                         R1 R1 K2 ["SetInsertFreeAssetsAllowed"]
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+58]
        2 GETUPVAL                         R2 1
        3 JUMPIFNOT                        R2 ; [+56]
        4 NAMECALL                         R2 R0 K0 ["getState"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R4 R2 K1 ["EditAsset"]
        9 GETTABLEKS                       R3 R4 K2 ["editSecretId"]
       11 JUMPIFNOT                        R3 ; [+48]
       12 GETTABLEKS                       R6 R2 K3 ["Settings"]
       14 GETTABLEKS                       R5 R6 K4 ["Changed"]
       16 GETTABLEKS                       R4 R5 K5 ["SecretsAsTableRows"]
       18 JUMPIFNOT                        R4 ; [+7]
       19 GETTABLEKS                       R5 R2 K3 ["Settings"]
       21 GETTABLEKS                       R4 R5 K4 ["Changed"]
       23 GETTABLEKS                       R3 R4 K5 ["SecretsAsTableRows"]
       25 JUMP                             ; [+6]
       26 GETTABLEKS                       R5 R2 K3 ["Settings"]
       28 GETTABLEKS                       R4 R5 K6 ["Current"]
       30 GETTABLEKS                       R3 R4 K5 ["SecretsAsTableRows"]
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R4 R5 K7 ["getUpdateSecretRowAtIndex"]
       35 MOVE                             R5 R3
       36 GETTABLEKS                       R7 R2 K1 ["EditAsset"]
       38 GETTABLEKS                       R6 R7 K2 ["editSecretId"]
       40 GETTABLEKS                       R8 R2 K1 ["EditAsset"]
       42 GETTABLEKS                       R7 R8 K8 ["editSecretFormName"]
       44 GETTABLEKS                       R9 R2 K1 ["EditAsset"]
       46 GETTABLEKS                       R8 R9 K9 ["editSecretFormValue"]
       48 GETTABLEKS                       R10 R2 K1 ["EditAsset"]
       50 GETTABLEKS                       R9 R10 K10 ["editSecretFormDomain"]
       52 CALL                             R4 5 2
       53 GETUPVAL                         R8 3
       54 LOADK                            R9 K5 ["SecretsAsTableRows"]
       55 MOVE                             R10 R4
       56 CALL                             R8 2 -1
       57 NAMECALL                         R6 R0 K11 ["dispatch"]
       59 CALL                             R6 -1 0
       60 NAMECALL                         R2 R0 K0 ["getState"]
       62 CALL                             R2 1 1
       63 GETTABLEKS                       R4 R2 K12 ["Metadata"]
       65 GETTABLEKS                       R3 R4 K13 ["gameId"]
       67 GETTABLEKS                       R4 R1 K14 ["universePermissionsController"]
       69 NEWTABLE                         R5 0 7
       71 NEWCLOSURE                       R7 P0
       72 CAPTURE                          VAL R4
       73 LOADK                            R8 K15 ["HttpEnabled"]
       74 NEWCLOSURE                       R6 P1
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R8
       77 CAPTURE                          UPVAL U4
       78 CAPTURE                          VAL R7
       79 GETUPVAL                         R8 0
       80 JUMPIFNOT                        R8 ; [+9]
       81 NEWCLOSURE                       R8 P2
       82 CAPTURE                          VAL R4
       83 LOADK                            R9 K5 ["SecretsAsTableRows"]
       84 NEWCLOSURE                       R7 P1
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R9
       87 CAPTURE                          UPVAL U4
       88 CAPTURE                          VAL R8
       89 JUMP                             ; [+8]
       90 NEWCLOSURE                       R8 P3
       91 CAPTURE                          VAL R4
       92 LOADK                            R9 K16 ["Secrets"]
       93 NEWCLOSURE                       R7 P1
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R9
       96 CAPTURE                          UPVAL U4
       97 CAPTURE                          VAL R8
       98 NEWCLOSURE                       R9 P4
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R3
      101 LOADK                            R10 K17 ["StudioAccessToApisAllowed"]
      102 NEWCLOSURE                       R8 P1
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R10
      105 CAPTURE                          UPVAL U4
      106 CAPTURE                          VAL R9
      107 NEWCLOSURE                       R10 P5
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R3
      110 LOADK                            R11 K18 ["ThirdPartyPurchaseAllowed"]
      111 NEWCLOSURE                       R9 P1
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R11
      114 CAPTURE                          UPVAL U4
      115 CAPTURE                          VAL R10
      116 NEWCLOSURE                       R11 P6
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R3
      119 LOADK                            R12 K19 ["ThirdPartyTeleportAllowed"]
      120 NEWCLOSURE                       R10 P1
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R12
      123 CAPTURE                          UPVAL U4
      124 CAPTURE                          VAL R11
      125 NEWCLOSURE                       R12 P7
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R3
      128 LOADK                            R13 K20 ["MeshTextureApisAllowed"]
      129 NEWCLOSURE                       R11 P1
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R13
      132 CAPTURE                          UPVAL U4
      133 CAPTURE                          VAL R12
      134 NEWCLOSURE                       R13 P8
      135 CAPTURE                          VAL R4
      136 LOADK                            R14 K21 ["InsertFreeAssetsAllowed"]
      137 NEWCLOSURE                       R12 P1
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R14
      140 CAPTURE                          UPVAL U4
      141 CAPTURE                          VAL R13
      142 SETLIST                          R5 R6 7 [1]
      144 RETURN                           R5 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+52]
        2 DUPTABLE                         R2 K10 [{"HttpEnabled", "SecretsAsTableRows", "StudioAccessToApisAllowed", "ThirdPartyPurchaseAllowed", "ThirdPartyTeleportAllowed", "InsertFreeAssetsAllowed", "HttpEnabledValueChanged", "ThirdPartyPurchaseAllowedValueChanged", "ThirdPartyTeleportAllowedValueChanged", "InsertFreeAssetsAllowedValueChanged"}]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K0 ["HttpEnabled"]
        5 CALL                             R3 1 1
        6 SETTABLEKS                       R3 R2 K0 ["HttpEnabled"]
        8 MOVE                             R3 R0
        9 LOADK                            R4 K1 ["SecretsAsTableRows"]
       10 CALL                             R3 1 1
       11 SETTABLEKS                       R3 R2 K1 ["SecretsAsTableRows"]
       13 MOVE                             R3 R0
       14 LOADK                            R4 K2 ["StudioAccessToApisAllowed"]
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R2 K2 ["StudioAccessToApisAllowed"]
       18 MOVE                             R3 R0
       19 LOADK                            R4 K3 ["ThirdPartyPurchaseAllowed"]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R2 K3 ["ThirdPartyPurchaseAllowed"]
       23 MOVE                             R3 R0
       24 LOADK                            R4 K4 ["ThirdPartyTeleportAllowed"]
       25 CALL                             R3 1 1
       26 SETTABLEKS                       R3 R2 K4 ["ThirdPartyTeleportAllowed"]
       28 MOVE                             R3 R0
       29 LOADK                            R4 K5 ["InsertFreeAssetsAllowed"]
       30 CALL                             R3 1 1
       31 SETTABLEKS                       R3 R2 K5 ["InsertFreeAssetsAllowed"]
       33 MOVE                             R3 R1
       34 LOADK                            R4 K0 ["HttpEnabled"]
       35 CALL                             R3 1 1
       36 SETTABLEKS                       R3 R2 K6 ["HttpEnabledValueChanged"]
       38 MOVE                             R3 R1
       39 LOADK                            R4 K3 ["ThirdPartyPurchaseAllowed"]
       40 CALL                             R3 1 1
       41 SETTABLEKS                       R3 R2 K7 ["ThirdPartyPurchaseAllowedValueChanged"]
       43 MOVE                             R3 R1
       44 LOADK                            R4 K4 ["ThirdPartyTeleportAllowed"]
       45 CALL                             R3 1 1
       46 SETTABLEKS                       R3 R2 K8 ["ThirdPartyTeleportAllowedValueChanged"]
       48 MOVE                             R3 R1
       49 LOADK                            R4 K5 ["InsertFreeAssetsAllowed"]
       50 CALL                             R3 1 1
       51 SETTABLEKS                       R3 R2 K9 ["InsertFreeAssetsAllowedValueChanged"]
       53 RETURN                           R2 1
       54 DUPTABLE                         R2 K12 [{"HttpEnabled", "Secrets", "StudioAccessToApisAllowed", "ThirdPartyPurchaseAllowed", "ThirdPartyTeleportAllowed", "InsertFreeAssetsAllowed", "HttpEnabledValueChanged", "ThirdPartyPurchaseAllowedValueChanged", "ThirdPartyTeleportAllowedValueChanged", "InsertFreeAssetsAllowedValueChanged"}]
       55 MOVE                             R3 R0
       56 LOADK                            R4 K0 ["HttpEnabled"]
       57 CALL                             R3 1 1
       58 SETTABLEKS                       R3 R2 K0 ["HttpEnabled"]
       60 MOVE                             R3 R0
       61 LOADK                            R4 K11 ["Secrets"]
       62 CALL                             R3 1 1
       63 SETTABLEKS                       R3 R2 K11 ["Secrets"]
       65 MOVE                             R3 R0
       66 LOADK                            R4 K2 ["StudioAccessToApisAllowed"]
       67 CALL                             R3 1 1
       68 SETTABLEKS                       R3 R2 K2 ["StudioAccessToApisAllowed"]
       70 MOVE                             R3 R0
       71 LOADK                            R4 K3 ["ThirdPartyPurchaseAllowed"]
       72 CALL                             R3 1 1
       73 SETTABLEKS                       R3 R2 K3 ["ThirdPartyPurchaseAllowed"]
       75 MOVE                             R3 R0
       76 LOADK                            R4 K4 ["ThirdPartyTeleportAllowed"]
       77 CALL                             R3 1 1
       78 SETTABLEKS                       R3 R2 K4 ["ThirdPartyTeleportAllowed"]
       80 MOVE                             R3 R0
       81 LOADK                            R4 K5 ["InsertFreeAssetsAllowed"]
       82 CALL                             R3 1 1
       83 SETTABLEKS                       R3 R2 K5 ["InsertFreeAssetsAllowed"]
       85 MOVE                             R3 R1
       86 LOADK                            R4 K0 ["HttpEnabled"]
       87 CALL                             R3 1 1
       88 SETTABLEKS                       R3 R2 K6 ["HttpEnabledValueChanged"]
       90 MOVE                             R3 R1
       91 LOADK                            R4 K3 ["ThirdPartyPurchaseAllowed"]
       92 CALL                             R3 1 1
       93 SETTABLEKS                       R3 R2 K7 ["ThirdPartyPurchaseAllowedValueChanged"]
       95 MOVE                             R3 R1
       96 LOADK                            R4 K4 ["ThirdPartyTeleportAllowed"]
       97 CALL                             R3 1 1
       98 SETTABLEKS                       R3 R2 K8 ["ThirdPartyTeleportAllowedValueChanged"]
      100 MOVE                             R3 R1
      101 LOADK                            R4 K5 ["InsertFreeAssetsAllowed"]
      102 CALL                             R3 1 1
      103 SETTABLEKS                       R3 R2 K9 ["InsertFreeAssetsAllowedValueChanged"]
      105 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+140]
        2 DUPTABLE                         R3 K23 [{"HttpEnabled", "SecretsAsTableRows", "EditSecretId", "EditSecretFormNameField", "EditSecretFormValueField", "EditSecretFormDomainField", "EditSecretFormNameError", "EditSecretFormDomainError", "StudioAccessToApisAllowed", "ThirdPartyPurchaseAllowed", "ThirdPartyTeleportAllowed", "InsertFreeAssetsAllowed", "HttpEnabledValueChanged", "StudioAccessToApisAllowedValueChanged", "ThirdPartyPurchaseAllowedValueChanged", "ThirdPartyTeleportAllowedValueChanged", "InsertFreeAssetsAllowedValueChanged", "MeshTextureApisAllowed", "MeshTextureApisAllowedValueChanged", "MeshTextureApiAmpStatus", "OwnerId", "OwnerType", "GroupOwnerUserId"}]
        3 MOVE                             R4 R0
        4 LOADK                            R5 K0 ["HttpEnabled"]
        5 CALL                             R4 1 1
        6 SETTABLEKS                       R4 R3 K0 ["HttpEnabled"]
        8 MOVE                             R4 R0
        9 LOADK                            R5 K1 ["SecretsAsTableRows"]
       10 CALL                             R4 1 1
       11 SETTABLEKS                       R4 R3 K1 ["SecretsAsTableRows"]
       13 GETTABLEKS                       R5 R2 K24 ["EditAsset"]
       15 GETTABLEKS                       R4 R5 K25 ["editSecretId"]
       17 SETTABLEKS                       R4 R3 K2 ["EditSecretId"]
       19 GETTABLEKS                       R5 R2 K24 ["EditAsset"]
       21 GETTABLEKS                       R4 R5 K26 ["editSecretFormName"]
       23 SETTABLEKS                       R4 R3 K3 ["EditSecretFormNameField"]
       25 GETTABLEKS                       R5 R2 K24 ["EditAsset"]
       27 GETTABLEKS                       R4 R5 K27 ["editSecretFormValue"]
       29 SETTABLEKS                       R4 R3 K4 ["EditSecretFormValueField"]
       31 GETTABLEKS                       R5 R2 K24 ["EditAsset"]
       33 GETTABLEKS                       R4 R5 K28 ["editSecretFormDomain"]
       35 SETTABLEKS                       R4 R3 K5 ["EditSecretFormDomainField"]
       37 GETTABLEKS                       R5 R2 K29 ["Settings"]
       39 GETTABLEKS                       R4 R5 K30 ["Errors"]
       41 JUMPIFNOT                        R4 ; [+6]
       42 GETTABLEKS                       R6 R2 K29 ["Settings"]
       44 GETTABLEKS                       R5 R6 K30 ["Errors"]
       46 GETTABLEKS                       R4 R5 K6 ["EditSecretFormNameError"]
       48 SETTABLEKS                       R4 R3 K6 ["EditSecretFormNameError"]
       50 GETTABLEKS                       R5 R2 K29 ["Settings"]
       52 GETTABLEKS                       R4 R5 K30 ["Errors"]
       54 JUMPIFNOT                        R4 ; [+6]
       55 GETTABLEKS                       R6 R2 K29 ["Settings"]
       57 GETTABLEKS                       R5 R6 K30 ["Errors"]
       59 GETTABLEKS                       R4 R5 K7 ["EditSecretFormDomainError"]
       61 SETTABLEKS                       R4 R3 K7 ["EditSecretFormDomainError"]
       63 MOVE                             R4 R0
       64 LOADK                            R5 K8 ["StudioAccessToApisAllowed"]
       65 CALL                             R4 1 1
       66 SETTABLEKS                       R4 R3 K8 ["StudioAccessToApisAllowed"]
       68 MOVE                             R4 R0
       69 LOADK                            R5 K9 ["ThirdPartyPurchaseAllowed"]
       70 CALL                             R4 1 1
       71 SETTABLEKS                       R4 R3 K9 ["ThirdPartyPurchaseAllowed"]
       73 MOVE                             R4 R0
       74 LOADK                            R5 K10 ["ThirdPartyTeleportAllowed"]
       75 CALL                             R4 1 1
       76 SETTABLEKS                       R4 R3 K10 ["ThirdPartyTeleportAllowed"]
       78 MOVE                             R4 R0
       79 LOADK                            R5 K11 ["InsertFreeAssetsAllowed"]
       80 CALL                             R4 1 1
       81 SETTABLEKS                       R4 R3 K11 ["InsertFreeAssetsAllowed"]
       83 MOVE                             R4 R1
       84 LOADK                            R5 K0 ["HttpEnabled"]
       85 CALL                             R4 1 1
       86 SETTABLEKS                       R4 R3 K12 ["HttpEnabledValueChanged"]
       88 MOVE                             R4 R1
       89 LOADK                            R5 K8 ["StudioAccessToApisAllowed"]
       90 CALL                             R4 1 1
       91 SETTABLEKS                       R4 R3 K13 ["StudioAccessToApisAllowedValueChanged"]
       93 MOVE                             R4 R1
       94 LOADK                            R5 K9 ["ThirdPartyPurchaseAllowed"]
       95 CALL                             R4 1 1
       96 SETTABLEKS                       R4 R3 K14 ["ThirdPartyPurchaseAllowedValueChanged"]
       98 MOVE                             R4 R1
       99 LOADK                            R5 K10 ["ThirdPartyTeleportAllowed"]
      100 CALL                             R4 1 1
      101 SETTABLEKS                       R4 R3 K15 ["ThirdPartyTeleportAllowedValueChanged"]
      103 MOVE                             R4 R1
      104 LOADK                            R5 K11 ["InsertFreeAssetsAllowed"]
      105 CALL                             R4 1 1
      106 SETTABLEKS                       R4 R3 K16 ["InsertFreeAssetsAllowedValueChanged"]
      108 MOVE                             R4 R0
      109 LOADK                            R5 K17 ["MeshTextureApisAllowed"]
      110 CALL                             R4 1 1
      111 SETTABLEKS                       R4 R3 K17 ["MeshTextureApisAllowed"]
      113 MOVE                             R4 R1
      114 LOADK                            R5 K17 ["MeshTextureApisAllowed"]
      115 CALL                             R4 1 1
      116 SETTABLEKS                       R4 R3 K18 ["MeshTextureApisAllowedValueChanged"]
      118 MOVE                             R4 R0
      119 LOADK                            R5 K19 ["MeshTextureApiAmpStatus"]
      120 CALL                             R4 1 1
      121 SETTABLEKS                       R4 R3 K19 ["MeshTextureApiAmpStatus"]
      123 GETTABLEKS                       R5 R2 K31 ["GameOwnerMetadata"]
      125 GETTABLEKS                       R4 R5 K32 ["creatorId"]
      127 SETTABLEKS                       R4 R3 K20 ["OwnerId"]
      129 GETTABLEKS                       R5 R2 K31 ["GameOwnerMetadata"]
      131 GETTABLEKS                       R4 R5 K33 ["creatorType"]
      133 SETTABLEKS                       R4 R3 K21 ["OwnerType"]
      135 GETTABLEKS                       R5 R2 K31 ["GameOwnerMetadata"]
      137 GETTABLEKS                       R4 R5 K34 ["groupOwnerId"]
      139 SETTABLEKS                       R4 R3 K22 ["GroupOwnerUserId"]
      141 RETURN                           R3 1
      142 DUPTABLE                         R3 K36 [{"HttpEnabled", "Secrets", "StudioAccessToApisAllowed", "ThirdPartyPurchaseAllowed", "ThirdPartyTeleportAllowed", "InsertFreeAssetsAllowed", "HttpEnabledValueChanged", "ThirdPartyPurchaseAllowedValueChanged", "ThirdPartyTeleportAllowedValueChanged", "InsertFreeAssetsAllowedValueChanged", "MeshTextureApisAllowed", "MeshTextureApisAllowedValueChanged", "MeshTextureApiAmpStatus", "OwnerId", "OwnerType", "GroupOwnerUserId"}]
      143 MOVE                             R4 R0
      144 LOADK                            R5 K0 ["HttpEnabled"]
      145 CALL                             R4 1 1
      146 SETTABLEKS                       R4 R3 K0 ["HttpEnabled"]
      148 MOVE                             R4 R0
      149 LOADK                            R5 K35 ["Secrets"]
      150 CALL                             R4 1 1
      151 SETTABLEKS                       R4 R3 K35 ["Secrets"]
      153 MOVE                             R4 R0
      154 LOADK                            R5 K8 ["StudioAccessToApisAllowed"]
      155 CALL                             R4 1 1
      156 SETTABLEKS                       R4 R3 K8 ["StudioAccessToApisAllowed"]
      158 MOVE                             R4 R0
      159 LOADK                            R5 K9 ["ThirdPartyPurchaseAllowed"]
      160 CALL                             R4 1 1
      161 SETTABLEKS                       R4 R3 K9 ["ThirdPartyPurchaseAllowed"]
      163 MOVE                             R4 R0
      164 LOADK                            R5 K10 ["ThirdPartyTeleportAllowed"]
      165 CALL                             R4 1 1
      166 SETTABLEKS                       R4 R3 K10 ["ThirdPartyTeleportAllowed"]
      168 MOVE                             R4 R0
      169 LOADK                            R5 K11 ["InsertFreeAssetsAllowed"]
      170 CALL                             R4 1 1
      171 SETTABLEKS                       R4 R3 K11 ["InsertFreeAssetsAllowed"]
      173 MOVE                             R4 R1
      174 LOADK                            R5 K0 ["HttpEnabled"]
      175 CALL                             R4 1 1
      176 SETTABLEKS                       R4 R3 K12 ["HttpEnabledValueChanged"]
      178 MOVE                             R4 R1
      179 LOADK                            R5 K9 ["ThirdPartyPurchaseAllowed"]
      180 CALL                             R4 1 1
      181 SETTABLEKS                       R4 R3 K14 ["ThirdPartyPurchaseAllowedValueChanged"]
      183 MOVE                             R4 R1
      184 LOADK                            R5 K10 ["ThirdPartyTeleportAllowed"]
      185 CALL                             R4 1 1
      186 SETTABLEKS                       R4 R3 K15 ["ThirdPartyTeleportAllowedValueChanged"]
      188 MOVE                             R4 R1
      189 LOADK                            R5 K11 ["InsertFreeAssetsAllowed"]
      190 CALL                             R4 1 1
      191 SETTABLEKS                       R4 R3 K16 ["InsertFreeAssetsAllowedValueChanged"]
      193 MOVE                             R4 R0
      194 LOADK                            R5 K17 ["MeshTextureApisAllowed"]
      195 CALL                             R4 1 1
      196 SETTABLEKS                       R4 R3 K17 ["MeshTextureApisAllowed"]
      198 MOVE                             R4 R1
      199 LOADK                            R5 K17 ["MeshTextureApisAllowed"]
      200 CALL                             R4 1 1
      201 SETTABLEKS                       R4 R3 K18 ["MeshTextureApisAllowedValueChanged"]
      203 MOVE                             R4 R0
      204 LOADK                            R5 K19 ["MeshTextureApiAmpStatus"]
      205 CALL                             R4 1 1
      206 SETTABLEKS                       R4 R3 K19 ["MeshTextureApiAmpStatus"]
      208 GETTABLEKS                       R5 R2 K31 ["GameOwnerMetadata"]
      210 GETTABLEKS                       R4 R5 K32 ["creatorId"]
      212 SETTABLEKS                       R4 R3 K20 ["OwnerId"]
      214 GETTABLEKS                       R5 R2 K31 ["GameOwnerMetadata"]
      216 GETTABLEKS                       R4 R5 K33 ["creatorType"]
      218 SETTABLEKS                       R4 R3 K21 ["OwnerType"]
      220 GETTABLEKS                       R5 R2 K31 ["GameOwnerMetadata"]
      222 GETTABLEKS                       R4 R5 K34 ["groupOwnerId"]
      224 SETTABLEKS                       R4 R3 K22 ["GroupOwnerUserId"]
      226 RETURN                           R3 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["editSecretFormName"]
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["editSecretFormValue"]
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["editSecretFormDomain"]
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 NEWTABLE                         R4 1 0
        4 SETTABLE                         R1 R4 R0
        5 CALL                             R3 1 -1
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+72]
        2 DUPTABLE                         R2 K14 [{"HttpEnabledChanged", "SecretsAsTableRowsChanged", "StudioApiServicesChanged", "ThirdPartyPurchaseChanged", "ThirdPartyTeleportAllowedChanged", "MeshTextureApisAllowedChanged", "InsertFreeAssetsAllowedChanged", "EditSecretIdChanged", "EditSecretFormNameChanged", "EditSecretFormValueChanged", "EditSecretFormDomainChanged", "ReportError", "ClearError", "ClearAllErrors"}]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K15 ["HttpEnabled"]
        5 CALL                             R3 1 1
        6 SETTABLEKS                       R3 R2 K0 ["HttpEnabledChanged"]
        8 MOVE                             R3 R0
        9 LOADK                            R4 K16 ["SecretsAsTableRows"]
       10 CALL                             R3 1 1
       11 SETTABLEKS                       R3 R2 K1 ["SecretsAsTableRowsChanged"]
       13 MOVE                             R3 R0
       14 LOADK                            R4 K17 ["StudioAccessToApisAllowed"]
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R2 K2 ["StudioApiServicesChanged"]
       18 MOVE                             R3 R0
       19 LOADK                            R4 K18 ["ThirdPartyPurchaseAllowed"]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R2 K3 ["ThirdPartyPurchaseChanged"]
       23 MOVE                             R3 R0
       24 LOADK                            R4 K19 ["ThirdPartyTeleportAllowed"]
       25 CALL                             R3 1 1
       26 SETTABLEKS                       R3 R2 K4 ["ThirdPartyTeleportAllowedChanged"]
       28 MOVE                             R3 R0
       29 LOADK                            R4 K20 ["MeshTextureApisAllowed"]
       30 CALL                             R3 1 1
       31 SETTABLEKS                       R3 R2 K5 ["MeshTextureApisAllowedChanged"]
       33 MOVE                             R3 R0
       34 LOADK                            R4 K21 ["InsertFreeAssetsAllowed"]
       35 CALL                             R3 1 1
       36 SETTABLEKS                       R3 R2 K6 ["InsertFreeAssetsAllowedChanged"]
       38 NEWCLOSURE                       R3 P0
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U1
       41 SETTABLEKS                       R3 R2 K7 ["EditSecretIdChanged"]
       43 NEWCLOSURE                       R3 P1
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U2
       46 SETTABLEKS                       R3 R2 K8 ["EditSecretFormNameChanged"]
       48 NEWCLOSURE                       R3 P2
       49 CAPTURE                          VAL R1
       50 CAPTURE                          UPVAL U2
       51 SETTABLEKS                       R3 R2 K9 ["EditSecretFormValueChanged"]
       53 NEWCLOSURE                       R3 P3
       54 CAPTURE                          VAL R1
       55 CAPTURE                          UPVAL U2
       56 SETTABLEKS                       R3 R2 K10 ["EditSecretFormDomainChanged"]
       58 NEWCLOSURE                       R3 P4
       59 CAPTURE                          VAL R1
       60 CAPTURE                          UPVAL U3
       61 SETTABLEKS                       R3 R2 K11 ["ReportError"]
       63 NEWCLOSURE                       R3 P5
       64 CAPTURE                          VAL R1
       65 CAPTURE                          UPVAL U4
       66 SETTABLEKS                       R3 R2 K12 ["ClearError"]
       68 NEWCLOSURE                       R3 P6
       69 CAPTURE                          VAL R1
       70 CAPTURE                          UPVAL U5
       71 SETTABLEKS                       R3 R2 K13 ["ClearAllErrors"]
       73 RETURN                           R2 1
       74 DUPTABLE                         R2 K23 [{"HttpEnabledChanged", "SecretsChanged", "StudioApiServicesChanged", "ThirdPartyPurchaseChanged", "ThirdPartyTeleportAllowedChanged", "MeshTextureApisAllowedChanged", "InsertFreeAssetsAllowedChanged"}]
       75 MOVE                             R3 R0
       76 LOADK                            R4 K15 ["HttpEnabled"]
       77 CALL                             R3 1 1
       78 SETTABLEKS                       R3 R2 K0 ["HttpEnabledChanged"]
       80 MOVE                             R3 R0
       81 LOADK                            R4 K24 ["Secrets"]
       82 CALL                             R3 1 1
       83 SETTABLEKS                       R3 R2 K22 ["SecretsChanged"]
       85 MOVE                             R3 R0
       86 LOADK                            R4 K17 ["StudioAccessToApisAllowed"]
       87 CALL                             R3 1 1
       88 SETTABLEKS                       R3 R2 K2 ["StudioApiServicesChanged"]
       90 MOVE                             R3 R0
       91 LOADK                            R4 K18 ["ThirdPartyPurchaseAllowed"]
       92 CALL                             R3 1 1
       93 SETTABLEKS                       R3 R2 K3 ["ThirdPartyPurchaseChanged"]
       95 MOVE                             R3 R0
       96 LOADK                            R4 K19 ["ThirdPartyTeleportAllowed"]
       97 CALL                             R3 1 1
       98 SETTABLEKS                       R3 R2 K4 ["ThirdPartyTeleportAllowedChanged"]
      100 MOVE                             R3 R0
      101 LOADK                            R4 K20 ["MeshTextureApisAllowed"]
      102 CALL                             R3 1 1
      103 SETTABLEKS                       R3 R2 K5 ["MeshTextureApisAllowedChanged"]
      105 MOVE                             R3 R0
      106 LOADK                            R4 K21 ["InsertFreeAssetsAllowed"]
      107 CALL                             R3 1 1
      108 SETTABLEKS                       R3 R2 K6 ["InsertFreeAssetsAllowedChanged"]
      110 RETURN                           R2 1

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OwnerType"]
        4 GETIMPORT                        R4 K5 [Enum.CreatorType.Group]
        6 JUMPIFEQ                         R2 R4 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 RETURN                           R3 1

PROTO_34:
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

PROTO_35:
        0 NEWTABLE                         R2 0 0
        2 LOADB                            R3 0
        3 GETTABLEKS                       R4 R0 K0 ["SecretsAsTableRows"]
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETTABLEKS                       R9 R8 K1 ["index"]
       10 GETTABLEKS                       R10 R0 K2 ["EditSecretId"]
       12 JUMPIFNOTEQ                      R9 R10 ; [+39]
       14 GETTABLEKS                       R9 R8 K3 ["row"]
       16 GETTABLEN                        R10 R9 1
       17 GETTABLEN                        R11 R1 1
       18 JUMPIFNOTEQ                      R10 R11 ; [+9]
       20 GETTABLEN                        R10 R9 2
       21 GETTABLEN                        R11 R1 2
       22 JUMPIFNOTEQ                      R10 R11 ; [+5]
       24 GETTABLEN                        R10 R9 3
       25 GETTABLEN                        R11 R1 3
       26 JUMPIFEQ                         R10 R11 ; [+2]
       28 LOADB                            R3 1
       29 DUPTABLE                         R12 K5 [{"index", "row", "isValueUpdated"}]
       30 GETTABLEKS                       R13 R8 K1 ["index"]
       32 SETTABLEKS                       R13 R12 K1 ["index"]
       34 SETTABLEKS                       R1 R12 K3 ["row"]
       36 LOADB                            R13 1
       37 GETTABLEN                        R14 R9 2
       38 GETTABLEN                        R15 R1 2
       39 JUMPIFNOTEQ                      R14 R15 ; [+3]
       41 GETTABLEKS                       R13 R8 K4 ["isValueUpdated"]
       43 SETTABLEKS                       R13 R12 K4 ["isValueUpdated"]
       45 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       47 MOVE                             R11 R2
       48 GETIMPORT                        R10 K8 [table.insert]
       50 CALL                             R10 2 0
       51 JUMP                             ; [+7]
       52 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       54 MOVE                             R10 R2
       55 MOVE                             R11 R8
       56 GETIMPORT                        R9 K8 [table.insert]
       58 CALL                             R9 2 0
       59 FORGLOOP                         R4 2 ; [-52]
       61 JUMPIFNOT                        R3 ; [+4]
       62 GETTABLEKS                       R4 R0 K9 ["SecretsAsTableRowsChanged"]
       64 MOVE                             R5 R2
       65 CALL                             R4 1 0
       66 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["EditSecretFormNameChanged"]
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
       19 LOADN                            R3 0
       20 JUMPIFNOTLT                      R3 R2 ; [+9]
       22 GETUPVAL                         R2 1
       23 LOADK                            R4 K2 ["Security"]
       24 LOADK                            R5 K6 ["ErrorSecretNameTooLong"]
       25 NAMECALL                         R2 R2 K4 ["getText"]
       27 CALL                             R2 3 1
       28 MOVE                             R1 R2
       29 JUMP                             ; [+17]
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R2 R3 K7 ["secretNameExists"]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K8 ["SecretsAsTableRows"]
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
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R2 R3 K10 ["ReportError"]
       51 LOADK                            R3 K11 ["EditSecretFormNameError"]
       52 MOVE                             R4 R1
       53 CALL                             R2 2 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R3 0
       56 GETTABLEKS                       R2 R3 K12 ["ClearError"]
       58 LOADK                            R3 K11 ["EditSecretFormNameError"]
       59 CALL                             R2 1 0
       60 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["EditSecretFormValueChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["EditSecretFormDomainChanged"]
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
       19 LOADN                            R3 0
       20 JUMPIFNOTLT                      R3 R2 ; [+8]
       22 GETUPVAL                         R2 1
       23 LOADK                            R4 K2 ["Security"]
       24 LOADK                            R5 K6 ["ErrorDomainNameTooLong"]
       25 NAMECALL                         R2 R2 K4 ["getText"]
       27 CALL                             R2 3 1
       28 MOVE                             R1 R2
       29 JUMPIFNOT                        R1 ; [+7]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R2 R3 K7 ["ReportError"]
       33 LOADK                            R3 K8 ["EditSecretFormDomainError"]
       34 MOVE                             R4 R1
       35 CALL                             R2 2 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R2 R3 K9 ["ClearError"]
       40 LOADK                            R3 K8 ["EditSecretFormDomainError"]
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["EditSecretFormNameError"]
        3 JUMPIF                           R0 ; [+3]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["EditSecretFormDomainError"]
        7 JUMPIFNOT                        R0 ; [+56]
        8 DUPTABLE                         R1 K6 [{"Size", "Title", "Header", "Buttons"}]
        9 GETIMPORT                        R2 K9 [Vector2.new]
       11 LOADN                            R3 244
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
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R3 R4 K17 ["Dialog"]
       53 GETTABLEKS                       R2 R3 K18 ["showDialog"]
       55 GETUPVAL                         R3 2
       56 MOVE                             R4 R1
       57 CALL                             R2 2 1
       58 NAMECALL                         R2 R2 K19 ["await"]
       60 CALL                             R2 1 1
       61 JUMPIF                           R2 ; [+49]
       62 RETURN                           R0 0
       63 JUMP                             ; [+47]
       64 GETUPVAL                         R1 3
       65 JUMPIFNOT                        R1 ; [+20]
       66 GETUPVAL                         R2 4
       67 GETTABLEKS                       R1 R2 K20 ["getUpdateSecretRowAtIndex"]
       69 GETUPVAL                         R3 0
       70 GETTABLEKS                       R2 R3 K21 ["SecretsAsTableRows"]
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R3 R4 K22 ["EditSecretId"]
       75 GETUPVAL                         R4 5
       76 GETUPVAL                         R5 6
       77 GETUPVAL                         R6 7
       78 CALL                             R1 5 2
       79 JUMPIFNOT                        R2 ; [+31]
       80 GETUPVAL                         R4 0
       81 GETTABLEKS                       R3 R4 K23 ["SecretsAsTableRowsChanged"]
       83 MOVE                             R4 R1
       84 CALL                             R3 1 0
       85 JUMP                             ; [+25]
       86 GETUPVAL                         R5 0
       87 GETTABLEKS                       R4 R5 K21 ["SecretsAsTableRows"]
       89 GETUPVAL                         R6 0
       90 GETTABLEKS                       R5 R6 K22 ["EditSecretId"]
       92 GETTABLE                         R3 R4 R5
       93 GETTABLEKS                       R2 R3 K24 ["row"]
       95 GETTABLEN                        R1 R2 2
       96 GETUPVAL                         R2 8
       97 GETUPVAL                         R3 0
       98 NEWTABLE                         R4 0 3
      100 GETUPVAL                         R5 5
      101 GETUPVAL                         R7 4
      102 GETTABLEKS                       R6 R7 K25 ["transformToStorableFormat"]
      104 GETUPVAL                         R7 6
      105 MOVE                             R8 R1
      106 CALL                             R6 2 1
      107 GETUPVAL                         R7 7
      108 SETLIST                          R4 R5 3 [1]
      110 CALL                             R2 2 0
      111 GETUPVAL                         R2 0
      112 GETTABLEKS                       R1 R2 K26 ["ClearAllErrors"]
      114 CALL                             R1 0 0
      115 GETUPVAL                         R2 0
      116 GETTABLEKS                       R1 R2 K27 ["EditSecretFormNameChanged"]
      118 LOADNIL                          R2
      119 CALL                             R1 1 0
      120 GETUPVAL                         R2 0
      121 GETTABLEKS                       R1 R2 K28 ["EditSecretFormValueChanged"]
      123 LOADNIL                          R2
      124 CALL                             R1 1 0
      125 GETUPVAL                         R2 0
      126 GETTABLEKS                       R1 R2 K29 ["EditSecretFormDomainChanged"]
      128 LOADNIL                          R2
      129 CALL                             R1 1 0
      130 GETUPVAL                         R2 0
      131 GETTABLEKS                       R1 R2 K30 ["EditSecretIdChanged"]
      133 LOADNIL                          R2
      134 CALL                             R1 1 0
      135 RETURN                           R0 0

PROTO_40:
        0 GETTABLEKS                       R1 R0 K0 ["Stylizer"]
        2 GETTABLEKS                       R2 R0 K1 ["Localization"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["new"]
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
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R6
       34 CAPTURE                          VAL R7
       35 CAPTURE                          UPVAL U4
       36 DUPTABLE                         R12 K11 [{"HeaderFrame", "Name", "Domain", "NewValue"}]
       37 GETUPVAL                         R14 5
       38 GETTABLEKS                       R13 R14 K12 ["createElement"]
       40 GETUPVAL                         R14 6
       41 DUPTABLE                         R15 K18 [{"LayoutOrder", "BackgroundTransparency", "axis", "minimumSize", "contentPadding"}]
       42 NAMECALL                         R16 R3 K19 ["getNextOrder"]
       44 CALL                             R16 1 1
       45 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
       47 LOADN                            R16 1
       48 SETTABLEKS                       R16 R15 K14 ["BackgroundTransparency"]
       50 GETUPVAL                         R18 6
       51 GETTABLEKS                       R17 R18 K20 ["Axis"]
       53 GETTABLEKS                       R16 R17 K21 ["Vertical"]
       55 SETTABLEKS                       R16 R15 K15 ["axis"]
       57 GETIMPORT                        R16 K23 [UDim2.new]
       59 LOADN                            R17 1
       60 LOADN                            R18 0
       61 LOADN                            R19 0
       62 LOADN                            R20 0
       63 CALL                             R16 4 1
       64 SETTABLEKS                       R16 R15 K16 ["minimumSize"]
       66 GETIMPORT                        R16 K25 [UDim.new]
       68 LOADN                            R17 0
       69 GETTABLEKS                       R19 R1 K26 ["settingsPage"]
       71 GETTABLEKS                       R18 R19 K27 ["headerPadding"]
       73 CALL                             R16 2 1
       74 SETTABLEKS                       R16 R15 K17 ["contentPadding"]
       76 NEWTABLE                         R16 4 1
       78 GETUPVAL                         R19 5
       79 GETTABLEKS                       R18 R19 K12 ["createElement"]
       81 LOADK                            R19 K28 ["ImageButton"]
       82 NEWTABLE                         R20 8 0
       84 GETIMPORT                        R21 K23 [UDim2.new]
       86 LOADN                            R22 0
       87 GETTABLEKS                       R24 R1 K29 ["backButton"]
       89 GETTABLEKS                       R23 R24 K30 ["size"]
       91 LOADN                            R24 0
       92 GETTABLEKS                       R26 R1 K29 ["backButton"]
       94 GETTABLEKS                       R25 R26 K30 ["size"]
       96 CALL                             R21 4 1
       97 SETTABLEKS                       R21 R20 K31 ["Size"]
       99 LOADN                            R21 0
      100 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      102 GETTABLEKS                       R22 R1 K29 ["backButton"]
      104 GETTABLEKS                       R21 R22 K32 ["image"]
      106 SETTABLEKS                       R21 R20 K33 ["Image"]
      108 LOADN                            R21 1
      109 SETTABLEKS                       R21 R20 K14 ["BackgroundTransparency"]
      111 GETUPVAL                         R23 5
      112 GETTABLEKS                       R22 R23 K34 ["Event"]
      114 GETTABLEKS                       R21 R22 K35 ["Activated"]
      116 SETTABLE                         R11 R20 R21
      117 NEWTABLE                         R21 0 1
      119 GETUPVAL                         R23 5
      120 GETTABLEKS                       R22 R23 K12 ["createElement"]
      122 GETUPVAL                         R23 7
      123 DUPTABLE                         R24 K37 [{"Cursor"}]
      124 LOADK                            R25 K38 ["PointingHand"]
      125 SETTABLEKS                       R25 R24 K36 ["Cursor"]
      127 CALL                             R22 2 -1
      128 SETLIST                          R21 R22 -1 [1]
      130 CALL                             R18 3 1
      131 SETTABLEKS                       R18 R16 K39 ["BackButton"]
      133 GETUPVAL                         R18 5
      134 GETTABLEKS                       R17 R18 K12 ["createElement"]
      136 GETUPVAL                         R18 8
      137 DUPTABLE                         R19 K40 [{"LayoutOrder"}]
      138 LOADN                            R20 1
      139 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      141 CALL                             R17 2 1
      142 SETLIST                          R16 R17 1 [1]
      144 GETUPVAL                         R19 5
      145 GETTABLEKS                       R18 R19 K12 ["createElement"]
      147 GETUPVAL                         R19 9
      148 DUPTABLE                         R20 K42 [{"Title", "LayoutOrder"}]
      149 LOADK                            R23 K43 ["Security"]
      150 LOADK                            R24 K44 ["TitleEditSecret"]
      151 NAMECALL                         R21 R2 K45 ["getText"]
      153 CALL                             R21 3 1
      154 SETTABLEKS                       R21 R20 K41 ["Title"]
      156 LOADN                            R21 2
      157 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      159 CALL                             R18 2 1
      160 SETTABLEKS                       R18 R16 K46 ["Header"]
      162 GETUPVAL                         R19 3
      163 JUMPIFNOT                        R19 ; [+2]
      164 LOADNIL                          R18
      165 JUMP                             ; [+39]
      166 GETUPVAL                         R19 5
      167 GETTABLEKS                       R18 R19 K12 ["createElement"]
      169 GETUPVAL                         R19 10
      170 DUPTABLE                         R20 K53 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment", "TextColor", "TextSize"}]
      171 GETIMPORT                        R21 K56 [Enum.AutomaticSize.XY]
      173 SETTABLEKS                       R21 R20 K47 ["AutomaticSize"]
      175 LOADN                            R21 3
      176 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      178 LOADK                            R21 K57 ["SubText"]
      179 SETTABLEKS                       R21 R20 K48 ["Style"]
      181 LOADK                            R23 K43 ["Security"]
      182 LOADK                            R24 K58 ["TextEditSecret"]
      183 NAMECALL                         R21 R2 K45 ["getText"]
      185 CALL                             R21 3 1
      186 SETTABLEKS                       R21 R20 K49 ["Text"]
      188 GETIMPORT                        R21 K60 [Enum.TextXAlignment.Left]
      190 SETTABLEKS                       R21 R20 K50 ["TextXAlignment"]
      192 GETTABLEKS                       R21 R1 K61 ["InfoTextColor"]
      194 SETTABLEKS                       R21 R20 K51 ["TextColor"]
      196 GETTABLEKS                       R23 R1 K62 ["fontStyle"]
      198 GETTABLEKS                       R22 R23 K63 ["Smaller"]
      200 GETTABLEKS                       R21 R22 K52 ["TextSize"]
      202 SETTABLEKS                       R21 R20 K52 ["TextSize"]
      204 CALL                             R18 2 1
      205 SETTABLEKS                       R18 R16 K64 ["Description"]
      207 CALL                             R13 3 1
      208 SETTABLEKS                       R13 R12 K7 ["HeaderFrame"]
      210 GETUPVAL                         R14 5
      211 GETTABLEKS                       R13 R14 K12 ["createElement"]
      213 GETUPVAL                         R14 11
      214 DUPTABLE                         R15 K65 [{"LayoutOrder", "Title"}]
      215 NAMECALL                         R16 R3 K19 ["getNextOrder"]
      217 CALL                             R16 1 1
      218 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      220 LOADK                            R18 K43 ["Security"]
      221 LOADK                            R19 K66 ["SecretNameLabel"]
      222 NAMECALL                         R16 R2 K45 ["getText"]
      224 CALL                             R16 3 1
      225 SETTABLEKS                       R16 R15 K41 ["Title"]
      227 DUPTABLE                         R16 K68 [{"TextBox"}]
      228 GETUPVAL                         R18 5
      229 GETTABLEKS                       R17 R18 K12 ["createElement"]
      231 GETUPVAL                         R18 12
      232 DUPTABLE                         R19 K71 [{"ErrorText", "OnTextChanged", "Text"}]
      233 GETTABLEKS                       R20 R0 K72 ["EditSecretFormNameError"]
      235 SETTABLEKS                       R20 R19 K69 ["ErrorText"]
      237 SETTABLEKS                       R8 R19 K70 ["OnTextChanged"]
      239 SETTABLEKS                       R5 R19 K49 ["Text"]
      241 CALL                             R17 2 1
      242 SETTABLEKS                       R17 R16 K67 ["TextBox"]
      244 CALL                             R13 3 1
      245 SETTABLEKS                       R13 R12 K8 ["Name"]
      247 GETUPVAL                         R14 5
      248 GETTABLEKS                       R13 R14 K12 ["createElement"]
      250 GETUPVAL                         R14 11
      251 DUPTABLE                         R15 K65 [{"LayoutOrder", "Title"}]
      252 NAMECALL                         R16 R3 K19 ["getNextOrder"]
      254 CALL                             R16 1 1
      255 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      257 LOADK                            R18 K43 ["Security"]
      258 LOADK                            R19 K73 ["SecretDomainLabel"]
      259 NAMECALL                         R16 R2 K45 ["getText"]
      261 CALL                             R16 3 1
      262 SETTABLEKS                       R16 R15 K41 ["Title"]
      264 DUPTABLE                         R16 K68 [{"TextBox"}]
      265 GETUPVAL                         R18 5
      266 GETTABLEKS                       R17 R18 K12 ["createElement"]
      268 GETUPVAL                         R18 12
      269 DUPTABLE                         R19 K71 [{"ErrorText", "OnTextChanged", "Text"}]
      270 GETTABLEKS                       R20 R0 K74 ["EditSecretFormDomainError"]
      272 SETTABLEKS                       R20 R19 K69 ["ErrorText"]
      274 SETTABLEKS                       R10 R19 K70 ["OnTextChanged"]
      276 SETTABLEKS                       R7 R19 K49 ["Text"]
      278 CALL                             R17 2 1
      279 SETTABLEKS                       R17 R16 K67 ["TextBox"]
      281 CALL                             R13 3 1
      282 SETTABLEKS                       R13 R12 K9 ["Domain"]
      284 GETUPVAL                         R14 5
      285 GETTABLEKS                       R13 R14 K12 ["createElement"]
      287 GETUPVAL                         R14 11
      288 DUPTABLE                         R15 K65 [{"LayoutOrder", "Title"}]
      289 NAMECALL                         R16 R3 K19 ["getNextOrder"]
      291 CALL                             R16 1 1
      292 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      294 LOADK                            R18 K43 ["Security"]
      295 LOADK                            R19 K75 ["SecretNewValueLabel"]
      296 NAMECALL                         R16 R2 K45 ["getText"]
      298 CALL                             R16 3 1
      299 SETTABLEKS                       R16 R15 K41 ["Title"]
      301 DUPTABLE                         R16 K68 [{"TextBox"}]
      302 GETUPVAL                         R18 5
      303 GETTABLEKS                       R17 R18 K12 ["createElement"]
      305 GETUPVAL                         R18 12
      306 DUPTABLE                         R19 K78 [{"ErrorText", "OnTextChanged", "Text", "PlaceholderText", "BottomText"}]
      307 LOADNIL                          R20
      308 SETTABLEKS                       R20 R19 K69 ["ErrorText"]
      310 SETTABLEKS                       R9 R19 K70 ["OnTextChanged"]
      312 SETTABLEKS                       R6 R19 K49 ["Text"]
      314 LOADK                            R22 K43 ["Security"]
      315 LOADK                            R23 K79 ["PlaceholderTextSecretNewValueInput"]
      316 NAMECALL                         R20 R2 K45 ["getText"]
      318 CALL                             R20 3 1
      319 SETTABLEKS                       R20 R19 K76 ["PlaceholderText"]
      321 LOADK                            R22 K43 ["Security"]
      322 LOADK                            R23 K80 ["BottomTextSecretNewValueInput"]
      323 NAMECALL                         R20 R2 K45 ["getText"]
      325 CALL                             R20 3 1
      326 SETTABLEKS                       R20 R19 K77 ["BottomText"]
      328 CALL                             R17 2 1
      329 SETTABLEKS                       R17 R16 K67 ["TextBox"]
      331 CALL                             R13 3 1
      332 SETTABLEKS                       R13 R12 K10 ["NewValue"]
      334 RETURN                           R12 1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["HttpEnabledChanged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["HttpEnabled"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SecretsAsTableRowsChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SecretsChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["StudioApiServicesChanged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["StudioAccessToApisAllowed"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ThirdPartyPurchaseChanged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["ThirdPartyPurchaseAllowed"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ThirdPartyTeleportAllowedChanged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["ThirdPartyTeleportAllowed"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["MeshTextureApisAllowedChanged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["MeshTextureApisAllowed"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["InsertFreeAssetsAllowedChanged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["InsertFreeAssetsAllowed"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
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
       55 GETUPVAL                         R9 1
       56 GETTABLEKS                       R8 R9 K15 ["new"]
       58 LOADN                            R9 1
       59 CALL                             R8 1 1
       60 DUPTABLE                         R9 K23 [{"WarningPopup", "HttpEnabled", "Secrets", "StudioApiServicesEnabled", "ThirdPartyPurchasesEnabled", "ThirdPartyTeleportsEnabled", "MeshTextureApisEnabled", "AllowInsertFreeAssets"}]
       61 MOVE                             R10 R3
       62 JUMPIFNOT                        R10 ; [+349]
       63 GETUPVAL                         R11 2
       64 GETTABLEKS                       R10 R11 K24 ["createElement"]
       66 LOADK                            R11 K25 ["Frame"]
       67 DUPTABLE                         R12 K30 [{"AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
       68 GETIMPORT                        R13 K33 [Enum.AutomaticSize.XY]
       70 SETTABLEKS                       R13 R12 K26 ["AutomaticSize"]
       72 LOADN                            R13 1
       73 SETTABLEKS                       R13 R12 K27 ["BackgroundTransparency"]
       75 LOADN                            R13 0
       76 SETTABLEKS                       R13 R12 K28 ["BorderSizePixel"]
       78 NAMECALL                         R13 R8 K34 ["getNextOrder"]
       80 CALL                             R13 1 1
       81 SETTABLEKS                       R13 R12 K29 ["LayoutOrder"]
       83 DUPTABLE                         R13 K38 [{"UILayout", "InsecureWarning", "AssetInsertionWarning"}]
       84 GETUPVAL                         R15 2
       85 GETTABLEKS                       R14 R15 K24 ["createElement"]
       87 LOADK                            R15 K39 ["UIListLayout"]
       88 DUPTABLE                         R16 K45 [{"FillDirection", "Padding", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
       89 GETIMPORT                        R17 K47 [Enum.FillDirection.Vertical]
       91 SETTABLEKS                       R17 R16 K40 ["FillDirection"]
       93 GETIMPORT                        R17 K49 [UDim.new]
       95 LOADN                            R18 0
       96 LOADN                            R19 4
       97 CALL                             R17 2 1
       98 SETTABLEKS                       R17 R16 K41 ["Padding"]
      100 GETIMPORT                        R17 K50 [Enum.SortOrder.LayoutOrder]
      102 SETTABLEKS                       R17 R16 K42 ["SortOrder"]
      104 GETIMPORT                        R17 K52 [Enum.HorizontalAlignment.Left]
      106 SETTABLEKS                       R17 R16 K43 ["HorizontalAlignment"]
      108 GETIMPORT                        R17 K54 [Enum.VerticalAlignment.Center]
      110 SETTABLEKS                       R17 R16 K44 ["VerticalAlignment"]
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K35 ["UILayout"]
      115 GETUPVAL                         R15 2
      116 GETTABLEKS                       R14 R15 K24 ["createElement"]
      118 LOADK                            R15 K25 ["Frame"]
      119 DUPTABLE                         R16 K30 [{"AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
      120 GETIMPORT                        R17 K33 [Enum.AutomaticSize.XY]
      122 SETTABLEKS                       R17 R16 K26 ["AutomaticSize"]
      124 LOADN                            R17 1
      125 SETTABLEKS                       R17 R16 K27 ["BackgroundTransparency"]
      127 LOADN                            R17 0
      128 SETTABLEKS                       R17 R16 K28 ["BorderSizePixel"]
      130 NAMECALL                         R17 R8 K34 ["getNextOrder"]
      132 CALL                             R17 1 1
      133 SETTABLEKS                       R17 R16 K29 ["LayoutOrder"]
      135 DUPTABLE                         R17 K57 [{"UILayout", "Warning", "Description"}]
      136 GETUPVAL                         R19 2
      137 GETTABLEKS                       R18 R19 K24 ["createElement"]
      139 LOADK                            R19 K39 ["UIListLayout"]
      140 DUPTABLE                         R20 K58 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
      141 GETIMPORT                        R21 K60 [Enum.FillDirection.Horizontal]
      143 SETTABLEKS                       R21 R20 K40 ["FillDirection"]
      145 GETIMPORT                        R21 K49 [UDim.new]
      147 LOADN                            R22 0
      148 GETTABLEKS                       R24 R7 K61 ["dialog"]
      150 GETTABLEKS                       R23 R24 K62 ["spacing"]
      152 CALL                             R21 2 1
      153 SETTABLEKS                       R21 R20 K41 ["Padding"]
      155 GETIMPORT                        R21 K50 [Enum.SortOrder.LayoutOrder]
      157 SETTABLEKS                       R21 R20 K42 ["SortOrder"]
      159 GETIMPORT                        R21 K54 [Enum.VerticalAlignment.Center]
      161 SETTABLEKS                       R21 R20 K44 ["VerticalAlignment"]
      163 CALL                             R18 2 1
      164 SETTABLEKS                       R18 R17 K35 ["UILayout"]
      166 GETUPVAL                         R19 2
      167 GETTABLEKS                       R18 R19 K24 ["createElement"]
      169 LOADK                            R19 K63 ["ImageLabel"]
      170 DUPTABLE                         R20 K66 [{"Image", "LayoutOrder", "BackgroundTransparency", "Size"}]
      171 GETTABLEKS                       R21 R7 K67 ["warningIcon"]
      173 SETTABLEKS                       R21 R20 K64 ["Image"]
      175 NAMECALL                         R21 R8 K34 ["getNextOrder"]
      177 CALL                             R21 1 1
      178 SETTABLEKS                       R21 R20 K29 ["LayoutOrder"]
      180 LOADN                            R21 1
      181 SETTABLEKS                       R21 R20 K27 ["BackgroundTransparency"]
      183 GETIMPORT                        R21 K70 [UDim2.fromOffset]
      185 GETTABLEKS                       R24 R7 K71 ["warningDialog"]
      187 GETTABLEKS                       R23 R24 K72 ["icon"]
      189 GETTABLEKS                       R22 R23 K73 ["size"]
      191 GETTABLEKS                       R25 R7 K71 ["warningDialog"]
      193 GETTABLEKS                       R24 R25 K72 ["icon"]
      195 GETTABLEKS                       R23 R24 K73 ["size"]
      197 CALL                             R21 2 1
      198 SETTABLEKS                       R21 R20 K65 ["Size"]
      200 CALL                             R18 2 1
      201 SETTABLEKS                       R18 R17 K55 ["Warning"]
      203 GETUPVAL                         R19 2
      204 GETTABLEKS                       R18 R19 K24 ["createElement"]
      206 GETUPVAL                         R19 3
      207 DUPTABLE                         R20 K79 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment", "TextColor", "TextSize"}]
      208 GETIMPORT                        R21 K33 [Enum.AutomaticSize.XY]
      210 SETTABLEKS                       R21 R20 K26 ["AutomaticSize"]
      212 NAMECALL                         R21 R8 K34 ["getNextOrder"]
      214 CALL                             R21 1 1
      215 SETTABLEKS                       R21 R20 K29 ["LayoutOrder"]
      217 LOADK                            R21 K80 ["SubText"]
      218 SETTABLEKS                       R21 R20 K74 ["Style"]
      220 LOADK                            R23 K81 ["Security"]
      221 LOADK                            R24 K36 ["InsecureWarning"]
      222 NAMECALL                         R21 R1 K82 ["getText"]
      224 CALL                             R21 3 1
      225 SETTABLEKS                       R21 R20 K75 ["Text"]
      227 GETIMPORT                        R21 K83 [Enum.TextXAlignment.Left]
      229 SETTABLEKS                       R21 R20 K76 ["TextXAlignment"]
      231 GETTABLEKS                       R21 R7 K84 ["warningColor"]
      233 SETTABLEKS                       R21 R20 K77 ["TextColor"]
      235 GETTABLEKS                       R23 R7 K85 ["fontStyle"]
      237 GETTABLEKS                       R22 R23 K86 ["Subtitle"]
      239 GETTABLEKS                       R21 R22 K78 ["TextSize"]
      241 SETTABLEKS                       R21 R20 K78 ["TextSize"]
      243 CALL                             R18 2 1
      244 SETTABLEKS                       R18 R17 K56 ["Description"]
      246 CALL                             R14 3 1
      247 SETTABLEKS                       R14 R13 K36 ["InsecureWarning"]
      249 MOVE                             R14 R2
      250 JUMPIFNOT                        R14 ; [+158]
      251 GETUPVAL                         R15 2
      252 GETTABLEKS                       R14 R15 K24 ["createElement"]
      254 LOADK                            R15 K25 ["Frame"]
      255 DUPTABLE                         R16 K87 [{"AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Size"}]
      256 GETIMPORT                        R17 K89 [Enum.AutomaticSize.Y]
      258 SETTABLEKS                       R17 R16 K26 ["AutomaticSize"]
      260 LOADN                            R17 1
      261 SETTABLEKS                       R17 R16 K27 ["BackgroundTransparency"]
      263 LOADN                            R17 0
      264 SETTABLEKS                       R17 R16 K28 ["BorderSizePixel"]
      266 NAMECALL                         R17 R8 K34 ["getNextOrder"]
      268 CALL                             R17 1 1
      269 SETTABLEKS                       R17 R16 K29 ["LayoutOrder"]
      271 GETIMPORT                        R17 K91 [UDim2.fromScale]
      273 LOADN                            R18 1
      274 LOADN                            R19 0
      275 CALL                             R17 2 1
      276 SETTABLEKS                       R17 R16 K65 ["Size"]
      278 DUPTABLE                         R17 K93 [{"UILayout", "UIPadding", "Description"}]
      279 GETUPVAL                         R19 2
      280 GETTABLEKS                       R18 R19 K24 ["createElement"]
      282 LOADK                            R19 K39 ["UIListLayout"]
      283 DUPTABLE                         R20 K94 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
      284 GETIMPORT                        R21 K60 [Enum.FillDirection.Horizontal]
      286 SETTABLEKS                       R21 R20 K40 ["FillDirection"]
      288 GETIMPORT                        R21 K50 [Enum.SortOrder.LayoutOrder]
      290 SETTABLEKS                       R21 R20 K42 ["SortOrder"]
      292 GETIMPORT                        R21 K54 [Enum.VerticalAlignment.Center]
      294 SETTABLEKS                       R21 R20 K44 ["VerticalAlignment"]
      296 CALL                             R18 2 1
      297 SETTABLEKS                       R18 R17 K35 ["UILayout"]
      299 GETUPVAL                         R19 2
      300 GETTABLEKS                       R18 R19 K24 ["createElement"]
      302 LOADK                            R19 K92 ["UIPadding"]
      303 DUPTABLE                         R20 K96 [{"PaddingLeft"}]
      304 GETIMPORT                        R21 K49 [UDim.new]
      306 LOADN                            R22 0
      307 GETTABLEKS                       R26 R7 K71 ["warningDialog"]
      309 GETTABLEKS                       R25 R26 K72 ["icon"]
      311 GETTABLEKS                       R24 R25 K73 ["size"]
      313 GETTABLEKS                       R26 R7 K61 ["dialog"]
      315 GETTABLEKS                       R25 R26 K62 ["spacing"]
      317 ADD                              R23 R24 R25
      318 CALL                             R21 2 1
      319 SETTABLEKS                       R21 R20 K95 ["PaddingLeft"]
      321 CALL                             R18 2 1
      322 SETTABLEKS                       R18 R17 K92 ["UIPadding"]
      324 GETUPVAL                         R19 2
      325 GETTABLEKS                       R18 R19 K24 ["createElement"]
      327 GETUPVAL                         R19 4
      328 DUPTABLE                         R20 K99 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "LinkMap", "Size", "Text", "TextProps"}]
      329 GETIMPORT                        R21 K89 [Enum.AutomaticSize.Y]
      331 SETTABLEKS                       R21 R20 K26 ["AutomaticSize"]
      333 GETIMPORT                        R21 K52 [Enum.HorizontalAlignment.Left]
      335 SETTABLEKS                       R21 R20 K43 ["HorizontalAlignment"]
      337 NAMECALL                         R21 R8 K34 ["getNextOrder"]
      339 CALL                             R21 1 1
      340 SETTABLEKS                       R21 R20 K29 ["LayoutOrder"]
      342 NEWTABLE                         R21 1 0
      344 DUPTABLE                         R22 K102 [{"LinkText", "LinkCallback"}]
      345 LOADK                            R25 K81 ["Security"]
      346 LOADK                            R26 K103 ["AssetInsertionWarningLinkTOS"]
      347 NAMECALL                         R23 R1 K82 ["getText"]
      349 CALL                             R23 3 1
      350 SETTABLEKS                       R23 R22 K100 ["LinkText"]
      352 DUPCLOSURE                       R23 K104 [PROTO_41]
      353 CAPTURE                          UPVAL U5
      354 CAPTURE                          UPVAL U6
      355 SETTABLEKS                       R23 R22 K101 ["LinkCallback"]
      357 SETTABLEKS                       R22 R21 K105 ["[linkTOS]"]
      359 SETTABLEKS                       R21 R20 K97 ["LinkMap"]
      361 GETIMPORT                        R21 K91 [UDim2.fromScale]
      363 LOADN                            R22 1
      364 LOADN                            R23 0
      365 CALL                             R21 2 1
      366 SETTABLEKS                       R21 R20 K65 ["Size"]
      368 LOADK                            R23 K81 ["Security"]
      369 LOADK                            R24 K37 ["AssetInsertionWarning"]
      370 NAMECALL                         R21 R1 K82 ["getText"]
      372 CALL                             R21 3 1
      373 SETTABLEKS                       R21 R20 K75 ["Text"]
      375 DUPTABLE                         R21 K107 [{"Font", "Style", "TextColor", "TextSize", "TextXAlignment"}]
      376 GETTABLEKS                       R24 R7 K85 ["fontStyle"]
      378 GETTABLEKS                       R23 R24 K86 ["Subtitle"]
      380 GETTABLEKS                       R22 R23 K106 ["Font"]
      382 SETTABLEKS                       R22 R21 K106 ["Font"]
      384 LOADK                            R22 K80 ["SubText"]
      385 SETTABLEKS                       R22 R21 K74 ["Style"]
      387 GETTABLEKS                       R22 R7 K84 ["warningColor"]
      389 SETTABLEKS                       R22 R21 K77 ["TextColor"]
      391 GETTABLEKS                       R24 R7 K85 ["fontStyle"]
      393 GETTABLEKS                       R23 R24 K86 ["Subtitle"]
      395 GETTABLEKS                       R22 R23 K78 ["TextSize"]
      397 SETTABLEKS                       R22 R21 K78 ["TextSize"]
      399 GETIMPORT                        R22 K83 [Enum.TextXAlignment.Left]
      401 SETTABLEKS                       R22 R21 K76 ["TextXAlignment"]
      403 SETTABLEKS                       R21 R20 K98 ["TextProps"]
      405 CALL                             R18 2 1
      406 SETTABLEKS                       R18 R17 K56 ["Description"]
      408 CALL                             R14 3 1
      409 SETTABLEKS                       R14 R13 K37 ["AssetInsertionWarning"]
      411 CALL                             R10 3 1
      412 SETTABLEKS                       R10 R9 K16 ["WarningPopup"]
      414 GETUPVAL                         R11 2
      415 GETTABLEKS                       R10 R11 K24 ["createElement"]
      417 GETUPVAL                         R11 7
      418 DUPTABLE                         R12 K112 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
      419 GETUPVAL                         R14 8
      420 JUMPIFNOT                        R14 ; [+6]
      421 LOADK                            R15 K113 ["General"]
      422 LOADK                            R16 K114 ["HttpDescExp"]
      423 NAMECALL                         R13 R1 K82 ["getText"]
      425 CALL                             R13 3 1
      426 JUMP                             ; [+5]
      427 LOADK                            R15 K113 ["General"]
      428 LOADK                            R16 K115 ["HttpDesc"]
      429 NAMECALL                         R13 R1 K82 ["getText"]
      431 CALL                             R13 3 1
      432 SETTABLEKS                       R13 R12 K56 ["Description"]
      434 GETTABLEKS                       R14 R0 K5 ["HttpEnabled"]
      436 JUMPIFEQKNIL                     R14 ; [+2]
      438 LOADB                            R13 0 +1
      439 LOADB                            R13 1
      440 SETTABLEKS                       R13 R12 K108 ["Disabled"]
      442 NAMECALL                         R13 R8 K34 ["getNextOrder"]
      444 CALL                             R13 1 1
      445 SETTABLEKS                       R13 R12 K29 ["LayoutOrder"]
      447 NEWCLOSURE                       R13 P1
      448 CAPTURE                          VAL R0
      449 SETTABLEKS                       R13 R12 K109 ["OnClick"]
      451 GETTABLEKS                       R13 R0 K5 ["HttpEnabled"]
      453 SETTABLEKS                       R13 R12 K110 ["Selected"]
      455 LOADK                            R15 K113 ["General"]
      456 LOADK                            R16 K116 ["TitleHttp"]
      457 NAMECALL                         R13 R1 K82 ["getText"]
      459 CALL                             R13 3 1
      460 SETTABLEKS                       R13 R12 K111 ["Title"]
      462 CALL                             R10 2 1
      463 SETTABLEKS                       R10 R9 K5 ["HttpEnabled"]
      465 GETUPVAL                         R11 9
      466 JUMPIFNOT                        R11 ; [+41]
      467 GETUPVAL                         R11 2
      468 GETTABLEKS                       R10 R11 K24 ["createElement"]
      470 GETUPVAL                         R11 10
      471 DUPTABLE                         R12 K123 [{"LayoutOrder", "SecretsAsTableRows", "OnChanged", "EditSecretIdChanged", "EditSecretFormNameChanged", "EditSecretFormValueChanged", "EditSecretFormDomainChanged", "Disabled"}]
      472 NAMECALL                         R13 R8 K34 ["getNextOrder"]
      474 CALL                             R13 1 1
      475 SETTABLEKS                       R13 R12 K29 ["LayoutOrder"]
      477 GETTABLEKS                       R13 R0 K117 ["SecretsAsTableRows"]
      479 SETTABLEKS                       R13 R12 K117 ["SecretsAsTableRows"]
      481 NEWCLOSURE                       R13 P2
      482 CAPTURE                          VAL R0
      483 SETTABLEKS                       R13 R12 K118 ["OnChanged"]
      485 GETTABLEKS                       R13 R0 K119 ["EditSecretIdChanged"]
      487 SETTABLEKS                       R13 R12 K119 ["EditSecretIdChanged"]
      489 GETTABLEKS                       R13 R0 K120 ["EditSecretFormNameChanged"]
      491 SETTABLEKS                       R13 R12 K120 ["EditSecretFormNameChanged"]
      493 GETTABLEKS                       R13 R0 K121 ["EditSecretFormValueChanged"]
      495 SETTABLEKS                       R13 R12 K121 ["EditSecretFormValueChanged"]
      497 GETTABLEKS                       R13 R0 K122 ["EditSecretFormDomainChanged"]
      499 SETTABLEKS                       R13 R12 K122 ["EditSecretFormDomainChanged"]
      501 GETTABLEKS                       R14 R0 K5 ["HttpEnabled"]
      503 NOT                              R13 R14
      504 SETTABLEKS                       R13 R12 K108 ["Disabled"]
      506 CALL                             R10 2 1
      507 JUMP                             ; [+24]
      508 GETTABLEKS                       R11 R0 K5 ["HttpEnabled"]
      510 JUMPIFNOT                        R11 ; [+20]
      511 GETUPVAL                         R11 2
      512 GETTABLEKS                       R10 R11 K24 ["createElement"]
      514 GETUPVAL                         R11 10
      515 DUPTABLE                         R12 K124 [{"LayoutOrder", "Secrets", "OnChanged"}]
      516 NAMECALL                         R13 R8 K34 ["getNextOrder"]
      518 CALL                             R13 1 1
      519 SETTABLEKS                       R13 R12 K29 ["LayoutOrder"]
      521 GETTABLEKS                       R13 R0 K17 ["Secrets"]
      523 SETTABLEKS                       R13 R12 K17 ["Secrets"]
      525 NEWCLOSURE                       R13 P3
      526 CAPTURE                          VAL R0
      527 SETTABLEKS                       R13 R12 K118 ["OnChanged"]
      529 CALL                             R10 2 1
      530 JUMP                             ; [+1]
      531 LOADNIL                          R10
      532 SETTABLEKS                       R10 R9 K17 ["Secrets"]
      534 GETUPVAL                         R11 2
      535 GETTABLEKS                       R10 R11 K24 ["createElement"]
      537 GETUPVAL                         R11 7
      538 DUPTABLE                         R12 K112 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
      539 GETUPVAL                         R14 11
      540 JUMPIFNOT                        R14 ; [+6]
      541 LOADK                            R15 K113 ["General"]
      542 LOADK                            R16 K125 ["StudioApiServicesDescExp"]
      543 NAMECALL                         R13 R1 K82 ["getText"]
      545 CALL                             R13 3 1
      546 JUMP                             ; [+5]
      547 LOADK                            R15 K113 ["General"]
      548 LOADK                            R16 K126 ["StudioApiServicesDesc"]
      549 NAMECALL                         R13 R1 K82 ["getText"]
      551 CALL                             R13 3 1
      552 SETTABLEKS                       R13 R12 K56 ["Description"]
      554 GETTABLEKS                       R14 R0 K127 ["StudioAccessToApisAllowed"]
      556 JUMPIFEQKNIL                     R14 ; [+2]
      558 LOADB                            R13 0 +1
      559 LOADB                            R13 1
      560 SETTABLEKS                       R13 R12 K108 ["Disabled"]
      562 NAMECALL                         R13 R8 K34 ["getNextOrder"]
      564 CALL                             R13 1 1
      565 SETTABLEKS                       R13 R12 K29 ["LayoutOrder"]
      567 NEWCLOSURE                       R13 P4
      568 CAPTURE                          VAL R0
      569 SETTABLEKS                       R13 R12 K109 ["OnClick"]
      571 GETTABLEKS                       R13 R0 K127 ["StudioAccessToApisAllowed"]
      573 SETTABLEKS                       R13 R12 K110 ["Selected"]
      575 LOADK                            R15 K113 ["General"]
      576 LOADK                            R16 K128 ["TitleStudioApiServices"]
      577 NAMECALL                         R13 R1 K82 ["getText"]
      579 CALL                             R13 3 1
      580 SETTABLEKS                       R13 R12 K111 ["Title"]
      582 CALL                             R10 2 1
      583 SETTABLEKS                       R10 R9 K18 ["StudioApiServicesEnabled"]
      585 GETUPVAL                         R11 2
      586 GETTABLEKS                       R10 R11 K24 ["createElement"]
      588 GETUPVAL                         R11 7
      589 DUPTABLE                         R12 K112 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
      590 LOADK                            R15 K81 ["Security"]
      591 LOADK                            R16 K129 ["EnableThirdPartyPurchasesDescription"]
      592 NAMECALL                         R13 R1 K82 ["getText"]
      594 CALL                             R13 3 1
      595 SETTABLEKS                       R13 R12 K56 ["Description"]
      597 GETTABLEKS                       R14 R0 K7 ["ThirdPartyPurchaseAllowed"]
      599 JUMPIFEQKNIL                     R14 ; [+2]
      601 LOADB                            R13 0 +1
      602 LOADB                            R13 1
      603 SETTABLEKS                       R13 R12 K108 ["Disabled"]
      605 NAMECALL                         R13 R8 K34 ["getNextOrder"]
      607 CALL                             R13 1 1
      608 SETTABLEKS                       R13 R12 K29 ["LayoutOrder"]
      610 NEWCLOSURE                       R13 P5
      611 CAPTURE                          VAL R0
      612 SETTABLEKS                       R13 R12 K109 ["OnClick"]
      614 GETTABLEKS                       R13 R0 K7 ["ThirdPartyPurchaseAllowed"]
      616 SETTABLEKS                       R13 R12 K110 ["Selected"]
      618 LOADK                            R15 K81 ["Security"]
      619 LOADK                            R16 K130 ["EnableThirdPartyPurchases"]
      620 NAMECALL                         R13 R1 K82 ["getText"]
      622 CALL                             R13 3 1
      623 SETTABLEKS                       R13 R12 K111 ["Title"]
      625 CALL                             R10 2 1
      626 SETTABLEKS                       R10 R9 K19 ["ThirdPartyPurchasesEnabled"]
      628 GETUPVAL                         R11 2
      629 GETTABLEKS                       R10 R11 K24 ["createElement"]
      631 GETUPVAL                         R11 7
      632 DUPTABLE                         R12 K112 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
      633 GETUPVAL                         R14 8
      634 JUMPIFNOT                        R14 ; [+6]
      635 LOADK                            R15 K81 ["Security"]
      636 LOADK                            R16 K131 ["EnableThirdPartyTeleportsDescriptionExp"]
      637 NAMECALL                         R13 R1 K82 ["getText"]
      639 CALL                             R13 3 1
      640 JUMP                             ; [+5]
      641 LOADK                            R15 K81 ["Security"]
      642 LOADK                            R16 K132 ["EnableThirdPartyTeleportsDescription"]
      643 NAMECALL                         R13 R1 K82 ["getText"]
      645 CALL                             R13 3 1
      646 SETTABLEKS                       R13 R12 K56 ["Description"]
      648 GETTABLEKS                       R14 R0 K9 ["ThirdPartyTeleportAllowed"]
      650 JUMPIFEQKNIL                     R14 ; [+2]
      652 LOADB                            R13 0 +1
      653 LOADB                            R13 1
      654 SETTABLEKS                       R13 R12 K108 ["Disabled"]
      656 NAMECALL                         R13 R8 K34 ["getNextOrder"]
      658 CALL                             R13 1 1
      659 SETTABLEKS                       R13 R12 K29 ["LayoutOrder"]
      661 NEWCLOSURE                       R13 P6
      662 CAPTURE                          VAL R0
      663 SETTABLEKS                       R13 R12 K109 ["OnClick"]
      665 GETTABLEKS                       R13 R0 K9 ["ThirdPartyTeleportAllowed"]
      667 SETTABLEKS                       R13 R12 K110 ["Selected"]
      669 LOADK                            R15 K81 ["Security"]
      670 LOADK                            R16 K133 ["EnableThirdPartyTeleports"]
      671 NAMECALL                         R13 R1 K82 ["getText"]
      673 CALL                             R13 3 1
      674 SETTABLEKS                       R13 R12 K111 ["Title"]
      676 CALL                             R10 2 1
      677 SETTABLEKS                       R10 R9 K20 ["ThirdPartyTeleportsEnabled"]
      679 GETUPVAL                         R11 2
      680 GETTABLEKS                       R10 R11 K24 ["createElement"]
      682 GETUPVAL                         R11 7
      683 DUPTABLE                         R12 K135 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title", "LinkProps"}]
      684 JUMPIF                           R4 ; [+6]
      685 LOADK                            R15 K81 ["Security"]
      686 LOADK                            R16 K136 ["EnableMeshTextureApisNotOwnerDescription"]
      687 NAMECALL                         R13 R1 K82 ["getText"]
      689 CALL                             R13 3 1
      690 JUMPIF                           R13 ; [+1]
      691 LOADNIL                          R13
      692 SETTABLEKS                       R13 R12 K56 ["Description"]
      694 NOT                              R13 R5
      695 JUMPIF                           R13 ; [+8]
      696 NOT                              R13 R4
      697 JUMPIF                           R13 ; [+6]
      698 GETTABLEKS                       R14 R0 K137 ["MeshTextureApisAllowed"]
      700 JUMPIFEQKNIL                     R14 ; [+2]
      702 LOADB                            R13 0 +1
      703 LOADB                            R13 1
      704 SETTABLEKS                       R13 R12 K108 ["Disabled"]
      706 NAMECALL                         R13 R8 K34 ["getNextOrder"]
      708 CALL                             R13 1 1
      709 SETTABLEKS                       R13 R12 K29 ["LayoutOrder"]
      711 NEWCLOSURE                       R13 P7
      712 CAPTURE                          VAL R0
      713 SETTABLEKS                       R13 R12 K109 ["OnClick"]
      715 GETTABLEKS                       R13 R0 K137 ["MeshTextureApisAllowed"]
      717 SETTABLEKS                       R13 R12 K110 ["Selected"]
      719 LOADK                            R15 K81 ["Security"]
      720 LOADK                            R16 K138 ["EnableMeshTextureApis"]
      721 NAMECALL                         R13 R1 K82 ["getText"]
      723 CALL                             R13 3 1
      724 SETTABLEKS                       R13 R12 K111 ["Title"]
      726 JUMPIFNOT                        R5 ; [+28]
      727 DUPTABLE                         R13 K140 [{"Text", "LinkText", "OnLinkClicked"}]
      728 LOADK                            R16 K81 ["Security"]
      729 LOADK                            R17 K141 ["EnableMeshTextureApisDescription"]
      730 DUPTABLE                         R18 K144 [{"EditableMesh", "EditableImage"}]
      731 LOADK                            R19 K142 ["EditableMesh"]
      732 SETTABLEKS                       R19 R18 K142 ["EditableMesh"]
      734 LOADK                            R19 K143 ["EditableImage"]
      735 SETTABLEKS                       R19 R18 K143 ["EditableImage"]
      737 NAMECALL                         R14 R1 K82 ["getText"]
      739 CALL                             R14 4 1
      740 SETTABLEKS                       R14 R13 K75 ["Text"]
      742 LOADK                            R16 K81 ["Security"]
      743 LOADK                            R17 K145 ["MeshTextureApisPolicyLinkText"]
      744 NAMECALL                         R14 R1 K82 ["getText"]
      746 CALL                             R14 3 1
      747 SETTABLEKS                       R14 R13 K100 ["LinkText"]
      749 DUPCLOSURE                       R14 K146 [PROTO_49]
      750 CAPTURE                          UPVAL U5
      751 CAPTURE                          UPVAL U12
      752 SETTABLEKS                       R14 R13 K139 ["OnLinkClicked"]
      754 JUMPIF                           R13 ; [+45]
      755 JUMPIFNOT                        R4 ; [+22]
      756 JUMPIF                           R6 ; [+21]
      757 DUPTABLE                         R13 K140 [{"Text", "LinkText", "OnLinkClicked"}]
      758 LOADK                            R16 K81 ["Security"]
      759 LOADK                            R17 K147 ["EnableMeshTextureApisIdActionableDescription"]
      760 NAMECALL                         R14 R1 K82 ["getText"]
      762 CALL                             R14 3 1
      763 SETTABLEKS                       R14 R13 K75 ["Text"]
      765 LOADK                            R16 K81 ["Security"]
      766 LOADK                            R17 K148 ["AccountIdVerificationLinkText"]
      767 NAMECALL                         R14 R1 K82 ["getText"]
      769 CALL                             R14 3 1
      770 SETTABLEKS                       R14 R13 K100 ["LinkText"]
      772 DUPCLOSURE                       R14 K149 [PROTO_50]
      773 CAPTURE                          UPVAL U5
      774 CAPTURE                          UPVAL U13
      775 SETTABLEKS                       R14 R13 K139 ["OnLinkClicked"]
      777 JUMPIF                           R13 ; [+22]
      778 MOVE                             R13 R6
      779 JUMPIFNOT                        R13 ; [+20]
      780 DUPTABLE                         R13 K140 [{"Text", "LinkText", "OnLinkClicked"}]
      781 LOADK                            R16 K81 ["Security"]
      782 LOADK                            R17 K150 ["EnableMeshTextureApisIdDeniedDescription"]
      783 NAMECALL                         R14 R1 K82 ["getText"]
      785 CALL                             R14 3 1
      786 SETTABLEKS                       R14 R13 K75 ["Text"]
      788 LOADK                            R16 K113 ["General"]
      789 LOADK                            R17 K151 ["GuidelinesLearnMoreLink"]
      790 NAMECALL                         R14 R1 K82 ["getText"]
      792 CALL                             R14 3 1
      793 SETTABLEKS                       R14 R13 K100 ["LinkText"]
      795 DUPCLOSURE                       R14 K152 [PROTO_51]
      796 CAPTURE                          UPVAL U5
      797 CAPTURE                          UPVAL U14
      798 SETTABLEKS                       R14 R13 K139 ["OnLinkClicked"]
      800 SETTABLEKS                       R13 R12 K134 ["LinkProps"]
      802 CALL                             R10 2 1
      803 SETTABLEKS                       R10 R9 K21 ["MeshTextureApisEnabled"]
      805 GETUPVAL                         R11 2
      806 GETTABLEKS                       R10 R11 K24 ["createElement"]
      808 GETUPVAL                         R11 7
      809 DUPTABLE                         R12 K112 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
      810 LOADK                            R15 K113 ["General"]
      811 LOADK                            R16 K153 ["AllowInsertFreeAssetsDesc"]
      812 NAMECALL                         R13 R1 K82 ["getText"]
      814 CALL                             R13 3 1
      815 SETTABLEKS                       R13 R12 K56 ["Description"]
      817 GETTABLEKS                       R14 R0 K3 ["InsertFreeAssetsAllowed"]
      819 JUMPIFEQKNIL                     R14 ; [+2]
      821 LOADB                            R13 0 +1
      822 LOADB                            R13 1
      823 SETTABLEKS                       R13 R12 K108 ["Disabled"]
      825 NAMECALL                         R13 R8 K34 ["getNextOrder"]
      827 CALL                             R13 1 1
      828 SETTABLEKS                       R13 R12 K29 ["LayoutOrder"]
      830 NEWCLOSURE                       R13 P11
      831 CAPTURE                          VAL R0
      832 SETTABLEKS                       R13 R12 K109 ["OnClick"]
      834 GETTABLEKS                       R13 R0 K3 ["InsertFreeAssetsAllowed"]
      836 SETTABLEKS                       R13 R12 K110 ["Selected"]
      838 LOADK                            R15 K113 ["General"]
      839 LOADK                            R16 K154 ["AllowInsertFreeAssetsTitle"]
      840 NAMECALL                         R13 R1 K82 ["getText"]
      842 CALL                             R13 3 1
      843 SETTABLEKS                       R13 R12 K111 ["Title"]
      845 CALL                             R10 2 1
      846 SETTABLEKS                       R10 R9 K22 ["AllowInsertFreeAssets"]
      848 RETURN                           R9 1

PROTO_54:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["props"]
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_55:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Localization"]
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
       21 GETUPVAL                         R4 8
       22 JUMPIFNOT                        R4 ; [+9]
       23 GETTABLEKS                       R5 R0 K0 ["props"]
       25 GETTABLEKS                       R4 R5 K2 ["EditSecretId"]
       27 JUMPIFNOT                        R4 ; [+4]
       28 LOADB                            R2 0
       29 NEWCLOSURE                       R3 P1
       30 CAPTURE                          UPVAL U14
       31 CAPTURE                          VAL R0
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R4 R5 K3 ["createElement"]
       35 GETUPVAL                         R5 15
       36 DUPTABLE                         R6 K10 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren", "ShowHeader"}]
       37 GETUPVAL                         R7 16
       38 SETTABLEKS                       R7 R6 K4 ["SettingsLoadJobs"]
       40 GETUPVAL                         R7 17
       41 SETTABLEKS                       R7 R6 K5 ["SettingsSaveJobs"]
       43 LOADK                            R9 K11 ["General"]
       44 LOADK                            R11 K12 ["Category"]
       45 GETUPVAL                         R12 18
       46 CONCAT                           R10 R11 R12
       47 NAMECALL                         R7 R1 K13 ["getText"]
       49 CALL                             R7 3 1
       50 SETTABLEKS                       R7 R6 K6 ["Title"]
       52 GETUPVAL                         R7 18
       53 SETTABLEKS                       R7 R6 K7 ["PageId"]
       55 SETTABLEKS                       R3 R6 K8 ["CreateChildren"]
       57 SETTABLEKS                       R2 R6 K9 ["ShowHeader"]
       59 CALL                             R4 2 -1
       60 RETURN                           R4 -1

PROTO_56:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Settings"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_57:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Settings"]
        3 GETTABLEKS                       R3 R4 K1 ["Changed"]
        5 GETTABLE                         R2 R3 R0
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_58:
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

PROTO_59:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_60:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_61:
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
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R6 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R6 K9 ["FitFrame"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K10 ["FitFrameOnAxis"]
       39 GETTABLEKS                       R6 R3 K11 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K12 ["withContext"]
       43 GETIMPORT                        R8 K4 [require]
       45 GETTABLEKS                       R11 R0 K13 ["Src"]
       47 GETTABLEKS                       R10 R11 K11 ["ContextServices"]
       49 GETTABLEKS                       R9 R10 K14 ["Dialog"]
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
       89 GETIMPORT                        R22 K1 [script]
       91 GETTABLEKS                       R21 R22 K2 ["Parent"]
       93 GETIMPORT                        R22 K4 [require]
       95 GETTABLEKS                       R25 R0 K13 ["Src"]
       97 GETTABLEKS                       R24 R25 K31 ["Actions"]
       99 GETTABLEKS                       R23 R24 K32 ["SetCreatorId"]
      101 CALL                             R22 1 1
      102 GETIMPORT                        R23 K4 [require]
      104 GETTABLEKS                       R26 R0 K13 ["Src"]
      106 GETTABLEKS                       R25 R26 K31 ["Actions"]
      108 GETTABLEKS                       R24 R25 K33 ["SetCreatorName"]
      110 CALL                             R23 1 1
      111 GETIMPORT                        R24 K4 [require]
      113 GETTABLEKS                       R27 R0 K13 ["Src"]
      115 GETTABLEKS                       R26 R27 K31 ["Actions"]
      117 GETTABLEKS                       R25 R26 K34 ["SetCreatorType"]
      119 CALL                             R24 1 1
      120 GETIMPORT                        R25 K4 [require]
      122 GETTABLEKS                       R27 R21 K31 ["Actions"]
      124 GETTABLEKS                       R26 R27 K35 ["SetGroupOwnerId"]
      126 CALL                             R25 1 1
      127 GETIMPORT                        R26 K4 [require]
      129 GETTABLEKS                       R29 R0 K13 ["Src"]
      131 GETTABLEKS                       R28 R29 K36 ["Components"]
      133 GETTABLEKS                       R27 R28 K37 ["Header"]
      135 CALL                             R26 1 1
      136 GETIMPORT                        R27 K4 [require]
      138 GETTABLEKS                       R31 R0 K13 ["Src"]
      140 GETTABLEKS                       R30 R31 K36 ["Components"]
      142 GETTABLEKS                       R29 R30 K38 ["SettingsPages"]
      144 GETTABLEKS                       R28 R29 K39 ["SettingsPage"]
      146 CALL                             R27 1 1
      147 GETIMPORT                        R28 K4 [require]
      149 GETTABLEKS                       R32 R0 K13 ["Src"]
      151 GETTABLEKS                       R31 R32 K36 ["Components"]
      153 GETTABLEKS                       R30 R31 K14 ["Dialog"]
      155 GETTABLEKS                       R29 R30 K40 ["SimpleDialog"]
      157 CALL                             R28 1 1
      158 GETIMPORT                        R29 K4 [require]
      160 GETTABLEKS                       R32 R0 K13 ["Src"]
      162 GETTABLEKS                       R31 R32 K36 ["Components"]
      164 GETTABLEKS                       R30 R31 K41 ["ToggleButtonWithTitle"]
      166 CALL                             R29 1 1
      167 GETIMPORT                        R30 K4 [require]
      169 GETTABLEKS                       R33 R0 K13 ["Src"]
      171 GETTABLEKS                       R32 R33 K31 ["Actions"]
      173 GETTABLEKS                       R31 R32 K42 ["AddChange"]
      175 CALL                             R30 1 1
      176 GETIMPORT                        R31 K4 [require]
      178 GETTABLEKS                       R34 R0 K13 ["Src"]
      180 GETTABLEKS                       R33 R34 K31 ["Actions"]
      182 GETTABLEKS                       R32 R33 K43 ["AddErrors"]
      184 CALL                             R31 1 1
      185 GETIMPORT                        R32 K4 [require]
      187 GETTABLEKS                       R35 R0 K13 ["Src"]
      189 GETTABLEKS                       R34 R35 K31 ["Actions"]
      191 GETTABLEKS                       R33 R34 K44 ["DiscardError"]
      193 CALL                             R32 1 1
      194 GETIMPORT                        R33 K4 [require]
      196 GETTABLEKS                       R36 R0 K13 ["Src"]
      198 GETTABLEKS                       R35 R36 K31 ["Actions"]
      200 GETTABLEKS                       R34 R35 K45 ["DiscardErrors"]
      202 CALL                             R33 1 1
      203 GETIMPORT                        R34 K4 [require]
      205 GETTABLEKS                       R37 R0 K13 ["Src"]
      207 GETTABLEKS                       R36 R37 K31 ["Actions"]
      209 GETTABLEKS                       R35 R36 K46 ["SetEditSecretFormField"]
      211 CALL                             R34 1 1
      212 GETIMPORT                        R35 K4 [require]
      214 GETTABLEKS                       R38 R0 K13 ["Src"]
      216 GETTABLEKS                       R37 R38 K31 ["Actions"]
      218 GETTABLEKS                       R36 R37 K47 ["SetEditSecretId"]
      220 CALL                             R35 1 1
      221 GETIMPORT                        R36 K4 [require]
      223 GETTABLEKS                       R39 R0 K13 ["Src"]
      225 GETTABLEKS                       R38 R39 K22 ["Util"]
      227 GETTABLEKS                       R37 R38 K48 ["Analytics"]
      229 CALL                             R36 1 1
      230 GETIMPORT                        R37 K4 [require]
      232 GETTABLEKS                       R40 R0 K13 ["Src"]
      234 GETTABLEKS                       R39 R40 K22 ["Util"]
      236 GETTABLEKS                       R38 R39 K49 ["SecretUtils"]
      238 CALL                             R37 1 1
      239 GETIMPORT                        R38 K4 [require]
      241 GETTABLEKS                       R40 R21 K36 ["Components"]
      243 GETTABLEKS                       R39 R40 K50 ["Secrets"]
      245 CALL                             R38 1 1
      246 GETIMPORT                        R40 K1 [script]
      248 GETTABLEKS                       R39 R40 K51 ["Name"]
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
      280 GETTABLEKS                       R47 R0 K13 ["Src"]
      282 GETTABLEKS                       R46 R47 K61 ["Flags"]
      284 GETTABLEKS                       R45 R46 K62 ["getFFlagSecretsEditorImprovement"]
      286 CALL                             R44 1 1
      287 CALL                             R44 0 1
      288 GETIMPORT                        R45 K4 [require]
      290 GETTABLEKS                       R48 R0 K13 ["Src"]
      292 GETTABLEKS                       R47 R48 K61 ["Flags"]
      294 GETTABLEKS                       R46 R47 K63 ["getFFlagSecretsEditorNoDraft"]
      296 CALL                             R45 1 1
      297 CALL                             R45 0 1
      298 GETIMPORT                        R46 K4 [require]
      300 GETTABLEKS                       R49 R0 K13 ["Src"]
      302 GETTABLEKS                       R48 R49 K61 ["Flags"]
      304 GETTABLEKS                       R47 R48 K64 ["getFFlagGameSettingsGameToExperience"]
      306 CALL                             R46 1 1
      307 CALL                             R46 0 1
      308 DUPCLOSURE                       R47 K65 [PROTO_11]
      309 CAPTURE                          VAL R44
      310 CAPTURE                          VAL R23
      311 CAPTURE                          VAL R22
      312 CAPTURE                          VAL R24
      313 CAPTURE                          VAL R25
      314 DUPCLOSURE                       R48 K66 [PROTO_13]
      315 CAPTURE                          VAL R36
      316 DUPCLOSURE                       R49 K67 [PROTO_22]
      317 CAPTURE                          VAL R44
      318 CAPTURE                          VAL R45
      319 CAPTURE                          VAL R37
      320 CAPTURE                          VAL R30
      321 CAPTURE                          VAL R36
      322 DUPCLOSURE                       R50 K68 [PROTO_23]
      323 CAPTURE                          VAL R44
      324 DUPCLOSURE                       R51 K69 [PROTO_24]
      325 CAPTURE                          VAL R44
      326 DUPCLOSURE                       R52 K70 [PROTO_32]
      327 CAPTURE                          VAL R44
      328 CAPTURE                          VAL R35
      329 CAPTURE                          VAL R34
      330 CAPTURE                          VAL R31
      331 CAPTURE                          VAL R32
      332 CAPTURE                          VAL R33
      333 GETTABLEKS                       R53 R1 K71 ["PureComponent"]
      335 GETIMPORT                        R56 K1 [script]
      337 GETTABLEKS                       R55 R56 K51 ["Name"]
      339 NAMECALL                         R53 R53 K72 ["extend"]
      341 CALL                             R53 2 1
      342 DUPCLOSURE                       R54 K73 [PROTO_33]
      343 SETTABLEKS                       R54 R53 K74 ["isGroupGame"]
      345 DUPCLOSURE                       R54 K75 [PROTO_34]
      346 CAPTURE                          VAL R19
      347 SETTABLEKS                       R54 R53 K76 ["isLoggedInUserGameOwner"]
      349 DUPCLOSURE                       R54 K77 [PROTO_35]
      350 DUPCLOSURE                       R55 K78 [PROTO_40]
      351 CAPTURE                          VAL R17
      352 CAPTURE                          VAL R37
      353 CAPTURE                          VAL R28
      354 CAPTURE                          VAL R45
      355 CAPTURE                          VAL R54
      356 CAPTURE                          VAL R1
      357 CAPTURE                          VAL R5
      358 CAPTURE                          VAL R10
      359 CAPTURE                          VAL R11
      360 CAPTURE                          VAL R26
      361 CAPTURE                          VAL R13
      362 CAPTURE                          VAL R15
      363 CAPTURE                          VAL R12
      364 DUPCLOSURE                       R56 K79 [PROTO_55]
      365 CAPTURE                          VAL R17
      366 CAPTURE                          VAL R1
      367 CAPTURE                          VAL R13
      368 CAPTURE                          VAL R14
      369 CAPTURE                          VAL R20
      370 CAPTURE                          VAL R43
      371 CAPTURE                          VAL R29
      372 CAPTURE                          VAL R46
      373 CAPTURE                          VAL R44
      374 CAPTURE                          VAL R38
      375 CAPTURE                          VAL R18
      376 CAPTURE                          VAL R40
      377 CAPTURE                          VAL R41
      378 CAPTURE                          VAL R42
      379 CAPTURE                          VAL R55
      380 CAPTURE                          VAL R27
      381 CAPTURE                          VAL R47
      382 CAPTURE                          VAL R49
      383 CAPTURE                          VAL R39
      384 SETTABLEKS                       R56 R53 K80 ["render"]
      386 MOVE                             R56 R7
      387 DUPTABLE                         R57 K83 [{"Localization", "Stylizer", "Dialog"}]
      388 GETTABLEKS                       R58 R6 K81 ["Localization"]
      390 SETTABLEKS                       R58 R57 K81 ["Localization"]
      392 GETTABLEKS                       R58 R6 K82 ["Stylizer"]
      394 SETTABLEKS                       R58 R57 K82 ["Stylizer"]
      396 SETTABLEKS                       R8 R57 K14 ["Dialog"]
      398 CALL                             R56 1 1
      399 MOVE                             R57 R53
      400 CALL                             R56 1 1
      401 MOVE                             R53 R56
      402 GETIMPORT                        R56 K4 [require]
      404 GETTABLEKS                       R59 R0 K13 ["Src"]
      406 GETTABLEKS                       R58 R59 K84 ["Networking"]
      408 GETTABLEKS                       R57 R58 K85 ["settingFromState"]
      410 CALL                             R56 1 1
      411 GETTABLEKS                       R57 R2 K86 ["connect"]
      413 DUPCLOSURE                       R58 K87 [PROTO_58]
      414 CAPTURE                          VAL R56
      415 CAPTURE                          VAL R51
      416 DUPCLOSURE                       R59 K88 [PROTO_61]
      417 CAPTURE                          VAL R30
      418 CAPTURE                          VAL R52
      419 CALL                             R57 2 1
      420 MOVE                             R58 R53
      421 CALL                             R57 1 1
      422 MOVE                             R53 R57
      423 SETTABLEKS                       R39 R53 K89 ["LocalizationId"]
      425 RETURN                           R53 1
