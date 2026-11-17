PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected story to be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["provideMockContext"]
       18 GETUPVAL                         R2 1
       19 MOVE                             R3 R0
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

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
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["TestHelpers"]
       25 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R6 K11 ["Resources"]
       33 GETTABLEKS                       R6 R6 K12 ["MakeTheme"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R7 R0 K10 ["Src"]
       40 GETTABLEKS                       R7 R7 K13 ["Reducers"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R8 R0 K10 ["Src"]
       47 GETTABLEKS                       R8 R8 K14 ["InitialStoreState"]
       49 CALL                             R7 1 1
       50 GETTABLEKS                       R8 R4 K15 ["Store"]
       52 GETTABLEKS                       R8 R8 K16 ["new"]
       54 GETTABLEKS                       R9 R1 K15 ["Store"]
       56 GETTABLEKS                       R9 R9 K16 ["new"]
       58 MOVE                             R10 R6
       59 MOVE                             R11 R7
       60 NEWTABLE                         R12 0 1
       62 GETTABLEKS                       R13 R1 K17 ["thunkMiddleware"]
       64 SETLIST                          R12 R13 1 [1]
       66 LOADNIL                          R13
       67 CALL                             R9 4 -1
       68 CALL                             R8 -1 1
       69 NEWTABLE                         R9 0 4
       71 GETTABLEKS                       R10 R4 K18 ["Analytics"]
       73 GETTABLEKS                       R10 R10 K19 ["mock"]
       75 CALL                             R10 0 1
       76 GETTABLEKS                       R11 R4 K20 ["Localization"]
       78 GETTABLEKS                       R11 R11 K19 ["mock"]
       80 CALL                             R11 0 1
       81 MOVE                             R12 R5
       82 LOADB                            R13 1
       83 CALL                             R12 1 1
       84 MOVE                             R13 R8
       85 SETLIST                          R9 R10 4 [1]
       87 DUPCLOSURE                       R10 K21 [PROTO_0]
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R9
       90 RETURN                           R10 1
