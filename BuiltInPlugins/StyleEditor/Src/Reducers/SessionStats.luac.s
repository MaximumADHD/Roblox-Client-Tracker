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
  DUPTABLE R8 K19 [{"SessionStartTimestamp", "TotalPluginFocusTimeSeconds", "PluginFocusPeriodStartTimestamp", "PluginFocusEndWithoutStartCount"}]
  LOADN R9 0
  SETTABLEKS R9 R8 K15 ["SessionStartTimestamp"]
  LOADN R9 0
  SETTABLEKS R9 R8 K16 ["TotalPluginFocusTimeSeconds"]
  LOADNIL R9
  SETTABLEKS R9 R8 K17 ["PluginFocusPeriodStartTimestamp"]
  LOADN R9 0
  SETTABLEKS R9 R8 K18 ["PluginFocusEndWithoutStartCount"]
  GETTABLEKS R9 R1 K20 ["createReducer"]
  MOVE R10 R8
  NEWTABLE R11 4 0
  GETTABLEKS R12 R5 K21 ["name"]
  DUPCLOSURE R13 K22 [PROTO_0]
  CAPTURE VAL R3
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R6 K21 ["name"]
  DUPCLOSURE R13 K23 [PROTO_1]
  CAPTURE VAL R3
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R7 K21 ["name"]
  DUPCLOSURE R13 K24 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  CALL R9 2 -1
  RETURN R9 -1
