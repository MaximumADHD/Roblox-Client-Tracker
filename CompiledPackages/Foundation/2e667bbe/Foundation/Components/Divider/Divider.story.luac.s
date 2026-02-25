PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["size-full-2000 col align-y-center bg-surface-0"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 DUPTABLE                         R4 K5 [{"Divider"}]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K0 ["createElement"]
       12 GETUPVAL                         R6 2
       13 DUPTABLE                         R7 K8 [{"variant", "orientation"}]
       14 GETTABLEKS                       R9 R0 K9 ["controls"]
       16 GETTABLEKS                       R8 R9 K6 ["variant"]
       18 SETTABLEKS                       R8 R7 K6 ["variant"]
       20 GETTABLEKS                       R9 R0 K9 ["controls"]
       22 GETTABLEKS                       R8 R9 K7 ["orientation"]
       24 SETTABLEKS                       R8 R7 K7 ["orientation"]
       26 CALL                             R5 2 1
       27 SETTABLEKS                       R5 R4 K4 ["Divider"]
       29 CALL                             R1 3 -1
       30 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["View"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["Divider"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Enums"]
       37 GETTABLEKS                       R7 R8 K13 ["DividerVariant"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K12 ["Enums"]
       44 GETTABLEKS                       R8 R9 K14 ["Orientation"]
       46 CALL                             R7 1 1
       47 DUPCLOSURE                       R8 K15 [PROTO_0]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 DUPTABLE                         R9 K19 [{"summary", "story", "controls"}]
       52 LOADK                            R10 K11 ["Divider"]
       53 SETTABLEKS                       R10 R9 K16 ["summary"]
       55 SETTABLEKS                       R8 R9 K17 ["story"]
       57 DUPTABLE                         R10 K22 [{"variant", "orientation"}]
       58 GETTABLEKS                       R11 R2 K23 ["values"]
       60 MOVE                             R12 R6
       61 CALL                             R11 1 1
       62 SETTABLEKS                       R11 R10 K20 ["variant"]
       64 GETTABLEKS                       R11 R2 K23 ["values"]
       66 MOVE                             R12 R7
       67 CALL                             R11 1 1
       68 SETTABLEKS                       R11 R10 K21 ["orientation"]
       70 SETTABLEKS                       R10 R9 K18 ["controls"]
       72 RETURN                           R9 1
