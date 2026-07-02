PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K10 [{["Size"], ["Position"], ["Rotation"] = 45, ["ZIndex"], ["backgroundStyle"], ["tag"] = "anchor-center-center", ["testId"]}]
        5 GETIMPORT                        R4 K13 [UDim2.fromOffset]
        7 GETTABLEKS                       R5 R0 K14 ["size"]
        9 GETTABLEKS                       R6 R0 K14 ["size"]
       11 CALL                             R4 2 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 GETTABLEKS                       R4 R0 K15 ["position"]
       16 SETTABLEKS                       R4 R3 K2 ["Position"]
       18 GETTABLEKS                       R4 R0 K5 ["ZIndex"]
       20 SETTABLEKS                       R4 R3 K5 ["ZIndex"]
       22 GETTABLEKS                       R4 R0 K6 ["backgroundStyle"]
       24 SETTABLEKS                       R4 R3 K6 ["backgroundStyle"]
       26 GETTABLEKS                       R4 R0 K9 ["testId"]
       28 SETTABLEKS                       R4 R3 K9 ["testId"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

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
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["View"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K11 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 RETURN                           R5 1
