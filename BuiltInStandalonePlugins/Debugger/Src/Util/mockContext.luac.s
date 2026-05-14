PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["provideMockContext"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Expected initialStore to be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [type]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       26 LOADK                            R4 K6 ["Expected children to be a table"]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K7 ["Store"]
       33 GETTABLEKS                       R2 R2 K8 ["new"]
       35 GETUPVAL                         R3 1
       36 MOVE                             R4 R0
       37 GETUPVAL                         R5 2
       38 CALL                             R2 3 1
       39 GETUPVAL                         R4 3
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R5 R5 K7 ["Store"]
       43 GETTABLEKS                       R5 R5 K8 ["new"]
       45 MOVE                             R6 R2
       46 CALL                             R5 1 -1
       47 FASTCALL                         TABLE_INSERT ; [+2]
       48 GETIMPORT                        R3 K10 [table.insert]
       50 CALL                             R3 -1 0
       51 DUPTABLE                         R3 K13 [{"getStore", "getChildrenWithMockContext"}]
       52 NEWCLOSURE                       R4 P0
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R4 R3 K11 ["getStore"]
       56 NEWCLOSURE                       R4 P1
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R4 R3 K12 ["getChildrenWithMockContext"]
       62 RETURN                           R3 1

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
       31 GETTABLEKS                       R6 R6 K11 ["Reducers"]
       33 GETTABLEKS                       R6 R6 K12 ["MainReducer"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R7 R0 K10 ["Src"]
       40 GETTABLEKS                       R7 R7 K13 ["Middleware"]
       42 GETTABLEKS                       R7 R7 K14 ["MainMiddleware"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K4 [require]
       47 GETTABLEKS                       R8 R0 K10 ["Src"]
       49 GETTABLEKS                       R8 R8 K15 ["Resources"]
       51 GETTABLEKS                       R8 R8 K16 ["MakeTheme"]
       53 CALL                             R7 1 1
       54 NEWTABLE                         R8 0 3
       56 GETTABLEKS                       R9 R4 K17 ["Analytics"]
       58 GETTABLEKS                       R9 R9 K18 ["mock"]
       60 CALL                             R9 0 1
       61 GETTABLEKS                       R10 R4 K19 ["Localization"]
       63 GETTABLEKS                       R10 R10 K18 ["mock"]
       65 CALL                             R10 0 1
       66 MOVE                             R11 R7
       67 LOADB                            R12 1
       68 CALL                             R11 1 -1
       69 SETLIST                          R8 R9 -1 [1]
       71 DUPCLOSURE                       R9 K20 [PROTO_2]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R3
       78 RETURN                           R9 1
