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
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R0 K2 [{"universeId", "placeId"}]
        2 GETTABLEKS                       R2 R1 K3 ["GameId"]
        4 SETTABLEKS                       R2 R0 K0 ["universeId"]
        6 GETTABLEKS                       R2 R1 K4 ["PlaceId"]
        8 SETTABLEKS                       R2 R0 K1 ["placeId"]
       10 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 JUMPIF                           R4 ; [+2]
        2 GETUPVAL                         R4 1
        3 JUMPIFNOT                        R4 ; [+1]
        4 RETURN                           R0 0
        5 MOVE                             R4 R3
        6 JUMPIF                           R4 ; [+2]
        7 GETIMPORT                        R4 K1 [game]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K2 ["FFlagAssistantUseNewDMNetworking"]
       12 JUMPIFNOT                        R5 ; [+44]
       13 FASTCALL2K                       ASSERT R1 K3 ; [+5]
       15 MOVE                             R6 R1
       16 LOADK                            R7 K3 ["StudioGameMetadata requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
       17 GETIMPORT                        R5 K5 [assert]
       19 CALL                             R5 2 0
       20 FASTCALL2K                       ASSERT R2 K6 ; [+5]
       22 MOVE                             R6 R2
       23 LOADK                            R7 K6 ["StudioGameMetadata requires the environment when FFlagAssistantUseNewDMNetworking is on"]
       24 GETIMPORT                        R5 K5 [assert]
       26 CALL                             R5 2 0
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R5 R5 K7 ["invoke"]
       30 MOVE                             R6 R1
       31 LOADK                            R7 K8 ["StudioGameMetadata_get"]
       32 CALL                             R5 2 1
       33 NAMECALL                         R6 R1 K9 ["GetIdentity"]
       35 CALL                             R6 1 1
       36 GETUPVAL                         R7 4
       37 GETTABLEKS                       R7 R7 K10 ["Identity"]
       39 GETTABLEKS                       R7 R7 K11 ["Standalone"]
       41 JUMPIFEQ                         R6 R7 ; [+7]
       43 NEWCLOSURE                       R8 P0
       44 CAPTURE                          VAL R4
       45 NAMECALL                         R6 R5 K12 ["Connect"]
       47 CALL                             R6 2 1
       48 SETUPVAL                         R6 5
       49 SETUPVAL                         R5 1
       50 GETTABLEKS                       R6 R2 K13 ["Destroying"]
       52 GETUPVAL                         R8 6
       53 NAMECALL                         R6 R6 K14 ["Once"]
       55 CALL                             R6 2 0
       56 RETURN                           R0 0
       57 FASTCALL2K                       ASSERT R0 K15 ; [+5]
       59 MOVE                             R6 R0
       60 LOADK                            R7 K15 ["StudioGameMetadata requires networking"]
       61 GETIMPORT                        R5 K5 [assert]
       63 CALL                             R5 2 0
       64 LOADK                            R7 K8 ["StudioGameMetadata_get"]
       65 NEWCLOSURE                       R8 P1
       66 CAPTURE                          VAL R4
       67 NAMECALL                         R5 R0 K16 ["OnHostInvokeAsync"]
       69 CALL                             R5 3 1
       70 SETUPVAL                         R5 0
       71 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 1
       10 LOADNIL                          R0
       11 SETUPVAL                         R0 2
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETUPVAL                         R1 1
        5 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        7 LOADK                            R2 K1 ["StudioGameMetadata not initialized. Call StudioGameMetadata.initialize(networking) first."]
        8 GETIMPORT                        R0 K3 [assert]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K4 ["Identity"]
       15 GETTABLEKS                       R2 R2 K5 ["Edit"]
       17 NAMECALL                         R0 R0 K6 ["InvokeAsync"]
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1
       21 GETUPVAL                         R1 3
       22 FASTCALL2K                       ASSERT R1 K1 ; [+4]
       24 LOADK                            R2 K1 ["StudioGameMetadata not initialized. Call StudioGameMetadata.initialize(networking) first."]
       25 GETIMPORT                        R0 K3 [assert]
       27 CALL                             R0 2 0
       28 GETUPVAL                         R0 3
       29 GETUPVAL                         R1 4
       30 GETTABLEKS                       R1 R1 K7 ["Types"]
       32 GETTABLEKS                       R1 R1 K5 ["Edit"]
       34 CALL                             R0 1 -1
       35 RETURN                           R0 -1

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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["StudioNetworkingOLD"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["Utils"]
       39 GETTABLEKS                       R5 R5 K14 ["DataModelType"]
       41 GETTABLEKS                       R6 R2 K15 ["Remote"]
       43 NEWTABLE                         R7 4 0
       45 LOADNIL                          R8
       46 LOADNIL                          R9
       47 LOADNIL                          R10
       48 DUPCLOSURE                       R11 K16 [PROTO_0]
       49 NEWCLOSURE                       R12 P1
       50 CAPTURE                          REF R10
       51 NEWCLOSURE                       R13 P2
       52 CAPTURE                          REF R8
       53 CAPTURE                          REF R9
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R2
       57 CAPTURE                          REF R10
       58 CAPTURE                          VAL R12
       59 SETTABLEKS                       R13 R7 K17 ["initialize"]
       61 NEWCLOSURE                       R13 P3
       62 CAPTURE                          REF R10
       63 CAPTURE                          REF R8
       64 CAPTURE                          REF R9
       65 SETTABLEKS                       R13 R7 K18 ["resetForTesting"]
       67 NEWCLOSURE                       R13 P4
       68 CAPTURE                          VAL R3
       69 CAPTURE                          REF R9
       70 CAPTURE                          VAL R2
       71 CAPTURE                          REF R8
       72 CAPTURE                          VAL R5
       73 SETTABLEKS                       R13 R7 K19 ["getGameMetadata"]
       75 CLOSEUPVALS                      R8
       76 RETURN                           R7 1
