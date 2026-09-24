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
       17 GETUPVAL                         R14 1
       18 GETTABLEKS                       R14 R14 K6 ["Dictionary"]
       20 GETTABLEKS                       R14 R14 K7 ["join"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ManageCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Actions"]
       20 GETTABLEKS                       R3 R3 K10 ["SetSearchItemLogs"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["Telemetry"]
       31 GETTABLEKS                       R4 R4 K13 ["CollaboratorSearchItemClickedEvent"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Packages"]
       38 GETTABLEKS                       R5 R5 K14 ["TelemetryProtocol"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R4 K15 ["new"]
       43 CALL                             R5 0 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K8 ["Src"]
       48 GETTABLEKS                       R7 R7 K11 ["Util"]
       50 GETTABLEKS                       R7 R7 K16 ["Constants"]
       52 CALL                             R6 1 1
       53 NEWTABLE                         R7 0 2
       55 GETTABLEKS                       R8 R6 K17 ["COLLABORATORTYPE_USER"]
       57 GETTABLEKS                       R9 R6 K18 ["COLLABORATORTYPE_GROUP"]
       59 SETLIST                          R7 R8 2 [1]
       61 DUPCLOSURE                       R8 K19 [PROTO_1]
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R2
       67 RETURN                           R8 1
