PROTO_0:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["TelemetryContext.new expects a Telemetry instance."]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 DUPTABLE                         R1 K5 [{"telemetry", "tutorialData"}]
        8 SETTABLEKS                       R0 R1 K3 ["telemetry"]
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R1 K4 ["tutorialData"]
       13 GETUPVAL                         R4 0
       14 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K7 [setmetatable]
       19 CALL                             R2 2 0
       20 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["telemetry"]
        2 RETURN                           R1 1

PROTO_2:
        0 SETTABLEKS                       R1 R0 K0 ["tutorialData"]
        2 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["tutorialData"]
        2 GETTABLEKS                       R4 R0 K1 ["telemetry"]
        4 MOVE                             R6 R1
        5 LOADNIL                          R7
        6 GETUPVAL                         R8 0
        7 DUPTABLE                         R9 K8 [{"studioSessionId", "clientId", "tutorialTitle", "tutorialSummary", "tutorialDifficulty", "tutorialCategories"}]
        8 GETUPVAL                         R10 1
        9 NAMECALL                         R10 R10 K9 ["GetSessionId"]
       11 CALL                             R10 1 1
       12 SETTABLEKS                       R10 R9 K2 ["studioSessionId"]
       14 GETUPVAL                         R10 1
       15 NAMECALL                         R10 R10 K10 ["GetClientId"]
       17 CALL                             R10 1 1
       18 SETTABLEKS                       R10 R9 K3 ["clientId"]
       20 JUMPIFNOT                        R3 ; [+8]
       21 GETTABLEKS                       R11 R3 K11 ["info"]
       23 JUMPIFNOT                        R11 ; [+5]
       24 GETTABLEKS                       R11 R3 K11 ["info"]
       26 GETTABLEKS                       R10 R11 K12 ["title"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R10
       30 SETTABLEKS                       R10 R9 K4 ["tutorialTitle"]
       32 JUMPIFNOT                        R3 ; [+8]
       33 GETTABLEKS                       R11 R3 K11 ["info"]
       35 JUMPIFNOT                        R11 ; [+5]
       36 GETTABLEKS                       R11 R3 K11 ["info"]
       38 GETTABLEKS                       R10 R11 K13 ["summary"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R10
       42 SETTABLEKS                       R10 R9 K5 ["tutorialSummary"]
       44 JUMPIFNOT                        R3 ; [+8]
       45 GETTABLEKS                       R11 R3 K11 ["info"]
       47 JUMPIFNOT                        R11 ; [+5]
       48 GETTABLEKS                       R11 R3 K11 ["info"]
       50 GETTABLEKS                       R10 R11 K14 ["difficulty"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R10
       54 SETTABLEKS                       R10 R9 K6 ["tutorialDifficulty"]
       56 JUMPIFNOT                        R3 ; [+8]
       57 GETTABLEKS                       R11 R3 K11 ["info"]
       59 JUMPIFNOT                        R11 ; [+5]
       60 GETTABLEKS                       R11 R3 K11 ["info"]
       62 GETTABLEKS                       R10 R11 K15 ["categories"]
       64 JUMP                             ; [+1]
       65 LOADNIL                          R10
       66 SETTABLEKS                       R10 R9 K7 ["tutorialCategories"]
       68 MOVE                             R10 R2
       69 CALL                             R8 2 -1
       70 NAMECALL                         R4 R4 K16 ["logRobloxTelemetryEvent"]
       72 CALL                             R4 -1 -1
       73 RETURN                           R4 -1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 DUPTABLE                         R2 K2 [{"logRobloxTelemetryEvent"}]
        4 MOVE                             R3 R0
        5 JUMPIF                           R3 ; [+1]
        6 DUPCLOSURE                       R3 K3 [PROTO_4]
        7 SETTABLEKS                       R3 R2 K1 ["logRobloxTelemetryEvent"]
        9 CALL                             R1 1 1
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["Services"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["RbxAnalyticsService"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETIMPORT                        R7 K1 [script]
       29 GETTABLEKS                       R6 R7 K11 ["Parent"]
       31 GETTABLEKS                       R5 R6 K12 ["TelemetryProtocolTypes"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R7 R0 K13 ["Packages"]
       38 GETTABLEKS                       R6 R7 K14 ["Framework"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R8 R0 K13 ["Packages"]
       45 GETTABLEKS                       R7 R8 K15 ["Dash"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R6 K16 ["join"]
       50 GETTABLEKS                       R9 R5 K17 ["ContextServices"]
       52 GETTABLEKS                       R8 R9 K18 ["ContextItem"]
       54 LOADK                            R11 K19 ["Telemetry"]
       55 NAMECALL                         R9 R8 K20 ["extend"]
       57 CALL                             R9 2 1
       58 DUPCLOSURE                       R10 K21 [PROTO_0]
       59 CAPTURE                          VAL R9
       60 SETTABLEKS                       R10 R9 K22 ["new"]
       62 DUPCLOSURE                       R10 K23 [PROTO_1]
       63 SETTABLEKS                       R10 R9 K24 ["get"]
       65 DUPCLOSURE                       R10 K25 [PROTO_2]
       66 SETTABLEKS                       R10 R9 K26 ["setTutorialData"]
       68 DUPCLOSURE                       R10 K27 [PROTO_3]
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R3
       71 SETTABLEKS                       R10 R9 K28 ["log"]
       73 DUPCLOSURE                       R10 K29 [PROTO_5]
       74 CAPTURE                          VAL R9
       75 SETTABLEKS                       R10 R9 K30 ["mock"]
       77 RETURN                           R9 1
