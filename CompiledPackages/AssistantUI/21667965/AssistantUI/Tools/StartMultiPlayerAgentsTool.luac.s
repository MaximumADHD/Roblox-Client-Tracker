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
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["stopMultiPlayersAgent"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["Identity"]
        8 GETTABLEKS                       R2 R2 K2 ["Edit"]
       10 NAMECALL                         R0 R0 K3 ["InvokeAsync"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 3
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K4 ["Types"]
       18 GETTABLEKS                       R1 R1 K2 ["Edit"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R2 ; [+21]
        1 GETTABLEKS                       R3 R2 K0 ["signal"]
        3 JUMPIFNOT                        R3 ; [+18]
        4 GETTABLEKS                       R3 R2 K0 ["signal"]
        6 GETTABLEKS                       R3 R3 K1 ["abortSignal"]
        8 JUMPIFNOT                        R3 ; [+13]
        9 GETTABLEKS                       R3 R2 K0 ["signal"]
       11 GETTABLEKS                       R3 R3 K1 ["abortSignal"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 NAMECALL                         R3 R3 K2 ["Once"]
       21 CALL                             R3 2 0
       22 LOADNIL                          R3
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K3 ["FFlagAssistantUseNewDMNetworking"]
       26 JUMPIFNOT                        R4 ; [+12]
       27 GETUPVAL                         R4 5
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K4 ["Identity"]
       31 GETTABLEKS                       R6 R6 K5 ["Edit"]
       33 MOVE                             R7 R0
       34 NAMECALL                         R4 R4 K6 ["InvokeAsync"]
       36 CALL                             R4 3 1
       37 MOVE                             R3 R4
       38 JUMP                             ; [+9]
       39 GETUPVAL                         R4 6
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R5 R5 K7 ["Types"]
       43 GETTABLEKS                       R5 R5 K5 ["Edit"]
       45 MOVE                             R6 R0
       46 CALL                             R4 2 1
       47 MOVE                             R3 R4
       48 GETUPVAL                         R4 7
       49 CALL                             R4 0 1
       50 MOVE                             R6 R3
       51 NAMECALL                         R4 R4 K8 ["addText"]
       53 CALL                             R4 2 1
       54 NAMECALL                         R4 R4 K9 ["build"]
       56 CALL                             R4 1 1
       57 RETURN                           R4 1

PROTO_8:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["FFlagDisableStartStopPlayConfirmation"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        7 RETURN                           R0 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["destroying"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R7 R7 K2 ["FFlagAssistantUseNewDMNetworking"]
       11 JUMPIFNOT                        R7 ; [+50]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R7 R7 K3 ["invoke"]
       15 MOVE                             R8 R1
       16 LOADK                            R9 K4 ["StartMultiPlayerAgentsTool.StartMultiPlayerAgents"]
       17 CALL                             R7 2 1
       18 MOVE                             R4 R7
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K3 ["invoke"]
       22 MOVE                             R8 R1
       23 LOADK                            R9 K5 ["StartMultiPlayerAgentsTool.StopMultiPlayerAgents"]
       24 CALL                             R7 2 1
       25 MOVE                             R6 R7
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R7 R7 K6 ["new"]
       29 CALL                             R7 0 1
       30 NAMECALL                         R8 R1 K7 ["GetIdentity"]
       32 CALL                             R8 1 1
       33 GETUPVAL                         R9 3
       34 GETTABLEKS                       R9 R9 K8 ["Identity"]
       36 GETTABLEKS                       R9 R9 K9 ["Standalone"]
       38 JUMPIFEQ                         R8 R9 ; [+17]
       40 DUPCLOSURE                       R12 K10 [PROTO_1]
       41 CAPTURE                          UPVAL U4
       42 NAMECALL                         R10 R4 K11 ["Connect"]
       44 CALL                             R10 2 -1
       45 NAMECALL                         R8 R7 K12 ["Add"]
       47 CALL                             R8 -1 0
       48 DUPCLOSURE                       R12 K13 [PROTO_2]
       49 CAPTURE                          UPVAL U5
       50 NAMECALL                         R10 R6 K11 ["Connect"]
       52 CALL                             R10 2 -1
       53 NAMECALL                         R8 R7 K12 ["Add"]
       55 CALL                             R8 -1 0
       56 NEWCLOSURE                       R10 P2
       57 CAPTURE                          VAL R7
       58 NAMECALL                         R8 R2 K14 ["Once"]
       60 CALL                             R8 2 0
       61 JUMP                             ; [+16]
       62 GETTABLEKS                       R7 R0 K15 ["networkingOLD"]
       64 LOADK                            R10 K16 ["StartMultiPlayerAgentsTool_StartMultiPlayerAgents"]
       65 DUPCLOSURE                       R11 K17 [PROTO_4]
       66 CAPTURE                          UPVAL U4
       67 NAMECALL                         R8 R7 K18 ["OnHostInvokeAsync"]
       69 CALL                             R8 3 1
       70 MOVE                             R3 R8
       71 LOADK                            R10 K19 ["StartMultiPlayerAgentsTool_StopMultiPlayerAgents"]
       72 DUPCLOSURE                       R11 K20 [PROTO_5]
       73 CAPTURE                          UPVAL U5
       74 NAMECALL                         R8 R7 K18 ["OnHostInvokeAsync"]
       76 CALL                             R8 3 1
       77 MOVE                             R5 R8
       78 NEWCLOSURE                       R7 P5
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          REF R6
       81 CAPTURE                          UPVAL U3
       82 CAPTURE                          REF R5
       83 CAPTURE                          UPVAL U6
       84 CAPTURE                          REF R4
       85 CAPTURE                          REF R3
       86 CAPTURE                          UPVAL U7
       87 GETUPVAL                         R8 8
       88 GETTABLEKS                       R8 R8 K21 ["define"]
       90 CALL                             R8 0 1
       91 GETUPVAL                         R10 9
       92 GETTABLEKS                       R10 R10 K22 ["StartMultiPlayerAgents"]
       94 NAMECALL                         R8 R8 K23 ["setName"]
       96 CALL                             R8 2 1
       97 LOADK                            R10 K24 ["Start multi-player agents to play the game, each agent can take a prompt, You should call multi_player_agents_communication tool to orchestrate the players.\n\tat the end, call stop_multi_player_agents tool to stop the multi-player agents."]
       98 NAMECALL                         R8 R8 K25 ["setDescription"]
      100 CALL                             R8 2 1
      101 LOADK                            R10 K26 ["player_count"]
      102 DUPTABLE                         R11 K31 [{["type"] = "number", ["description"] = "The number of players to start, minimum is 1, maximum is 8."}]
      103 NAMECALL                         R8 R8 K32 ["addArgument"]
      105 CALL                             R8 3 1
      106 LOADK                            R10 K33 ["player_prompts"]
      107 DUPTABLE                         R11 K37 [{["type"] = "array", ["description"] = "The prompt for the player agents. Size should be the same as player_count. The first player's name is 'Player1', the second player's name is 'Player2', etc.", ["items"]}]
      108 DUPTABLE                         R12 K40 [{["type"] = "string", ["description"] = "The prompt for the player agent."}]
      109 SETTABLEKS                       R12 R11 K36 ["items"]
      111 NAMECALL                         R8 R8 K32 ["addArgument"]
      113 CALL                             R8 3 1
      114 DUPTABLE                         R10 K48 [{["title"] = "Start Multi-Player Agents", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      115 NAMECALL                         R8 R8 K49 ["setAnnotations"]
      117 CALL                             R8 2 1
      118 MOVE                             R10 R7
      119 NAMECALL                         R8 R8 K50 ["setHandler"]
      121 CALL                             R8 2 1
      122 NAMECALL                         R8 R8 K51 ["build"]
      124 CALL                             R8 1 1
      125 DUPTABLE                         R9 K54 [{"definition", "getPreExecuteWarning"}]
      126 SETTABLEKS                       R8 R9 K52 ["definition"]
      128 DUPCLOSURE                       R10 K55 [PROTO_8]
      129 CAPTURE                          UPVAL U0
      130 SETTABLEKS                       R10 R9 K53 ["getPreExecuteWarning"]
      132 CLOSEUPVALS                      R3
      133 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Bin"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K8 ["Parent"]
       27 GETTABLEKS                       R4 R4 K8 ["Parent"]
       29 GETTABLEKS                       R4 R4 K6 ["Util"]
       31 GETTABLEKS                       R4 R4 K10 ["DataModelType"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K11 ["Flags"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Parent"]
       43 GETTABLEKS                       R6 R6 K12 ["ModelContextProtocol"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Util"]
       50 GETTABLEKS                       R7 R7 K13 ["MultiPlayersConnection"]
       52 GETTABLEKS                       R7 R7 K14 ["MultiPlayerAgentTypes"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Util"]
       59 GETTABLEKS                       R8 R8 K13 ["MultiPlayersConnection"]
       61 GETTABLEKS                       R8 R8 K15 ["MultiPlayersAgentServer"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K16 ["Tools"]
       68 GETTABLEKS                       R9 R9 K17 ["ToolTypes"]
       70 CALL                             R8 1 1
       71 GETTABLEKS                       R9 R2 K18 ["Remote"]
       73 GETTABLEKS                       R10 R5 K6 ["Util"]
       75 GETTABLEKS                       R10 R10 K19 ["ToolBuilder"]
       77 GETTABLEKS                       R11 R5 K6 ["Util"]
       79 GETTABLEKS                       R11 R11 K20 ["ToolResult"]
       81 GETTABLEKS                       R12 R8 K21 ["ToolNames"]
       83 DUPCLOSURE                       R13 K22 [PROTO_0]
       84 CAPTURE                          VAL R7
       85 DUPCLOSURE                       R14 K23 [PROTO_9]
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R12
       96 RETURN                           R14 1
