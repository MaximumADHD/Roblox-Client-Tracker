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
       19 JUMP                             ; [+6]
       20 LOADK                            R5 K3 ["Player%*"]
       21 MOVE                             R7 R1
       22 NAMECALL                         R5 R5 K4 ["format"]
       24 CALL                             R5 2 1
       25 MOVE                             R4 R5
       26 LOADK                            R6 K5 ["[%*]: @%*, %*"]
       27 MOVE                             R8 R3
       28 MOVE                             R9 R4
       29 MOVE                             R10 R2
       30 NAMECALL                         R6 R6 K4 ["format"]
       32 CALL                             R6 4 1
       33 MOVE                             R5 R6
       34 GETUPVAL                         R6 1
       35 CALL                             R6 0 1
       36 GETTABLEKS                       R7 R6 K6 ["Character"]
       38 JUMPIF                           R7 ; [+5]
       39 GETTABLEKS                       R7 R6 K7 ["CharacterAdded"]
       41 NAMECALL                         R7 R7 K8 ["Wait"]
       43 CALL                             R7 1 1
       44 GETUPVAL                         R8 2
       45 MOVE                             R10 R7
       46 MOVE                             R11 R5
       47 NAMECALL                         R8 R8 K9 ["DisplayBubble"]
       49 CALL                             R8 3 0
       50 GETUPVAL                         R8 2
       51 LOADK                            R10 K10 ["TextChannels"]
       52 NAMECALL                         R8 R8 K11 ["FindFirstChild"]
       54 CALL                             R8 2 1
       55 JUMPIFNOT                        R8 ; [+9]
       56 LOADK                            R11 K12 ["RBXGeneral"]
       57 NAMECALL                         R9 R8 K11 ["FindFirstChild"]
       59 CALL                             R9 2 1
       60 JUMPIFNOT                        R9 ; [+4]
       61 MOVE                             R12 R5
       62 NAMECALL                         R10 R9 K13 ["DisplaySystemMessage"]
       64 CALL                             R10 2 0
       65 RETURN                           R0 0

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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+11]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K0 ["NotifyLogging"]
        9 GETUPVAL                         R4 3
       10 MOVE                             R5 R0
       11 NAMECALL                         R1 R1 K1 ["sendCommand"]
       13 CALL                             R1 4 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETIMPORT                        R1 K1 [print]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K2 ["\n"]
        7 CONCAT                           R2 R3 R4
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 JUMPIFNOT                        R1 ; [+8]
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["Types"]
       15 GETTABLEKS                       R2 R2 K4 ["Client"]
       17 MOVE                             R3 R0
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 SETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 0
        3 NAMECALL                         R2 R2 K0 ["Fire"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+26]
        3 LOADK                            R5 K0 ["Received Team Communication from %*: %*"]
        4 MOVE                             R7 R1
        5 MOVE                             R8 R3
        6 NAMECALL                         R5 R5 K1 ["format"]
        8 CALL                             R5 3 1
        9 MOVE                             R4 R5
       10 GETUPVAL                         R5 0
       11 CALL                             R5 0 1
       12 JUMPIFNOT                        R5 ; [+6]
       13 GETIMPORT                        R5 K3 [print]
       15 MOVE                             R7 R4
       16 LOADK                            R8 K4 ["\n"]
       17 CONCAT                           R6 R7 R8
       18 CALL                             R5 1 0
       19 GETUPVAL                         R5 1
       20 JUMPIFNOT                        R5 ; [+8]
       21 GETUPVAL                         R5 1
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K5 ["Types"]
       25 GETTABLEKS                       R6 R6 K6 ["Client"]
       27 MOVE                             R7 R4
       28 CALL                             R5 2 0
       29 GETUPVAL                         R5 3
       30 DUPTABLE                         R6 K10 [{"fromPlayerId", "targetPlayerId", "content"}]
       31 SETTABLEKS                       R1 R6 K7 ["fromPlayerId"]
       33 SETTABLEKS                       R2 R6 K8 ["targetPlayerId"]
       35 SETTABLEKS                       R3 R6 K9 ["content"]
       37 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       39 GETIMPORT                        R4 K13 [table.insert]
       41 CALL                             R4 2 0
       42 GETUPVAL                         R4 4
       43 GETUPVAL                         R6 3
       44 NAMECALL                         R4 R4 K14 ["Fire"]
       46 CALL                             R4 2 0
       47 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+11]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+9]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K0 ["NotifyLogging"]
        9 GETUPVAL                         R5 3
       10 MOVE                             R6 R1
       11 NAMECALL                         R2 R2 K1 ["sendCommand"]
       13 CALL                             R2 4 0
       14 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 1
        1 GETTABLEKS                       R3 R3 K0 ["RespondPlayerPrompt"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 NAMECALL                         R1 R0 K1 ["OnGuestInvokeAsync"]
        9 CALL                             R1 3 1
       10 SETUPVAL                         R1 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K2 ["NotifyFinished"]
       14 NEWCLOSURE                       R4 P1
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          UPVAL U1
       18 NAMECALL                         R1 R0 K3 ["OnHostInvokeAsync"]
       20 CALL                             R1 3 1
       21 SETUPVAL                         R1 5
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K4 ["NotifyLeaderIsWaitingForTeamCommunications"]
       25 NEWCLOSURE                       R4 P2
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          UPVAL U1
       29 NAMECALL                         R1 R0 K3 ["OnHostInvokeAsync"]
       31 CALL                             R1 3 1
       32 SETUPVAL                         R1 8
       33 LOADK                            R3 K5 ["MultiPlayersAgentClient_SetIsMultiPlayerClientAgent"]
       34 NEWCLOSURE                       R4 P3
       35 CAPTURE                          UPVAL U10
       36 CAPTURE                          UPVAL U11
       37 NAMECALL                         R1 R0 K1 ["OnGuestInvokeAsync"]
       39 CALL                             R1 3 1
       40 SETUPVAL                         R1 9
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R3 R3 K6 ["TeamCommunication"]
       44 NEWCLOSURE                       R4 P4
       45 CAPTURE                          UPVAL U13
       46 CAPTURE                          UPVAL U14
       47 CAPTURE                          UPVAL U15
       48 CAPTURE                          UPVAL U16
       49 CAPTURE                          UPVAL U17
       50 NAMECALL                         R1 R0 K1 ["OnGuestInvokeAsync"]
       52 CALL                             R1 3 1
       53 SETUPVAL                         R1 12
       54 GETUPVAL                         R3 1
       55 GETTABLEKS                       R3 R3 K7 ["NotifyLogging"]
       57 NEWCLOSURE                       R4 P5
       58 CAPTURE                          UPVAL U13
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          UPVAL U7
       62 NAMECALL                         R1 R0 K3 ["OnHostInvokeAsync"]
       64 CALL                             R1 3 1
       65 SETUPVAL                         R1 14
       66 NAMECALL                         R1 R0 K8 ["IsHost"]
       68 CALL                             R1 1 1
       69 JUMPIFNOT                        R1 ; [+7]
       70 GETUPVAL                         R1 18
       71 SETUPVAL                         R1 14
       72 GETIMPORT                        R1 K11 [task.spawn]
       74 DUPCLOSURE                       R2 K12 [PROTO_14]
       75 CAPTURE                          UPVAL U19
       76 CALL                             R1 1 0
       77 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["LayoutOrder"]
        2 GETTABLEKS                       R4 R1 K0 ["LayoutOrder"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_17:
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
       63 DUPCLOSURE                       R9 K11 [PROTO_16]
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETUPVAL                         R1 0
        4 RETURN                           R0 1

PROTO_23:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 NEWTABLE                         R3 0 0
        5 SETUPVAL                         R3 0
        6 MOVE                             R1 R2
        7 MOVE                             R2 R1
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETTABLEKS                       R8 R6 K0 ["fromPlayerId"]
       13 JUMPIFNOTEQKN                    R8 K1 [0] ; [+3]
       15 LOADK                            R7 K2 ["Leader"]
       16 JUMP                             ; [+7]
       17 LOADK                            R8 K3 ["Player%*"]
       18 GETTABLEKS                       R10 R6 K0 ["fromPlayerId"]
       20 NAMECALL                         R8 R8 K4 ["format"]
       22 CALL                             R8 2 1
       23 MOVE                             R7 R8
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R8 R8 K5 ["getSystemReminder"]
       27 LOADK                            R10 K6 ["%*: %*"]
       28 MOVE                             R12 R7
       29 GETTABLEKS                       R13 R6 K7 ["content"]
       31 NAMECALL                         R10 R10 K4 ["format"]
       33 CALL                             R10 3 1
       34 MOVE                             R9 R10
       35 CALL                             R8 1 1
       36 FASTCALL2                        TABLE_INSERT R0 R8 ; [+5]
       38 MOVE                             R10 R0
       39 MOVE                             R11 R8
       40 GETIMPORT                        R9 K10 [table.insert]
       42 CALL                             R9 2 0
       43 FORGLOOP                         R2 2 ; [-33]
       45 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETUPVAL                         R0 1
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R0 1
       12 NAMECALL                         R0 R0 K1 ["disconnect"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETUPVAL                         R1 0
        3 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextChatService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["DMNetworking"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Util"]
       24 GETTABLEKS                       R4 R4 K13 ["DataModelType"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K14 ["Guest"]
       31 GETTABLEKS                       R5 R5 K15 ["Environment"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K16 ["Components"]
       38 GETTABLEKS                       R6 R6 K17 ["Contexts"]
       40 GETTABLEKS                       R6 R6 K18 ["InputStateTypes"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K10 ["Parent"]
       47 GETTABLEKS                       R7 R7 K19 ["Signal"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R1 K20 ["Types"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K12 ["Util"]
       59 GETTABLEKS                       R9 R9 K21 ["MultiPlayersConnection"]
       61 GETTABLEKS                       R9 R9 K22 ["MultiPlayersAgentCommon"]
       63 CALL                             R8 1 1
       64 GETTABLEKS                       R8 R8 K23 ["Commands"]
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R10 R1 K12 ["Util"]
       70 GETTABLEKS                       R10 R10 K21 ["MultiPlayersConnection"]
       72 GETTABLEKS                       R10 R10 K24 ["MultiPlayerAgentTypes"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R11 R1 K25 ["Flags"]
       79 GETTABLEKS                       R11 R11 K26 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
       81 CALL                             R10 1 1
       82 LOADNIL                          R11
       83 LOADB                            R12 0
       84 LOADB                            R13 0
       85 GETTABLEKS                       R14 R6 K27 ["new"]
       87 CALL                             R14 0 1
       88 NEWTABLE                         R15 0 0
       90 GETTABLEKS                       R16 R6 K27 ["new"]
       92 CALL                             R16 0 1
       93 LOADNIL                          R17
       94 LOADNIL                          R18
       95 LOADB                            R19 0
       96 GETTABLEKS                       R20 R6 K27 ["new"]
       98 CALL                             R20 0 1
       99 NEWTABLE                         R21 4 0
      101 LOADNIL                          R22
      102 LOADNIL                          R23
      103 LOADNIL                          R24
      104 LOADNIL                          R25
      105 LOADNIL                          R26
      106 LOADNIL                          R27
      107 DUPCLOSURE                       R28 K28 [PROTO_0]
      108 NEWCLOSURE                       R29 P1
      109 CAPTURE                          REF R18
      110 CAPTURE                          VAL R28
      111 CAPTURE                          VAL R0
      112 NEWCLOSURE                       R30 P2
      113 CAPTURE                          VAL R28
      114 CAPTURE                          REF R18
      115 CAPTURE                          REF R25
      116 CAPTURE                          VAL R3
      117 CAPTURE                          REF R17
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R21
      120 CAPTURE                          VAL R8
      121 CAPTURE                          REF R24
      122 CAPTURE                          VAL R29
      123 CAPTURE                          REF R26
      124 NEWCLOSURE                       R31 P3
      125 CAPTURE                          VAL R10
      126 CAPTURE                          REF R17
      127 CAPTURE                          VAL R8
      128 CAPTURE                          REF R18
      129 NEWCLOSURE                       R32 P4
      130 CAPTURE                          VAL R10
      131 CAPTURE                          REF R27
      132 CAPTURE                          VAL R3
      133 NEWCLOSURE                       R33 P5
      134 CAPTURE                          REF R24
      135 CAPTURE                          VAL R8
      136 CAPTURE                          REF R13
      137 CAPTURE                          REF R11
      138 CAPTURE                          VAL R14
      139 CAPTURE                          REF R22
      140 CAPTURE                          REF R17
      141 CAPTURE                          REF R18
      142 CAPTURE                          REF R23
      143 CAPTURE                          REF R25
      144 CAPTURE                          REF R19
      145 CAPTURE                          VAL R20
      146 CAPTURE                          REF R26
      147 CAPTURE                          VAL R10
      148 CAPTURE                          REF R27
      149 CAPTURE                          VAL R3
      150 CAPTURE                          REF R15
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R31
      153 CAPTURE                          VAL R30
      154 DUPCLOSURE                       R34 K29 [PROTO_17]
      155 NEWCLOSURE                       R35 P7
      156 CAPTURE                          REF R13
      157 CAPTURE                          REF R12
      158 CAPTURE                          REF R22
      159 CAPTURE                          VAL R34
      160 CAPTURE                          VAL R3
      161 NEWCLOSURE                       R36 P8
      162 CAPTURE                          REF R18
      163 CAPTURE                          REF R17
      164 CAPTURE                          VAL R29
      165 CAPTURE                          VAL R8
      166 NEWCLOSURE                       R37 P9
      167 CAPTURE                          REF R19
      168 NEWCLOSURE                       R38 P10
      169 CAPTURE                          REF R15
      170 CAPTURE                          REF R23
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R16
      173 NEWCLOSURE                       R39 P11
      174 CAPTURE                          REF R15
      175 NEWCLOSURE                       R40 P12
      176 CAPTURE                          REF R15
      177 CAPTURE                          VAL R7
      178 NEWCLOSURE                       R41 P13
      179 CAPTURE                          VAL R21
      180 CAPTURE                          REF R17
      181 DUPTABLE                         R42 K44 [{"init", "close", "waitLocalPlayer", "popCurrentPlayerPrompt", "getCurrentPlayerPromptReadySignal", "waitForTeamCommunicationsAndInformLeader", "popMultiPlayerAgentsCommunications", "popTeamCommunicationAsSystemReminders", "sendTeamCommunication", "onInputStateChanged", "getIsMultiPlayerClientAgent", "getIsMultiPlayerClientAgentChangedSignal", "getIsPlayerPromptReceived", "log"}]
      182 SETTABLEKS                       R33 R42 K30 ["init"]
      184 SETTABLEKS                       R41 R42 K31 ["close"]
      186 SETTABLEKS                       R28 R42 K32 ["waitLocalPlayer"]
      188 NEWCLOSURE                       R43 P14
      189 CAPTURE                          REF R11
      190 SETTABLEKS                       R43 R42 K33 ["popCurrentPlayerPrompt"]
      192 DUPCLOSURE                       R43 K45 [PROTO_26]
      193 CAPTURE                          VAL R14
      194 SETTABLEKS                       R43 R42 K34 ["getCurrentPlayerPromptReadySignal"]
      196 SETTABLEKS                       R38 R42 K35 ["waitForTeamCommunicationsAndInformLeader"]
      198 SETTABLEKS                       R39 R42 K36 ["popMultiPlayerAgentsCommunications"]
      200 SETTABLEKS                       R40 R42 K37 ["popTeamCommunicationAsSystemReminders"]
      202 SETTABLEKS                       R36 R42 K38 ["sendTeamCommunication"]
      204 SETTABLEKS                       R35 R42 K39 ["onInputStateChanged"]
      206 SETTABLEKS                       R37 R42 K40 ["getIsMultiPlayerClientAgent"]
      208 DUPCLOSURE                       R43 K46 [PROTO_27]
      209 CAPTURE                          VAL R20
      210 SETTABLEKS                       R43 R42 K41 ["getIsMultiPlayerClientAgentChangedSignal"]
      212 NEWCLOSURE                       R43 P17
      213 CAPTURE                          REF R13
      214 SETTABLEKS                       R43 R42 K42 ["getIsPlayerPromptReceived"]
      216 SETTABLEKS                       R32 R42 K43 ["log"]
      218 CLOSEUPVALS                      R11
      219 RETURN                           R42 1
