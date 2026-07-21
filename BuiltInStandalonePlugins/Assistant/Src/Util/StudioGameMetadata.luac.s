PROTO_0:
        0 DUPTABLE                         R1 K2 [{"universeId", "placeId"}]
        1 GETTABLEKS                       R2 R0 K3 ["GameId"]
        3 SETTABLEKS                       R2 R1 K0 ["universeId"]
        5 GETTABLEKS                       R2 R0 K4 ["PlaceId"]
        7 SETTABLEKS                       R2 R1 K1 ["placeId"]
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R0 K2 [{"universeId", "placeId"}]
        2 GETTABLEKS                       R2 R1 K3 ["GameId"]
        4 SETTABLEKS                       R2 R0 K0 ["universeId"]
        6 GETTABLEKS                       R2 R1 K4 ["PlaceId"]
        8 SETTABLEKS                       R2 R0 K1 ["placeId"]
       10 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+1]
        2 RETURN                           R0 0
        3 MOVE                             R2 R1
        4 JUMPIF                           R2 ; [+2]
        5 GETIMPORT                        R2 K1 [game]
        7 LOADK                            R5 K2 ["StudioGameMetadata_get"]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R2
       10 NAMECALL                         R3 R0 K3 ["OnHostInvokeAsync"]
       12 CALL                             R3 3 1
       13 SETUPVAL                         R3 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["StudioGameMetadata not initialized. Call StudioGameMetadata.initialize(networking) first."]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 LOADNIL                          R1
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["StudioNetworking"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 2 0
       18 LOADNIL                          R3
       19 DUPCLOSURE                       R4 K9 [PROTO_0]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          REF R3
       22 SETTABLEKS                       R5 R2 K10 ["initialize"]
       24 NEWCLOSURE                       R5 P2
       25 CAPTURE                          REF R3
       26 SETTABLEKS                       R5 R2 K11 ["getGameMetadata"]
       28 CLOSEUPVALS                      R3
       29 RETURN                           R2 1
