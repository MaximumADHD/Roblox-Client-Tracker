PROTO_0:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["TelemetryContext.new expects a Telemetry instance."]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 DUPTABLE                         R1 K4 [{"telemetry"}]
        8 SETTABLEKS                       R0 R1 K3 ["telemetry"]
       10 GETUPVAL                         R4 0
       11 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K6 [setmetatable]
       16 CALL                             R2 2 0
       17 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["telemetry"]
        2 RETURN                           R1 1

PROTO_2:
        0 JUMPIFNOT                        R2 ; [+16]
        1 GETIMPORT                        R3 K1 [pairs]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 3
        5 FORGPREP_NEXT                    R3
        6 GETTABLE                         R8 R1 R6
        7 GETUPVAL                         R9 0
        8 GETTABLE                         R10 R1 R6
        9 GETTABLEKS                       R10 R10 K2 ["data"]
       11 MOVE                             R11 R2
       12 CALL                             R9 2 1
       13 SETTABLEKS                       R9 R8 K2 ["data"]
       15 FORGLOOP                         R3 2 ; [-10]
       17 GETTABLEKS                       R3 R0 K3 ["telemetry"]
       19 MOVE                             R5 R1
       20 NAMECALL                         R3 R3 K4 ["logEvent"]
       22 CALL                             R3 2 0
       23 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 DUPTABLE                         R2 K2 [{"logEvent"}]
        4 MOVE                             R3 R0
        5 JUMPIF                           R3 ; [+1]
        6 DUPCLOSURE                       R3 K3 [PROTO_3]
        7 SETTABLEKS                       R3 R2 K1 ["logEvent"]
        9 CALL                             R1 1 1
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["join"]
       23 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       25 GETTABLEKS                       R4 R4 K11 ["ContextItem"]
       27 LOADK                            R7 K12 ["Telemetry"]
       28 NAMECALL                         R5 R4 K13 ["extend"]
       30 CALL                             R5 2 1
       31 DUPCLOSURE                       R6 K14 [PROTO_0]
       32 CAPTURE                          VAL R5
       33 SETTABLEKS                       R6 R5 K15 ["new"]
       35 DUPCLOSURE                       R6 K16 [PROTO_1]
       36 SETTABLEKS                       R6 R5 K17 ["get"]
       38 DUPCLOSURE                       R6 K18 [PROTO_2]
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R6 R5 K19 ["logEvent"]
       42 DUPCLOSURE                       R6 K20 [PROTO_4]
       43 CAPTURE                          VAL R5
       44 SETTABLEKS                       R6 R5 K21 ["mock"]
       46 RETURN                           R5 1
