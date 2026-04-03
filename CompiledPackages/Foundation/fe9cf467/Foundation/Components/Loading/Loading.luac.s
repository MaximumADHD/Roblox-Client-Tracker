PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETUPVAL                         R6 4
        9 GETTABLEKS                       R5 R6 K0 ["createElement"]
       11 GETUPVAL                         R6 5
       12 GETUPVAL                         R7 6
       13 MOVE                             R8 R2
       14 DUPTABLE                         R9 K6 [{"name", "size", "style", "Rotation", "ref"}]
       15 LOADK                            R10 K7 ["icons/graphic/loadingspinner"]
       16 SETTABLEKS                       R10 R9 K1 ["name"]
       18 GETTABLEKS                       R10 R2 K2 ["size"]
       20 SETTABLEKS                       R10 R9 K2 ["size"]
       22 GETTABLEKS                       R12 R4 K8 ["DarkMode"]
       24 GETTABLEKS                       R11 R12 K9 ["Content"]
       26 GETTABLEKS                       R10 R11 K10 ["Emphasis"]
       28 SETTABLEKS                       R10 R9 K3 ["style"]
       30 SETTABLEKS                       R3 R9 K4 ["Rotation"]
       32 SETTABLEKS                       R1 R9 K5 ["ref"]
       34 CALL                             R7 2 -1
       35 CALL                             R5 -1 -1
       36 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Icon"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R6 K11 ["IconSize"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R7 K12 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K13 ["Utility"]
       39 GETTABLEKS                       R7 R8 K14 ["useRotation"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R10 R0 K15 ["Providers"]
       46 GETTABLEKS                       R9 R10 K16 ["Style"]
       48 GETTABLEKS                       R8 R9 K17 ["useTokens"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R10 R0 K13 ["Utility"]
       55 GETTABLEKS                       R9 R10 K18 ["withCommonProps"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R11 R0 K13 ["Utility"]
       62 GETTABLEKS                       R10 R11 K19 ["withDefaults"]
       64 CALL                             R9 1 1
       65 DUPTABLE                         R10 K22 [{"size", "testId"}]
       66 GETTABLEKS                       R11 R4 K23 ["Large"]
       68 SETTABLEKS                       R11 R10 K20 ["size"]
       70 LOADK                            R11 K24 ["--foundation-loading"]
       71 SETTABLEKS                       R11 R10 K21 ["testId"]
       73 DUPCLOSURE                       R11 K25 [PROTO_0]
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R8
       81 GETTABLEKS                       R12 R2 K26 ["memo"]
       83 GETTABLEKS                       R13 R2 K27 ["forwardRef"]
       85 MOVE                             R14 R11
       86 CALL                             R13 1 -1
       87 CALL                             R12 -1 -1
       88 RETURN                           R12 -1
