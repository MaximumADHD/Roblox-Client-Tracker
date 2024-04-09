PROTO_0:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETIMPORT R3 K3 [os.time]
  CALL R3 0 1
  GETTABLEKS R6 R2 K4 ["SessionStats"]
  GETTABLEKS R5 R6 K5 ["SessionStartTimestamp"]
  SUB R4 R3 R5
  GETTABLEKS R5 R1 K6 ["Telemetry"]
  GETUPVAL R8 0
  DUPTABLE R9 K11 [{"sessionLengthSeconds", "focusTimeSeconds", "unmatchedFocusEndCount", "buttonPressCounts"}]
  SETTABLEKS R4 R9 K7 ["sessionLengthSeconds"]
  GETTABLEKS R11 R2 K4 ["SessionStats"]
  GETTABLEKS R10 R11 K12 ["TotalPluginFocusTimeSeconds"]
  SETTABLEKS R10 R9 K8 ["focusTimeSeconds"]
  GETTABLEKS R11 R2 K4 ["SessionStats"]
  GETTABLEKS R10 R11 K13 ["PluginFocusEndWithoutStartCount"]
  SETTABLEKS R10 R9 K9 ["unmatchedFocusEndCount"]
  GETTABLEKS R11 R2 K4 ["SessionStats"]
  GETTABLEKS R10 R11 K14 ["ButtonPressCounts"]
  SETTABLEKS R10 R9 K10 ["buttonPressCounts"]
  CALL R8 1 -1
  NAMECALL R6 R5 K15 ["logTelemetryEvent"]
  CALL R6 -1 0
  RETURN R0 0

PROTO_1:
  DUPCLOSURE R0 K0 [PROTO_0]
  CAPTURE UPVAL U0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K6 ["Resources"]
  GETTABLEKS R3 R4 K7 ["Telemetry"]
  GETTABLEKS R2 R3 K8 ["PluginUnmountedEvent"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K10 ["Reducers"]
  GETTABLEKS R4 R5 K11 ["RootReducer"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K12 ["Thunks"]
  GETTABLEKS R5 R6 K9 ["Types"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_1]
  CAPTURE VAL R1
  RETURN R5 1
