PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["player_count"]
        2 LOADN                            R3 1
        3 JUMPIFLT                         R2 R3 ; [+6]
        5 GETTABLEKS                       R2 R1 K0 ["player_count"]
        7 LOADN                            R3 8
        8 JUMPIFNOTLT                      R3 R2 ; [+6]
       10 GETIMPORT                        R2 K2 [error]
       12 LOADK                            R3 K3 ["player_count must be between 1 and 8"]
       13 LOADN                            R4 0
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R3 R1 K4 ["player_prompts"]
       17 LENGTH                           R2 R3
       18 GETTABLEKS                       R3 R1 K0 ["player_count"]
       20 JUMPIFEQ                         R2 R3 ; [+6]
       22 GETIMPORT                        R2 K2 [error]
       24 LOADK                            R3 K5 ["player_prompts must be the same size as player_count"]
       25 LOADN                            R4 0
       26 CALL                             R2 2 0
       27 GETTABLEKS                       R2 R1 K4 ["player_prompts"]
       29 LOADNIL                          R3
       30 LOADNIL                          R4
       31 FORGPREP                         R2
       32 JUMPIFNOT                        R6 ; [+2]
       33 JUMPIFNOTEQKS                    R6 K6 [""] ; [+6]
       35 GETIMPORT                        R7 K2 [error]
       37 LOADK                            R8 K7 ["player_prompts must not be empty"]
       38 LOADN                            R9 0
       39 CALL                             R7 2 0
       40 FORGLOOP                         R2 2 ; [-9]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K8 ["startMultiPlayersAgent"]
       45 MOVE                             R3 R1
       46 CALL                             R2 1 0
       47 GETUPVAL                         R2 0
       48 GETTABLEKS                       R2 R2 K9 ["waitForAllPlayersStarted"]
       50 CALL                             R2 0 0
       51 LOADK                            R2 K10 ["Success"]
       52 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["stopMultiPlayersAgent"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Types"]
        4 GETTABLEKS                       R1 R1 K1 ["Edit"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R2 ; [+18]
        1 GETTABLEKS                       R3 R2 K0 ["signal"]
        3 JUMPIFNOT                        R3 ; [+15]
        4 GETTABLEKS                       R3 R2 K0 ["signal"]
        6 GETTABLEKS                       R3 R3 K1 ["abortSignal"]
        8 JUMPIFNOT                        R3 ; [+10]
        9 GETTABLEKS                       R3 R2 K0 ["signal"]
       11 GETTABLEKS                       R3 R3 K1 ["abortSignal"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 NAMECALL                         R3 R3 K2 ["Once"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 2
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K3 ["Types"]
       23 GETTABLEKS                       R4 R4 K4 ["Edit"]
       25 MOVE                             R5 R0
       26 CALL                             R3 2 1
       27 GETUPVAL                         R4 3
       28 CALL                             R4 0 1
       29 MOVE                             R6 R3
       30 NAMECALL                         R4 R4 K5 ["addText"]
       32 CALL                             R4 2 1
       33 NAMECALL                         R4 R4 K6 ["build"]
       35 CALL                             R4 1 1
       36 RETURN                           R4 1

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["FFlagDisableStartStopPlayConfirmation"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        7 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["StartMultiPlayerAgents"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADK                            R4 K1 ["StartMultiPlayerAgentsTool_StartMultiPlayerAgents"]
        3 DUPCLOSURE                       R5 K2 [PROTO_0]
        4 CAPTURE                          UPVAL U0
        5 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        7 CALL                             R2 3 1
        8 LOADK                            R5 K4 ["StartMultiPlayerAgentsTool_StopMultiPlayerAgents"]
        9 DUPCLOSURE                       R6 K5 [PROTO_1]
       10 CAPTURE                          UPVAL U0
       11 NAMECALL                         R3 R1 K3 ["OnHostInvokeAsync"]
       13 CALL                             R3 3 1
       14 NEWCLOSURE                       R4 P2
       15 CAPTURE                          VAL R3
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U2
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K6 ["define"]
       22 CALL                             R5 0 1
       23 GETUPVAL                         R7 4
       24 GETTABLEKS                       R7 R7 K7 ["StartMultiPlayerAgents"]
       26 NAMECALL                         R5 R5 K8 ["setName"]
       28 CALL                             R5 2 1
       29 LOADK                            R7 K9 ["Start multi-player agents to play the game, each agent can take a prompt, You should call multi_player_agents_communication tool to orchestrate the players.\n\tat the end, call stop_multi_player_agents tool to stop the multi-player agents."]
       30 NAMECALL                         R5 R5 K10 ["setDescription"]
       32 CALL                             R5 2 1
       33 LOADK                            R7 K11 ["player_count"]
       34 DUPTABLE                         R8 K16 [{["type"] = "number", ["description"] = "The number of players to start, minimum is 1, maximum is 8."}]
       35 NAMECALL                         R5 R5 K17 ["addArgument"]
       37 CALL                             R5 3 1
       38 LOADK                            R7 K18 ["player_prompts"]
       39 DUPTABLE                         R8 K22 [{["type"] = "array", ["description"] = "The prompt for the player agents. Size should be the same as player_count. The first player's name is 'Player1', the second player's name is 'Player2', etc.", ["items"]}]
       40 DUPTABLE                         R9 K25 [{["type"] = "string", ["description"] = "The prompt for the player agent."}]
       41 SETTABLEKS                       R9 R8 K21 ["items"]
       43 NAMECALL                         R5 R5 K17 ["addArgument"]
       45 CALL                             R5 3 1
       46 DUPTABLE                         R7 K33 [{["title"] = "Start Multi-Player Agents", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       47 NAMECALL                         R5 R5 K34 ["setAnnotations"]
       49 CALL                             R5 2 1
       50 MOVE                             R7 R4
       51 NAMECALL                         R5 R5 K35 ["setHandler"]
       53 CALL                             R5 2 1
       54 NAMECALL                         R5 R5 K36 ["build"]
       56 CALL                             R5 1 1
       57 DUPTABLE                         R6 K40 [{"definition", "getPreExecuteWarning", "displayNameFunction"}]
       58 SETTABLEKS                       R5 R6 K37 ["definition"]
       60 DUPCLOSURE                       R7 K41 [PROTO_4]
       61 CAPTURE                          UPVAL U5
       62 SETTABLEKS                       R7 R6 K38 ["getPreExecuteWarning"]
       64 GETUPVAL                         R8 5
       65 GETTABLEKS                       R8 R8 K42 ["FFlagAssistantSplitToolsAndWidgets"]
       67 JUMPIFNOT                        R8 ; [+2]
       68 LOADNIL                          R7
       69 JUMP                             ; [+2]
       70 DUPCLOSURE                       R7 K43 [PROTO_5]
       71 CAPTURE                          UPVAL U6
       72 SETTABLEKS                       R7 R6 K39 ["displayNameFunction"]
       74 RETURN                           R6 1

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
       22 GETTABLEKS                       R3 R0 K9 ["Flags"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Parent"]
       29 GETTABLEKS                       R4 R4 K10 ["ModelContextProtocol"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K7 ["Util"]
       36 GETTABLEKS                       R5 R5 K11 ["MultiPlayersConnection"]
       38 GETTABLEKS                       R5 R5 K12 ["MultiPlayerAgentTypes"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K7 ["Util"]
       45 GETTABLEKS                       R6 R6 K11 ["MultiPlayersConnection"]
       47 GETTABLEKS                       R6 R6 K13 ["MultiPlayersAgentServer"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K14 ["Tools"]
       54 GETTABLEKS                       R7 R7 K15 ["ToolTypes"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K16 ["Resources"]
       61 GETTABLEKS                       R8 R8 K17 ["Localization"]
       63 GETTABLEKS                       R8 R8 K18 ["Translator"]
       65 CALL                             R7 1 1
       66 GETTABLEKS                       R8 R3 K7 ["Util"]
       68 GETTABLEKS                       R8 R8 K19 ["ToolBuilder"]
       70 GETTABLEKS                       R9 R3 K7 ["Util"]
       72 GETTABLEKS                       R9 R9 K20 ["ToolResult"]
       74 GETTABLEKS                       R10 R6 K21 ["ToolNames"]
       76 DUPCLOSURE                       R11 K22 [PROTO_6]
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R7
       84 RETURN                           R11 1
