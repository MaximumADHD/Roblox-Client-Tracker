PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"radius", "Size"}]
        5 GETTABLEKS                       R4 R0 K4 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["radius"]
        9 SETTABLEKS                       R4 R3 K1 ["radius"]
       11 GETIMPORT                        R4 K7 [UDim2.new]
       13 LOADN                            R5 0
       14 LOADN                            R6 100
       15 LOADN                            R7 0
       16 LOADN                            R8 100
       17 CALL                             R4 4 1
       18 SETTABLEKS                       R4 R3 K2 ["Size"]
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Skeleton"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["Radius"]
       32 CALL                             R5 1 1
       33 DUPTABLE                         R6 K17 [{["summary"] = "Skeleton component", ["story"], ["controls"]}]
       34 DUPCLOSURE                       R7 K18 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R4
       37 SETTABLEKS                       R7 R6 K15 ["story"]
       39 DUPTABLE                         R7 K20 [{"radius"}]
       40 GETTABLEKS                       R8 R3 K21 ["values"]
       42 MOVE                             R9 R5
       43 CALL                             R8 1 1
       44 SETTABLEKS                       R8 R7 K19 ["radius"]
       46 SETTABLEKS                       R7 R6 K16 ["controls"]
       48 RETURN                           R6 1
