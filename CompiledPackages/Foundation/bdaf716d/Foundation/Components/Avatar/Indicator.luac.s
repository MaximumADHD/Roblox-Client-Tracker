PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 MOVE                             R4 R2
        8 GETTABLEKS                       R5 R1 K0 ["shape"]
       10 GETTABLEKS                       R6 R1 K1 ["variant"]
       12 GETTABLEKS                       R7 R1 K2 ["size"]
       14 CALL                             R3 4 1
       15 GETUPVAL                         R4 4
       16 GETTABLEKS                       R4 R4 K3 ["createElement"]
       18 GETTABLEKS                       R6 R3 K4 ["indicator"]
       20 GETTABLEKS                       R6 R6 K5 ["Image"]
       22 JUMPIFNOT                        R6 ; [+2]
       23 GETUPVAL                         R5 5
       24 JUMP                             ; [+1]
       25 GETUPVAL                         R5 6
       26 GETUPVAL                         R6 7
       27 MOVE                             R7 R1
       28 GETTABLEKS                       R8 R3 K4 ["indicator"]
       30 CALL                             R6 2 -1
       31 CALL                             R4 -1 -1
       32 RETURN                           R4 -1

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
       18 GETTABLEKS                       R4 R4 K9 ["Image"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["IndicatorShape"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R7 K13 ["View"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Providers"]
       46 GETTABLEKS                       R8 R8 K15 ["Style"]
       48 GETTABLEKS                       R8 R8 K16 ["useTokens"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K17 ["Utility"]
       55 GETTABLEKS                       R9 R9 K18 ["withCommonProps"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K17 ["Utility"]
       62 GETTABLEKS                       R10 R10 K19 ["withDefaults"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K10 ["Enums"]
       69 GETTABLEKS                       R11 R11 K20 ["IndicatorVariant"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETIMPORT                        R12 K1 [script]
       76 GETTABLEKS                       R12 R12 K4 ["Parent"]
       78 GETTABLEKS                       R12 R12 K21 ["useIndicatorVariants"]
       80 CALL                             R11 1 1
       81 DUPTABLE                         R12 K24 [{"shape", "variant"}]
       82 GETTABLEKS                       R13 R4 K25 ["Circle"]
       84 SETTABLEKS                       R13 R12 K22 ["shape"]
       86 GETTABLEKS                       R13 R10 K26 ["Success"]
       88 SETTABLEKS                       R13 R12 K23 ["variant"]
       90 DUPCLOSURE                       R13 K27 [PROTO_0]
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R8
       99 GETTABLEKS                       R14 R2 K28 ["memo"]
      101 MOVE                             R15 R13
      102 CALL                             R14 1 -1
      103 RETURN                           R14 -1
