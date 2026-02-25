PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["GAME_LOADED_KEY"]
        4 LOADNIL                          R3
        5 NAMECALL                         R0 R0 K1 ["FireGuest"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["GAME_LOADED_KEY"]
        4 LOADNIL                          R3
        5 NAMECALL                         R0 R0 K1 ["FireGuest"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 NAMECALL                         R0 R0 K2 ["IsLoaded"]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K3 ["GAME_LOADED_KEY"]
       10 LOADNIL                          R3
       11 NAMECALL                         R0 R0 K4 ["FireGuest"]
       13 CALL                             R0 3 0
       14 RETURN                           R0 0

PROTO_3:
        0 JUMPIFEQKS                       R0 K0 ["Client"] ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        6 LOADK                            R4 K1 ["GameLoadedNotifier can only be initialized for client data model"]
        7 GETIMPORT                        R2 K3 [assert]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K4 ["create"]
       13 DUPTABLE                         R3 K8 [{"plugin", "isGuest", "isHost"}]
       14 SETTABLEKS                       R1 R3 K5 ["plugin"]
       16 LOADB                            R4 0
       17 SETTABLEKS                       R4 R3 K6 ["isGuest"]
       19 LOADB                            R4 1
       20 SETTABLEKS                       R4 R3 K7 ["isHost"]
       22 CALL                             R2 1 1
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U1
       26 GETIMPORT                        R4 K10 [game]
       28 NAMECALL                         R4 R4 K11 ["IsLoaded"]
       30 CALL                             R4 1 1
       31 JUMPIFNOT                        R4 ; [+8]
       32 GETUPVAL                         R7 1
       33 GETTABLEKS                       R6 R7 K12 ["GAME_LOADED_KEY"]
       35 LOADNIL                          R7
       36 NAMECALL                         R4 R2 K13 ["FireGuest"]
       38 CALL                             R4 3 0
       39 JUMP                             ; [+10]
       40 GETIMPORT                        R5 K10 [game]
       42 GETTABLEKS                       R4 R5 K14 ["Loaded"]
       44 NEWCLOSURE                       R6 P1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          UPVAL U1
       47 NAMECALL                         R4 R4 K15 ["Connect"]
       49 CALL                             R4 2 0
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R6 R7 K16 ["REQUEST_GAME_LOADED_KEY"]
       53 NEWCLOSURE                       R7 P2
       54 CAPTURE                          VAL R2
       55 CAPTURE                          UPVAL U1
       56 NAMECALL                         R4 R2 K17 ["OnHostEvent"]
       58 CALL                             R4 3 0
       59 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R3 R0 K0 ["IsGuest"]
        2 CALL                             R3 1 1
        3 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        5 LOADK                            R4 K1 ["subscribeGameLoaded should only be called on the guest DM (standalone DM)"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K4 ["GAME_LOADED_KEY"]
       12 MOVE                             R5 R1
       13 NAMECALL                         R2 R0 K5 ["OnGuestEvent"]
       15 CALL                             R2 3 2
       16 JUMPIF                           R3 ; [+4]
       17 GETIMPORT                        R4 K7 [error]
       19 LOADK                            R5 K1 ["subscribeGameLoaded should only be called on the guest DM (standalone DM)"]
       20 CALL                             R4 1 0
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R6 R7 K8 ["REQUEST_GAME_LOADED_KEY"]
       24 LOADNIL                          R7
       25 NAMECALL                         R4 R0 K9 ["FireHost"]
       27 CALL                             R4 3 0
       28 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["StudioNetworking"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 4 0
       32 LOADK                            R5 K12 ["GameLoadedNotifier_GameLoaded"]
       33 SETTABLEKS                       R5 R4 K13 ["GAME_LOADED_KEY"]
       35 LOADK                            R5 K14 ["GameLoadedNotifier_RequestGameLoaded"]
       36 SETTABLEKS                       R5 R4 K15 ["REQUEST_GAME_LOADED_KEY"]
       38 DUPCLOSURE                       R5 K16 [PROTO_3]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R4
       41 SETTABLEKS                       R5 R4 K17 ["init"]
       43 DUPCLOSURE                       R5 K18 [PROTO_4]
       44 CAPTURE                          VAL R4
       45 SETTABLEKS                       R5 R4 K19 ["subscribeGameLoaded"]
       47 RETURN                           R4 1
