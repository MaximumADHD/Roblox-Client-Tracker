PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 NEWTABLE                         R0 0 0
        3 NEWTABLE                         R2 0 0
        5 GETTABLEKS                       R3 R0 K0 ["ShowDialog"]
        7 JUMPIF                           R3 ; [+11]
        8 DUPCLOSURE                       R3 K1 [PROTO_0]
        9 MOVE                             R5 R2
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K2 ["new"]
       13 MOVE                             R7 R3
       14 CALL                             R6 1 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R4 K5 [table.insert]
       18 CALL                             R4 -1 0
       19 GETTABLEKS                       R4 R0 K6 ["Store"]
       21 JUMPIF                           R4 ; [+11]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K6 ["Store"]
       25 GETTABLEKS                       R5 R5 K2 ["new"]
       27 GETUPVAL                         R6 2
       28 LOADNIL                          R7
       29 GETUPVAL                         R8 3
       30 CALL                             R5 3 1
       31 MOVE                             R4 R5
       32 JUMP                             ; [+7]
       33 FASTCALL2                        TABLE_INSERT R2 R4 ; [+5]
       35 MOVE                             R6 R2
       36 MOVE                             R7 R4
       37 GETIMPORT                        R5 K5 [table.insert]
       39 CALL                             R5 2 0
       40 GETTABLEKS                       R5 R0 K7 ["Theme"]
       42 JUMPIF                           R5 ; [+11]
       43 GETUPVAL                         R6 4
       44 LOADB                            R7 1
       45 CALL                             R6 1 1
       46 MOVE                             R5 R6
       47 FASTCALL2                        TABLE_INSERT R2 R5 ; [+5]
       49 MOVE                             R7 R2
       50 MOVE                             R8 R5
       51 GETIMPORT                        R6 K5 [table.insert]
       53 CALL                             R6 2 0
       54 GETUPVAL                         R6 5
       55 MOVE                             R7 R2
       56 MOVE                             R8 R1
       57 CALL                             R6 2 -1
       58 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 GETTABLEKS                       R3 R3 K9 ["Dialog"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Reducers"]
       31 GETTABLEKS                       R4 R4 K11 ["MainReducer"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K5 ["Packages"]
       38 GETTABLEKS                       R5 R5 K12 ["Framework"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R4 K13 ["TestHelpers"]
       43 GETTABLEKS                       R5 R5 K14 ["provideMockContext"]
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R7 R0 K7 ["Src"]
       49 GETTABLEKS                       R7 R7 K15 ["Util"]
       51 GETTABLEKS                       R7 R7 K16 ["MakeTheme"]
       53 CALL                             R6 1 1
       54 NEWTABLE                         R7 0 1
       56 GETTABLEKS                       R8 R1 K17 ["thunkMiddleware"]
       58 SETLIST                          R7 R8 1 [1]
       60 DUPCLOSURE                       R8 K18 [PROTO_1]
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R5
       67 RETURN                           R8 1
