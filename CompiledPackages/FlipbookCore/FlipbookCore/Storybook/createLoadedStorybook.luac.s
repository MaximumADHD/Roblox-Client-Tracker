PROTO_0:
  DUPTABLE R0 K4 [{"name", "loader", "source", "storyRoots"}]
  LOADK R1 K5 ["Storybook"]
  SETTABLEKS R1 R0 K0 ["name"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["loader"]
  GETIMPORT R1 K8 [Instance.new]
  LOADK R2 K9 ["ModuleScript"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["source"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K3 ["storyRoots"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K5 ["Packages"]
  GETTABLEKS R1 R2 K6 ["ModuleLoader"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K5 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Storyteller"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R0
  RETURN R2 1
