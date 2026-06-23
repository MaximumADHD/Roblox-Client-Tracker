PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["getCursor"]
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Consumer"]
        6 DUPTABLE                         R3 K3 [{"render"}]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R4 R3 K2 ["render"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["CursorContext"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K9 [PROTO_1]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 RETURN                           R4 1
