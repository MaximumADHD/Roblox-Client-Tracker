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
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["TestHelpers"]
       18 GETTABLEKS                       R3 R1 K8 ["ContextServices"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K9 ["Src"]
       24 GETTABLEKS                       R5 R5 K10 ["Resources"]
       26 GETTABLEKS                       R5 R5 K11 ["MakeTheme"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R6 R0 K9 ["Src"]
       33 GETTABLEKS                       R6 R6 K8 ["ContextServices"]
       35 GETTABLEKS                       R6 R6 K12 ["CollaboratorsServiceContext"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R7 R0 K9 ["Src"]
       42 GETTABLEKS                       R7 R7 K8 ["ContextServices"]
       44 GETTABLEKS                       R7 R7 K13 ["StudioPublishServiceContext"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R8 R0 K9 ["Src"]
       51 GETTABLEKS                       R8 R8 K14 ["Util"]
       53 GETTABLEKS                       R8 R8 K15 ["mockCollaboratorsService"]
       55 CALL                             R7 1 1
       56 NEWTABLE                         R8 0 5
       58 GETTABLEKS                       R9 R3 K16 ["Analytics"]
       60 GETTABLEKS                       R9 R9 K17 ["mock"]
       62 CALL                             R9 0 1
       63 GETTABLEKS                       R10 R3 K18 ["Localization"]
       65 GETTABLEKS                       R10 R10 K17 ["mock"]
       67 CALL                             R10 0 1
       68 MOVE                             R11 R4
       69 LOADB                            R12 1
       70 CALL                             R11 1 1
       71 GETTABLEKS                       R12 R5 K19 ["new"]
       73 MOVE                             R13 R7
       74 CALL                             R12 1 1
       75 GETTABLEKS                       R13 R6 K19 ["new"]
       77 CALL                             R13 0 -1
       78 SETLIST                          R8 R9 -1 [1]
       80 DUPCLOSURE                       R9 K20 [PROTO_0]
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R8
       83 RETURN                           R9 1
