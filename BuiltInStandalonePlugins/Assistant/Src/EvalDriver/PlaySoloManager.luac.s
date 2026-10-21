PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Wait"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Wait"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+4]
        2 GETUPVAL                         R1 1
        3 NAMECALL                         R1 R1 K0 ["Wait"]
        5 CALL                             R1 1 0
        6 LOADN                            R1 0
        7 JUMPIFNOTLT                      R1 R0 ; [+7]
        9 GETUPVAL                         R1 2
       10 JUMPIF                           R1 ; [+4]
       11 GETUPVAL                         R1 3
       12 NAMECALL                         R1 R1 K0 ["Wait"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R1 0
        1 SETUPVAL                         R1 0
        2 LOADB                            R1 0
        3 SETUPVAL                         R1 1
        4 LOADN                            R1 1
        5 JUMPIFNOTLE                      R0 R1 ; [+11]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K0 ["get"]
       10 CALL                             R1 0 1
       11 GETTABLEKS                       R1 R1 K1 ["startStopPlayAsync"]
       13 LOADB                            R2 1
       14 CALL                             R1 1 0
       15 LOADN                            R1 1
       16 RETURN                           R1 1
       17 GETIMPORT                        R1 K3 [error]
       19 LOADK                            R2 K4 ["Multi players not Implemented"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["startStopPlayAsync"]
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Types"]
        3 GETTABLEKS                       R2 R2 K1 ["Server"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+12]
        7 GETIMPORT                        R2 K3 [print]
        9 LOADK                            R3 K4 ["Server DataModelStarted"]
       10 CALL                             R2 1 0
       11 LOADB                            R2 1
       12 SETUPVAL                         R2 1
       13 GETUPVAL                         R2 2
       14 NAMECALL                         R2 R2 K5 ["Fire"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K0 ["Types"]
       21 GETTABLEKS                       R2 R2 K6 ["Client"]
       23 JUMPIFNOTEQ                      R1 R2 ; [+11]
       25 GETIMPORT                        R2 K3 [print]
       27 LOADK                            R3 K7 ["Client DataModelStarted"]
       28 CALL                             R2 1 0
       29 LOADB                            R2 1
       30 SETUPVAL                         R2 3
       31 GETUPVAL                         R2 4
       32 NAMECALL                         R2 R2 K5 ["Fire"]
       34 CALL                             R2 1 0
       35 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 GETUPVAL                         R3 5
        7 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantUseNewDMNetworking"]
        9 JUMPIFNOT                        R3 ; [+27]
       10 FASTCALL2K                       ASSERT R1 K1 ; [+5]
       12 MOVE                             R4 R1
       13 LOADK                            R5 K1 ["PlaySoloManager requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
       14 GETIMPORT                        R3 K3 [assert]
       16 CALL                             R3 2 0
       17 GETUPVAL                         R3 7
       18 GETTABLEKS                       R3 R3 K4 ["new"]
       20 CALL                             R3 0 1
       21 SETUPVAL                         R3 6
       22 GETUPVAL                         R3 8
       23 GETTABLEKS                       R3 R3 K5 ["event"]
       25 MOVE                             R4 R1
       26 LOADK                            R5 K6 ["PlaySoloManager.DataModelStarted"]
       27 CALL                             R3 2 1
       28 GETUPVAL                         R4 6
       29 MOVE                             R8 R2
       30 NAMECALL                         R6 R3 K7 ["Connect"]
       32 CALL                             R6 2 -1
       33 NAMECALL                         R4 R4 K8 ["Add"]
       35 CALL                             R4 -1 0
       36 RETURN                           R0 0
       37 FASTCALL2K                       ASSERT R0 K9 ; [+5]
       39 MOVE                             R4 R0
       40 LOADK                            R5 K9 ["PlaySoloManager requires networking"]
       41 GETIMPORT                        R3 K3 [assert]
       43 CALL                             R3 2 0
       44 LOADK                            R5 K10 ["DataModelStarted"]
       45 MOVE                             R6 R2
       46 NAMECALL                         R3 R0 K11 ["OnGuestEvent"]
       48 CALL                             R3 3 0
       49 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K2 [{"message", "messageType"}]
        2 SETTABLEKS                       R0 R4 K0 ["message"]
        4 SETTABLEKS                       R1 R4 K1 ["messageType"]
        6 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
        8 GETIMPORT                        R2 K5 [table.insert]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MessageOut"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R1 K3 [Enum.MessageType.MessageOutput]
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADK                            R1 K4 [""]
        5 RETURN                           R1 1
        6 GETIMPORT                        R1 K6 [Enum.MessageType.MessageError]
        8 JUMPIFNOTEQ                      R0 R1 ; [+3]
       10 LOADK                            R1 K7 ["[Error] "]
       11 RETURN                           R1 1
       12 GETIMPORT                        R1 K9 [Enum.MessageType.MessageWarning]
       14 JUMPIFNOTEQ                      R0 R1 ; [+3]
       16 LOADK                            R1 K10 ["[Warning] "]
       17 RETURN                           R1 1
       18 GETIMPORT                        R1 K12 [Enum.MessageType.MessageInfo]
       20 JUMPIFNOTEQ                      R0 R1 ; [+3]
       22 LOADK                            R1 K4 [""]
       23 RETURN                           R1 1
       24 LOADK                            R1 K4 [""]
       25 RETURN                           R1 1

PROTO_10:
        0 LOADK                            R0 K0 [""]
        1 GETUPVAL                         R1 0
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R7 R5 K1 ["messageType"]
        7 GETIMPORT                        R8 K5 [Enum.MessageType.MessageOutput]
        9 JUMPIFNOTEQ                      R7 R8 ; [+3]
       11 LOADK                            R6 K0 [""]
       12 JUMP                             ; [+19]
       13 GETIMPORT                        R8 K7 [Enum.MessageType.MessageError]
       15 JUMPIFNOTEQ                      R7 R8 ; [+3]
       17 LOADK                            R6 K8 ["[Error] "]
       18 JUMP                             ; [+13]
       19 GETIMPORT                        R8 K10 [Enum.MessageType.MessageWarning]
       21 JUMPIFNOTEQ                      R7 R8 ; [+3]
       23 LOADK                            R6 K11 ["[Warning] "]
       24 JUMP                             ; [+7]
       25 GETIMPORT                        R8 K13 [Enum.MessageType.MessageInfo]
       27 JUMPIFNOTEQ                      R7 R8 ; [+3]
       29 LOADK                            R6 K0 [""]
       30 JUMP                             ; [+1]
       31 LOADK                            R6 K0 [""]
       32 MOVE                             R7 R0
       33 MOVE                             R8 R6
       34 GETTABLEKS                       R9 R5 K14 ["message"]
       36 LOADK                            R10 K15 ["\n"]
       37 CONCAT                           R0 R7 R10
       38 FORGLOOP                         R1 2 ; [-34]
       40 RETURN                           R0 1

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 NEWTABLE                         R0 0 0
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantUseNewDMNetworking"]
       15 JUMPIFNOT                        R0 ; [+4]
       16 GETUPVAL                         R0 2
       17 NAMECALL                         R0 R0 K2 ["Destroy"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MessageOut"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R3 R3 K1 ["Connect"]
        7 CALL                             R3 2 1
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R1
       10 MOVE                             R5 R2
       11 CALL                             R3 2 0
       12 GETTABLEKS                       R3 R0 K2 ["Unloading"]
       14 DUPCLOSURE                       R5 K3 [PROTO_13]
       15 CAPTURE                          UPVAL U3
       16 NAMECALL                         R3 R3 K1 ["Connect"]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["LogService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["AssistantUI"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["Bin"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["DMNetworking"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R2 K14 ["DMNetworkingOLD"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K10 [require]
       37 GETTABLEKS                       R8 R2 K15 ["Signal"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K10 [require]
       42 GETTABLEKS                       R9 R0 K16 ["Src"]
       44 GETTABLEKS                       R9 R9 K17 ["Flags"]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R9 R3 K18 ["Guest"]
       49 GETTABLEKS                       R9 R9 K19 ["Environment"]
       51 GETTABLEKS                       R10 R3 K20 ["Utils"]
       53 GETTABLEKS                       R10 R10 K21 ["DataModelType"]
       55 GETTABLEKS                       R11 R5 K22 ["Remote"]
       57 NEWTABLE                         R12 0 0
       59 LOADNIL                          R13
       60 LOADB                            R14 0
       61 GETTABLEKS                       R15 R7 K23 ["new"]
       63 CALL                             R15 0 1
       64 LOADB                            R16 0
       65 GETTABLEKS                       R17 R7 K23 ["new"]
       67 CALL                             R17 0 1
       68 NEWTABLE                         R18 0 0
       70 NEWCLOSURE                       R19 P0
       71 CAPTURE                          REF R16
       72 CAPTURE                          VAL R17
       73 NEWCLOSURE                       R20 P1
       74 CAPTURE                          REF R14
       75 CAPTURE                          VAL R15
       76 NEWCLOSURE                       R21 P2
       77 CAPTURE                          REF R14
       78 CAPTURE                          VAL R15
       79 CAPTURE                          REF R16
       80 CAPTURE                          VAL R17
       81 NEWCLOSURE                       R22 P3
       82 CAPTURE                          REF R14
       83 CAPTURE                          REF R16
       84 CAPTURE                          VAL R9
       85 DUPCLOSURE                       R23 K24 [PROTO_4]
       86 CAPTURE                          VAL R9
       87 NEWCLOSURE                       R24 P5
       88 CAPTURE                          VAL R10
       89 CAPTURE                          REF R14
       90 CAPTURE                          VAL R15
       91 CAPTURE                          REF R16
       92 CAPTURE                          VAL R17
       93 CAPTURE                          VAL R8
       94 CAPTURE                          REF R13
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R11
       97 NEWCLOSURE                       R25 P6
       98 CAPTURE                          VAL R1
       99 CAPTURE                          REF R18
      100 DUPCLOSURE                       R26 K25 [PROTO_9]
      101 NEWCLOSURE                       R27 P8
      102 CAPTURE                          REF R18
      103 NEWCLOSURE                       R28 P9
      104 CAPTURE                          REF R18
      105 NEWCLOSURE                       R29 P10
      106 CAPTURE                          REF R12
      107 CAPTURE                          VAL R8
      108 CAPTURE                          REF R13
      109 NEWCLOSURE                       R30 P11
      110 CAPTURE                          VAL R1
      111 CAPTURE                          REF R18
      112 CAPTURE                          VAL R24
      113 CAPTURE                          VAL R29
      114 DUPTABLE                         R31 K32 [{"init", "startPlaySoloWithPlayers", "waitForPlaySoloDataModelStarted", "stopPlaySolo", "getConsoleOutputStr", "clearConsoleOutput"}]
      115 SETTABLEKS                       R30 R31 K26 ["init"]
      117 SETTABLEKS                       R22 R31 K27 ["startPlaySoloWithPlayers"]
      119 SETTABLEKS                       R21 R31 K28 ["waitForPlaySoloDataModelStarted"]
      121 SETTABLEKS                       R23 R31 K29 ["stopPlaySolo"]
      123 SETTABLEKS                       R27 R31 K30 ["getConsoleOutputStr"]
      125 SETTABLEKS                       R28 R31 K31 ["clearConsoleOutput"]
      127 CLOSEUPVALS                      R12
      128 RETURN                           R31 1
