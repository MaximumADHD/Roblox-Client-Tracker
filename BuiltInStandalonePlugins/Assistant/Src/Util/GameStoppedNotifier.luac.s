PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["GAME_STOPPED_KEY"]
        4 LOADNIL                          R3
        5 NAMECALL                         R0 R0 K1 ["FireGuest"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_1:
        0 JUMPIFEQKS                       R0 K0 ["Server"] ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        6 LOADK                            R4 K1 ["GameStoppedNotifier can only be initialized for server data model"]
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
       23 GETIMPORT                        R3 K10 [game]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U1
       28 NAMECALL                         R3 R3 K11 ["BindToClose"]
       30 CALL                             R3 2 0
       31 RETURN                           R0 0

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
       30 NEWTABLE                         R4 4 0
       32 LOADK                            R5 K12 ["GameStoppedNotifier_GameStopped"]
       33 SETTABLEKS                       R5 R4 K13 ["GAME_STOPPED_KEY"]
       35 DUPCLOSURE                       R5 K14 [PROTO_1]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 SETTABLEKS                       R5 R4 K15 ["init"]
       40 DUPCLOSURE                       R5 K16 [PROTO_2]
       41 CAPTURE                          VAL R4
       42 SETTABLEKS                       R5 R4 K17 ["subscribeGameStopped"]
       44 RETURN                           R4 1
