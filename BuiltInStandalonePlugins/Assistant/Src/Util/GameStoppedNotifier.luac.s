PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["GAME_STOPPED_KEY"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Types"]
        7 GETTABLEKS                       R3 R3 K2 ["Standalone"]
        9 NAMECALL                         R0 R0 K3 ["FireGuest"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["Types"]
        3 GETTABLEKS                       R5 R5 K1 ["Server"]
        5 JUMPIFEQ                         R0 R5 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       11 LOADK                            R5 K2 ["GameStoppedNotifier can only be initialized for server data model"]
       12 GETIMPORT                        R3 K4 [assert]
       14 CALL                             R3 2 0
       15 GETIMPORT                        R3 K6 [game]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U0
       21 NAMECALL                         R3 R3 K7 ["BindToClose"]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

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
       21 GETTABLEKS                       R3 R1 K9 ["Utils"]
       23 GETTABLEKS                       R3 R3 K10 ["DataModelType"]
       25 NEWTABLE                         R4 4 0
       27 LOADK                            R5 K11 ["GameStoppedNotifier_GameStopped"]
       28 SETTABLEKS                       R5 R4 K12 ["GAME_STOPPED_KEY"]
       30 DUPCLOSURE                       R5 K13 [PROTO_1]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R4
       33 SETTABLEKS                       R5 R4 K14 ["init"]
       35 DUPCLOSURE                       R5 K15 [PROTO_2]
       36 CAPTURE                          VAL R4
       37 SETTABLEKS                       R5 R4 K16 ["subscribeGameStopped"]
       39 RETURN                           R4 1
