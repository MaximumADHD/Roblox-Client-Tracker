PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETIMPORT                        R3 K3 [os.time]
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R5 R2 K4 ["SessionStats"]
        8 GETTABLEKS                       R5 R5 K5 ["SessionStartTimestamp"]
       10 SUB                              R4 R3 R5
       11 LOADN                            R5 0
       12 GETTABLEKS                       R6 R2 K4 ["SessionStats"]
       14 GETTABLEKS                       R6 R6 K6 ["PluginFocusEndWithoutStartCount"]
       16 GETTABLEKS                       R7 R2 K4 ["SessionStats"]
       18 GETTABLEKS                       R7 R7 K7 ["PluginFocusEndWithStartCount"]
       20 LOADN                            R8 0
       21 JUMPIFNOTLT                      R8 R6 ; [+4]
       23 ADD                              R9 R6 R7
       24 DIV                              R8 R6 R9
       25 MULK                             R5 R8 K8 [100]
       26 GETTABLEKS                       R8 R1 K9 ["Telemetry"]
       28 GETUPVAL                         R11 0
       29 DUPTABLE                         R12 K13 [{"sessionLengthSeconds", "focusTimeSeconds", "unmatchedFocusEndCount"}]
       30 SETTABLEKS                       R4 R12 K10 ["sessionLengthSeconds"]
       32 GETTABLEKS                       R13 R2 K4 ["SessionStats"]
       34 GETTABLEKS                       R13 R13 K14 ["TotalPluginFocusTimeSeconds"]
       36 SETTABLEKS                       R13 R12 K11 ["focusTimeSeconds"]
       38 SETTABLEKS                       R5 R12 K12 ["unmatchedFocusEndCount"]
       40 CALL                             R11 1 -1
       41 NAMECALL                         R9 R8 K15 ["logTelemetryEvent"]
       43 CALL                             R9 -1 0
       44 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Resources"]
       17 GETTABLEKS                       R2 R2 K7 ["Telemetry"]
       19 GETTABLEKS                       R2 R2 K8 ["PluginUnmountedEvent"]
       21 CALL                             R1 1 1
       22 GETIMPORT                        R2 K4 [require]
       24 GETTABLEKS                       R3 R0 K5 ["Src"]
       26 GETTABLEKS                       R3 R3 K9 ["Reducers"]
       28 GETTABLEKS                       R3 R3 K10 ["RootReducer"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K4 [require]
       33 GETTABLEKS                       R4 R0 K5 ["Src"]
       35 GETTABLEKS                       R4 R4 K11 ["Thunks"]
       37 GETTABLEKS                       R4 R4 K12 ["Types"]
       39 CALL                             R3 1 1
       40 DUPCLOSURE                       R4 K13 [PROTO_1]
       41 CAPTURE                          VAL R1
       42 RETURN                           R4 1
