PROTO_0:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 GETUPVAL                         R2 0
        6 DUPTABLE                         R3 K4 [{"studioSid", "clientId", "placeId", "userId"}]
        7 GETUPVAL                         R4 1
        8 NAMECALL                         R4 R4 K5 ["GetSessionId"]
       10 CALL                             R4 1 1
       11 SETTABLEKS                       R4 R3 K0 ["studioSid"]
       13 GETUPVAL                         R4 1
       14 NAMECALL                         R4 R4 K6 ["GetClientId"]
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R4 R3 K1 ["clientId"]
       19 GETIMPORT                        R5 K8 [game]
       21 GETTABLEKS                       R4 R5 K9 ["PlaceId"]
       23 SETTABLEKS                       R4 R3 K2 ["placeId"]
       25 GETUPVAL                         R4 2
       26 NAMECALL                         R4 R4 K10 ["GetUserId"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K3 ["userId"]
       31 MOVE                             R4 R1
       32 CALL                             R2 2 1
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R3 R4 K11 ["LogAnalytics"]
       36 CALL                             R3 0 1
       37 JUMPIFNOT                        R3 ; [+18]
       38 GETIMPORT                        R3 K13 [print]
       40 LOADK                            R4 K14 ["%s SendEvent eventName=%s args=%s"]
       41 LOADK                            R6 K15 ["AssetImporter"]
       42 FASTCALL1                        TOSTRING R0 ; [+3]
       43 MOVE                             R8 R0
       44 GETIMPORT                        R7 K17 [tostring]
       46 CALL                             R7 1 1
       47 GETUPVAL                         R8 4
       48 MOVE                             R10 R2
       49 NAMECALL                         R8 R8 K18 ["JSONEncode"]
       51 CALL                             R8 2 -1
       52 NAMECALL                         R4 R4 K19 ["format"]
       54 CALL                             R4 -1 -1
       55 CALL                             R3 -1 0
       56 GETUPVAL                         R3 1
       57 LOADK                            R5 K20 ["studio"]
       58 LOADK                            R6 K15 ["AssetImporter"]
       59 MOVE                             R7 R0
       60 MOVE                             R8 R2
       61 NAMECALL                         R3 R3 K21 ["SendEventDeferred"]
       63 CALL                             R3 5 0
       64 RETURN                           R0 0

PROTO_1:
        0 ORK                              R1 R1 K0 [1]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K1 ["LogAnalytics"]
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+18]
        6 GETIMPORT                        R2 K3 [print]
        8 LOADK                            R3 K4 ["%s ReportCounter counterName=%s count=%s"]
        9 LOADK                            R5 K5 ["AssetImporter"]
       10 FASTCALL1                        TOSTRING R0 ; [+3]
       11 MOVE                             R7 R0
       12 GETIMPORT                        R6 K7 [tostring]
       14 CALL                             R6 1 1
       15 FASTCALL1                        TOSTRING R1 ; [+3]
       16 MOVE                             R8 R1
       17 GETIMPORT                        R7 K7 [tostring]
       19 CALL                             R7 1 1
       20 NAMECALL                         R3 R3 K8 ["format"]
       22 CALL                             R3 4 -1
       23 CALL                             R2 -1 0
       24 GETUPVAL                         R2 1
       25 MOVE                             R4 R0
       26 MOVE                             R5 R1
       27 NAMECALL                         R2 R2 K9 ["ReportCounter"]
       29 CALL                             R2 3 0
       30 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["importQueueEnabled"]
        2 NEWTABLE                         R3 0 0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["importQueueDisabled"]
        2 NEWTABLE                         R3 0 0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["importQueueHalted"]
        2 NEWTABLE                         R3 0 0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["importQueueParseHalted"]
        2 NEWTABLE                         R3 0 0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["importQueueStarted"]
        2 DUPTABLE                         R4 K2 [{"fileCount"}]
        3 SETTABLEKS                       R1 R4 K1 ["fileCount"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 DUPTABLE                         R3 K5 [{"ImportQueueEnabled", "ImportQueueDisabled", "ImportQueueHalted", "ImportQueueParseHalted", "ImportQueueStarted"}]
       10 NEWCLOSURE                       R4 P2
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R4 R3 K0 ["ImportQueueEnabled"]
       14 NEWCLOSURE                       R4 P3
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R4 R3 K1 ["ImportQueueDisabled"]
       18 NEWCLOSURE                       R4 P4
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R4 R3 K2 ["ImportQueueHalted"]
       22 NEWCLOSURE                       R4 P5
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R4 R3 K3 ["ImportQueueParseHalted"]
       26 NEWCLOSURE                       R4 P6
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R4 R3 K4 ["ImportQueueStarted"]
       30 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["join"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R6 R0 K9 ["Src"]
       20 GETTABLEKS                       R5 R6 K10 ["Utility"]
       22 GETTABLEKS                       R4 R5 K11 ["DebugFlags"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R7 R0 K9 ["Src"]
       29 GETTABLEKS                       R6 R7 K10 ["Utility"]
       31 GETTABLEKS                       R5 R6 K12 ["Services"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K13 ["GetService"]
       36 LOADK                            R6 K14 ["HttpService"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R4 K13 ["GetService"]
       40 LOADK                            R7 K15 ["StudioService"]
       41 CALL                             R6 1 1
       42 DUPCLOSURE                       R7 K16 [PROTO_7]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R5
       47 RETURN                           R7 1
