PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["ContextStack"]
  DUPTABLE R4 K3 [{"providers"}]
  NEWTABLE R5 0 2
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K4 ["FoundationProvider"]
  DUPTABLE R8 K7 [{"theme", "device"}]
  SETTABLEKS R1 R8 K5 ["theme"]
  LOADK R9 K8 ["Desktop"]
  SETTABLEKS R9 R8 K6 ["device"]
  CALL R6 2 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K10 [{"plugin"}]
  GETTABLEKS R10 R0 K11 ["Plugin"]
  SETTABLEKS R10 R9 K9 ["plugin"]
  CALL R7 2 -1
  SETLIST R5 R6 -1 [1]
  SETTABLEKS R5 R4 K2 ["providers"]
  NEWTABLE R5 0 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 5
  DUPTABLE R8 K13 [{"localizationFunction"}]
  GETTABLEKS R9 R0 K12 ["localizationFunction"]
  SETTABLEKS R9 R8 K12 ["localizationFunction"]
  CALL R6 2 -1
  SETLIST R5 R6 -1 [1]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FaceControlEditorComponent"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Components"]
  GETTABLEKS R3 R4 K8 ["FaceControlEditor"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R0 K9 ["FaceControlEditorStandaloneProvider"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K10 ["Hooks"]
  GETTABLEKS R5 R6 K11 ["useFoundationStudioTheme"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K12 ["Foundation"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R1 K13 ["React"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R1 K14 ["ReactUtils"]
  CALL R7 1 1
  DUPCLOSURE R8 K15 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R8 1
