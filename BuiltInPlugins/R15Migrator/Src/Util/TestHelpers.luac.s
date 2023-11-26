PROTO_0:
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["Script"]
  CALL R2 1 1
  SETTABLEKS R1 R2 K4 ["Source"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  LOADK R5 K0 ["rbxasset://avatar/unification/testScripts/"]
  MOVE R6 R1
  LOADK R7 K1 [".lua"]
  CONCAT R4 R5 R7
  NAMECALL R2 R2 K2 ["GetLocalFileContents"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["GetSourceFromLocalFileContents"]
  CALL R2 2 1
  MOVE R5 R2
  NAMECALL R3 R0 K1 ["CreateScriptWithSource"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["InsertService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NEWTABLE R1 4 0
  DUPCLOSURE R2 K4 [PROTO_0]
  SETTABLEKS R2 R1 K5 ["CreateScriptWithSource"]
  DUPCLOSURE R2 K6 [PROTO_1]
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K7 ["GetSourceFromLocalFileContents"]
  DUPCLOSURE R2 K8 [PROTO_2]
  SETTABLEKS R2 R1 K9 ["InsertTestScript"]
  RETURN R1 1
