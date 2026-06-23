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
        2 JUMPIFNOT                        R1 ; [+49]
        3 LOADB                            R2 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["new"]
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["subscribeGameLoaded"]
       11 GETUPVAL                         R5 2
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          REF R2
       14 CAPTURE                          VAL R3
       15 CALL                             R4 2 1
       16 GETUPVAL                         R5 3
       17 CALL                             R5 0 1
       18 JUMPIFNOT                        R5 ; [+4]
       19 GETUPVAL                         R5 4
       20 GETTABLEKS                       R5 R5 K3 ["clear"]
       22 CALL                             R5 0 0
       23 GETUPVAL                         R5 5
       24 CALL                             R5 0 1
       25 JUMPIFNOT                        R5 ; [+7]
       26 GETIMPORT                        R5 K6 [task.spawn]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          REF R2
       30 CAPTURE                          UPVAL U1
       31 CALL                             R5 1 0
       32 JUMP                             ; [+5]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K7 ["startStopPlayAsync"]
       36 LOADB                            R6 1
       37 CALL                             R5 1 0
       38 JUMPIF                           R2 ; [+3]
       39 NAMECALL                         R5 R3 K8 ["Wait"]
       41 CALL                             R5 1 0
       42 MOVE                             R5 R4
       43 CALL                             R5 0 0
       44 GETIMPORT                        R5 K10 [task.wait]
       46 LOADN                            R6 1
       47 CALL                             R5 1 0
       48 LOADK                            R5 K11 ["Game Started"]
       49 CLOSEUPVALS                      R2
       50 RETURN                           R5 1
       51 CLOSEUPVALS                      R2
       52 GETUPVAL                         R2 1
       53 GETTABLEKS                       R2 R2 K7 ["startStopPlayAsync"]
       55 LOADB                            R3 0
       56 CALL                             R2 1 0
       57 GETUPVAL                         R2 6
       58 CALL                             R2 0 1
       59 JUMPIFNOT                        R2 ; [+4]
       60 GETIMPORT                        R2 K10 [task.wait]
       62 LOADN                            R3 1
       63 CALL                             R2 1 0
       64 LOADK                            R2 K12 ["Game Stopped"]
       65 RETURN                           R2 1

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
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 MOVE                             R1 R2
        8 JUMP                             ; [+4]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 MOVE                             R1 R2
       13 GETUPVAL                         R2 3
       14 CALL                             R2 0 1
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R2 K0 ["addText"]
       18 CALL                             R2 2 1
       19 NAMECALL                         R2 R2 K1 ["build"]
       21 CALL                             R2 1 1
       22 RETURN                           R2 1

PROTO_6:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 NOT                              R1 R2
        4 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        6 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["StartStopPlay"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 LOADB                            R4 0
       13 LOADNIL                          R5
       14 NEWCLOSURE                       R6 P1
       15 CAPTURE                          REF R4
       16 CAPTURE                          REF R5
       17 CAPTURE                          VAL R3
       18 NEWCLOSURE                       R7 P2
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          VAL R6
       21 CAPTURE                          VAL R3
       22 CAPTURE                          UPVAL U5
       23 GETUPVAL                         R8 6
       24 GETTABLEKS                       R8 R8 K2 ["define"]
       26 CALL                             R8 0 1
       27 GETUPVAL                         R10 7
       28 GETTABLEKS                       R10 R10 K3 ["StartStopPlay"]
       30 NAMECALL                         R8 R8 K4 ["setName"]
       32 CALL                             R8 2 1
       33 LOADK                            R10 K5 ["Start play the game or stop the play."]
       34 NAMECALL                         R8 R8 K6 ["setDescription"]
       36 CALL                             R8 2 1
       37 LOADK                            R10 K7 ["is_start"]
       38 DUPTABLE                         R11 K10 [{"type", "description"}]
       39 LOADK                            R12 K11 ["boolean"]
       40 SETTABLEKS                       R12 R11 K8 ["type"]
       42 LOADK                            R12 K12 ["true to start the game, false to stop the game and return to edit mode."]
       43 SETTABLEKS                       R12 R11 K9 ["description"]
       45 NAMECALL                         R8 R8 K13 ["addArgument"]
       47 CALL                             R8 3 1
       48 DUPTABLE                         R10 K19 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       49 LOADK                            R11 K20 ["Start/Stop Play"]
       50 SETTABLEKS                       R11 R10 K14 ["title"]
       52 LOADB                            R11 0
       53 SETTABLEKS                       R11 R10 K15 ["readOnlyHint"]
       55 LOADB                            R11 0
       56 SETTABLEKS                       R11 R10 K16 ["destructiveHint"]
       58 LOADB                            R11 0
       59 SETTABLEKS                       R11 R10 K17 ["idempotentHint"]
       61 LOADB                            R11 0
       62 SETTABLEKS                       R11 R10 K18 ["openWorldHint"]
       64 NAMECALL                         R8 R8 K21 ["setAnnotations"]
       66 CALL                             R8 2 1
       67 MOVE                             R10 R7
       68 NAMECALL                         R8 R8 K22 ["setHandler"]
       70 CALL                             R8 2 1
       71 NAMECALL                         R8 R8 K23 ["build"]
       73 CALL                             R8 1 1
       74 DUPTABLE                         R9 K27 [{"definition", "getPreExecuteWarning", "displayNameFunction"}]
       75 SETTABLEKS                       R8 R9 K24 ["definition"]
       77 DUPCLOSURE                       R10 K28 [PROTO_6]
       78 CAPTURE                          UPVAL U8
       79 SETTABLEKS                       R10 R9 K25 ["getPreExecuteWarning"]
       81 GETUPVAL                         R11 9
       82 CALL                             R11 0 1
       83 JUMPIFNOT                        R11 ; [+2]
       84 LOADNIL                          R10
       85 JUMP                             ; [+2]
       86 DUPCLOSURE                       R10 K29 [PROTO_7]
       87 CAPTURE                          UPVAL U10
       88 SETTABLEKS                       R10 R9 K26 ["displayNameFunction"]
       90 CLOSEUPVALS                      R4
       91 RETURN                           R9 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Signal"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Tools"]
       32 GETTABLEKS                       R5 R5 K12 ["ToolTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Resources"]
       39 GETTABLEKS                       R6 R6 K14 ["Localization"]
       41 GETTABLEKS                       R6 R6 K15 ["Translator"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K16 ["Flags"]
       48 GETTABLEKS                       R7 R7 K17 ["FFlagAssistantConsoleOutputTailFromEnd"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K16 ["Flags"]
       55 GETTABLEKS                       R8 R8 K18 ["FFlagAssistantFixStartPlayHang"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K16 ["Flags"]
       62 GETTABLEKS                       R9 R9 K19 ["FFlagAssistantSplitToolsAndWidgets"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K16 ["Flags"]
       69 GETTABLEKS                       R10 R10 K20 ["FFlagAssistantStartStopPlayBusyCheck"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K16 ["Flags"]
       76 GETTABLEKS                       R11 R11 K21 ["FFlagDisableStartStopPlayConfirmation"]
       78 CALL                             R10 1 1
       79 GETTABLEKS                       R11 R2 K6 ["Util"]
       81 GETTABLEKS                       R11 R11 K22 ["ToolBuilder"]
       83 GETTABLEKS                       R12 R2 K6 ["Util"]
       85 GETTABLEKS                       R12 R12 K23 ["ToolResult"]
       87 GETTABLEKS                       R13 R4 K24 ["ToolNames"]
       89 DUPCLOSURE                       R14 K25 [PROTO_8]
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R5
      101 RETURN                           R14 1
