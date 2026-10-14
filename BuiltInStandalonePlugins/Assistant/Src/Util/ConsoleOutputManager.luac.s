PROTO_0:
        0 DUPTABLE                         R2 K4 [{"dataModelType", "message", "messageType", "timestamp"}]
        1 GETUPVAL                         R3 0
        2 SETTABLEKS                       R3 R2 K0 ["dataModelType"]
        4 SETTABLEKS                       R0 R2 K1 ["message"]
        6 SETTABLEKS                       R1 R2 K2 ["messageType"]
        8 GETIMPORT                        R3 K7 [os.time]
       10 CALL                             R3 0 1
       11 SETTABLEKS                       R3 R2 K3 ["timestamp"]
       13 GETUPVAL                         R3 1
       14 NEWTABLE                         R4 0 1
       16 MOVE                             R5 R2
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetLogHistory"]
        3 CALL                             R2 1 1
        4 LENGTH                           R3 R2
        5 LOADN                            R4 0
        6 JUMPIFNOTLT                      R4 R3 ; [+12]
        8 MOVE                             R3 R2
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 SETTABLEKS                       R1 R7 K1 ["dataModelType"]
       14 FORGLOOP                         R3 2 ; [-3]
       16 MOVE                             R3 R0
       17 MOVE                             R4 R2
       18 CALL                             R3 1 0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K2 ["MessageOut"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R3 R3 K3 ["Connect"]
       27 CALL                             R3 2 1
       28 RETURN                           R3 1

PROTO_2:
        0 LOADN                            R5 1
        1 LENGTH                           R6 R1
        2 FASTCALL3                        STRING_SUB R0 R5 R6
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K2 [string.sub]
        7 CALL                             R3 3 1
        8 JUMPIFEQ                         R3 R1 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADB                            R7 0
        7 GETUPVAL                         R8 0
        8 LOADNIL                          R9
        9 LOADNIL                          R10
       10 FORGPREP                         R8
       11 GETTABLEKS                       R14 R6 K0 ["message"]
       13 LOADN                            R17 1
       14 LENGTH                           R18 R12
       15 FASTCALL3                        STRING_SUB R14 R17 R18
       17 MOVE                             R16 R14
       18 GETIMPORT                        R15 K3 [string.sub]
       20 CALL                             R15 3 1
       21 JUMPIFEQ                         R15 R12 ; [+2]
       23 LOADB                            R13 0 +1
       24 LOADB                            R13 1
       25 JUMPIFNOT                        R13 ; [+2]
       26 LOADB                            R7 1
       27 JUMP                             ; [+2]
       28 FORGLOOP                         R8 2 ; [-18]
       30 JUMPIF                           R7 ; [+7]
       31 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       33 MOVE                             R9 R1
       34 MOVE                             R10 R6
       35 GETIMPORT                        R8 K6 [table.insert]
       37 CALL                             R8 2 0
       38 FORGLOOP                         R2 2 ; [-33]
       40 LENGTH                           R2 R1
       41 LOADN                            R3 0
       42 JUMPIFNOTLT                      R3 R2 ; [+11]
       44 GETUPVAL                         R2 1
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R4 R4 K7 ["Identity"]
       48 GETTABLEKS                       R4 R4 K8 ["Standalone"]
       50 MOVE                             R5 R1
       51 NAMECALL                         R2 R2 K9 ["Fire"]
       53 CALL                             R2 3 0
       54 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R8 R6 K0 ["message"]
        8 LOADN                            R11 1
        9 LOADN                            R12 21
       10 FASTCALL3                        STRING_SUB R8 R11 R12
       12 MOVE                             R10 R8
       13 GETIMPORT                        R9 K3 [string.sub]
       15 CALL                             R9 3 1
       16 JUMPIFEQKS                       R9 K4 ["[Networking] [Studio]"] ; [+2]
       18 LOADB                            R7 0 +1
       19 LOADB                            R7 1
       20 JUMPIF                           R7 ; [+7]
       21 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       23 MOVE                             R8 R1
       24 MOVE                             R9 R6
       25 GETIMPORT                        R7 K7 [table.insert]
       27 CALL                             R7 2 0
       28 FORGLOOP                         R2 2 ; [-23]
       30 LENGTH                           R2 R1
       31 LOADN                            R3 0
       32 JUMPIFNOTLT                      R3 R2 ; [+12]
       34 GETUPVAL                         R2 0
       35 LOADK                            R4 K8 ["ConsoleOutputNetworkKey"]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K9 ["Types"]
       39 GETTABLEKS                       R5 R5 K10 ["Standalone"]
       41 MOVE                             R6 R1
       42 NAMECALL                         R2 R2 K11 ["FireGuest"]
       44 CALL                             R2 4 0
       45 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R4
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K0 ["FFlagAssistantUseNewDMNetworking"]
        4 JUMPIFNOT                        R5 ; [+18]
        5 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        7 MOVE                             R6 R2
        8 LOADK                            R7 K1 ["ConsoleOutputManager requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
        9 GETIMPORT                        R5 K3 [assert]
       11 CALL                             R5 2 0
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K4 ["event"]
       15 MOVE                             R6 R2
       16 LOADK                            R7 K5 ["ConsoleOutputNetworkKey"]
       17 CALL                             R5 2 1
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R5
       21 CAPTURE                          UPVAL U3
       22 JUMP                             ; [+10]
       23 FASTCALL2K                       ASSERT R1 K6 ; [+5]
       25 MOVE                             R6 R1
       26 LOADK                            R7 K6 ["ConsoleOutputManager requires networking"]
       27 GETIMPORT                        R5 K3 [assert]
       29 CALL                             R5 2 0
       30 NEWCLOSURE                       R4 P1
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U4
       33 GETUPVAL                         R5 5
       34 MOVE                             R6 R4
       35 MOVE                             R7 R3
       36 CALL                             R5 2 1
       37 GETTABLEKS                       R6 R0 K7 ["Unloading"]
       39 NEWCLOSURE                       R8 P2
       40 CAPTURE                          VAL R5
       41 NAMECALL                         R6 R6 K8 ["Connect"]
       43 CALL                             R6 2 0
       44 RETURN                           R0 0

PROTO_7:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K0 ["append"]
        7 MOVE                             R7 R5
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 ; [-6]
       11 RETURN                           R0 0

PROTO_8:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["append"]
        7 MOVE                             R8 R6
        8 CALL                             R7 1 0
        9 FORGLOOP                         R2 2 ; [-6]
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["append"]
        7 MOVE                             R8 R6
        8 CALL                             R7 1 0
        9 FORGLOOP                         R2 2 ; [-6]
       11 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R3 ; [+26]
        4 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K1 ["ConsoleOutputManager requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K4 ["event"]
       14 MOVE                             R4 R2
       15 LOADK                            R5 K5 ["ConsoleOutputNetworkKey"]
       16 CALL                             R3 2 1
       17 DUPCLOSURE                       R6 K6 [PROTO_8]
       18 CAPTURE                          UPVAL U2
       19 NAMECALL                         R4 R3 K7 ["Connect"]
       21 CALL                             R4 2 1
       22 GETTABLEKS                       R5 R0 K8 ["Unloading"]
       24 NEWCLOSURE                       R7 P1
       25 CAPTURE                          VAL R4
       26 NAMECALL                         R5 R5 K7 ["Connect"]
       28 CALL                             R5 2 0
       29 RETURN                           R0 0
       30 FASTCALL2K                       ASSERT R1 K9 ; [+5]
       32 MOVE                             R4 R1
       33 LOADK                            R5 K9 ["ConsoleOutputManager requires networking"]
       34 GETIMPORT                        R3 K3 [assert]
       36 CALL                             R3 2 0
       37 LOADK                            R5 K5 ["ConsoleOutputNetworkKey"]
       38 DUPCLOSURE                       R6 K10 [PROTO_10]
       39 CAPTURE                          UPVAL U2
       40 NAMECALL                         R3 R1 K11 ["OnGuestEvent"]
       42 CALL                             R3 3 2
       43 GETTABLEKS                       R5 R0 K8 ["Unloading"]
       45 NEWCLOSURE                       R7 P3
       46 CAPTURE                          VAL R4
       47 NAMECALL                         R5 R5 K7 ["Connect"]
       49 CALL                             R5 2 0
       50 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getDataModelType"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["Types"]
        7 GETTABLEKS                       R4 R4 K2 ["Standalone"]
        9 JUMPIFNOTEQ                      R3 R4 ; [+7]
       11 GETUPVAL                         R4 1
       12 MOVE                             R5 R0
       13 MOVE                             R6 R1
       14 MOVE                             R7 R2
       15 CALL                             R4 3 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R4 2
       18 MOVE                             R5 R0
       19 MOVE                             R6 R1
       20 MOVE                             R7 R2
       21 MOVE                             R8 R3
       22 CALL                             R4 4 0
       23 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LogService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Assistant"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["AssistantUI"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["DMNetworking"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["DMNetworkingOLD"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K14 ["Src"]
       38 GETTABLEKS                       R6 R6 K15 ["Flags"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R2 K16 ["Utils"]
       43 GETTABLEKS                       R6 R6 K17 ["DataModelType"]
       45 GETTABLEKS                       R7 R2 K16 ["Utils"]
       47 GETTABLEKS                       R7 R7 K18 ["ConsoleOutput"]
       49 GETTABLEKS                       R8 R3 K19 ["Remote"]
       51 NEWTABLE                         R9 0 2
       53 LOADK                            R10 K20 ["[DMNetworking]"]
       54 LOADK                            R11 K21 ["[Networking] [Studio]"]
       55 SETLIST                          R9 R10 2 [1]
       57 DUPCLOSURE                       R10 K22 [PROTO_1]
       58 CAPTURE                          VAL R0
       59 DUPCLOSURE                       R11 K23 [PROTO_2]
       60 DUPCLOSURE                       R12 K24 [PROTO_6]
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R10
       67 DUPCLOSURE                       R13 K25 [PROTO_7]
       68 CAPTURE                          VAL R7
       69 DUPCLOSURE                       R14 K26 [PROTO_12]
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R7
       73 DUPCLOSURE                       R15 K27 [PROTO_13]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R14
       76 CAPTURE                          VAL R12
       77 DUPTABLE                         R16 K29 [{"init"}]
       78 SETTABLEKS                       R15 R16 K28 ["init"]
       80 RETURN                           R16 1
