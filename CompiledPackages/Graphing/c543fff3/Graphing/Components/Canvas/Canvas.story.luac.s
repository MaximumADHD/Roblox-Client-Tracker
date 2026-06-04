PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"GraphRect"}]
        5 GETIMPORT                        R4 K5 [Rect.new]
        7 LOADN                            R5 0
        8 LOADN                            R6 0
        9 LOADN                            R7 10
       10 LOADN                            R8 10
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["GraphRect"]
       14 DUPTABLE                         R4 K9 [{"Grid", "XScale", "YScale"}]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K0 ["createElement"]
       18 GETUPVAL                         R6 2
       19 DUPTABLE                         R7 K12 [{"XAxis", "YAxis"}]
       20 DUPTABLE                         R8 K15 [{"Type", "Unit"}]
       21 LOADK                            R9 K16 ["Uniform"]
       22 SETTABLEKS                       R9 R8 K13 ["Type"]
       24 LOADN                            R9 1
       25 SETTABLEKS                       R9 R8 K14 ["Unit"]
       27 SETTABLEKS                       R8 R7 K10 ["XAxis"]
       29 DUPTABLE                         R8 K15 [{"Type", "Unit"}]
       30 LOADK                            R9 K16 ["Uniform"]
       31 SETTABLEKS                       R9 R8 K13 ["Type"]
       33 LOADN                            R9 1
       34 SETTABLEKS                       R9 R8 K14 ["Unit"]
       36 SETTABLEKS                       R8 R7 K11 ["YAxis"]
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K6 ["Grid"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K0 ["createElement"]
       44 GETUPVAL                         R6 3
       45 DUPTABLE                         R7 K19 [{"Side", "Schema"}]
       46 LOADK                            R8 K20 ["Bottom"]
       47 SETTABLEKS                       R8 R7 K17 ["Side"]
       49 DUPTABLE                         R8 K15 [{"Type", "Unit"}]
       50 LOADK                            R9 K16 ["Uniform"]
       51 SETTABLEKS                       R9 R8 K13 ["Type"]
       53 LOADN                            R9 2
       54 SETTABLEKS                       R9 R8 K14 ["Unit"]
       56 SETTABLEKS                       R8 R7 K18 ["Schema"]
       58 CALL                             R5 2 1
       59 SETTABLEKS                       R5 R4 K7 ["XScale"]
       61 GETUPVAL                         R5 0
       62 GETTABLEKS                       R5 R5 K0 ["createElement"]
       64 GETUPVAL                         R6 3
       65 DUPTABLE                         R7 K19 [{"Side", "Schema"}]
       66 LOADK                            R8 K21 ["Left"]
       67 SETTABLEKS                       R8 R7 K17 ["Side"]
       69 DUPTABLE                         R8 K15 [{"Type", "Unit"}]
       70 LOADK                            R9 K16 ["Uniform"]
       71 SETTABLEKS                       R9 R8 K13 ["Type"]
       73 LOADN                            R9 2
       74 SETTABLEKS                       R9 R8 K14 ["Unit"]
       76 SETTABLEKS                       R8 R7 K18 ["Schema"]
       78 CALL                             R5 2 1
       79 SETTABLEKS                       R5 R4 K8 ["YScale"]
       81 CALL                             R1 3 -1
       82 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Canvas"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Grid"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["Scale"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K12 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R5
       40 DUPTABLE                         R7 K16 [{"summary", "story", "controls"}]
       41 LOADK                            R8 K17 ["example!"]
       42 SETTABLEKS                       R8 R7 K13 ["summary"]
       44 SETTABLEKS                       R6 R7 K14 ["story"]
       46 NEWTABLE                         R8 0 0
       48 SETTABLEKS                       R8 R7 K15 ["controls"]
       50 RETURN                           R7 1
