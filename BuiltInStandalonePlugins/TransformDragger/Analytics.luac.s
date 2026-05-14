PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Name"]
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
        0 DUPTABLE                         R3 K4 [{"studioSid", "clientId", "placeId", "userId"}]
        1 GETUPVAL                         R4 0
        2 NAMECALL                         R4 R4 K5 ["GetSessionId"]
        4 CALL                             R4 1 1
        5 SETTABLEKS                       R4 R3 K0 ["studioSid"]
        7 GETUPVAL                         R4 0
        8 NAMECALL                         R4 R4 K6 ["GetClientId"]
       10 CALL                             R4 1 1
       11 SETTABLEKS                       R4 R3 K1 ["clientId"]
       13 GETIMPORT                        R4 K8 [game]
       15 GETTABLEKS                       R4 R4 K9 ["PlaceId"]
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
       33 GETUPVAL                         R4 0
       34 LOADK                            R6 K13 ["studio"]
       35 LOADK                            R7 K14 ["Modeling"]
       36 MOVE                             R8 R1
       37 MOVE                             R9 R3
       38 NAMECALL                         R4 R4 K15 ["SendEventDeferred"]
       40 CALL                             R4 5 0
       41 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 ORK                              R6 R2 K0 [1]
        3 NAMECALL                         R3 R3 K1 ["ReportCounter"]
        5 CALL                             R3 3 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R3 K0 ["ReportStats"]
        5 CALL                             R3 3 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RbxAnalyticsService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 NEWTABLE                         R2 4 0
       15 GETIMPORT                        R3 K6 [pcall]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          REF R0
       19 CALL                             R3 1 1
       20 JUMPIF                           R3 ; [+17]
       21 NEWTABLE                         R0 0 0
       23 DUPCLOSURE                       R3 K7 [PROTO_1]
       24 SETTABLEKS                       R3 R0 K8 ["SendEventDeferred"]
       26 DUPCLOSURE                       R3 K9 [PROTO_2]
       27 SETTABLEKS                       R3 R0 K10 ["ReportCounter"]
       29 DUPCLOSURE                       R3 K11 [PROTO_3]
       30 SETTABLEKS                       R3 R0 K12 ["GetSessionId"]
       32 DUPCLOSURE                       R3 K13 [PROTO_4]
       33 SETTABLEKS                       R3 R0 K14 ["GetClientId"]
       35 DUPCLOSURE                       R3 K15 [PROTO_5]
       36 SETTABLEKS                       R3 R0 K16 ["ReportStats"]
       38 NEWCLOSURE                       R3 P6
       39 CAPTURE                          REF R0
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R3 R2 K17 ["sendEvent"]
       43 NEWCLOSURE                       R3 P7
       44 CAPTURE                          REF R0
       45 SETTABLEKS                       R3 R2 K18 ["reportCounter"]
       47 NEWCLOSURE                       R3 P8
       48 CAPTURE                          REF R0
       49 SETTABLEKS                       R3 R2 K19 ["reportStats"]
       51 CLOSEUPVALS                      R0
       52 RETURN                           R2 1
