PROTO_0:
  JUMPIFEQKS R0 K0 ["Enum"] [+3]
  JUMPIFNOTEQKS R0 K1 ["InstanceRef"] [+10]
  GETIMPORT R2 K3 [error]
  LOADK R4 K4 ["%* is not supported in the PropertyInfo.fromType, please use the custom info function"]
  MOVE R6 R0
  NAMECALL R4 R4 K5 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 0
  DUPTABLE R2 K8 [{"type", "readonly"}]
  SETTABLEKS R0 R2 K6 ["type"]
  SETTABLEKS R1 R2 K7 ["readonly"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["PropertyTypes"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_0]
  RETURN R2 1
