PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 DUPTABLE                         R5 K7 [{[1] = "icons/graphic/loadingspinner", ["size"], ["style"], ["Rotation"], ["ref"], ["testId"]}]
        9 GETTABLEKS                       R6 R2 K2 ["size"]
       11 SETTABLEKS                       R6 R5 K2 ["size"]
       13 GETTABLEKS                       R6 R4 K8 ["DarkMode"]
       15 GETTABLEKS                       R6 R6 K9 ["Content"]
       17 GETTABLEKS                       R6 R6 K10 ["Emphasis"]
       19 SETTABLEKS                       R6 R5 K3 ["style"]
       21 SETTABLEKS                       R3 R5 K4 ["Rotation"]
       23 SETTABLEKS                       R1 R5 K5 ["ref"]
       25 LOADK                            R7 K11 ["%*--icon"]
       26 GETTABLEKS                       R9 R2 K6 ["testId"]
       28 NAMECALL                         R7 R7 K12 ["format"]
       30 CALL                             R7 2 1
       31 MOVE                             R6 R7
       32 SETTABLEKS                       R6 R5 K6 ["testId"]
       34 GETUPVAL                         R6 4
       35 GETTABLEKS                       R6 R6 K13 ["createElement"]
       37 GETUPVAL                         R7 5
       38 GETUPVAL                         R8 6
       39 MOVE                             R9 R2
       40 DUPTABLE                         R10 K16 [{["tag"] = "auto-xy"}]
       41 CALL                             R8 2 1
       42 DUPTABLE                         R9 K18 [{"Icon"}]
       43 GETUPVAL                         R10 4
       44 GETTABLEKS                       R10 R10 K13 ["createElement"]
       46 GETUPVAL                         R11 7
       47 MOVE                             R12 R5
       48 CALL                             R10 2 1
       49 SETTABLEKS                       R10 R9 K17 ["Icon"]
       51 CALL                             R6 3 -1
       52 RETURN                           R6 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Icon"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["View"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Enums"]
       32 GETTABLEKS                       R6 R6 K12 ["IconSize"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R7 K13 ["Types"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Utility"]
       46 GETTABLEKS                       R8 R8 K15 ["useRotation"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K16 ["Providers"]
       53 GETTABLEKS                       R9 R9 K17 ["Style"]
       55 GETTABLEKS                       R9 R9 K18 ["useTokens"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K14 ["Utility"]
       62 GETTABLEKS                       R10 R10 K19 ["withCommonProps"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K14 ["Utility"]
       69 GETTABLEKS                       R11 R11 K20 ["withDefaults"]
       71 CALL                             R10 1 1
       72 DUPTABLE                         R11 K24 [{["size"], ["testId"] = "--foundation-loading"}]
       73 GETTABLEKS                       R12 R5 K25 ["Large"]
       75 SETTABLEKS                       R12 R11 K21 ["size"]
       77 DUPCLOSURE                       R12 K26 [PROTO_0]
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R3
       86 GETTABLEKS                       R13 R2 K27 ["memo"]
       88 GETTABLEKS                       R14 R2 K28 ["forwardRef"]
       90 MOVE                             R15 R12
       91 CALL                             R14 1 -1
       92 CALL                             R13 -1 -1
       93 RETURN                           R13 -1
