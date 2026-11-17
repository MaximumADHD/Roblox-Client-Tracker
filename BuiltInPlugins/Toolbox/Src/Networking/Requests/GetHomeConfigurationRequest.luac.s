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
        4 JUMPIFNOT                        R1 ; [+10]
        5 GETIMPORT                        R1 K2 [warn]
        7 GETIMPORT                        R2 K5 [string.format]
        9 LOADK                            R3 K6 ["Could not get home configuration for assetType %s"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K7 ["Name"]
       13 CALL                             R2 2 -1
       14 CALL                             R1 -1 0
       15 GETUPVAL                         R1 2
       16 GETUPVAL                         R3 3
       17 MOVE                             R4 R0
       18 CALL                             R3 1 -1
       19 NAMECALL                         R1 R1 K8 ["dispatch"]
       21 CALL                             R1 -1 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 NAMECALL                         R1 R1 K0 ["getHomeConfiguration"]
        5 CALL                             R1 3 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U1
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U5
       15 NAMECALL                         R1 R1 K1 ["andThen"]
       17 CALL                             R1 3 -1
       18 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
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
       35 GETTABLEKS                       R4 R4 K10 ["SetHomeConfiguration"]
       37 CALL                             R3 1 1
       38 DUPCLOSURE                       R4 K11 [PROTO_3]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 RETURN                           R4 1
