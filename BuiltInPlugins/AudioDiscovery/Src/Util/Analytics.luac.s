PROTO_0:
        0 GETIMPORT                        R4 K2 [task.spawn]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K3 ["ReportInfluxSeries"]
        5 GETUPVAL                         R6 0
        6 MOVE                             R7 R1
        7 MOVE                             R8 R2
        8 MOVE                             R9 R3
        9 CALL                             R4 5 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETGLOBAL                        R1 K0 ["ReportedOpen"]
        2 JUMPIF                           R1 ; [+10]
        3 LOADB                            R1 1
        4 SETGLOBAL                        R1 K0 ["ReportedOpen"]
        6 LOADK                            R3 K1 ["StudioAudioDiscoveryOpen"]
        7 NEWTABLE                         R4 0 0
        9 GETUPVAL                         R5 0
       10 NAMECALL                         R1 R0 K2 ["_sendToKibana"]
       12 CALL                             R1 4 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETGLOBAL                        R1 K0 ["ReportedSelect"]
        2 JUMPIF                           R1 ; [+10]
        3 LOADB                            R1 1
        4 SETGLOBAL                        R1 K0 ["ReportedSelect"]
        6 LOADK                            R3 K1 ["StudioAudioDiscoverySelect"]
        7 NEWTABLE                         R4 0 0
        9 GETUPVAL                         R5 0
       10 NAMECALL                         R1 R0 K2 ["_sendToKibana"]
       12 CALL                             R1 4 0
       13 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R3 K2 [{"good", "bad"}]
        1 SETTABLEKS                       R1 R3 K0 ["good"]
        3 SETTABLEKS                       R2 R3 K1 ["bad"]
        5 LOADK                            R6 K3 ["StudioAudioDiscoveryBreakdown"]
        6 MOVE                             R7 R3
        7 GETUPVAL                         R8 0
        8 NAMECALL                         R4 R0 K4 ["_sendToKibana"]
       10 CALL                             R4 4 0
       11 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K3 [{"responseCode", "responseBody", "responseTimeMs"}]
        1 GETTABLEKS                       R3 R1 K0 ["responseCode"]
        3 SETTABLEKS                       R3 R2 K0 ["responseCode"]
        5 GETTABLEKS                       R3 R1 K1 ["responseBody"]
        7 SETTABLEKS                       R3 R2 K1 ["responseBody"]
        9 GETTABLEKS                       R3 R1 K2 ["responseTimeMs"]
       11 SETTABLEKS                       R3 R2 K2 ["responseTimeMs"]
       13 LOADK                            R5 K4 ["StudioAudioDiscoveryPermissionCheck"]
       14 MOVE                             R6 R2
       15 GETUPVAL                         R7 0
       16 NAMECALL                         R3 R0 K5 ["_sendToKibana"]
       18 CALL                             R3 4 0
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RbxAnalyticsService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 8 0
        9 GETIMPORT                        R2 K1 [game]
       11 LOADK                            R4 K4 ["StudioAudioDiscoveryOpenAnalyticThrottle"]
       12 NAMECALL                         R2 R2 K5 ["GetFastInt"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K1 [game]
       17 LOADK                            R5 K6 ["StudioAudioDiscoverySelectAnalyticsThrottle"]
       18 NAMECALL                         R3 R3 K5 ["GetFastInt"]
       20 CALL                             R3 2 1
       21 GETIMPORT                        R4 K1 [game]
       23 LOADK                            R6 K7 ["StudioAudioDiscoveryBreakdownAnalyticsThrottle"]
       24 NAMECALL                         R4 R4 K5 ["GetFastInt"]
       26 CALL                             R4 2 1
       27 GETIMPORT                        R5 K1 [game]
       29 LOADK                            R7 K8 ["StudioAudioDiscoveryPermissionCheckAnalyticsThrottle"]
       30 NAMECALL                         R5 R5 K5 ["GetFastInt"]
       32 CALL                             R5 2 1
       33 DUPCLOSURE                       R6 K9 [PROTO_0]
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R6 R1 K10 ["_sendToKibana"]
       37 LOADB                            R6 0
       38 SETGLOBAL                        R6 K11 ["ReportedOpen"]
       40 DUPCLOSURE                       R6 K12 [PROTO_1]
       41 CAPTURE                          VAL R2
       42 SETTABLEKS                       R6 R1 K13 ["reportOpen"]
       44 LOADB                            R6 0
       45 SETGLOBAL                        R6 K14 ["ReportedSelect"]
       47 DUPCLOSURE                       R6 K15 [PROTO_2]
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R6 R1 K16 ["reportSelect"]
       51 DUPCLOSURE                       R6 K17 [PROTO_3]
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R6 R1 K18 ["reportBreakdown"]
       55 DUPCLOSURE                       R6 K19 [PROTO_4]
       56 CAPTURE                          VAL R5
       57 SETTABLEKS                       R6 R1 K20 ["reportPermissionCheck"]
       59 RETURN                           R1 1
