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
        2 GETTABLEKS                       R2 R2 K0 ["ALL"]
        4 NAMECALL                         R0 R0 K1 ["Fire"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 NAMECALL                         R0 R0 K2 ["IsLoaded"]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["ALL"]
       10 NAMECALL                         R0 R0 K4 ["Fire"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["GAME_LOADED_KEY"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Types"]
        7 GETTABLEKS                       R3 R3 K2 ["Standalone"]
        9 NAMECALL                         R0 R0 K3 ["FireGuest"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["GAME_LOADED_KEY"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Types"]
        7 GETTABLEKS                       R3 R3 K2 ["Standalone"]
        9 NAMECALL                         R0 R0 K3 ["FireGuest"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["Types"]
        3 GETTABLEKS                       R6 R6 K1 ["Client"]
        5 JUMPIFEQ                         R0 R6 ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       11 LOADK                            R6 K2 ["GameLoadedNotifier can only be initialized for client data model"]
       12 GETIMPORT                        R4 K4 [assert]
       14 CALL                             R4 2 0
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K5 ["FFlagAssistantUseNewDMNetworking"]
       18 JUMPIFNOT                        R4 ; [+63]
       19 FASTCALL2K                       ASSERT R3 K6 ; [+5]
       21 MOVE                             R5 R3
       22 LOADK                            R6 K6 ["GameLoadedNotifier requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
       23 GETIMPORT                        R4 K4 [assert]
       25 CALL                             R4 2 0
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K7 ["event"]
       29 MOVE                             R5 R3
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K8 ["GAME_LOADED_KEY"]
       33 CALL                             R4 2 1
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K7 ["event"]
       37 MOVE                             R6 R3
       38 GETUPVAL                         R7 3
       39 GETTABLEKS                       R7 R7 K9 ["REQUEST_GAME_LOADED_KEY"]
       41 CALL                             R5 2 1
       42 NEWCLOSURE                       R6 P0
       43 CAPTURE                          VAL R4
       44 CAPTURE                          UPVAL U4
       45 GETIMPORT                        R7 K11 [game]
       47 NAMECALL                         R7 R7 K12 ["IsLoaded"]
       49 CALL                             R7 1 1
       50 JUMPIFNOT                        R7 ; [+7]
       51 GETUPVAL                         R9 4
       52 GETTABLEKS                       R9 R9 K13 ["ALL"]
       54 NAMECALL                         R7 R4 K14 ["Fire"]
       56 CALL                             R7 2 0
       57 JUMP                             ; [+10]
       58 GETIMPORT                        R7 K11 [game]
       60 GETTABLEKS                       R7 R7 K15 ["Loaded"]
       62 NEWCLOSURE                       R9 P1
       63 CAPTURE                          VAL R4
       64 CAPTURE                          UPVAL U4
       65 NAMECALL                         R7 R7 K16 ["Connect"]
       67 CALL                             R7 2 0
       68 NEWCLOSURE                       R9 P2
       69 CAPTURE                          VAL R4
       70 CAPTURE                          UPVAL U4
       71 NAMECALL                         R7 R5 K16 ["Connect"]
       73 CALL                             R7 2 1
       74 GETTABLEKS                       R8 R1 K17 ["Unloading"]
       76 NEWCLOSURE                       R10 P3
       77 CAPTURE                          VAL R7
       78 NAMECALL                         R8 R8 K18 ["Once"]
       80 CALL                             R8 2 0
       81 RETURN                           R0 0
       82 FASTCALL2K                       ASSERT R2 K19 ; [+5]
       84 MOVE                             R5 R2
       85 LOADK                            R6 K19 ["GameLoadedNotifier requires networking"]
       86 GETIMPORT                        R4 K4 [assert]
       88 CALL                             R4 2 0
       89 NEWCLOSURE                       R4 P4
       90 CAPTURE                          VAL R2
       91 CAPTURE                          UPVAL U3
       92 CAPTURE                          UPVAL U0
       93 GETIMPORT                        R5 K11 [game]
       95 NAMECALL                         R5 R5 K12 ["IsLoaded"]
       97 CALL                             R5 1 1
       98 JUMPIFNOT                        R5 ; [+12]
       99 GETUPVAL                         R7 3
      100 GETTABLEKS                       R7 R7 K8 ["GAME_LOADED_KEY"]
      102 GETUPVAL                         R8 0
      103 GETTABLEKS                       R8 R8 K0 ["Types"]
      105 GETTABLEKS                       R8 R8 K20 ["Standalone"]
      107 NAMECALL                         R5 R2 K21 ["FireGuest"]
      109 CALL                             R5 3 0
      110 JUMP                             ; [+11]
      111 GETIMPORT                        R5 K11 [game]
      113 GETTABLEKS                       R5 R5 K15 ["Loaded"]
      115 NEWCLOSURE                       R7 P5
      116 CAPTURE                          VAL R2
      117 CAPTURE                          UPVAL U3
      118 CAPTURE                          UPVAL U0
      119 NAMECALL                         R5 R5 K16 ["Connect"]
      121 CALL                             R5 2 0
      122 GETUPVAL                         R7 3
      123 GETTABLEKS                       R7 R7 K9 ["REQUEST_GAME_LOADED_KEY"]
      125 NEWCLOSURE                       R8 P6
      126 CAPTURE                          VAL R2
      127 CAPTURE                          UPVAL U3
      128 CAPTURE                          UPVAL U0
      129 NAMECALL                         R5 R2 K22 ["OnHostEvent"]
      131 CALL                             R5 3 0
      132 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R3 ; [+39]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        6 MOVE                             R4 R1
        7 LOADK                            R5 K1 ["GameLoadedNotifier requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K4 ["event"]
       14 MOVE                             R4 R1
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K5 ["GAME_LOADED_KEY"]
       18 CALL                             R3 2 1
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R2
       21 NAMECALL                         R4 R3 K6 ["Connect"]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K4 ["event"]
       27 MOVE                             R6 R1
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K7 ["REQUEST_GAME_LOADED_KEY"]
       31 CALL                             R5 2 1
       32 GETUPVAL                         R8 3
       33 GETTABLEKS                       R8 R8 K8 ["Identity"]
       35 GETTABLEKS                       R8 R8 K9 ["PlayClient"]
       37 NAMECALL                         R6 R5 K10 ["Fire"]
       39 CALL                             R6 2 0
       40 NEWCLOSURE                       R6 P1
       41 CAPTURE                          VAL R4
       42 RETURN                           R6 1
       43 FASTCALL2K                       ASSERT R0 K11 ; [+5]
       45 MOVE                             R4 R0
       46 LOADK                            R5 K11 ["GameLoadedNotifier requires networking"]
       47 GETIMPORT                        R3 K3 [assert]
       49 CALL                             R3 2 0
       50 NAMECALL                         R4 R0 K12 ["IsGuest"]
       52 CALL                             R4 1 1
       53 FASTCALL2K                       ASSERT R4 K13 ; [+4]
       55 LOADK                            R5 K13 ["subscribeGameLoaded should only be called on the guest DM (standalone DM)"]
       56 GETIMPORT                        R3 K3 [assert]
       58 CALL                             R3 2 0
       59 GETUPVAL                         R5 2
       60 GETTABLEKS                       R5 R5 K5 ["GAME_LOADED_KEY"]
       62 MOVE                             R6 R2
       63 NAMECALL                         R3 R0 K14 ["OnGuestEvent"]
       65 CALL                             R3 3 2
       66 JUMPIF                           R4 ; [+4]
       67 GETIMPORT                        R5 K16 [error]
       69 LOADK                            R6 K13 ["subscribeGameLoaded should only be called on the guest DM (standalone DM)"]
       70 CALL                             R5 1 0
       71 GETUPVAL                         R7 2
       72 GETTABLEKS                       R7 R7 K7 ["REQUEST_GAME_LOADED_KEY"]
       74 GETUPVAL                         R8 4
       75 GETTABLEKS                       R8 R8 K17 ["Types"]
       77 GETTABLEKS                       R8 R8 K18 ["Client"]
       79 NAMECALL                         R5 R0 K19 ["FireHost"]
       81 CALL                             R5 3 0
       82 RETURN                           R4 1

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
       43 LOADK                            R8 K15 ["GameLoadedNotifier_GameLoaded"]
       44 SETTABLEKS                       R8 R7 K16 ["GAME_LOADED_KEY"]
       46 LOADK                            R8 K17 ["GameLoadedNotifier_RequestGameLoaded"]
       47 SETTABLEKS                       R8 R7 K18 ["REQUEST_GAME_LOADED_KEY"]
       49 DUPCLOSURE                       R8 K19 [PROTO_7]
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R2
       55 SETTABLEKS                       R8 R7 K20 ["init"]
       57 DUPCLOSURE                       R8 K21 [PROTO_10]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R5
       63 SETTABLEKS                       R8 R7 K22 ["subscribeGameLoaded"]
       65 RETURN                           R7 1
