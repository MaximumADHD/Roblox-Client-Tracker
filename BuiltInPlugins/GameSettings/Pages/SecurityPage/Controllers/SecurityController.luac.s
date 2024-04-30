PROTO_0:
  NEWTABLE R1 1 0
  SETTABLEKS R0 R1 K0 ["__networking"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K2 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R4 K1 ["develop"]
  LOADK R6 K2 ["/v2/universes/"]
  MOVE R7 R1
  LOADK R8 K3 ["/configuration"]
  CONCAT R5 R6 R8
  NAMECALL R2 R2 K4 ["get"]
  CALL R2 3 1
  NAMECALL R2 R2 K5 ["await"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_2:
  GETTABLEKS R3 R0 K0 ["__networking"]
  LOADK R5 K1 ["develop"]
  LOADK R7 K2 ["/v2/universes/"]
  MOVE R8 R1
  LOADK R9 K3 ["/configuration"]
  CONCAT R6 R7 R9
  DUPTABLE R7 K5 [{"Body"}]
  SETTABLEKS R2 R7 K4 ["Body"]
  NAMECALL R3 R3 K6 ["patch"]
  CALL R3 4 1
  NAMECALL R3 R3 K7 ["await"]
  CALL R3 1 -1
  RETURN R3 -1

PROTO_3:
  MOVE R5 R1
  NAMECALL R3 R0 K0 ["configurationV2GET"]
  CALL R3 2 1
  GETTABLEKS R5 R3 K1 ["responseBody"]
  GETTABLEKS R4 R5 K2 ["permissions"]
  GETTABLE R5 R4 R2
  RETURN R5 1

PROTO_4:
  MOVE R6 R1
  DUPTABLE R7 K1 [{"permissions"}]
  NEWTABLE R8 1 0
  SETTABLE R3 R8 R2
  SETTABLEKS R8 R7 K0 ["permissions"]
  NAMECALL R4 R0 K2 ["configurationV2PATCH"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_5:
  MOVE R4 R1
  LOADK R5 K0 ["IsThirdPartyPurchaseAllowed"]
  NAMECALL R2 R0 K1 ["GetPermission"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_6:
  MOVE R5 R1
  LOADK R6 K0 ["IsThirdPartyPurchaseAllowed"]
  MOVE R7 R2
  NAMECALL R3 R0 K1 ["SetChangedPermissions"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_7:
  MOVE R4 R1
  LOADK R5 K0 ["IsThirdPartyTeleportAllowed"]
  NAMECALL R2 R0 K1 ["GetPermission"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_8:
  MOVE R5 R1
  LOADK R6 K0 ["IsThirdPartyTeleportAllowed"]
  MOVE R7 R2
  NAMECALL R3 R0 K1 ["SetChangedPermissions"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_9:
  LOADK R4 K0 ["HttpService"]
  NAMECALL R2 R1 K1 ["GetService"]
  CALL R2 2 1
  NAMECALL R3 R2 K2 ["GetHttpEnabled"]
  CALL R3 1 -1
  RETURN R3 -1

PROTO_10:
  LOADK R5 K0 ["HttpService"]
  NAMECALL R3 R1 K1 ["GetService"]
  CALL R3 2 1
  MOVE R6 R2
  NAMECALL R4 R3 K2 ["SetHttpEnabled"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_11:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["configurationV2GET"]
  CALL R2 2 1
  GETTABLEKS R3 R2 K1 ["responseBody"]
  GETTABLEKS R4 R3 K2 ["studioAccessToApisAllowed"]
  RETURN R4 1

PROTO_12:
  MOVE R5 R1
  DUPTABLE R6 K1 [{"studioAccessToApisAllowed"}]
  SETTABLEKS R2 R6 K0 ["studioAccessToApisAllowed"]
  NAMECALL R3 R0 K2 ["configurationV2PATCH"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_13:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["LocalSecretsInStudio"]
  NAMECALL R1 R1 K3 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R2
  RETURN R2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K4 ["StudioService"]
  NAMECALL R2 R2 K5 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R3 R2 K6 ["Secrets"]
  RETURN R3 1

PROTO_14:
  GETIMPORT R2 K1 [game]
  LOADK R4 K2 ["LocalSecretsInStudio"]
  NAMECALL R2 R2 K3 ["GetFastFlag"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R3 K1 [game]
  LOADK R5 K4 ["StudioService"]
  NAMECALL R3 R3 K5 ["GetService"]
  CALL R3 2 1
  SETTABLEKS R1 R3 K6 ["Secrets"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 16 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  DUPCLOSURE R1 K3 [PROTO_1]
  SETTABLEKS R1 R0 K4 ["configurationV2GET"]
  DUPCLOSURE R1 K5 [PROTO_2]
  SETTABLEKS R1 R0 K6 ["configurationV2PATCH"]
  DUPCLOSURE R1 K7 [PROTO_3]
  SETTABLEKS R1 R0 K8 ["GetPermission"]
  DUPCLOSURE R1 K9 [PROTO_4]
  SETTABLEKS R1 R0 K10 ["SetChangedPermissions"]
  DUPCLOSURE R1 K11 [PROTO_5]
  SETTABLEKS R1 R0 K12 ["GetThirdPartyPurchasesAllowed"]
  DUPCLOSURE R1 K13 [PROTO_6]
  SETTABLEKS R1 R0 K14 ["SetThirdPartyPurchasesAllowed"]
  DUPCLOSURE R1 K15 [PROTO_7]
  SETTABLEKS R1 R0 K16 ["GetThirdPartyTeleportsAllowed"]
  DUPCLOSURE R1 K17 [PROTO_8]
  SETTABLEKS R1 R0 K18 ["SetThirdPartyTeleportsAllowed"]
  DUPCLOSURE R1 K19 [PROTO_9]
  SETTABLEKS R1 R0 K20 ["GetHttpEnabled"]
  DUPCLOSURE R1 K21 [PROTO_10]
  SETTABLEKS R1 R0 K22 ["SetHttpEnabled"]
  DUPCLOSURE R1 K23 [PROTO_11]
  SETTABLEKS R1 R0 K24 ["GetStudioAccessToApisAllowed"]
  DUPCLOSURE R1 K25 [PROTO_12]
  SETTABLEKS R1 R0 K26 ["SetStudioAccessToApisAllowed"]
  DUPCLOSURE R1 K27 [PROTO_13]
  SETTABLEKS R1 R0 K28 ["GetSecrets"]
  DUPCLOSURE R1 K29 [PROTO_14]
  SETTABLEKS R1 R0 K30 ["SetSecrets"]
  RETURN R0 1
