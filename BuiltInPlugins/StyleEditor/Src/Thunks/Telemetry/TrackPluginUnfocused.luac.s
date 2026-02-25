PROTO_0:
        0 GETIMPORT                        R2 K2 [os.time]
        2 CALL                             R2 0 1
        3 GETUPVAL                         R5 0
        4 MOVE                             R6 R2
        5 CALL                             R5 1 -1
        6 NAMECALL                         R3 R0 K3 ["dispatch"]
        8 CALL                             R3 -1 0
        9 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R2 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R2 K4 ["Actions"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R4 R1 K7 ["SessionStats"]
       19 GETTABLEKS                       R3 R4 K8 ["PluginFocusEnd"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K6 [require]
       24 GETTABLEKS                       R5 R0 K3 ["Src"]
       26 GETTABLEKS                       R4 R5 K9 ["Types"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R7 R0 K3 ["Src"]
       33 GETTABLEKS                       R6 R7 K10 ["Reducers"]
       35 GETTABLEKS                       R5 R6 K11 ["RootReducer"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K6 [require]
       40 GETTABLEKS                       R8 R0 K3 ["Src"]
       42 GETTABLEKS                       R7 R8 K12 ["Thunks"]
       44 GETTABLEKS                       R6 R7 K9 ["Types"]
       46 CALL                             R5 1 1
       47 DUPCLOSURE                       R6 K13 [PROTO_1]
       48 CAPTURE                          VAL R2
       49 RETURN                           R6 1
