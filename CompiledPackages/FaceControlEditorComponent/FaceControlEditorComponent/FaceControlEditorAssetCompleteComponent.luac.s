PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["ContextStack"]
  DUPTABLE R3 K3 [{"providers"}]
  NEWTABLE R4 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K7 [{"plugin", "selectedInstance", "updateContextFunction"}]
  GETTABLEKS R8 R0 K8 ["Plugin"]
  SETTABLEKS R8 R7 K4 ["plugin"]
  GETTABLEKS R8 R0 K5 ["selectedInstance"]
  SETTABLEKS R8 R7 K5 ["selectedInstance"]
  GETTABLEKS R8 R0 K9 ["UpdateContextFunction"]
  SETTABLEKS R8 R7 K6 ["updateContextFunction"]
  CALL R5 2 -1
  SETLIST R4 R5 -1 [1]
  SETTABLEKS R4 R3 K2 ["providers"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FaceControlEditorComponent"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["ReactUtils"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R0 K9 ["FaceControlEditorAssetProvider"]
  CALL R4 1 1
  DUPCLOSURE R5 K10 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
