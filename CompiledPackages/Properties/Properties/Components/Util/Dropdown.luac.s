PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Dropdown"]
  GETTABLEKS R2 R3 K1 ["Root"]
  DUPTABLE R3 K10 [{"LayoutOrder", "label", "size", "width", "items", "value", "onItemChanged", "testId"}]
  GETTABLEKS R4 R0 K11 ["layoutOrder"]
  SETTABLEKS R4 R3 K2 ["LayoutOrder"]
  LOADK R4 K12 [""]
  SETTABLEKS R4 R3 K3 ["label"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K13 ["XSmall"]
  SETTABLEKS R4 R3 K4 ["size"]
  GETIMPORT R4 K16 [UDim.new]
  LOADN R5 1
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["width"]
  GETTABLEKS R4 R0 K6 ["items"]
  SETTABLEKS R4 R3 K6 ["items"]
  GETTABLEKS R4 R0 K7 ["value"]
  SETTABLEKS R4 R3 K7 ["value"]
  GETTABLEKS R4 R0 K8 ["onItemChanged"]
  SETTABLEKS R4 R3 K8 ["onItemChanged"]
  GETTABLEKS R4 R0 K9 ["testId"]
  SETTABLEKS R4 R3 K9 ["testId"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["React"]
  CALL R3 1 1
  GETTABLEKS R5 R2 K9 ["Enums"]
  GETTABLEKS R4 R5 K10 ["InputSize"]
  GETTABLEKS R5 R3 K11 ["createElement"]
  DUPCLOSURE R6 K12 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R6 1
