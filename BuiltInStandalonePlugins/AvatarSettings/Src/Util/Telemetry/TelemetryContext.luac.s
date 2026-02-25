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
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 LOADK                            R7 K0 ["Event not found:"]
        3 FASTCALL1                        TOSTRING R1 ; [+3]
        4 MOVE                             R9 R1
        5 GETIMPORT                        R8 K2 [tostring]
        7 CALL                             R8 1 1
        8 CONCAT                           R6 R7 R8
        9 FASTCALL2                        ASSERT R3 R6 ; [+4]
       11 MOVE                             R5 R3
       12 GETIMPORT                        R4 K4 [assert]
       14 CALL                             R4 2 0
       15 LOADK                            R5 K5 ["AvatarSettings_"]
       16 MOVE                             R6 R1
       17 CONCAT                           R4 R5 R6
       18 SETTABLEKS                       R4 R3 K6 ["eventName"]
       20 GETTABLEKS                       R4 R0 K7 ["telemetry"]
       22 MOVE                             R6 R3
       23 MOVE                             R7 R2
       24 NAMECALL                         R4 R4 K8 ["logTelemetryCounterEvent"]
       26 CALL                             R4 3 0
       27 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 DUPTABLE                         R2 K2 [{"logTelemetryCounterEvent"}]
        4 MOVE                             R3 R0
        5 JUMPIF                           R3 ; [+1]
        6 DUPCLOSURE                       R3 K3 [PROTO_3]
        7 SETTABLEKS                       R3 R2 K1 ["logTelemetryCounterEvent"]
        9 CALL                             R1 1 1
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R2 R3 K9 ["ContextItem"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R7 R0 K10 ["Src"]
       22 GETTABLEKS                       R6 R7 K11 ["Util"]
       24 GETTABLEKS                       R5 R6 K12 ["Telemetry"]
       26 GETTABLEKS                       R4 R5 K13 ["Events"]
       28 CALL                             R3 1 1
       29 LOADK                            R6 K12 ["Telemetry"]
       30 NAMECALL                         R4 R2 K14 ["extend"]
       32 CALL                             R4 2 1
       33 DUPCLOSURE                       R5 K15 [PROTO_0]
       34 CAPTURE                          VAL R4
       35 SETTABLEKS                       R5 R4 K16 ["new"]
       37 DUPCLOSURE                       R5 K17 [PROTO_1]
       38 SETTABLEKS                       R5 R4 K18 ["get"]
       40 DUPCLOSURE                       R5 K19 [PROTO_2]
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R5 R4 K20 ["logCounter"]
       44 DUPCLOSURE                       R5 K21 [PROTO_4]
       45 CAPTURE                          VAL R4
       46 SETTABLEKS                       R5 R4 K22 ["mock"]
       48 RETURN                           R4 1
