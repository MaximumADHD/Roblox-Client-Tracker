PROTO_0:
        0 DUPTABLE                         R1 K3 [{"children", "parent", "datum"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K4 ["empty"]
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K0 ["children"]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K1 ["parent"]
       10 SETTABLEKS                       R0 R1 K2 ["datum"]
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["ExplorerNodeChildrenMutable"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["RpcTypes"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 1 0
       21 DUPCLOSURE                       R4 K9 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R4 R3 K10 ["createFromDatum"]
       25 RETURN                           R3 1
