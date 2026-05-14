PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R1 K1 ["groups"]
        4 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Reimport failed to get groups: "]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K4 [tostring]
        7 CALL                             R4 1 1
        8 CONCAT                           R2 R3 R4
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 0
       11 NEWTABLE                         R2 0 0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["APIS"]
        3 GETTABLEKS                       R1 R1 K1 ["CreatorHomeApi"]
        5 GETTABLEKS                       R1 R1 K2 ["V1"]
        7 GETTABLEKS                       R1 R1 K3 ["groups"]
        9 LOADK                            R2 K4 ["StudioAssetManager"]
       10 CALL                             R1 1 1
       11 NAMECALL                         R2 R1 K5 ["makeRequest"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R4 K6 [PROTO_0]
       15 NAMECALL                         R2 R2 K7 ["andThen"]
       17 CALL                             R2 2 1
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          VAL R0
       20 NEWCLOSURE                       R5 P2
       21 CAPTURE                          VAL R0
       22 NAMECALL                         R2 R2 K7 ["andThen"]
       24 CALL                             R2 3 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Reimport failed to get universe info for "]
        3 GETUPVAL                         R8 0
        4 GETTABLEKS                       R8 R8 K3 ["GameId"]
        6 FASTCALL1                        TOSTRING R8 ; [+2]
        7 GETIMPORT                        R7 K5 [tostring]
        9 CALL                             R7 1 1
       10 MOVE                             R4 R7
       11 LOADK                            R5 K6 [": "]
       12 FASTCALL1                        TOSTRING R0 ; [+3]
       13 MOVE                             R7 R0
       14 GETIMPORT                        R6 K5 [tostring]
       16 CALL                             R6 1 1
       17 CONCAT                           R2 R3 R6
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 1
       20 LOADNIL                          R2
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GameId"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["GameId"]
        7 JUMPIFNOTEQKN                    R1 K1 [0] ; [+5]
        9 MOVE                             R1 R0
       10 LOADNIL                          R2
       11 CALL                             R1 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K2 ["Develop"]
       16 GETTABLEKS                       R1 R1 K3 ["V1"]
       18 GETTABLEKS                       R1 R1 K4 ["Universes"]
       20 GETTABLEKS                       R1 R1 K5 ["get"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K0 ["GameId"]
       25 CALL                             R1 1 1
       26 NAMECALL                         R2 R1 K6 ["makeRequest"]
       28 CALL                             R2 1 1
       29 DUPCLOSURE                       R4 K7 [PROTO_4]
       30 NAMECALL                         R2 R2 K8 ["andThen"]
       32 CALL                             R2 2 1
       33 NEWCLOSURE                       R4 P1
       34 CAPTURE                          VAL R0
       35 NEWCLOSURE                       R5 P2
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          VAL R0
       38 NAMECALL                         R2 R2 K8 ["andThen"]
       40 CALL                             R2 3 0
       41 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 1
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K1 [game]
        4 SETUPVAL                         R0 2
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 1
        1 GETTABLEKS                       R2 R2 K0 ["RobloxAPI"]
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 DUPTABLE                         R3 K3 [{"networking"}]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K4 ["Http"]
        9 GETTABLEKS                       R4 R4 K5 ["Networking"]
       11 GETTABLEKS                       R4 R4 K6 ["mock"]
       13 DUPTABLE                         R5 K8 [{"onRequest"}]
       14 SETTABLEKS                       R0 R5 K7 ["onRequest"]
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R4 R3 K2 ["networking"]
       19 CALL                             R2 1 1
       20 SETUPVAL                         R2 0
       21 JUMPIFNOT                        R1 ; [+1]
       22 SETUPVAL                         R1 2
       23 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Networking"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["RobloxAPI"]
       16 GETTABLEKS                       R2 R2 K9 ["new"]
       18 CALL                             R2 0 1
       19 MOVE                             R3 R2
       20 GETIMPORT                        R4 K11 [game]
       22 NEWTABLE                         R5 4 0
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          REF R3
       26 SETTABLEKS                       R6 R5 K12 ["getGroupsAsync"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          REF R4
       30 CAPTURE                          REF R3
       31 SETTABLEKS                       R6 R5 K13 ["getUniverseInfoAsync"]
       33 NEWCLOSURE                       R6 P2
       34 CAPTURE                          REF R3
       35 CAPTURE                          VAL R2
       36 CAPTURE                          REF R4
       37 SETTABLEKS                       R6 R5 K14 ["reset"]
       39 NEWCLOSURE                       R6 P3
       40 CAPTURE                          REF R3
       41 CAPTURE                          VAL R1
       42 CAPTURE                          REF R4
       43 SETTABLEKS                       R6 R5 K15 ["mock"]
       45 CLOSEUPVALS                      R3
       46 RETURN                           R5 1
