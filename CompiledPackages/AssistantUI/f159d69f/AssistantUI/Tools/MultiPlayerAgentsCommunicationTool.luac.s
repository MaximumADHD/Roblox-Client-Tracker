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
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getIsMultiPlayerClientAgent"]
        3 CALL                             R1 0 1
        4 LOADNIL                          R2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["FFlagAssistantUseNewDMNetworking"]
        8 JUMPIFNOT                        R3 ; [+20]
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["Identity"]
       13 GETTABLEKS                       R3 R3 K3 ["PlayClient"]
       15 JUMP                             ; [+5]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K2 ["Identity"]
       19 GETTABLEKS                       R3 R3 K4 ["Edit"]
       21 GETUPVAL                         R4 3
       22 MOVE                             R6 R3
       23 MOVE                             R7 R0
       24 NAMECALL                         R4 R4 K5 ["InvokeAsync"]
       26 CALL                             R4 3 1
       27 MOVE                             R2 R4
       28 JUMP                             ; [+20]
       29 JUMPIFNOT                        R1 ; [+10]
       30 GETUPVAL                         R3 4
       31 GETUPVAL                         R4 5
       32 GETTABLEKS                       R4 R4 K6 ["Types"]
       34 GETTABLEKS                       R4 R4 K7 ["Client"]
       36 MOVE                             R5 R0
       37 CALL                             R3 2 1
       38 MOVE                             R2 R3
       39 JUMP                             ; [+9]
       40 GETUPVAL                         R3 4
       41 GETUPVAL                         R4 5
       42 GETTABLEKS                       R4 R4 K6 ["Types"]
       44 GETTABLEKS                       R4 R4 K4 ["Edit"]
       46 MOVE                             R5 R0
       47 CALL                             R3 2 1
       48 MOVE                             R2 R3
       49 GETUPVAL                         R3 6
       50 CALL                             R3 0 1
       51 MOVE                             R5 R2
       52 NAMECALL                         R3 R3 K8 ["addText"]
       54 CALL                             R3 2 1
       55 NAMECALL                         R3 R3 K9 ["build"]
       57 CALL                             R3 1 1
       58 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["destroying"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["init"]
        7 GETTABLEKS                       R4 R0 K3 ["networkingOLD"]
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 CALL                             R3 3 0
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K4 ["FFlagAssistantUseNewDMNetworking"]
       17 JUMPIFNOT                        R5 ; [+35]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K5 ["invoke"]
       21 MOVE                             R6 R1
       22 LOADK                            R7 K6 ["MultiPlayerAgentsCommunicationTool.SendTeamCommunication"]
       23 CALL                             R5 2 1
       24 MOVE                             R4 R5
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K7 ["new"]
       28 CALL                             R5 0 1
       29 NAMECALL                         R6 R1 K8 ["GetIdentity"]
       31 CALL                             R6 1 1
       32 GETUPVAL                         R7 4
       33 GETTABLEKS                       R7 R7 K9 ["Identity"]
       35 GETTABLEKS                       R7 R7 K10 ["Standalone"]
       37 JUMPIFEQ                         R6 R7 ; [+9]
       39 DUPCLOSURE                       R10 K11 [PROTO_1]
       40 CAPTURE                          UPVAL U5
       41 NAMECALL                         R8 R4 K12 ["Connect"]
       43 CALL                             R8 2 -1
       44 NAMECALL                         R6 R5 K13 ["Add"]
       46 CALL                             R6 -1 0
       47 NEWCLOSURE                       R8 P1
       48 CAPTURE                          VAL R5
       49 NAMECALL                         R6 R2 K14 ["Once"]
       51 CALL                             R6 2 0
       52 JUMP                             ; [+9]
       53 GETTABLEKS                       R5 R0 K3 ["networkingOLD"]
       55 LOADK                            R7 K15 ["MultiPlayerAgentsCommunicationTool_SendTeamCommunication"]
       56 DUPCLOSURE                       R8 K16 [PROTO_3]
       57 CAPTURE                          UPVAL U5
       58 NAMECALL                         R5 R5 K17 ["OnHostInvokeAsync"]
       60 CALL                             R5 3 1
       61 MOVE                             R3 R5
       62 NEWCLOSURE                       R5 P3
       63 CAPTURE                          UPVAL U0
       64 CAPTURE                          UPVAL U1
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          REF R4
       67 CAPTURE                          REF R3
       68 CAPTURE                          UPVAL U6
       69 CAPTURE                          UPVAL U7
       70 GETUPVAL                         R6 8
       71 GETTABLEKS                       R6 R6 K18 ["define"]
       73 CALL                             R6 0 1
       74 GETUPVAL                         R8 9
       75 GETTABLEKS                       R8 R8 K19 ["MultiPlayerAgentsCommunication"]
       77 NAMECALL                         R6 R6 K20 ["setName"]
       79 CALL                             R6 2 1
       80 LOADK                            R8 K21 ["Send multi-player agents communication to the multi-player agents."]
       81 NAMECALL                         R6 R6 K22 ["setDescription"]
       83 CALL                             R6 2 1
       84 LOADK                            R8 K23 ["target_player_id"]
       85 DUPTABLE                         R9 K28 [{["type"] = "number", ["description"] = "The player id to send the multi-player agents communication to, 0 is the leader agent, 1 is the first player agent, 2 is the second player agent, etc."}]
       86 NAMECALL                         R6 R6 K29 ["addArgument"]
       88 CALL                             R6 3 1
       89 LOADK                            R8 K30 ["content"]
       90 DUPTABLE                         R9 K33 [{["type"] = "string", ["description"] = "The content to send to the multi-player agents."}]
       91 NAMECALL                         R6 R6 K29 ["addArgument"]
       93 CALL                             R6 3 1
       94 LOADK                            R8 K34 ["Multi-Player Agents Communication"]
       95 NAMECALL                         R6 R6 K35 ["setTitle"]
       97 CALL                             R6 2 1
       98 DUPTABLE                         R8 K42 [{["title"] = "Multi-Player Agents Communication", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       99 NAMECALL                         R6 R6 K43 ["setAnnotations"]
      101 CALL                             R6 2 1
      102 MOVE                             R8 R5
      103 NAMECALL                         R6 R6 K44 ["setHandler"]
      105 CALL                             R6 2 1
      106 NAMECALL                         R6 R6 K45 ["build"]
      108 CALL                             R6 1 1
      109 DUPTABLE                         R7 K47 [{"definition"}]
      110 SETTABLEKS                       R6 R7 K46 ["definition"]
      112 CLOSEUPVALS                      R3
      113 RETURN                           R7 1

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
       33 GETTABLEKS                       R7 R0 K12 ["Flags"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K10 ["Util"]
       40 GETTABLEKS                       R8 R8 K13 ["MultiPlayersConnection"]
       42 GETTABLEKS                       R8 R8 K14 ["MultiPlayersAgentClient"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K10 ["Util"]
       49 GETTABLEKS                       R9 R9 K13 ["MultiPlayersConnection"]
       51 GETTABLEKS                       R9 R9 K15 ["MultiPlayersAgentServer"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K10 ["Util"]
       58 GETTABLEKS                       R10 R10 K13 ["MultiPlayersConnection"]
       60 GETTABLEKS                       R10 R10 K16 ["MultiPlayersModeUtils"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K17 ["Tools"]
       67 GETTABLEKS                       R11 R11 K18 ["ToolTypes"]
       69 CALL                             R10 1 1
       70 GETTABLEKS                       R11 R3 K19 ["Remote"]
       72 GETTABLEKS                       R12 R4 K10 ["Util"]
       74 GETTABLEKS                       R12 R12 K20 ["ToolBuilder"]
       76 GETTABLEKS                       R13 R4 K10 ["Util"]
       78 GETTABLEKS                       R13 R13 K21 ["ToolResult"]
       80 GETTABLEKS                       R14 R10 K22 ["ToolNames"]
       82 DUPCLOSURE                       R15 K23 [PROTO_0]
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R7
       86 DUPCLOSURE                       R16 K24 [PROTO_5]
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R15
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R14
       97 RETURN                           R16 1
