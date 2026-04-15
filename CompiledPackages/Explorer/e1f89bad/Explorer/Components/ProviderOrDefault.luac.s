PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETTABLEKS                       R2 R0 K1 ["context"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R1 K2 ["default"]
        8 JUMPIF                           R2 ; [+3]
        9 GETTABLEKS                       R2 R0 K3 ["children"]
       11 RETURN                           R2 1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R3 R0 K4 ["defaultProvider"]
       15 NEWTABLE                         R4 0 0
       17 GETTABLEKS                       R5 R0 K3 ["children"]
       19 CALL                             R2 3 -1
       20 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 DUPCLOSURE                       R3 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 RETURN                           R3 1
