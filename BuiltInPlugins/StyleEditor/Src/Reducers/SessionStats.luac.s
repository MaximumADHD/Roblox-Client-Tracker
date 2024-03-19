PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"SessionStartTimestamp"}]
  GETTABLEKS R5 R1 K2 ["startTimestamp"]
  SETTABLEKS R5 R4 K0 ["SessionStartTimestamp"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"PluginFocusPeriodStartTimestamp"}]
  GETTABLEKS R5 R1 K2 ["focusStartTimestamp"]
  SETTABLEKS R5 R4 K0 ["PluginFocusPeriodStartTimestamp"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETTABLEKS R3 R1 K0 ["focusEndTimestamp"]
  GETTABLEKS R5 R0 K2 ["PluginFocusPeriodStartTimestamp"]
  ORK R4 R5 K1 [0]
  SUB R2 R3 R4
  GETTABLEKS R4 R0 K3 ["TotalPluginFocusTimeSeconds"]
  ADD R3 R4 R2
  GETUPVAL R4 0
  MOVE R5 R0
  DUPTABLE R6 K4 [{"PluginFocusPeriodStartTimestamp", "TotalPluginFocusTimeSeconds"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["None"]
  SETTABLEKS R7 R6 K2 ["PluginFocusPeriodStartTimestamp"]
  SETTABLEKS R3 R6 K3 ["TotalPluginFocusTimeSeconds"]
  CALL R4 2 -1
  RETURN R4 -1

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
  GETTABLEKS R6 R7 K12 ["SetSessionStartTimestamp"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R4 K11 ["SessionStats"]
  GETTABLEKS R7 R8 K13 ["PluginFocusStart"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R4 K11 ["SessionStats"]
  GETTABLEKS R8 R9 K14 ["PluginFocusEnd"]
  CALL R7 1 1
  DUPTABLE R8 K18 [{"SessionStartTimestamp", "TotalPluginFocusTimeSeconds", "PluginFocusPeriodStartTimestamp"}]
  LOADN R9 0
  SETTABLEKS R9 R8 K15 ["SessionStartTimestamp"]
  LOADN R9 0
  SETTABLEKS R9 R8 K16 ["TotalPluginFocusTimeSeconds"]
  LOADNIL R9
  SETTABLEKS R9 R8 K17 ["PluginFocusPeriodStartTimestamp"]
  GETTABLEKS R9 R1 K19 ["createReducer"]
  MOVE R10 R8
  NEWTABLE R11 4 0
  GETTABLEKS R12 R5 K20 ["name"]
  DUPCLOSURE R13 K21 [PROTO_0]
  CAPTURE VAL R3
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R6 K20 ["name"]
  DUPCLOSURE R13 K22 [PROTO_1]
  CAPTURE VAL R3
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R7 K20 ["name"]
  DUPCLOSURE R13 K23 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  CALL R9 2 -1
  RETURN R9 -1
