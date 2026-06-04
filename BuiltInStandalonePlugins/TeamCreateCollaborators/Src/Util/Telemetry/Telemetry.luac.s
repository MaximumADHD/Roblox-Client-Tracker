PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FFlagTeamCreateCollaboratorsTelemetry"]
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R5 2
        7 DUPTABLE                         R6 K4 [{"source", "details", "statusCode"}]
        8 SETTABLEKS                       R0 R6 K1 ["source"]
       10 SETTABLEKS                       R1 R6 K2 ["details"]
       12 SETTABLEKS                       R2 R6 K3 ["statusCode"]
       14 NAMECALL                         R3 R3 K5 ["logRobloxTelemetryEvent"]
       16 CALL                             R3 3 0
       17 RETURN                           R0 0

PROTO_1:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+18]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["sendError"]
       10 MOVE                             R3 R0
       11 GETTABLEKS                       R5 R1 K4 ["statusMessage"]
       13 JUMPIF                           R5 ; [+2]
       14 GETTABLEKS                       R5 R1 K5 ["body"]
       16 FASTCALL1                        TOSTRING R5 ; [+2]
       17 GETIMPORT                        R4 K7 [tostring]
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R5 R1 K8 ["statusCode"]
       22 CALL                             R2 3 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K3 ["sendError"]
       27 MOVE                             R3 R0
       28 FASTCALL1                        TOSTRING R1 ; [+3]
       29 MOVE                             R5 R1
       30 GETIMPORT                        R4 K7 [tostring]
       32 CALL                             R4 1 1
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagTeamCreateCollaboratorsTelemetry"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R3 2
        7 DUPTABLE                         R4 K3 [{"telemetryType", "action"}]
        8 LOADK                            R5 K4 ["featureShown"]
        9 SETTABLEKS                       R5 R4 K1 ["telemetryType"]
       11 SETTABLEKS                       R0 R4 K2 ["action"]
       13 NAMECALL                         R1 R1 K5 ["logRobloxTelemetryEvent"]
       15 CALL                             R1 3 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagTeamCreateCollaboratorsTelemetry"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R3 2
        7 DUPTABLE                         R4 K3 [{"telemetryType", "action"}]
        8 LOADK                            R5 K4 ["buttonClicked"]
        9 SETTABLEKS                       R5 R4 K1 ["telemetryType"]
       11 SETTABLEKS                       R0 R4 K2 ["action"]
       13 NAMECALL                         R1 R1 K5 ["logRobloxTelemetryEvent"]
       15 CALL                             R1 3 0
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TeamCreateCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TelemetryProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Bin"]
       18 GETTABLEKS                       R3 R3 K9 ["Common"]
       20 GETTABLEKS                       R3 R3 K10 ["flags"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K11 ["Parent"]
       29 GETTABLEKS                       R4 R4 K12 ["TeamCreateCollaboratorsErrorEvent"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K11 ["Parent"]
       38 GETTABLEKS                       R5 R5 K13 ["TeamCreateCollaboratorsTelemetryEvent"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R1 K14 ["new"]
       43 CALL                             R5 0 1
       44 NEWTABLE                         R6 4 0
       46 DUPCLOSURE                       R7 K15 [PROTO_0]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R3
       50 SETTABLEKS                       R7 R6 K16 ["sendError"]
       52 DUPCLOSURE                       R7 K17 [PROTO_1]
       53 CAPTURE                          VAL R6
       54 SETTABLEKS                       R7 R6 K18 ["sendErrorFromCatch"]
       56 DUPCLOSURE                       R7 K19 [PROTO_2]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R7 R6 K20 ["sendFeatureShown"]
       62 DUPCLOSURE                       R7 K21 [PROTO_3]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R4
       66 SETTABLEKS                       R7 R6 K22 ["sendButtonClicked"]
       68 RETURN                           R6 1
