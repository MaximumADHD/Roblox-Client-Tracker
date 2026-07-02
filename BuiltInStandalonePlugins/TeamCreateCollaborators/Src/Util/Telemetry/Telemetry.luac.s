PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 DUPTABLE                         R6 K3 [{"source", "details", "statusCode"}]
        3 SETTABLEKS                       R0 R6 K0 ["source"]
        5 SETTABLEKS                       R1 R6 K1 ["details"]
        7 SETTABLEKS                       R2 R6 K2 ["statusCode"]
        9 NAMECALL                         R3 R3 K4 ["logRobloxTelemetryEvent"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

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
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K3 [{[1] = "featureShown", ["action"]}]
        3 SETTABLEKS                       R0 R4 K2 ["action"]
        5 NAMECALL                         R1 R1 K4 ["logRobloxTelemetryEvent"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K3 [{[1] = "buttonClicked", ["action"]}]
        3 SETTABLEKS                       R0 R4 K2 ["action"]
        5 NAMECALL                         R1 R1 K4 ["logRobloxTelemetryEvent"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

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
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["TeamCreateCollaboratorsErrorEvent"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K8 ["Parent"]
       29 GETTABLEKS                       R4 R4 K10 ["TeamCreateCollaboratorsTelemetryEvent"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R1 K11 ["new"]
       34 CALL                             R4 0 1
       35 NEWTABLE                         R5 4 0
       37 DUPCLOSURE                       R6 K12 [PROTO_0]
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R6 R5 K13 ["sendError"]
       42 DUPCLOSURE                       R6 K14 [PROTO_1]
       43 CAPTURE                          VAL R5
       44 SETTABLEKS                       R6 R5 K15 ["sendErrorFromCatch"]
       46 DUPCLOSURE                       R6 K16 [PROTO_2]
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R6 R5 K17 ["sendFeatureShown"]
       51 DUPCLOSURE                       R6 K18 [PROTO_3]
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R6 R5 K19 ["sendButtonClicked"]
       56 RETURN                           R5 1
