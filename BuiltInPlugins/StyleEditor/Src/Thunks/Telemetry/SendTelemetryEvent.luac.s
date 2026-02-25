PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["Telemetry"]
        2 GETUPVAL                         R4 0
        3 NAMECALL                         R2 R2 K1 ["logTelemetryEvent"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Reducers"]
       17 GETTABLEKS                       R2 R3 K7 ["RootReducer"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R6 R0 K5 ["Src"]
       24 GETTABLEKS                       R5 R6 K8 ["Contexts"]
       26 GETTABLEKS                       R4 R5 K9 ["Telemetry"]
       28 GETTABLEKS                       R3 R4 K10 ["Types"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K4 [require]
       33 GETTABLEKS                       R6 R0 K5 ["Src"]
       35 GETTABLEKS                       R5 R6 K11 ["Thunks"]
       37 GETTABLEKS                       R4 R5 K10 ["Types"]
       39 CALL                             R3 1 1
       40 DUPCLOSURE                       R4 K12 [PROTO_1]
       41 RETURN                           R4 1
