PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["stopMultiPlayersAgent"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["waitForDone"]
        7 CALL                             R1 0 0
        8 LOADK                            R1 K2 ["Success"]
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["stopMultiPlayersAgent"]
        3 CALL                             R3 0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["waitForDone"]
        7 CALL                             R3 0 0
        8 LOADK                            R2 K2 ["Success"]
        9 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Identity"]
        4 GETTABLEKS                       R3 R3 K1 ["Edit"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 1
       10 GETUPVAL                         R2 2
       11 CALL                             R2 0 1
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R2 K3 ["addText"]
       15 CALL                             R2 2 1
       16 NAMECALL                         R2 R2 K4 ["build"]
       18 CALL                             R2 1 1
       19 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["destroying"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["invoke"]
        7 MOVE                             R4 R1
        8 LOADK                            R5 K3 ["StopMultiPlayerAgentsTool.StopMultiPlayerAgents"]
        9 CALL                             R3 2 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["new"]
       13 CALL                             R4 0 1
       14 NAMECALL                         R5 R1 K5 ["GetIdentity"]
       16 CALL                             R5 1 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K6 ["Identity"]
       20 GETTABLEKS                       R6 R6 K7 ["Standalone"]
       22 JUMPIFEQ                         R5 R6 ; [+9]
       24 DUPCLOSURE                       R9 K8 [PROTO_1]
       25 CAPTURE                          UPVAL U3
       26 NAMECALL                         R7 R3 K9 ["Connect"]
       28 CALL                             R7 2 -1
       29 NAMECALL                         R5 R4 K10 ["Add"]
       31 CALL                             R5 -1 0
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R4
       34 NAMECALL                         R5 R2 K11 ["Once"]
       36 CALL                             R5 2 0
       37 NEWCLOSURE                       R5 P2
       38 CAPTURE                          VAL R3
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U4
       41 GETUPVAL                         R6 5
       42 GETTABLEKS                       R6 R6 K12 ["define"]
       44 CALL                             R6 0 1
       45 GETUPVAL                         R8 6
       46 GETTABLEKS                       R8 R8 K13 ["StopMultiPlayerAgents"]
       48 NAMECALL                         R6 R6 K14 ["setName"]
       50 CALL                             R6 2 1
       51 LOADK                            R8 K15 ["Stop the multi-player agents."]
       52 NAMECALL                         R6 R6 K16 ["setDescription"]
       54 CALL                             R6 2 1
       55 LOADK                            R8 K17 ["Stop Multi-Player Agents"]
       56 NAMECALL                         R6 R6 K18 ["setTitle"]
       58 CALL                             R6 2 1
       59 DUPTABLE                         R8 K25 [{["title"] = "Stop Multi-Player Agents", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       60 NAMECALL                         R6 R6 K26 ["setAnnotations"]
       62 CALL                             R6 2 1
       63 MOVE                             R8 R5
       64 NAMECALL                         R6 R6 K27 ["setHandler"]
       66 CALL                             R6 2 1
       67 NAMECALL                         R6 R6 K28 ["build"]
       69 CALL                             R6 1 1
       70 DUPTABLE                         R7 K30 [{"definition"}]
       71 SETTABLEKS                       R6 R7 K29 ["definition"]
       73 RETURN                           R7 1

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
       28 GETTABLEKS                       R6 R6 K11 ["MultiPlayersConnection"]
       30 GETTABLEKS                       R6 R6 K12 ["MultiPlayersAgentServer"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Tools"]
       37 GETTABLEKS                       R7 R7 K14 ["ToolTypes"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R3 K15 ["Remote"]
       42 GETTABLEKS                       R8 R4 K10 ["Util"]
       44 GETTABLEKS                       R8 R8 K16 ["ToolBuilder"]
       46 GETTABLEKS                       R9 R4 K10 ["Util"]
       48 GETTABLEKS                       R9 R9 K17 ["ToolResult"]
       50 GETTABLEKS                       R10 R6 K18 ["ToolNames"]
       52 DUPCLOSURE                       R11 K19 [PROTO_0]
       53 CAPTURE                          VAL R5
       54 DUPCLOSURE                       R12 K20 [PROTO_4]
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R10
       62 RETURN                           R12 1
