PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Name"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Utility"]
       11 GETTABLEKS                       R4 R5 K7 ["Wrappers"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R2 R3 K8 ["Services"]
       16 GETTABLEKS                       R1 R2 K9 ["CoreGui"]
       18 GETIMPORT                        R2 K11 [pcall]
       20 DUPCLOSURE                       R3 K12 [PROTO_0]
       21 CAPTURE                          VAL R1
       22 CALL                             R2 1 2
       23 DUPCLOSURE                       R4 K13 [PROTO_1]
       24 CAPTURE                          VAL R2
       25 RETURN                           R4 1
