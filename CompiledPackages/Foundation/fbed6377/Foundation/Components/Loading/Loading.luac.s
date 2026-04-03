PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 DUPTABLE                         R5 K6 [{"name", "size", "style", "Rotation", "ref", "testId"}]
        9 LOADK                            R6 K7 ["icons/graphic/loadingspinner"]
       10 SETTABLEKS                       R6 R5 K0 ["name"]
       12 GETTABLEKS                       R6 R2 K1 ["size"]
       14 SETTABLEKS                       R6 R5 K1 ["size"]
       16 GETTABLEKS                       R8 R4 K8 ["DarkMode"]
       18 GETTABLEKS                       R7 R8 K9 ["Content"]
       20 GETTABLEKS                       R6 R7 K10 ["Emphasis"]
       22 SETTABLEKS                       R6 R5 K2 ["style"]
       24 SETTABLEKS                       R3 R5 K3 ["Rotation"]
       26 SETTABLEKS                       R1 R5 K4 ["ref"]
       28 LOADK                            R7 K11 ["%*--icon"]
       29 GETTABLEKS                       R9 R2 K5 ["testId"]
       31 NAMECALL                         R7 R7 K12 ["format"]
       33 CALL                             R7 2 1
       34 MOVE                             R6 R7
       35 SETTABLEKS                       R6 R5 K5 ["testId"]
       37 GETUPVAL                         R7 4
       38 GETTABLEKS                       R6 R7 K13 ["createElement"]
       40 GETUPVAL                         R7 5
       41 GETUPVAL                         R8 6
       42 MOVE                             R9 R2
       43 DUPTABLE                         R10 K15 [{"tag"}]
       44 LOADK                            R11 K16 ["auto-xy"]
       45 SETTABLEKS                       R11 R10 K14 ["tag"]
       47 CALL                             R8 2 1
       48 DUPTABLE                         R9 K18 [{"Icon"}]
       49 GETUPVAL                         R11 4
       50 GETTABLEKS                       R10 R11 K13 ["createElement"]
       52 GETUPVAL                         R11 7
       53 MOVE                             R12 R5
       54 CALL                             R10 2 1
       55 SETTABLEKS                       R10 R9 K17 ["Icon"]
       57 CALL                             R6 3 -1
       58 RETURN                           R6 -1

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
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["View"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K11 ["Enums"]
       32 GETTABLEKS                       R6 R7 K12 ["IconSize"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R8 K13 ["Types"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Utility"]
       46 GETTABLEKS                       R8 R9 K15 ["useRotation"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R11 R0 K16 ["Providers"]
       53 GETTABLEKS                       R10 R11 K17 ["Style"]
       55 GETTABLEKS                       R9 R10 K18 ["useTokens"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R11 R0 K14 ["Utility"]
       62 GETTABLEKS                       R10 R11 K19 ["withCommonProps"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R12 R0 K14 ["Utility"]
       69 GETTABLEKS                       R11 R12 K20 ["withDefaults"]
       71 CALL                             R10 1 1
       72 DUPTABLE                         R11 K23 [{"size", "testId"}]
       73 GETTABLEKS                       R12 R5 K24 ["Large"]
       75 SETTABLEKS                       R12 R11 K21 ["size"]
       77 LOADK                            R12 K25 ["--foundation-loading"]
       78 SETTABLEKS                       R12 R11 K22 ["testId"]
       80 DUPCLOSURE                       R12 K26 [PROTO_0]
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R3
       89 GETTABLEKS                       R13 R2 K27 ["memo"]
       91 GETTABLEKS                       R14 R2 K28 ["forwardRef"]
       93 MOVE                             R15 R12
       94 CALL                             R14 1 -1
       95 CALL                             R13 -1 -1
       96 RETURN                           R13 -1
