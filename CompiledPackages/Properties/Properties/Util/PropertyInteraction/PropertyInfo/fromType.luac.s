PROTO_0:
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  JUMPIFEQKNIL R2 [+10]
  GETIMPORT R2 K1 [error]
  LOADK R4 K2 ["%* is not supported in the PropertyInfo.fromType, please use the custom info function"]
  MOVE R6 R0
  NAMECALL R4 R4 K3 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 0
  DUPTABLE R2 K6 [{"type", "readonly"}]
  SETTABLEKS R0 R2 K4 ["type"]
  SETTABLEKS R1 R2 K5 ["readonly"]
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
  DUPTABLE R2 K11 [{"Enum", "InstanceRef", "DynamicEnum", "Content"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K7 ["Enum"]
  LOADB R3 1
  SETTABLEKS R3 R2 K8 ["InstanceRef"]
  LOADB R3 1
  SETTABLEKS R3 R2 K9 ["DynamicEnum"]
  LOADB R3 1
  SETTABLEKS R3 R2 K10 ["Content"]
  DUPCLOSURE R3 K12 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
