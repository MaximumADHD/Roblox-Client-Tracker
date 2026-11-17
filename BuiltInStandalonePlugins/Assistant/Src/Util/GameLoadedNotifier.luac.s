PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ALL"]
        4 NAMECALL                         R0 R0 K1 ["Fire"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ALL"]
        4 NAMECALL                         R0 R0 K1 ["Fire"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 NAMECALL                         R0 R0 K2 ["IsLoaded"]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["ALL"]
       10 NAMECALL                         R0 R0 K4 ["Fire"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["Types"]
        3 GETTABLEKS                       R5 R5 K1 ["Client"]
        5 JUMPIFEQ                         R0 R5 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       11 LOADK                            R5 K2 ["GameLoadedNotifier can only be initialized for client data model"]
       12 GETIMPORT                        R3 K4 [assert]
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K5 ["event"]
       18 MOVE                             R4 R2
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K6 ["GAME_LOADED_KEY"]
       22 CALL                             R3 2 1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K5 ["event"]
       26 MOVE                             R5 R2
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K7 ["REQUEST_GAME_LOADED_KEY"]
       30 CALL                             R4 2 1
       31 NEWCLOSURE                       R5 P0
       32 CAPTURE                          VAL R3
       33 CAPTURE                          UPVAL U3
       34 GETIMPORT                        R6 K9 [game]
       36 NAMECALL                         R6 R6 K10 ["IsLoaded"]
       38 CALL                             R6 1 1
       39 JUMPIFNOT                        R6 ; [+7]
       40 GETUPVAL                         R8 3
       41 GETTABLEKS                       R8 R8 K11 ["ALL"]
       43 NAMECALL                         R6 R3 K12 ["Fire"]
       45 CALL                             R6 2 0
       46 JUMP                             ; [+10]
       47 GETIMPORT                        R6 K9 [game]
       49 GETTABLEKS                       R6 R6 K13 ["Loaded"]
       51 NEWCLOSURE                       R8 P1
       52 CAPTURE                          VAL R3
       53 CAPTURE                          UPVAL U3
       54 NAMECALL                         R6 R6 K14 ["Connect"]
       56 CALL                             R6 2 0
       57 NEWCLOSURE                       R8 P2
       58 CAPTURE                          VAL R3
       59 CAPTURE                          UPVAL U3
       60 NAMECALL                         R6 R4 K14 ["Connect"]
       62 CALL                             R6 2 1
       63 GETTABLEKS                       R7 R1 K15 ["Unloading"]
       65 NEWCLOSURE                       R9 P3
       66 CAPTURE                          VAL R6
       67 NAMECALL                         R7 R7 K16 ["Once"]
       69 CALL                             R7 2 0
       70 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["event"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["GAME_LOADED_KEY"]
        7 CALL                             R2 2 1
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R1
       10 NAMECALL                         R3 R2 K2 ["Connect"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K0 ["event"]
       16 MOVE                             R5 R0
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K3 ["REQUEST_GAME_LOADED_KEY"]
       20 CALL                             R4 2 1
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R7 R7 K4 ["Identity"]
       24 GETTABLEKS                       R7 R7 K5 ["PlayClient"]
       26 NAMECALL                         R5 R4 K6 ["Fire"]
       28 CALL                             R5 2 0
       29 NEWCLOSURE                       R5 P1
       30 CAPTURE                          VAL R3
       31 RETURN                           R5 1

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
       21 GETTABLEKS                       R3 R1 K9 ["Utils"]
       23 GETTABLEKS                       R3 R3 K10 ["DataModelType"]
       25 GETTABLEKS                       R4 R2 K11 ["Remote"]
       27 NEWTABLE                         R5 4 0
       29 LOADK                            R6 K12 ["GameLoadedNotifier_GameLoaded"]
       30 SETTABLEKS                       R6 R5 K13 ["GAME_LOADED_KEY"]
       32 LOADK                            R6 K14 ["GameLoadedNotifier_RequestGameLoaded"]
       33 SETTABLEKS                       R6 R5 K15 ["REQUEST_GAME_LOADED_KEY"]
       35 DUPCLOSURE                       R6 K16 [PROTO_4]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R6 R5 K17 ["init"]
       42 DUPCLOSURE                       R6 K18 [PROTO_7]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R6 R5 K19 ["subscribeGameLoaded"]
       48 RETURN                           R5 1
