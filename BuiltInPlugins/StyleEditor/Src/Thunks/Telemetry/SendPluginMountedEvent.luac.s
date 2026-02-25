PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["Telemetry"]
        2 GETUPVAL                         R5 0
        3 DUPTABLE                         R6 K2 [{"loadTimeMillis"}]
        4 GETUPVAL                         R7 1
        5 SETTABLEKS                       R7 R6 K1 ["loadTimeMillis"]
        7 CALL                             R5 1 -1
        8 NAMECALL                         R3 R2 K3 ["logTelemetryEvent"]
       10 CALL                             R3 -1 0
       11 GETIMPORT                        R3 K6 [os.time]
       13 CALL                             R3 0 1
       14 GETUPVAL                         R6 2
       15 MOVE                             R7 R3
       16 CALL                             R6 1 -1
       17 NAMECALL                         R4 R0 K7 ["dispatch"]
       19 CALL                             R4 -1 0
       20 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R5 R0 K5 ["Src"]
       15 GETTABLEKS                       R4 R5 K6 ["Resources"]
       17 GETTABLEKS                       R3 R4 K7 ["Telemetry"]
       19 GETTABLEKS                       R2 R3 K8 ["PluginMountedEvent"]
       21 CALL                             R1 1 1
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R2 R3 K9 ["Actions"]
       26 GETIMPORT                        R3 K4 [require]
       28 GETTABLEKS                       R5 R2 K10 ["SessionStats"]
       30 GETTABLEKS                       R4 R5 K11 ["SetSessionStartTimestamp"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K4 [require]
       35 GETTABLEKS                       R6 R0 K5 ["Src"]
       37 GETTABLEKS                       R5 R6 K12 ["Types"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K4 [require]
       42 GETTABLEKS                       R8 R0 K5 ["Src"]
       44 GETTABLEKS                       R7 R8 K13 ["Reducers"]
       46 GETTABLEKS                       R6 R7 K14 ["RootReducer"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R9 R0 K5 ["Src"]
       53 GETTABLEKS                       R8 R9 K15 ["Thunks"]
       55 GETTABLEKS                       R7 R8 K12 ["Types"]
       57 CALL                             R6 1 1
       58 DUPCLOSURE                       R7 K16 [PROTO_1]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R3
       61 RETURN                           R7 1
