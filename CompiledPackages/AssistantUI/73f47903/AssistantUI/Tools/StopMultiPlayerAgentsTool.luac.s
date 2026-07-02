PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["stopMultiPlayersAgent"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["waitForDone"]
        7 CALL                             R2 0 0
        8 LOADK                            R2 K2 ["Success"]
        9 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Types"]
        4 GETTABLEKS                       R2 R2 K1 ["Edit"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 MOVE                             R4 R1
       11 NAMECALL                         R2 R2 K2 ["addText"]
       13 CALL                             R2 2 1
       14 NAMECALL                         R2 R2 K3 ["build"]
       16 CALL                             R2 1 1
       17 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["StopMultiPlayerAgents"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADK                            R4 K1 ["StopMultiPlayerAgentsTool_StopMultiPlayerAgents"]
        3 DUPCLOSURE                       R5 K2 [PROTO_0]
        4 CAPTURE                          UPVAL U0
        5 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        7 CALL                             R2 3 1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K4 ["define"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R6 R6 K5 ["StopMultiPlayerAgents"]
       19 NAMECALL                         R4 R4 K6 ["setName"]
       21 CALL                             R4 2 1
       22 LOADK                            R6 K7 ["Stop the multi-player agents."]
       23 NAMECALL                         R4 R4 K8 ["setDescription"]
       25 CALL                             R4 2 1
       26 DUPTABLE                         R6 K16 [{["title"] = "Stop Multi-Player Agents", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       27 NAMECALL                         R4 R4 K17 ["setAnnotations"]
       29 CALL                             R4 2 1
       30 MOVE                             R6 R3
       31 NAMECALL                         R4 R4 K18 ["setHandler"]
       33 CALL                             R4 2 1
       34 NAMECALL                         R4 R4 K19 ["build"]
       36 CALL                             R4 1 1
       37 DUPTABLE                         R5 K22 [{"definition", "displayNameFunction"}]
       38 SETTABLEKS                       R4 R5 K20 ["definition"]
       40 GETUPVAL                         R7 5
       41 CALL                             R7 0 1
       42 JUMPIFNOT                        R7 ; [+2]
       43 LOADNIL                          R6
       44 JUMP                             ; [+2]
       45 DUPCLOSURE                       R6 K23 [PROTO_2]
       46 CAPTURE                          UPVAL U6
       47 SETTABLEKS                       R6 R5 K21 ["displayNameFunction"]
       49 RETURN                           R5 1

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
       33 GETTABLEKS                       R4 R4 K11 ["MultiPlayersAgentServer"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K12 ["Tools"]
       40 GETTABLEKS                       R5 R5 K13 ["ToolTypes"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K14 ["Resources"]
       47 GETTABLEKS                       R6 R6 K15 ["Localization"]
       49 GETTABLEKS                       R6 R6 K16 ["Translator"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K17 ["Flags"]
       56 GETTABLEKS                       R7 R7 K18 ["FFlagAssistantSplitToolsAndWidgets"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R7 R2 K7 ["Util"]
       61 GETTABLEKS                       R7 R7 K19 ["ToolBuilder"]
       63 GETTABLEKS                       R8 R2 K7 ["Util"]
       65 GETTABLEKS                       R8 R8 K20 ["ToolResult"]
       67 GETTABLEKS                       R9 R4 K21 ["ToolNames"]
       69 DUPCLOSURE                       R10 K22 [PROTO_3]
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R5
       77 RETURN                           R10 1
