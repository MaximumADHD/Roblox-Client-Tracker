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
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ConstraintTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["TestHelpers"]
       23 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R8 R0 K11 ["Src"]
       29 GETTABLEKS                       R7 R8 K12 ["Reducers"]
       31 GETTABLEKS                       R6 R7 K13 ["MainReducer"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R8 R2 K14 ["Style"]
       36 GETTABLEKS                       R7 R8 K15 ["Themes"]
       38 GETTABLEKS                       R6 R7 K16 ["StudioTheme"]
       40 NEWTABLE                         R7 0 4
       42 GETTABLEKS                       R9 R4 K17 ["Analytics"]
       44 GETTABLEKS                       R8 R9 K18 ["mock"]
       46 CALL                             R8 0 1
       47 GETTABLEKS                       R10 R4 K19 ["Localization"]
       49 GETTABLEKS                       R9 R10 K18 ["mock"]
       51 CALL                             R9 0 1
       52 GETTABLEKS                       R11 R4 K20 ["Store"]
       54 GETTABLEKS                       R10 R11 K21 ["new"]
       56 GETTABLEKS                       R12 R1 K20 ["Store"]
       58 GETTABLEKS                       R11 R12 K21 ["new"]
       60 MOVE                             R12 R5
       61 LOADNIL                          R13
       62 LOADNIL                          R14
       63 LOADNIL                          R15
       64 CALL                             R11 4 -1
       65 CALL                             R10 -1 1
       66 GETTABLEKS                       R11 R6 K18 ["mock"]
       68 CALL                             R11 0 -1
       69 SETLIST                          R7 R8 -1 [1]
       71 DUPCLOSURE                       R8 K22 [PROTO_0]
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R7
       74 RETURN                           R8 1
