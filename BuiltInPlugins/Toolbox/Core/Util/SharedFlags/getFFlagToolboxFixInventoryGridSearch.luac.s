PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+6]
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ToolboxFixInventoryGridSearch"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ToolboxFixInventoryGridSearch"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K5 [script]
  LOADK R2 K6 ["Toolbox"]
  NAMECALL R0 R0 K7 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K9 [require]
  GETTABLEKS R5 R0 K10 ["Core"]
  GETTABLEKS R4 R5 K11 ["Util"]
  GETTABLEKS R3 R4 K12 ["SharedFlags"]
  GETTABLEKS R2 R3 K13 ["getFFlagToolboxFixInventoryCreatorFilter"]
  CALL R1 1 1
  DUPCLOSURE R2 K14 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
