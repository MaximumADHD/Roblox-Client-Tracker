PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{"text", "hasError"}]
        7 GETTABLEKS                       R5 R1 K2 ["text"]
        9 SETTABLEKS                       R5 R4 K2 ["text"]
       11 GETTABLEKS                       R5 R1 K3 ["hasError"]
       13 SETTABLEKS                       R5 R4 K3 ["hasError"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

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
       18 GETTABLEKS                       R4 R4 K9 ["HintText"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 DUPTABLE                         R5 K15 [{["summary"] = "Helper text put below inputs", ["story"], ["controls"]}]
       25 SETTABLEKS                       R4 R5 K13 ["story"]
       27 DUPTABLE                         R6 K20 [{["text"] = "Helper text", ["hasError"] = False}]
       28 SETTABLEKS                       R6 R5 K14 ["controls"]
       30 RETURN                           R5 1
