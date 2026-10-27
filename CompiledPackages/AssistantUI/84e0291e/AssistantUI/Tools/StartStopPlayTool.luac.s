PROTO_0:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R2 1
        1 LOADN                            R0 5
        2 LOADN                            R1 1
        3 FORNPREP                         R0
        4 GETUPVAL                         R3 0
        5 JUMPIFNOT                        R3 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K0 ["startStopPlayAsync"]
       10 LOADB                            R4 1
       11 CALL                             R3 1 0
       12 GETIMPORT                        R3 K3 [task.wait]
       14 LOADN                            R4 1
       15 CALL                             R3 1 0
       16 FORNLOOP                         R0
       17 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["is_start"]
        2 JUMPIFNOT                        R1 ; [+51]
        3 LOADB                            R2 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["new"]
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["subscribeGameLoaded"]
       11 GETUPVAL                         R5 2
       12 GETUPVAL                         R6 3
       13 NEWCLOSURE                       R7 P0
       14 CAPTURE                          REF R2
       15 CAPTURE                          VAL R3
       16 CALL                             R4 3 1
       17 GETUPVAL                         R5 4
       18 GETTABLEKS                       R5 R5 K3 ["FFlagAssistantConsoleOutputTailFromEnd"]
       20 JUMPIFNOT                        R5 ; [+4]
       21 GETUPVAL                         R5 5
       22 GETTABLEKS                       R5 R5 K4 ["clear"]
       24 CALL                             R5 0 0
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K5 ["FFlagAssistantFixStartPlayHang"]
       28 JUMPIFNOT                        R5 ; [+7]
       29 GETIMPORT                        R5 K8 [task.spawn]
       31 NEWCLOSURE                       R6 P1
       32 CAPTURE                          REF R2
       33 CAPTURE                          UPVAL U1
       34 CALL                             R5 1 0
       35 JUMP                             ; [+5]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K9 ["startStopPlayAsync"]
       39 LOADB                            R6 1
       40 CALL                             R5 1 0
       41 JUMPIF                           R2 ; [+3]
       42 NAMECALL                         R5 R3 K10 ["Wait"]
       44 CALL                             R5 1 0
       45 MOVE                             R5 R4
       46 CALL                             R5 0 0
       47 GETIMPORT                        R5 K12 [task.wait]
       49 LOADN                            R6 1
       50 CALL                             R5 1 0
       51 LOADK                            R5 K13 ["Game Started"]
       52 CLOSEUPVALS                      R2
       53 RETURN                           R5 1
       54 GETUPVAL                         R2 1
       55 GETTABLEKS                       R2 R2 K9 ["startStopPlayAsync"]
       57 LOADB                            R3 0
       58 CALL                             R2 1 0
       59 GETUPVAL                         R2 4
       60 GETTABLEKS                       R2 R2 K14 ["FFlagAssistantStartStopPlayBusyCheck"]
       62 JUMPIFNOT                        R2 ; [+4]
       63 GETIMPORT                        R2 K12 [task.wait]
       65 LOADN                            R3 1
       66 CALL                             R2 1 0
       67 LOADK                            R2 K15 ["Game Stopped"]
       68 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+13]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETIMPORT                        R1 K1 [error]
        6 LOADK                            R2 K2 ["Start play hasn't finished yet"]
        7 LOADN                            R3 0
        8 CALL                             R1 2 0
        9 JUMP                             ; [+5]
       10 GETIMPORT                        R1 K1 [error]
       12 LOADK                            R2 K3 ["Stop play hasn't finished yet"]
       13 LOADN                            R3 0
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K4 ["is_start"]
       17 SETUPVAL                         R1 1
       18 LOADB                            R1 1
       19 SETUPVAL                         R1 0
       20 GETIMPORT                        R1 K6 [pcall]
       22 NEWCLOSURE                       R2 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 CALL                             R1 1 2
       26 LOADB                            R3 0
       27 SETUPVAL                         R3 0
       28 JUMPIF                           R1 ; [+5]
       29 GETIMPORT                        R3 K1 [error]
       31 MOVE                             R4 R2
       32 LOADN                            R5 0
       33 CALL                             R3 2 0
       34 RETURN                           R2 1

