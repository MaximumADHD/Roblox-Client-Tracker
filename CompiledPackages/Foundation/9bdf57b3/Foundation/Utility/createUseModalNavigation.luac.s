PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 DUPTABLE                         R1 K3 [{"closeAffordanceRef", "setContentStartRef"}]
        6 GETTABLEKS                       R2 R0 K1 ["closeAffordanceRef"]
        8 SETTABLEKS                       R2 R1 K1 ["closeAffordanceRef"]
       10 GETTABLEKS                       R2 R0 K2 ["setContentStartRef"]
       12 SETTABLEKS                       R2 R1 K2 ["setContentStartRef"]
       14 RETURN                           R1 1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

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
       14 DUPCLOSURE                       R3 K8 [PROTO_1]
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1
