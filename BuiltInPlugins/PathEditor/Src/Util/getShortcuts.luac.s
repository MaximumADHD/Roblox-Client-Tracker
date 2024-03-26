PROTO_0:
  DUPTABLE R0 K6 [{"Move", "AddPoint", "AddTangent", "Done", "DeletePoint", "DeletePoint2"}]
  GETUPVAL R2 0
  JUMPIFNOT R2 [+2]
  LOADK R1 K7 ["v"]
  JUMP [+1]
  LOADK R1 K8 ["s"]
  SETTABLEKS R1 R0 K0 ["Move"]
  LOADK R1 K9 ["p"]
  SETTABLEKS R1 R0 K1 ["AddPoint"]
  LOADK R1 K10 ["t"]
  SETTABLEKS R1 R0 K2 ["AddTangent"]
  LOADK R1 K11 ["return"]
  SETTABLEKS R1 R0 K3 ["Done"]
  LOADK R1 K12 ["delete"]
  SETTABLEKS R1 R0 K4 ["DeletePoint"]
  LOADK R1 K13 ["backspace"]
  SETTABLEKS R1 R0 K5 ["DeletePoint2"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["PathEditorSelectModeShortcutChangeToV"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 1
  DUPCLOSURE R1 K4 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
