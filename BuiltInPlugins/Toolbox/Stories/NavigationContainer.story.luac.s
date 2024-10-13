PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"Container"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["Container"]
  CALL R0 3 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K7 ["Core"]
  GETTABLEKS R6 R7 K8 ["Components"]
  GETTABLEKS R5 R6 K9 ["Home"]
  GETTABLEKS R4 R5 K10 ["NavigationContainer"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K11 ["Stories"]
  GETTABLEKS R5 R6 K12 ["ToolboxStoryWrapper"]
  CALL R4 1 1
  DUPTABLE R5 K16 [{"name", "summary", "story"}]
  LOADK R6 K10 ["NavigationContainer"]
  SETTABLEKS R6 R5 K13 ["name"]
  LOADK R6 K17 ["A container that hosts all of the navigation routes."]
  SETTABLEKS R6 R5 K14 ["summary"]
  DUPCLOSURE R6 K18 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K15 ["story"]
  RETURN R5 1
