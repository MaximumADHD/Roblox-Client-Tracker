PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_0]
        2 SETTABLEKS                       R1 R0 K1 ["StartPlaySolo"]
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Interfaces"]
       15 GETTABLEKS                       R2 R2 K9 ["PlacesServiceInterface"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K10 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
