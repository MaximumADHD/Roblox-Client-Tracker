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
       20 GETTABLEKS                       R3 R2 K12 ["Guest"]
       22 GETTABLEKS                       R3 R3 K13 ["Environment"]
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R1 K10 ["Packages"]
       28 GETTABLEKS                       R5 R5 K14 ["DMNetworking"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K9 [require]
       33 GETTABLEKS                       R6 R1 K10 ["Packages"]
       35 GETTABLEKS                       R6 R6 K15 ["DMNetworkingOLD"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K9 [require]
       40 GETTABLEKS                       R7 R1 K16 ["Src"]
       42 GETTABLEKS                       R7 R7 K17 ["Flags"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K9 [require]
       47 GETTABLEKS                       R8 R1 K10 ["Packages"]
       49 GETTABLEKS                       R8 R8 K18 ["Signal"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R2 K19 ["Utils"]
       54 GETTABLEKS                       R8 R8 K20 ["Bin"]
       56 GETTABLEKS                       R9 R2 K19 ["Utils"]
       58 GETTABLEKS                       R9 R9 K21 ["DataModelType"]
       60 GETTABLEKS                       R10 R4 K22 ["Remote"]
       62 NEWTABLE                         R11 0 0
       64 LOADNIL                          R12
       65 LOADB                            R13 0
       66 GETTABLEKS                       R14 R7 K23 ["new"]
       68 CALL                             R14 0 1
       69 LOADB                            R15 0
       70 GETTABLEKS                       R16 R7 K23 ["new"]
       72 CALL                             R16 0 1
       73 NEWTABLE                         R17 0 0
       75 NEWCLOSURE                       R18 P0
       76 CAPTURE                          REF R15
       77 CAPTURE                          VAL R16
       78 NEWCLOSURE                       R19 P1
       79 CAPTURE                          REF R13
       80 CAPTURE                          VAL R14
       81 NEWCLOSURE                       R20 P2
       82 CAPTURE                          REF R13
       83 CAPTURE                          VAL R14
       84 CAPTURE                          REF R15
       85 CAPTURE                          VAL R16
       86 NEWCLOSURE                       R21 P3
       87 CAPTURE                          REF R13
       88 CAPTURE                          REF R15
       89 CAPTURE                          VAL R3
       90 DUPCLOSURE                       R22 K24 [PROTO_4]
       91 CAPTURE                          VAL R3
       92 NEWCLOSURE                       R23 P5
       93 CAPTURE                          VAL R9
       94 CAPTURE                          REF R13
       95 CAPTURE                          VAL R14
       96 CAPTURE                          REF R15
       97 CAPTURE                          VAL R16
       98 CAPTURE                          VAL R6
       99 CAPTURE                          REF R12
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R10
      102 NEWCLOSURE                       R24 P6
      103 CAPTURE                          VAL R0
      104 CAPTURE                          REF R17
      105 DUPCLOSURE                       R25 K25 [PROTO_9]
      106 NEWCLOSURE                       R26 P8
      107 CAPTURE                          REF R17
      108 NEWCLOSURE                       R27 P9
      109 CAPTURE                          REF R17
      110 NEWCLOSURE                       R28 P10
      111 CAPTURE                          REF R11
      112 CAPTURE                          VAL R6
      113 CAPTURE                          REF R12
      114 NEWCLOSURE                       R29 P11
      115 CAPTURE                          VAL R0
      116 CAPTURE                          REF R17
      117 CAPTURE                          VAL R23
      118 CAPTURE                          VAL R28
      119 DUPTABLE                         R30 K32 [{"init", "startPlaySoloWithPlayers", "waitForPlaySoloDataModelStarted", "stopPlaySolo", "getConsoleOutputStr", "clearConsoleOutput"}]
      120 SETTABLEKS                       R29 R30 K26 ["init"]
      122 SETTABLEKS                       R21 R30 K27 ["startPlaySoloWithPlayers"]
      124 SETTABLEKS                       R20 R30 K28 ["waitForPlaySoloDataModelStarted"]
      126 SETTABLEKS                       R22 R30 K29 ["stopPlaySolo"]
      128 SETTABLEKS                       R26 R30 K30 ["getConsoleOutputStr"]
      130 SETTABLEKS                       R27 R30 K31 ["clearConsoleOutput"]
      132 CLOSEUPVALS                      R11
      133 RETURN                           R30 1
