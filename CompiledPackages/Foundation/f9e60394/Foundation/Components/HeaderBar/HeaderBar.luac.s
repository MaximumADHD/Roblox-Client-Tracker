PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["createElement"]
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R4 4
        9 MOVE                             R5 R1
       10 DUPTABLE                         R6 K2 [{"tag"}]
       11 NEWTABLE                         R7 4 0
       13 LOADB                            R8 1
       14 SETTABLEKS                       R8 R7 K3 ["row flex-between gap-small padding-medium"]
       16 GETTABLEKS                       R8 R1 K4 ["hasBackground"]
       18 SETTABLEKS                       R8 R7 K5 ["bg-surface-0"]
       20 GETTABLEKS                       R8 R1 K6 ["isCompact"]
       22 SETTABLEKS                       R8 R7 K7 ["size-full-1400"]
       24 GETTABLEKS                       R9 R1 K6 ["isCompact"]
       26 NOT                              R8 R9
       27 SETTABLEKS                       R8 R7 K8 ["size-full-1600"]
       29 SETTABLEKS                       R7 R6 K1 ["tag"]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R5 R5 K0 ["createElement"]
       35 GETUPVAL                         R6 5
       36 GETTABLEKS                       R6 R6 K9 ["Provider"]
       38 DUPTABLE                         R7 K11 [{"testId"}]
       39 GETTABLEKS                       R8 R1 K10 ["testId"]
       41 SETTABLEKS                       R8 R7 K10 ["testId"]
       43 GETTABLEKS                       R8 R1 K12 ["children"]
       45 CALL                             R5 3 -1
       46 CALL                             R2 -1 -1
       47 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETIMPORT                        R3 K1 [script]
       13 GETTABLEKS                       R3 R3 K4 ["Parent"]
       15 GETTABLEKS                       R3 R3 K7 ["HeaderBarContext"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K8 ["React"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Components"]
       27 GETTABLEKS                       R5 R5 K10 ["Types"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Components"]
       34 GETTABLEKS                       R6 R6 K11 ["View"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K12 ["Utility"]
       41 GETTABLEKS                       R7 R7 K13 ["withCommonProps"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K12 ["Utility"]
       48 GETTABLEKS                       R8 R8 K14 ["withDefaults"]
       50 CALL                             R7 1 1
       51 DUPTABLE                         R8 K18 [{"isCompact", "hasBackground", "testId"}]
       52 LOADB                            R9 0
       53 SETTABLEKS                       R9 R8 K15 ["isCompact"]
       55 LOADB                            R9 1
       56 SETTABLEKS                       R9 R8 K16 ["hasBackground"]
       58 LOADK                            R9 K19 ["--foundation-header-bar"]
       59 SETTABLEKS                       R9 R8 K17 ["testId"]
       61 DUPCLOSURE                       R9 K20 [PROTO_0]
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R2
       68 GETTABLEKS                       R10 R3 K21 ["memo"]
       70 MOVE                             R11 R9
       71 CALL                             R10 1 -1
       72 RETURN                           R10 -1
