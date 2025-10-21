PROTO_0:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["Model"]
  CALL R0 1 1
  LOADK R1 K4 ["AnimationGraphDefinition"]
  SETTABLEKS R1 R0 K5 ["Name"]
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K6 ["Folder"]
  CALL R1 1 1
  LOADK R2 K7 ["AnimGraph"]
  SETTABLEKS R2 R1 K5 ["Name"]
  RETURN R1 1

PROTO_1:
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["Model"]
  CALL R2 1 1
  LOADK R3 K4 ["AnimationGraphDefinition"]
  SETTABLEKS R3 R2 K5 ["Name"]
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K6 ["Folder"]
  CALL R3 1 1
  LOADK R4 K7 ["AnimGraph"]
  SETTABLEKS R4 R3 K5 ["Name"]
  MOVE R1 R3
  NEWTABLE R2 0 0
  MOVE R3 R2
  MOVE R4 R1
  RETURN R3 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  DUPCLOSURE R3 K9 [PROTO_1]
  RETURN R3 1
