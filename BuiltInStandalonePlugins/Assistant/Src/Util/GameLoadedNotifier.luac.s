PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["GAME_LOADED_KEY"]
        4 LOADK                            R3 K1 ["Standalone"]
        5 NAMECALL                         R0 R0 K2 ["FireGuest"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["GAME_LOADED_KEY"]
        4 LOADK                            R3 K1 ["Standalone"]
        5 NAMECALL                         R0 R0 K2 ["FireGuest"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 NAMECALL                         R0 R0 K2 ["IsLoaded"]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["GAME_LOADED_KEY"]
       10 LOADK                            R3 K4 ["Standalone"]
       11 NAMECALL                         R0 R0 K5 ["FireGuest"]
       13 CALL                             R0 3 0
       14 RETURN                           R0 0

PROTO_3:
        0 JUMPIFEQKS                       R0 K0 ["Client"] ; [+2]
        2 LOADB                            R4 0 +1
        3 LOADB                            R4 1
        4 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        6 LOADK                            R5 K1 ["GameLoadedNotifier can only be initialized for client data model"]
        7 GETIMPORT                        R3 K3 [assert]
        9 CALL                             R3 2 0
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U0
       13 GETIMPORT                        R4 K5 [game]
       15 NAMECALL                         R4 R4 K6 ["IsLoaded"]
       17 CALL                             R4 1 1
       18 JUMPIFNOT                        R4 ; [+8]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K7 ["GAME_LOADED_KEY"]
       22 LOADK                            R7 K8 ["Standalone"]
       23 NAMECALL                         R4 R2 K9 ["FireGuest"]
       25 CALL                             R4 3 0
       26 JUMP                             ; [+10]
       27 GETIMPORT                        R4 K5 [game]
       29 GETTABLEKS                       R4 R4 K10 ["Loaded"]
       31 NEWCLOSURE                       R6 P1
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U0
       34 NAMECALL                         R4 R4 K11 ["Connect"]
       36 CALL                             R4 2 0
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K12 ["REQUEST_GAME_LOADED_KEY"]
       40 NEWCLOSURE                       R7 P2
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U0
       43 NAMECALL                         R4 R2 K13 ["OnHostEvent"]
       45 CALL                             R4 3 0
       46 RETURN                           R0 0

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
       24 LOADK                            R7 K9 ["Client"]
       25 NAMECALL                         R4 R0 K10 ["FireHost"]
       27 CALL                             R4 3 0
       28 RETURN                           R3 1

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
       21 NEWTABLE                         R3 4 0
       23 LOADK                            R4 K9 ["GameLoadedNotifier_GameLoaded"]
       24 SETTABLEKS                       R4 R3 K10 ["GAME_LOADED_KEY"]
       26 LOADK                            R4 K11 ["GameLoadedNotifier_RequestGameLoaded"]
       27 SETTABLEKS                       R4 R3 K12 ["REQUEST_GAME_LOADED_KEY"]
       29 DUPCLOSURE                       R4 K13 [PROTO_3]
       30 CAPTURE                          VAL R3
       31 SETTABLEKS                       R4 R3 K14 ["init"]
       33 DUPCLOSURE                       R4 K15 [PROTO_4]
       34 CAPTURE                          VAL R3
       35 SETTABLEKS                       R4 R3 K16 ["subscribeGameLoaded"]
       37 RETURN                           R3 1
