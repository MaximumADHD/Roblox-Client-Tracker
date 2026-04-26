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
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Framework"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["ContextServices"]
       16 GETTABLEKS                       R4 R2 K7 ["TestHelpers"]
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R7 R0 K8 ["Context"]
       22 GETTABLEKS                       R6 R7 K9 ["StudioServices"]
       24 CALL                             R5 1 1
       25 GETIMPORT                        R6 K4 [require]
       27 GETTABLEKS                       R8 R0 K10 ["Resources"]
       29 GETTABLEKS                       R7 R8 K11 ["Theme"]
       31 CALL                             R6 1 1
       32 GETIMPORT                        R7 K4 [require]
       34 GETTABLEKS                       R8 R0 K10 ["Resources"]
       36 CALL                             R7 1 1
       37 NEWTABLE                         R8 0 4
       39 GETTABLEKS                       R10 R3 K12 ["Analytics"]
       41 GETTABLEKS                       R9 R10 K13 ["mock"]
       43 CALL                             R9 0 1
       44 GETTABLEKS                       R11 R3 K14 ["Localization"]
       46 GETTABLEKS                       R10 R11 K13 ["mock"]
       48 DUPTABLE                         R11 K16 [{"libraries"}]
       49 NEWTABLE                         R12 1 0
       51 GETTABLEKS                       R13 R7 K17 ["LOCALIZATION_PROJECT_NAME"]
       53 DUPTABLE                         R14 K20 [{"stringResourceTable", "translationResourceTable"}]
       54 GETTABLEKS                       R15 R7 K21 ["SourceStrings"]
       56 SETTABLEKS                       R15 R14 K18 ["stringResourceTable"]
       58 GETTABLEKS                       R15 R7 K22 ["LocalizedStrings"]
       60 SETTABLEKS                       R15 R14 K19 ["translationResourceTable"]
       62 SETTABLE                         R14 R12 R13
       63 SETTABLEKS                       R12 R11 K15 ["libraries"]
       65 CALL                             R10 1 1
       66 GETTABLEKS                       R11 R5 K13 ["mock"]
       68 CALL                             R11 0 1
       69 GETTABLEKS                       R12 R6 K13 ["mock"]
       71 CALL                             R12 0 -1
       72 SETLIST                          R8 R9 -1 [1]
       74 DUPCLOSURE                       R9 K23 [PROTO_0]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R8
       77 RETURN                           R9 1
