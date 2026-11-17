PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Players"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETTABLEKS                       R1 R0 K4 ["LocalPlayer"]
        8 JUMPIF                           R1 ; [+8]
        9 GETTABLEKS                       R2 R0 K5 ["PlayerAdded"]
       11 NAMECALL                         R2 R2 K6 ["Wait"]
       13 CALL                             R2 1 0
       14 GETTABLEKS                       R1 R0 K4 ["LocalPlayer"]
       16 JUMPBACK                         ; [-9]
       17 RETURN                           R1 1

PROTO_1:
        0 LOADNIL                          R3
        1 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        3 LOADK                            R3 K1 ["Leader"]
        4 JUMP                             ; [+11]
        5 GETUPVAL                         R4 0
        6 JUMPIFNOTEQ                      R0 R4 ; [+3]
        8 LOADK                            R3 K2 ["Me"]
        9 JUMP                             ; [+6]
       10 LOADK                            R4 K3 ["Player%*"]
       11 MOVE                             R6 R0
       12 NAMECALL                         R4 R4 K4 ["format"]
       14 CALL                             R4 2 1
       15 MOVE                             R3 R4
       16 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
       18 LOADK                            R4 K1 ["Leader"]
       19 JUMP                             ; [+5]
       20 LOADK                            R4 K3 ["Player%*"]
       21 MOVE                             R6 R1
       22 NAMECALL                         R4 R4 K4 ["format"]
       24 CALL                             R4 2 1
       25 LOADK                            R5 K5 ["[%*]: @%*, %*"]
       26 MOVE                             R7 R3
       27 MOVE                             R8 R4
       28 MOVE                             R9 R2
       29 NAMECALL                         R5 R5 K4 ["format"]
       31 CALL                             R5 4 1
       32 GETUPVAL                         R6 1
       33 CALL                             R6 0 1
       34 GETTABLEKS                       R7 R6 K6 ["Character"]
       36 JUMPIF                           R7 ; [+5]
       37 GETTABLEKS                       R7 R6 K7 ["CharacterAdded"]
       39 NAMECALL                         R7 R7 K8 ["Wait"]
       41 CALL                             R7 1 1
       42 GETUPVAL                         R8 2
       43 MOVE                             R10 R7
       44 MOVE                             R11 R5
       45 NAMECALL                         R8 R8 K9 ["DisplayBubble"]
       47 CALL                             R8 3 0
       48 GETUPVAL                         R8 2
       49 LOADK                            R10 K10 ["TextChannels"]
       50 NAMECALL                         R8 R8 K11 ["FindFirstChild"]
       52 CALL                             R8 2 1
       53 JUMPIFNOT                        R8 ; [+9]
       54 LOADK                            R11 K12 ["RBXGeneral"]
       55 NAMECALL                         R9 R8 K11 ["FindFirstChild"]
       57 CALL                             R9 2 1
       58 JUMPIFNOT                        R9 ; [+4]
       59 MOVE                             R12 R5
       60 NAMECALL                         R10 R9 K13 ["DisplaySystemMessage"]
       62 CALL                             R10 2 0
       63 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["RequestPlayerPrompt"]
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["sendCommand"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 GETVARARGS                       R2 -1
        4 SETLIST                          R1 R2 -1 [1]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["RespondPlayerPrompt"]
        9 JUMPIFNOTEQ                      R0 R2 ; [+17]
       11 GETUPVAL                         R2 1
       12 JUMPIFNOT                        R2 ; [+32]
       13 GETUPVAL                         R2 2
       14 LOADN                            R3 0
       15 GETUPVAL                         R4 3
       16 GETTABLEN                        R5 R1 1
       17 CALL                             R2 3 0
       18 GETUPVAL                         R2 1
       19 GETUPVAL                         R3 4
       20 GETTABLEKS                       R3 R3 K1 ["Types"]
       22 GETTABLEKS                       R3 R3 K2 ["Standalone"]
       24 GETVARARGS                       R4 -1
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K3 ["TeamCommunication"]
       30 JUMPIFNOTEQ                      R0 R2 ; [+14]
       32 GETUPVAL                         R2 2
       33 GETVARARGS                       R3 -1
       34 CALL                             R2 -1 0
       35 GETUPVAL                         R2 5
       36 JUMPIFNOT                        R2 ; [+8]
       37 GETUPVAL                         R2 5
       38 GETUPVAL                         R3 4
       39 GETTABLEKS                       R3 R3 K1 ["Types"]
       41 GETTABLEKS                       R3 R3 K2 ["Standalone"]
       43 GETVARARGS                       R4 -1
       44 CALL                             R2 -1 0
       45 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R2 R0 K0 ["UserId"]
        4 MINUS                            R1 R2
        5 SETUPVAL                         R1 1
        6 GETUPVAL                         R1 1
        7 LOADN                            R2 0
        8 JUMPIFNOTLE                      R1 R2 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 1
       12 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       14 LOADK                            R3 K1 ["Player ID is not set."]
       15 GETIMPORT                        R1 K3 [assert]
       17 CALL                             R1 2 0
       18 GETUPVAL                         R1 2
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K4 ["Types"]
       22 GETTABLEKS                       R2 R2 K5 ["Standalone"]
       24 LOADB                            R3 1
       25 CALL                             R1 2 0
       26 GETUPVAL                         R1 5
       27 GETTABLEKS                       R1 R1 K6 ["get"]
       29 CALL                             R1 0 1
       30 GETTABLEKS                       R1 R1 K7 ["createMultiPlayersClient"]
       32 GETUPVAL                         R2 1
       33 CALL                             R1 1 1
       34 SETUPVAL                         R1 4
       35 GETUPVAL                         R2 4
       36 FASTCALL2K                       ASSERT R2 K8 ; [+4]
       38 LOADK                            R3 K8 ["Client is not set."]
       39 GETIMPORT                        R1 K3 [assert]
       41 CALL                             R1 2 0
       42 GETUPVAL                         R1 6
       43 GETUPVAL                         R2 4
       44 GETTABLEKS                       R2 R2 K9 ["onServerConnected"]
       46 NEWCLOSURE                       R4 P0
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          UPVAL U1
       50 NAMECALL                         R2 R2 K10 ["Connect"]
       52 CALL                             R2 2 1
       53 SETTABLEKS                       R2 R1 K9 ["onServerConnected"]
       55 GETUPVAL                         R1 6
       56 GETUPVAL                         R2 4
       57 GETTABLEKS                       R2 R2 K11 ["onServerDisconnected"]
       59 DUPCLOSURE                       R4 K12 [PROTO_3]
       60 NAMECALL                         R2 R2 K10 ["Connect"]
       62 CALL                             R2 2 1
       63 SETTABLEKS                       R2 R1 K11 ["onServerDisconnected"]
       65 GETUPVAL                         R1 6
       66 GETUPVAL                         R2 4
       67 GETTABLEKS                       R2 R2 K13 ["onCommand"]
       69 NEWCLOSURE                       R4 P2
       70 CAPTURE                          UPVAL U7
       71 CAPTURE                          UPVAL U8
       72 CAPTURE                          UPVAL U9
       73 CAPTURE                          UPVAL U1
       74 CAPTURE                          UPVAL U3
       75 CAPTURE                          UPVAL U10
       76 NAMECALL                         R2 R2 K10 ["Connect"]
       78 CALL                             R2 2 1
       79 SETTABLEKS                       R2 R1 K13 ["onCommand"]
       81 GETUPVAL                         R1 4
       82 NAMECALL                         R1 R1 K14 ["connect"]
       84 CALL                             R1 1 0
       85 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["NotifyLogging"]
       10 GETUPVAL                         R4 3
       11 MOVE                             R5 R0
       12 NAMECALL                         R1 R1 K2 ["sendCommand"]
       14 CALL                             R1 4 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETIMPORT                        R1 K2 [print]
        6 MOVE                             R3 R0
        7 LOADK                            R4 K3 ["\n"]
        8 CONCAT                           R2 R3 R4
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 JUMPIFNOT                        R1 ; [+8]
       12 GETUPVAL                         R1 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K4 ["Types"]
       16 GETTABLEKS                       R2 R2 K5 ["Client"]
       18 MOVE                             R3 R0
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_8:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["fromDataModelType"]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 MOVE                             R4 R1
        8 GETVARARGS                       R5 -1
        9 NAMECALL                         R2 R2 K1 ["InvokeAsync"]
       11 CALL                             R2 -1 -1
       12 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["invoke"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R7 R1
        8 NAMECALL                         R5 R2 K1 ["Connect"]
       10 CALL                             R5 2 -1
       11 NAMECALL                         R3 R3 K2 ["Add"]
       13 CALL                             R3 -1 0
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R2
       17 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+8]
        2 LOADB                            R2 1
        3 SETUPVAL                         R2 0
        4 SETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K0 ["Fire"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+12]
        2 GETUPVAL                         R3 1
        3 JUMPIFNOT                        R3 ; [+10]
        4 GETUPVAL                         R3 0
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K0 ["NotifyFinished"]
        8 GETUPVAL                         R6 1
        9 MOVE                             R7 R1
       10 MOVE                             R8 R2
       11 NAMECALL                         R3 R3 K1 ["sendCommand"]
       13 CALL                             R3 5 0
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+11]
        2 GETUPVAL                         R2 1
        3 JUMPIFNOT                        R2 ; [+9]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K0 ["NotifyLeaderIsWaitingForTeamCommunications"]
        8 GETUPVAL                         R5 1
        9 MOVE                             R6 R1
       10 NAMECALL                         R2 R2 K1 ["sendCommand"]
       12 CALL                             R2 4 0
       13 RETURN                           R0 0

