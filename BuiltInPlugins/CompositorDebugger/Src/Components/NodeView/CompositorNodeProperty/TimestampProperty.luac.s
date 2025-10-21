PROTO_0:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["%.2f sec"]
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useCallback"]
  DUPCLOSURE R2 K1 [PROTO_0]
  NEWTABLE R3 0 0
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["NumberInput"]
  DUPTABLE R4 K12 [{"size", "width", "label", "value", "LayoutOrder", "precision", "formatAsString", "onChanged"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K13 ["Enums"]
  GETTABLEKS R6 R7 K14 ["InputSize"]
  GETTABLEKS R5 R6 K15 ["XSmall"]
  SETTABLEKS R5 R4 K4 ["size"]
  GETIMPORT R5 K18 [UDim.new]
  LOADN R6 0
  LOADN R7 90
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["width"]
  LOADK R5 K19 [""]
  SETTABLEKS R5 R4 K6 ["label"]
  GETTABLEKS R6 R0 K20 ["Property"]
  GETTABLEKS R5 R6 K21 ["Value"]
  SETTABLEKS R5 R4 K7 ["value"]
  GETTABLEKS R5 R0 K8 ["LayoutOrder"]
  SETTABLEKS R5 R4 K8 ["LayoutOrder"]
  LOADN R5 2
  SETTABLEKS R5 R4 K9 ["precision"]
  SETTABLEKS R1 R4 K10 ["formatAsString"]
  GETTABLEKS R5 R0 K22 ["OnChanged"]
  SETTABLEKS R5 R4 K11 ["onChanged"]
  CALL R2 2 -1
  RETURN R2 -1

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
  DUPCLOSURE R3 K9 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1
