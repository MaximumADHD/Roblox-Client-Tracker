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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["StopPlaySolo"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETIMPORT                        R0 K2 [error]
        9 LOADK                            R1 K3 ["Calling stopPlaySolo on unmocked PlacesService"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [pcall]
       16 DUPCLOSURE                       R3 K10 [PROTO_0]
       17 CALL                             R2 1 2
       18 DUPTABLE                         R4 K13 [{"startPlaySolo", "stopPlaySolo"}]
       19 DUPCLOSURE                       R5 K14 [PROTO_1]
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 SETTABLEKS                       R5 R4 K11 ["startPlaySolo"]
       24 DUPCLOSURE                       R5 K15 [PROTO_2]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 SETTABLEKS                       R5 R4 K12 ["stopPlaySolo"]
       29 GETTABLEKS                       R5 R1 K16 ["createContext"]
       31 MOVE                             R6 R4
       32 CALL                             R5 1 1
       33 RETURN                           R5 1
