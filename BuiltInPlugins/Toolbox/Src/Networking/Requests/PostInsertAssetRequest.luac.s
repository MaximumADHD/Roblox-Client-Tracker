PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R5 2
        5 MOVE                             R6 R1
        6 CALL                             R4 2 -1
        7 NAMECALL                         R2 R2 K1 ["dispatch"]
        9 CALL                             R2 -1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Got false response from PostInsertAsset"]
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
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["postInsertAsset"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U1
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U4
       13 NAMECALL                         R1 R1 K1 ["andThen"]
       15 CALL                             R1 3 -1
       16 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R2 1

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
       24 GETTABLEKS                       R3 R3 K8 ["Actions"]
       26 GETTABLEKS                       R3 R3 K9 ["NetworkError"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K8 ["Actions"]
       35 GETTABLEKS                       R4 R4 K10 ["PostInsertAsset"]
       37 CALL                             R3 1 1
       38 DUPCLOSURE                       R4 K11 [PROTO_3]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 RETURN                           R4 1
