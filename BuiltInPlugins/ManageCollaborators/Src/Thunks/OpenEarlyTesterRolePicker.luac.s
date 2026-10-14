PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["getAllRoles"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+8]
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R4 3
        9 MOVE                             R5 R1
       10 CALL                             R4 1 -1
       11 NAMECALL                         R2 R2 K2 ["dispatch"]
       13 CALL                             R2 -1 0
       14 RETURN                           R0 0
       15 GETIMPORT                        R2 K4 [warn]
       17 LOADK                            R3 K5 ["Failed to fetch group roles"]
       18 MOVE                             R4 R1
       19 CALL                             R2 2 0
       20 GETUPVAL                         R2 2
       21 GETUPVAL                         R4 3
       22 NEWTABLE                         R5 0 0
       24 CALL                             R4 1 -1
       25 NAMECALL                         R2 R2 K2 ["dispatch"]
       27 CALL                             R2 -1 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["earlyTesterController"]
        2 GETUPVAL                         R5 0
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K1 ["RolePicker"]
        6 CALL                             R5 1 -1
        7 NAMECALL                         R3 R0 K2 ["dispatch"]
        9 CALL                             R3 -1 0
       10 GETIMPORT                        R3 K5 [coroutine.wrap]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U3
       17 CALL                             R3 1 1
       18 MOVE                             R4 R3
       19 CALL                             R4 0 0
       20 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["SetEarlyTesterAllRoles"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Actions"]
       24 GETTABLEKS                       R3 R3 K8 ["SetEarlyTesterScreen"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K9 ["Util"]
       33 GETTABLEKS                       R4 R4 K10 ["EarlyTesterScreen"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K11 [PROTO_3]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R1
       40 RETURN                           R4 1
