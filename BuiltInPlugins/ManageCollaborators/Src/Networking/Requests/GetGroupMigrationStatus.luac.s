PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["groups"]
        2 LOADK                            R4 K1 ["/v1/groups/"]
        3 GETUPVAL                         R5 1
        4 LOADK                            R6 K2 ["/migration"]
        5 CONCAT                           R3 R4 R6
        6 NAMECALL                         R0 R0 K3 ["get"]
        8 CALL                             R0 3 1
        9 NAMECALL                         R0 R0 K4 ["await"]
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+4]
        7 JUMPIFNOT                        R3 ; [+3]
        8 GETTABLEKS                       R4 R3 K2 ["responseBody"]
       10 JUMPIF                           R4 ; [+4]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["NOT_MIGRATED"]
       14 RETURN                           R4 1
       15 GETTABLEKS                       R4 R3 K2 ["responseBody"]
       17 GETTABLEKS                       R4 R4 K4 ["status"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K3 ["NOT_MIGRATED"]
       22 JUMPIFEQ                         R4 R5 ; [+11]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K5 ["MIGRATING"]
       27 JUMPIFEQ                         R4 R5 ; [+6]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K6 ["MIGRATED"]
       32 JUMPIFNOTEQ                      R4 R5 ; [+2]
       34 RETURN                           R4 1
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K3 ["NOT_MIGRATED"]
       38 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["MigrationStatus"]
       19 CALL                             R1 1 1
       20 DUPCLOSURE                       R2 K8 [PROTO_1]
       21 CAPTURE                          VAL R1
       22 RETURN                           R2 1
