PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Expected children to be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K6 ["provideMockContext"]
       18 GETUPVAL                         R3 1
       19 DUPTABLE                         R4 K8 [{"ContextStack"}]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K9 ["createElement"]
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K7 ["ContextStack"]
       26 DUPTABLE                         R7 K11 [{"providers"}]
       27 NEWTABLE                         R8 0 1
       29 GETUPVAL                         R9 2
       30 GETTABLEKS                       R9 R9 K9 ["createElement"]
       32 GETUPVAL                         R10 4
       33 GETTABLEKS                       R10 R10 K12 ["MockProvider"]
       35 CALL                             R9 1 -1
       36 SETLIST                          R8 R9 -1 [1]
       38 SETTABLEKS                       R8 R7 K10 ["providers"]
       40 MOVE                             R8 R0
       41 CALL                             R5 3 1
       42 SETTABLEKS                       R5 R4 K7 ["ContextStack"]
       44 CALL                             R2 2 1
       45 GETUPVAL                         R3 2
       46 GETTABLEKS                       R3 R3 K9 ["createElement"]
       48 GETUPVAL                         R4 5
       49 DUPTABLE                         R5 K16 [{["theme"], ["device"] = "Desktop"}]
       50 MOVE                             R6 R1
       51 JUMPIF                           R6 ; [+7]
       52 GETUPVAL                         R6 6
       53 GETTABLEKS                       R6 R6 K17 ["Enums"]
       55 GETTABLEKS                       R6 R6 K18 ["ColorMode"]
       57 GETTABLEKS                       R6 R6 K19 ["Dark"]
       59 SETTABLEKS                       R6 R5 K13 ["theme"]
       61 MOVE                             R6 R2
       62 CALL                             R3 3 -1
       63 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetQualityValidation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["TestHelpers"]
       30 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Packages"]
       36 GETTABLEKS                       R7 R7 K12 ["Foundation"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R6 K13 ["FoundationProvider"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R0 K6 ["Packages"]
       45 GETTABLEKS                       R9 R9 K14 ["StudioFoundation"]
       47 CALL                             R8 1 1
       48 GETTABLEKS                       R9 R8 K15 ["Contexts"]
       50 GETTABLEKS                       R9 R9 K16 ["Localization"]
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R0 K17 ["Src"]
       56 GETTABLEKS                       R11 R11 K18 ["Util"]
       58 GETTABLEKS                       R11 R11 K19 ["localizationLibraries"]
       60 CALL                             R10 1 1
       61 NEWTABLE                         R11 0 3
       63 GETTABLEKS                       R12 R5 K20 ["Analytics"]
       65 GETTABLEKS                       R12 R12 K21 ["mock"]
       67 CALL                             R12 0 1
       68 GETTABLEKS                       R13 R5 K22 ["Design"]
       70 GETTABLEKS                       R13 R13 K21 ["mock"]
       72 GETIMPORT                        R14 K25 [Instance.new]
       74 LOADK                            R15 K26 ["StyleSheet"]
       75 CALL                             R14 1 -1
       76 CALL                             R13 -1 1
       77 GETTABLEKS                       R14 R5 K16 ["Localization"]
       79 GETTABLEKS                       R14 R14 K21 ["mock"]
       81 DUPTABLE                         R15 K28 [{"libraries"}]
       82 SETTABLEKS                       R10 R15 K27 ["libraries"]
       84 CALL                             R14 1 -1
       85 SETLIST                          R11 R12 -1 [1]
       87 DUPCLOSURE                       R12 K29 [PROTO_0]
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R6
       95 RETURN                           R12 1
