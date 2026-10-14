PROTO_0:
        0 DUPTABLE                         R1 K1 [{"capturePreviewImages"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["invoke"]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K3 ["PrimitiveGen.capturePreviewImages"]
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R1 K0 ["capturePreviewImages"]
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
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Types"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K9 ["Remote"]
       21 NEWTABLE                         R5 1 0
       23 DUPCLOSURE                       R6 K10 [PROTO_0]
       24 CAPTURE                          VAL R4
       25 SETTABLEKS                       R6 R5 K11 ["new"]
       27 RETURN                           R5 1