PROTO_13:
        0 SETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 0
        3 NAMECALL                         R2 R2 K0 ["Fire"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
        3 JUMPIFNOT                        R4 ; [+26]
        4 LOADK                            R4 K1 ["Received Team Communication from %*: %*"]
        5 MOVE                             R6 R1
        6 MOVE                             R7 R3
        7 NAMECALL                         R4 R4 K2 ["format"]
        9 CALL                             R4 3 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
       13 JUMPIFNOT                        R5 ; [+6]
       14 GETIMPORT                        R5 K4 [print]
       16 MOVE                             R7 R4
       17 LOADK                            R8 K5 ["\n"]
       18 CONCAT                           R6 R7 R8
       19 CALL                             R5 1 0
       20 GETUPVAL                         R5 1
       21 JUMPIFNOT                        R5 ; [+8]
       22 GETUPVAL                         R5 1
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R6 R6 K6 ["Types"]
       26 GETTABLEKS                       R6 R6 K7 ["Client"]
       28 MOVE                             R7 R4
       29 CALL                             R5 2 0
       30 GETUPVAL                         R5 3
       31 DUPTABLE                         R6 K11 [{"fromPlayerId", "targetPlayerId", "content"}]
       32 SETTABLEKS                       R1 R6 K8 ["fromPlayerId"]
       34 SETTABLEKS                       R2 R6 K9 ["targetPlayerId"]
       36 SETTABLEKS                       R3 R6 K10 ["content"]
       38 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       40 GETIMPORT                        R4 K14 [table.insert]
       42 CALL                             R4 2 0
       43 GETUPVAL                         R4 4
       44 GETUPVAL                         R6 3
       45 NAMECALL                         R4 R4 K15 ["Fire"]
       47 CALL                             R4 2 0
       48 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
        3 JUMPIFNOT                        R2 ; [+11]
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+9]
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K1 ["NotifyLogging"]
       10 GETUPVAL                         R5 3
       11 MOVE                             R6 R1
       12 NAMECALL                         R2 R2 K2 ["sendCommand"]
       14 CALL                             R2 4 0
       15 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Destroy"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["new"]
        9 CALL                             R1 0 1
       10 SETUPVAL                         R1 0
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U3
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R4 R4 K2 ["getDataModelType"]
       19 CALL                             R4 0 1
       20 GETUPVAL                         R5 4
       21 GETTABLEKS                       R5 R5 K3 ["Types"]
       23 GETTABLEKS                       R5 R5 K4 ["Standalone"]
       25 JUMPIFNOTEQ                      R4 R5 ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 GETUPVAL                         R5 6
       30 GETTABLEKS                       R5 R5 K5 ["RespondPlayerPrompt"]
       32 NEWCLOSURE                       R6 P1
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          UPVAL U8
       35 CAPTURE                          UPVAL U9
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K6 ["invoke"]
       39 MOVE                             R8 R0
       40 MOVE                             R9 R5
       41 CALL                             R7 2 1
       42 MOVE                             R12 R6
       43 NAMECALL                         R10 R7 K7 ["Connect"]
       45 CALL                             R10 2 -1
       46 NAMECALL                         R8 R1 K8 ["Add"]
       48 CALL                             R8 -1 0
       49 NEWCLOSURE                       R4 P2
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          VAL R7
       52 SETUPVAL                         R4 5
       53 GETUPVAL                         R5 6
       54 GETTABLEKS                       R5 R5 K9 ["NotifyFinished"]
       56 NEWCLOSURE                       R6 P3
       57 CAPTURE                          UPVAL U11
       58 CAPTURE                          UPVAL U12
       59 CAPTURE                          UPVAL U6
       60 GETUPVAL                         R7 2
       61 GETTABLEKS                       R7 R7 K6 ["invoke"]
       63 MOVE                             R8 R0
       64 MOVE                             R9 R5
       65 CALL                             R7 2 1
       66 MOVE                             R12 R6
       67 NAMECALL                         R10 R7 K7 ["Connect"]
       69 CALL                             R10 2 -1
       70 NAMECALL                         R8 R1 K8 ["Add"]
       72 CALL                             R8 -1 0
       73 NEWCLOSURE                       R4 P2
       74 CAPTURE                          UPVAL U3
       75 CAPTURE                          VAL R7
       76 SETUPVAL                         R4 10
       77 GETUPVAL                         R5 6
       78 GETTABLEKS                       R5 R5 K10 ["NotifyLeaderIsWaitingForTeamCommunications"]
       80 NEWCLOSURE                       R6 P4
       81 CAPTURE                          UPVAL U11
       82 CAPTURE                          UPVAL U12
       83 CAPTURE                          UPVAL U6
       84 GETUPVAL                         R7 2
       85 GETTABLEKS                       R7 R7 K6 ["invoke"]
       87 MOVE                             R8 R0
       88 MOVE                             R9 R5
       89 CALL                             R7 2 1
       90 MOVE                             R12 R6
       91 NAMECALL                         R10 R7 K7 ["Connect"]
       93 CALL                             R10 2 -1
       94 NAMECALL                         R8 R1 K8 ["Add"]
       96 CALL                             R8 -1 0
       97 NEWCLOSURE                       R4 P2
       98 CAPTURE                          UPVAL U3
       99 CAPTURE                          VAL R7
      100 SETUPVAL                         R4 13
      101 NEWCLOSURE                       R5 P5
      102 CAPTURE                          UPVAL U15
      103 CAPTURE                          UPVAL U16
      104 GETUPVAL                         R6 2
      105 GETTABLEKS                       R6 R6 K6 ["invoke"]
      107 MOVE                             R7 R0
      108 LOADK                            R8 K11 ["MultiPlayersAgentClient_SetIsMultiPlayerClientAgent"]
      109 CALL                             R6 2 1
      110 MOVE                             R11 R5
      111 NAMECALL                         R9 R6 K7 ["Connect"]
      113 CALL                             R9 2 -1
      114 NAMECALL                         R7 R1 K8 ["Add"]
      116 CALL                             R7 -1 0
      117 NEWCLOSURE                       R4 P2
      118 CAPTURE                          UPVAL U3
      119 CAPTURE                          VAL R6
      120 SETUPVAL                         R4 14
      121 GETUPVAL                         R5 6
      122 GETTABLEKS                       R5 R5 K12 ["TeamCommunication"]
      124 NEWCLOSURE                       R6 P6
      125 CAPTURE                          UPVAL U18
      126 CAPTURE                          UPVAL U19
      127 CAPTURE                          UPVAL U4
      128 CAPTURE                          UPVAL U20
      129 CAPTURE                          UPVAL U21
      130 GETUPVAL                         R7 2
      131 GETTABLEKS                       R7 R7 K6 ["invoke"]
      133 MOVE                             R8 R0
      134 MOVE                             R9 R5
      135 CALL                             R7 2 1
      136 MOVE                             R12 R6
      137 NAMECALL                         R10 R7 K7 ["Connect"]
      139 CALL                             R10 2 -1
      140 NAMECALL                         R8 R1 K8 ["Add"]
      142 CALL                             R8 -1 0
      143 NEWCLOSURE                       R4 P2
      144 CAPTURE                          UPVAL U3
      145 CAPTURE                          VAL R7
      146 SETUPVAL                         R4 17
      147 GETUPVAL                         R5 6
      148 GETTABLEKS                       R5 R5 K13 ["NotifyLogging"]
      150 NEWCLOSURE                       R6 P7
      151 CAPTURE                          UPVAL U18
      152 CAPTURE                          UPVAL U11
      153 CAPTURE                          UPVAL U6
      154 CAPTURE                          UPVAL U12
      155 GETUPVAL                         R7 2
      156 GETTABLEKS                       R7 R7 K6 ["invoke"]
      158 MOVE                             R8 R0
      159 MOVE                             R9 R5
      160 CALL                             R7 2 1
      161 MOVE                             R12 R6
      162 NAMECALL                         R10 R7 K7 ["Connect"]
      164 CALL                             R10 2 -1
      165 NAMECALL                         R8 R1 K8 ["Add"]
      167 CALL                             R8 -1 0
      168 NEWCLOSURE                       R4 P2
      169 CAPTURE                          UPVAL U3
      170 CAPTURE                          VAL R7
      171 SETUPVAL                         R4 19
      172 JUMPIFNOT                        R3 ; [+7]
      173 GETUPVAL                         R4 22
      174 SETUPVAL                         R4 19
      175 GETIMPORT                        R4 K16 [task.spawn]
      177 DUPCLOSURE                       R5 K17 [PROTO_16]
      178 CAPTURE                          UPVAL U23
      179 CALL                             R4 1 0
      180 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["LayoutOrder"]
        2 GETTABLEKS                       R4 R1 K0 ["LayoutOrder"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_19:
        0 LOADK                            R1 K0 [""]
        1 JUMPIFNOT                        R0 ; [+83]
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K2 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+77]
        9 GETTABLEKS                       R2 R0 K4 ["messages"]
       11 JUMPIFNOT                        R2 ; [+73]
       12 FASTCALL1                        TYPEOF R2 ; [+3]
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K2 [typeof]
       16 CALL                             R3 1 1
       17 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+67]
       19 LOADN                            R3 0
       20 LOADNIL                          R4
       21 MOVE                             R5 R2
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 GETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       27 JUMPIFNOTLT                      R3 R10 ; [+4]
       29 GETTABLEKS                       R3 R9 K5 ["LayoutOrder"]
       31 MOVE                             R4 R9
       32 FORGLOOP                         R5 2 ; [-8]
       34 JUMPIFNOT                        R4 ; [+50]
       35 GETTABLEKS                       R5 R4 K6 ["contents"]
       37 JUMPIFNOT                        R5 ; [+47]
       38 FASTCALL1                        TYPEOF R5 ; [+3]
       39 MOVE                             R7 R5
       40 GETIMPORT                        R6 K2 [typeof]
       42 CALL                             R6 1 1
       43 JUMPIFNOTEQKS                    R6 K3 ["table"] ; [+41]
       45 NEWTABLE                         R6 0 0
       47 MOVE                             R7 R5
       48 LOADNIL                          R8
       49 LOADNIL                          R9
       50 FORGPREP                         R7
       51 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       53 MOVE                             R13 R6
       54 MOVE                             R14 R11
       55 GETIMPORT                        R12 K8 [table.insert]
       57 CALL                             R12 2 0
       58 FORGLOOP                         R7 2 ; [-8]
       60 GETIMPORT                        R7 K10 [table.sort]
       62 MOVE                             R8 R6
       63 DUPCLOSURE                       R9 K11 [PROTO_18]
       64 CALL                             R7 2 0
       65 MOVE                             R7 R6
       66 LOADNIL                          R8
       67 LOADNIL                          R9
       68 FORGPREP                         R7
       69 GETTABLEKS                       R12 R11 K12 ["text"]
       71 JUMPIFNOT                        R12 ; [+11]
       72 GETTABLEKS                       R13 R11 K12 ["text"]
       74 FASTCALL1                        TYPEOF R13 ; [+2]
       75 GETIMPORT                        R12 K2 [typeof]
       77 CALL                             R12 1 1
       78 JUMPIFNOTEQKS                    R12 K13 ["string"] ; [+4]
       80 GETTABLEKS                       R1 R11 K12 ["text"]
       82 RETURN                           R1 1
       83 FORGLOOP                         R7 2 ; [-15]
       85 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+19]
        2 GETUPVAL                         R3 1
        3 JUMPIF                           R3 ; [+17]
        4 JUMPIFNOT                        R0 ; [+16]
        5 GETUPVAL                         R3 2
        6 JUMPIFNOT                        R3 ; [+14]
        7 LOADB                            R3 1
        8 SETUPVAL                         R3 1
        9 GETUPVAL                         R3 3
       10 MOVE                             R4 R2
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 2
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R5 R5 K0 ["Types"]
       16 GETTABLEKS                       R5 R5 K1 ["Client"]
       18 MOVE                             R6 R1
       19 MOVE                             R7 R3
       20 CALL                             R4 3 0
       21 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+6]
        3 GETIMPORT                        R2 K1 [error]
        5 LOADK                            R3 K2 ["You cannot send team communication to yourself."]
        6 LOADN                            R4 0
        7 CALL                             R2 2 0
        8 GETUPVAL                         R3 0
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Player ID is not set."]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R3 1
       16 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       18 LOADK                            R4 K6 ["Client is not set."]
       19 GETIMPORT                        R2 K5 [assert]
       21 CALL                             R2 2 0
       22 GETUPVAL                         R2 2
       23 GETUPVAL                         R3 0
       24 MOVE                             R4 R0
       25 MOVE                             R5 R1
       26 CALL                             R2 3 0
       27 GETUPVAL                         R2 1
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R4 R4 K7 ["TeamCommunication"]
       31 GETUPVAL                         R5 0
       32 MOVE                             R6 R0
       33 MOVE                             R7 R1
       34 NAMECALL                         R2 R2 K8 ["sendCommand"]
       36 CALL                             R2 5 0
       37 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 LOADN                            R1 0
        3 JUMPIFNOTLT                      R1 R0 ; [+3]
        5 GETUPVAL                         R0 0
        6 RETURN                           R0 1
        7 GETUPVAL                         R1 1
        8 FASTCALL2K                       ASSERT R1 K0 ; [+4]
       10 LOADK                            R2 K0 ["notifyIsWaitingForTeamCommunications is not set."]
       11 GETIMPORT                        R0 K2 [assert]
       13 CALL                             R0 2 0
       14 GETUPVAL                         R0 1
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K3 ["Types"]
       18 GETTABLEKS                       R1 R1 K4 ["Client"]
       20 LOADB                            R2 1
       21 CALL                             R0 2 0
       22 GETUPVAL                         R0 3
       23 NAMECALL                         R0 R0 K5 ["Wait"]
       25 CALL                             R0 1 0
       26 GETUPVAL                         R0 1
       27 GETUPVAL                         R1 2
       28 GETTABLEKS                       R1 R1 K3 ["Types"]
       30 GETTABLEKS                       R1 R1 K4 ["Client"]
       32 LOADB                            R2 0
       33 CALL                             R0 2 0
       34 GETUPVAL                         R0 0
       35 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETUPVAL                         R1 0
        4 RETURN                           R0 1

