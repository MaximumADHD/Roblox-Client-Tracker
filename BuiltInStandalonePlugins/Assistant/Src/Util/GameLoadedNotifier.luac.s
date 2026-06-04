PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["GAME_LOADED_KEY"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Types"]
        7 GETTABLEKS                       R3 R3 K2 ["Standalone"]
        9 NAMECALL                         R0 R0 K3 ["FireGuest"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["GAME_LOADED_KEY"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Types"]
        7 GETTABLEKS                       R3 R3 K2 ["Standalone"]
        9 NAMECALL                         R0 R0 K3 ["FireGuest"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 NAMECALL                         R0 R0 K2 ["IsLoaded"]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+12]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["GAME_LOADED_KEY"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K4 ["Types"]
       13 GETTABLEKS                       R3 R3 K5 ["Standalone"]
       15 NAMECALL                         R0 R0 K6 ["FireGuest"]
       17 CALL                             R0 3 0
       18 RETURN                           R0 0

PROTO_3:
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
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U0
       19 GETIMPORT                        R4 K6 [game]
       21 NAMECALL                         R4 R4 K7 ["IsLoaded"]
       23 CALL                             R4 1 1
       24 JUMPIFNOT                        R4 ; [+12]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K8 ["GAME_LOADED_KEY"]
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K0 ["Types"]
       31 GETTABLEKS                       R7 R7 K9 ["Standalone"]
       33 NAMECALL                         R4 R2 K10 ["FireGuest"]
       35 CALL                             R4 3 0
       36 JUMP                             ; [+11]
       37 GETIMPORT                        R4 K6 [game]
       39 GETTABLEKS                       R4 R4 K11 ["Loaded"]
       41 NEWCLOSURE                       R6 P1
       42 CAPTURE                          VAL R2
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U0
       45 NAMECALL                         R4 R4 K12 ["Connect"]
       47 CALL                             R4 2 0
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K13 ["REQUEST_GAME_LOADED_KEY"]
       51 NEWCLOSURE                       R7 P2
       52 CAPTURE                          VAL R2
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U0
       55 NAMECALL                         R4 R2 K14 ["OnHostEvent"]
       57 CALL                             R4 3 0
       58 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R3 R0 K0 ["IsGuest"]
        2 CALL                             R3 1 1
        3 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        5 LOADK                            R4 K1 ["subscribeGameLoaded should only be called on the guest DM (standalone DM)"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["GAME_LOADED_KEY"]
       12 MOVE                             R5 R1
       13 NAMECALL                         R2 R0 K5 ["OnGuestEvent"]
       15 CALL                             R2 3 2
       16 JUMPIF                           R3 ; [+4]
       17 GETIMPORT                        R4 K7 [error]
       19 LOADK                            R5 K1 ["subscribeGameLoaded should only be called on the guest DM (standalone DM)"]
       20 CALL                             R4 1 0
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K8 ["REQUEST_GAME_LOADED_KEY"]
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K9 ["Types"]
       27 GETTABLEKS                       R7 R7 K10 ["Client"]
       29 NAMECALL                         R4 R0 K11 ["FireHost"]
       31 CALL                             R4 3 0
       32 RETURN                           R3 1

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
       25 NEWTABLE                         R4 4 0
       27 LOADK                            R5 K11 ["GameLoadedNotifier_GameLoaded"]
       28 SETTABLEKS                       R5 R4 K12 ["GAME_LOADED_KEY"]
       30 LOADK                            R5 K13 ["GameLoadedNotifier_RequestGameLoaded"]
       31 SETTABLEKS                       R5 R4 K14 ["REQUEST_GAME_LOADED_KEY"]
       33 DUPCLOSURE                       R5 K15 [PROTO_3]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 SETTABLEKS                       R5 R4 K16 ["init"]
       38 DUPCLOSURE                       R5 K17 [PROTO_4]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R5 R4 K18 ["subscribeGameLoaded"]
       43 RETURN                           R4 1
