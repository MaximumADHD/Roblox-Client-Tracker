PROTO_0:
  MOVE R2 R0
  JUMPIF R2 [+5]
  DUPTABLE R2 K1 [{"StateMorpher"}]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K0 ["StateMorpher"]
  MOVE R0 R2
  DUPTABLE R2 K1 [{"StateMorpher"}]
  DUPTABLE R3 K4 [{"StateTemplates", "StateSettings"}]
  GETUPVAL R4 0
  GETTABLEKS R6 R0 K0 ["StateMorpher"]
  GETTABLEKS R5 R6 K2 ["StateTemplates"]
  MOVE R6 R1
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["StateTemplates"]
  GETUPVAL R4 1
  GETTABLEKS R6 R0 K0 ["StateMorpher"]
  GETTABLEKS R5 R6 K3 ["StateSettings"]
  MOVE R6 R1
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["StateSettings"]
  SETTABLEKS R3 R2 K0 ["StateMorpher"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Reducers"]
  GETTABLEKS R2 R3 K6 ["MorpherEditorSettings"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Reducers"]
  GETTABLEKS R3 R4 K7 ["MorpherEditorTemplates"]
  CALL R2 1 1
  DUPCLOSURE R3 K8 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1
