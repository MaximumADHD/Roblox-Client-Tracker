PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getDataModelType"]
        3 CALL                             R1 0 1
        4 LOADNIL                          R2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["Types"]
        8 GETTABLEKS                       R3 R3 K2 ["Edit"]
       10 JUMPIFNOTEQ                      R1 R3 ; [+21]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["waitForPopTeamCommunications"]
       15 CALL                             R3 0 1
       16 MOVE                             R2 R3
       17 GETUPVAL                         R3 2
       18 MOVE                             R5 R2
       19 NAMECALL                         R3 R3 K4 ["JSONEncode"]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K5 ["log"]
       25 LOADK                            R5 K6 ["WaitForMultiPlayerAgentsCommunication result: %*"]
       26 MOVE                             R7 R3
       27 NAMECALL                         R5 R5 K7 ["format"]
       29 CALL                             R5 2 1
       30 CALL                             R4 1 0
       31 RETURN                           R3 1
       32 GETIMPORT                        R3 K9 [error]
       34 LOADK                            R4 K10 ["Invalid data model type."]
       35 LOADN                            R5 0
       36 CALL                             R3 2 0
       37 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getIsMultiPlayerClientAgent"]
        3 CALL                             R1 0 1
        4 LOADNIL                          R2
        5 JUMPIFNOT                        R1 ; [+20]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["log"]
        9 LOADK                            R4 K2 ["MultiPlayersAgentClient.waitForTeamCommunicationsAndInformLeader()"]
       10 CALL                             R3 1 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K3 ["waitForTeamCommunicationsAndInformLeader"]
       14 CALL                             R3 0 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K4 ["popMultiPlayerAgentsCommunications"]
       18 CALL                             R4 0 0
       19 GETUPVAL                         R4 2
       20 MOVE                             R6 R3
       21 NAMECALL                         R4 R4 K5 ["JSONEncode"]
       23 CALL                             R4 2 1
       24 MOVE                             R2 R4
       25 JUMP                             ; [+11]
       26 GETUPVAL                         R3 3
       27 GETUPVAL                         R5 4
       28 GETTABLEKS                       R5 R5 K6 ["Identity"]
       30 GETTABLEKS                       R5 R5 K7 ["Edit"]
       32 MOVE                             R6 R0
       33 NAMECALL                         R3 R3 K8 ["InvokeAsync"]
       35 CALL                             R3 3 1
       36 MOVE                             R2 R3
       37 GETUPVAL                         R3 5
       38 CALL                             R3 0 1
       39 MOVE                             R5 R2
       40 NAMECALL                         R3 R3 K9 ["addText"]
       42 CALL                             R3 2 1
       43 NAMECALL                         R3 R3 K10 ["build"]
       45 CALL                             R3 1 1
       46 RETURN                           R3 1

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
       14 LOADK                            R5 K4 ["WaitForMultiPlayerAgentsCommunicationTool.WaitForMultiPlayerAgentsCommunication"]
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
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          VAL R3
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          UPVAL U7
       50 GETUPVAL                         R6 8
       51 GETTABLEKS                       R6 R6 K13 ["define"]
       53 CALL                             R6 0 1
       54 GETUPVAL                         R8 9
       55 GETTABLEKS                       R8 R8 K14 ["WaitForMultiPlayerAgentsCommunication"]
       57 NAMECALL                         R6 R6 K15 ["setName"]
       59 CALL                             R6 2 1
       60 LOADK                            R8 K16 ["Wait for multi-player agents communication from the multi-player agents, player 0 is the leader agent, player 1 is the first player, player 2 is the second player, etc."]
       61 NAMECALL                         R6 R6 K17 ["setDescription"]
       63 CALL                             R6 2 1
       64 LOADK                            R8 K18 ["Wait For Multi-Player Agents Communication"]
       65 NAMECALL                         R6 R6 K19 ["setTitle"]
       67 CALL                             R6 2 1
       68 DUPTABLE                         R8 K27 [{["title"] = "Wait For Multi-Player Agents Communication", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       69 NAMECALL                         R6 R6 K28 ["setAnnotations"]
       71 CALL                             R6 2 1
       72 MOVE                             R8 R5
       73 NAMECALL                         R6 R6 K29 ["setHandler"]
       75 CALL                             R6 2 1
       76 NAMECALL                         R6 R6 K30 ["build"]
       78 CALL                             R6 1 1
       79 DUPTABLE                         R7 K32 [{"definition"}]
       80 SETTABLEKS                       R6 R7 K31 ["definition"]
       82 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
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
       27 GETTABLEKS                       R6 R2 K13 ["ModelContextProtocol"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R0 K14 ["Util"]
       34 GETTABLEKS                       R7 R7 K15 ["DataModelType"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K10 [require]
       39 GETTABLEKS                       R8 R0 K14 ["Util"]
       41 GETTABLEKS                       R8 R8 K16 ["MultiPlayersConnection"]
       43 GETTABLEKS                       R8 R8 K17 ["MultiPlayersAgentClient"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K10 [require]
       48 GETTABLEKS                       R9 R0 K14 ["Util"]
       50 GETTABLEKS                       R9 R9 K16 ["MultiPlayersConnection"]
       52 GETTABLEKS                       R9 R9 K18 ["MultiPlayersAgentServer"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K10 [require]
       57 GETTABLEKS                       R10 R0 K14 ["Util"]
       59 GETTABLEKS                       R10 R10 K16 ["MultiPlayersConnection"]
       61 GETTABLEKS                       R10 R10 K19 ["MultiPlayersModeUtils"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K10 [require]
       66 GETTABLEKS                       R11 R0 K20 ["Tools"]
       68 GETTABLEKS                       R11 R11 K21 ["ToolTypes"]
       70 CALL                             R10 1 1
       71 GETTABLEKS                       R11 R4 K22 ["Remote"]
       73 GETTABLEKS                       R12 R5 K14 ["Util"]
       75 GETTABLEKS                       R12 R12 K23 ["ToolBuilder"]
       77 GETTABLEKS                       R13 R5 K14 ["Util"]
       79 GETTABLEKS                       R13 R13 K24 ["ToolResult"]
       81 GETTABLEKS                       R14 R10 K25 ["ToolNames"]
       83 DUPCLOSURE                       R15 K26 [PROTO_0]
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R9
       88 DUPCLOSURE                       R16 K27 [PROTO_4]
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R15
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R14
       99 RETURN                           R16 1
