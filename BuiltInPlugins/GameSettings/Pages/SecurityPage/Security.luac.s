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
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K1 ["Metadata"]
  GETTABLEKS R3 R4 K2 ["game"]
  GETTABLEKS R5 R2 K1 ["Metadata"]
  GETTABLEKS R4 R5 K3 ["gameId"]
  GETTABLEKS R5 R1 K4 ["universePermissionsController"]
  GETUPVAL R7 0
  JUMPIFNOT R7 [+3]
  GETTABLEKS R6 R1 K5 ["gameMetadataController"]
  JUMP [+1]
  LOADNIL R6
  GETUPVAL R8 0
  JUMPIFNOT R8 [+3]
  GETTABLEKS R7 R1 K6 ["groupMetadataController"]
  JUMP [+1]
  LOADNIL R7
  NEWTABLE R8 0 10
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
  CAPTURE UPVAL U1
  CAPTURE VAL R5
  GETUPVAL R15 0
  JUMPIFNOT R15 [+6]
  NEWCLOSURE R14 P5
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  JUMP [+1]
  LOADNIL R14
  GETUPVAL R16 0
  JUMPIFNOT R16 [+6]
  NEWCLOSURE R15 P6
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  JUMP [+1]
  LOADNIL R15
  GETUPVAL R17 0
  JUMPIFNOT R17 [+8]
  NEWCLOSURE R16 P7
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE VAL R7
  CAPTURE UPVAL U5
  JUMP [+1]
  LOADNIL R16
  GETUPVAL R18 0
  JUMPIFNOT R18 [+3]
  NEWCLOSURE R17 P8
  CAPTURE VAL R5
  JUMP [+1]
  LOADNIL R17
  GETUPVAL R19 0
  JUMPIFNOT R19 [+4]
  NEWCLOSURE R18 P9
  CAPTURE VAL R5
  CAPTURE VAL R4
  JUMP [+1]
  LOADNIL R18
  SETLIST R8 R9 10 [1]
  RETURN R8 1

PROTO_11:
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

PROTO_12:
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  RETURN R3 1

PROTO_13:
  GETUPVAL R1 0
  GETIMPORT R3 K1 [game]
  MOVE R4 R0
  NAMECALL R1 R1 K2 ["SetHttpEnabled"]
  CALL R1 3 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["SetSecretsFromSecretsAsTableRows"]
  CALL R1 2 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["SetSecrets"]
  CALL R1 2 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  NAMECALL R1 R1 K0 ["SetStudioAccessToApisAllowed"]
  CALL R1 3 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  NAMECALL R1 R1 K0 ["SetThirdPartyPurchasesAllowed"]
  CALL R1 3 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  NAMECALL R1 R1 K0 ["SetThirdPartyTeleportsAllowed"]
  CALL R1 3 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  NAMECALL R1 R1 K0 ["SetMeshTextureApisAllowed"]
  CALL R1 3 0
  RETURN R0 0

