PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Requested"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Fire"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Signal"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 2 0
       16 GETTABLEKS                       R3 R1 K8 ["new"]
       18 CALL                             R3 0 1
       19 SETTABLEKS                       R3 R2 K9 ["Requested"]
       21 DUPCLOSURE                       R3 K10 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R3 R2 K11 ["prefill"]
       25 RETURN                           R2 1
