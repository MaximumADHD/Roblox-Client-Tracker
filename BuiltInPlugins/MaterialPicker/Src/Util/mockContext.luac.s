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
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["MaterialFramework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R1 K9 ["TestHelpers"]
       27 GETTABLEKS                       R5 R2 K10 ["Resources"]
       29 GETTABLEKS                       R7 R2 K11 ["Context"]
       31 GETTABLEKS                       R6 R7 K12 ["StudioServices"]
       33 GETIMPORT                        R7 K4 [require]
       35 GETTABLEKS                       R10 R0 K13 ["Src"]
       37 GETTABLEKS                       R9 R10 K10 ["Resources"]
       39 GETTABLEKS                       R8 R9 K14 ["createThemeTable"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K4 [require]
       44 GETTABLEKS                       R11 R0 K13 ["Src"]
       46 GETTABLEKS                       R10 R11 K9 ["TestHelpers"]
       48 GETTABLEKS                       R9 R10 K15 ["createEmptyStore"]
       50 CALL                             R8 1 1
       51 MOVE                             R9 R7
       52 LOADB                            R10 1
       53 CALL                             R9 1 1
       54 NEWTABLE                         R10 0 5
       56 GETTABLEKS                       R12 R3 K16 ["Analytics"]
       58 GETTABLEKS                       R11 R12 K17 ["mock"]
       60 CALL                             R11 0 1
       61 GETTABLEKS                       R13 R3 K18 ["Localization"]
       63 GETTABLEKS                       R12 R13 K17 ["mock"]
       65 DUPTABLE                         R13 K20 [{"libraries"}]
       66 NEWTABLE                         R14 1 0
       68 GETTABLEKS                       R15 R5 K21 ["LOCALIZATION_PROJECT_NAME"]
       70 DUPTABLE                         R16 K24 [{"stringResourceTable", "translationResourceTable"}]
       71 GETTABLEKS                       R17 R5 K25 ["SourceStrings"]
       73 SETTABLEKS                       R17 R16 K22 ["stringResourceTable"]
       75 GETTABLEKS                       R17 R5 K26 ["LocalizedStrings"]
       77 SETTABLEKS                       R17 R16 K23 ["translationResourceTable"]
       79 SETTABLE                         R16 R14 R15
       80 SETTABLEKS                       R14 R13 K19 ["libraries"]
       82 CALL                             R12 1 1
       83 GETTABLEKS                       R14 R3 K27 ["Store"]
       85 GETTABLEKS                       R13 R14 K28 ["new"]
       87 MOVE                             R14 R8
       88 CALL                             R14 0 -1
       89 CALL                             R13 -1 1
       90 GETTABLEKS                       R14 R9 K29 ["createTheme"]
       92 CALL                             R14 0 1
       93 GETTABLEKS                       R15 R6 K17 ["mock"]
       95 CALL                             R15 0 -1
       96 SETLIST                          R10 R11 -1 [1]
       98 DUPCLOSURE                       R11 K30 [PROTO_0]
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R10
      101 RETURN                           R11 1
