PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["GAME_LOADED_KEY"]
        4 GETUPVAL                         R4 2
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+2]
        7 LOADK                            R3 K1 ["Standalone"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R3
       10 NAMECALL                         R0 R0 K2 ["FireGuest"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["GAME_LOADED_KEY"]
        4 GETUPVAL                         R4 2
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+2]
        7 LOADK                            R3 K1 ["Standalone"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R3
       10 NAMECALL                         R0 R0 K2 ["FireGuest"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 NAMECALL                         R0 R0 K2 ["IsLoaded"]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+13]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K3 ["GAME_LOADED_KEY"]
       10 GETUPVAL                         R4 2
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R4 ; [+2]
       13 LOADK                            R3 K4 ["Standalone"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R3
       16 NAMECALL                         R0 R0 K5 ["FireGuest"]
       18 CALL                             R0 3 0
       19 RETURN                           R0 0

PROTO_3:
        0 JUMPIFEQKS                       R0 K0 ["Client"] ; [+2]
        2 LOADB                            R4 0 +1
        3 LOADB                            R4 1
        4 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        6 LOADK                            R5 K1 ["GameLoadedNotifier can only be initialized for client data model"]
        7 GETIMPORT                        R3 K3 [assert]
        9 CALL                             R3 2 0
       10 GETUPVAL                         R3 0
       11 CALL                             R3 0 1
       12 JUMPIF                           R3 ; [+14]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K4 ["create"]
       16 DUPTABLE                         R4 K8 [{"plugin", "isGuest", "isHost"}]
       17 SETTABLEKS                       R1 R4 K5 ["plugin"]
       19 LOADB                            R5 0
       20 SETTABLEKS                       R5 R4 K6 ["isGuest"]
       22 LOADB                            R5 1
       23 SETTABLEKS                       R5 R4 K7 ["isHost"]
       25 CALL                             R3 1 1
       26 MOVE                             R2 R3
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          REF R2
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U0
       31 GETIMPORT                        R4 K10 [game]
       33 NAMECALL                         R4 R4 K11 ["IsLoaded"]
       35 CALL                             R4 1 1
       36 JUMPIFNOT                        R4 ; [+13]
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R6 R7 K12 ["GAME_LOADED_KEY"]
       40 GETUPVAL                         R8 0
       41 CALL                             R8 0 1
       42 JUMPIFNOT                        R8 ; [+2]
       43 LOADK                            R7 K13 ["Standalone"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R7
       46 NAMECALL                         R4 R2 K14 ["FireGuest"]
       48 CALL                             R4 3 0
       49 JUMP                             ; [+11]
       50 GETIMPORT                        R5 K10 [game]
       52 GETTABLEKS                       R4 R5 K15 ["Loaded"]
       54 NEWCLOSURE                       R6 P1
       55 CAPTURE                          REF R2
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          UPVAL U0
       58 NAMECALL                         R4 R4 K16 ["Connect"]
       60 CALL                             R4 2 0
       61 GETUPVAL                         R7 2
       62 GETTABLEKS                       R6 R7 K17 ["REQUEST_GAME_LOADED_KEY"]
       64 NEWCLOSURE                       R7 P2
       65 CAPTURE                          REF R2
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          UPVAL U0
       68 NAMECALL                         R4 R2 K18 ["OnHostEvent"]
       70 CALL                             R4 3 0
       71 CLOSEUPVALS                      R2
       72 RETURN                           R0 0

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
       24 GETUPVAL                         R8 1
       25 CALL                             R8 0 1
       26 JUMPIFNOT                        R8 ; [+2]
       27 LOADK                            R7 K9 ["Client"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R7
       30 NAMECALL                         R4 R0 K10 ["FireHost"]
       32 CALL                             R4 3 0
       33 RETURN                           R3 1

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
       30 GETTABLEKS                       R6 R1 K12 ["Flags"]
       32 GETTABLEKS                       R5 R6 K13 ["Shared"]
       34 GETTABLEKS                       R4 R5 K14 ["FFlagAssistantDMNetworkIdentity"]
       36 NEWTABLE                         R5 4 0
       38 LOADK                            R6 K15 ["GameLoadedNotifier_GameLoaded"]
       39 SETTABLEKS                       R6 R5 K16 ["GAME_LOADED_KEY"]
       41 LOADK                            R6 K17 ["GameLoadedNotifier_RequestGameLoaded"]
       42 SETTABLEKS                       R6 R5 K18 ["REQUEST_GAME_LOADED_KEY"]
       44 DUPCLOSURE                       R6 K19 [PROTO_3]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R5
       48 SETTABLEKS                       R6 R5 K20 ["init"]
       50 DUPCLOSURE                       R6 K21 [PROTO_4]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R6 R5 K22 ["subscribeGameLoaded"]
       55 RETURN                           R5 1
