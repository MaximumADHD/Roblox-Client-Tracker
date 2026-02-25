PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Plugin"]
        2 JUMPIF                           R2 ; [+2]
        3 NEWTABLE                         R2 0 0
        5 GETTABLEKS                       R3 R0 K1 ["Mouse"]
        7 JUMPIF                           R3 ; [+2]
        8 NEWTABLE                         R3 0 0
       10 GETTABLEKS                       R4 R0 K2 ["Store"]
       12 JUMPIF                           R4 ; [+15]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K2 ["Store"]
       16 GETTABLEKS                       R4 R5 K3 ["new"]
       18 GETUPVAL                         R5 1
       19 LOADNIL                          R6
       20 NEWTABLE                         R7 0 1
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R8 R9 K4 ["thunkMiddleware"]
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R4 3 1
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R5 R6 K5 ["provide"]
       31 NEWTABLE                         R6 0 3
       33 GETUPVAL                         R9 2
       34 GETTABLEKS                       R8 R9 K0 ["Plugin"]
       36 GETTABLEKS                       R7 R8 K3 ["new"]
       38 MOVE                             R8 R2
       39 CALL                             R7 1 1
       40 GETUPVAL                         R10 2
       41 GETTABLEKS                       R9 R10 K1 ["Mouse"]
       43 GETTABLEKS                       R8 R9 K3 ["new"]
       45 MOVE                             R9 R3
       46 CALL                             R8 1 1
       47 GETUPVAL                         R11 2
       48 GETTABLEKS                       R10 R11 K2 ["Store"]
       50 GETTABLEKS                       R9 R10 K3 ["new"]
       52 MOVE                             R10 R4
       53 CALL                             R9 1 -1
       54 SETLIST                          R6 R7 -1 [1]
       56 MOVE                             R7 R1
       57 CALL                             R5 2 -1
       58 RETURN                           R5 -1

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
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R5 R0 K5 ["Packages"]
       20 GETTABLEKS                       R4 R5 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R2 R3 K8 ["ContextServices"]
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R6 R0 K9 ["Src"]
       29 GETTABLEKS                       R5 R6 K10 ["Reducers"]
       31 GETTABLEKS                       R4 R5 K11 ["MainReducer"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K12 [PROTO_0]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R2
       38 RETURN                           R4 1
