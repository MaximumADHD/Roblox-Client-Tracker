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
       14 DUPCLOSURE                       R3 K8 [PROTO_0]
       15 FASTPCALL                        pcall 1 ; [+2]
       16 GETIMPORT                        R2 K10 [pcall]
       18 CALL                             R2 1 2
       19 DUPTABLE                         R4 K13 [{"startPlaySolo", "stopPlaySolo"}]
       20 DUPCLOSURE                       R5 K14 [PROTO_1]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R3
       23 SETTABLEKS                       R5 R4 K11 ["startPlaySolo"]
       25 DUPCLOSURE                       R5 K15 [PROTO_2]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 SETTABLEKS                       R5 R4 K12 ["stopPlaySolo"]
       30 GETTABLEKS                       R5 R1 K16 ["createContext"]
       32 MOVE                             R6 R4
       33 CALL                             R5 1 1
       34 RETURN                           R5 1
