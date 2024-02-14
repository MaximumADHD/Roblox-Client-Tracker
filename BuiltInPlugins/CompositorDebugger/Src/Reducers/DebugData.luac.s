PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K2 [{"DebugData", "LayerMap"}]
  GETTABLEKS R5 R1 K3 ["debugData"]
  SETTABLEKS R5 R4 K0 ["DebugData"]
  GETTABLEKS R5 R1 K4 ["layerMap"]
  SETTABLEKS R5 R4 K1 ["LayerMap"]
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
  DUPTABLE R4 K3 [{"History", "WriteIndex", "LastTimestamp"}]
  GETTABLEKS R5 R1 K4 ["history"]
  SETTABLEKS R5 R4 K0 ["History"]
  GETTABLEKS R5 R1 K5 ["writeIndex"]
  SETTABLEKS R5 R4 K1 ["WriteIndex"]
  GETTABLEKS R5 R1 K6 ["lastTimestamp"]
  SETTABLEKS R5 R4 K2 ["LastTimestamp"]
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
  GETTABLEKS R9 R7 K15 ["SetDebugData"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R7 K16 ["SetOverrides"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R7 K17 ["SetHistory"]
  CALL R10 1 1
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K18 ["Util"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R11 K19 ["debugFlags"]
  CALL R12 1 1
  GETTABLEKS R13 R1 K20 ["createReducer"]
  DUPTABLE R14 K27 [{"History", "WriteIndex", "ReadOffset", "DebugData", "LayerMap", "Overrides"}]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K21 ["History"]
  LOADN R15 1
  SETTABLEKS R15 R14 K22 ["WriteIndex"]
  LOADNIL R15
  SETTABLEKS R15 R14 K23 ["ReadOffset"]
  LOADNIL R15
  SETTABLEKS R15 R14 K24 ["DebugData"]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K25 ["LayerMap"]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K26 ["Overrides"]
  NEWTABLE R15 4 0
  GETTABLEKS R16 R8 K28 ["name"]
  DUPCLOSURE R17 K29 [PROTO_0]
  CAPTURE VAL R4
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R9 K28 ["name"]
  DUPCLOSURE R17 K30 [PROTO_1]
  CAPTURE VAL R4
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R10 K28 ["name"]
  DUPCLOSURE R17 K31 [PROTO_2]
  CAPTURE VAL R4
  SETTABLE R17 R15 R16
  CALL R13 2 1
  RETURN R13 1