PROTO_20:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K1 ["Metadata"]
  GETTABLEKS R3 R4 K2 ["gameId"]
  GETTABLEKS R4 R1 K3 ["universePermissionsController"]
  NEWTABLE R5 0 6
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  LOADK R8 K4 ["HttpEnabled"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE UPVAL U0
  CAPTURE VAL R7
  GETUPVAL R8 1
  JUMPIFNOT R8 [+9]
  NEWCLOSURE R8 P2
  CAPTURE VAL R4
  LOADK R9 K5 ["SecretsAsTableRows"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE UPVAL U0
  CAPTURE VAL R8
  JUMP [+8]
  NEWCLOSURE R8 P3
  CAPTURE VAL R4
  LOADK R9 K6 ["Secrets"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE UPVAL U0
  CAPTURE VAL R8
  NEWCLOSURE R9 P4
  CAPTURE VAL R4
  CAPTURE VAL R3
  LOADK R10 K7 ["StudioAccessToApisAllowed"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE UPVAL U0
  CAPTURE VAL R9
  NEWCLOSURE R10 P5
  CAPTURE VAL R4
  CAPTURE VAL R3
  LOADK R11 K8 ["ThirdPartyPurchaseAllowed"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE UPVAL U0
  CAPTURE VAL R10
  NEWCLOSURE R11 P6
  CAPTURE VAL R4
  CAPTURE VAL R3
  LOADK R12 K9 ["ThirdPartyTeleportAllowed"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE UPVAL U0
  CAPTURE VAL R11
  GETUPVAL R12 2
  JUMPIFNOT R12 [+10]
  NEWCLOSURE R12 P7
  CAPTURE VAL R4
  CAPTURE VAL R3
  LOADK R13 K10 ["MeshTextureApisAllowed"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE UPVAL U0
  CAPTURE VAL R12
  JUMP [+1]
  LOADNIL R11
  SETLIST R5 R6 6 [1]
  RETURN R5 1

PROTO_21:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+42]
  DUPTABLE R2 K8 [{"HttpEnabled", "SecretsAsTableRows", "StudioAccessToApisAllowed", "ThirdPartyPurchaseAllowed", "ThirdPartyTeleportAllowed", "HttpEnabledValueChanged", "ThirdPartyPurchaseAllowedValueChanged", "ThirdPartyTeleportAllowedValueChanged"}]
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
  MOVE R3 R1
  LOADK R4 K0 ["HttpEnabled"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["HttpEnabledValueChanged"]
  MOVE R3 R1
  LOADK R4 K3 ["ThirdPartyPurchaseAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K6 ["ThirdPartyPurchaseAllowedValueChanged"]
  MOVE R3 R1
  LOADK R4 K4 ["ThirdPartyTeleportAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K7 ["ThirdPartyTeleportAllowedValueChanged"]
  RETURN R2 1
  DUPTABLE R2 K10 [{"HttpEnabled", "Secrets", "StudioAccessToApisAllowed", "ThirdPartyPurchaseAllowed", "ThirdPartyTeleportAllowed", "HttpEnabledValueChanged", "ThirdPartyPurchaseAllowedValueChanged", "ThirdPartyTeleportAllowedValueChanged"}]
  MOVE R3 R0
  LOADK R4 K0 ["HttpEnabled"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["HttpEnabled"]
  MOVE R3 R0
  LOADK R4 K9 ["Secrets"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K9 ["Secrets"]
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
  MOVE R3 R1
  LOADK R4 K0 ["HttpEnabled"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["HttpEnabledValueChanged"]
  MOVE R3 R1
  LOADK R4 K3 ["ThirdPartyPurchaseAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K6 ["ThirdPartyPurchaseAllowedValueChanged"]
  MOVE R3 R1
  LOADK R4 K4 ["ThirdPartyTeleportAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K7 ["ThirdPartyTeleportAllowedValueChanged"]
  RETURN R2 1

PROTO_22:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+134]
  DUPTABLE R3 K21 [{"HttpEnabled", "SecretsAsTableRows", "EditSecretId", "EditSecretFormNameField", "EditSecretFormValueField", "EditSecretFormDomainField", "EditSecretFormNameError", "EditSecretFormDomainError", "StudioAccessToApisAllowed", "ThirdPartyPurchaseAllowed", "ThirdPartyTeleportAllowed", "HttpEnabledValueChanged", "StudioAccessToApisAllowedValueChanged", "ThirdPartyPurchaseAllowedValueChanged", "ThirdPartyTeleportAllowedValueChanged", "MeshTextureApisAllowed", "MeshTextureApisAllowedValueChanged", "MeshTextureApiAmpStatus", "OwnerId", "OwnerType", "GroupOwnerUserId"}]
  MOVE R4 R0
  LOADK R5 K0 ["HttpEnabled"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K0 ["HttpEnabled"]
  MOVE R4 R0
  LOADK R5 K1 ["SecretsAsTableRows"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["SecretsAsTableRows"]
  GETTABLEKS R5 R2 K22 ["EditAsset"]
  GETTABLEKS R4 R5 K23 ["editSecretId"]
  SETTABLEKS R4 R3 K2 ["EditSecretId"]
  GETTABLEKS R5 R2 K22 ["EditAsset"]
  GETTABLEKS R4 R5 K24 ["editSecretFormName"]
  SETTABLEKS R4 R3 K3 ["EditSecretFormNameField"]
  GETTABLEKS R5 R2 K22 ["EditAsset"]
  GETTABLEKS R4 R5 K25 ["editSecretFormValue"]
  SETTABLEKS R4 R3 K4 ["EditSecretFormValueField"]
  GETTABLEKS R5 R2 K22 ["EditAsset"]
  GETTABLEKS R4 R5 K26 ["editSecretFormDomain"]
  SETTABLEKS R4 R3 K5 ["EditSecretFormDomainField"]
  GETTABLEKS R5 R2 K27 ["Settings"]
  GETTABLEKS R4 R5 K28 ["Errors"]
  JUMPIFNOT R4 [+6]
  GETTABLEKS R6 R2 K27 ["Settings"]
  GETTABLEKS R5 R6 K28 ["Errors"]
  GETTABLEKS R4 R5 K6 ["EditSecretFormNameError"]
  SETTABLEKS R4 R3 K6 ["EditSecretFormNameError"]
  GETTABLEKS R5 R2 K27 ["Settings"]
  GETTABLEKS R4 R5 K28 ["Errors"]
  JUMPIFNOT R4 [+6]
  GETTABLEKS R6 R2 K27 ["Settings"]
  GETTABLEKS R5 R6 K28 ["Errors"]
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
  MOVE R4 R1
  LOADK R5 K0 ["HttpEnabled"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["HttpEnabledValueChanged"]
  MOVE R4 R1
  LOADK R5 K8 ["StudioAccessToApisAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K12 ["StudioAccessToApisAllowedValueChanged"]
  MOVE R4 R1
  LOADK R5 K9 ["ThirdPartyPurchaseAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K13 ["ThirdPartyPurchaseAllowedValueChanged"]
  MOVE R4 R1
  LOADK R5 K10 ["ThirdPartyTeleportAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["ThirdPartyTeleportAllowedValueChanged"]
  MOVE R4 R0
  LOADK R5 K15 ["MeshTextureApisAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K15 ["MeshTextureApisAllowed"]
  MOVE R4 R1
  LOADK R5 K15 ["MeshTextureApisAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["MeshTextureApisAllowedValueChanged"]
  MOVE R4 R0
  LOADK R5 K17 ["MeshTextureApiAmpStatus"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K17 ["MeshTextureApiAmpStatus"]
  GETTABLEKS R5 R2 K29 ["GameOwnerMetadata"]
  GETTABLEKS R4 R5 K30 ["creatorId"]
  SETTABLEKS R4 R3 K18 ["OwnerId"]
  GETTABLEKS R5 R2 K29 ["GameOwnerMetadata"]
  GETTABLEKS R4 R5 K31 ["creatorType"]
  SETTABLEKS R4 R3 K19 ["OwnerType"]
  GETUPVAL R5 1
  JUMPIFNOT R5 [+5]
  GETTABLEKS R5 R2 K29 ["GameOwnerMetadata"]
  GETTABLEKS R4 R5 K32 ["groupOwnerId"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K20 ["GroupOwnerUserId"]
  RETURN R3 1
  DUPTABLE R3 K34 [{"HttpEnabled", "Secrets", "StudioAccessToApisAllowed", "ThirdPartyPurchaseAllowed", "ThirdPartyTeleportAllowed", "HttpEnabledValueChanged", "ThirdPartyPurchaseAllowedValueChanged", "ThirdPartyTeleportAllowedValueChanged", "MeshTextureApisAllowed", "MeshTextureApisAllowedValueChanged", "MeshTextureApiAmpStatus", "OwnerId", "OwnerType", "GroupOwnerUserId"}]
  MOVE R4 R0
  LOADK R5 K0 ["HttpEnabled"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K0 ["HttpEnabled"]
  MOVE R4 R0
  LOADK R5 K33 ["Secrets"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K33 ["Secrets"]
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
  MOVE R4 R1
  LOADK R5 K0 ["HttpEnabled"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["HttpEnabledValueChanged"]
  MOVE R4 R1
  LOADK R5 K9 ["ThirdPartyPurchaseAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K13 ["ThirdPartyPurchaseAllowedValueChanged"]
  MOVE R4 R1
  LOADK R5 K10 ["ThirdPartyTeleportAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["ThirdPartyTeleportAllowedValueChanged"]
  MOVE R4 R0
  LOADK R5 K15 ["MeshTextureApisAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K15 ["MeshTextureApisAllowed"]
  MOVE R4 R1
  LOADK R5 K15 ["MeshTextureApisAllowed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["MeshTextureApisAllowedValueChanged"]
  MOVE R4 R0
  LOADK R5 K17 ["MeshTextureApiAmpStatus"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K17 ["MeshTextureApiAmpStatus"]
  GETTABLEKS R5 R2 K29 ["GameOwnerMetadata"]
  GETTABLEKS R4 R5 K30 ["creatorId"]
  SETTABLEKS R4 R3 K18 ["OwnerId"]
  GETTABLEKS R5 R2 K29 ["GameOwnerMetadata"]
  GETTABLEKS R4 R5 K31 ["creatorType"]
  SETTABLEKS R4 R3 K19 ["OwnerType"]
  GETUPVAL R5 1
  JUMPIFNOT R5 [+5]
  GETTABLEKS R5 R2 K29 ["GameOwnerMetadata"]
  GETTABLEKS R4 R5 K32 ["groupOwnerId"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K20 ["GroupOwnerUserId"]
  RETURN R3 1

PROTO_23:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R1 0
  GETUPVAL R2 1
  LOADK R3 K0 ["editSecretFormName"]
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R1 0
  GETUPVAL R2 1
  LOADK R3 K0 ["editSecretFormValue"]
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R1 0
  GETUPVAL R2 1
  LOADK R3 K0 ["editSecretFormDomain"]
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R2 0
  GETUPVAL R3 1
  NEWTABLE R4 1 0
  SETTABLE R1 R4 R0
  CALL R3 1 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_28:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_29:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_30:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+71]
  DUPTABLE R2 K13 [{"HttpEnabledChanged", "SecretsAsTableRowsChanged", "StudioApiServicesChanged", "ThirdPartyPurchaseChanged", "ThirdPartyTeleportAllowedChanged", "MeshTextureApisAllowedChanged", "EditSecretIdChanged", "EditSecretFormNameChanged", "EditSecretFormValueChanged", "EditSecretFormDomainChanged", "ReportError", "ClearError", "ClearAllErrors"}]
  MOVE R3 R0
  LOADK R4 K14 ["HttpEnabled"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["HttpEnabledChanged"]
  MOVE R3 R0
  LOADK R4 K15 ["SecretsAsTableRows"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["SecretsAsTableRowsChanged"]
  MOVE R3 R0
  LOADK R4 K16 ["StudioAccessToApisAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["StudioApiServicesChanged"]
  MOVE R3 R0
  LOADK R4 K17 ["ThirdPartyPurchaseAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["ThirdPartyPurchaseChanged"]
  MOVE R3 R0
  LOADK R4 K18 ["ThirdPartyTeleportAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K4 ["ThirdPartyTeleportAllowedChanged"]
  GETUPVAL R4 1
  JUMPIFNOT R4 [+4]
  MOVE R3 R0
  LOADK R4 K19 ["MeshTextureApisAllowed"]
  CALL R3 1 1
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K5 ["MeshTextureApisAllowedChanged"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  SETTABLEKS R3 R2 K6 ["EditSecretIdChanged"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  SETTABLEKS R3 R2 K7 ["EditSecretFormNameChanged"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  SETTABLEKS R3 R2 K8 ["EditSecretFormValueChanged"]
  NEWCLOSURE R3 P3
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  SETTABLEKS R3 R2 K9 ["EditSecretFormDomainChanged"]
  NEWCLOSURE R3 P4
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  SETTABLEKS R3 R2 K10 ["ReportError"]
  NEWCLOSURE R3 P5
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  SETTABLEKS R3 R2 K11 ["ClearError"]
  NEWCLOSURE R3 P6
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  SETTABLEKS R3 R2 K12 ["ClearAllErrors"]
  RETURN R2 1
  DUPTABLE R2 K21 [{"HttpEnabledChanged", "SecretsChanged", "StudioApiServicesChanged", "ThirdPartyPurchaseChanged", "ThirdPartyTeleportAllowedChanged", "MeshTextureApisAllowedChanged"}]
  MOVE R3 R0
  LOADK R4 K14 ["HttpEnabled"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["HttpEnabledChanged"]
  MOVE R3 R0
  LOADK R4 K22 ["Secrets"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K20 ["SecretsChanged"]
  MOVE R3 R0
  LOADK R4 K16 ["StudioAccessToApisAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["StudioApiServicesChanged"]
  MOVE R3 R0
  LOADK R4 K17 ["ThirdPartyPurchaseAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["ThirdPartyPurchaseChanged"]
  MOVE R3 R0
  LOADK R4 K18 ["ThirdPartyTeleportAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K4 ["ThirdPartyTeleportAllowedChanged"]
  GETUPVAL R4 1
  JUMPIFNOT R4 [+4]
  MOVE R3 R0
  LOADK R4 K19 ["MeshTextureApisAllowed"]
  CALL R3 1 1
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K5 ["MeshTextureApisAllowedChanged"]
  RETURN R2 1

PROTO_31:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OwnerType"]
  GETIMPORT R4 K5 [Enum.CreatorType.Group]
  JUMPIFEQ R2 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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

PROTO_35:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["EditSecretFormValueChanged"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_36:
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

PROTO_37:
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
  JUMPIF R2 [+27]
  RETURN R0 0
  JUMP [+25]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K20 ["SecretsAsTableRows"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K21 ["EditSecretId"]
  GETTABLE R3 R4 R5
  GETTABLEKS R2 R3 K22 ["row"]
  GETTABLEN R1 R2 2
  GETUPVAL R2 3
  GETUPVAL R3 0
  NEWTABLE R4 0 3
  GETUPVAL R5 4
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K23 ["transformToStorableFormat"]
  GETUPVAL R7 6
  MOVE R8 R1
  CALL R6 2 1
  GETUPVAL R7 7
  SETLIST R4 R5 3 [1]
  CALL R2 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K24 ["ClearAllErrors"]
  CALL R1 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K25 ["EditSecretFormNameChanged"]
  LOADNIL R2
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K26 ["EditSecretFormValueChanged"]
  LOADNIL R2
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K27 ["EditSecretFormDomainChanged"]
  LOADNIL R2
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K28 ["EditSecretIdChanged"]
  LOADNIL R2
  CALL R1 1 0
  RETURN R0 0

PROTO_38:
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
  CAPTURE VAL R5
  CAPTURE UPVAL U1
  CAPTURE VAL R6
  CAPTURE VAL R7
  DUPTABLE R12 K11 [{"HeaderFrame", "Name", "Domain", "NewValue"}]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K12 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K18 [{"LayoutOrder", "BackgroundTransparency", "axis", "minimumSize", "contentPadding"}]
  NAMECALL R16 R3 K19 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K13 ["LayoutOrder"]
  LOADN R16 1
  SETTABLEKS R16 R15 K14 ["BackgroundTransparency"]
  GETUPVAL R18 5
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
  GETUPVAL R19 4
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
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K34 ["Event"]
  GETTABLEKS R21 R22 K35 ["Activated"]
  SETTABLE R11 R20 R21
  NEWTABLE R21 0 1
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K12 ["createElement"]
  GETUPVAL R23 6
  DUPTABLE R24 K37 [{"Cursor"}]
  LOADK R25 K38 ["PointingHand"]
  SETTABLEKS R25 R24 K36 ["Cursor"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  SETTABLEKS R18 R16 K39 ["BackButton"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 7
  DUPTABLE R19 K40 [{"LayoutOrder"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K13 ["LayoutOrder"]
  CALL R17 2 1
  SETLIST R16 R17 1 [1]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K12 ["createElement"]
  GETUPVAL R19 8
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
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K12 ["createElement"]
  GETUPVAL R19 9
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
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K12 ["createElement"]
  GETUPVAL R14 10
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
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 11
  DUPTABLE R19 K71 [{"ErrorText", "OnTextChanged", "Text"}]
  GETTABLEKS R20 R0 K72 ["EditSecretFormNameError"]
  SETTABLEKS R20 R19 K69 ["ErrorText"]
  SETTABLEKS R8 R19 K70 ["OnTextChanged"]
  SETTABLEKS R5 R19 K49 ["Text"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K67 ["TextBox"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K8 ["Name"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K12 ["createElement"]
  GETUPVAL R14 10
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
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 11
  DUPTABLE R19 K71 [{"ErrorText", "OnTextChanged", "Text"}]
  GETTABLEKS R20 R0 K74 ["EditSecretFormDomainError"]
  SETTABLEKS R20 R19 K69 ["ErrorText"]
  SETTABLEKS R10 R19 K70 ["OnTextChanged"]
  SETTABLEKS R7 R19 K49 ["Text"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K67 ["TextBox"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K9 ["Domain"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K12 ["createElement"]
  GETUPVAL R14 10
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
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 11
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

PROTO_39:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["HttpEnabledChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["HttpEnabled"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_40:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["SecretsAsTableRowsChanged"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_41:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["SecretsChanged"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_42:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["StudioApiServicesChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["StudioAccessToApisAllowed"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_43:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ThirdPartyPurchaseChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["ThirdPartyPurchaseAllowed"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_44:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ThirdPartyTeleportAllowedChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["ThirdPartyTeleportAllowed"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_45:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["MeshTextureApisAllowedChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["MeshTextureApisAllowed"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_46:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_47:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_48:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_49:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Localization"]
  GETTABLEKS R3 R0 K2 ["HttpEnabledValueChanged"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R0 K3 ["HttpEnabled"]
  JUMPIF R2 [+11]
  GETTABLEKS R3 R0 K4 ["ThirdPartyPurchaseAllowedValueChanged"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R0 K5 ["ThirdPartyPurchaseAllowed"]
  JUMPIF R2 [+5]
  GETTABLEKS R2 R0 K6 ["ThirdPartyTeleportAllowedValueChanged"]
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R0 K7 ["ThirdPartyTeleportAllowed"]
  LOADNIL R3
  LOADNIL R4
  LOADNIL R5
  GETUPVAL R6 1
  JUMPIFNOT R6 [+21]
  GETUPVAL R6 0
  NAMECALL R6 R6 K8 ["isLoggedInUserGameOwner"]
  CALL R6 1 1
  MOVE R3 R6
  JUMPIFNOT R3 [+5]
  LOADB R6 1
  GETTABLEKS R7 R0 K9 ["MeshTextureApiAmpStatus"]
  JUMPIFEQKS R7 K10 ["Granted"] [+2]
  LOADB R6 0
  MOVE R4 R6
  JUMPIFNOT R3 [+5]
  LOADB R6 1
  GETTABLEKS R7 R0 K9 ["MeshTextureApiAmpStatus"]
  JUMPIFEQKS R7 K11 ["Denied"] [+2]
  LOADB R6 0
  MOVE R5 R6
  GETTABLEKS R6 R0 K12 ["Stylizer"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K13 ["new"]
  LOADN R8 1
  CALL R7 1 1
  DUPTABLE R8 K20 [{"InsecureWarning", "HttpEnabled", "Secrets", "StudioApiServicesEnabled", "ThirdPartyPurchasesEnabled", "ThirdPartyTeleportsEnabled", "MeshTextureApisEnabled"}]
  MOVE R9 R2
  JUMPIFNOT R9 [+134]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K21 ["createElement"]
  LOADK R10 K22 ["Frame"]
  DUPTABLE R11 K27 [{"AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R12 K30 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K23 ["AutomaticSize"]
  LOADN R12 1
  SETTABLEKS R12 R11 K24 ["BackgroundTransparency"]
  LOADN R12 0
  SETTABLEKS R12 R11 K25 ["BorderSizePixel"]
  NAMECALL R12 R7 K31 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K26 ["LayoutOrder"]
  DUPTABLE R12 K35 [{"UILayout", "Warning", "Description"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K21 ["createElement"]
  LOADK R14 K36 ["UIListLayout"]
  DUPTABLE R15 K41 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R16 K43 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K37 ["FillDirection"]
  GETIMPORT R16 K45 [UDim.new]
  LOADN R17 0
  GETTABLEKS R19 R6 K46 ["dialog"]
  GETTABLEKS R18 R19 K47 ["spacing"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K38 ["Padding"]
  GETIMPORT R16 K48 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K39 ["SortOrder"]
  GETIMPORT R16 K50 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K40 ["VerticalAlignment"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K32 ["UILayout"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K21 ["createElement"]
  LOADK R14 K51 ["ImageLabel"]
  DUPTABLE R15 K54 [{"Image", "LayoutOrder", "BackgroundTransparency", "Size"}]
  GETTABLEKS R16 R6 K55 ["warningIcon"]
  SETTABLEKS R16 R15 K52 ["Image"]
  NAMECALL R16 R7 K31 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K26 ["LayoutOrder"]
  LOADN R16 1
  SETTABLEKS R16 R15 K24 ["BackgroundTransparency"]
  GETIMPORT R16 K57 [UDim2.new]
  LOADN R17 0
  GETTABLEKS R20 R6 K58 ["warningDialog"]
  GETTABLEKS R19 R20 K59 ["icon"]
  GETTABLEKS R18 R19 K60 ["size"]
  LOADN R19 0
  GETTABLEKS R22 R6 K58 ["warningDialog"]
  GETTABLEKS R21 R22 K59 ["icon"]
  GETTABLEKS R20 R21 K60 ["size"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K53 ["Size"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K33 ["Warning"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K21 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K66 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment", "TextColor", "TextSize"}]
  GETIMPORT R16 K30 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K23 ["AutomaticSize"]
  NAMECALL R16 R7 K31 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K26 ["LayoutOrder"]
  LOADK R16 K67 ["SubText"]
  SETTABLEKS R16 R15 K61 ["Style"]
  LOADK R18 K68 ["Security"]
  LOADK R19 K14 ["InsecureWarning"]
  NAMECALL R16 R1 K69 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K62 ["Text"]
  GETIMPORT R16 K71 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K63 ["TextXAlignment"]
  GETTABLEKS R16 R6 K72 ["warningColor"]
  SETTABLEKS R16 R15 K64 ["TextColor"]
  GETTABLEKS R18 R6 K73 ["fontStyle"]
  GETTABLEKS R17 R18 K74 ["Subtitle"]
  GETTABLEKS R16 R17 K65 ["TextSize"]
  SETTABLEKS R16 R15 K65 ["TextSize"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K34 ["Description"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K14 ["InsecureWarning"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K21 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K79 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
  LOADK R14 K80 ["General"]
  LOADK R15 K81 ["HttpDesc"]
  NAMECALL R12 R1 K69 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K34 ["Description"]
  GETTABLEKS R13 R0 K3 ["HttpEnabled"]
  JUMPIFEQKNIL R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  SETTABLEKS R12 R11 K75 ["Disabled"]
  NAMECALL R12 R7 K31 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K26 ["LayoutOrder"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K76 ["OnClick"]
  GETTABLEKS R12 R0 K3 ["HttpEnabled"]
  SETTABLEKS R12 R11 K77 ["Selected"]
  LOADK R14 K80 ["General"]
  LOADK R15 K82 ["TitleHttp"]
  NAMECALL R12 R1 K69 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K78 ["Title"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K3 ["HttpEnabled"]
  GETUPVAL R10 6
  JUMPIFNOT R10 [+41]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K21 ["createElement"]
  GETUPVAL R10 7
  DUPTABLE R11 K89 [{"LayoutOrder", "SecretsAsTableRows", "OnChanged", "EditSecretIdChanged", "EditSecretFormNameChanged", "EditSecretFormValueChanged", "EditSecretFormDomainChanged", "Disabled"}]
  NAMECALL R12 R7 K31 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K26 ["LayoutOrder"]
  GETTABLEKS R12 R0 K83 ["SecretsAsTableRows"]
  SETTABLEKS R12 R11 K83 ["SecretsAsTableRows"]
  NEWCLOSURE R12 P1
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K84 ["OnChanged"]
  GETTABLEKS R12 R0 K85 ["EditSecretIdChanged"]
  SETTABLEKS R12 R11 K85 ["EditSecretIdChanged"]
  GETTABLEKS R12 R0 K86 ["EditSecretFormNameChanged"]
  SETTABLEKS R12 R11 K86 ["EditSecretFormNameChanged"]
  GETTABLEKS R12 R0 K87 ["EditSecretFormValueChanged"]
  SETTABLEKS R12 R11 K87 ["EditSecretFormValueChanged"]
  GETTABLEKS R12 R0 K88 ["EditSecretFormDomainChanged"]
  SETTABLEKS R12 R11 K88 ["EditSecretFormDomainChanged"]
  GETTABLEKS R13 R0 K3 ["HttpEnabled"]
  NOT R12 R13
  SETTABLEKS R12 R11 K75 ["Disabled"]
  CALL R9 2 1
  JUMP [+24]
  GETTABLEKS R10 R0 K3 ["HttpEnabled"]
  JUMPIFNOT R10 [+20]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K21 ["createElement"]
  GETUPVAL R10 7
  DUPTABLE R11 K90 [{"LayoutOrder", "Secrets", "OnChanged"}]
  NAMECALL R12 R7 K31 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K26 ["LayoutOrder"]
  GETTABLEKS R12 R0 K15 ["Secrets"]
  SETTABLEKS R12 R11 K15 ["Secrets"]
  NEWCLOSURE R12 P2
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K84 ["OnChanged"]
  CALL R9 2 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K15 ["Secrets"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K21 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K79 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
  LOADK R14 K80 ["General"]
  LOADK R15 K91 ["StudioApiServicesDesc"]
  NAMECALL R12 R1 K69 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K34 ["Description"]
  GETTABLEKS R13 R0 K92 ["StudioAccessToApisAllowed"]
  JUMPIFEQKNIL R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  SETTABLEKS R12 R11 K75 ["Disabled"]
  NAMECALL R12 R7 K31 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K26 ["LayoutOrder"]
  NEWCLOSURE R12 P3
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K76 ["OnClick"]
  GETTABLEKS R12 R0 K92 ["StudioAccessToApisAllowed"]
  SETTABLEKS R12 R11 K77 ["Selected"]
  LOADK R14 K80 ["General"]
  LOADK R15 K93 ["TitleStudioApiServices"]
  NAMECALL R12 R1 K69 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K78 ["Title"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K16 ["StudioApiServicesEnabled"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K21 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K79 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
  LOADK R14 K68 ["Security"]
  LOADK R15 K94 ["EnableThirdPartyPurchasesDescription"]
  NAMECALL R12 R1 K69 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K34 ["Description"]
  GETTABLEKS R13 R0 K5 ["ThirdPartyPurchaseAllowed"]
  JUMPIFEQKNIL R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  SETTABLEKS R12 R11 K75 ["Disabled"]
  NAMECALL R12 R7 K31 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K26 ["LayoutOrder"]
  NEWCLOSURE R12 P4
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K76 ["OnClick"]
  GETTABLEKS R12 R0 K5 ["ThirdPartyPurchaseAllowed"]
  SETTABLEKS R12 R11 K77 ["Selected"]
  LOADK R14 K68 ["Security"]
  LOADK R15 K95 ["EnableThirdPartyPurchases"]
  NAMECALL R12 R1 K69 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K78 ["Title"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K17 ["ThirdPartyPurchasesEnabled"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K21 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K79 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
  LOADK R14 K68 ["Security"]
  LOADK R15 K96 ["EnableThirdPartyTeleportsDescription"]
  NAMECALL R12 R1 K69 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K34 ["Description"]
  GETTABLEKS R13 R0 K7 ["ThirdPartyTeleportAllowed"]
  JUMPIFEQKNIL R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  SETTABLEKS R12 R11 K75 ["Disabled"]
  NAMECALL R12 R7 K31 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K26 ["LayoutOrder"]
  NEWCLOSURE R12 P5
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K76 ["OnClick"]
  GETTABLEKS R12 R0 K7 ["ThirdPartyTeleportAllowed"]
  SETTABLEKS R12 R11 K77 ["Selected"]
  LOADK R14 K68 ["Security"]
  LOADK R15 K97 ["EnableThirdPartyTeleports"]
  NAMECALL R12 R1 K69 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K78 ["Title"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K18 ["ThirdPartyTeleportsEnabled"]
  GETUPVAL R10 1
  JUMPIFNOT R10 [+125]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K21 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K99 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title", "LinkProps"}]
  JUMPIF R3 [+6]
  LOADK R14 K68 ["Security"]
  LOADK R15 K100 ["EnableMeshTextureApisNotOwnerDescription"]
  NAMECALL R12 R1 K69 ["getText"]
  CALL R12 3 1
  JUMPIF R12 [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K34 ["Description"]
  NOT R12 R4
  JUMPIF R12 [+8]
  NOT R12 R3
  JUMPIF R12 [+6]
  GETTABLEKS R13 R0 K101 ["MeshTextureApisAllowed"]
  JUMPIFEQKNIL R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  SETTABLEKS R12 R11 K75 ["Disabled"]
  NAMECALL R12 R7 K31 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K26 ["LayoutOrder"]
  NEWCLOSURE R12 P6
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K76 ["OnClick"]
  GETTABLEKS R12 R0 K101 ["MeshTextureApisAllowed"]
  SETTABLEKS R12 R11 K77 ["Selected"]
  LOADK R14 K68 ["Security"]
  LOADK R15 K102 ["EnableMeshTextureApis"]
  NAMECALL R12 R1 K69 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K78 ["Title"]
  JUMPIFNOT R4 [+28]
  DUPTABLE R12 K105 [{"Text", "LinkText", "OnLinkClicked"}]
  LOADK R15 K68 ["Security"]
  LOADK R16 K106 ["EnableMeshTextureApisDescription"]
  DUPTABLE R17 K109 [{"EditableMesh", "EditableImage"}]
  LOADK R18 K107 ["EditableMesh"]
  SETTABLEKS R18 R17 K107 ["EditableMesh"]
  LOADK R18 K108 ["EditableImage"]
  SETTABLEKS R18 R17 K108 ["EditableImage"]
  NAMECALL R13 R1 K69 ["getText"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K62 ["Text"]
  LOADK R15 K68 ["Security"]
  LOADK R16 K110 ["MeshTextureApisPolicyLinkText"]
  NAMECALL R13 R1 K69 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K103 ["LinkText"]
  DUPCLOSURE R13 K111 [PROTO_46]
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  SETTABLEKS R13 R12 K104 ["OnLinkClicked"]
  JUMPIF R12 [+45]
  JUMPIFNOT R3 [+22]
  JUMPIF R5 [+21]
  DUPTABLE R12 K105 [{"Text", "LinkText", "OnLinkClicked"}]
  LOADK R15 K68 ["Security"]
  LOADK R16 K112 ["EnableMeshTextureApisIdActionableDescription"]
  NAMECALL R13 R1 K69 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K62 ["Text"]
  LOADK R15 K68 ["Security"]
  LOADK R16 K113 ["AccountIdVerificationLinkText"]
  NAMECALL R13 R1 K69 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K103 ["LinkText"]
  DUPCLOSURE R13 K114 [PROTO_47]
  CAPTURE UPVAL U8
  CAPTURE UPVAL U10
  SETTABLEKS R13 R12 K104 ["OnLinkClicked"]
  JUMPIF R12 [+22]
  MOVE R12 R5
  JUMPIFNOT R12 [+20]
  DUPTABLE R12 K105 [{"Text", "LinkText", "OnLinkClicked"}]
  LOADK R15 K68 ["Security"]
  LOADK R16 K115 ["EnableMeshTextureApisIdDeniedDescription"]
  NAMECALL R13 R1 K69 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K62 ["Text"]
  LOADK R15 K80 ["General"]
  LOADK R16 K116 ["GuidelinesLearnMoreLink"]
  NAMECALL R13 R1 K69 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K103 ["LinkText"]
  DUPCLOSURE R13 K117 [PROTO_48]
  CAPTURE UPVAL U8
  CAPTURE UPVAL U11
  SETTABLEKS R13 R12 K104 ["OnLinkClicked"]
  SETTABLEKS R12 R11 K98 ["LinkProps"]
  CALL R9 2 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K19 ["MeshTextureApisEnabled"]
  RETURN R8 1

PROTO_50:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["props"]
  CALL R0 1 1
  RETURN R0 1

PROTO_51:
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
  GETUPVAL R4 5
  JUMPIFNOT R4 [+9]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K2 ["EditSecretId"]
  JUMPIFNOT R4 [+4]
  LOADB R2 0
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U11
  CAPTURE VAL R0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 12
  DUPTABLE R6 K10 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren", "ShowHeader"}]
  GETUPVAL R7 13
  SETTABLEKS R7 R6 K4 ["SettingsLoadJobs"]
  GETUPVAL R7 14
  SETTABLEKS R7 R6 K5 ["SettingsSaveJobs"]
  LOADK R9 K11 ["General"]
  LOADK R11 K12 ["Category"]
  GETUPVAL R12 15
  CONCAT R10 R11 R12
  NAMECALL R7 R1 K13 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K6 ["Title"]
  GETUPVAL R7 15
  SETTABLEKS R7 R6 K7 ["PageId"]
  SETTABLEKS R3 R6 K8 ["CreateChildren"]
  SETTABLEKS R2 R6 K9 ["ShowHeader"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_52:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Settings"]
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_53:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Settings"]
  GETTABLEKS R3 R4 K1 ["Changed"]
  GETTABLE R2 R3 R0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_54:
  JUMPIF R0 [+1]
  RETURN R0 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  GETUPVAL R4 1
  JUMPIFNOT R4 [+6]
  GETUPVAL R4 2
  MOVE R5 R2
  MOVE R6 R3
  MOVE R7 R0
  CALL R4 3 1
  RETURN R4 1
  GETUPVAL R4 3
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  RETURN R4 1

PROTO_55:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_56:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_57:
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
  GETTABLEKS R14 R9 K20 ["TitledFrame"]
  GETTABLEKS R15 R3 K21 ["Util"]
  GETTABLEKS R16 R15 K22 ["LayoutOrderIterator"]
  GETIMPORT R17 K24 [game]
  LOADK R19 K25 ["EditableServiceEnabled"]
  NAMECALL R17 R17 K26 ["GetEngineFeature"]
  CALL R17 2 1
  JUMPIFNOT R17 [+7]
  GETIMPORT R18 K24 [game]
  LOADK R20 K27 ["StudioService"]
  NAMECALL R18 R18 K28 ["GetService"]
  CALL R18 2 1
  JUMP [+1]
  LOADNIL R18
  JUMPIFNOT R17 [+7]
  GETIMPORT R19 K24 [game]
  LOADK R21 K29 ["GuiService"]
  NAMECALL R19 R19 K28 ["GetService"]
  CALL R19 2 1
  JUMP [+1]
  LOADNIL R19
  GETIMPORT R21 K1 [script]
  GETTABLEKS R20 R21 K2 ["Parent"]
  JUMPIFNOT R17 [+10]
  GETIMPORT R21 K4 [require]
  GETTABLEKS R24 R0 K13 ["Src"]
  GETTABLEKS R23 R24 K30 ["Actions"]
  GETTABLEKS R22 R23 K31 ["SetCreatorId"]
  CALL R21 1 1
  JUMP [+1]
  LOADNIL R21
  JUMPIFNOT R17 [+10]
  GETIMPORT R22 K4 [require]
  GETTABLEKS R25 R0 K13 ["Src"]
  GETTABLEKS R24 R25 K30 ["Actions"]
  GETTABLEKS R23 R24 K32 ["SetCreatorName"]
  CALL R22 1 1
  JUMP [+1]
  LOADNIL R22
  JUMPIFNOT R17 [+10]
  GETIMPORT R23 K4 [require]
  GETTABLEKS R26 R0 K13 ["Src"]
  GETTABLEKS R25 R26 K30 ["Actions"]
  GETTABLEKS R24 R25 K33 ["SetCreatorType"]
  CALL R23 1 1
  JUMP [+1]
  LOADNIL R23
  JUMPIFNOT R17 [+8]
  GETIMPORT R24 K4 [require]
  GETTABLEKS R26 R20 K30 ["Actions"]
  GETTABLEKS R25 R26 K34 ["SetGroupOwnerId"]
  CALL R24 1 1
  JUMP [+1]
  LOADNIL R24
  GETIMPORT R25 K4 [require]
  GETTABLEKS R28 R0 K13 ["Src"]
  GETTABLEKS R27 R28 K35 ["Components"]
  GETTABLEKS R26 R27 K36 ["Header"]
  CALL R25 1 1
  GETIMPORT R26 K4 [require]
  GETTABLEKS R30 R0 K13 ["Src"]
  GETTABLEKS R29 R30 K35 ["Components"]
  GETTABLEKS R28 R29 K37 ["SettingsPages"]
  GETTABLEKS R27 R28 K38 ["SettingsPage"]
  CALL R26 1 1
  GETIMPORT R27 K4 [require]
  GETTABLEKS R31 R0 K13 ["Src"]
  GETTABLEKS R30 R31 K35 ["Components"]
  GETTABLEKS R29 R30 K14 ["Dialog"]
  GETTABLEKS R28 R29 K39 ["SimpleDialog"]
  CALL R27 1 1
  GETIMPORT R28 K4 [require]
  GETTABLEKS R31 R0 K13 ["Src"]
  GETTABLEKS R30 R31 K35 ["Components"]
  GETTABLEKS R29 R30 K40 ["ToggleButtonWithTitle"]
  CALL R28 1 1
  GETIMPORT R29 K4 [require]
  GETTABLEKS R32 R0 K13 ["Src"]
  GETTABLEKS R31 R32 K30 ["Actions"]
  GETTABLEKS R30 R31 K41 ["AddChange"]
  CALL R29 1 1
  GETIMPORT R30 K4 [require]
  GETTABLEKS R33 R0 K13 ["Src"]
  GETTABLEKS R32 R33 K30 ["Actions"]
  GETTABLEKS R31 R32 K42 ["AddErrors"]
  CALL R30 1 1
  GETIMPORT R31 K4 [require]
  GETTABLEKS R34 R0 K13 ["Src"]
  GETTABLEKS R33 R34 K30 ["Actions"]
  GETTABLEKS R32 R33 K43 ["DiscardError"]
  CALL R31 1 1
  GETIMPORT R32 K4 [require]
  GETTABLEKS R35 R0 K13 ["Src"]
  GETTABLEKS R34 R35 K30 ["Actions"]
  GETTABLEKS R33 R34 K44 ["DiscardErrors"]
  CALL R32 1 1
  GETIMPORT R33 K4 [require]
  GETTABLEKS R36 R0 K13 ["Src"]
  GETTABLEKS R35 R36 K30 ["Actions"]
  GETTABLEKS R34 R35 K45 ["SetEditSecretFormField"]
  CALL R33 1 1
  GETIMPORT R34 K4 [require]
  GETTABLEKS R37 R0 K13 ["Src"]
  GETTABLEKS R36 R37 K30 ["Actions"]
  GETTABLEKS R35 R36 K46 ["SetEditSecretId"]
  CALL R34 1 1
  GETIMPORT R35 K4 [require]
  GETTABLEKS R38 R0 K13 ["Src"]
  GETTABLEKS R37 R38 K21 ["Util"]
  GETTABLEKS R36 R37 K47 ["Analytics"]
  CALL R35 1 1
  GETIMPORT R36 K4 [require]
  GETTABLEKS R39 R0 K13 ["Src"]
  GETTABLEKS R38 R39 K21 ["Util"]
  GETTABLEKS R37 R38 K48 ["SecretUtils"]
  CALL R36 1 1
  GETIMPORT R37 K4 [require]
  GETTABLEKS R39 R20 K35 ["Components"]
  GETTABLEKS R38 R39 K49 ["Secrets"]
  CALL R37 1 1
  GETIMPORT R39 K1 [script]
  GETTABLEKS R38 R39 K50 ["Name"]
  GETIMPORT R39 K24 [game]
  LOADK R41 K51 ["PolicyLink"]
  LOADK R42 K52 ["https://help.roblox.com/hc/articles/115004647846-Roblox-Terms-of-Use#creators-restrictions-on-use"]
  NAMECALL R39 R39 K53 ["DefineFastString"]
  CALL R39 3 1
  GETIMPORT R40 K24 [game]
  LOADK R42 K54 ["IdVerificationLink"]
  LOADK R43 K55 ["https://www.roblox.com/my/account#!/info"]
  NAMECALL R40 R40 K53 ["DefineFastString"]
  CALL R40 3 1
  GETIMPORT R41 K24 [game]
  LOADK R43 K56 ["CreatorIdVerificationLink"]
  LOADK R44 K57 ["https://create.roblox.com/docs/production/publishing/account-verification"]
  NAMECALL R41 R41 K53 ["DefineFastString"]
  CALL R41 3 1
  GETIMPORT R42 K4 [require]
  GETTABLEKS R45 R0 K13 ["Src"]
  GETTABLEKS R44 R45 K58 ["Flags"]
  GETTABLEKS R43 R44 K59 ["getFFlagSecretsEditorImprovement"]
  CALL R42 1 1
  CALL R42 0 1
  DUPCLOSURE R43 K60 [PROTO_10]
  CAPTURE VAL R17
  CAPTURE VAL R42
  CAPTURE VAL R22
  CAPTURE VAL R21
  CAPTURE VAL R23
  CAPTURE VAL R24
  DUPCLOSURE R44 K61 [PROTO_12]
  CAPTURE VAL R35
  DUPCLOSURE R45 K62 [PROTO_20]
  CAPTURE VAL R35
  CAPTURE VAL R42
  CAPTURE VAL R17
  DUPCLOSURE R46 K63 [PROTO_21]
  CAPTURE VAL R42
  DUPCLOSURE R47 K64 [PROTO_22]
  CAPTURE VAL R42
  CAPTURE VAL R17
  DUPCLOSURE R48 K65 [PROTO_30]
  CAPTURE VAL R42
  CAPTURE VAL R17
  CAPTURE VAL R34
  CAPTURE VAL R33
  CAPTURE VAL R30
  CAPTURE VAL R31
  CAPTURE VAL R32
  GETTABLEKS R49 R1 K66 ["PureComponent"]
  GETIMPORT R52 K1 [script]
  GETTABLEKS R51 R52 K50 ["Name"]
  NAMECALL R49 R49 K67 ["extend"]
  CALL R49 2 1
  JUMPIFNOT R17 [+7]
  DUPCLOSURE R50 K68 [PROTO_31]
  SETTABLEKS R50 R49 K69 ["isGroupGame"]
  DUPCLOSURE R50 K70 [PROTO_32]
  CAPTURE VAL R18
  SETTABLEKS R50 R49 K71 ["isLoggedInUserGameOwner"]
  DUPCLOSURE R50 K72 [PROTO_33]
  DUPCLOSURE R51 K73 [PROTO_38]
  CAPTURE VAL R16
  CAPTURE VAL R36
  CAPTURE VAL R27
  CAPTURE VAL R50
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R25
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R12
  DUPCLOSURE R52 K74 [PROTO_51]
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R28
  CAPTURE VAL R42
  CAPTURE VAL R37
  CAPTURE VAL R19
  CAPTURE VAL R39
  CAPTURE VAL R40
  CAPTURE VAL R41
  CAPTURE VAL R51
  CAPTURE VAL R26
  CAPTURE VAL R43
  CAPTURE VAL R45
  CAPTURE VAL R38
  SETTABLEKS R52 R49 K75 ["render"]
  MOVE R52 R7
  DUPTABLE R53 K78 [{"Localization", "Stylizer", "Dialog"}]
  GETTABLEKS R54 R6 K76 ["Localization"]
  SETTABLEKS R54 R53 K76 ["Localization"]
  GETTABLEKS R54 R6 K77 ["Stylizer"]
  SETTABLEKS R54 R53 K77 ["Stylizer"]
  SETTABLEKS R8 R53 K14 ["Dialog"]
  CALL R52 1 1
  MOVE R53 R49
  CALL R52 1 1
  MOVE R49 R52
  GETIMPORT R52 K4 [require]
  GETTABLEKS R55 R0 K13 ["Src"]
  GETTABLEKS R54 R55 K79 ["Networking"]
  GETTABLEKS R53 R54 K80 ["settingFromState"]
  CALL R52 1 1
  GETTABLEKS R53 R2 K81 ["connect"]
  DUPCLOSURE R54 K82 [PROTO_54]
  CAPTURE VAL R52
  CAPTURE VAL R17
  CAPTURE VAL R47
  CAPTURE VAL R46
  DUPCLOSURE R55 K83 [PROTO_57]
  CAPTURE VAL R29
  CAPTURE VAL R48
  CALL R53 2 1
  MOVE R54 R49
  CALL R53 1 1
  MOVE R49 R53
  SETTABLEKS R38 R49 K84 ["LocalizationId"]
  RETURN R49 1