PROTO_25:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 NEWTABLE                         R2 0 0
        5 SETUPVAL                         R2 0
        6 MOVE                             R2 R1
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R8 R6 K0 ["fromPlayerId"]
       12 JUMPIFNOTEQKN                    R8 K1 [0] ; [+3]
       14 LOADK                            R7 K2 ["Leader"]
       15 JUMP                             ; [+6]
       16 LOADK                            R7 K3 ["Player%*"]
       17 GETTABLEKS                       R9 R6 K0 ["fromPlayerId"]
       19 NAMECALL                         R7 R7 K4 ["format"]
       21 CALL                             R7 2 1
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K5 ["getSystemReminder"]
       25 LOADK                            R9 K6 ["%*: %*"]
       26 MOVE                             R11 R7
       27 GETTABLEKS                       R12 R6 K7 ["content"]
       29 NAMECALL                         R9 R9 K4 ["format"]
       31 CALL                             R9 3 1
       32 CALL                             R8 1 1
       33 FASTCALL2                        TABLE_INSERT R0 R8 ; [+5]
       35 MOVE                             R10 R0
       36 MOVE                             R11 R8
       37 GETIMPORT                        R9 K10 [table.insert]
       39 CALL                             R9 2 0
       40 FORGLOOP                         R2 2 ; [-31]
       42 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETUPVAL                         R0 1
       10 JUMPIFNOT                        R0 ; [+6]
       11 GETUPVAL                         R0 1
       12 NAMECALL                         R0 R0 K1 ["Destroy"]
       14 CALL                             R0 1 0
       15 LOADNIL                          R0
       16 SETUPVAL                         R0 1
       17 GETUPVAL                         R0 2
       18 JUMPIFNOT                        R0 ; [+4]
       19 GETUPVAL                         R0 2
       20 NAMECALL                         R0 R0 K2 ["disconnect"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETUPVAL                         R1 0
        3 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["TextChatService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Bin"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["DMNetworking"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["Signal"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R0 K14 ["Util"]
       34 GETTABLEKS                       R7 R7 K15 ["DataModelType"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K10 [require]
       39 GETTABLEKS                       R8 R0 K16 ["Guest"]
       41 GETTABLEKS                       R8 R8 K17 ["Environment"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K10 [require]
       46 GETTABLEKS                       R9 R0 K18 ["Components"]
       48 GETTABLEKS                       R9 R9 K19 ["Contexts"]
       50 GETTABLEKS                       R9 R9 K20 ["InputStateTypes"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K10 [require]
       55 GETTABLEKS                       R10 R0 K14 ["Util"]
       57 GETTABLEKS                       R10 R10 K21 ["NetworkingIdentity"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K10 [require]
       62 GETTABLEKS                       R11 R0 K22 ["Types"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K10 [require]
       67 GETTABLEKS                       R12 R0 K14 ["Util"]
       69 GETTABLEKS                       R12 R12 K23 ["MultiPlayersConnection"]
       71 GETTABLEKS                       R12 R12 K24 ["MultiPlayersAgentCommon"]
       73 CALL                             R11 1 1
       74 GETTABLEKS                       R11 R11 K25 ["Commands"]
       76 GETIMPORT                        R12 K10 [require]
       78 GETTABLEKS                       R13 R0 K26 ["Flags"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K10 [require]
       83 GETTABLEKS                       R14 R0 K14 ["Util"]
       85 GETTABLEKS                       R14 R14 K23 ["MultiPlayersConnection"]
       87 GETTABLEKS                       R14 R14 K27 ["MultiPlayerAgentTypes"]
       89 CALL                             R13 1 1
       90 GETTABLEKS                       R14 R4 K28 ["Remote"]
       92 LOADNIL                          R15
       93 LOADB                            R16 0
       94 LOADB                            R17 0
       95 GETTABLEKS                       R18 R5 K29 ["new"]
       97 CALL                             R18 0 1
       98 NEWTABLE                         R19 0 0
      100 GETTABLEKS                       R20 R5 K29 ["new"]
      102 CALL                             R20 0 1
      103 LOADNIL                          R21
      104 LOADNIL                          R22
      105 LOADNIL                          R23
      106 LOADB                            R24 0
      107 GETTABLEKS                       R25 R5 K29 ["new"]
      109 CALL                             R25 0 1
      110 NEWTABLE                         R26 4 0
      112 LOADNIL                          R27
      113 LOADNIL                          R28
      114 LOADNIL                          R29
      115 LOADNIL                          R30
      116 LOADNIL                          R31
      117 LOADNIL                          R32
      118 DUPCLOSURE                       R33 K30 [PROTO_0]
      119 NEWCLOSURE                       R34 P1
      120 CAPTURE                          REF R23
      121 CAPTURE                          VAL R33
      122 CAPTURE                          VAL R1
      123 NEWCLOSURE                       R35 P2
      124 CAPTURE                          VAL R33
      125 CAPTURE                          REF R23
      126 CAPTURE                          REF R30
      127 CAPTURE                          VAL R6
      128 CAPTURE                          REF R21
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R26
      131 CAPTURE                          VAL R11
      132 CAPTURE                          REF R29
      133 CAPTURE                          VAL R34
      134 CAPTURE                          REF R31
      135 NEWCLOSURE                       R36 P3
      136 CAPTURE                          VAL R12
      137 CAPTURE                          REF R21
      138 CAPTURE                          VAL R11
      139 CAPTURE                          REF R23
      140 NEWCLOSURE                       R37 P4
      141 CAPTURE                          VAL R12
      142 CAPTURE                          REF R32
      143 CAPTURE                          VAL R6
      144 NEWCLOSURE                       R38 P5
      145 CAPTURE                          REF R22
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R6
      150 CAPTURE                          REF R29
      151 CAPTURE                          VAL R11
      152 CAPTURE                          REF R17
      153 CAPTURE                          REF R15
      154 CAPTURE                          VAL R18
      155 CAPTURE                          REF R27
      156 CAPTURE                          REF R21
      157 CAPTURE                          REF R23
      158 CAPTURE                          REF R28
      159 CAPTURE                          REF R30
      160 CAPTURE                          REF R24
      161 CAPTURE                          VAL R25
      162 CAPTURE                          REF R31
      163 CAPTURE                          VAL R12
      164 CAPTURE                          REF R32
      165 CAPTURE                          REF R19
      166 CAPTURE                          VAL R20
      167 CAPTURE                          VAL R36
      168 CAPTURE                          VAL R35
      169 DUPCLOSURE                       R39 K31 [PROTO_19]
      170 NEWCLOSURE                       R40 P7
      171 CAPTURE                          REF R17
      172 CAPTURE                          REF R16
      173 CAPTURE                          REF R27
      174 CAPTURE                          VAL R39
      175 CAPTURE                          VAL R6
      176 NEWCLOSURE                       R41 P8
      177 CAPTURE                          REF R23
      178 CAPTURE                          REF R21
      179 CAPTURE                          VAL R34
      180 CAPTURE                          VAL R11
      181 NEWCLOSURE                       R42 P9
      182 CAPTURE                          REF R24
      183 NEWCLOSURE                       R43 P10
      184 CAPTURE                          REF R19
      185 CAPTURE                          REF R28
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R20
      188 NEWCLOSURE                       R44 P11
      189 CAPTURE                          REF R19
      190 NEWCLOSURE                       R45 P12
      191 CAPTURE                          REF R19
      192 CAPTURE                          VAL R10
      193 NEWCLOSURE                       R46 P13
      194 CAPTURE                          VAL R26
      195 CAPTURE                          REF R22
      196 CAPTURE                          REF R21
      197 DUPTABLE                         R47 K46 [{"init", "close", "waitLocalPlayer", "popCurrentPlayerPrompt", "getCurrentPlayerPromptReadySignal", "waitForTeamCommunicationsAndInformLeader", "popMultiPlayerAgentsCommunications", "popTeamCommunicationAsSystemReminders", "sendTeamCommunication", "onInputStateChanged", "getIsMultiPlayerClientAgent", "getIsMultiPlayerClientAgentChangedSignal", "getIsPlayerPromptReceived", "log"}]
      198 SETTABLEKS                       R38 R47 K32 ["init"]
      200 SETTABLEKS                       R46 R47 K33 ["close"]
      202 SETTABLEKS                       R33 R47 K34 ["waitLocalPlayer"]
      204 NEWCLOSURE                       R48 P14
      205 CAPTURE                          REF R15
      206 SETTABLEKS                       R48 R47 K35 ["popCurrentPlayerPrompt"]
      208 DUPCLOSURE                       R48 K47 [PROTO_28]
      209 CAPTURE                          VAL R18
      210 SETTABLEKS                       R48 R47 K36 ["getCurrentPlayerPromptReadySignal"]
      212 SETTABLEKS                       R43 R47 K37 ["waitForTeamCommunicationsAndInformLeader"]
      214 SETTABLEKS                       R44 R47 K38 ["popMultiPlayerAgentsCommunications"]
      216 SETTABLEKS                       R45 R47 K39 ["popTeamCommunicationAsSystemReminders"]
      218 SETTABLEKS                       R41 R47 K40 ["sendTeamCommunication"]
      220 SETTABLEKS                       R40 R47 K41 ["onInputStateChanged"]
      222 SETTABLEKS                       R42 R47 K42 ["getIsMultiPlayerClientAgent"]
      224 DUPCLOSURE                       R48 K48 [PROTO_29]
      225 CAPTURE                          VAL R25
      226 SETTABLEKS                       R48 R47 K43 ["getIsMultiPlayerClientAgentChangedSignal"]
      228 NEWCLOSURE                       R48 P17
      229 CAPTURE                          REF R17
      230 SETTABLEKS                       R48 R47 K44 ["getIsPlayerPromptReceived"]
      232 SETTABLEKS                       R37 R47 K45 ["log"]
      234 CLOSEUPVALS                      R15
      235 RETURN                           R47 1
