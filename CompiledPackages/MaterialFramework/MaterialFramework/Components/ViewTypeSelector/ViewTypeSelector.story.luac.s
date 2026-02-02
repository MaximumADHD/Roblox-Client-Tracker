PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  GETUPVAL R2 1
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useState"]
  LOADN R4 100
  CALL R3 1 2
  GETTABLEKS R6 R0 K1 ["controls"]
  GETTABLEKS R5 R6 K2 ["isDisabled"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K9 [{"Disabled", "GridSize", "OnGridSizeChanged", "OnViewTypeSelected", "ViewType"}]
  SETTABLEKS R5 R8 K4 ["Disabled"]
  SETTABLEKS R3 R8 K5 ["GridSize"]
  SETTABLEKS R4 R8 K6 ["OnGridSizeChanged"]
  SETTABLEKS R2 R8 K7 ["OnViewTypeSelected"]
  SETTABLEKS R1 R8 K8 ["ViewType"]
  CALL R6 2 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K6 ["Components"]
  GETTABLEKS R4 R5 K7 ["ViewTypeSelector"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K8 ["Enums"]
  GETTABLEKS R5 R6 K9 ["ViewType"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K10 ["Grid"]
  DUPTABLE R6 K13 [{"controls", "stories"}]
  DUPTABLE R7 K15 [{"isDisabled"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K14 ["isDisabled"]
  SETTABLEKS R7 R6 K11 ["controls"]
  NEWTABLE R7 0 1
  DUPTABLE R8 K18 [{"name", "story"}]
  LOADK R9 K19 ["Default"]
  SETTABLEKS R9 R8 K16 ["name"]
  DUPCLOSURE R9 K20 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R3
  SETTABLEKS R9 R8 K17 ["story"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K12 ["stories"]
  RETURN R6 1
