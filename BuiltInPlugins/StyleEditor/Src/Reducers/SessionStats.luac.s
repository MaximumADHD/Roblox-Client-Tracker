PROTO_0:
  GETTABLEKS R4 R0 K1 ["ButtonPressCounts"]
  GETTABLEKS R5 R1 K2 ["buttonId"]
  GETTABLE R3 R4 R5
  ORK R2 R3 K0 [0]
  GETUPVAL R3 0
  MOVE R4 R0
  DUPTABLE R5 K3 [{"ButtonPressCounts"}]
  GETUPVAL R6 0
  GETTABLEKS R7 R0 K1 ["ButtonPressCounts"]
  NEWTABLE R8 1 0
  GETTABLEKS R9 R1 K2 ["buttonId"]
  ADDK R10 R2 K4 [1]
  SETTABLE R10 R8 R9
  CALL R6 2 1
  SETTABLEKS R6 R5 K1 ["ButtonPressCounts"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"SessionStartTimestamp"}]
  GETTABLEKS R5 R1 K2 ["startTimestamp"]
  SETTABLEKS R5 R4 K0 ["SessionStartTimestamp"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"PluginFocusPeriodStartTimestamp"}]
  GETTABLEKS R5 R1 K2 ["focusStartTimestamp"]
  SETTABLEKS R5 R4 K0 ["PluginFocusPeriodStartTimestamp"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["PluginFocusEndWithoutStartCount"]
  LOADN R3 0
  GETTABLEKS R4 R0 K1 ["PluginFocusPeriodStartTimestamp"]
  JUMPIFNOT R4 [+6]
  GETTABLEKS R4 R1 K2 ["focusEndTimestamp"]
  GETTABLEKS R5 R0 K1 ["PluginFocusPeriodStartTimestamp"]
  SUB R3 R4 R5
  JUMP [+1]
  ADDK R2 R2 K3 [1]
  GETTABLEKS R5 R0 K4 ["TotalPluginFocusTimeSeconds"]
  ADD R4 R5 R3
  GETUPVAL R5 0
  MOVE R6 R0
  DUPTABLE R7 K5 [{"PluginFocusPeriodStartTimestamp", "TotalPluginFocusTimeSeconds", "PluginFocusEndWithoutStartCount"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["None"]
  SETTABLEKS R8 R7 K1 ["PluginFocusPeriodStartTimestamp"]
  SETTABLEKS R4 R7 K4 ["TotalPluginFocusTimeSeconds"]
  SETTABLEKS R2 R7 K0 ["PluginFocusEndWithoutStartCount"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["join"]
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Actions"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R4 K11 ["SessionStats"]
  GETTABLEKS R6 R7 K12 ["PluginFocusEnd"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R4 K11 ["SessionStats"]
  GETTABLEKS R7 R8 K13 ["PluginFocusStart"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R4 K11 ["SessionStats"]
  GETTABLEKS R8 R9 K14 ["SetSessionStartTimestamp"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R4 K11 ["SessionStats"]
  GETTABLEKS R9 R10 K15 ["TrackButtonPress"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R0 K9 ["Src"]
  GETTABLEKS R10 R11 K16 ["Types"]
  CALL R9 1 1
  DUPTABLE R10 K22 [{"SessionStartTimestamp", "TotalPluginFocusTimeSeconds", "PluginFocusPeriodStartTimestamp", "PluginFocusEndWithoutStartCount", "ButtonPressCounts"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K17 ["SessionStartTimestamp"]
  LOADN R11 0
  SETTABLEKS R11 R10 K18 ["TotalPluginFocusTimeSeconds"]
  LOADNIL R11
  SETTABLEKS R11 R10 K19 ["PluginFocusPeriodStartTimestamp"]
  LOADN R11 0
  SETTABLEKS R11 R10 K20 ["PluginFocusEndWithoutStartCount"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K21 ["ButtonPressCounts"]
  GETTABLEKS R11 R1 K23 ["createReducer"]
  MOVE R12 R10
  NEWTABLE R13 4 0
  GETTABLEKS R14 R8 K24 ["name"]
  DUPCLOSURE R15 K25 [PROTO_0]
  CAPTURE VAL R3
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R7 K24 ["name"]
  DUPCLOSURE R15 K26 [PROTO_1]
  CAPTURE VAL R3
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R6 K24 ["name"]
  DUPCLOSURE R15 K27 [PROTO_2]
  CAPTURE VAL R3
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R5 K24 ["name"]
  DUPCLOSURE R15 K28 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLE R15 R13 R14
  CALL R11 2 -1
  RETURN R11 -1
