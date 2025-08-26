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
  GETTABLEKS R2 R0 K0 ["PluginFocusEndWithStartCount"]
  GETTABLEKS R3 R0 K1 ["PluginFocusEndWithoutStartCount"]
  LOADN R4 0
  GETTABLEKS R5 R0 K2 ["PluginFocusPeriodStartTimestamp"]
  JUMPIFNOT R5 [+7]
  GETTABLEKS R5 R1 K3 ["focusEndTimestamp"]
  GETTABLEKS R6 R0 K2 ["PluginFocusPeriodStartTimestamp"]
  SUB R4 R5 R6
  ADDK R2 R2 K4 [1]
  JUMP [+1]
  ADDK R3 R3 K4 [1]
  GETTABLEKS R6 R0 K5 ["TotalPluginFocusTimeSeconds"]
  ADD R5 R6 R4
  GETUPVAL R6 0
  MOVE R7 R0
  DUPTABLE R8 K6 [{"PluginFocusPeriodStartTimestamp", "TotalPluginFocusTimeSeconds", "PluginFocusEndWithStartCount", "PluginFocusEndWithoutStartCount"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K7 ["None"]
  SETTABLEKS R9 R8 K2 ["PluginFocusPeriodStartTimestamp"]
  SETTABLEKS R5 R8 K5 ["TotalPluginFocusTimeSeconds"]
  SETTABLEKS R2 R8 K0 ["PluginFocusEndWithStartCount"]
  SETTABLEKS R3 R8 K1 ["PluginFocusEndWithoutStartCount"]
  CALL R6 2 -1
  RETURN R6 -1

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
  GETTABLEKS R10 R0 K9 ["Src"]
  GETTABLEKS R9 R10 K15 ["Types"]
  CALL R8 1 1
  DUPTABLE R9 K22 [{"SessionStartTimestamp", "TotalPluginFocusTimeSeconds", "PluginFocusPeriodStartTimestamp", "PluginFocusEndWithStartCount", "PluginFocusEndWithoutStartCount", "ButtonPressCounts"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K16 ["SessionStartTimestamp"]
  LOADN R10 0
  SETTABLEKS R10 R9 K17 ["TotalPluginFocusTimeSeconds"]
  LOADNIL R10
  SETTABLEKS R10 R9 K18 ["PluginFocusPeriodStartTimestamp"]
  LOADN R10 0
  SETTABLEKS R10 R9 K19 ["PluginFocusEndWithStartCount"]
  LOADN R10 0
  SETTABLEKS R10 R9 K20 ["PluginFocusEndWithoutStartCount"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K21 ["ButtonPressCounts"]
  GETTABLEKS R10 R1 K23 ["createReducer"]
  MOVE R11 R9
  NEWTABLE R12 4 0
  GETTABLEKS R13 R7 K24 ["name"]
  DUPCLOSURE R14 K25 [PROTO_0]
  CAPTURE VAL R3
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R6 K24 ["name"]
  DUPCLOSURE R14 K26 [PROTO_1]
  CAPTURE VAL R3
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K24 ["name"]
  DUPCLOSURE R14 K27 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLE R14 R12 R13
  CALL R10 2 -1
  RETURN R10 -1
