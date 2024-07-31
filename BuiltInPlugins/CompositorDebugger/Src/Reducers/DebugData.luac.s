PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"FrameBuffer"}]
  GETTABLEKS R5 R1 K2 ["frameBuffer"]
  SETTABLEKS R5 R4 K0 ["FrameBuffer"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"Overrides"}]
  GETTABLEKS R5 R1 K2 ["overrides"]
  SETTABLEKS R5 R4 K0 ["Overrides"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"UIFrame"}]
  GETTABLEKS R5 R1 K2 ["uiFrame"]
  SETTABLEKS R5 R4 K0 ["UIFrame"]
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
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Dash"]
  GETTABLEKS R4 R3 K10 ["join"]
  GETTABLEKS R5 R3 K11 ["None"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K13 ["Types"]
  CALL R6 1 1
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K14 ["Actions"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K15 ["SetFrameBuffer"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R7 K16 ["SetOverrides"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R7 K17 ["SetUIFrame"]
  CALL R10 1 1
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K18 ["Util"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R11 K19 ["CircularBuffer"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R11 K20 ["debugFlags"]
  CALL R13 1 1
  GETTABLEKS R14 R1 K21 ["createReducer"]
  DUPTABLE R15 K24 [{"FrameBuffer", "Overrides"}]
  LOADNIL R16
  SETTABLEKS R16 R15 K22 ["FrameBuffer"]
  NEWTABLE R16 0 0
  SETTABLEKS R16 R15 K23 ["Overrides"]
  NEWTABLE R16 4 0
  GETTABLEKS R17 R8 K25 ["name"]
  DUPCLOSURE R18 K26 [PROTO_0]
  CAPTURE VAL R4
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R9 K25 ["name"]
  DUPCLOSURE R18 K27 [PROTO_1]
  CAPTURE VAL R4
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R10 K25 ["name"]
  DUPCLOSURE R18 K28 [PROTO_2]
  CAPTURE VAL R4
  SETTABLE R18 R16 R17
  CALL R14 2 1
  RETURN R14 1
