PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["target_player_id"]
        2 LOADN                            R2 0
        3 JUMPIFLT                         R1 R2 ; [+6]
        5 GETTABLEKS                       R1 R0 K0 ["target_player_id"]
        7 LOADN                            R2 8
        8 JUMPIFNOTLT                      R2 R1 ; [+6]
       10 GETIMPORT                        R1 K2 [error]
       12 LOADK                            R2 K3 ["target_player_id must be between 0 and 8"]
       13 LOADN                            R3 0
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K4 ["content"]
       17 JUMPIFNOT                        R1 ; [+4]
       18 GETTABLEKS                       R1 R0 K4 ["content"]
       20 JUMPIFNOTEQKS                    R1 K5 [""] ; [+6]
       22 GETIMPORT                        R1 K2 [error]
       24 LOADK                            R2 K6 ["content must not be empty"]
       25 LOADN                            R3 0
       26 CALL                             R1 2 0
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K7 ["getDataModelType"]
       30 CALL                             R1 0 1
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K8 ["Types"]
       34 GETTABLEKS                       R2 R2 K9 ["Edit"]
       36 JUMPIFNOTEQ                      R1 R2 ; [+19]
       38 GETTABLEKS                       R2 R0 K0 ["target_player_id"]
       40 JUMPIFNOTEQKN                    R2 K10 [0] ; [+6]
       42 GETIMPORT                        R2 K2 [error]
       44 LOADK                            R3 K11 ["You are the leader agent, you cannot send team communication to yourself."]
       45 LOADN                            R4 0
       46 CALL                             R2 2 0
       47 GETUPVAL                         R2 1
       48 GETTABLEKS                       R2 R2 K12 ["sendTeamCommunication"]
       50 GETTABLEKS                       R3 R0 K0 ["target_player_id"]
       52 GETTABLEKS                       R4 R0 K4 ["content"]
       54 CALL                             R2 2 0
       55 JUMP                             ; [+21]
       56 GETUPVAL                         R2 0
       57 GETTABLEKS                       R2 R2 K8 ["Types"]
       59 GETTABLEKS                       R2 R2 K13 ["Client"]
       61 JUMPIFNOTEQ                      R1 R2 ; [+10]
       63 GETUPVAL                         R2 2
       64 GETTABLEKS                       R2 R2 K12 ["sendTeamCommunication"]
       66 GETTABLEKS                       R3 R0 K0 ["target_player_id"]
       68 GETTABLEKS                       R4 R0 K4 ["content"]
       70 CALL                             R2 2 0
       71 JUMP                             ; [+5]
       72 GETIMPORT                        R2 K2 [error]
       74 LOADK                            R3 K14 ["Tool is not available in this data model."]
       75 LOADN                            R4 0
       76 CALL                             R2 2 0
       77 LOADK                            R2 K15 ["Success"]
       78 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getIsMultiPlayerClientAgent"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["Identity"]
        8 GETTABLEKS                       R2 R2 K2 ["PlayClient"]
       10 JUMP                             ; [+5]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K1 ["Identity"]
       14 GETTABLEKS                       R2 R2 K3 ["Edit"]
       16 GETUPVAL                         R3 2
       17 MOVE                             R5 R2
       18 MOVE                             R6 R0
       19 NAMECALL                         R3 R3 K4 ["InvokeAsync"]
       21 CALL                             R3 3 1
       22 GETUPVAL                         R4 3
       23 CALL                             R4 0 1
       24 MOVE                             R6 R3
       25 NAMECALL                         R4 R4 K5 ["addText"]
       27 CALL                             R4 2 1
       28 NAMECALL                         R4 R4 K6 ["build"]
       30 CALL                             R4 1 1
       31 RETURN                           R4 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["destroying"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["init"]
        7 MOVE                             R4 R1
        8 MOVE                             R5 R2
        9 CALL                             R3 2 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K3 ["invoke"]
       13 MOVE                             R4 R1
       14 LOADK                            R5 K4 ["MultiPlayerAgentsCommunicationTool.SendTeamCommunication"]
       15 CALL                             R3 2 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K5 ["new"]
       19 CALL                             R4 0 1
       20 NAMECALL                         R5 R1 K6 ["GetIdentity"]
       22 CALL                             R5 1 1
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K7 ["Identity"]
       26 GETTABLEKS                       R6 R6 K8 ["Standalone"]
       28 JUMPIFEQ                         R5 R6 ; [+9]
       30 DUPCLOSURE                       R9 K9 [PROTO_1]
       31 CAPTURE                          UPVAL U4
       32 NAMECALL                         R7 R3 K10 ["Connect"]
       34 CALL                             R7 2 -1
       35 NAMECALL                         R5 R4 K11 ["Add"]
       37 CALL                             R5 -1 0
       38 NEWCLOSURE                       R7 P1
       39 CAPTURE                          VAL R4
       40 NAMECALL                         R5 R2 K12 ["Once"]
       42 CALL                             R5 2 0
       43 NEWCLOSURE                       R5 P2
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R3
       47 CAPTURE                          UPVAL U5
       48 GETUPVAL                         R6 6
       49 GETTABLEKS                       R6 R6 K13 ["define"]
       51 CALL                             R6 0 1
       52 GETUPVAL                         R8 7
       53 GETTABLEKS                       R8 R8 K14 ["MultiPlayerAgentsCommunication"]
       55 NAMECALL                         R6 R6 K15 ["setName"]
       57 CALL                             R6 2 1
       58 LOADK                            R8 K16 ["Send multi-player agents communication to the multi-player agents."]
       59 NAMECALL                         R6 R6 K17 ["setDescription"]
       61 CALL                             R6 2 1
       62 LOADK                            R8 K18 ["target_player_id"]
       63 DUPTABLE                         R9 K23 [{["type"] = "number", ["description"] = "The player id to send the multi-player agents communication to, 0 is the leader agent, 1 is the first player agent, 2 is the second player agent, etc."}]
       64 NAMECALL                         R6 R6 K24 ["addArgument"]
       66 CALL                             R6 3 1
       67 LOADK                            R8 K25 ["content"]
       68 DUPTABLE                         R9 K28 [{["type"] = "string", ["description"] = "The content to send to the multi-player agents."}]
       69 NAMECALL                         R6 R6 K24 ["addArgument"]
       71 CALL                             R6 3 1
       72 LOADK                            R8 K29 ["Multi-Player Agents Communication"]
       73 NAMECALL                         R6 R6 K30 ["setTitle"]
       75 CALL                             R6 2 1
       76 DUPTABLE                         R8 K37 [{["title"] = "Multi-Player Agents Communication", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       77 NAMECALL                         R6 R6 K38 ["setAnnotations"]
       79 CALL                             R6 2 1
       80 MOVE                             R8 R5
       81 NAMECALL                         R6 R6 K39 ["setHandler"]
       83 CALL                             R6 2 1
       84 NAMECALL                         R6 R6 K40 ["build"]
       86 CALL                             R6 1 1
       87 DUPTABLE                         R7 K42 [{"definition"}]
       88 SETTABLEKS                       R6 R7 K41 ["definition"]
       90 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Bin"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ModelContextProtocol"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Util"]
       28 GETTABLEKS                       R6 R6 K11 ["DataModelType"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Util"]
       35 GETTABLEKS                       R7 R7 K12 ["MultiPlayersConnection"]
       37 GETTABLEKS                       R7 R7 K13 ["MultiPlayersAgentClient"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K10 ["Util"]
       44 GETTABLEKS                       R8 R8 K12 ["MultiPlayersConnection"]
       46 GETTABLEKS                       R8 R8 K14 ["MultiPlayersAgentServer"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K10 ["Util"]
       53 GETTABLEKS                       R9 R9 K12 ["MultiPlayersConnection"]
       55 GETTABLEKS                       R9 R9 K15 ["MultiPlayersModeUtils"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K16 ["Tools"]
       62 GETTABLEKS                       R10 R10 K17 ["ToolTypes"]
       64 CALL                             R9 1 1
       65 GETTABLEKS                       R10 R3 K18 ["Remote"]
       67 GETTABLEKS                       R11 R4 K10 ["Util"]
       69 GETTABLEKS                       R11 R11 K19 ["ToolBuilder"]
       71 GETTABLEKS                       R12 R4 K10 ["Util"]
       73 GETTABLEKS                       R12 R12 K20 ["ToolResult"]
       75 GETTABLEKS                       R13 R9 K21 ["ToolNames"]
       77 DUPCLOSURE                       R14 K22 [PROTO_0]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R6
       81 DUPCLOSURE                       R15 K23 [PROTO_4]
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R13
       90 RETURN                           R15 1
