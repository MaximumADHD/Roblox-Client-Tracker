PROTO_0:
        0 GETUPVAL                         R4 0
        1 DUPTABLE                         R5 K3 [{"config", "customFields", "value"}]
        2 SETTABLEKS                       R0 R5 K0 ["config"]
        4 SETTABLEKS                       R1 R5 K1 ["customFields"]
        6 ORK                              R6 R2 K4 [1]
        7 SETTABLEKS                       R6 R5 K2 ["value"]
        9 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       11 GETIMPORT                        R3 K7 [table.insert]
       13 CALL                             R3 2 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K2 [{"config", "customFields"}]
        2 SETTABLEKS                       R0 R4 K0 ["config"]
        4 SETTABLEKS                       R1 R4 K1 ["customFields"]
        6 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
        8 GETIMPORT                        R2 K5 [table.insert]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 DUPTABLE                         R5 K3 [{"config", "customFields", "stat"}]
        2 SETTABLEKS                       R0 R5 K0 ["config"]
        4 SETTABLEKS                       R1 R5 K1 ["customFields"]
        6 SETTABLEKS                       R2 R5 K2 ["stat"]
        8 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       10 GETIMPORT                        R3 K6 [table.insert]
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R3 R4 K0 ["Provider"]
        5 DUPTABLE                         R4 K2 [{"value"}]
        6 SETTABLEKS                       R1 R4 K1 ["value"]
        8 GETTABLEKS                       R5 R0 K3 ["children"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 NEWTABLE                         R2 0 0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          VAL R1
       10 NEWCLOSURE                       R5 P2
       11 CAPTURE                          VAL R2
       12 DUPTABLE                         R6 K3 [{"logCounter", "logEvent", "logStat"}]
       13 SETTABLEKS                       R3 R6 K0 ["logCounter"]
       15 SETTABLEKS                       R4 R6 K1 ["logEvent"]
       17 SETTABLEKS                       R5 R6 K2 ["logStat"]
       19 NEWCLOSURE                       R7 P3
       20 CAPTURE                          VAL R6
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 MOVE                             R8 R6
       24 MOVE                             R9 R7
       25 DUPTABLE                         R10 K7 [{"countersSent", "eventsSent", "statsSent"}]
       26 SETTABLEKS                       R0 R10 K4 ["countersSent"]
       28 SETTABLEKS                       R1 R10 K5 ["eventsSent"]
       30 SETTABLEKS                       R2 R10 K6 ["statsSent"]
       32 RETURN                           R8 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Analytics"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["AnalyticsContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R4 R5 K6 ["Parent"]
       22 GETTABLEKS                       R3 R4 K8 ["AnalyticsTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Parent"]
       29 GETTABLEKS                       R4 R5 K9 ["React"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K10 ["createElement"]
       34 DUPCLOSURE                       R5 K11 [PROTO_4]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R1
       37 RETURN                           R5 1
