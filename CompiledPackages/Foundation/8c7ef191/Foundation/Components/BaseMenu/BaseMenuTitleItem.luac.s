PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R2
        4 GETTABLEKS                       R5 R0 K0 ["size"]
        6 LOADB                            R6 0
        7 CALL                             R3 3 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K1 ["createElement"]
       11 GETUPVAL                         R5 3
       12 GETUPVAL                         R6 4
       13 MOVE                             R7 R0
       14 DUPTABLE                         R8 K4 [{"tag", "ref"}]
       15 GETTABLEKS                       R9 R3 K5 ["container"]
       17 GETTABLEKS                       R9 R9 K2 ["tag"]
       19 SETTABLEKS                       R9 R8 K2 ["tag"]
       21 SETTABLEKS                       R1 R8 K3 ["ref"]
       23 CALL                             R6 2 1
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K1 ["createElement"]
       27 GETUPVAL                         R8 5
       28 DUPTABLE                         R9 K7 [{"Text", "tag"}]
       29 GETTABLEKS                       R10 R0 K8 ["text"]
       31 SETTABLEKS                       R10 R9 K6 ["Text"]
       33 GETTABLEKS                       R10 R3 K9 ["title"]
       35 GETTABLEKS                       R10 R10 K2 ["tag"]
       37 SETTABLEKS                       R10 R9 K2 ["tag"]
       39 CALL                             R7 2 -1
       40 CALL                             R4 -1 -1
       41 RETURN                           R4 -1

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
       18 GETTABLEKS                       R4 R4 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Text"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Providers"]
       39 GETTABLEKS                       R7 R7 K13 ["Style"]
       41 GETTABLEKS                       R7 R7 K14 ["useTokens"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K15 ["Utility"]
       48 GETTABLEKS                       R8 R8 K16 ["withCommonProps"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K17 ["Enums"]
       55 GETTABLEKS                       R9 R9 K18 ["ControlState"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K17 ["Enums"]
       62 GETTABLEKS                       R10 R10 K19 ["InputSize"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETIMPORT                        R11 K1 [script]
       69 GETTABLEKS                       R11 R11 K4 ["Parent"]
       71 GETTABLEKS                       R11 R11 K20 ["useBaseMenuItemVariants"]
       73 CALL                             R10 1 1
       74 DUPCLOSURE                       R11 K21 [PROTO_0]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R4
       81 GETTABLEKS                       R12 R2 K22 ["memo"]
       83 GETTABLEKS                       R13 R2 K23 ["forwardRef"]
       85 MOVE                             R14 R11
       86 CALL                             R13 1 -1
       87 CALL                             R12 -1 -1
       88 RETURN                           R12 -1
