PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+30]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["fromInstance"]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 1
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R4 3
       10 GETUPVAL                         R5 4
       11 MOVE                             R6 R1
       12 CALL                             R4 2 -1
       13 NAMECALL                         R2 R2 K1 ["dispatch"]
       15 CALL                             R2 -1 0
       16 GETUPVAL                         R2 2
       17 GETUPVAL                         R4 5
       18 LOADK                            R5 K2 [""]
       19 NEWTABLE                         R6 0 1
       21 MOVE                             R7 R0
       22 SETLIST                          R6 R7 1 [1]
       24 GETUPVAL                         R7 4
       25 LOADB                            R8 0
       26 GETUPVAL                         R9 6
       27 CALL                             R4 5 -1
       28 NAMECALL                         R2 R2 K1 ["dispatch"]
       30 CALL                             R2 -1 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["evaluateWatchWithCallback"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETUPVAL                         R5 3
        6 MOVE                             R6 R0
        7 NEWCLOSURE                       R7 P0
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U3
       15 CALL                             R2 5 0
       16 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Actions"]
       17 GETTABLEKS                       R2 R2 K7 ["Watch"]
       19 GETTABLEKS                       R2 R2 K8 ["ExpressionEvaluated"]
       21 CALL                             R1 1 1
       22 GETTABLEKS                       R2 R0 K5 ["Src"]
       24 GETTABLEKS                       R2 R2 K9 ["Models"]
       26 GETIMPORT                        R3 K4 [require]
       28 GETTABLEKS                       R4 R2 K10 ["StepStateBundle"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R5 R2 K7 ["Watch"]
       35 GETTABLEKS                       R5 R5 K11 ["WatchRow"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K4 [require]
       40 GETTABLEKS                       R6 R0 K5 ["Src"]
       42 GETTABLEKS                       R6 R6 K12 ["Util"]
       44 GETTABLEKS                       R6 R6 K13 ["WatchHelperFunctions"]
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R6 R0 K5 ["Src"]
       49 GETTABLEKS                       R6 R6 K14 ["Thunks"]
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R6 K15 ["Common"]
       55 GETTABLEKS                       R8 R8 K16 ["AddChildRowsToVars"]
       57 CALL                             R7 1 1
       58 DUPCLOSURE                       R8 K17 [PROTO_2]
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R7
       63 RETURN                           R8 1
