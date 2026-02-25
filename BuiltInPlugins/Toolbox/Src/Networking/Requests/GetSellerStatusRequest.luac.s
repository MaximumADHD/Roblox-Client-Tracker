PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R1
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R4 1
        8 MOVE                             R5 R1
        9 CALL                             R4 1 -1
       10 NAMECALL                         R2 R2 K1 ["dispatch"]
       12 CALL                             R2 -1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K2 ["shouldDebugWarnings"]
       17 CALL                             R2 0 1
       18 JUMPIFNOT                        R2 ; [+4]
       19 GETIMPORT                        R2 K4 [warn]
       21 LOADK                            R3 K5 ["No seller status data was given in the response body"]
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Unable to fetch seller status data"]
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
        1 NAMECALL                         R1 R1 K0 ["getSellerStatus"]
        3 CALL                             R1 1 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U3
       12 NAMECALL                         R1 R1 K1 ["andThen"]
       14 CALL                             R1 3 -1
       15 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R4 R2 K8 ["Util"]
       16 GETTABLEKS                       R3 R4 K9 ["Promise"]
       18 GETIMPORT                        R4 K6 [require]
       20 GETTABLEKS                       R7 R0 K10 ["Src"]
       22 GETTABLEKS                       R6 R7 K8 ["Util"]
       24 GETTABLEKS                       R5 R6 K11 ["DebugFlags"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K6 [require]
       29 GETTABLEKS                       R8 R0 K10 ["Src"]
       31 GETTABLEKS                       R7 R8 K12 ["Actions"]
       33 GETTABLEKS                       R6 R7 K13 ["NetworkError"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K6 [require]
       38 GETTABLEKS                       R9 R0 K10 ["Src"]
       40 GETTABLEKS                       R8 R9 K12 ["Actions"]
       42 GETTABLEKS                       R7 R8 K14 ["SetSellerStatus"]
       44 CALL                             R6 1 1
       45 DUPCLOSURE                       R7 K15 [PROTO_3]
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 RETURN                           R7 1
