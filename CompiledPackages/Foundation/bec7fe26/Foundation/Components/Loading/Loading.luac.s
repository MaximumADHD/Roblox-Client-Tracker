PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 4
        9 GETTABLEKS                       R5 R5 K0 ["createElement"]
       11 GETUPVAL                         R6 5
       12 GETUPVAL                         R7 6
       13 MOVE                             R8 R2
       14 DUPTABLE                         R9 K7 [{["name"] = "icons/graphic/loadingspinner", ["size"], ["style"], ["Rotation"], ["ref"]}]
       15 GETTABLEKS                       R10 R2 K3 ["size"]
       17 SETTABLEKS                       R10 R9 K3 ["size"]
       19 GETTABLEKS                       R10 R4 K8 ["DarkMode"]
       21 GETTABLEKS                       R10 R10 K9 ["Content"]
       23 GETTABLEKS                       R10 R10 K10 ["Emphasis"]
       25 SETTABLEKS                       R10 R9 K4 ["style"]
       27 SETTABLEKS                       R3 R9 K5 ["Rotation"]
       29 SETTABLEKS                       R1 R9 K6 ["ref"]
       31 CALL                             R7 2 -1
       32 CALL                             R5 -1 -1
       33 RETURN                           R5 -1

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
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["IconSize"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Providers"]
       32 GETTABLEKS                       R6 R6 K13 ["Style"]
       34 GETTABLEKS                       R6 R6 K14 ["useTokens"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K15 ["Utility"]
       41 GETTABLEKS                       R7 R7 K16 ["withDefaults"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K15 ["Utility"]
       48 GETTABLEKS                       R8 R8 K17 ["useRotation"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K8 ["Components"]
       55 GETTABLEKS                       R9 R9 K18 ["Types"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K15 ["Utility"]
       62 GETTABLEKS                       R10 R10 K19 ["withCommonProps"]
       64 CALL                             R9 1 1
       65 DUPTABLE                         R10 K23 [{["size"], ["testId"] = "--foundation-loading"}]
       66 GETTABLEKS                       R11 R4 K24 ["Large"]
       68 SETTABLEKS                       R11 R10 K20 ["size"]
       70 DUPCLOSURE                       R11 K25 [PROTO_0]
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R9
       78 GETTABLEKS                       R12 R2 K26 ["memo"]
       80 GETTABLEKS                       R13 R2 K27 ["forwardRef"]
       82 MOVE                             R14 R11
       83 CALL                             R13 1 -1
       84 CALL                             R12 -1 -1
       85 RETURN                           R12 -1
