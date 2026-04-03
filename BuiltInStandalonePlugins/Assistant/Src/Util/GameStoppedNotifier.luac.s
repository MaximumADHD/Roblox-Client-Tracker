PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["GAME_STOPPED_KEY"]
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
        0 JUMPIFEQKS                       R0 K0 ["Server"] ; [+2]
        2 LOADB                            R4 0 +1
        3 LOADB                            R4 1
        4 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        6 LOADK                            R5 K1 ["GameStoppedNotifier can only be initialized for server data model"]
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
       27 GETIMPORT                        R3 K10 [game]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          REF R2
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U0
       33 NAMECALL                         R3 R3 K11 ["BindToClose"]
       35 CALL                             R3 2 0
       36 CLOSEUPVALS                      R2
       37 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R3 R0 K0 ["IsGuest"]
        2 CALL                             R3 1 1
        3 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        5 LOADK                            R4 K1 ["subscribeGameStopped should only be called on the guest DM (standalone DM)"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K4 ["GAME_STOPPED_KEY"]
       12 MOVE                             R5 R1
       13 NAMECALL                         R2 R0 K5 ["OnGuestEvent"]
       15 CALL                             R2 3 2
       16 JUMPIF                           R3 ; [+4]
       17 GETIMPORT                        R4 K7 [error]
       19 LOADK                            R5 K1 ["subscribeGameStopped should only be called on the guest DM (standalone DM)"]
       20 CALL                             R4 1 0
       21 RETURN                           R3 1

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
       38 LOADK                            R6 K15 ["GameStoppedNotifier_GameStopped"]
       39 SETTABLEKS                       R6 R5 K16 ["GAME_STOPPED_KEY"]
       41 DUPCLOSURE                       R6 K17 [PROTO_1]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R5
       45 SETTABLEKS                       R6 R5 K18 ["init"]
       47 DUPCLOSURE                       R6 K19 [PROTO_2]
       48 CAPTURE                          VAL R5
       49 SETTABLEKS                       R6 R5 K20 ["subscribeGameStopped"]
       51 RETURN                           R5 1
