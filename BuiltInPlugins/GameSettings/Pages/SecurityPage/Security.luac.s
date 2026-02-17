PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["GetHttpEnabled"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["HttpEnabled"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["GetStudioAccessToApisAllowed"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["StudioAccessToApisAllowed"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["GetThirdPartyPurchasesAllowed"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["ThirdPartyPurchaseAllowed"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["GetThirdPartyTeleportsAllowed"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["ThirdPartyTeleportAllowed"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+7]
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["GetSecretsAsTableRows"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["SecretsAsTableRows"]
  RETURN R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K2 ["GetSecrets"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["Secrets"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["getCreatorName"]
  CALL R0 2 1
  GETUPVAL R1 2
  GETUPVAL R3 3
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["getCreatorId"]
  CALL R0 2 1
  GETUPVAL R1 2
  GETUPVAL R3 3
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["getCreatorType"]
  CALL R0 2 1
  GETUPVAL R1 2
  GETUPVAL R3 3
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 0
  GETIMPORT R1 K5 [Enum.CreatorType.Group]
  JUMPIFNOTEQ R0 R1 [+18]
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K6 ["getCreatorId"]
  CALL R1 2 1
  GETUPVAL R2 4
  MOVE R4 R1
  NAMECALL R2 R2 K7 ["getOwnerId"]
  CALL R2 2 1
  GETUPVAL R3 2
  GETUPVAL R5 5
  MOVE R6 R2
  CALL R5 1 -1
  NAMECALL R3 R3 K1 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["GetMeshTextureApiAmpStatus"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["MeshTextureApiAmpStatus"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["GetMeshTextureApisAllowed"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["MeshTextureApisAllowed"]
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["GetInsertFreeAssetsAllowed"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["InsertFreeAssetsAllowed"]
  RETURN R0 0

PROTO_11:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K1 ["Metadata"]
  GETTABLEKS R3 R4 K2 ["game"]
  GETTABLEKS R5 R2 K1 ["Metadata"]
  GETTABLEKS R4 R5 K3 ["gameId"]
  GETTABLEKS R5 R1 K4 ["universePermissionsController"]
  GETTABLEKS R6 R1 K5 ["gameMetadataController"]
  GETTABLEKS R7 R1 K6 ["groupMetadataController"]
  NEWTABLE R8 0 11
  NEWCLOSURE R9 P0
  CAPTURE VAL R5
  CAPTURE VAL R3
  NEWCLOSURE R10 P1
  CAPTURE VAL R5
  CAPTURE VAL R4
  NEWCLOSURE R11 P2
  CAPTURE VAL R5
  CAPTURE VAL R4
  NEWCLOSURE R12 P3
  CAPTURE VAL R5
  CAPTURE VAL R4
  NEWCLOSURE R13 P4
  CAPTURE UPVAL U0
  CAPTURE VAL R5
  NEWCLOSURE R14 P5
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWCLOSURE R15 P6
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NEWCLOSURE R16 P7
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE VAL R7
  CAPTURE UPVAL U4
  NEWCLOSURE R17 P8
  CAPTURE VAL R5
  NEWCLOSURE R18 P9
  CAPTURE VAL R5
  CAPTURE VAL R4
  NEWCLOSURE R19 P10
  CAPTURE VAL R5
  CAPTURE VAL R3
  SETLIST R8 R9 11 [1]
  RETURN R8 1

PROTO_12:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Settings"]
  GETTABLEKS R1 R2 K1 ["Changed"]
  GETUPVAL R2 1
  GETTABLE R0 R1 R2
  JUMPIFEQKNIL R0 [+10]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["onSecuritySettingChange"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 0
  GETUPVAL R1 3
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_13:
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  RETURN R3 1

PROTO_14:
  GETUPVAL R1 0
  GETIMPORT R3 K1 [game]
  MOVE R4 R0
  NAMECALL R1 R1 K2 ["SetHttpEnabled"]
  CALL R1 3 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["SetSecretsFromSecretsAsTableRows"]
  CALL R1 2 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["SetSecrets"]
  CALL R1 2 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  NAMECALL R1 R1 K0 ["SetStudioAccessToApisAllowed"]
  CALL R1 3 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  NAMECALL R1 R1 K0 ["SetThirdPartyPurchasesAllowed"]
  CALL R1 3 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  NAMECALL R1 R1 K0 ["SetThirdPartyTeleportsAllowed"]
  CALL R1 3 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  NAMECALL R1 R1 K0 ["SetMeshTextureApisAllowed"]
  CALL R1 3 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R1 0
  GETIMPORT R3 K1 [game]
  MOVE R4 R0
  NAMECALL R1 R1 K2 ["SetInsertFreeAssetsAllowed"]
  CALL R1 3 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+58]
  GETUPVAL R2 1
  JUMPIFNOT R2 [+56]
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K1 ["EditAsset"]
  GETTABLEKS R3 R4 K2 ["editSecretId"]
  JUMPIFNOT R3 [+48]
  GETTABLEKS R6 R2 K3 ["Settings"]
  GETTABLEKS R5 R6 K4 ["Changed"]
  GETTABLEKS R4 R5 K5 ["SecretsAsTableRows"]
  JUMPIFNOT R4 [+7]
  GETTABLEKS R5 R2 K3 ["Settings"]
  GETTABLEKS R4 R5 K4 ["Changed"]
  GETTABLEKS R3 R4 K5 ["SecretsAsTableRows"]
  JUMP [+6]
  GETTABLEKS R5 R2 K3 ["Settings"]
  GETTABLEKS R4 R5 K6 ["Current"]
  GETTABLEKS R3 R4 K5 ["SecretsAsTableRows"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["getUpdateSecretRowAtIndex"]
  MOVE R5 R3
  GETTABLEKS R7 R2 K1 ["EditAsset"]
  GETTABLEKS R6 R7 K2 ["editSecretId"]
  GETTABLEKS R8 R2 K1 ["EditAsset"]
  GETTABLEKS R7 R8 K8 ["editSecretFormName"]
  GETTABLEKS R9 R2 K1 ["EditAsset"]
  GETTABLEKS R8 R9 K9 ["editSecretFormValue"]
  GETTABLEKS R10 R2 K1 ["EditAsset"]
  GETTABLEKS R9 R10 K10 ["editSecretFormDomain"]
  CALL R4 5 2
  GETUPVAL R8 3
  LOADK R9 K5 ["SecretsAsTableRows"]
  MOVE R10 R4
  CALL R8 2 -1
  NAMECALL R6 R0 K11 ["dispatch"]
  CALL R6 -1 0
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K12 ["Metadata"]
  GETTABLEKS R3 R4 K13 ["gameId"]
  GETTABLEKS R4 R1 K14 ["universePermissionsController"]
  NEWTABLE R5 0 7
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  LOADK R8 K15 ["HttpEnabled"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE UPVAL U4
  CAPTURE VAL R7
  GETUPVAL R8 0
  JUMPIFNOT R8 [+9]
  NEWCLOSURE R8 P2
  CAPTURE VAL R4
  LOADK R9 K5 ["SecretsAsTableRows"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE UPVAL U4
  CAPTURE VAL R8
  JUMP [+8]
  NEWCLOSURE R8 P3
  CAPTURE VAL R4
  LOADK R9 K16 ["Secrets"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE UPVAL U4
  CAPTURE VAL R8
  NEWCLOSURE R9 P4
  CAPTURE VAL R4
  CAPTURE VAL R3
  LOADK R10 K17 ["StudioAccessToApisAllowed"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE UPVAL U4
  CAPTURE VAL R9
  NEWCLOSURE R10 P5
  CAPTURE VAL R4
  CAPTURE VAL R3
  LOADK R11 K18 ["ThirdPartyPurchaseAllowed"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE UPVAL U4
  CAPTURE VAL R10
  NEWCLOSURE R11 P6
  CAPTURE VAL R4
  CAPTURE VAL R3
  LOADK R12 K19 ["ThirdPartyTeleportAllowed"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE UPVAL U4
  CAPTURE VAL R11
  NEWCLOSURE R12 P7
  CAPTURE VAL R4
  CAPTURE VAL R3
  LOADK R13 K20 ["MeshTextureApisAllowed"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE UPVAL U4
  CAPTURE VAL R12
  NEWCLOSURE R13 P8
  CAPTURE VAL R4
  LOADK R14 K21 ["InsertFreeAssetsAllowed"]
  NEWCLOSURE R12 P1
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE UPVAL U4
  CAPTURE VAL R13
  SETLIST R5 R6 7 [1]
  RETURN R5 1

PROTO_23:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+52]
  DUPTABLE R2 K10 [{"HttpEnabled", "SecretsAsTableRows", "StudioAccessToApisAllowed", "ThirdPartyPurchaseAllowed", "ThirdPartyTeleportAllowed", "InsertFreeAssetsAllowed", "HttpEnabledValueChanged", "ThirdPartyPurchaseAllowedValueChanged", "ThirdPartyTeleportAllowedValueChanged", "InsertFreeAssetsAllowedValueChanged"}]
  MOVE R3 R0
  LOADK R4 K0 ["HttpEnabled"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["HttpEnabled"]
  MOVE R3 R0
  LOADK R4 K1 ["SecretsAsTableRows"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["SecretsAsTableRows"]
  MOVE R3 R0
  LOADK R4 K2 ["StudioAccessToApisAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["StudioAccessToApisAllowed"]
  MOVE R3 R0
  LOADK R4 K3 ["ThirdPartyPurchaseAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["ThirdPartyPurchaseAllowed"]
  MOVE R3 R0
  LOADK R4 K4 ["ThirdPartyTeleportAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K4 ["ThirdPartyTeleportAllowed"]
  MOVE R3 R0
  LOADK R4 K5 ["InsertFreeAssetsAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["InsertFreeAssetsAllowed"]
  MOVE R3 R1
  LOADK R4 K0 ["HttpEnabled"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K6 ["HttpEnabledValueChanged"]
  MOVE R3 R1
  LOADK R4 K3 ["ThirdPartyPurchaseAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K7 ["ThirdPartyPurchaseAllowedValueChanged"]
  MOVE R3 R1
  LOADK R4 K4 ["ThirdPartyTeleportAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K8 ["ThirdPartyTeleportAllowedValueChanged"]
  MOVE R3 R1
  LOADK R4 K5 ["InsertFreeAssetsAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K9 ["InsertFreeAssetsAllowedValueChanged"]
  RETURN R2 1
  DUPTABLE R2 K12 [{"HttpEnabled", "Secrets", "StudioAccessToApisAllowed", "ThirdPartyPurchaseAllowed", "ThirdPartyTeleportAllowed", "InsertFreeAssetsAllowed", "HttpEnabledValueChanged", "ThirdPartyPurchaseAllowedValueChanged", "ThirdPartyTeleportAllowedValueChanged", "InsertFreeAssetsAllowedValueChanged"}]
  MOVE R3 R0
  LOADK R4 K0 ["HttpEnabled"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["HttpEnabled"]
  MOVE R3 R0
  LOADK R4 K11 ["Secrets"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K11 ["Secrets"]
  MOVE R3 R0
  LOADK R4 K2 ["StudioAccessToApisAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["StudioAccessToApisAllowed"]
  MOVE R3 R0
  LOADK R4 K3 ["ThirdPartyPurchaseAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["ThirdPartyPurchaseAllowed"]
  MOVE R3 R0
  LOADK R4 K4 ["ThirdPartyTeleportAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K4 ["ThirdPartyTeleportAllowed"]
  MOVE R3 R0
  LOADK R4 K5 ["InsertFreeAssetsAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["InsertFreeAssetsAllowed"]
  MOVE R3 R1
  LOADK R4 K0 ["HttpEnabled"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K6 ["HttpEnabledValueChanged"]
  MOVE R3 R1
  LOADK R4 K3 ["ThirdPartyPurchaseAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K7 ["ThirdPartyPurchaseAllowedValueChanged"]
  MOVE R3 R1
  LOADK R4 K4 ["ThirdPartyTeleportAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K8 ["ThirdPartyTeleportAllowedValueChanged"]
  MOVE R3 R1
  LOADK R4 K5 ["InsertFreeAssetsAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K9 ["InsertFreeAssetsAllowedValueChanged"]
  RETURN R2 1

PROTO_24:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+140]
  DUPTABLE R3 K23 [{"HttpEnabled", "SecretsAsTableRows", "EditSecretId", "EditSecretFormNameField", "EditSecretFormValueField", "EditSecretFormDomainField", "EditSecretFormNameError", "EditSecretFormDomainError", "StudioAccessToApisAllowed", "ThirdPartyPurchaseAllowed", "ThirdPartyTeleportAllowed", "InsertFreeAssetsAllowed", "HttpEnabledValueChanged", "StudioAccessToApisAllowedValueChanged", "ThirdPartyPurchaseAllowedValueChanged", "ThirdPartyTeleportAllowedValueChanged", "InsertFreeAssetsAllowedValueChanged", "MeshTextureApisAllowed", "MeshTextureApisAllowedValueChanged", "MeshTextureApiAmpStatus", "OwnerId", "OwnerType", "GroupOwnerUserId"}]
  MOVE R4 R0
  LOADK R5 K0 ["HttpEnabled"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K0 ["HttpEnabled"]
  MOVE R4 R0
  LOADK R5 K1 ["SecretsAsTableRows"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["SecretsAsTableRows"]
  GETTABLEKS R5 R2 K24 ["EditAsset"]
  GETTABLEKS R4 R5 K25 ["editSecretId"]
  SETTABLEKS R4 R3 K2 ["EditSecretId"]
  GETTABLEKS R5 R2 K24 ["EditAsset"]
  GETTABLEKS R4 R5 K26 ["editSecretFormName"]
  SETTABLEKS R4 R3 K3 ["EditSecretFormNameField"]
  GETTABLEKS R5 R2 K24 ["EditAsset"]
  GETTABLEKS R4 R5 K27 ["editSecretFormValue"]
  SETTABLEKS R4 R3 K4 ["EditSecretFormValueField"]
  GETTABLEKS R5 R2 K24 ["EditAsset"]
  GETTABLEKS R4 R5 K28 ["editSecretFormDomain"]
  SETTABLEKS R4 R3 K5 ["EditSecretFormDomainField"]
  GETTABLEKS R5 R2 K29 ["Settings"]
  GETTABLEKS R4 R5 K30 ["Errors"]
  JUMPIFNOT R4 [+6]
  GETTABLEKS R6 R2 K29 ["Settings"]
  GETTABLEKS R5 R6 K30 ["Errors"]
  GETTABLEKS R4 R5 K6 ["EditSecretFormNameError"]
  SETTABLEKS R4 R3 K6 ["EditSecretFormNameError"]
  GETTABLEKS R5 R2 K29 ["Settings"]
  GETTABLEKS R4 R5 K30 ["Errors"]
  JUMPIFNOT R4 [+6]
  GETTABLEKS R6 R2 K29 ["Settings"]
  GETTABLEKS R5 R6 K30 ["Errors"]
  GETTABLEKS R4 R5 K7 ["EditSecretFormDomainError"]
  SETTABLEKS R4 R3 K7 ["EditSecretFormDomainError"]
  MOVE R4 R0
  LOADK R5 K8 ["StudioAccessToApisAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K8 ["StudioAccessToApisAllowed"]
  MOVE R4 R0
  LOADK R5 K9 ["ThirdPartyPurchaseAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K9 ["ThirdPartyPurchaseAllowed"]
  MOVE R4 R0
  LOADK R5 K10 ["ThirdPartyTeleportAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["ThirdPartyTeleportAllowed"]
  MOVE R4 R0
  LOADK R5 K11 ["InsertFreeAssetsAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["InsertFreeAssetsAllowed"]
  MOVE R4 R1
  LOADK R5 K0 ["HttpEnabled"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K12 ["HttpEnabledValueChanged"]
  MOVE R4 R1
  LOADK R5 K8 ["StudioAccessToApisAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K13 ["StudioAccessToApisAllowedValueChanged"]
  MOVE R4 R1
  LOADK R5 K9 ["ThirdPartyPurchaseAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["ThirdPartyPurchaseAllowedValueChanged"]
  MOVE R4 R1
  LOADK R5 K10 ["ThirdPartyTeleportAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K15 ["ThirdPartyTeleportAllowedValueChanged"]
  MOVE R4 R1
  LOADK R5 K11 ["InsertFreeAssetsAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["InsertFreeAssetsAllowedValueChanged"]
  MOVE R4 R0
  LOADK R5 K17 ["MeshTextureApisAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K17 ["MeshTextureApisAllowed"]
  MOVE R4 R1
  LOADK R5 K17 ["MeshTextureApisAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K18 ["MeshTextureApisAllowedValueChanged"]
  MOVE R4 R0
  LOADK R5 K19 ["MeshTextureApiAmpStatus"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K19 ["MeshTextureApiAmpStatus"]
  GETTABLEKS R5 R2 K31 ["GameOwnerMetadata"]
  GETTABLEKS R4 R5 K32 ["creatorId"]
  SETTABLEKS R4 R3 K20 ["OwnerId"]
  GETTABLEKS R5 R2 K31 ["GameOwnerMetadata"]
  GETTABLEKS R4 R5 K33 ["creatorType"]
  SETTABLEKS R4 R3 K21 ["OwnerType"]
  GETTABLEKS R5 R2 K31 ["GameOwnerMetadata"]
  GETTABLEKS R4 R5 K34 ["groupOwnerId"]
  SETTABLEKS R4 R3 K22 ["GroupOwnerUserId"]
  RETURN R3 1
  DUPTABLE R3 K36 [{"HttpEnabled", "Secrets", "StudioAccessToApisAllowed", "ThirdPartyPurchaseAllowed", "ThirdPartyTeleportAllowed", "InsertFreeAssetsAllowed", "HttpEnabledValueChanged", "ThirdPartyPurchaseAllowedValueChanged", "ThirdPartyTeleportAllowedValueChanged", "InsertFreeAssetsAllowedValueChanged", "MeshTextureApisAllowed", "MeshTextureApisAllowedValueChanged", "MeshTextureApiAmpStatus", "OwnerId", "OwnerType", "GroupOwnerUserId"}]
  MOVE R4 R0
  LOADK R5 K0 ["HttpEnabled"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K0 ["HttpEnabled"]
  MOVE R4 R0
  LOADK R5 K35 ["Secrets"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K35 ["Secrets"]
  MOVE R4 R0
  LOADK R5 K8 ["StudioAccessToApisAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K8 ["StudioAccessToApisAllowed"]
  MOVE R4 R0
  LOADK R5 K9 ["ThirdPartyPurchaseAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K9 ["ThirdPartyPurchaseAllowed"]
  MOVE R4 R0
  LOADK R5 K10 ["ThirdPartyTeleportAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["ThirdPartyTeleportAllowed"]
  MOVE R4 R0
  LOADK R5 K11 ["InsertFreeAssetsAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["InsertFreeAssetsAllowed"]
  MOVE R4 R1
  LOADK R5 K0 ["HttpEnabled"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K12 ["HttpEnabledValueChanged"]
  MOVE R4 R1
  LOADK R5 K9 ["ThirdPartyPurchaseAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["ThirdPartyPurchaseAllowedValueChanged"]
  MOVE R4 R1
  LOADK R5 K10 ["ThirdPartyTeleportAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K15 ["ThirdPartyTeleportAllowedValueChanged"]
  MOVE R4 R1
  LOADK R5 K11 ["InsertFreeAssetsAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["InsertFreeAssetsAllowedValueChanged"]
  MOVE R4 R0
  LOADK R5 K17 ["MeshTextureApisAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K17 ["MeshTextureApisAllowed"]
  MOVE R4 R1
  LOADK R5 K17 ["MeshTextureApisAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K18 ["MeshTextureApisAllowedValueChanged"]
  MOVE R4 R0
  LOADK R5 K19 ["MeshTextureApiAmpStatus"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K19 ["MeshTextureApiAmpStatus"]
  GETTABLEKS R5 R2 K31 ["GameOwnerMetadata"]
  GETTABLEKS R4 R5 K32 ["creatorId"]
  SETTABLEKS R4 R3 K20 ["OwnerId"]
  GETTABLEKS R5 R2 K31 ["GameOwnerMetadata"]
  GETTABLEKS R4 R5 K33 ["creatorType"]
  SETTABLEKS R4 R3 K21 ["OwnerType"]
  GETTABLEKS R5 R2 K31 ["GameOwnerMetadata"]
  GETTABLEKS R4 R5 K34 ["groupOwnerId"]
  SETTABLEKS R4 R3 K22 ["GroupOwnerUserId"]
  RETURN R3 1

PROTO_25:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R1 0
  GETUPVAL R2 1
  LOADK R3 K0 ["editSecretFormName"]
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R1 0
  GETUPVAL R2 1
  LOADK R3 K0 ["editSecretFormValue"]
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_28:
  GETUPVAL R1 0
  GETUPVAL R2 1
  LOADK R3 K0 ["editSecretFormDomain"]
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_29:
  GETUPVAL R2 0
  GETUPVAL R3 1
  NEWTABLE R4 1 0
  SETTABLE R1 R4 R0
  CALL R3 1 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_30:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_31:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_32:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+72]
  DUPTABLE R2 K14 [{"HttpEnabledChanged", "SecretsAsTableRowsChanged", "StudioApiServicesChanged", "ThirdPartyPurchaseChanged", "ThirdPartyTeleportAllowedChanged", "MeshTextureApisAllowedChanged", "InsertFreeAssetsAllowedChanged", "EditSecretIdChanged", "EditSecretFormNameChanged", "EditSecretFormValueChanged", "EditSecretFormDomainChanged", "ReportError", "ClearError", "ClearAllErrors"}]
  MOVE R3 R0
  LOADK R4 K15 ["HttpEnabled"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["HttpEnabledChanged"]
  MOVE R3 R0
  LOADK R4 K16 ["SecretsAsTableRows"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["SecretsAsTableRowsChanged"]
  MOVE R3 R0
  LOADK R4 K17 ["StudioAccessToApisAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["StudioApiServicesChanged"]
  MOVE R3 R0
  LOADK R4 K18 ["ThirdPartyPurchaseAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["ThirdPartyPurchaseChanged"]
  MOVE R3 R0
  LOADK R4 K19 ["ThirdPartyTeleportAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K4 ["ThirdPartyTeleportAllowedChanged"]
  MOVE R3 R0
  LOADK R4 K20 ["MeshTextureApisAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["MeshTextureApisAllowedChanged"]
  MOVE R3 R0
  LOADK R4 K21 ["InsertFreeAssetsAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K6 ["InsertFreeAssetsAllowedChanged"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  SETTABLEKS R3 R2 K7 ["EditSecretIdChanged"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  SETTABLEKS R3 R2 K8 ["EditSecretFormNameChanged"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  SETTABLEKS R3 R2 K9 ["EditSecretFormValueChanged"]
  NEWCLOSURE R3 P3
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  SETTABLEKS R3 R2 K10 ["EditSecretFormDomainChanged"]
  NEWCLOSURE R3 P4
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  SETTABLEKS R3 R2 K11 ["ReportError"]
  NEWCLOSURE R3 P5
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  SETTABLEKS R3 R2 K12 ["ClearError"]
  NEWCLOSURE R3 P6
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  SETTABLEKS R3 R2 K13 ["ClearAllErrors"]
  RETURN R2 1
  DUPTABLE R2 K23 [{"HttpEnabledChanged", "SecretsChanged", "StudioApiServicesChanged", "ThirdPartyPurchaseChanged", "ThirdPartyTeleportAllowedChanged", "MeshTextureApisAllowedChanged", "InsertFreeAssetsAllowedChanged"}]
  MOVE R3 R0
  LOADK R4 K15 ["HttpEnabled"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["HttpEnabledChanged"]
  MOVE R3 R0
  LOADK R4 K24 ["Secrets"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K22 ["SecretsChanged"]
  MOVE R3 R0
  LOADK R4 K17 ["StudioAccessToApisAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["StudioApiServicesChanged"]
  MOVE R3 R0
  LOADK R4 K18 ["ThirdPartyPurchaseAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["ThirdPartyPurchaseChanged"]
  MOVE R3 R0
  LOADK R4 K19 ["ThirdPartyTeleportAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K4 ["ThirdPartyTeleportAllowedChanged"]
  MOVE R3 R0
  LOADK R4 K20 ["MeshTextureApisAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["MeshTextureApisAllowedChanged"]
  MOVE R3 R0
  LOADK R4 K21 ["InsertFreeAssetsAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K6 ["InsertFreeAssetsAllowedChanged"]
  RETURN R2 1

PROTO_33:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OwnerType"]
  GETIMPORT R4 K5 [Enum.CreatorType.Group]
  JUMPIFEQ R2 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1

PROTO_34:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["GetUserId"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R3 R2 K2 ["OwnerId"]
  GETTABLEKS R4 R2 K3 ["GroupOwnerUserId"]
  NAMECALL R5 R0 K4 ["isGroupGame"]
  CALL R5 1 1
  JUMPIFNOT R5 [+5]
  JUMPIFEQ R1 R4 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  RETURN R5 1
  JUMPIFEQ R1 R3 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  RETURN R5 1

PROTO_35:
  NEWTABLE R2 0 0
  LOADB R3 0
  GETTABLEKS R4 R0 K0 ["SecretsAsTableRows"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R8 K1 ["index"]
  GETTABLEKS R10 R0 K2 ["EditSecretId"]
  JUMPIFNOTEQ R9 R10 [+39]
  GETTABLEKS R9 R8 K3 ["row"]
  GETTABLEN R10 R9 1
  GETTABLEN R11 R1 1
  JUMPIFNOTEQ R10 R11 [+9]
  GETTABLEN R10 R9 2
  GETTABLEN R11 R1 2
  JUMPIFNOTEQ R10 R11 [+5]
  GETTABLEN R10 R9 3
  GETTABLEN R11 R1 3
  JUMPIFEQ R10 R11 [+2]
  LOADB R3 1
  DUPTABLE R12 K5 [{"index", "row", "isValueUpdated"}]
  GETTABLEKS R13 R8 K1 ["index"]
  SETTABLEKS R13 R12 K1 ["index"]
  SETTABLEKS R1 R12 K3 ["row"]
  LOADB R13 1
  GETTABLEN R14 R9 2
  GETTABLEN R15 R1 2
  JUMPIFNOTEQ R14 R15 [+3]
  GETTABLEKS R13 R8 K4 ["isValueUpdated"]
  SETTABLEKS R13 R12 K4 ["isValueUpdated"]
  FASTCALL2 TABLE_INSERT R2 R12 [+4]
  MOVE R11 R2
  GETIMPORT R10 K8 [table.insert]
  CALL R10 2 0
  JUMP [+7]
  FASTCALL2 TABLE_INSERT R2 R8 [+5]
  MOVE R10 R2
  MOVE R11 R8
  GETIMPORT R9 K8 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [-52]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R4 R0 K9 ["SecretsAsTableRowsChanged"]
  MOVE R5 R2
  CALL R4 1 0
  RETURN R0 0

PROTO_36:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["EditSecretFormNameChanged"]
  MOVE R2 R0
  CALL R1 1 0
  LOADNIL R1
  JUMPIFNOTEQKS R0 K1 [""] [+9]
  GETUPVAL R2 1
  LOADK R4 K2 ["Security"]
  LOADK R5 K3 ["ErrorSecretNameCannotBeEmpty"]
  NAMECALL R2 R2 K4 ["getText"]
  CALL R2 3 1
  MOVE R1 R2
  JUMP [+31]
  NAMECALL R2 R0 K5 ["len"]
  CALL R2 1 1
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+9]
  GETUPVAL R2 1
  LOADK R4 K2 ["Security"]
  LOADK R5 K6 ["ErrorSecretNameTooLong"]
  NAMECALL R2 R2 K4 ["getText"]
  CALL R2 3 1
  MOVE R1 R2
  JUMP [+17]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K7 ["secretNameExists"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["SecretsAsTableRows"]
  MOVE R4 R0
  GETUPVAL R5 3
  CALL R2 3 1
  JUMPIFNOT R2 [+7]
  GETUPVAL R2 1
  LOADK R4 K2 ["Security"]
  LOADK R5 K9 ["ErrorSecretNameNotAvailable"]
  NAMECALL R2 R2 K4 ["getText"]
  CALL R2 3 1
  MOVE R1 R2
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["ReportError"]
  LOADK R3 K11 ["EditSecretFormNameError"]
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K12 ["ClearError"]
  LOADK R3 K11 ["EditSecretFormNameError"]
  CALL R2 1 0
  RETURN R0 0

PROTO_37:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["EditSecretFormValueChanged"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_38:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["EditSecretFormDomainChanged"]
  MOVE R2 R0
  CALL R1 1 0
  LOADNIL R1
  JUMPIFNOTEQKS R0 K1 [""] [+9]
  GETUPVAL R2 1
  LOADK R4 K2 ["Security"]
  LOADK R5 K3 ["ErrorDomainNameCannotBeEmpty"]
  NAMECALL R2 R2 K4 ["getText"]
  CALL R2 3 1
  MOVE R1 R2
  JUMP [+13]
  NAMECALL R2 R0 K5 ["len"]
  CALL R2 1 1
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+8]
  GETUPVAL R2 1
  LOADK R4 K2 ["Security"]
  LOADK R5 K6 ["ErrorDomainNameTooLong"]
  NAMECALL R2 R2 K4 ["getText"]
  CALL R2 3 1
  MOVE R1 R2
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["ReportError"]
  LOADK R3 K8 ["EditSecretFormDomainError"]
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K9 ["ClearError"]
  LOADK R3 K8 ["EditSecretFormDomainError"]
  CALL R2 1 0
  RETURN R0 0

PROTO_39:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["EditSecretFormNameError"]
  JUMPIF R0 [+3]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["EditSecretFormDomainError"]
  JUMPIFNOT R0 [+56]
  DUPTABLE R1 K6 [{"Size", "Title", "Header", "Buttons"}]
  GETIMPORT R2 K9 [Vector2.new]
  LOADN R3 244
  LOADN R4 145
  CALL R2 2 1
  SETTABLEKS R2 R1 K2 ["Size"]
  GETUPVAL R2 1
  LOADK R4 K10 ["Security"]
  LOADK R5 K11 ["TitleUnsavedChanges"]
  NAMECALL R2 R2 K12 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K3 ["Title"]
  GETUPVAL R2 1
  LOADK R4 K10 ["Security"]
  LOADK R5 K13 ["TextInputErrors"]
  NAMECALL R2 R2 K12 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K4 ["Header"]
  NEWTABLE R2 0 2
  GETUPVAL R3 1
  LOADK R5 K14 ["General"]
  LOADK R6 K15 ["ReplyNo"]
  NAMECALL R3 R3 K12 ["getText"]
  CALL R3 3 1
  GETUPVAL R4 1
  LOADK R6 K14 ["General"]
  LOADK R7 K16 ["ReplyYes"]
  NAMECALL R4 R4 K12 ["getText"]
  CALL R4 3 -1
  SETLIST R2 R3 -1 [1]
  SETTABLEKS R2 R1 K5 ["Buttons"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K17 ["Dialog"]
  GETTABLEKS R2 R3 K18 ["showDialog"]
  GETUPVAL R3 2
  MOVE R4 R1
  CALL R2 2 1
  NAMECALL R2 R2 K19 ["await"]
  CALL R2 1 1
  JUMPIF R2 [+49]
  RETURN R0 0
  JUMP [+47]
  GETUPVAL R1 3
  JUMPIFNOT R1 [+20]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K20 ["getUpdateSecretRowAtIndex"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K21 ["SecretsAsTableRows"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K22 ["EditSecretId"]
  GETUPVAL R4 5
  GETUPVAL R5 6
  GETUPVAL R6 7
  CALL R1 5 2
  JUMPIFNOT R2 [+31]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K23 ["SecretsAsTableRowsChanged"]
  MOVE R4 R1
  CALL R3 1 0
  JUMP [+25]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K21 ["SecretsAsTableRows"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K22 ["EditSecretId"]
  GETTABLE R3 R4 R5
  GETTABLEKS R2 R3 K24 ["row"]
  GETTABLEN R1 R2 2
  GETUPVAL R2 8
  GETUPVAL R3 0
  NEWTABLE R4 0 3
  GETUPVAL R5 5
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K25 ["transformToStorableFormat"]
  GETUPVAL R7 6
  MOVE R8 R1
  CALL R6 2 1
  GETUPVAL R7 7
  SETLIST R4 R5 3 [1]
  CALL R2 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K26 ["ClearAllErrors"]
  CALL R1 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K27 ["EditSecretFormNameChanged"]
  LOADNIL R2
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K28 ["EditSecretFormValueChanged"]
  LOADNIL R2
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K29 ["EditSecretFormDomainChanged"]
  LOADNIL R2
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K30 ["EditSecretIdChanged"]
  LOADNIL R2
  CALL R1 1 0
  RETURN R0 0

PROTO_40:
  GETTABLEKS R1 R0 K0 ["Stylizer"]
  GETTABLEKS R2 R0 K1 ["Localization"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["new"]
  CALL R3 0 1
  GETTABLEKS R4 R0 K3 ["EditSecretId"]
  GETTABLEKS R5 R0 K4 ["EditSecretFormNameField"]
  GETTABLEKS R6 R0 K5 ["EditSecretFormValueField"]
  GETTABLEKS R7 R0 K6 ["EditSecretFormDomainField"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE VAL R4
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  NEWCLOSURE R10 P2
  CAPTURE VAL R0
  CAPTURE VAL R2
  NEWCLOSURE R11 P3
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE UPVAL U4
  DUPTABLE R12 K11 [{"HeaderFrame", "Name", "Domain", "NewValue"}]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K12 ["createElement"]
  GETUPVAL R14 6
  DUPTABLE R15 K18 [{"LayoutOrder", "BackgroundTransparency", "axis", "minimumSize", "contentPadding"}]
  NAMECALL R16 R3 K19 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K13 ["LayoutOrder"]
  LOADN R16 1
  SETTABLEKS R16 R15 K14 ["BackgroundTransparency"]
  GETUPVAL R18 6
  GETTABLEKS R17 R18 K20 ["Axis"]
  GETTABLEKS R16 R17 K21 ["Vertical"]
  SETTABLEKS R16 R15 K15 ["axis"]
  GETIMPORT R16 K23 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K16 ["minimumSize"]
  GETIMPORT R16 K25 [UDim.new]
  LOADN R17 0
  GETTABLEKS R19 R1 K26 ["settingsPage"]
  GETTABLEKS R18 R19 K27 ["headerPadding"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K17 ["contentPadding"]
  NEWTABLE R16 4 1
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K12 ["createElement"]
  LOADK R19 K28 ["ImageButton"]
  NEWTABLE R20 8 0
  GETIMPORT R21 K23 [UDim2.new]
  LOADN R22 0
  GETTABLEKS R24 R1 K29 ["backButton"]
  GETTABLEKS R23 R24 K30 ["size"]
  LOADN R24 0
  GETTABLEKS R26 R1 K29 ["backButton"]
  GETTABLEKS R25 R26 K30 ["size"]
  CALL R21 4 1
  SETTABLEKS R21 R20 K31 ["Size"]
  LOADN R21 0
  SETTABLEKS R21 R20 K13 ["LayoutOrder"]
  GETTABLEKS R22 R1 K29 ["backButton"]
  GETTABLEKS R21 R22 K32 ["image"]
  SETTABLEKS R21 R20 K33 ["Image"]
  LOADN R21 1
  SETTABLEKS R21 R20 K14 ["BackgroundTransparency"]
  GETUPVAL R23 5
  GETTABLEKS R22 R23 K34 ["Event"]
  GETTABLEKS R21 R22 K35 ["Activated"]
  SETTABLE R11 R20 R21
  NEWTABLE R21 0 1
  GETUPVAL R23 5
  GETTABLEKS R22 R23 K12 ["createElement"]
  GETUPVAL R23 7
  DUPTABLE R24 K37 [{"Cursor"}]
  LOADK R25 K38 ["PointingHand"]
  SETTABLEKS R25 R24 K36 ["Cursor"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  SETTABLEKS R18 R16 K39 ["BackButton"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 8
  DUPTABLE R19 K40 [{"LayoutOrder"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K13 ["LayoutOrder"]
  CALL R17 2 1
  SETLIST R16 R17 1 [1]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K12 ["createElement"]
  GETUPVAL R19 9
  DUPTABLE R20 K42 [{"Title", "LayoutOrder"}]
  LOADK R23 K43 ["Security"]
  LOADK R24 K44 ["TitleEditSecret"]
  NAMECALL R21 R2 K45 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K41 ["Title"]
  LOADN R21 2
  SETTABLEKS R21 R20 K13 ["LayoutOrder"]
  CALL R18 2 1
  SETTABLEKS R18 R16 K46 ["Header"]
  GETUPVAL R19 3
  JUMPIFNOT R19 [+2]
  LOADNIL R18
  JUMP [+39]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K12 ["createElement"]
  GETUPVAL R19 10
  DUPTABLE R20 K53 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment", "TextColor", "TextSize"}]
  GETIMPORT R21 K56 [Enum.AutomaticSize.XY]
  SETTABLEKS R21 R20 K47 ["AutomaticSize"]
  LOADN R21 3
  SETTABLEKS R21 R20 K13 ["LayoutOrder"]
  LOADK R21 K57 ["SubText"]
  SETTABLEKS R21 R20 K48 ["Style"]
  LOADK R23 K43 ["Security"]
  LOADK R24 K58 ["TextEditSecret"]
  NAMECALL R21 R2 K45 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K49 ["Text"]
  GETIMPORT R21 K60 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K50 ["TextXAlignment"]
  GETTABLEKS R21 R1 K61 ["InfoTextColor"]
  SETTABLEKS R21 R20 K51 ["TextColor"]
  GETTABLEKS R23 R1 K62 ["fontStyle"]
  GETTABLEKS R22 R23 K63 ["Smaller"]
  GETTABLEKS R21 R22 K52 ["TextSize"]
  SETTABLEKS R21 R20 K52 ["TextSize"]
  CALL R18 2 1
  SETTABLEKS R18 R16 K64 ["Description"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K7 ["HeaderFrame"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K12 ["createElement"]
  GETUPVAL R14 11
  DUPTABLE R15 K65 [{"LayoutOrder", "Title"}]
  NAMECALL R16 R3 K19 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K13 ["LayoutOrder"]
  LOADK R18 K43 ["Security"]
  LOADK R19 K66 ["SecretNameLabel"]
  NAMECALL R16 R2 K45 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K41 ["Title"]
  DUPTABLE R16 K68 [{"TextBox"}]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 12
  DUPTABLE R19 K71 [{"ErrorText", "OnTextChanged", "Text"}]
  GETTABLEKS R20 R0 K72 ["EditSecretFormNameError"]
  SETTABLEKS R20 R19 K69 ["ErrorText"]
  SETTABLEKS R8 R19 K70 ["OnTextChanged"]
  SETTABLEKS R5 R19 K49 ["Text"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K67 ["TextBox"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K8 ["Name"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K12 ["createElement"]
  GETUPVAL R14 11
  DUPTABLE R15 K65 [{"LayoutOrder", "Title"}]
  NAMECALL R16 R3 K19 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K13 ["LayoutOrder"]
  LOADK R18 K43 ["Security"]
  LOADK R19 K73 ["SecretDomainLabel"]
  NAMECALL R16 R2 K45 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K41 ["Title"]
  DUPTABLE R16 K68 [{"TextBox"}]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 12
  DUPTABLE R19 K71 [{"ErrorText", "OnTextChanged", "Text"}]
  GETTABLEKS R20 R0 K74 ["EditSecretFormDomainError"]
  SETTABLEKS R20 R19 K69 ["ErrorText"]
  SETTABLEKS R10 R19 K70 ["OnTextChanged"]
  SETTABLEKS R7 R19 K49 ["Text"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K67 ["TextBox"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K9 ["Domain"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K12 ["createElement"]
  GETUPVAL R14 11
  DUPTABLE R15 K65 [{"LayoutOrder", "Title"}]
  NAMECALL R16 R3 K19 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K13 ["LayoutOrder"]
  LOADK R18 K43 ["Security"]
  LOADK R19 K75 ["SecretNewValueLabel"]
  NAMECALL R16 R2 K45 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K41 ["Title"]
  DUPTABLE R16 K68 [{"TextBox"}]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 12
  DUPTABLE R19 K78 [{"ErrorText", "OnTextChanged", "Text", "PlaceholderText", "BottomText"}]
  LOADNIL R20
  SETTABLEKS R20 R19 K69 ["ErrorText"]
  SETTABLEKS R9 R19 K70 ["OnTextChanged"]
  SETTABLEKS R6 R19 K49 ["Text"]
  LOADK R22 K43 ["Security"]
  LOADK R23 K79 ["PlaceholderTextSecretNewValueInput"]
  NAMECALL R20 R2 K45 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K76 ["PlaceholderText"]
  LOADK R22 K43 ["Security"]
  LOADK R23 K80 ["BottomTextSecretNewValueInput"]
  NAMECALL R20 R2 K45 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K77 ["BottomText"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K67 ["TextBox"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K10 ["NewValue"]
  RETURN R12 1

PROTO_41:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_42:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["HttpEnabledChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["HttpEnabled"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_43:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["SecretsAsTableRowsChanged"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_44:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["SecretsChanged"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_45:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["StudioApiServicesChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["StudioAccessToApisAllowed"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_46:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ThirdPartyPurchaseChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["ThirdPartyPurchaseAllowed"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_47:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ThirdPartyTeleportAllowedChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["ThirdPartyTeleportAllowed"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_48:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["MeshTextureApisAllowedChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["MeshTextureApisAllowed"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_49:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_50:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_51:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_52:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["InsertFreeAssetsAllowedChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["InsertFreeAssetsAllowed"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_53:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Localization"]
  GETTABLEKS R2 R0 K2 ["InsertFreeAssetsAllowedValueChanged"]
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R0 K3 ["InsertFreeAssetsAllowed"]
  GETTABLEKS R4 R0 K4 ["HttpEnabledValueChanged"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R3 R0 K5 ["HttpEnabled"]
  JUMPIF R3 [+13]
  GETTABLEKS R4 R0 K6 ["ThirdPartyPurchaseAllowedValueChanged"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R3 R0 K7 ["ThirdPartyPurchaseAllowed"]
  JUMPIF R3 [+7]
  GETTABLEKS R4 R0 K8 ["ThirdPartyTeleportAllowedValueChanged"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R3 R0 K9 ["ThirdPartyTeleportAllowed"]
  JUMPIF R3 [+1]
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  LOADNIL R6
  GETUPVAL R7 0
  NAMECALL R7 R7 K10 ["isLoggedInUserGameOwner"]
  CALL R7 1 1
  MOVE R4 R7
  JUMPIFNOT R4 [+5]
  LOADB R7 1
  GETTABLEKS R8 R0 K11 ["MeshTextureApiAmpStatus"]
  JUMPIFEQKS R8 K12 ["Granted"] [+2]
  LOADB R7 0
  MOVE R5 R7
  JUMPIFNOT R4 [+5]
  LOADB R7 1
  GETTABLEKS R8 R0 K11 ["MeshTextureApiAmpStatus"]
  JUMPIFEQKS R8 K13 ["Denied"] [+2]
  LOADB R7 0
  MOVE R6 R7
  GETTABLEKS R7 R0 K14 ["Stylizer"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K15 ["new"]
  LOADN R9 1
  CALL R8 1 1
  DUPTABLE R9 K23 [{"WarningPopup", "HttpEnabled", "Secrets", "StudioApiServicesEnabled", "ThirdPartyPurchasesEnabled", "ThirdPartyTeleportsEnabled", "MeshTextureApisEnabled", "AllowInsertFreeAssets"}]
  MOVE R10 R3
  JUMPIFNOT R10 [+349]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K24 ["createElement"]
  LOADK R11 K25 ["Frame"]
  DUPTABLE R12 K30 [{"AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R13 K33 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K26 ["AutomaticSize"]
  LOADN R13 1
  SETTABLEKS R13 R12 K27 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K28 ["BorderSizePixel"]
  NAMECALL R13 R8 K34 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K29 ["LayoutOrder"]
  DUPTABLE R13 K38 [{"UILayout", "InsecureWarning", "AssetInsertionWarning"}]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K24 ["createElement"]
  LOADK R15 K39 ["UIListLayout"]
  DUPTABLE R16 K45 [{"FillDirection", "Padding", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R17 K47 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K40 ["FillDirection"]
  GETIMPORT R17 K49 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K41 ["Padding"]
  GETIMPORT R17 K50 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K42 ["SortOrder"]
  GETIMPORT R17 K52 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K43 ["HorizontalAlignment"]
  GETIMPORT R17 K54 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K44 ["VerticalAlignment"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K35 ["UILayout"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K24 ["createElement"]
  LOADK R15 K25 ["Frame"]
  DUPTABLE R16 K30 [{"AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R17 K33 [Enum.AutomaticSize.XY]
  SETTABLEKS R17 R16 K26 ["AutomaticSize"]
  LOADN R17 1
  SETTABLEKS R17 R16 K27 ["BackgroundTransparency"]
  LOADN R17 0
  SETTABLEKS R17 R16 K28 ["BorderSizePixel"]
  NAMECALL R17 R8 K34 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K29 ["LayoutOrder"]
  DUPTABLE R17 K57 [{"UILayout", "Warning", "Description"}]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K24 ["createElement"]
  LOADK R19 K39 ["UIListLayout"]
  DUPTABLE R20 K58 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R21 K60 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K40 ["FillDirection"]
  GETIMPORT R21 K49 [UDim.new]
  LOADN R22 0
  GETTABLEKS R24 R7 K61 ["dialog"]
  GETTABLEKS R23 R24 K62 ["spacing"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K41 ["Padding"]
  GETIMPORT R21 K50 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K42 ["SortOrder"]
  GETIMPORT R21 K54 [Enum.VerticalAlignment.Center]
  SETTABLEKS R21 R20 K44 ["VerticalAlignment"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K35 ["UILayout"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K24 ["createElement"]
  LOADK R19 K63 ["ImageLabel"]
  DUPTABLE R20 K66 [{"Image", "LayoutOrder", "BackgroundTransparency", "Size"}]
  GETTABLEKS R21 R7 K67 ["warningIcon"]
  SETTABLEKS R21 R20 K64 ["Image"]
  NAMECALL R21 R8 K34 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K29 ["LayoutOrder"]
  LOADN R21 1
  SETTABLEKS R21 R20 K27 ["BackgroundTransparency"]
  GETIMPORT R21 K70 [UDim2.fromOffset]
  GETTABLEKS R24 R7 K71 ["warningDialog"]
  GETTABLEKS R23 R24 K72 ["icon"]
  GETTABLEKS R22 R23 K73 ["size"]
  GETTABLEKS R25 R7 K71 ["warningDialog"]
  GETTABLEKS R24 R25 K72 ["icon"]
  GETTABLEKS R23 R24 K73 ["size"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K65 ["Size"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K55 ["Warning"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K24 ["createElement"]
  GETUPVAL R19 3
  DUPTABLE R20 K79 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment", "TextColor", "TextSize"}]
  GETIMPORT R21 K33 [Enum.AutomaticSize.XY]
  SETTABLEKS R21 R20 K26 ["AutomaticSize"]
  NAMECALL R21 R8 K34 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K29 ["LayoutOrder"]
  LOADK R21 K80 ["SubText"]
  SETTABLEKS R21 R20 K74 ["Style"]
  LOADK R23 K81 ["Security"]
  LOADK R24 K36 ["InsecureWarning"]
  NAMECALL R21 R1 K82 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K75 ["Text"]
  GETIMPORT R21 K83 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K76 ["TextXAlignment"]
  GETTABLEKS R21 R7 K84 ["warningColor"]
  SETTABLEKS R21 R20 K77 ["TextColor"]
  GETTABLEKS R23 R7 K85 ["fontStyle"]
  GETTABLEKS R22 R23 K86 ["Subtitle"]
  GETTABLEKS R21 R22 K78 ["TextSize"]
  SETTABLEKS R21 R20 K78 ["TextSize"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K56 ["Description"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K36 ["InsecureWarning"]
  MOVE R14 R2
  JUMPIFNOT R14 [+158]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K24 ["createElement"]
  LOADK R15 K25 ["Frame"]
  DUPTABLE R16 K87 [{"AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Size"}]
  GETIMPORT R17 K89 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K26 ["AutomaticSize"]
  LOADN R17 1
  SETTABLEKS R17 R16 K27 ["BackgroundTransparency"]
  LOADN R17 0
  SETTABLEKS R17 R16 K28 ["BorderSizePixel"]
  NAMECALL R17 R8 K34 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K29 ["LayoutOrder"]
  GETIMPORT R17 K91 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K65 ["Size"]
  DUPTABLE R17 K93 [{"UILayout", "UIPadding", "Description"}]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K24 ["createElement"]
  LOADK R19 K39 ["UIListLayout"]
  DUPTABLE R20 K94 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R21 K60 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K40 ["FillDirection"]
  GETIMPORT R21 K50 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K42 ["SortOrder"]
  GETIMPORT R21 K54 [Enum.VerticalAlignment.Center]
  SETTABLEKS R21 R20 K44 ["VerticalAlignment"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K35 ["UILayout"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K24 ["createElement"]
  LOADK R19 K92 ["UIPadding"]
  DUPTABLE R20 K96 [{"PaddingLeft"}]
  GETIMPORT R21 K49 [UDim.new]
  LOADN R22 0
  GETTABLEKS R26 R7 K71 ["warningDialog"]
  GETTABLEKS R25 R26 K72 ["icon"]
  GETTABLEKS R24 R25 K73 ["size"]
  GETTABLEKS R26 R7 K61 ["dialog"]
  GETTABLEKS R25 R26 K62 ["spacing"]
  ADD R23 R24 R25
  CALL R21 2 1
  SETTABLEKS R21 R20 K95 ["PaddingLeft"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K92 ["UIPadding"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K24 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K99 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "LinkMap", "Size", "Text", "TextProps"}]
  GETIMPORT R21 K89 [Enum.AutomaticSize.Y]
  SETTABLEKS R21 R20 K26 ["AutomaticSize"]
  GETIMPORT R21 K52 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R21 R20 K43 ["HorizontalAlignment"]
  NAMECALL R21 R8 K34 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K29 ["LayoutOrder"]
  NEWTABLE R21 1 0
  DUPTABLE R22 K102 [{"LinkText", "LinkCallback"}]
  LOADK R25 K81 ["Security"]
  LOADK R26 K103 ["AssetInsertionWarningLinkTOS"]
  NAMECALL R23 R1 K82 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K100 ["LinkText"]
  DUPCLOSURE R23 K104 [PROTO_41]
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  SETTABLEKS R23 R22 K101 ["LinkCallback"]
  SETTABLEKS R22 R21 K105 ["[linkTOS]"]
  SETTABLEKS R21 R20 K97 ["LinkMap"]
  GETIMPORT R21 K91 [UDim2.fromScale]
  LOADN R22 1
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K65 ["Size"]
  LOADK R23 K81 ["Security"]
  LOADK R24 K37 ["AssetInsertionWarning"]
  NAMECALL R21 R1 K82 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K75 ["Text"]
  DUPTABLE R21 K107 [{"Font", "Style", "TextColor", "TextSize", "TextXAlignment"}]
  GETTABLEKS R24 R7 K85 ["fontStyle"]
  GETTABLEKS R23 R24 K86 ["Subtitle"]
  GETTABLEKS R22 R23 K106 ["Font"]
  SETTABLEKS R22 R21 K106 ["Font"]
  LOADK R22 K80 ["SubText"]
  SETTABLEKS R22 R21 K74 ["Style"]
  GETTABLEKS R22 R7 K84 ["warningColor"]
  SETTABLEKS R22 R21 K77 ["TextColor"]
  GETTABLEKS R24 R7 K85 ["fontStyle"]
  GETTABLEKS R23 R24 K86 ["Subtitle"]
  GETTABLEKS R22 R23 K78 ["TextSize"]
  SETTABLEKS R22 R21 K78 ["TextSize"]
  GETIMPORT R22 K83 [Enum.TextXAlignment.Left]
  SETTABLEKS R22 R21 K76 ["TextXAlignment"]
  SETTABLEKS R21 R20 K98 ["TextProps"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K56 ["Description"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K37 ["AssetInsertionWarning"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K16 ["WarningPopup"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K24 ["createElement"]
  GETUPVAL R11 7
  DUPTABLE R12 K112 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
  GETUPVAL R14 8
  JUMPIFNOT R14 [+6]
  LOADK R15 K113 ["General"]
  LOADK R16 K114 ["HttpDescExp"]
  NAMECALL R13 R1 K82 ["getText"]
  CALL R13 3 1
  JUMP [+5]
  LOADK R15 K113 ["General"]
  LOADK R16 K115 ["HttpDesc"]
  NAMECALL R13 R1 K82 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K56 ["Description"]
  GETTABLEKS R14 R0 K5 ["HttpEnabled"]
  JUMPIFEQKNIL R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  SETTABLEKS R13 R12 K108 ["Disabled"]
  NAMECALL R13 R8 K34 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K29 ["LayoutOrder"]
  NEWCLOSURE R13 P1
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K109 ["OnClick"]
  GETTABLEKS R13 R0 K5 ["HttpEnabled"]
  SETTABLEKS R13 R12 K110 ["Selected"]
  LOADK R15 K113 ["General"]
  LOADK R16 K116 ["TitleHttp"]
  NAMECALL R13 R1 K82 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K111 ["Title"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K5 ["HttpEnabled"]
  GETUPVAL R11 9
  JUMPIFNOT R11 [+41]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K24 ["createElement"]
  GETUPVAL R11 10
  DUPTABLE R12 K123 [{"LayoutOrder", "SecretsAsTableRows", "OnChanged", "EditSecretIdChanged", "EditSecretFormNameChanged", "EditSecretFormValueChanged", "EditSecretFormDomainChanged", "Disabled"}]
  NAMECALL R13 R8 K34 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K29 ["LayoutOrder"]
  GETTABLEKS R13 R0 K117 ["SecretsAsTableRows"]
  SETTABLEKS R13 R12 K117 ["SecretsAsTableRows"]
  NEWCLOSURE R13 P2
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K118 ["OnChanged"]
  GETTABLEKS R13 R0 K119 ["EditSecretIdChanged"]
  SETTABLEKS R13 R12 K119 ["EditSecretIdChanged"]
  GETTABLEKS R13 R0 K120 ["EditSecretFormNameChanged"]
  SETTABLEKS R13 R12 K120 ["EditSecretFormNameChanged"]
  GETTABLEKS R13 R0 K121 ["EditSecretFormValueChanged"]
  SETTABLEKS R13 R12 K121 ["EditSecretFormValueChanged"]
  GETTABLEKS R13 R0 K122 ["EditSecretFormDomainChanged"]
  SETTABLEKS R13 R12 K122 ["EditSecretFormDomainChanged"]
  GETTABLEKS R14 R0 K5 ["HttpEnabled"]
  NOT R13 R14
  SETTABLEKS R13 R12 K108 ["Disabled"]
  CALL R10 2 1
  JUMP [+24]
  GETTABLEKS R11 R0 K5 ["HttpEnabled"]
  JUMPIFNOT R11 [+20]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K24 ["createElement"]
  GETUPVAL R11 10
  DUPTABLE R12 K124 [{"LayoutOrder", "Secrets", "OnChanged"}]
  NAMECALL R13 R8 K34 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K29 ["LayoutOrder"]
  GETTABLEKS R13 R0 K17 ["Secrets"]
  SETTABLEKS R13 R12 K17 ["Secrets"]
  NEWCLOSURE R13 P3
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K118 ["OnChanged"]
  CALL R10 2 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K17 ["Secrets"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K24 ["createElement"]
  GETUPVAL R11 7
  DUPTABLE R12 K112 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
  GETUPVAL R14 11
  JUMPIFNOT R14 [+6]
  LOADK R15 K113 ["General"]
  LOADK R16 K125 ["StudioApiServicesDescExp"]
  NAMECALL R13 R1 K82 ["getText"]
  CALL R13 3 1
  JUMP [+5]
  LOADK R15 K113 ["General"]
  LOADK R16 K126 ["StudioApiServicesDesc"]
  NAMECALL R13 R1 K82 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K56 ["Description"]
  GETTABLEKS R14 R0 K127 ["StudioAccessToApisAllowed"]
  JUMPIFEQKNIL R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  SETTABLEKS R13 R12 K108 ["Disabled"]
  NAMECALL R13 R8 K34 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K29 ["LayoutOrder"]
  NEWCLOSURE R13 P4
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K109 ["OnClick"]
  GETTABLEKS R13 R0 K127 ["StudioAccessToApisAllowed"]
  SETTABLEKS R13 R12 K110 ["Selected"]
  LOADK R15 K113 ["General"]
  LOADK R16 K128 ["TitleStudioApiServices"]
  NAMECALL R13 R1 K82 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K111 ["Title"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K18 ["StudioApiServicesEnabled"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K24 ["createElement"]
  GETUPVAL R11 7
  DUPTABLE R12 K112 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
  LOADK R15 K81 ["Security"]
  LOADK R16 K129 ["EnableThirdPartyPurchasesDescription"]
  NAMECALL R13 R1 K82 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K56 ["Description"]
  GETTABLEKS R14 R0 K7 ["ThirdPartyPurchaseAllowed"]
  JUMPIFEQKNIL R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  SETTABLEKS R13 R12 K108 ["Disabled"]
  NAMECALL R13 R8 K34 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K29 ["LayoutOrder"]
  NEWCLOSURE R13 P5
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K109 ["OnClick"]
  GETTABLEKS R13 R0 K7 ["ThirdPartyPurchaseAllowed"]
  SETTABLEKS R13 R12 K110 ["Selected"]
  LOADK R15 K81 ["Security"]
  LOADK R16 K130 ["EnableThirdPartyPurchases"]
  NAMECALL R13 R1 K82 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K111 ["Title"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["ThirdPartyPurchasesEnabled"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K24 ["createElement"]
  GETUPVAL R11 7
  DUPTABLE R12 K112 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
  GETUPVAL R14 8
  JUMPIFNOT R14 [+6]
  LOADK R15 K81 ["Security"]
  LOADK R16 K131 ["EnableThirdPartyTeleportsDescriptionExp"]
  NAMECALL R13 R1 K82 ["getText"]
  CALL R13 3 1
  JUMP [+5]
  LOADK R15 K81 ["Security"]
  LOADK R16 K132 ["EnableThirdPartyTeleportsDescription"]
  NAMECALL R13 R1 K82 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K56 ["Description"]
  GETTABLEKS R14 R0 K9 ["ThirdPartyTeleportAllowed"]
  JUMPIFEQKNIL R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  SETTABLEKS R13 R12 K108 ["Disabled"]
  NAMECALL R13 R8 K34 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K29 ["LayoutOrder"]
  NEWCLOSURE R13 P6
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K109 ["OnClick"]
  GETTABLEKS R13 R0 K9 ["ThirdPartyTeleportAllowed"]
  SETTABLEKS R13 R12 K110 ["Selected"]
  LOADK R15 K81 ["Security"]
  LOADK R16 K133 ["EnableThirdPartyTeleports"]
  NAMECALL R13 R1 K82 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K111 ["Title"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["ThirdPartyTeleportsEnabled"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K24 ["createElement"]
  GETUPVAL R11 7
  DUPTABLE R12 K135 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title", "LinkProps"}]
  JUMPIF R4 [+6]
  LOADK R15 K81 ["Security"]
  LOADK R16 K136 ["EnableMeshTextureApisNotOwnerDescription"]
  NAMECALL R13 R1 K82 ["getText"]
  CALL R13 3 1
  JUMPIF R13 [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K56 ["Description"]
  NOT R13 R5
  JUMPIF R13 [+8]
  NOT R13 R4
  JUMPIF R13 [+6]
  GETTABLEKS R14 R0 K137 ["MeshTextureApisAllowed"]
  JUMPIFEQKNIL R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  SETTABLEKS R13 R12 K108 ["Disabled"]
  NAMECALL R13 R8 K34 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K29 ["LayoutOrder"]
  NEWCLOSURE R13 P7
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K109 ["OnClick"]
  GETTABLEKS R13 R0 K137 ["MeshTextureApisAllowed"]
  SETTABLEKS R13 R12 K110 ["Selected"]
  LOADK R15 K81 ["Security"]
  LOADK R16 K138 ["EnableMeshTextureApis"]
  NAMECALL R13 R1 K82 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K111 ["Title"]
  JUMPIFNOT R5 [+28]
  DUPTABLE R13 K140 [{"Text", "LinkText", "OnLinkClicked"}]
  LOADK R16 K81 ["Security"]
  LOADK R17 K141 ["EnableMeshTextureApisDescription"]
  DUPTABLE R18 K144 [{"EditableMesh", "EditableImage"}]
  LOADK R19 K142 ["EditableMesh"]
  SETTABLEKS R19 R18 K142 ["EditableMesh"]
  LOADK R19 K143 ["EditableImage"]
  SETTABLEKS R19 R18 K143 ["EditableImage"]
  NAMECALL R14 R1 K82 ["getText"]
  CALL R14 4 1
  SETTABLEKS R14 R13 K75 ["Text"]
  LOADK R16 K81 ["Security"]
  LOADK R17 K145 ["MeshTextureApisPolicyLinkText"]
  NAMECALL R14 R1 K82 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K100 ["LinkText"]
  DUPCLOSURE R14 K146 [PROTO_49]
  CAPTURE UPVAL U5
  CAPTURE UPVAL U12
  SETTABLEKS R14 R13 K139 ["OnLinkClicked"]
  JUMPIF R13 [+45]
  JUMPIFNOT R4 [+22]
  JUMPIF R6 [+21]
  DUPTABLE R13 K140 [{"Text", "LinkText", "OnLinkClicked"}]
  LOADK R16 K81 ["Security"]
  LOADK R17 K147 ["EnableMeshTextureApisIdActionableDescription"]
  NAMECALL R14 R1 K82 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K75 ["Text"]
  LOADK R16 K81 ["Security"]
  LOADK R17 K148 ["AccountIdVerificationLinkText"]
  NAMECALL R14 R1 K82 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K100 ["LinkText"]
  DUPCLOSURE R14 K149 [PROTO_50]
  CAPTURE UPVAL U5
  CAPTURE UPVAL U13
  SETTABLEKS R14 R13 K139 ["OnLinkClicked"]
  JUMPIF R13 [+22]
  MOVE R13 R6
  JUMPIFNOT R13 [+20]
  DUPTABLE R13 K140 [{"Text", "LinkText", "OnLinkClicked"}]
  LOADK R16 K81 ["Security"]
  LOADK R17 K150 ["EnableMeshTextureApisIdDeniedDescription"]
  NAMECALL R14 R1 K82 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K75 ["Text"]
  LOADK R16 K113 ["General"]
  LOADK R17 K151 ["GuidelinesLearnMoreLink"]
  NAMECALL R14 R1 K82 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K100 ["LinkText"]
  DUPCLOSURE R14 K152 [PROTO_51]
  CAPTURE UPVAL U5
  CAPTURE UPVAL U14
  SETTABLEKS R14 R13 K139 ["OnLinkClicked"]
  SETTABLEKS R13 R12 K134 ["LinkProps"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K21 ["MeshTextureApisEnabled"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K24 ["createElement"]
  GETUPVAL R11 7
  DUPTABLE R12 K112 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
  LOADK R15 K113 ["General"]
  LOADK R16 K153 ["AllowInsertFreeAssetsDesc"]
  NAMECALL R13 R1 K82 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K56 ["Description"]
  GETTABLEKS R14 R0 K3 ["InsertFreeAssetsAllowed"]
  JUMPIFEQKNIL R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  SETTABLEKS R13 R12 K108 ["Disabled"]
  NAMECALL R13 R8 K34 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K29 ["LayoutOrder"]
  NEWCLOSURE R13 P11
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K109 ["OnClick"]
  GETTABLEKS R13 R0 K3 ["InsertFreeAssetsAllowed"]
  SETTABLEKS R13 R12 K110 ["Selected"]
  LOADK R15 K113 ["General"]
  LOADK R16 K154 ["AllowInsertFreeAssetsTitle"]
  NAMECALL R13 R1 K82 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K111 ["Title"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K22 ["AllowInsertFreeAssets"]
  RETURN R9 1

PROTO_54:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["props"]
  CALL R0 1 1
  RETURN R0 1

PROTO_55:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  LOADB R2 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  GETUPVAL R4 8
  JUMPIFNOT R4 [+9]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K2 ["EditSecretId"]
  JUMPIFNOT R4 [+4]
  LOADB R2 0
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U14
  CAPTURE VAL R0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 15
  DUPTABLE R6 K10 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren", "ShowHeader"}]
  GETUPVAL R7 16
  SETTABLEKS R7 R6 K4 ["SettingsLoadJobs"]
  GETUPVAL R7 17
  SETTABLEKS R7 R6 K5 ["SettingsSaveJobs"]
  LOADK R9 K11 ["General"]
  LOADK R11 K12 ["Category"]
  GETUPVAL R12 18
  CONCAT R10 R11 R12
  NAMECALL R7 R1 K13 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K6 ["Title"]
  GETUPVAL R7 18
  SETTABLEKS R7 R6 K7 ["PageId"]
  SETTABLEKS R3 R6 K8 ["CreateChildren"]
  SETTABLEKS R2 R6 K9 ["ShowHeader"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_56:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Settings"]
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_57:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Settings"]
  GETTABLEKS R3 R4 K1 ["Changed"]
  GETTABLE R2 R3 R0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_58:
  JUMPIF R0 [+1]
  RETURN R0 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  GETUPVAL R4 1
  MOVE R5 R2
  MOVE R6 R3
  MOVE R7 R0
  CALL R4 3 1
  RETURN R4 1
  GETUPVAL R4 2
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  RETURN R4 1

PROTO_59:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_60:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_61:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  GETUPVAL R2 1
  MOVE R3 R1
  MOVE R4 R0
  CALL R2 2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["FitFrame"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K10 ["FitFrameOnAxis"]
  GETTABLEKS R6 R3 K11 ["ContextServices"]
  GETTABLEKS R7 R6 K12 ["withContext"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K11 ["ContextServices"]
  GETTABLEKS R9 R10 K14 ["Dialog"]
  CALL R8 1 1
  GETTABLEKS R9 R3 K15 ["UI"]
  GETTABLEKS R10 R9 K16 ["HoverArea"]
  GETTABLEKS R11 R9 K17 ["Separator"]
  GETTABLEKS R12 R9 K18 ["TextInput"]
  GETTABLEKS R13 R9 K19 ["TextLabel"]
  GETTABLEKS R14 R9 K20 ["TextWithLinks"]
  GETTABLEKS R15 R9 K21 ["TitledFrame"]
  GETTABLEKS R16 R3 K22 ["Util"]
  GETTABLEKS R17 R16 K23 ["LayoutOrderIterator"]
  GETIMPORT R18 K25 [game]
  LOADK R20 K26 ["ExperienceSettingsApiServicesGameToExp"]
  LOADB R21 0
  NAMECALL R18 R18 K27 ["DefineFastFlag"]
  CALL R18 3 1
  GETIMPORT R19 K25 [game]
  LOADK R21 K28 ["StudioService"]
  NAMECALL R19 R19 K29 ["GetService"]
  CALL R19 2 1
  GETIMPORT R20 K25 [game]
  LOADK R22 K30 ["GuiService"]
  NAMECALL R20 R20 K29 ["GetService"]
  CALL R20 2 1
  GETIMPORT R22 K1 [script]
  GETTABLEKS R21 R22 K2 ["Parent"]
  GETIMPORT R22 K4 [require]
  GETTABLEKS R25 R0 K13 ["Src"]
  GETTABLEKS R24 R25 K31 ["Actions"]
  GETTABLEKS R23 R24 K32 ["SetCreatorId"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R26 R0 K13 ["Src"]
  GETTABLEKS R25 R26 K31 ["Actions"]
  GETTABLEKS R24 R25 K33 ["SetCreatorName"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R27 R0 K13 ["Src"]
  GETTABLEKS R26 R27 K31 ["Actions"]
  GETTABLEKS R25 R26 K34 ["SetCreatorType"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R27 R21 K31 ["Actions"]
  GETTABLEKS R26 R27 K35 ["SetGroupOwnerId"]
  CALL R25 1 1
  GETIMPORT R26 K4 [require]
  GETTABLEKS R29 R0 K13 ["Src"]
  GETTABLEKS R28 R29 K36 ["Components"]
  GETTABLEKS R27 R28 K37 ["Header"]
  CALL R26 1 1
  GETIMPORT R27 K4 [require]
  GETTABLEKS R31 R0 K13 ["Src"]
  GETTABLEKS R30 R31 K36 ["Components"]
  GETTABLEKS R29 R30 K38 ["SettingsPages"]
  GETTABLEKS R28 R29 K39 ["SettingsPage"]
  CALL R27 1 1
  GETIMPORT R28 K4 [require]
  GETTABLEKS R32 R0 K13 ["Src"]
  GETTABLEKS R31 R32 K36 ["Components"]
  GETTABLEKS R30 R31 K14 ["Dialog"]
  GETTABLEKS R29 R30 K40 ["SimpleDialog"]
  CALL R28 1 1
  GETIMPORT R29 K4 [require]
  GETTABLEKS R32 R0 K13 ["Src"]
  GETTABLEKS R31 R32 K36 ["Components"]
  GETTABLEKS R30 R31 K41 ["ToggleButtonWithTitle"]
  CALL R29 1 1
  GETIMPORT R30 K4 [require]
  GETTABLEKS R33 R0 K13 ["Src"]
  GETTABLEKS R32 R33 K31 ["Actions"]
  GETTABLEKS R31 R32 K42 ["AddChange"]
  CALL R30 1 1
  GETIMPORT R31 K4 [require]
  GETTABLEKS R34 R0 K13 ["Src"]
  GETTABLEKS R33 R34 K31 ["Actions"]
  GETTABLEKS R32 R33 K43 ["AddErrors"]
  CALL R31 1 1
  GETIMPORT R32 K4 [require]
  GETTABLEKS R35 R0 K13 ["Src"]
  GETTABLEKS R34 R35 K31 ["Actions"]
  GETTABLEKS R33 R34 K44 ["DiscardError"]
  CALL R32 1 1
  GETIMPORT R33 K4 [require]
  GETTABLEKS R36 R0 K13 ["Src"]
  GETTABLEKS R35 R36 K31 ["Actions"]
  GETTABLEKS R34 R35 K45 ["DiscardErrors"]
  CALL R33 1 1
  GETIMPORT R34 K4 [require]
  GETTABLEKS R37 R0 K13 ["Src"]
  GETTABLEKS R36 R37 K31 ["Actions"]
  GETTABLEKS R35 R36 K46 ["SetEditSecretFormField"]
  CALL R34 1 1
  GETIMPORT R35 K4 [require]
  GETTABLEKS R38 R0 K13 ["Src"]
  GETTABLEKS R37 R38 K31 ["Actions"]
  GETTABLEKS R36 R37 K47 ["SetEditSecretId"]
  CALL R35 1 1
  GETIMPORT R36 K4 [require]
  GETTABLEKS R39 R0 K13 ["Src"]
  GETTABLEKS R38 R39 K22 ["Util"]
  GETTABLEKS R37 R38 K48 ["Analytics"]
  CALL R36 1 1
  GETIMPORT R37 K4 [require]
  GETTABLEKS R40 R0 K13 ["Src"]
  GETTABLEKS R39 R40 K22 ["Util"]
  GETTABLEKS R38 R39 K49 ["SecretUtils"]
  CALL R37 1 1
  GETIMPORT R38 K4 [require]
  GETTABLEKS R40 R21 K36 ["Components"]
  GETTABLEKS R39 R40 K50 ["Secrets"]
  CALL R38 1 1
  GETIMPORT R40 K1 [script]
  GETTABLEKS R39 R40 K51 ["Name"]
  GETIMPORT R40 K25 [game]
  LOADK R42 K52 ["PolicyLink"]
  LOADK R43 K53 ["https://help.roblox.com/hc/articles/115004647846-Roblox-Terms-of-Use#creators-restrictions-on-use"]
  NAMECALL R40 R40 K54 ["DefineFastString"]
  CALL R40 3 1
  GETIMPORT R41 K25 [game]
  LOADK R43 K55 ["IdVerificationLink"]
  LOADK R44 K56 ["https://www.roblox.com/my/account#!/info"]
  NAMECALL R41 R41 K54 ["DefineFastString"]
  CALL R41 3 1
  GETIMPORT R42 K25 [game]
  LOADK R44 K57 ["CreatorIdVerificationLink"]
  LOADK R45 K58 ["https://create.roblox.com/docs/production/publishing/account-verification"]
  NAMECALL R42 R42 K54 ["DefineFastString"]
  CALL R42 3 1
  GETIMPORT R43 K25 [game]
  LOADK R45 K59 ["TermsOfUseCreatorTermsLink"]
  LOADK R46 K60 ["https://help.roblox.com/hc/articles/115004647846-Roblox-Terms-of-Use#creator-terms"]
  NAMECALL R43 R43 K54 ["DefineFastString"]
  CALL R43 3 1
  GETIMPORT R44 K4 [require]
  GETTABLEKS R47 R0 K13 ["Src"]
  GETTABLEKS R46 R47 K61 ["Flags"]
  GETTABLEKS R45 R46 K62 ["getFFlagSecretsEditorImprovement"]
  CALL R44 1 1
  CALL R44 0 1
  GETIMPORT R45 K4 [require]
  GETTABLEKS R48 R0 K13 ["Src"]
  GETTABLEKS R47 R48 K61 ["Flags"]
  GETTABLEKS R46 R47 K63 ["getFFlagSecretsEditorNoDraft"]
  CALL R45 1 1
  CALL R45 0 1
  GETIMPORT R46 K4 [require]
  GETTABLEKS R49 R0 K13 ["Src"]
  GETTABLEKS R48 R49 K61 ["Flags"]
  GETTABLEKS R47 R48 K64 ["getFFlagGameSettingsGameToExperience"]
  CALL R46 1 1
  CALL R46 0 1
  DUPCLOSURE R47 K65 [PROTO_11]
  CAPTURE VAL R44
  CAPTURE VAL R23
  CAPTURE VAL R22
  CAPTURE VAL R24
  CAPTURE VAL R25
  DUPCLOSURE R48 K66 [PROTO_13]
  CAPTURE VAL R36
  DUPCLOSURE R49 K67 [PROTO_22]
  CAPTURE VAL R44
  CAPTURE VAL R45
  CAPTURE VAL R37
  CAPTURE VAL R30
  CAPTURE VAL R36
  DUPCLOSURE R50 K68 [PROTO_23]
  CAPTURE VAL R44
  DUPCLOSURE R51 K69 [PROTO_24]
  CAPTURE VAL R44
  DUPCLOSURE R52 K70 [PROTO_32]
  CAPTURE VAL R44
  CAPTURE VAL R35
  CAPTURE VAL R34
  CAPTURE VAL R31
  CAPTURE VAL R32
  CAPTURE VAL R33
  GETTABLEKS R53 R1 K71 ["PureComponent"]
  GETIMPORT R56 K1 [script]
  GETTABLEKS R55 R56 K51 ["Name"]
  NAMECALL R53 R53 K72 ["extend"]
  CALL R53 2 1
  DUPCLOSURE R54 K73 [PROTO_33]
  SETTABLEKS R54 R53 K74 ["isGroupGame"]
  DUPCLOSURE R54 K75 [PROTO_34]
  CAPTURE VAL R19
  SETTABLEKS R54 R53 K76 ["isLoggedInUserGameOwner"]
  DUPCLOSURE R54 K77 [PROTO_35]
  DUPCLOSURE R55 K78 [PROTO_40]
  CAPTURE VAL R17
  CAPTURE VAL R37
  CAPTURE VAL R28
  CAPTURE VAL R45
  CAPTURE VAL R54
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R26
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R12
  DUPCLOSURE R56 K79 [PROTO_55]
  CAPTURE VAL R17
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R20
  CAPTURE VAL R43
  CAPTURE VAL R29
  CAPTURE VAL R46
  CAPTURE VAL R44
  CAPTURE VAL R38
  CAPTURE VAL R18
  CAPTURE VAL R40
  CAPTURE VAL R41
  CAPTURE VAL R42
  CAPTURE VAL R55
  CAPTURE VAL R27
  CAPTURE VAL R47
  CAPTURE VAL R49
  CAPTURE VAL R39
  SETTABLEKS R56 R53 K80 ["render"]
  MOVE R56 R7
  DUPTABLE R57 K83 [{"Localization", "Stylizer", "Dialog"}]
  GETTABLEKS R58 R6 K81 ["Localization"]
  SETTABLEKS R58 R57 K81 ["Localization"]
  GETTABLEKS R58 R6 K82 ["Stylizer"]
  SETTABLEKS R58 R57 K82 ["Stylizer"]
  SETTABLEKS R8 R57 K14 ["Dialog"]
  CALL R56 1 1
  MOVE R57 R53
  CALL R56 1 1
  MOVE R53 R56
  GETIMPORT R56 K4 [require]
  GETTABLEKS R59 R0 K13 ["Src"]
  GETTABLEKS R58 R59 K84 ["Networking"]
  GETTABLEKS R57 R58 K85 ["settingFromState"]
  CALL R56 1 1
  GETTABLEKS R57 R2 K86 ["connect"]
  DUPCLOSURE R58 K87 [PROTO_58]
  CAPTURE VAL R56
  CAPTURE VAL R51
  CAPTURE VAL R50
  DUPCLOSURE R59 K88 [PROTO_61]
  CAPTURE VAL R30
  CAPTURE VAL R52
  CALL R57 2 1
  MOVE R58 R53
  CALL R57 1 1
  MOVE R53 R57
  SETTABLEKS R39 R53 K89 ["LocalizationId"]
  RETURN R53 1
