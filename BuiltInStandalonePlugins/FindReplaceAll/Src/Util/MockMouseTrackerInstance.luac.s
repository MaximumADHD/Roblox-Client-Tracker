PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["new"]
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_2:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["MockSignal"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K12 [{"GetAttribute", "GetAttributeChangedSignal", "Destroy"}]
       17 DUPCLOSURE                       R3 K13 [PROTO_0]
       18 SETTABLEKS                       R3 R2 K9 ["GetAttribute"]
       20 DUPCLOSURE                       R3 K14 [PROTO_1]
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R3 R2 K10 ["GetAttributeChangedSignal"]
       24 DUPCLOSURE                       R3 K15 [PROTO_2]
       25 SETTABLEKS                       R3 R2 K11 ["Destroy"]
       27 RETURN                           R2 1
