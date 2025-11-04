PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K4 [{"info", "updateValue", "LayoutOrder"}]
  DUPTABLE R4 K7 [{"type", "value"}]
  LOADK R5 K8 ["boolean"]
  SETTABLEKS R5 R4 K5 ["type"]
  GETTABLEKS R6 R0 K9 ["Property"]
  GETTABLEKS R5 R6 K10 ["Value"]
  SETTABLEKS R5 R4 K6 ["value"]
  SETTABLEKS R4 R3 K1 ["info"]
  GETTABLEKS R4 R0 K11 ["OnChanged"]
  SETTABLEKS R4 R3 K2 ["updateValue"]
  GETTABLEKS R4 R0 K3 ["LayoutOrder"]
  SETTABLEKS R4 R3 K3 ["LayoutOrder"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Properties"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K9 ["Components"]
  GETTABLEKS R3 R4 K10 ["PropertyValue"]
  DUPCLOSURE R4 K11 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R4 1
