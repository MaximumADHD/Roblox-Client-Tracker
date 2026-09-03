PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getDataModelType"]
        3 CALL                             R2 0 1
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["Types"]
        8 GETTABLEKS                       R4 R4 K2 ["Edit"]
       10 JUMPIFNOTEQ                      R2 R4 ; [+22]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K3 ["waitForPopTeamCommunications"]
       15 CALL                             R4 0 1
       16 MOVE                             R3 R4
       17 GETUPVAL                         R4 2
       18 MOVE                             R6 R3
       19 NAMECALL                         R4 R4 K4 ["JSONEncode"]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R5 R5 K5 ["log"]
       25 LOADK                            R7 K6 ["WaitForMultiPlayerAgentsCommunication result: %*"]
       26 MOVE                             R9 R4
       27 NAMECALL                         R7 R7 K7 ["format"]
       29 CALL                             R7 2 1
       30 MOVE                             R6 R7
       31 CALL                             R5 1 0
       32 RETURN                           R4 1
       33 GETIMPORT                        R4 K9 [error]
       35 LOADK                            R5 K10 ["Invalid data model type."]
       36 LOADN                            R6 0
       37 CALL                             R4 2 0
       38 RETURN                           R0 0

PROTO_1:
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
       25 JUMP                             ; [+9]
       26 GETUPVAL                         R3 3
       27 GETUPVAL                         R4 4
       28 GETTABLEKS                       R4 R4 K6 ["Types"]
       30 GETTABLEKS                       R4 R4 K7 ["Edit"]
       32 MOVE                             R5 R0
       33 CALL                             R3 2 1
       34 MOVE                             R2 R3
       35 GETUPVAL                         R3 5
       36 CALL                             R3 0 1
       37 MOVE                             R5 R2
       38 NAMECALL                         R3 R3 K8 ["addText"]
       40 CALL                             R3 2 1
       41 NAMECALL                         R3 R3 K9 ["build"]
       43 CALL                             R3 1 1
       44 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["init"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 LOADK                            R4 K2 ["WaitForMultiPlayerAgentsCommunicationTool_WaitForMultiPlayerAgentsCommunication"]
        8 DUPCLOSURE                       R5 K3 [PROTO_0]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U0
       13 NAMECALL                         R2 R1 K4 ["OnHostInvokeAsync"]
       15 CALL                             R2 3 1
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U5
       23 GETUPVAL                         R4 6
       24 GETTABLEKS                       R4 R4 K5 ["define"]
       26 CALL                             R4 0 1
       27 GETUPVAL                         R6 7
       28 GETTABLEKS                       R6 R6 K6 ["WaitForMultiPlayerAgentsCommunication"]
       30 NAMECALL                         R4 R4 K7 ["setName"]
       32 CALL                             R4 2 1
       33 LOADK                            R6 K8 ["Wait for multi-player agents communication from the multi-player agents, player 0 is the leader agent, player 1 is the first player, player 2 is the second player, etc."]
       34 NAMECALL                         R4 R4 K9 ["setDescription"]
       36 CALL                             R4 2 1
       37 DUPTABLE                         R6 K18 [{["title"] = "Wait For Multi-Player Agents Communication", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       38 NAMECALL                         R4 R4 K19 ["setAnnotations"]
       40 CALL                             R4 2 1
       41 MOVE                             R6 R3
       42 NAMECALL                         R4 R4 K20 ["setHandler"]
       44 CALL                             R4 2 1
       45 NAMECALL                         R4 R4 K21 ["build"]
       47 CALL                             R4 1 1
       48 DUPTABLE                         R5 K23 [{"definition"}]
       49 SETTABLEKS                       R4 R5 K22 ["definition"]
       51 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETIMPORT                        R3 K5 [script]
       17 GETTABLEKS                       R3 R3 K10 ["Parent"]
       19 GETTABLEKS                       R3 R3 K10 ["Parent"]
       21 GETTABLEKS                       R3 R3 K11 ["Util"]
       23 GETTABLEKS                       R3 R3 K12 ["DataModelType"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K9 [require]
       28 GETTABLEKS                       R4 R1 K10 ["Parent"]
       30 GETTABLEKS                       R4 R4 K13 ["ModelContextProtocol"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K9 [require]
       35 GETTABLEKS                       R5 R1 K11 ["Util"]
       37 GETTABLEKS                       R5 R5 K14 ["MultiPlayersConnection"]
       39 GETTABLEKS                       R5 R5 K15 ["MultiPlayersAgentClient"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K9 [require]
       44 GETTABLEKS                       R6 R1 K11 ["Util"]
       46 GETTABLEKS                       R6 R6 K14 ["MultiPlayersConnection"]
       48 GETTABLEKS                       R6 R6 K16 ["MultiPlayersAgentServer"]
       50 CALL                             R5 1 1
       51 GETIMPORT                        R6 K9 [require]
       53 GETTABLEKS                       R7 R1 K11 ["Util"]
       55 GETTABLEKS                       R7 R7 K14 ["MultiPlayersConnection"]
       57 GETTABLEKS                       R7 R7 K17 ["MultiPlayersModeUtils"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K9 [require]
       62 GETTABLEKS                       R8 R1 K18 ["Tools"]
       64 GETTABLEKS                       R8 R8 K19 ["ToolTypes"]
       66 CALL                             R7 1 1
       67 GETTABLEKS                       R8 R3 K11 ["Util"]
       69 GETTABLEKS                       R8 R8 K20 ["ToolBuilder"]
       71 GETTABLEKS                       R9 R3 K11 ["Util"]
       73 GETTABLEKS                       R9 R9 K21 ["ToolResult"]
       75 GETTABLEKS                       R10 R7 K22 ["ToolNames"]
       77 DUPCLOSURE                       R11 K23 [PROTO_2]
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R10
       86 RETURN                           R11 1
