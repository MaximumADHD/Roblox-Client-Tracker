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
        3 LOADNIL                          R6
        4 GETUPVAL                         R7 0
        5 DUPTABLE                         R8 K3 [{"studioSessionId", "clientId"}]
        6 GETUPVAL                         R9 1
        7 NAMECALL                         R9 R9 K4 ["GetSessionId"]
        9 CALL                             R9 1 1
       10 SETTABLEKS                       R9 R8 K1 ["studioSessionId"]
       12 GETUPVAL                         R9 1
       13 NAMECALL                         R9 R9 K5 ["GetClientId"]
       15 CALL                             R9 1 1
       16 SETTABLEKS                       R9 R8 K2 ["clientId"]
       18 MOVE                             R9 R2
       19 CALL                             R7 2 -1
       20 NAMECALL                         R3 R3 K6 ["logRobloxTelemetryEvent"]
       22 CALL                             R3 -1 -1
       23 RETURN                           R3 -1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 DUPTABLE                         R2 K2 [{"logRobloxTelemetryEvent"}]
        4 MOVE                             R3 R0
        5 JUMPIF                           R3 ; [+1]
        6 DUPCLOSURE                       R3 K3 [PROTO_3]
        7 SETTABLEKS                       R3 R2 K1 ["logRobloxTelemetryEvent"]
        9 CALL                             R1 1 1
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["RbxAnalyticsService"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETIMPORT                        R4 K1 [script]
       22 GETTABLEKS                       R4 R4 K10 ["Parent"]
       24 GETTABLEKS                       R4 R4 K11 ["TelemetryProtocolTypes"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K12 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Framework"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K12 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["Dash"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K15 ["join"]
       43 GETTABLEKS                       R7 R4 K16 ["ContextServices"]
       45 GETTABLEKS                       R7 R7 K17 ["ContextItem"]
       47 LOADK                            R10 K18 ["Telemetry"]
       48 NAMECALL                         R8 R7 K19 ["extend"]
       50 CALL                             R8 2 1
       51 DUPCLOSURE                       R9 K20 [PROTO_0]
       52 CAPTURE                          VAL R8
       53 SETTABLEKS                       R9 R8 K21 ["new"]
       55 DUPCLOSURE                       R9 K22 [PROTO_1]
       56 SETTABLEKS                       R9 R8 K23 ["get"]
       58 DUPCLOSURE                       R9 K24 [PROTO_2]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R9 R8 K25 ["log"]
       63 DUPCLOSURE                       R9 K26 [PROTO_4]
       64 CAPTURE                          VAL R8
       65 SETTABLEKS                       R9 R8 K27 ["mock"]
       67 RETURN                           R8 1
