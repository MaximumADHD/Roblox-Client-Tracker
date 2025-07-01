PROTO_0:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["EnableAvatarSettingsProvider: requestSaveToRoblox should not be called with mockEnableAvatarSettingsProvider"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADN R2 1
  CALL R1 1 2
  DUPTABLE R3 K5 [{"default", "currentGameId", "setCurrentGameId", "requestSaveToRoblox"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K1 ["default"]
  SETTABLEKS R1 R3 K2 ["currentGameId"]
  SETTABLEKS R2 R3 K3 ["setCurrentGameId"]
  DUPCLOSURE R4 K6 [PROTO_0]
  SETTABLEKS R4 R3 K4 ["requestSaveToRoblox"]
  GETUPVAL R4 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["Provider"]
  DUPTABLE R6 K9 [{"value"}]
  SETTABLEKS R3 R6 K8 ["value"]
  GETTABLEKS R7 R0 K10 ["children"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Components"]
  GETTABLEKS R3 R4 K8 ["Contexts"]
  GETTABLEKS R2 R3 K9 ["EnableAvatarSettingsContext"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K12 ["createElement"]
  DUPCLOSURE R4 K13 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R4 1
