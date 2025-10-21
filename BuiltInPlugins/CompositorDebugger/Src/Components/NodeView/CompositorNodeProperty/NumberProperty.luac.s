PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["NumberInput"]
  DUPTABLE R3 K9 [{"size", "width", "label", "value", "LayoutOrder", "precision", "onChanged"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["Enums"]
  GETTABLEKS R5 R6 K11 ["InputSize"]
  GETTABLEKS R4 R5 K12 ["XSmall"]
  SETTABLEKS R4 R3 K2 ["size"]
  GETIMPORT R4 K15 [UDim.new]
  LOADN R5 0
  LOADN R6 90
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["width"]
  LOADK R4 K16 [""]
  SETTABLEKS R4 R3 K4 ["label"]
  GETTABLEKS R5 R0 K17 ["Property"]
  GETTABLEKS R4 R5 K18 ["Value"]
  SETTABLEKS R4 R3 K5 ["value"]
  GETTABLEKS R4 R0 K6 ["LayoutOrder"]
  SETTABLEKS R4 R3 K6 ["LayoutOrder"]
  LOADN R4 2
  SETTABLEKS R4 R3 K7 ["precision"]
  GETTABLEKS R4 R0 K19 ["OnChanged"]
  SETTABLEKS R4 R3 K8 ["onChanged"]
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
  GETTABLEKS R2 R3 K7 ["Foundation"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1
