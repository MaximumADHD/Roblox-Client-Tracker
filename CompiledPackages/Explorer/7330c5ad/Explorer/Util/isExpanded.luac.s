PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["uiState"]
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETTABLEKS                       R2 R1 K1 ["isExpanded"]
        6 RETURN                           R2 1
        7 LOADB                            R2 0
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["RpcTypes"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 RETURN                           R2 1
