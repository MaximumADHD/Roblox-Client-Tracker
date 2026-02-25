PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["SearchItemLogs"]
        5 GETIMPORT                        R4 K3 [ipairs]
        7 GETUPVAL                         R5 0
        8 CALL                             R4 1 3
        9 FORGPREP_INEXT                   R4
       10 GETTABLE                         R9 R3 R8
       11 JUMPIFNOT                        R9 ; [+21]
       12 GETIMPORT                        R9 K5 [pairs]
       14 GETTABLE                         R10 R3 R8
       15 CALL                             R9 1 3
       16 FORGPREP_NEXT                    R9
       17 GETUPVAL                         R16 1
       18 GETTABLEKS                       R15 R16 K6 ["Dictionary"]
       20 GETTABLEKS                       R14 R15 K7 ["join"]
       22 MOVE                             R15 R13
       23 GETUPVAL                         R16 2
       24 CALL                             R14 2 1
       25 GETUPVAL                         R15 3
       26 GETUPVAL                         R17 4
       27 MOVE                             R18 R14
       28 NAMECALL                         R15 R15 K8 ["logRobloxTelemetryEvent"]
       30 CALL                             R15 3 0
       31 FORGLOOP                         R9 2 ; [-15]
       33 FORGLOOP                         R4 2 [inext] ; [-24]
       35 GETUPVAL                         R6 5
       36 NEWTABLE                         R7 0 0
       38 CALL                             R6 1 -1
       39 NAMECALL                         R4 R0 K9 ["dispatch"]
       41 CALL                             R4 -1 0
       42 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Collab8766_LogCollabSearchItemClickedEventV4"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+67]
        8 GETIMPORT                        R1 K5 [script]
       10 LOADK                            R3 K6 ["ManageCollaborators"]
       11 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       13 CALL                             R1 2 1
       14 GETIMPORT                        R2 K9 [require]
       16 GETTABLEKS                       R4 R1 K10 ["Packages"]
       18 GETTABLEKS                       R3 R4 K11 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R6 R1 K12 ["Src"]
       25 GETTABLEKS                       R5 R6 K13 ["Actions"]
       27 GETTABLEKS                       R4 R5 K14 ["SetSearchItemLogs"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K9 [require]
       32 GETTABLEKS                       R8 R1 K12 ["Src"]
       34 GETTABLEKS                       R7 R8 K15 ["Util"]
       36 GETTABLEKS                       R6 R7 K16 ["Telemetry"]
       38 GETTABLEKS                       R5 R6 K17 ["CollaboratorSearchItemClickedEvent"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K9 [require]
       43 GETTABLEKS                       R7 R1 K10 ["Packages"]
       45 GETTABLEKS                       R6 R7 K18 ["TelemetryProtocol"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R5 K19 ["new"]
       50 CALL                             R6 0 1
       51 GETIMPORT                        R7 K9 [require]
       53 GETTABLEKS                       R10 R1 K12 ["Src"]
       55 GETTABLEKS                       R9 R10 K15 ["Util"]
       57 GETTABLEKS                       R8 R9 K20 ["Constants"]
       59 CALL                             R7 1 1
       60 NEWTABLE                         R8 0 2
       62 GETTABLEKS                       R9 R7 K21 ["COLLABORATORTYPE_USER"]
       64 GETTABLEKS                       R10 R7 K22 ["COLLABORATORTYPE_GROUP"]
       66 SETLIST                          R8 R9 2 [1]
       68 DUPCLOSURE                       R9 K23 [PROTO_1]
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R3
       74 RETURN                           R9 1
       75 RETURN                           R0 0
