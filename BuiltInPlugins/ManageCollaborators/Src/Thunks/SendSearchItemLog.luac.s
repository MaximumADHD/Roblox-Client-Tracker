PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["SearchItemLogs"]
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R3 R4 R5
        7 JUMPIF                           R3 ; [+2]
        8 NEWTABLE                         R3 0 0
       10 GETUPVAL                         R5 1
       11 GETTABLE                         R4 R3 R5
       12 JUMPIF                           R4 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K2 ["Dictionary"]
       17 GETTABLEKS                       R4 R4 K3 ["join"]
       19 GETUPVAL                         R6 1
       20 GETTABLE                         R5 R3 R6
       21 GETUPVAL                         R6 3
       22 CALL                             R4 2 1
       23 GETUPVAL                         R5 4
       24 GETUPVAL                         R7 5
       25 MOVE                             R8 R4
       26 NAMECALL                         R5 R5 K4 ["logRobloxTelemetryEvent"]
       28 CALL                             R5 3 0
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K2 ["Dictionary"]
       32 GETTABLEKS                       R5 R5 K3 ["join"]
       34 GETTABLEKS                       R6 R2 K1 ["SearchItemLogs"]
       36 NEWTABLE                         R7 1 0
       38 GETUPVAL                         R8 0
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R9 R9 K2 ["Dictionary"]
       42 GETTABLEKS                       R9 R9 K3 ["join"]
       44 MOVE                             R10 R3
       45 NEWTABLE                         R11 1 0
       47 GETUPVAL                         R12 1
       48 GETUPVAL                         R13 2
       49 GETTABLEKS                       R13 R13 K5 ["None"]
       51 SETTABLE                         R13 R11 R12
       52 CALL                             R9 2 1
       53 SETTABLE                         R9 R7 R8
       54 CALL                             R5 2 1
       55 GETUPVAL                         R8 6
       56 MOVE                             R9 R5
       57 CALL                             R8 1 -1
       58 NAMECALL                         R6 R0 K6 ["dispatch"]
       60 CALL                             R6 -1 0
       61 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Collab8766_LogCollabSearchItemClickedEventV4"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+49]
        8 GETIMPORT                        R1 K5 [script]
       10 LOADK                            R3 K6 ["ManageCollaborators"]
       11 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       13 CALL                             R1 2 1
       14 GETIMPORT                        R2 K9 [require]
       16 GETTABLEKS                       R3 R1 K10 ["Packages"]
       18 GETTABLEKS                       R3 R3 K11 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R1 K12 ["Src"]
       25 GETTABLEKS                       R4 R4 K13 ["Actions"]
       27 GETTABLEKS                       R4 R4 K14 ["SetSearchItemLogs"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K9 [require]
       32 GETTABLEKS                       R5 R1 K12 ["Src"]
       34 GETTABLEKS                       R5 R5 K15 ["Util"]
       36 GETTABLEKS                       R5 R5 K16 ["Telemetry"]
       38 GETTABLEKS                       R5 R5 K17 ["CollaboratorSearchItemClickedEvent"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K9 [require]
       43 GETTABLEKS                       R6 R1 K10 ["Packages"]
       45 GETTABLEKS                       R6 R6 K18 ["TelemetryProtocol"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R5 K19 ["new"]
       50 CALL                             R6 0 1
       51 DUPCLOSURE                       R7 K20 [PROTO_1]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 RETURN                           R7 1
       57 RETURN                           R0 0
