PROTO_0:
  DUPTABLE R0 K4 [{"GetUpdateStateAsync", "GetCanAutoUpdateAsync", "UpdateStateChanged", "CanAutoUpdateNotification"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["fn"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K0 ["GetUpdateStateAsync"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["fn"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["GetCanAutoUpdateAsync"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K6 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K2 ["UpdateStateChanged"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K6 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K3 ["CanAutoUpdateNotification"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Dev"]
  GETTABLEKS R2 R3 K8 ["JestGlobals"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K9 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K10 ["Util"]
  GETTABLEKS R3 R4 K11 ["Signal"]
  GETTABLEKS R4 R1 K12 ["jest"]
  NEWTABLE R5 2 0
  DUPCLOSURE R6 K13 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K14 ["new"]
  NEWTABLE R6 0 5
  GETIMPORT R7 K18 [Enum.UpdateState.UpdateNotAvailable]
  GETIMPORT R8 K20 [Enum.UpdateState.UpdateAvailable]
  GETIMPORT R9 K22 [Enum.UpdateState.UpdateInProgress]
  GETIMPORT R10 K24 [Enum.UpdateState.UpdateReady]
  GETIMPORT R11 K26 [Enum.UpdateState.UpdateFailed]
  SETLIST R6 R7 5 [1]
  SETTABLEKS R6 R5 K27 ["states"]
  RETURN R5 1
