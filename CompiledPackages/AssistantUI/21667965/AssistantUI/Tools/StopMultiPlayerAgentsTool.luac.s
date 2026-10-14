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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["stopMultiPlayersAgent"]
        3 CALL                             R3 0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["waitForDone"]
        7 CALL                             R3 0 0
        8 LOADK                            R2 K2 ["Success"]
        9 RETURN                           R2 1

PROTO_4:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantUseNewDMNetworking"]
        4 JUMPIFNOT                        R2 ; [+12]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K1 ["Identity"]
        9 GETTABLEKS                       R4 R4 K2 ["Edit"]
       11 MOVE                             R5 R0
       12 NAMECALL                         R2 R2 K3 ["InvokeAsync"]
       14 CALL                             R2 3 1
       15 MOVE                             R1 R2
       16 JUMP                             ; [+9]
       17 GETUPVAL                         R2 3
       18 GETUPVAL                         R3 4
       19 GETTABLEKS                       R3 R3 K4 ["Types"]
       21 GETTABLEKS                       R3 R3 K2 ["Edit"]
       23 MOVE                             R4 R0
       24 CALL                             R2 2 1
       25 MOVE                             R1 R2
       26 GETUPVAL                         R2 5
       27 CALL                             R2 0 1
       28 MOVE                             R4 R1
       29 NAMECALL                         R2 R2 K5 ["addText"]
       31 CALL                             R2 2 1
       32 NAMECALL                         R2 R2 K6 ["build"]
       34 CALL                             R2 1 1
       35 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["destroying"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["FFlagAssistantUseNewDMNetworking"]
        9 JUMPIFNOT                        R5 ; [+35]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["invoke"]
       13 MOVE                             R6 R1
       14 LOADK                            R7 K4 ["StopMultiPlayerAgentsTool.StopMultiPlayerAgents"]
       15 CALL                             R5 2 1
       16 MOVE                             R4 R5
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K5 ["new"]
       20 CALL                             R5 0 1
       21 NAMECALL                         R6 R1 K6 ["GetIdentity"]
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K7 ["Identity"]
       27 GETTABLEKS                       R7 R7 K8 ["Standalone"]
       29 JUMPIFEQ                         R6 R7 ; [+9]
       31 DUPCLOSURE                       R10 K9 [PROTO_1]
       32 CAPTURE                          UPVAL U4
       33 NAMECALL                         R8 R4 K10 ["Connect"]
       35 CALL                             R8 2 -1
       36 NAMECALL                         R6 R5 K11 ["Add"]
       38 CALL                             R6 -1 0
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R5
       41 NAMECALL                         R6 R2 K12 ["Once"]
       43 CALL                             R6 2 0
       44 JUMP                             ; [+9]
       45 GETTABLEKS                       R5 R0 K13 ["networkingOLD"]
       47 LOADK                            R8 K14 ["StopMultiPlayerAgentsTool_StopMultiPlayerAgents"]
       48 DUPCLOSURE                       R9 K15 [PROTO_3]
       49 CAPTURE                          UPVAL U4
       50 NAMECALL                         R6 R5 K16 ["OnHostInvokeAsync"]
       52 CALL                             R6 3 1
       53 MOVE                             R3 R6
       54 NEWCLOSURE                       R5 P3
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          REF R4
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          REF R3
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          UPVAL U6
       61 GETUPVAL                         R6 7
       62 GETTABLEKS                       R6 R6 K17 ["define"]
       64 CALL                             R6 0 1
       65 GETUPVAL                         R8 8
       66 GETTABLEKS                       R8 R8 K18 ["StopMultiPlayerAgents"]
       68 NAMECALL                         R6 R6 K19 ["setName"]
       70 CALL                             R6 2 1
       71 LOADK                            R8 K20 ["Stop the multi-player agents."]
       72 NAMECALL                         R6 R6 K21 ["setDescription"]
       74 CALL                             R6 2 1
       75 DUPTABLE                         R8 K29 [{["title"] = "Stop Multi-Player Agents", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       76 NAMECALL                         R6 R6 K30 ["setAnnotations"]
       78 CALL                             R6 2 1
       79 MOVE                             R8 R5
       80 NAMECALL                         R6 R6 K31 ["setHandler"]
       82 CALL                             R6 2 1
       83 NAMECALL                         R6 R6 K32 ["build"]
       85 CALL                             R6 1 1
       86 DUPTABLE                         R7 K34 [{"definition"}]
       87 SETTABLEKS                       R6 R7 K33 ["definition"]
       89 CLOSEUPVALS                      R3
       90 RETURN                           R7 1

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
       52 GETTABLEKS                       R7 R7 K14 ["MultiPlayersAgentServer"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K15 ["Tools"]
       59 GETTABLEKS                       R8 R8 K16 ["ToolTypes"]
       61 CALL                             R7 1 1
       62 GETTABLEKS                       R8 R2 K17 ["Remote"]
       64 GETTABLEKS                       R9 R5 K6 ["Util"]
       66 GETTABLEKS                       R9 R9 K18 ["ToolBuilder"]
       68 GETTABLEKS                       R10 R5 K6 ["Util"]
       70 GETTABLEKS                       R10 R10 K19 ["ToolResult"]
       72 GETTABLEKS                       R11 R7 K20 ["ToolNames"]
       74 DUPCLOSURE                       R12 K21 [PROTO_0]
       75 CAPTURE                          VAL R6
       76 DUPCLOSURE                       R13 K22 [PROTO_5]
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R11
       86 RETURN                           R13 1
