PROTO_0:
        0 DUPTABLE                         R2 K2 [{[1] = False}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActions"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PureComponent"]
       16 LOADK                            R4 K9 ["MainPlugin"]
       17 NAMECALL                         R2 R2 K10 ["extend"]
       19 CALL                             R2 2 1
       20 DUPCLOSURE                       R3 K11 [PROTO_0]
       21 SETTABLEKS                       R3 R2 K12 ["init"]
       23 DUPCLOSURE                       R3 K13 [PROTO_1]
       24 SETTABLEKS                       R3 R2 K14 ["render"]
       26 RETURN                           R2 1
