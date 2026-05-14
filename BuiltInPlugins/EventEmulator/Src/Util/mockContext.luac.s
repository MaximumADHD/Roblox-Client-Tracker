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
       31 GETTABLEKS                       R6 R6 K11 ["Reducers"]
       33 GETTABLEKS                       R6 R6 K12 ["MainReducer"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R7 R0 K10 ["Src"]
       40 GETTABLEKS                       R7 R7 K13 ["Resources"]
       42 GETTABLEKS                       R7 R7 K14 ["MakeTheme"]
       44 CALL                             R6 1 1
       45 NEWTABLE                         R7 0 4
       47 GETTABLEKS                       R8 R4 K15 ["Analytics"]
       49 GETTABLEKS                       R8 R8 K16 ["mock"]
       51 CALL                             R8 0 1
       52 GETTABLEKS                       R9 R4 K17 ["Localization"]
       54 GETTABLEKS                       R9 R9 K16 ["mock"]
       56 CALL                             R9 0 1
       57 GETTABLEKS                       R10 R4 K18 ["Store"]
       59 GETTABLEKS                       R10 R10 K19 ["new"]
       61 GETTABLEKS                       R11 R1 K18 ["Store"]
       63 GETTABLEKS                       R11 R11 K19 ["new"]
       65 MOVE                             R12 R5
       66 CALL                             R11 1 -1
       67 CALL                             R10 -1 1
       68 MOVE                             R11 R6
       69 LOADB                            R12 1
       70 CALL                             R11 1 -1
       71 SETLIST                          R7 R8 -1 [1]
       73 DUPCLOSURE                       R8 K20 [PROTO_0]
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R7
       76 RETURN                           R8 1
