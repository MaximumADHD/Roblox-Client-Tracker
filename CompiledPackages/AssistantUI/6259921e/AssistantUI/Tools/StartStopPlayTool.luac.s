PROTO_0:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["outputMessage"]
        3 LENGTH                           R3 R4
        4 LENGTH                           R4 R0
        5 ADD                              R2 R3 R4
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 1
        8 JUMPIFNOTLE                      R2 R3 ; [+20]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["outputMessage"]
       13 LENGTH                           R2 R3
       14 JUMPIFNOTEQKN                    R2 K1 [0] ; [+5]
       16 GETUPVAL                         R2 0
       17 SETTABLEKS                       R0 R2 K0 ["outputMessage"]
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 0
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["outputMessage"]
       24 LOADK                            R5 K2 ["\n"]
       25 MOVE                             R6 R0
       26 CONCAT                           R3 R4 R6
       27 SETTABLEKS                       R3 R2 K0 ["outputMessage"]
       29 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["is_start"]
        2 JUMPIFNOT                        R1 ; [+57]
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
       18 JUMPIF                           R5 ; [+12]
       19 GETUPVAL                         R5 4
       20 LOADK                            R6 K3 [""]
       21 SETTABLEKS                       R6 R5 K4 ["outputMessage"]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K5 ["subscribeOutput"]
       26 DUPCLOSURE                       R6 K6 [PROTO_1]
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U6
       29 CALL                             R5 1 1
       30 SETUPVAL                         R5 5
       31 GETUPVAL                         R5 7
       32 CALL                             R5 0 1
       33 JUMPIFNOT                        R5 ; [+7]
       34 GETIMPORT                        R5 K9 [task.spawn]
       36 NEWCLOSURE                       R6 P2
       37 CAPTURE                          REF R2
       38 CAPTURE                          UPVAL U1
       39 CALL                             R5 1 0
       40 JUMP                             ; [+5]
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R5 R5 K10 ["startStopPlayAsync"]
       44 LOADB                            R6 1
       45 CALL                             R5 1 0
       46 JUMPIF                           R2 ; [+3]
       47 NAMECALL                         R5 R3 K11 ["Wait"]
       49 CALL                             R5 1 0
       50 MOVE                             R5 R4
       51 CALL                             R5 0 0
       52 GETIMPORT                        R5 K13 [task.wait]
       54 LOADN                            R6 1
       55 CALL                             R5 1 0
       56 LOADK                            R5 K14 ["Game Started"]
       57 CLOSEUPVALS                      R2
       58 RETURN                           R5 1
       59 CLOSEUPVALS                      R2
       60 GETUPVAL                         R2 3
       61 CALL                             R2 0 1
       62 JUMPIF                           R2 ; [+6]
       63 GETUPVAL                         R2 5
       64 JUMPIFNOT                        R2 ; [+4]
       65 GETUPVAL                         R2 5
       66 NAMECALL                         R2 R2 K15 ["Disconnect"]
       68 CALL                             R2 1 0
       69 GETUPVAL                         R2 1
       70 GETTABLEKS                       R2 R2 K10 ["startStopPlayAsync"]
       72 LOADB                            R3 0
       73 CALL                             R2 1 0
       74 GETUPVAL                         R2 8
       75 CALL                             R2 0 1
       76 JUMPIFNOT                        R2 ; [+4]
       77 GETIMPORT                        R2 K13 [task.wait]
       79 LOADN                            R3 1
       80 CALL                             R2 1 0
       81 LOADK                            R2 K16 ["Game Stopped"]
       82 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 NOT                              R1 R2
        4 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        6 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["StartStopPlay"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 LOADNIL                          R3
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          REF R3
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 LOADB                            R5 0
       16 LOADNIL                          R6
       17 NEWCLOSURE                       R7 P1
       18 CAPTURE                          REF R5
       19 CAPTURE                          REF R6
       20 CAPTURE                          VAL R4
       21 NEWCLOSURE                       R8 P2
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          VAL R7
       24 CAPTURE                          VAL R4
       25 CAPTURE                          UPVAL U6
       26 GETUPVAL                         R9 7
       27 GETTABLEKS                       R9 R9 K2 ["define"]
       29 CALL                             R9 0 1
       30 GETUPVAL                         R11 8
       31 GETTABLEKS                       R11 R11 K3 ["StartStopPlay"]
       33 NAMECALL                         R9 R9 K4 ["setName"]
       35 CALL                             R9 2 1
       36 LOADK                            R11 K5 ["Start play the game or stop the play."]
       37 NAMECALL                         R9 R9 K6 ["setDescription"]
       39 CALL                             R9 2 1
       40 LOADK                            R11 K7 ["is_start"]
       41 DUPTABLE                         R12 K10 [{"type", "description"}]
       42 LOADK                            R13 K11 ["boolean"]
       43 SETTABLEKS                       R13 R12 K8 ["type"]
       45 LOADK                            R13 K12 ["true to start the game, false to stop the game and return to edit mode."]
       46 SETTABLEKS                       R13 R12 K9 ["description"]
       48 NAMECALL                         R9 R9 K13 ["addArgument"]
       50 CALL                             R9 3 1
       51 DUPTABLE                         R11 K19 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       52 LOADK                            R12 K20 ["Start/Stop Play"]
       53 SETTABLEKS                       R12 R11 K14 ["title"]
       55 LOADB                            R12 0
       56 SETTABLEKS                       R12 R11 K15 ["readOnlyHint"]
       58 LOADB                            R12 0
       59 SETTABLEKS                       R12 R11 K16 ["destructiveHint"]
       61 LOADB                            R12 0
       62 SETTABLEKS                       R12 R11 K17 ["idempotentHint"]
       64 LOADB                            R12 0
       65 SETTABLEKS                       R12 R11 K18 ["openWorldHint"]
       67 NAMECALL                         R9 R9 K21 ["setAnnotations"]
       69 CALL                             R9 2 1
       70 MOVE                             R11 R8
       71 NAMECALL                         R9 R9 K22 ["setHandler"]
       73 CALL                             R9 2 1
       74 NAMECALL                         R9 R9 K23 ["build"]
       76 CALL                             R9 1 1
       77 DUPTABLE                         R10 K27 [{"definition", "getPreExecuteWarning", "displayNameFunction"}]
       78 SETTABLEKS                       R9 R10 K24 ["definition"]
       80 DUPCLOSURE                       R11 K28 [PROTO_7]
       81 CAPTURE                          UPVAL U9
       82 SETTABLEKS                       R11 R10 K25 ["getPreExecuteWarning"]
       84 DUPCLOSURE                       R11 K29 [PROTO_8]
       85 CAPTURE                          UPVAL U10
       86 SETTABLEKS                       R11 R10 K26 ["displayNameFunction"]
       88 CLOSEUPVALS                      R3
       89 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Tools"]
       18 GETTABLEKS                       R3 R3 K9 ["ToolTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Resources"]
       25 GETTABLEKS                       R4 R4 K11 ["Localization"]
       27 GETTABLEKS                       R4 R4 K12 ["Translator"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K13 ["Util"]
       32 GETTABLEKS                       R4 R4 K14 ["ToolBuilder"]
       34 GETTABLEKS                       R5 R1 K13 ["Util"]
       36 GETTABLEKS                       R5 R5 K15 ["ToolResult"]
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K13 ["Util"]
       42 GETTABLEKS                       R7 R7 K16 ["ConsoleOutput"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K6 ["Parent"]
       49 GETTABLEKS                       R8 R8 K17 ["Signal"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K18 ["Flags"]
       56 GETTABLEKS                       R9 R9 K19 ["FFlagAssistantFixStartPlayHang"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K18 ["Flags"]
       63 GETTABLEKS                       R10 R10 K20 ["FFlagAssistantGetConsoleOutputUsesFullLogHistory"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K18 ["Flags"]
       70 GETTABLEKS                       R11 R11 K21 ["FFlagAssistantStartStopPlayBusyCheck"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R12 R0 K18 ["Flags"]
       77 GETTABLEKS                       R12 R12 K22 ["FFlagDisableStartStopPlayConfirmation"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R13 R0 K18 ["Flags"]
       84 GETTABLEKS                       R13 R13 K23 ["FIntAssistantDebugToolMaxOutput"]
       86 CALL                             R12 1 1
       87 GETTABLEKS                       R13 R2 K24 ["ToolNames"]
       89 DUPCLOSURE                       R14 K25 [PROTO_9]
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R3
      101 RETURN                           R14 1
