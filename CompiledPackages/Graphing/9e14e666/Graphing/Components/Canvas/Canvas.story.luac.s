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
       20 DUPTABLE                         R8 K17 [{["Type"] = "Uniform", ["Unit"] = 1}]
       21 SETTABLEKS                       R8 R7 K10 ["XAxis"]
       23 DUPTABLE                         R8 K17 [{["Type"] = "Uniform", ["Unit"] = 1}]
       24 SETTABLEKS                       R8 R7 K11 ["YAxis"]
       26 CALL                             R5 2 1
       27 SETTABLEKS                       R5 R4 K6 ["Grid"]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K0 ["createElement"]
       32 GETUPVAL                         R6 3
       33 DUPTABLE                         R7 K21 [{["Side"] = "Bottom", ["Schema"]}]
       34 DUPTABLE                         R8 K23 [{["Type"] = "Uniform", ["Unit"] = 2}]
       35 SETTABLEKS                       R8 R7 K20 ["Schema"]
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R4 K7 ["XScale"]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K0 ["createElement"]
       43 GETUPVAL                         R6 3
       44 DUPTABLE                         R7 K25 [{["Side"] = "Left", ["Schema"]}]
       45 DUPTABLE                         R8 K23 [{["Type"] = "Uniform", ["Unit"] = 2}]
       46 SETTABLEKS                       R8 R7 K20 ["Schema"]
       48 CALL                             R5 2 1
       49 SETTABLEKS                       R5 R4 K8 ["YScale"]
       51 CALL                             R1 3 -1
       52 RETURN                           R1 -1

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
       40 DUPTABLE                         R7 K17 [{["summary"] = "example!", ["story"], ["controls"]}]
       41 SETTABLEKS                       R6 R7 K15 ["story"]
       43 NEWTABLE                         R8 0 0
       45 SETTABLEKS                       R8 R7 K16 ["controls"]
       47 RETURN                           R7 1
