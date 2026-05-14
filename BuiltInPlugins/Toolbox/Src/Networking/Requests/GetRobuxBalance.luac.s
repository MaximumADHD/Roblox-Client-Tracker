PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R6 R1 K1 ["robux"]
        6 FASTCALL1                        TONUMBER R6 ; [+2]
        7 GETIMPORT                        R5 K3 [tonumber]
        9 CALL                             R5 1 1
       10 CALL                             R4 1 -1
       11 NAMECALL                         R2 R2 K4 ["dispatch"]
       13 CALL                             R2 -1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Could not get Robux balance"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R1 K4 ["dispatch"]
       15 CALL                             R1 -1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K0 ["getRobuxBalance"]
        6 CALL                             R2 2 1
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U4
       14 NAMECALL                         R2 R2 K1 ["andThen"]
       16 CALL                             R2 3 -1
       17 RETURN                           R2 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 RETURN                           R1 1

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
       17 GETTABLEKS                       R2 R2 K7 ["DebugFlags"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K6 ["Util"]
       26 GETTABLEKS                       R3 R3 K8 ["getUserId"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K9 ["Actions"]
       35 GETTABLEKS                       R4 R4 K10 ["NetworkError"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R5 R0 K5 ["Src"]
       42 GETTABLEKS                       R5 R5 K9 ["Actions"]
       44 GETTABLEKS                       R5 R5 K11 ["SetRobuxBalance"]
       46 CALL                             R4 1 1
       47 DUPCLOSURE                       R5 K12 [PROTO_3]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R3
       52 RETURN                           R5 1
