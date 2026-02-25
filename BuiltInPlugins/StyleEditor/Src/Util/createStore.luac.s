PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["Store"]
        6 GETTABLEKS                       R2 R3 K1 ["new"]
        8 GETUPVAL                         R3 2
        9 LOADNIL                          R4
       10 NEWTABLE                         R5 0 1
       12 MOVE                             R6 R1
       13 SETLIST                          R5 R6 1 [1]
       15 LOADNIL                          R6
       16 CALL                             R2 4 -1
       17 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R2 K8 ["Util"]
       25 GETTABLEKS                       R3 R4 K9 ["ThunkWithArgsMiddleware"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R7 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R7 K11 ["Reducers"]
       33 GETTABLEKS                       R5 R6 K12 ["RootReducer"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K4 [require]
       38 GETTABLEKS                       R8 R0 K10 ["Src"]
       40 GETTABLEKS                       R7 R8 K13 ["Thunks"]
       42 GETTABLEKS                       R6 R7 K14 ["Types"]
       44 CALL                             R5 1 1
       45 DUPCLOSURE                       R6 K15 [PROTO_0]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R4
       49 RETURN                           R6 1
