PROTO_0:
        0 DUPTABLE                         R2 K4 [{[1] = "byState", ["callback"], ["config"]}]
        1 SETTABLEKS                       R0 R2 K2 ["callback"]
        3 MOVE                             R3 R1
        4 JUMPIF                           R3 ; [+2]
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K3 ["config"]
        9 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{[1] = "byBinding", ["callback"]}]
        1 SETTABLEKS                       R0 R1 K2 ["callback"]
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ultimate-list"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 2 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 SETTABLEKS                       R3 R2 K9 ["byState"]
       19 DUPCLOSURE                       R3 K10 [PROTO_1]
       20 SETTABLEKS                       R3 R2 K11 ["byBinding"]
       22 RETURN                           R2 1
