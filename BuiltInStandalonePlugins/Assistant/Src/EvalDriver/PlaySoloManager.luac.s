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
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 GETUPVAL                         R2 6
        7 GETTABLEKS                       R2 R2 K0 ["new"]
        9 CALL                             R2 0 1
       10 SETUPVAL                         R2 5
       11 GETUPVAL                         R2 7
       12 GETTABLEKS                       R2 R2 K1 ["event"]
       14 MOVE                             R3 R0
       15 LOADK                            R4 K2 ["DataModelStarted"]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 5
       18 MOVE                             R7 R1
       19 NAMECALL                         R5 R2 K3 ["Connect"]
       21 CALL                             R5 2 -1
       22 NAMECALL                         R3 R3 K4 ["Add"]
       24 CALL                             R3 -1 0
       25 RETURN                           R0 0

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
       13 NAMECALL                         R0 R0 K1 ["Destroy"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["MessageOut"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R2 R2 K1 ["Connect"]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 GETTABLEKS                       R2 R0 K2 ["Unloading"]
       13 DUPCLOSURE                       R4 K3 [PROTO_13]
       14 CAPTURE                          UPVAL U3
       15 NAMECALL                         R2 R2 K1 ["Connect"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

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
       32 GETTABLEKS                       R7 R2 K14 ["Signal"]
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R7 R3 K15 ["Guest"]
       37 GETTABLEKS                       R7 R7 K16 ["Environment"]
       39 GETTABLEKS                       R8 R3 K17 ["Utils"]
       41 GETTABLEKS                       R8 R8 K18 ["DataModelType"]
       43 GETTABLEKS                       R9 R5 K19 ["Remote"]
       45 NEWTABLE                         R10 0 0
       47 LOADNIL                          R11
       48 LOADB                            R12 0
       49 GETTABLEKS                       R13 R6 K20 ["new"]
       51 CALL                             R13 0 1
       52 LOADB                            R14 0
       53 GETTABLEKS                       R15 R6 K20 ["new"]
       55 CALL                             R15 0 1
       56 NEWTABLE                         R16 0 0
       58 NEWCLOSURE                       R17 P0
       59 CAPTURE                          REF R14
       60 CAPTURE                          VAL R15
       61 NEWCLOSURE                       R18 P1
       62 CAPTURE                          REF R12
       63 CAPTURE                          VAL R13
       64 NEWCLOSURE                       R19 P2
       65 CAPTURE                          REF R12
       66 CAPTURE                          VAL R13
       67 CAPTURE                          REF R14
       68 CAPTURE                          VAL R15
       69 NEWCLOSURE                       R20 P3
       70 CAPTURE                          REF R12
       71 CAPTURE                          REF R14
       72 CAPTURE                          VAL R7
       73 DUPCLOSURE                       R21 K21 [PROTO_4]
       74 CAPTURE                          VAL R7
       75 NEWCLOSURE                       R22 P5
       76 CAPTURE                          VAL R8
       77 CAPTURE                          REF R12
       78 CAPTURE                          VAL R13
       79 CAPTURE                          REF R14
       80 CAPTURE                          VAL R15
       81 CAPTURE                          REF R11
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R9
       84 NEWCLOSURE                       R23 P6
       85 CAPTURE                          VAL R1
       86 CAPTURE                          REF R16
       87 DUPCLOSURE                       R24 K22 [PROTO_9]
       88 NEWCLOSURE                       R25 P8
       89 CAPTURE                          REF R16
       90 NEWCLOSURE                       R26 P9
       91 CAPTURE                          REF R16
       92 NEWCLOSURE                       R27 P10
       93 CAPTURE                          REF R10
       94 CAPTURE                          REF R11
       95 NEWCLOSURE                       R28 P11
       96 CAPTURE                          VAL R1
       97 CAPTURE                          REF R16
       98 CAPTURE                          VAL R22
       99 CAPTURE                          VAL R27
      100 DUPTABLE                         R29 K29 [{"init", "startPlaySoloWithPlayers", "waitForPlaySoloDataModelStarted", "stopPlaySolo", "getConsoleOutputStr", "clearConsoleOutput"}]
      101 SETTABLEKS                       R28 R29 K23 ["init"]
      103 SETTABLEKS                       R20 R29 K24 ["startPlaySoloWithPlayers"]
      105 SETTABLEKS                       R19 R29 K25 ["waitForPlaySoloDataModelStarted"]
      107 SETTABLEKS                       R21 R29 K26 ["stopPlaySolo"]
      109 SETTABLEKS                       R25 R29 K27 ["getConsoleOutputStr"]
      111 SETTABLEKS                       R26 R29 K28 ["clearConsoleOutput"]
      113 CLOSEUPVALS                      R10
      114 RETURN                           R29 1
