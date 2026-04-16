PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Name"]
        3 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R3 K4 [{"studioSid", "clientId", "placeId", "userId"}]
        1 GETUPVAL                         R4 0
        2 NAMECALL                         R4 R4 K5 ["GetSessionId"]
        4 CALL                             R4 1 1
        5 SETTABLEKS                       R4 R3 K0 ["studioSid"]
        7 GETUPVAL                         R4 0
        8 NAMECALL                         R4 R4 K6 ["GetClientId"]
       10 CALL                             R4 1 1
       11 SETTABLEKS                       R4 R3 K1 ["clientId"]
       13 GETIMPORT                        R5 K8 [game]
       15 GETTABLEKS                       R4 R5 K9 ["PlaceId"]
       17 SETTABLEKS                       R4 R3 K2 ["placeId"]
       19 GETUPVAL                         R4 1
       20 NAMECALL                         R4 R4 K10 ["GetUserId"]
       22 CALL                             R4 1 1
       23 SETTABLEKS                       R4 R3 K3 ["userId"]
       25 GETIMPORT                        R4 K12 [pairs]
       27 MOVE                             R5 R2
       28 CALL                             R4 1 3
       29 FORGPREP_NEXT                    R4
       30 SETTABLE                         R8 R3 R7
       31 FORGLOOP                         R4 2 ; [-2]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R4 R5 K13 ["LogAnalytics"]
       36 CALL                             R4 0 1
       37 JUMPIFNOT                        R4 ; [+18]
       38 GETIMPORT                        R4 K15 [print]
       40 LOADK                            R5 K16 ["%s SendEvent eventName=%s args=%s"]
       41 LOADK                            R7 K17 ["Modeling"]
       42 FASTCALL1                        TOSTRING R1 ; [+3]
       43 MOVE                             R9 R1
       44 GETIMPORT                        R8 K19 [tostring]
       46 CALL                             R8 1 1
       47 GETUPVAL                         R9 3
       48 MOVE                             R11 R3
       49 NAMECALL                         R9 R9 K20 ["JSONEncode"]
       51 CALL                             R9 2 -1
       52 NAMECALL                         R5 R5 K21 ["format"]
       54 CALL                             R5 -1 -1
       55 CALL                             R4 -1 0
       56 GETUPVAL                         R4 0
       57 LOADK                            R6 K22 ["studio"]
       58 LOADK                            R7 K17 ["Modeling"]
       59 MOVE                             R8 R1
       60 MOVE                             R9 R3
       61 NAMECALL                         R4 R4 K23 ["SendEventDeferred"]
       63 CALL                             R4 5 0
       64 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["LogAnalytics"]
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+18]
        5 GETIMPORT                        R3 K2 [print]
        7 LOADK                            R4 K3 ["%s ReportCounter counterName=%s count=%s"]
        8 LOADK                            R6 K4 ["Modeling"]
        9 FASTCALL1                        TOSTRING R1 ; [+3]
       10 MOVE                             R8 R1
       11 GETIMPORT                        R7 K6 [tostring]
       13 CALL                             R7 1 1
       14 FASTCALL1                        TOSTRING R2 ; [+3]
       15 MOVE                             R9 R2
       16 GETIMPORT                        R8 K6 [tostring]
       18 CALL                             R8 1 1
       19 NAMECALL                         R4 R4 K7 ["format"]
       21 CALL                             R4 4 -1
       22 CALL                             R3 -1 0
       23 GETUPVAL                         R3 1
       24 MOVE                             R5 R1
       25 ORK                              R6 R2 K8 [1]
       26 NAMECALL                         R3 R3 K9 ["ReportCounter"]
       28 CALL                             R3 3 0
       29 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R2
        2 DUPTABLE                         R6 K1 [{"customFields"}]
        3 DUPTABLE                         R7 K3 [{"tool"}]
        4 SETTABLEKS                       R1 R7 K2 ["tool"]
        6 SETTABLEKS                       R7 R6 K0 ["customFields"]
        8 NAMECALL                         R3 R3 K4 ["LogCounter"]
       10 CALL                             R3 3 0
       11 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R3 K0 ["ReportStats"]
        5 CALL                             R3 3 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RbxAnalyticsService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["TelemetryService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["StudioService"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R6 K8 [script]
       27 GETTABLEKS                       R5 R6 K9 ["Parent"]
       29 GETTABLEKS                       R4 R5 K9 ["Parent"]
       31 GETIMPORT                        R5 K11 [require]
       33 GETTABLEKS                       R7 R4 K12 ["Utility"]
       35 GETTABLEKS                       R6 R7 K13 ["DebugFlags"]
       37 CALL                             R5 1 1
       38 NEWTABLE                         R6 4 0
       40 GETIMPORT                        R7 K15 [pcall]
       42 NEWCLOSURE                       R8 P0
       43 CAPTURE                          REF R1
       44 CALL                             R7 1 1
       45 JUMPIF                           R7 ; [+22]
       46 NEWTABLE                         R1 0 0
       48 DUPCLOSURE                       R7 K16 [PROTO_1]
       49 SETTABLEKS                       R7 R1 K17 ["SendEventDeferred"]
       51 DUPCLOSURE                       R7 K18 [PROTO_2]
       52 SETTABLEKS                       R7 R1 K19 ["ReportCounter"]
       54 DUPCLOSURE                       R7 K20 [PROTO_3]
       55 SETTABLEKS                       R7 R1 K21 ["GetSessionId"]
       57 DUPCLOSURE                       R7 K22 [PROTO_4]
       58 SETTABLEKS                       R7 R1 K23 ["GetClientId"]
       60 DUPCLOSURE                       R7 K24 [PROTO_5]
       61 SETTABLEKS                       R7 R1 K25 ["ReportStats"]
       63 NEWTABLE                         R2 0 0
       65 DUPCLOSURE                       R7 K26 [PROTO_6]
       66 SETTABLEKS                       R7 R2 K27 ["LogCounter"]
       68 JUMPIF                           R3 ; [+5]
       69 NEWTABLE                         R3 0 0
       71 DUPCLOSURE                       R7 K28 [PROTO_7]
       72 SETTABLEKS                       R7 R3 K29 ["GetUserId"]
       74 NEWCLOSURE                       R7 P8
       75 CAPTURE                          REF R1
       76 CAPTURE                          REF R3
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R0
       79 SETTABLEKS                       R7 R6 K30 ["sendEvent"]
       81 NEWCLOSURE                       R7 P9
       82 CAPTURE                          VAL R5
       83 CAPTURE                          REF R1
       84 SETTABLEKS                       R7 R6 K31 ["reportCounter"]
       86 NEWCLOSURE                       R7 P10
       87 CAPTURE                          REF R2
       88 SETTABLEKS                       R7 R6 K32 ["logTelemetryCounter"]
       90 NEWCLOSURE                       R7 P11
       91 CAPTURE                          REF R1
       92 SETTABLEKS                       R7 R6 K33 ["reportStats"]
       94 CLOSEUPVALS                      R1
       95 RETURN                           R6 1
