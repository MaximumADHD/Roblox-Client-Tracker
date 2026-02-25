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
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K6 ["provideMockContext"]
       18 GETUPVAL                         R2 1
       19 MOVE                             R3 R0
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

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
       23 GETTABLEKS                       R3 R2 K8 ["TestHelpers"]
       25 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R8 R0 K10 ["Src"]
       31 GETTABLEKS                       R7 R8 K11 ["Reducers"]
       33 GETTABLEKS                       R6 R7 K12 ["MainReducer"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R7 R2 K13 ["Style"]
       38 GETTABLEKS                       R6 R7 K14 ["makeTheme"]
       40 MOVE                             R7 R6
       41 GETTABLEKS                       R9 R0 K10 ["Src"]
       43 GETTABLEKS                       R8 R9 K15 ["Components"]
       45 CALL                             R7 1 1
       46 NEWTABLE                         R8 0 4
       48 GETTABLEKS                       R10 R4 K16 ["Analytics"]
       50 GETTABLEKS                       R9 R10 K17 ["mock"]
       52 CALL                             R9 0 1
       53 GETTABLEKS                       R11 R4 K18 ["Localization"]
       55 GETTABLEKS                       R10 R11 K17 ["mock"]
       57 CALL                             R10 0 1
       58 GETTABLEKS                       R12 R4 K19 ["Store"]
       60 GETTABLEKS                       R11 R12 K20 ["new"]
       62 GETTABLEKS                       R13 R1 K19 ["Store"]
       64 GETTABLEKS                       R12 R13 K20 ["new"]
       66 MOVE                             R13 R5
       67 LOADNIL                          R14
       68 LOADNIL                          R15
       69 LOADNIL                          R16
       70 CALL                             R12 4 -1
       71 CALL                             R11 -1 1
       72 MOVE                             R12 R7
       73 CALL                             R12 0 -1
       74 SETLIST                          R8 R9 -1 [1]
       76 DUPCLOSURE                       R9 K21 [PROTO_0]
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R8
       79 RETURN                           R9 1
