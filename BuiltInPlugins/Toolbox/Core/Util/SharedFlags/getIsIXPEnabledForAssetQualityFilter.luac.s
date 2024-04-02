PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+18]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["shouldDebugWarnings"]
  CALL R1 0 1
  JUMPIFNOT R1 [+7]
  JUMPIF R0 [+6]
  GETIMPORT R1 K2 [warn]
  LOADK R2 K3 ["ixp was undefined for FFlagQualityFiltersInToolboxSearch"]
  CALL R1 1 0
  LOADB R1 0
  RETURN R1 1
  GETUPVAL R1 2
  MOVE R2 R0
  LOADK R3 K4 ["AssetQualityFilter"]
  LOADK R4 K5 ["AssetQualityFilterEnabled"]
  CALL R1 3 -1
  RETURN R1 -1
  LOADB R1 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Core"]
  GETTABLEKS R1 R2 K5 ["Util"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["DebugFlags"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R4 R1 K9 ["getIsIXPVariableEnabled"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R7 R0 K4 ["Core"]
  GETTABLEKS R6 R7 K10 ["Flags"]
  GETTABLEKS R5 R6 K11 ["getFFlagQualityFiltersInToolboxSearch"]
  CALL R4 1 1
  DUPCLOSURE R5 K12 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R5 1
