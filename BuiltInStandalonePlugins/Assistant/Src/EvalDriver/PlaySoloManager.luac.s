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
        0 LOADK                            R3 K0 ["DataModelStarted"]
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 NAMECALL                         R1 R0 K1 ["OnGuestEvent"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

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
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 NEWTABLE                         R0 0 0
       11 SETUPVAL                         R0 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["MessageOut"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R2 R2 K1 ["Connect"]
        7 CALL                             R2 2 1
        8 LOADK                            R4 K2 ["DataModelStarted"]
        9 NEWCLOSURE                       R5 P1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 NAMECALL                         R2 R1 K3 ["OnGuestEvent"]
       17 CALL                             R2 3 0
       18 GETTABLEKS                       R2 R0 K4 ["Unloading"]
       20 NEWCLOSURE                       R4 P2
       21 CAPTURE                          UPVAL U7
       22 NAMECALL                         R2 R2 K1 ["Connect"]
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

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
       35 GETTABLEKS                       R6 R6 K15 ["Signal"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R2 K16 ["Utils"]
       40 GETTABLEKS                       R6 R6 K17 ["DataModelType"]
       42 NEWTABLE                         R7 0 0
       44 LOADB                            R8 0
       45 GETTABLEKS                       R9 R5 K18 ["new"]
       47 CALL                             R9 0 1
       48 LOADB                            R10 0
       49 GETTABLEKS                       R11 R5 K18 ["new"]
       51 CALL                             R11 0 1
       52 NEWTABLE                         R12 0 0
       54 NEWCLOSURE                       R13 P0
       55 CAPTURE                          REF R10
       56 CAPTURE                          VAL R11
       57 NEWCLOSURE                       R14 P1
       58 CAPTURE                          REF R8
       59 CAPTURE                          VAL R9
       60 NEWCLOSURE                       R15 P2
       61 CAPTURE                          REF R8
       62 CAPTURE                          VAL R9
       63 CAPTURE                          REF R10
       64 CAPTURE                          VAL R11
       65 NEWCLOSURE                       R16 P3
       66 CAPTURE                          REF R8
       67 CAPTURE                          REF R10
       68 CAPTURE                          VAL R3
       69 DUPCLOSURE                       R17 K19 [PROTO_4]
       70 CAPTURE                          VAL R3
       71 NEWCLOSURE                       R18 P5
       72 CAPTURE                          VAL R6
       73 CAPTURE                          REF R8
       74 CAPTURE                          VAL R9
       75 CAPTURE                          REF R10
       76 CAPTURE                          VAL R11
       77 NEWCLOSURE                       R19 P6
       78 CAPTURE                          VAL R0
       79 CAPTURE                          REF R12
       80 DUPCLOSURE                       R20 K20 [PROTO_9]
       81 NEWCLOSURE                       R21 P8
       82 CAPTURE                          REF R12
       83 NEWCLOSURE                       R22 P9
       84 CAPTURE                          REF R12
       85 NEWCLOSURE                       R23 P10
       86 CAPTURE                          REF R7
       87 NEWCLOSURE                       R24 P11
       88 CAPTURE                          VAL R0
       89 CAPTURE                          REF R12
       90 CAPTURE                          VAL R6
       91 CAPTURE                          REF R8
       92 CAPTURE                          VAL R9
       93 CAPTURE                          REF R10
       94 CAPTURE                          VAL R11
       95 CAPTURE                          REF R7
       96 DUPTABLE                         R25 K27 [{"init", "startPlaySoloWithPlayers", "waitForPlaySoloDataModelStarted", "stopPlaySolo", "getConsoleOutputStr", "clearConsoleOutput"}]
       97 SETTABLEKS                       R24 R25 K21 ["init"]
       99 SETTABLEKS                       R16 R25 K22 ["startPlaySoloWithPlayers"]
      101 SETTABLEKS                       R15 R25 K23 ["waitForPlaySoloDataModelStarted"]
      103 SETTABLEKS                       R17 R25 K24 ["stopPlaySolo"]
      105 SETTABLEKS                       R21 R25 K25 ["getConsoleOutputStr"]
      107 SETTABLEKS                       R22 R25 K26 ["clearConsoleOutput"]
      109 CLOSEUPVALS                      R7
      110 RETURN                           R25 1