PROTO_5:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantStartStopPlayBusyCheck"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 MOVE                             R1 R2
        9 JUMP                             ; [+4]
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 MOVE                             R1 R2
       14 GETUPVAL                         R2 3
       15 CALL                             R2 0 1
       16 MOVE                             R4 R1
       17 NAMECALL                         R2 R2 K1 ["addText"]
       19 CALL                             R2 2 1
       20 NAMECALL                         R2 R2 K2 ["build"]
       22 CALL                             R2 1 1
       23 RETURN                           R2 1

PROTO_6:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["FFlagDisableStartStopPlayConfirmation"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        7 RETURN                           R0 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["networkingOLD"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["environment"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 LOADB                            R5 0
       14 LOADNIL                          R6
       15 NEWCLOSURE                       R7 P1
       16 CAPTURE                          REF R5
       17 CAPTURE                          REF R6
       18 CAPTURE                          VAL R4
       19 NEWCLOSURE                       R8 P2
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R7
       22 CAPTURE                          VAL R4
       23 CAPTURE                          UPVAL U3
       24 GETUPVAL                         R9 4
       25 GETTABLEKS                       R9 R9 K3 ["define"]
       27 CALL                             R9 0 1
       28 GETUPVAL                         R11 5
       29 GETTABLEKS                       R11 R11 K4 ["StartStopPlay"]
       31 NAMECALL                         R9 R9 K5 ["setName"]
       33 CALL                             R9 2 1
       34 LOADK                            R11 K6 ["Start play the game or stop the play."]
       35 NAMECALL                         R9 R9 K7 ["setDescription"]
       37 CALL                             R9 2 1
       38 LOADK                            R11 K8 ["is_start"]
       39 DUPTABLE                         R12 K13 [{["type"] = "boolean", ["description"] = "true to start the game, false to stop the game and return to edit mode."}]
       40 NAMECALL                         R9 R9 K14 ["addArgument"]
       42 CALL                             R9 3 1
       43 LOADK                            R11 K15 ["Start/Stop Play"]
       44 NAMECALL                         R9 R9 K16 ["setTitle"]
       46 CALL                             R9 2 1
       47 DUPTABLE                         R11 K23 [{["title"] = "Start/Stop Play", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       48 NAMECALL                         R9 R9 K24 ["setAnnotations"]
       50 CALL                             R9 2 1
       51 MOVE                             R11 R8
       52 NAMECALL                         R9 R9 K25 ["setHandler"]
       54 CALL                             R9 2 1
       55 NAMECALL                         R9 R9 K26 ["build"]
       57 CALL                             R9 1 1
       58 DUPTABLE                         R10 K29 [{"definition", "getPreExecuteWarning"}]
       59 SETTABLEKS                       R9 R10 K27 ["definition"]
       61 DUPCLOSURE                       R11 K30 [PROTO_6]
       62 CAPTURE                          UPVAL U1
       63 SETTABLEKS                       R11 R10 K28 ["getPreExecuteWarning"]
       65 CLOSEUPVALS                      R5
       66 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ConsoleOutput"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["ModelContextProtocol"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["Signal"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Tools"]
       37 GETTABLEKS                       R6 R6 K13 ["ToolTypes"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R3 K6 ["Util"]
       42 GETTABLEKS                       R6 R6 K14 ["ToolBuilder"]
       44 GETTABLEKS                       R7 R3 K6 ["Util"]
       46 GETTABLEKS                       R7 R7 K15 ["ToolResult"]
       48 GETTABLEKS                       R8 R5 K16 ["ToolNames"]
       50 DUPCLOSURE                       R9 K17 [PROTO_7]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R8
       57 RETURN                           R9 1
