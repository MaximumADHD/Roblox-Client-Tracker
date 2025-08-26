PROTO_0:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETIMPORT R3 K3 [os.time]
  CALL R3 0 1
  GETTABLEKS R6 R2 K4 ["SessionStats"]
  GETTABLEKS R5 R6 K5 ["SessionStartTimestamp"]
  SUB R4 R3 R5
  LOADN R5 0
  GETTABLEKS R7 R2 K4 ["SessionStats"]
  GETTABLEKS R6 R7 K6 ["PluginFocusEndWithoutStartCount"]
  GETTABLEKS R8 R2 K4 ["SessionStats"]
  GETTABLEKS R7 R8 K7 ["PluginFocusEndWithStartCount"]
  LOADN R8 0
  JUMPIFNOTLT R8 R6 [+4]
  ADD R9 R6 R7
  DIV R8 R6 R9
  MULK R5 R8 K8 [100]
  GETTABLEKS R8 R1 K9 ["Telemetry"]
  GETUPVAL R11 0
  DUPTABLE R12 K13 [{"sessionLengthSeconds", "focusTimeSeconds", "unmatchedFocusEndCount"}]
  SETTABLEKS R4 R12 K10 ["sessionLengthSeconds"]
  GETTABLEKS R14 R2 K4 ["SessionStats"]
  GETTABLEKS R13 R14 K14 ["TotalPluginFocusTimeSeconds"]
  SETTABLEKS R13 R12 K11 ["focusTimeSeconds"]
  SETTABLEKS R5 R12 K12 ["unmatchedFocusEndCount"]
  CALL R11 1 -1
  NAMECALL R9 R8 K15 ["logTelemetryEvent"]
  CALL R9 -1 0
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
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K9 ["Reducers"]
  GETTABLEKS R3 R4 K10 ["RootReducer"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K11 ["Thunks"]
  GETTABLEKS R4 R5 K12 ["Types"]
  CALL R3 1 1
  DUPCLOSURE R4 K13 [PROTO_1]
  CAPTURE VAL R1
  RETURN R4 1
