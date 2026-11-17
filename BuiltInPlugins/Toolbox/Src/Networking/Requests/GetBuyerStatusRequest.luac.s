PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R1
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R2 R1 K1 ["purchaserStatus"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R2
       10 JUMPIFNOT                        R2 ; [+7]
       11 GETUPVAL                         R3 0
       12 GETUPVAL                         R5 1
       13 MOVE                             R6 R2
       14 CALL                             R5 1 -1
       15 NAMECALL                         R3 R3 K2 ["dispatch"]
       17 CALL                             R3 -1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Unable to fetch purchaser status data"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R1 K4 ["dispatch"]
       15 CALL                             R1 -1 0
       16 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["purchase"]
        5 JUMPIFNOT                        R2 ; [+10]
        6 GETTABLEKS                       R2 R1 K1 ["purchase"]
        8 GETTABLEKS                       R2 R2 K2 ["buyerStatus"]
       10 JUMPIFNOT                        R2 ; [+5]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["resolve"]
       14 CALL                             R2 0 -1
       15 RETURN                           R2 -1
       16 GETUPVAL                         R2 1
       17 NAMECALL                         R2 R2 K4 ["getPurchaserStatus"]
       19 CALL                             R2 1 1
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U2
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U4
       27 NAMECALL                         R2 R2 K5 ["andThen"]
       29 CALL                             R2 3 -1
       30 RETURN                           R2 -1

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
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["Util"]
       16 GETTABLEKS                       R3 R3 K9 ["Promise"]
       18 GETIMPORT                        R4 K6 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R5 K8 ["Util"]
       24 GETTABLEKS                       R5 R5 K11 ["DebugFlags"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K6 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R6 K12 ["Actions"]
       33 GETTABLEKS                       R6 R6 K13 ["NetworkError"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K6 [require]
       38 GETTABLEKS                       R7 R0 K10 ["Src"]
       40 GETTABLEKS                       R7 R7 K12 ["Actions"]
       42 GETTABLEKS                       R7 R7 K14 ["SetBuyerStatus"]
       44 CALL                             R6 1 1
       45 DUPCLOSURE                       R7 K15 [PROTO_3]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R5
       50 RETURN                           R7 1
