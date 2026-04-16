PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R2 K0 [PROTO_0]
        1 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_1]
       13 DUPTABLE                         R3 K10 [{"requestHandler", "createRequestHandler"}]
       14 SETTABLEKS                       R2 R3 K8 ["requestHandler"]
       16 LOADNIL                          R4
       17 SETTABLEKS                       R4 R3 K9 ["createRequestHandler"]
       19 RETURN                           R3 1
