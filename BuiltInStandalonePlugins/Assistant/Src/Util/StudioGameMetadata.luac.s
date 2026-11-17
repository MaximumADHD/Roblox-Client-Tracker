PROTO_0:
        0 DUPTABLE                         R1 K2 [{"universeId", "placeId"}]
        1 GETTABLEKS                       R2 R0 K3 ["GameId"]
        3 SETTABLEKS                       R2 R1 K0 ["universeId"]
        5 GETTABLEKS                       R2 R0 K4 ["PlaceId"]
        7 SETTABLEKS                       R2 R1 K1 ["placeId"]
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R0 K2 [{"universeId", "placeId"}]
        2 GETTABLEKS                       R2 R1 K3 ["GameId"]
        4 SETTABLEKS                       R2 R0 K0 ["universeId"]
        6 GETTABLEKS                       R2 R1 K4 ["PlaceId"]
        8 SETTABLEKS                       R2 R0 K1 ["placeId"]
       10 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+1]
        2 RETURN                           R0 0
        3 MOVE                             R3 R2
        4 JUMPIF                           R3 ; [+2]
        5 GETIMPORT                        R3 K1 [game]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["invoke"]
       10 MOVE                             R5 R0
       11 LOADK                            R6 K3 ["StudioGameMetadata_get"]
       12 CALL                             R4 2 1
       13 NAMECALL                         R5 R0 K4 ["GetIdentity"]
       15 CALL                             R5 1 1
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K5 ["Identity"]
       19 GETTABLEKS                       R6 R6 K6 ["Standalone"]
       21 JUMPIFEQ                         R5 R6 ; [+7]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R3
       25 NAMECALL                         R5 R4 K7 ["Connect"]
       27 CALL                             R5 2 1
       28 SETUPVAL                         R5 3
       29 SETUPVAL                         R4 0
       30 GETTABLEKS                       R5 R1 K8 ["Destroying"]
       32 GETUPVAL                         R7 4
       33 NAMECALL                         R5 R5 K9 ["Once"]
       35 CALL                             R5 2 0
       36 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 1
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["StudioGameMetadata not initialized. Call StudioGameMetadata.initialize(networking) first."]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["Identity"]
       11 GETTABLEKS                       R2 R2 K4 ["Edit"]
       13 NAMECALL                         R0 R0 K5 ["InvokeAsync"]
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Remote"]
       23 NEWTABLE                         R4 4 0
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 DUPCLOSURE                       R7 K10 [PROTO_0]
       28 NEWCLOSURE                       R8 P1
       29 CAPTURE                          REF R6
       30 NEWCLOSURE                       R9 P2
       31 CAPTURE                          REF R5
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 CAPTURE                          REF R6
       35 CAPTURE                          VAL R8
       36 SETTABLEKS                       R9 R4 K11 ["initialize"]
       38 NEWCLOSURE                       R9 P3
       39 CAPTURE                          REF R6
       40 CAPTURE                          REF R5
       41 SETTABLEKS                       R9 R4 K12 ["resetForTesting"]
       43 NEWCLOSURE                       R9 P4
       44 CAPTURE                          REF R5
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R9 R4 K13 ["getGameMetadata"]
       48 CLOSEUPVALS                      R5
       49 RETURN                           R4 1
