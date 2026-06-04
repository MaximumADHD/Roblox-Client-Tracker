PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 SETTABLEKS                       R1 R2 K0 ["ref"]
        6 GETTABLEKS                       R3 R2 K1 ["shape"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K2 ["Circle"]
       11 JUMPIFNOTEQ                      R3 R4 ; [+8]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K3 ["createElement"]
       16 GETUPVAL                         R4 4
       17 MOVE                             R5 R2
       18 CALL                             R3 2 -1
       19 RETURN                           R3 -1
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K3 ["createElement"]
       23 GETUPVAL                         R4 5
       24 MOVE                             R5 R2
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1

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
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["ProgressBar"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K4 ["Parent"]
       29 GETTABLEKS                       R5 R5 K9 ["ProgressCircle"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Enums"]
       36 GETTABLEKS                       R6 R6 K11 ["ProgressShape"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K10 ["Enums"]
       43 GETTABLEKS                       R7 R7 K12 ["ProgressSize"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K13 ["Utility"]
       50 GETTABLEKS                       R8 R8 K14 ["withDefaults"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R0 K15 ["Providers"]
       57 GETTABLEKS                       R9 R9 K16 ["Style"]
       59 GETTABLEKS                       R9 R9 K17 ["Tokens"]
       61 CALL                             R8 1 1
       62 DUPTABLE                         R9 K19 [{"testId"}]
       63 LOADK                            R10 K20 ["--foundation-progress"]
       64 SETTABLEKS                       R10 R9 K18 ["testId"]
       66 DUPCLOSURE                       R10 K21 [PROTO_0]
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R3
       73 GETTABLEKS                       R11 R2 K22 ["memo"]
       75 GETTABLEKS                       R12 R2 K23 ["forwardRef"]
       77 MOVE                             R13 R10
       78 CALL                             R12 1 -1
       79 CALL                             R11 -1 -1
       80 RETURN                           R11 -1
