PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R1 K1 ["groups"]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R1
        7 CALL                             R4 1 -1
        8 NAMECALL                         R2 R2 K2 ["dispatch"]
       10 CALL                             R2 -1 0
       11 GETUPVAL                         R2 2
       12 JUMPIFNOT                        R2 ; [+9]
       13 GETUPVAL                         R2 0
       14 GETUPVAL                         R4 3
       15 GETUPVAL                         R5 4
       16 GETUPVAL                         R6 5
       17 GETUPVAL                         R7 2
       18 CALL                             R4 3 -1
       19 NAMECALL                         R2 R2 K2 ["dispatch"]
       21 CALL                             R2 -1 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["StudioToolboxCreations"]
        2 NAMECALL                         R1 R1 K1 ["getManageableGroups"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U4
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U5
       15 NAMECALL                         R1 R1 K2 ["andThen"]
       17 CALL                             R1 3 -1
       18 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Networking"]
       17 GETTABLEKS                       R2 R2 K7 ["Requests"]
       19 GETTABLEKS                       R2 R2 K8 ["UpdatePageInfoAndSendRequest"]
       21 CALL                             R1 1 1
       22 GETIMPORT                        R2 K4 [require]
       24 GETTABLEKS                       R3 R0 K5 ["Src"]
       26 GETTABLEKS                       R3 R3 K9 ["Actions"]
       28 GETTABLEKS                       R3 R3 K10 ["SetToolboxManageableGroups"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K4 [require]
       33 GETTABLEKS                       R4 R0 K5 ["Src"]
       35 GETTABLEKS                       R4 R4 K9 ["Actions"]
       37 GETTABLEKS                       R4 R4 K11 ["NetworkError"]
       39 CALL                             R3 1 1
       40 DUPCLOSURE                       R4 K12 [PROTO_3]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 RETURN                           R4 1
