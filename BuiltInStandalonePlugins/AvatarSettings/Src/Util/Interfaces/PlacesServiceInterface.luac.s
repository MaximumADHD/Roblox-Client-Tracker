PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["PlacesService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["StartPlaySolo"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETIMPORT                        R0 K2 [error]
        9 LOADK                            R1 K3 ["Calling startPlaySolo on unmocked PlacesService"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [pcall]
        9 DUPCLOSURE                       R2 K6 [PROTO_0]
       10 CALL                             R1 1 2
       11 GETIMPORT                        R3 K8 [require]
       13 GETTABLEKS                       R7 R0 K9 ["Src"]
       15 GETTABLEKS                       R6 R7 K10 ["Util"]
       17 GETTABLEKS                       R5 R6 K11 ["Interfaces"]
       19 GETTABLEKS                       R4 R5 K12 ["InterfaceTypes"]
       21 CALL                             R3 1 1
       22 DUPTABLE                         R4 K14 [{"StartPlaySolo"}]
       23 DUPCLOSURE                       R5 K15 [PROTO_1]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R5 R4 K13 ["StartPlaySolo"]
       28 RETURN                           R4 1
