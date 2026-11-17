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
        0 GETTABLEKS                       R3 R0 K0 ["telemetry"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["logRobloxTelemetryEvent"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getTelemetryEvent"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AnnotationsPluginActionEvent"]
        3 RETURN                           R1 1

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 DUPTABLE                         R2 K2 [{"logRobloxTelemetryEvent"}]
        4 MOVE                             R3 R0
        5 JUMPIF                           R3 ; [+1]
        6 DUPCLOSURE                       R3 K3 [PROTO_5]
        7 SETTABLEKS                       R3 R2 K1 ["logRobloxTelemetryEvent"]
        9 CALL                             R1 1 1
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["TelemetryUtils"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["ContextServices"]
       25 GETTABLEKS                       R3 R3 K12 ["ContextItem"]
       27 LOADK                            R6 K13 ["Telemetry"]
       28 NAMECALL                         R4 R3 K14 ["extend"]
       30 CALL                             R4 2 1
       31 DUPCLOSURE                       R5 K15 [PROTO_0]
       32 CAPTURE                          VAL R4
       33 SETTABLEKS                       R5 R4 K16 ["new"]
       35 DUPCLOSURE                       R5 K17 [PROTO_1]
       36 SETTABLEKS                       R5 R4 K18 ["get"]
       38 DUPCLOSURE                       R5 K19 [PROTO_2]
       39 SETTABLEKS                       R5 R4 K20 ["logRobloxTelemetryEvent"]
       41 DUPCLOSURE                       R5 K21 [PROTO_3]
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R5 R4 K22 ["getTelemetryEvent"]
       45 DUPCLOSURE                       R5 K23 [PROTO_4]
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R5 R4 K24 ["getAnnotationsPluginActionEvent"]
       49 DUPCLOSURE                       R5 K25 [PROTO_6]
       50 CAPTURE                          VAL R4
       51 SETTABLEKS                       R5 R4 K26 ["mock"]
       53 RETURN                           R4 1
