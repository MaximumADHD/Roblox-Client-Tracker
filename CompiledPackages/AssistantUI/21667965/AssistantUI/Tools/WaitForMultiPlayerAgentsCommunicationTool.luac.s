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
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_4:
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
       25 JUMP                             ; [+25]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K6 ["FFlagAssistantUseNewDMNetworking"]
       29 JUMPIFNOT                        R3 ; [+12]
       30 GETUPVAL                         R3 4
       31 GETUPVAL                         R5 5
       32 GETTABLEKS                       R5 R5 K7 ["Identity"]
       34 GETTABLEKS                       R5 R5 K8 ["Edit"]
       36 MOVE                             R6 R0
       37 NAMECALL                         R3 R3 K9 ["InvokeAsync"]
       39 CALL                             R3 3 1
       40 MOVE                             R2 R3
       41 JUMP                             ; [+9]
       42 GETUPVAL                         R3 6
       43 GETUPVAL                         R4 7
       44 GETTABLEKS                       R4 R4 K10 ["Types"]
       46 GETTABLEKS                       R4 R4 K8 ["Edit"]
       48 MOVE                             R5 R0
       49 CALL                             R3 2 1
       50 MOVE                             R2 R3
       51 GETUPVAL                         R3 8
       52 CALL                             R3 0 1
       53 MOVE                             R5 R2
       54 NAMECALL                         R3 R3 K11 ["addText"]
       56 CALL                             R3 2 1
       57 NAMECALL                         R3 R3 K12 ["build"]
       59 CALL                             R3 1 1
       60 RETURN                           R3 1

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
       22 LOADK                            R7 K6 ["WaitForMultiPlayerAgentsCommunicationTool.WaitForMultiPlayerAgentsCommunication"]
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
       55 LOADK                            R8 K15 ["WaitForMultiPlayerAgentsCommunicationTool_WaitForMultiPlayerAgentsCommunication"]
       56 DUPCLOSURE                       R9 K16 [PROTO_3]
       57 CAPTURE                          UPVAL U5
       58 NAMECALL                         R6 R5 K17 ["OnHostInvokeAsync"]
       60 CALL                             R6 3 1
       61 MOVE                             R3 R6
       62 NEWCLOSURE                       R5 P3
       63 CAPTURE                          UPVAL U0
       64 CAPTURE                          UPVAL U6
       65 CAPTURE                          UPVAL U7
       66 CAPTURE                          UPVAL U1
       67 CAPTURE                          REF R4
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          REF R3
       70 CAPTURE                          UPVAL U8
       71 CAPTURE                          UPVAL U9
       72 GETUPVAL                         R6 10
       73 GETTABLEKS                       R6 R6 K18 ["define"]
       75 CALL                             R6 0 1
       76 GETUPVAL                         R8 11
       77 GETTABLEKS                       R8 R8 K19 ["WaitForMultiPlayerAgentsCommunication"]
       79 NAMECALL                         R6 R6 K20 ["setName"]
       81 CALL                             R6 2 1
       82 LOADK                            R8 K21 ["Wait for multi-player agents communication from the multi-player agents, player 0 is the leader agent, player 1 is the first player, player 2 is the second player, etc."]
       83 NAMECALL                         R6 R6 K22 ["setDescription"]
       85 CALL                             R6 2 1
       86 DUPTABLE                         R8 K31 [{["title"] = "Wait For Multi-Player Agents Communication", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       87 NAMECALL                         R6 R6 K32 ["setAnnotations"]
       89 CALL                             R6 2 1
       90 MOVE                             R8 R5
       91 NAMECALL                         R6 R6 K33 ["setHandler"]
       93 CALL                             R6 2 1
       94 NAMECALL                         R6 R6 K34 ["build"]
       96 CALL                             R6 1 1
       97 DUPTABLE                         R7 K36 [{"definition"}]
       98 SETTABLEKS                       R6 R7 K35 ["definition"]
      100 CLOSEUPVALS                      R3
      101 RETURN                           R7 1

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
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["Bin"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Parent"]
       24 GETTABLEKS                       R4 R4 K13 ["DMNetworking"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETIMPORT                        R5 K5 [script]
       31 GETTABLEKS                       R5 R5 K12 ["Parent"]
       33 GETTABLEKS                       R5 R5 K12 ["Parent"]
       35 GETTABLEKS                       R5 R5 K10 ["Util"]
       37 GETTABLEKS                       R5 R5 K14 ["DataModelType"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R6 R1 K15 ["Flags"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K12 ["Parent"]
       49 GETTABLEKS                       R7 R7 K16 ["ModelContextProtocol"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R1 K10 ["Util"]
       56 GETTABLEKS                       R8 R8 K17 ["MultiPlayersConnection"]
       58 GETTABLEKS                       R8 R8 K18 ["MultiPlayersAgentClient"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R1 K10 ["Util"]
       65 GETTABLEKS                       R9 R9 K17 ["MultiPlayersConnection"]
       67 GETTABLEKS                       R9 R9 K19 ["MultiPlayersAgentServer"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K9 [require]
       72 GETTABLEKS                       R10 R1 K10 ["Util"]
       74 GETTABLEKS                       R10 R10 K17 ["MultiPlayersConnection"]
       76 GETTABLEKS                       R10 R10 K20 ["MultiPlayersModeUtils"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K9 [require]
       81 GETTABLEKS                       R11 R1 K21 ["Tools"]
       83 GETTABLEKS                       R11 R11 K22 ["ToolTypes"]
       85 CALL                             R10 1 1
       86 GETTABLEKS                       R11 R3 K23 ["Remote"]
       88 GETTABLEKS                       R12 R6 K10 ["Util"]
       90 GETTABLEKS                       R12 R12 K24 ["ToolBuilder"]
       92 GETTABLEKS                       R13 R6 K10 ["Util"]
       94 GETTABLEKS                       R13 R13 K25 ["ToolResult"]
       96 GETTABLEKS                       R14 R10 K26 ["ToolNames"]
       98 DUPCLOSURE                       R15 K27 [PROTO_0]
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R0
      102 CAPTURE                          VAL R9
      103 DUPCLOSURE                       R16 K28 [PROTO_5]
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R14
      116 RETURN                           R16 1
