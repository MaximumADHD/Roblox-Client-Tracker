PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["target_player_id"]
        2 LOADN                            R3 0
        3 JUMPIFLT                         R2 R3 ; [+6]
        5 GETTABLEKS                       R2 R1 K0 ["target_player_id"]
        7 LOADN                            R3 8
        8 JUMPIFNOTLT                      R3 R2 ; [+6]
       10 GETIMPORT                        R2 K2 [error]
       12 LOADK                            R3 K3 ["target_player_id must be between 0 and 8"]
       13 LOADN                            R4 0
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R2 R1 K4 ["content"]
       17 JUMPIFNOT                        R2 ; [+4]
       18 GETTABLEKS                       R2 R1 K4 ["content"]
       20 JUMPIFNOTEQKS                    R2 K5 [""] ; [+6]
       22 GETIMPORT                        R2 K2 [error]
       24 LOADK                            R3 K6 ["content must not be empty"]
       25 LOADN                            R4 0
       26 CALL                             R2 2 0
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K7 ["getDataModelType"]
       30 CALL                             R2 0 1
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K8 ["Types"]
       34 GETTABLEKS                       R3 R3 K9 ["Edit"]
       36 JUMPIFNOTEQ                      R2 R3 ; [+19]
       38 GETTABLEKS                       R3 R1 K0 ["target_player_id"]
       40 JUMPIFNOTEQKN                    R3 K10 [0] ; [+6]
       42 GETIMPORT                        R3 K2 [error]
       44 LOADK                            R4 K11 ["You are the leader agent, you cannot send team communication to yourself."]
       45 LOADN                            R5 0
       46 CALL                             R3 2 0
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R3 R3 K12 ["sendTeamCommunication"]
       50 GETTABLEKS                       R4 R1 K0 ["target_player_id"]
       52 GETTABLEKS                       R5 R1 K4 ["content"]
       54 CALL                             R3 2 0
       55 JUMP                             ; [+21]
       56 GETUPVAL                         R3 0
       57 GETTABLEKS                       R3 R3 K8 ["Types"]
       59 GETTABLEKS                       R3 R3 K13 ["Client"]
       61 JUMPIFNOTEQ                      R2 R3 ; [+10]
       63 GETUPVAL                         R3 2
       64 GETTABLEKS                       R3 R3 K12 ["sendTeamCommunication"]
       66 GETTABLEKS                       R4 R1 K0 ["target_player_id"]
       68 GETTABLEKS                       R5 R1 K4 ["content"]
       70 CALL                             R3 2 0
       71 JUMP                             ; [+5]
       72 GETIMPORT                        R3 K2 [error]
       74 LOADK                            R4 K14 ["Tool is not available in this data model."]
       75 LOADN                            R5 0
       76 CALL                             R3 2 0
       77 LOADK                            R3 K15 ["Success"]
       78 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getIsMultiPlayerClientAgent"]
        3 CALL                             R1 0 1
        4 LOADNIL                          R2
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K1 ["Types"]
       10 GETTABLEKS                       R4 R4 K2 ["Client"]
       12 MOVE                             R5 R0
       13 CALL                             R3 2 1
       14 MOVE                             R2 R3
       15 JUMP                             ; [+9]
       16 GETUPVAL                         R3 1
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K1 ["Types"]
       20 GETTABLEKS                       R4 R4 K3 ["Edit"]
       22 MOVE                             R5 R0
       23 CALL                             R3 2 1
       24 MOVE                             R2 R3
       25 GETUPVAL                         R3 3
       26 CALL                             R3 0 1
       27 MOVE                             R5 R2
       28 NAMECALL                         R3 R3 K4 ["addText"]
       30 CALL                             R3 2 1
       31 NAMECALL                         R3 R3 K5 ["build"]
       33 CALL                             R3 1 1
       34 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["init"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 LOADK                            R4 K2 ["MultiPlayerAgentsCommunicationTool_SendTeamCommunication"]
        8 DUPCLOSURE                       R5 K3 [PROTO_0]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 NAMECALL                         R2 R1 K4 ["OnHostInvokeAsync"]
       14 CALL                             R2 3 1
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U4
       20 GETUPVAL                         R4 5
       21 GETTABLEKS                       R4 R4 K5 ["define"]
       23 CALL                             R4 0 1
       24 GETUPVAL                         R6 6
       25 GETTABLEKS                       R6 R6 K6 ["MultiPlayerAgentsCommunication"]
       27 NAMECALL                         R4 R4 K7 ["setName"]
       29 CALL                             R4 2 1
       30 LOADK                            R6 K8 ["Send multi-player agents communication to the multi-player agents."]
       31 NAMECALL                         R4 R4 K9 ["setDescription"]
       33 CALL                             R4 2 1
       34 LOADK                            R6 K10 ["target_player_id"]
       35 DUPTABLE                         R7 K15 [{["type"] = "number", ["description"] = "The player id to send the multi-player agents communication to, 0 is the leader agent, 1 is the first player agent, 2 is the second player agent, etc."}]
       36 NAMECALL                         R4 R4 K16 ["addArgument"]
       38 CALL                             R4 3 1
       39 LOADK                            R6 K17 ["content"]
       40 DUPTABLE                         R7 K20 [{["type"] = "string", ["description"] = "The content to send to the multi-player agents."}]
       41 NAMECALL                         R4 R4 K16 ["addArgument"]
       43 CALL                             R4 3 1
       44 DUPTABLE                         R6 K28 [{["title"] = "Multi-Player Agents Communication", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       45 NAMECALL                         R4 R4 K29 ["setAnnotations"]
       47 CALL                             R4 2 1
       48 MOVE                             R6 R3
       49 NAMECALL                         R4 R4 K30 ["setHandler"]
       51 CALL                             R4 2 1
       52 NAMECALL                         R4 R4 K31 ["build"]
       54 CALL                             R4 1 1
       55 DUPTABLE                         R5 K33 [{"definition"}]
       56 SETTABLEKS                       R4 R5 K32 ["definition"]
       58 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K6 ["Parent"]
       15 GETTABLEKS                       R2 R2 K7 ["Util"]
       17 GETTABLEKS                       R2 R2 K8 ["DataModelType"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R3 R0 K6 ["Parent"]
       24 GETTABLEKS                       R3 R3 K9 ["ModelContextProtocol"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K7 ["Util"]
       31 GETTABLEKS                       R4 R4 K10 ["MultiPlayersConnection"]
       33 GETTABLEKS                       R4 R4 K11 ["MultiPlayersAgentClient"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K7 ["Util"]
       40 GETTABLEKS                       R5 R5 K10 ["MultiPlayersConnection"]
       42 GETTABLEKS                       R5 R5 K12 ["MultiPlayersAgentServer"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K7 ["Util"]
       49 GETTABLEKS                       R6 R6 K10 ["MultiPlayersConnection"]
       51 GETTABLEKS                       R6 R6 K13 ["MultiPlayersModeUtils"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K14 ["Tools"]
       58 GETTABLEKS                       R7 R7 K15 ["ToolTypes"]
       60 CALL                             R6 1 1
       61 GETTABLEKS                       R7 R2 K7 ["Util"]
       63 GETTABLEKS                       R7 R7 K16 ["ToolBuilder"]
       65 GETTABLEKS                       R8 R2 K7 ["Util"]
       67 GETTABLEKS                       R8 R8 K17 ["ToolResult"]
       69 GETTABLEKS                       R9 R6 K18 ["ToolNames"]
       71 DUPCLOSURE                       R10 K19 [PROTO_2]
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R9
       79 RETURN                           R10 1
