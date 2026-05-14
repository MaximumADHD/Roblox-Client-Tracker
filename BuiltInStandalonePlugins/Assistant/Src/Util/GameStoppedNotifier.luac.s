PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["GAME_STOPPED_KEY"]
        4 LOADK                            R3 K1 ["Standalone"]
        5 NAMECALL                         R0 R0 K2 ["FireGuest"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_1:
        0 JUMPIFEQKS                       R0 K0 ["Server"] ; [+2]
        2 LOADB                            R4 0 +1
        3 LOADB                            R4 1
        4 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        6 LOADK                            R5 K1 ["GameStoppedNotifier can only be initialized for server data model"]
        7 GETIMPORT                        R3 K3 [assert]
        9 CALL                             R3 2 0
       10 GETIMPORT                        R3 K5 [game]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U0
       15 NAMECALL                         R3 R3 K6 ["BindToClose"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R3 R0 K0 ["IsGuest"]
        2 CALL                             R3 1 1
        3 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        5 LOADK                            R4 K1 ["subscribeGameStopped should only be called on the guest DM (standalone DM)"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["GAME_STOPPED_KEY"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 4 0
       23 LOADK                            R4 K9 ["GameStoppedNotifier_GameStopped"]
       24 SETTABLEKS                       R4 R3 K10 ["GAME_STOPPED_KEY"]
       26 DUPCLOSURE                       R4 K11 [PROTO_1]
       27 CAPTURE                          VAL R3
       28 SETTABLEKS                       R4 R3 K12 ["init"]
       30 DUPCLOSURE                       R4 K13 [PROTO_2]
       31 CAPTURE                          VAL R3
       32 SETTABLEKS                       R4 R3 K14 ["subscribeGameStopped"]
       34 RETURN                           R3 1
