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
        2 GETTABLEKS                       R2 R2 K0 ["GAME_STOPPED_KEY"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Types"]
        7 GETTABLEKS                       R3 R3 K2 ["Standalone"]
        9 NAMECALL                         R0 R0 K3 ["FireGuest"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["Types"]
        3 GETTABLEKS                       R6 R6 K1 ["Server"]
        5 JUMPIFEQ                         R0 R6 ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       11 LOADK                            R6 K2 ["GameStoppedNotifier can only be initialized for server data model"]
       12 GETIMPORT                        R4 K4 [assert]
       14 CALL                             R4 2 0
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K5 ["FFlagAssistantUseNewDMNetworking"]
       18 JUMPIFNOT                        R4 ; [+24]
       19 FASTCALL2K                       ASSERT R3 K6 ; [+5]
       21 MOVE                             R5 R3
       22 LOADK                            R6 K6 ["GameStoppedNotifier requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
       23 GETIMPORT                        R4 K4 [assert]
       25 CALL                             R4 2 0
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K7 ["event"]
       29 MOVE                             R5 R3
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K8 ["GAME_STOPPED_KEY"]
       33 CALL                             R4 2 1
       34 GETIMPORT                        R5 K10 [game]
       36 NEWCLOSURE                       R7 P0
       37 CAPTURE                          VAL R4
       38 CAPTURE                          UPVAL U4
       39 NAMECALL                         R5 R5 K11 ["BindToClose"]
       41 CALL                             R5 2 0
       42 RETURN                           R0 0
       43 FASTCALL2K                       ASSERT R2 K12 ; [+5]
       45 MOVE                             R5 R2
       46 LOADK                            R6 K12 ["GameStoppedNotifier requires networking"]
       47 GETIMPORT                        R4 K4 [assert]
       49 CALL                             R4 2 0
       50 GETIMPORT                        R4 K10 [game]
       52 NEWCLOSURE                       R6 P1
       53 CAPTURE                          VAL R2
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          UPVAL U0
       56 NAMECALL                         R4 R4 K11 ["BindToClose"]
       58 CALL                             R4 2 0
       59 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R3 ; [+23]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        6 MOVE                             R4 R1
        7 LOADK                            R5 K1 ["GameStoppedNotifier requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K4 ["event"]
       14 MOVE                             R4 R1
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K5 ["GAME_STOPPED_KEY"]
       18 CALL                             R3 2 1
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R2
       21 NAMECALL                         R4 R3 K6 ["Connect"]
       23 CALL                             R4 2 1
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          VAL R4
       26 RETURN                           R5 1
       27 FASTCALL2K                       ASSERT R0 K7 ; [+5]
       29 MOVE                             R4 R0
       30 LOADK                            R5 K7 ["GameStoppedNotifier requires networking"]
       31 GETIMPORT                        R3 K3 [assert]
       33 CALL                             R3 2 0
       34 NAMECALL                         R4 R0 K8 ["IsGuest"]
       36 CALL                             R4 1 1
       37 FASTCALL2K                       ASSERT R4 K9 ; [+4]
       39 LOADK                            R5 K9 ["subscribeGameStopped should only be called on the guest DM (standalone DM)"]
       40 GETIMPORT                        R3 K3 [assert]
       42 CALL                             R3 2 0
       43 GETUPVAL                         R5 2
       44 GETTABLEKS                       R5 R5 K5 ["GAME_STOPPED_KEY"]
       46 MOVE                             R6 R2
       47 NAMECALL                         R3 R0 K10 ["OnGuestEvent"]
       49 CALL                             R3 3 2
       50 JUMPIF                           R4 ; [+4]
       51 GETIMPORT                        R5 K12 [error]
       53 LOADK                            R6 K9 ["subscribeGameStopped should only be called on the guest DM (standalone DM)"]
       54 CALL                             R5 1 0
       55 RETURN                           R4 1

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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["DMNetworkingOLD"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Flags"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K12 ["Utils"]
       37 GETTABLEKS                       R5 R5 K13 ["DataModelType"]
       39 GETTABLEKS                       R6 R2 K14 ["Remote"]
       41 NEWTABLE                         R7 4 0
       43 LOADK                            R8 K15 ["GameStoppedNotifier_GameStopped"]
       44 SETTABLEKS                       R8 R7 K16 ["GAME_STOPPED_KEY"]
       46 DUPCLOSURE                       R8 K17 [PROTO_2]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R8 R7 K18 ["init"]
       54 DUPCLOSURE                       R8 K19 [PROTO_5]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 SETTABLEKS                       R8 R7 K20 ["subscribeGameStopped"]
       60 RETURN                           R7 1
