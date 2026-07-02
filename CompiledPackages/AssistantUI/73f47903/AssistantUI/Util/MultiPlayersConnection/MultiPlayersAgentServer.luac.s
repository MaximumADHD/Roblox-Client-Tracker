PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["playerId"]
        6 JUMPIFNOTEQ                      R6 R0 ; [+2]
        8 RETURN                           R5 1
        9 FORGLOOP                         R1 2 ; [-6]
       11 LOADNIL                          R1
       12 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 JUMPIFNOTEQ                      R5 R0 ; [+6]
        7 GETIMPORT                        R6 K4 [table.remove]
        9 GETUPVAL                         R7 0
       10 MOVE                             R8 R4
       11 CALL                             R6 2 0
       12 FORGLOOP                         R1 2 [inext] ; [-8]
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+5]
        2 GETIMPORT                        R3 K1 [error]
        4 LOADK                            R4 K2 ["Multi-player agents are not started."]
        5 LOADN                            R5 0
        6 CALL                             R3 2 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["player_count"]
       10 JUMPIFNOTLT                      R3 R1 ; [+14]
       12 GETIMPORT                        R3 K1 [error]
       14 LOADK                            R5 K4 ["We only have %* players, player id %* is out of range."]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K3 ["player_count"]
       18 MOVE                             R8 R1
       19 NAMECALL                         R5 R5 K5 ["format"]
       21 CALL                             R5 3 1
       22 MOVE                             R4 R5
       23 LOADN                            R5 0
       24 CALL                             R3 2 0
       25 GETUPVAL                         R4 1
       26 LOADNIL                          R5
       27 LOADNIL                          R6
       28 FORGPREP                         R4
       29 GETTABLEKS                       R9 R8 K6 ["playerId"]
       31 JUMPIFNOTEQ                      R9 R1 ; [+3]
       33 MOVE                             R3 R8
       34 JUMP                             ; [+3]
       35 FORGLOOP                         R4 2 ; [-7]
       37 LOADNIL                          R3
       38 JUMPIFNOT                        R3 ; [+10]
       39 GETIMPORT                        R4 K1 [error]
       41 LOADK                            R6 K7 ["Player %* has already finished, cannot send team communication to it."]
       42 MOVE                             R8 R1
       43 NAMECALL                         R6 R6 K5 ["format"]
       45 CALL                             R6 2 1
       46 MOVE                             R5 R6
       47 LOADN                            R6 0
       48 CALL                             R4 2 0
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R4 R4 K8 ["log"]
       52 LOADK                            R6 K9 ["Sending team communication to player %* from player %* with content: %*"]
       53 MOVE                             R8 R1
       54 MOVE                             R9 R0
       55 MOVE                             R10 R2
       56 NAMECALL                         R6 R6 K5 ["format"]
       58 CALL                             R6 4 1
       59 MOVE                             R5 R6
       60 CALL                             R4 1 0
       61 GETUPVAL                         R4 3
       62 FASTCALL2K                       ASSERT R4 K10 ; [+5]
       64 MOVE                             R6 R4
       65 LOADK                            R7 K10 ["Multi-player server is not initialized."]
       66 GETIMPORT                        R5 K12 [assert]
       68 CALL                             R5 2 0
       69 MOVE                             R7 R1
       70 GETUPVAL                         R8 4
       71 GETTABLEKS                       R8 R8 K13 ["TeamCommunication"]
       73 MOVE                             R9 R0
       74 MOVE                             R10 R1
       75 MOVE                             R11 R2
       76 NAMECALL                         R5 R4 K14 ["sendCommand"]
       78 CALL                             R5 6 0
       79 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 LOADN                            R3 0
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 DUPTABLE                         R5 K3 [{"fromPlayerId", "targetPlayerId", "content"}]
        2 SETTABLEKS                       R0 R5 K0 ["fromPlayerId"]
        4 SETTABLEKS                       R1 R5 K1 ["targetPlayerId"]
        6 SETTABLEKS                       R2 R5 K2 ["content"]
        8 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       10 GETIMPORT                        R3 K6 [table.insert]
       12 CALL                             R3 2 0
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R5 0
       15 NAMECALL                         R3 R3 K7 ["Fire"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+7]
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 1
        5 GETUPVAL                         R1 2
        6 NAMECALL                         R1 R1 K0 ["Fire"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 LOADB                            R2 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["new"]
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R4 R1 K2 ["subscribeStopMultiPlayerTestStateChanged"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          REF R2
       14 CAPTURE                          VAL R3
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R5 R1 K3 ["isInMultiPlayerTest"]
       18 CALL                             R5 0 1
       19 JUMPIFNOTEQ                      R5 R0 ; [+3]
       21 CLOSEUPVALS                      R2
       22 RETURN                           R0 0
       23 JUMPIF                           R2 ; [+3]
       24 NAMECALL                         R6 R3 K4 ["Wait"]
       26 CALL                             R6 1 0
       27 NAMECALL                         R6 R4 K5 ["Disconnect"]
       29 CALL                             R6 1 0
       30 CLOSEUPVALS                      R2
       31 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 SETUPVAL                         R0 1
        5 NEWTABLE                         R2 0 0
        7 SETUPVAL                         R2 2
        8 NEWTABLE                         R2 0 0
       10 SETUPVAL                         R2 3
       11 NEWTABLE                         R2 0 0
       13 SETUPVAL                         R2 4
       14 GETTABLEKS                       R2 R1 K1 ["isInMultiPlayerTest"]
       16 CALL                             R2 0 1
       17 JUMPIFNOT                        R2 ; [+3]
       18 GETTABLEKS                       R2 R1 K2 ["stopMultiPlayerTest"]
       20 CALL                             R2 0 0
       21 GETTABLEKS                       R2 R1 K3 ["startMultiPlayerTest"]
       23 GETTABLEKS                       R3 R0 K4 ["player_count"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 5
       27 LOADB                            R3 1
       28 CALL                             R2 1 1
       29 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["log"]
        3 LOADK                            R1 K1 ["stopMultiPlayersAgent"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+9]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["player_count"]
       10 GETUPVAL                         R3 2
       11 LENGTH                           R2 R3
       12 JUMPIFNOTEQ                      R1 R2 ; [+2]
       14 LOADB                            R0 0 +1
       15 LOADB                            R0 1
       16 LOADNIL                          R1
       17 SETUPVAL                         R1 1
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K3 ["get"]
       21 CALL                             R1 0 1
       22 GETTABLEKS                       R2 R1 K4 ["isInMultiPlayerTest"]
       24 CALL                             R2 0 1
       25 JUMPIFNOT                        R2 ; [+3]
       26 GETTABLEKS                       R2 R1 K5 ["stopMultiPlayerTest"]
       28 CALL                             R2 0 0
       29 JUMPIFNOT                        R0 ; [+13]
       30 GETUPVAL                         R3 4
       31 DUPTABLE                         R4 K11 [{["fromPlayerId"] = 0, ["targetPlayerId"] = 0, ["content"] = "Finished with message: All Multi-player agents are ended, User manually stopped the multi-player agents."}]
       32 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       34 GETIMPORT                        R2 K14 [table.insert]
       36 CALL                             R2 2 0
       37 GETUPVAL                         R2 5
       38 GETUPVAL                         R4 4
       39 NAMECALL                         R2 R2 K15 ["Fire"]
       41 CALL                             R2 2 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R3 4
       44 DUPTABLE                         R4 K17 [{["fromPlayerId"] = 0, ["targetPlayerId"] = 0, ["content"] = "Finished with message: All Multi-player agents finished the tasks."}]
       45 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       47 GETIMPORT                        R2 K14 [table.insert]
       49 CALL                             R2 2 0
       50 GETUPVAL                         R2 5
       51 GETUPVAL                         R4 4
       52 NAMECALL                         R2 R2 K15 ["Fire"]
       54 CALL                             R2 2 0
       55 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["log"]
        3 LOADK                            R4 K1 ["[Player%*]: %*"]
        4 MOVE                             R6 R0
        5 MOVE                             R7 R1
        6 NAMECALL                         R4 R4 K2 ["format"]
        8 CALL                             R4 3 1
        9 MOVE                             R3 R4
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 1
        3 GETUPVAL                         R0 1
        4 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+1]
        2 RETURN                           R0 0
        3 LOADNIL                          R3
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETUPVAL                         R4 1
        6 MOVE                             R6 R1
        7 NAMECALL                         R4 R4 K0 ["JSONEncode"]
        9 CALL                             R4 2 1
       10 MOVE                             R3 R4
       11 GETUPVAL                         R5 2
       12 DUPTABLE                         R6 K4 [{"playerId", "reason", "message"}]
       13 SETTABLEKS                       R0 R6 K1 ["playerId"]
       15 SETTABLEKS                       R3 R6 K2 ["reason"]
       17 SETTABLEKS                       R2 R6 K3 ["message"]
       19 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       21 GETIMPORT                        R4 K7 [table.insert]
       23 CALL                             R4 2 0
       24 GETUPVAL                         R4 3
       25 MOVE                             R5 R0
       26 CALL                             R4 1 0
       27 LOADK                            R5 K8 ["Finished with message: %*"]
       28 MOVE                             R7 R2
       29 NAMECALL                         R5 R5 K9 ["format"]
       31 CALL                             R5 2 1
       32 MOVE                             R4 R5
       33 GETUPVAL                         R6 4
       34 DUPTABLE                         R7 K14 [{["fromPlayerId"], ["targetPlayerId"] = 0, ["content"]}]
       35 SETTABLEKS                       R0 R7 K10 ["fromPlayerId"]
       37 SETTABLEKS                       R4 R7 K13 ["content"]
       39 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       41 GETIMPORT                        R5 K7 [table.insert]
       43 CALL                             R5 2 0
       44 GETUPVAL                         R5 5
       45 GETUPVAL                         R7 4
       46 NAMECALL                         R5 R5 K15 ["Fire"]
       48 CALL                             R5 2 0
       49 GETUPVAL                         R5 2
       50 LENGTH                           R4 R5
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K16 ["player_count"]
       54 JUMPIFNOTLE                      R5 R4 ; [+3]
       56 GETUPVAL                         R4 6
       57 CALL                             R4 0 0
       58 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["playerId"]
        6 JUMPIFNOTEQ                      R7 R0 ; [+3]
        8 MOVE                             R1 R6
        9 JUMP                             ; [+3]
       10 FORGLOOP                         R2 2 ; [-7]
       12 LOADNIL                          R1
       13 JUMPIFNOT                        R1 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 1
       16 MOVE                             R3 R0
       17 LOADNIL                          R4
       18 LOADK                            R6 K1 ["Player %* disconnected."]
       19 MOVE                             R8 R0
       20 NAMECALL                         R6 R6 K2 ["format"]
       22 CALL                             R6 2 1
       23 MOVE                             R5 R6
       24 CALL                             R2 3 0
       25 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R3 1
        5 FASTCALL2                        TABLE_INSERT R3 R0 ; [+4]
        7 MOVE                             R4 R0
        8 GETIMPORT                        R2 K2 [table.insert]
       10 CALL                             R2 2 0
       11 JUMP                             ; [+3]
       12 GETUPVAL                         R2 2
       13 MOVE                             R3 R0
       14 CALL                             R2 1 0
       15 JUMPIFNOT                        R1 ; [+42]
       16 GETUPVAL                         R3 1
       17 LENGTH                           R2 R3
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K3 ["player_count"]
       21 JUMPIFNOTEQ                      R2 R3 ; [+14]
       23 GETUPVAL                         R3 3
       24 DUPTABLE                         R4 K9 [{["fromPlayerId"] = 0, ["targetPlayerId"] = 0, ["content"] = "All players are waiting for team communications, please send team communications or finish the multiplayer agents test."}]
       25 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       27 GETIMPORT                        R2 K2 [table.insert]
       29 CALL                             R2 2 0
       30 GETUPVAL                         R2 4
       31 GETUPVAL                         R4 3
       32 NAMECALL                         R2 R2 K10 ["Fire"]
       34 CALL                             R2 2 0
       35 RETURN                           R0 0
       36 LOADK                            R3 K11 ["Player%* is now paused and waiting for team communications."]
       37 MOVE                             R5 R0
       38 NAMECALL                         R3 R3 K12 ["format"]
       40 CALL                             R3 2 1
       41 MOVE                             R2 R3
       42 GETUPVAL                         R4 3
       43 DUPTABLE                         R5 K13 [{["fromPlayerId"], ["targetPlayerId"] = 0, ["content"]}]
       44 SETTABLEKS                       R0 R5 K4 ["fromPlayerId"]
       46 SETTABLEKS                       R2 R5 K7 ["content"]
       48 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       50 GETIMPORT                        R3 K2 [table.insert]
       52 CALL                             R3 2 0
       53 GETUPVAL                         R3 4
       54 GETUPVAL                         R5 3
       55 NAMECALL                         R3 R3 K10 ["Fire"]
       57 CALL                             R3 2 0
       58 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["player_count"]
        7 JUMPIFNOTLT                      R1 R0 ; [+3]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["player_prompts"]
       14 GETTABLE                         R1 R2 R0
       15 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 JUMPIFNOT                        R1 ; [+11]
        9 GETUPVAL                         R2 0
       10 LENGTH                           R1 R2
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["player_count"]
       14 JUMPIFNOTEQ                      R1 R2 ; [+5]
       16 GETUPVAL                         R1 2
       17 NAMECALL                         R1 R1 K4 ["Fire"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETIMPORT                        R0 K1 [error]
        4 LOADK                            R1 K2 ["Multi-player agents start failed."]
        5 LOADN                            R2 0
        6 CALL                             R0 2 0
        7 GETUPVAL                         R1 1
        8 LENGTH                           R0 R1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["player_count"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 2
       16 NAMECALL                         R0 R0 K4 ["Wait"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADK                            R0 K0 ["Multi-player agents are ended or not started."]
        3 RETURN                           R0 1
        4 GETUPVAL                         R1 1
        5 LENGTH                           R0 R1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["player_count"]
        9 JUMPIFNOTEQ                      R0 R1 ; [+3]
       11 LOADK                            R0 K2 ["All players finished."]
       12 RETURN                           R0 1
       13 GETUPVAL                         R1 2
       14 LENGTH                           R0 R1
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K1 ["player_count"]
       18 JUMPIFNOTEQ                      R0 R1 ; [+3]
       20 LOADK                            R0 K3 ["All players are waiting for team communications, please send team communications or finish the multiplayer agents test."]
       21 RETURN                           R0 1
       22 GETUPVAL                         R1 3
       23 LENGTH                           R0 R1
       24 JUMPIFNOTEQKN                    R0 K4 [0] ; [+5]
       26 GETUPVAL                         R0 4
       27 NAMECALL                         R0 R0 K5 ["Wait"]
       29 CALL                             R0 1 0
       30 GETUPVAL                         R0 3
       31 NEWTABLE                         R1 0 0
       33 SETUPVAL                         R1 3
       34 RETURN                           R0 1

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["playerId"]
        6 JUMPIFNOTEQ                      R7 R0 ; [+3]
        8 MOVE                             R1 R6
        9 JUMP                             ; [+3]
       10 FORGLOOP                         R2 2 ; [-7]
       12 LOADNIL                          R1
       13 JUMPIFNOT                        R1 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 1
       16 MOVE                             R3 R0
       17 LOADNIL                          R4
       18 LOADK                            R6 K1 ["Player %* disconnected."]
       19 MOVE                             R8 R0
       20 NAMECALL                         R6 R6 K2 ["format"]
       22 CALL                             R6 2 1
       23 MOVE                             R5 R6
       24 CALL                             R2 3 0
       25 RETURN                           R0 0

PROTO_22:
        0 PREPVARARGS                      2
        1 NEWTABLE                         R2 0 0
        3 GETVARARGS                       R3 -1
        4 SETLIST                          R2 R3 -1 [1]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["RequestPlayerPrompt"]
        9 JUMPIFNOTEQ                      R1 R3 ; [+50]
       11 GETTABLEN                        R3 R2 1
       12 GETUPVAL                         R5 1
       13 JUMPIF                           R5 ; [+2]
       14 LOADNIL                          R4
       15 JUMP                             ; [+11]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K1 ["player_count"]
       19 JUMPIFNOTLT                      R5 R3 ; [+3]
       21 LOADNIL                          R4
       22 JUMP                             ; [+4]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K2 ["player_prompts"]
       26 GETTABLE                         R4 R5 R3
       27 JUMPIFNOT                        R4 ; [+118]
       28 JUMPIFEQKS                       R4 K3 [""] ; [+117]
       30 GETUPVAL                         R5 2
       31 MOVE                             R7 R0
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K4 ["RespondPlayerPrompt"]
       35 MOVE                             R9 R4
       36 NAMECALL                         R5 R5 K5 ["sendCommand"]
       38 CALL                             R5 4 0
       39 GETUPVAL                         R6 3
       40 FASTCALL2                        TABLE_INSERT R6 R3 ; [+4]
       42 MOVE                             R7 R3
       43 GETIMPORT                        R5 K8 [table.insert]
       45 CALL                             R5 2 0
       46 GETUPVAL                         R5 1
       47 JUMPIFNOT                        R5 ; [+98]
       48 GETUPVAL                         R6 3
       49 LENGTH                           R5 R6
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R6 R6 K1 ["player_count"]
       53 JUMPIFNOTEQ                      R5 R6 ; [+92]
       55 GETUPVAL                         R5 4
       56 NAMECALL                         R5 R5 K9 ["Fire"]
       58 CALL                             R5 1 0
       59 RETURN                           R0 0
       60 GETUPVAL                         R3 0
       61 GETTABLEKS                       R3 R3 K10 ["NotifyFinished"]
       63 JUMPIFNOTEQ                      R1 R3 ; [+5]
       65 GETUPVAL                         R3 5
       66 GETVARARGS                       R4 -1
       67 CALL                             R3 -1 0
       68 RETURN                           R0 0
       69 GETUPVAL                         R3 0
       70 GETTABLEKS                       R3 R3 K11 ["NotifyLeaderIsWaitingForTeamCommunications"]
       72 JUMPIFNOTEQ                      R1 R3 ; [+5]
       74 GETUPVAL                         R3 6
       75 GETVARARGS                       R4 -1
       76 CALL                             R3 -1 0
       77 RETURN                           R0 0
       78 GETUPVAL                         R3 0
       79 GETTABLEKS                       R3 R3 K12 ["TeamCommunication"]
       81 JUMPIFNOTEQ                      R1 R3 ; [+47]
       83 GETTABLEN                        R3 R2 1
       84 GETTABLEN                        R4 R2 2
       85 GETTABLEN                        R5 R2 3
       86 JUMPIFNOTEQKN                    R4 K13 [0] ; [+18]
       88 GETUPVAL                         R7 7
       89 DUPTABLE                         R8 K17 [{["fromPlayerId"], ["targetPlayerId"] = 0, ["content"]}]
       90 SETTABLEKS                       R3 R8 K14 ["fromPlayerId"]
       92 SETTABLEKS                       R5 R8 K16 ["content"]
       94 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       96 GETIMPORT                        R6 K8 [table.insert]
       98 CALL                             R6 2 0
       99 GETUPVAL                         R6 8
      100 GETUPVAL                         R8 7
      101 NAMECALL                         R6 R6 K9 ["Fire"]
      103 CALL                             R6 2 0
      104 RETURN                           R0 0
      105 GETUPVAL                         R6 9
      106 MOVE                             R7 R3
      107 MOVE                             R8 R4
      108 MOVE                             R9 R5
      109 CALL                             R6 3 0
      110 GETUPVAL                         R7 7
      111 DUPTABLE                         R8 K18 [{"fromPlayerId", "targetPlayerId", "content"}]
      112 SETTABLEKS                       R3 R8 K14 ["fromPlayerId"]
      114 SETTABLEKS                       R4 R8 K15 ["targetPlayerId"]
      116 SETTABLEKS                       R5 R8 K16 ["content"]
      118 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      120 GETIMPORT                        R6 K8 [table.insert]
      122 CALL                             R6 2 0
      123 GETUPVAL                         R6 8
      124 GETUPVAL                         R8 7
      125 NAMECALL                         R6 R6 K9 ["Fire"]
      127 CALL                             R6 2 0
      128 RETURN                           R0 0
      129 GETUPVAL                         R3 0
      130 GETTABLEKS                       R3 R3 K19 ["NotifyLogging"]
      132 JUMPIFNOTEQ                      R1 R3 ; [+13]
      134 GETVARARGS                       R3 2
      135 GETUPVAL                         R5 10
      136 GETTABLEKS                       R5 R5 K20 ["log"]
      138 LOADK                            R7 K21 ["[Player%*]: %*"]
      139 MOVE                             R9 R3
      140 MOVE                             R10 R4
      141 NAMECALL                         R7 R7 K22 ["format"]
      143 CALL                             R7 3 1
      144 MOVE                             R6 R7
      145 CALL                             R5 1 0
      146 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["createMultiPlayersServer"]
        6 CALL                             R0 0 1
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 0
        9 FASTCALL2K                       ASSERT R0 K2 ; [+5]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K2 ["Multi-player server is not initialized."]
       13 GETIMPORT                        R1 K4 [assert]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R2 R0 K5 ["onClientConnected"]
       19 DUPCLOSURE                       R4 K6 [PROTO_20]
       20 NAMECALL                         R2 R2 K7 ["Connect"]
       22 CALL                             R2 2 1
       23 SETTABLEKS                       R2 R1 K5 ["onClientConnected"]
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R2 R0 K8 ["onClientDisconnected"]
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 NAMECALL                         R2 R2 K7 ["Connect"]
       33 CALL                             R2 2 1
       34 SETTABLEKS                       R2 R1 K8 ["onClientDisconnected"]
       36 GETUPVAL                         R1 2
       37 GETTABLEKS                       R2 R0 K9 ["onCommand"]
       39 NEWCLOSURE                       R4 P2
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          UPVAL U10
       48 CAPTURE                          UPVAL U11
       49 CAPTURE                          UPVAL U12
       50 CAPTURE                          UPVAL U13
       51 NAMECALL                         R2 R2 K7 ["Connect"]
       53 CALL                             R2 2 1
       54 SETTABLEKS                       R2 R1 K9 ["onCommand"]
       56 NAMECALL                         R1 R0 K10 ["start"]
       58 CALL                             R1 1 0
       59 RETURN                           R0 0

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
       12 NAMECALL                         R0 R0 K1 ["close"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Signal"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["MultiPlayersConnection"]
       20 GETTABLEKS                       R3 R3 K10 ["MultiPlayersAgentCommon"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R2 R2 K11 ["Commands"]
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["Guest"]
       29 GETTABLEKS                       R4 R4 K13 ["Environment"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K14 ["Components"]
       36 GETTABLEKS                       R5 R5 K15 ["Contexts"]
       38 GETTABLEKS                       R5 R5 K16 ["InputStateTypes"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K18 [game]
       43 LOADK                            R7 K19 ["HttpService"]
       44 NAMECALL                         R5 R5 K20 ["GetService"]
       46 CALL                             R5 2 1
       47 GETIMPORT                        R6 K5 [require]
       49 GETTABLEKS                       R7 R0 K8 ["Util"]
       51 GETTABLEKS                       R7 R7 K9 ["MultiPlayersConnection"]
       53 GETTABLEKS                       R7 R7 K21 ["MultiPlayerAgentTypes"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K5 [require]
       58 GETTABLEKS                       R8 R0 K8 ["Util"]
       60 GETTABLEKS                       R8 R8 K9 ["MultiPlayersConnection"]
       62 GETTABLEKS                       R8 R8 K22 ["MultiPlayersModeUtils"]
       64 CALL                             R7 1 1
       65 LOADNIL                          R8
       66 LOADNIL                          R9
       67 NEWTABLE                         R10 0 0
       69 NEWTABLE                         R11 4 0
       71 NEWTABLE                         R12 0 0
       73 GETTABLEKS                       R13 R1 K23 ["new"]
       75 CALL                             R13 0 1
       76 NEWTABLE                         R14 0 0
       78 GETTABLEKS                       R15 R1 K23 ["new"]
       80 CALL                             R15 0 1
       81 NEWTABLE                         R16 0 0
       83 NEWCLOSURE                       R17 P0
       84 CAPTURE                          REF R10
       85 DUPCLOSURE                       R18 K24 [PROTO_1]
       86 CAPTURE                          VAL R16
       87 NEWCLOSURE                       R19 P2
       88 CAPTURE                          REF R8
       89 CAPTURE                          REF R10
       90 CAPTURE                          VAL R7
       91 CAPTURE                          REF R9
       92 CAPTURE                          VAL R2
       93 DUPCLOSURE                       R20 K25 [PROTO_3]
       94 CAPTURE                          VAL R19
       95 NEWCLOSURE                       R21 P4
       96 CAPTURE                          REF R12
       97 CAPTURE                          VAL R13
       98 DUPCLOSURE                       R22 K26 [PROTO_6]
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R1
      101 DUPCLOSURE                       R23 K27 [PROTO_7]
      102 CAPTURE                          VAL R22
      103 DUPCLOSURE                       R24 K28 [PROTO_8]
      104 CAPTURE                          VAL R22
      105 NEWCLOSURE                       R25 P8
      106 CAPTURE                          VAL R3
      107 CAPTURE                          REF R8
      108 CAPTURE                          REF R10
      109 CAPTURE                          REF R14
      110 CAPTURE                          REF R12
      111 CAPTURE                          VAL R22
      112 NEWCLOSURE                       R26 P9
      113 CAPTURE                          VAL R7
      114 CAPTURE                          REF R8
      115 CAPTURE                          REF R10
      116 CAPTURE                          VAL R3
      117 CAPTURE                          REF R12
      118 CAPTURE                          VAL R13
      119 DUPCLOSURE                       R27 K29 [PROTO_11]
      120 CAPTURE                          VAL R7
      121 NEWCLOSURE                       R28 P11
      122 CAPTURE                          VAL R22
      123 CAPTURE                          REF R10
      124 NEWCLOSURE                       R29 P12
      125 CAPTURE                          REF R8
      126 CAPTURE                          VAL R5
      127 CAPTURE                          REF R10
      128 CAPTURE                          VAL R18
      129 CAPTURE                          REF R12
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R26
      132 NEWCLOSURE                       R30 P13
      133 CAPTURE                          REF R10
      134 CAPTURE                          VAL R29
      135 NEWCLOSURE                       R31 P14
      136 CAPTURE                          REF R8
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R18
      139 CAPTURE                          REF R12
      140 CAPTURE                          VAL R13
      141 NEWCLOSURE                       R32 P15
      142 CAPTURE                          REF R8
      143 NEWCLOSURE                       R33 P16
      144 CAPTURE                          REF R14
      145 CAPTURE                          REF R8
      146 CAPTURE                          VAL R15
      147 NEWCLOSURE                       R34 P17
      148 CAPTURE                          REF R8
      149 CAPTURE                          REF R14
      150 CAPTURE                          VAL R15
      151 NEWCLOSURE                       R35 P18
      152 CAPTURE                          REF R8
      153 CAPTURE                          REF R10
      154 CAPTURE                          VAL R16
      155 CAPTURE                          REF R12
      156 CAPTURE                          VAL R13
      157 NEWCLOSURE                       R36 P19
      158 CAPTURE                          REF R9
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R11
      161 CAPTURE                          REF R10
      162 CAPTURE                          VAL R29
      163 CAPTURE                          VAL R2
      164 CAPTURE                          REF R8
      165 CAPTURE                          REF R14
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R31
      168 CAPTURE                          REF R12
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R19
      171 CAPTURE                          VAL R7
      172 NEWCLOSURE                       R37 P20
      173 CAPTURE                          VAL R11
      174 CAPTURE                          REF R9
      175 DUPTABLE                         R38 K38 [{"init", "close", "startMultiPlayersAgent", "stopMultiPlayersAgent", "sendTeamCommunication", "waitForPopTeamCommunications", "waitForDone", "waitForAllPlayersStarted"}]
      176 SETTABLEKS                       R36 R38 K30 ["init"]
      178 SETTABLEKS                       R37 R38 K31 ["close"]
      180 SETTABLEKS                       R25 R38 K32 ["startMultiPlayersAgent"]
      182 SETTABLEKS                       R26 R38 K33 ["stopMultiPlayersAgent"]
      184 SETTABLEKS                       R20 R38 K34 ["sendTeamCommunication"]
      186 SETTABLEKS                       R35 R38 K35 ["waitForPopTeamCommunications"]
      188 SETTABLEKS                       R28 R38 K36 ["waitForDone"]
      190 SETTABLEKS                       R34 R38 K37 ["waitForAllPlayersStarted"]
      192 CLOSEUPVALS                      R8
      193 RETURN                           R38 1
