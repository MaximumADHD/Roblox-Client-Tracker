PROTO_0:
        0 DUPTABLE                         R1 K1 [{"getIdentity"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["invoke"]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K3 ["Networking.getIdentity"]
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R1 K0 ["getIdentity"]
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["DMNetworking"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["Remote"]
       16 NEWTABLE                         R4 1 0
       18 DUPCLOSURE                       R5 K9 [PROTO_0]
       19 CAPTURE                          VAL R3
       20 SETTABLEKS                       R5 R4 K10 ["new"]
       22 RETURN                           R4 1
