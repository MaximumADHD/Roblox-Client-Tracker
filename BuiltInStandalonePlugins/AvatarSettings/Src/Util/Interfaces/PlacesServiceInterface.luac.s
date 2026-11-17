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
        7 DUPCLOSURE                       R2 K4 [PROTO_0]
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R1 K6 [pcall]
       11 CALL                             R1 1 2
       12 GETIMPORT                        R3 K8 [require]
       14 GETTABLEKS                       R4 R0 K9 ["Src"]
       16 GETTABLEKS                       R4 R4 K10 ["Util"]
       18 GETTABLEKS                       R4 R4 K11 ["Interfaces"]
       20 GETTABLEKS                       R4 R4 K12 ["InterfaceTypes"]
       22 CALL                             R3 1 1
       23 DUPTABLE                         R4 K14 [{"StartPlaySolo"}]
       24 DUPCLOSURE                       R5 K15 [PROTO_1]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R5 R4 K13 ["StartPlaySolo"]
       29 RETURN                           R4 1
