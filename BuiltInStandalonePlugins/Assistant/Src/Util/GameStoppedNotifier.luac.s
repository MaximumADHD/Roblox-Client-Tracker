PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ALL"]
        4 NAMECALL                         R0 R0 K1 ["Fire"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

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
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K5 ["event"]
       18 MOVE                             R4 R2
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K6 ["GAME_STOPPED_KEY"]
       22 CALL                             R3 2 1
       23 GETIMPORT                        R4 K8 [game]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U3
       28 NAMECALL                         R4 R4 K9 ["BindToClose"]
       30 CALL                             R4 2 0
       31 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["event"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["GAME_STOPPED_KEY"]
        7 CALL                             R2 2 1
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R1
       10 NAMECALL                         R3 R2 K2 ["Connect"]
       12 CALL                             R3 2 1
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          VAL R3
       15 RETURN                           R4 1

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
       29 LOADK                            R6 K12 ["GameStoppedNotifier_GameStopped"]
       30 SETTABLEKS                       R6 R5 K13 ["GAME_STOPPED_KEY"]
       32 DUPCLOSURE                       R6 K14 [PROTO_1]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R6 R5 K15 ["init"]
       39 DUPCLOSURE                       R6 K16 [PROTO_4]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R5
       42 SETTABLEKS                       R6 R5 K17 ["subscribeGameStopped"]
       44 RETURN                           R5 1
