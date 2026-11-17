PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["player_count"]
        2 LOADN                            R2 1
        3 JUMPIFLT                         R1 R2 ; [+6]
        5 GETTABLEKS                       R1 R0 K0 ["player_count"]
        7 LOADN                            R2 8
        8 JUMPIFNOTLT                      R2 R1 ; [+6]
       10 GETIMPORT                        R1 K2 [error]
       12 LOADK                            R2 K3 ["player_count must be between 1 and 8"]
       13 LOADN                            R3 0
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R2 R0 K4 ["player_prompts"]
       17 LENGTH                           R1 R2
       18 GETTABLEKS                       R2 R0 K0 ["player_count"]
       20 JUMPIFEQ                         R1 R2 ; [+6]
       22 GETIMPORT                        R1 K2 [error]
       24 LOADK                            R2 K5 ["player_prompts must be the same size as player_count"]
       25 LOADN                            R3 0
       26 CALL                             R1 2 0
       27 GETTABLEKS                       R1 R0 K4 ["player_prompts"]
       29 LOADNIL                          R2
       30 LOADNIL                          R3
       31 FORGPREP                         R1
       32 JUMPIFNOT                        R5 ; [+2]
       33 JUMPIFNOTEQKS                    R5 K6 [""] ; [+6]
       35 GETIMPORT                        R6 K2 [error]
       37 LOADK                            R7 K7 ["player_prompts must not be empty"]
       38 LOADN                            R8 0
       39 CALL                             R6 2 0
       40 FORGLOOP                         R1 2 ; [-9]
       42 GETUPVAL                         R1 0
       43 GETTABLEKS                       R1 R1 K8 ["startMultiPlayersAgent"]
       45 MOVE                             R2 R0
       46 CALL                             R1 1 0
       47 GETUPVAL                         R1 0
       48 GETTABLEKS                       R1 R1 K9 ["waitForAllPlayersStarted"]
       50 CALL                             R1 0 0
       51 LOADK                            R1 K10 ["Success"]
       52 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["stopMultiPlayersAgent"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Identity"]
        4 GETTABLEKS                       R2 R2 K1 ["Edit"]
        6 NAMECALL                         R0 R0 K2 ["InvokeAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_5:
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
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K3 ["Identity"]
       23 GETTABLEKS                       R5 R5 K4 ["Edit"]
       25 MOVE                             R6 R0
       26 NAMECALL                         R3 R3 K5 ["InvokeAsync"]
       28 CALL                             R3 3 1
       29 GETUPVAL                         R4 3
       30 CALL                             R4 0 1
       31 MOVE                             R6 R3
       32 NAMECALL                         R4 R4 K6 ["addText"]
       34 CALL                             R4 2 1
       35 NAMECALL                         R4 R4 K7 ["build"]
       37 CALL                             R4 1 1
       38 RETURN                           R4 1

PROTO_6:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["FFlagDisableStartStopPlayConfirmation"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        7 RETURN                           R0 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["destroying"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["invoke"]
        7 MOVE                             R4 R1
        8 LOADK                            R5 K3 ["StartMultiPlayerAgentsTool.StartMultiPlayerAgents"]
        9 CALL                             R3 2 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["invoke"]
       13 MOVE                             R5 R1
       14 LOADK                            R6 K4 ["StartMultiPlayerAgentsTool.StopMultiPlayerAgents"]
       15 CALL                             R4 2 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K5 ["new"]
       19 CALL                             R5 0 1
       20 NAMECALL                         R6 R1 K6 ["GetIdentity"]
       22 CALL                             R6 1 1
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K7 ["Identity"]
       26 GETTABLEKS                       R7 R7 K8 ["Standalone"]
       28 JUMPIFEQ                         R6 R7 ; [+17]
       30 DUPCLOSURE                       R10 K9 [PROTO_1]
       31 CAPTURE                          UPVAL U3
       32 NAMECALL                         R8 R3 K10 ["Connect"]
       34 CALL                             R8 2 -1
       35 NAMECALL                         R6 R5 K11 ["Add"]
       37 CALL                             R6 -1 0
       38 DUPCLOSURE                       R10 K12 [PROTO_2]
       39 CAPTURE                          UPVAL U4
       40 NAMECALL                         R8 R4 K10 ["Connect"]
       42 CALL                             R8 2 -1
       43 NAMECALL                         R6 R5 K11 ["Add"]
       45 CALL                             R6 -1 0
       46 NEWCLOSURE                       R8 P2
       47 CAPTURE                          VAL R5
       48 NAMECALL                         R6 R2 K13 ["Once"]
       50 CALL                             R6 2 0
       51 NEWCLOSURE                       R6 P3
       52 CAPTURE                          VAL R4
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          VAL R3
       55 CAPTURE                          UPVAL U5
       56 GETUPVAL                         R7 6
       57 GETTABLEKS                       R7 R7 K14 ["define"]
       59 CALL                             R7 0 1
       60 GETUPVAL                         R9 7
       61 GETTABLEKS                       R9 R9 K15 ["StartMultiPlayerAgents"]
       63 NAMECALL                         R7 R7 K16 ["setName"]
       65 CALL                             R7 2 1
       66 LOADK                            R9 K17 ["Start multi-player agents to play the game, each agent can take a prompt, You should call multi_player_agents_communication tool to orchestrate the players.\n\tat the end, call stop_multi_player_agents tool to stop the multi-player agents."]
       67 NAMECALL                         R7 R7 K18 ["setDescription"]
       69 CALL                             R7 2 1
       70 LOADK                            R9 K19 ["player_count"]
       71 DUPTABLE                         R10 K24 [{["type"] = "number", ["description"] = "The number of players to start, minimum is 1, maximum is 8."}]
       72 NAMECALL                         R7 R7 K25 ["addArgument"]
       74 CALL                             R7 3 1
       75 LOADK                            R9 K26 ["player_prompts"]
       76 DUPTABLE                         R10 K30 [{["type"] = "array", ["description"] = "The prompt for the player agents. Size should be the same as player_count. The first player's name is 'Player1', the second player's name is 'Player2', etc.", ["items"]}]
       77 DUPTABLE                         R11 K33 [{["type"] = "string", ["description"] = "The prompt for the player agent."}]
       78 SETTABLEKS                       R11 R10 K29 ["items"]
       80 NAMECALL                         R7 R7 K25 ["addArgument"]
       82 CALL                             R7 3 1
       83 LOADK                            R9 K34 ["Start Multi-Player Agents"]
       84 NAMECALL                         R7 R7 K35 ["setTitle"]
       86 CALL                             R7 2 1
       87 DUPTABLE                         R9 K42 [{["title"] = "Start Multi-Player Agents", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       88 NAMECALL                         R7 R7 K43 ["setAnnotations"]
       90 CALL                             R7 2 1
       91 MOVE                             R9 R6
       92 NAMECALL                         R7 R7 K44 ["setHandler"]
       94 CALL                             R7 2 1
       95 NAMECALL                         R7 R7 K45 ["build"]
       97 CALL                             R7 1 1
       98 DUPTABLE                         R8 K48 [{"definition", "getPreExecuteWarning"}]
       99 SETTABLEKS                       R7 R8 K46 ["definition"]
      101 DUPCLOSURE                       R9 K49 [PROTO_6]
      102 CAPTURE                          UPVAL U8
      103 SETTABLEKS                       R9 R8 K47 ["getPreExecuteWarning"]
      105 RETURN                           R8 1

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
       26 GETTABLEKS                       R6 R0 K10 ["Flags"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Util"]
       33 GETTABLEKS                       R7 R7 K12 ["MultiPlayersConnection"]
       35 GETTABLEKS                       R7 R7 K13 ["MultiPlayerAgentTypes"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K11 ["Util"]
       42 GETTABLEKS                       R8 R8 K12 ["MultiPlayersConnection"]
       44 GETTABLEKS                       R8 R8 K14 ["MultiPlayersAgentServer"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K15 ["Tools"]
       51 GETTABLEKS                       R9 R9 K16 ["ToolTypes"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R3 K17 ["Remote"]
       56 GETTABLEKS                       R10 R4 K11 ["Util"]
       58 GETTABLEKS                       R10 R10 K18 ["ToolBuilder"]
       60 GETTABLEKS                       R11 R4 K11 ["Util"]
       62 GETTABLEKS                       R11 R11 K19 ["ToolResult"]
       64 GETTABLEKS                       R12 R8 K20 ["ToolNames"]
       66 DUPCLOSURE                       R13 K21 [PROTO_0]
       67 CAPTURE                          VAL R7
       68 DUPCLOSURE                       R14 K22 [PROTO_7]
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R13
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R5
       78 RETURN                           R14 1
