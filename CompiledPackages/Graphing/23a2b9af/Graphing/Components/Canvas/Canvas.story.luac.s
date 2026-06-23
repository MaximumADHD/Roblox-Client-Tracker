PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"GraphRect", "children", "childrenUnclipped"}]
        5 GETIMPORT                        R4 K7 [Rect.new]
        7 LOADN                            R5 0
        8 LOADN                            R6 0
        9 LOADN                            R7 10
       10 LOADN                            R8 10
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["GraphRect"]
       14 DUPTABLE                         R4 K9 [{"Grid"}]
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
       39 SETTABLEKS                       R5 R4 K8 ["Grid"]
       41 SETTABLEKS                       R4 R3 K2 ["children"]
       43 DUPTABLE                         R4 K19 [{"XScale", "YScale"}]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K0 ["createElement"]
       47 GETUPVAL                         R6 3
       48 DUPTABLE                         R7 K22 [{"Side", "Schema"}]
       49 LOADK                            R8 K23 ["Bottom"]
       50 SETTABLEKS                       R8 R7 K20 ["Side"]
       52 DUPTABLE                         R8 K15 [{"Type", "Unit"}]
       53 LOADK                            R9 K16 ["Uniform"]
       54 SETTABLEKS                       R9 R8 K13 ["Type"]
       56 LOADN                            R9 2
       57 SETTABLEKS                       R9 R8 K14 ["Unit"]
       59 SETTABLEKS                       R8 R7 K21 ["Schema"]
       61 CALL                             R5 2 1
       62 SETTABLEKS                       R5 R4 K17 ["XScale"]
       64 GETUPVAL                         R5 0
       65 GETTABLEKS                       R5 R5 K0 ["createElement"]
       67 GETUPVAL                         R6 3
       68 DUPTABLE                         R7 K22 [{"Side", "Schema"}]
       69 LOADK                            R8 K24 ["Left"]
       70 SETTABLEKS                       R8 R7 K20 ["Side"]
       72 DUPTABLE                         R8 K15 [{"Type", "Unit"}]
       73 LOADK                            R9 K16 ["Uniform"]
       74 SETTABLEKS                       R9 R8 K13 ["Type"]
       76 LOADN                            R9 2
       77 SETTABLEKS                       R9 R8 K14 ["Unit"]
       79 SETTABLEKS                       R8 R7 K21 ["Schema"]
       81 CALL                             R5 2 1
       82 SETTABLEKS                       R5 R4 K18 ["YScale"]
       84 SETTABLEKS                       R4 R3 K3 ["childrenUnclipped"]
       86 CALL                             R1 2 -1
       87 RETURN                           R1 -1

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
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Types"]
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K13 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 DUPTABLE                         R8 K17 [{"summary", "story", "controls"}]
       46 LOADK                            R9 K18 ["Simple example showing how to create a canvas and give it some children."]
       47 SETTABLEKS                       R9 R8 K14 ["summary"]
       49 SETTABLEKS                       R7 R8 K15 ["story"]
       51 NEWTABLE                         R9 0 0
       53 SETTABLEKS                       R9 R8 K16 ["controls"]
       55 RETURN                           R8 1
