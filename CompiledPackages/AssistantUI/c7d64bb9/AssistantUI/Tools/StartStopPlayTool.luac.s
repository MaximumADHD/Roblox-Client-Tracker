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
        0 GETTABLEKS                       R1 R0 K0 ["is_start"]
        2 JUMPIFNOT                        R1 ; [+47]
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
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K7 ["startStopPlayAsync"]
       34 LOADB                            R6 1
       35 CALL                             R5 1 0
       36 JUMPIF                           R2 ; [+3]
       37 NAMECALL                         R5 R3 K8 ["Wait"]
       39 CALL                             R5 1 0
       40 MOVE                             R5 R4
       41 CALL                             R5 0 0
       42 GETIMPORT                        R5 K11 [task.wait]
       44 LOADN                            R6 1
       45 CALL                             R5 1 0
       46 LOADK                            R5 K12 ["Game Started"]
       47 CLOSEUPVALS                      R2
       48 RETURN                           R5 1
       49 CLOSEUPVALS                      R2
       50 GETUPVAL                         R2 3
       51 CALL                             R2 0 1
       52 JUMPIF                           R2 ; [+6]
       53 GETUPVAL                         R2 5
       54 JUMPIFNOT                        R2 ; [+4]
       55 GETUPVAL                         R2 5
       56 NAMECALL                         R2 R2 K13 ["Disconnect"]
       58 CALL                             R2 1 0
       59 GETUPVAL                         R2 1
       60 GETTABLEKS                       R2 R2 K7 ["startStopPlayAsync"]
       62 LOADB                            R3 0
       63 CALL                             R2 1 0
       64 GETUPVAL                         R2 7
       65 CALL                             R2 0 1
       66 JUMPIFNOT                        R2 ; [+4]
       67 GETIMPORT                        R2 K11 [task.wait]
       69 LOADN                            R3 1
       70 CALL                             R2 1 0
       71 LOADK                            R2 K14 ["Game Stopped"]
       72 RETURN                           R2 1

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
       14 LOADB                            R5 0
       15 LOADNIL                          R6
       16 NEWCLOSURE                       R7 P1
       17 CAPTURE                          REF R5
       18 CAPTURE                          REF R6
       19 CAPTURE                          VAL R4
       20 NEWCLOSURE                       R8 P2
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R7
       23 CAPTURE                          VAL R4
       24 CAPTURE                          UPVAL U5
       25 GETUPVAL                         R9 6
       26 GETTABLEKS                       R9 R9 K2 ["define"]
       28 CALL                             R9 0 1
       29 GETUPVAL                         R11 7
       30 GETTABLEKS                       R11 R11 K3 ["StartStopPlay"]
       32 NAMECALL                         R9 R9 K4 ["setName"]
       34 CALL                             R9 2 1
       35 LOADK                            R11 K5 ["Start play the game or stop the play."]
       36 NAMECALL                         R9 R9 K6 ["setDescription"]
       38 CALL                             R9 2 1
       39 LOADK                            R11 K7 ["is_start"]
       40 DUPTABLE                         R12 K10 [{"type", "description"}]
       41 LOADK                            R13 K11 ["boolean"]
       42 SETTABLEKS                       R13 R12 K8 ["type"]
       44 LOADK                            R13 K12 ["true to start the game, false to stop the game and return to edit mode."]
       45 SETTABLEKS                       R13 R12 K9 ["description"]
       47 NAMECALL                         R9 R9 K13 ["addArgument"]
       49 CALL                             R9 3 1
       50 DUPTABLE                         R11 K19 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       51 LOADK                            R12 K20 ["Start/Stop Play"]
       52 SETTABLEKS                       R12 R11 K14 ["title"]
       54 LOADB                            R12 0
       55 SETTABLEKS                       R12 R11 K15 ["readOnlyHint"]
       57 LOADB                            R12 0
       58 SETTABLEKS                       R12 R11 K16 ["destructiveHint"]
       60 LOADB                            R12 0
       61 SETTABLEKS                       R12 R11 K17 ["idempotentHint"]
       63 LOADB                            R12 0
       64 SETTABLEKS                       R12 R11 K18 ["openWorldHint"]
       66 NAMECALL                         R9 R9 K21 ["setAnnotations"]
       68 CALL                             R9 2 1
       69 MOVE                             R11 R8
       70 NAMECALL                         R9 R9 K22 ["setHandler"]
       72 CALL                             R9 2 1
       73 NAMECALL                         R9 R9 K23 ["build"]
       75 CALL                             R9 1 1
       76 DUPTABLE                         R10 K27 [{"definition", "getPreExecuteWarning", "displayNameFunction"}]
       77 SETTABLEKS                       R9 R10 K24 ["definition"]
       79 DUPCLOSURE                       R11 K28 [PROTO_6]
       80 CAPTURE                          UPVAL U8
       81 SETTABLEKS                       R11 R10 K25 ["getPreExecuteWarning"]
       83 DUPCLOSURE                       R11 K29 [PROTO_7]
       84 CAPTURE                          UPVAL U9
       85 SETTABLEKS                       R11 R10 K26 ["displayNameFunction"]
       87 CLOSEUPVALS                      R3
       88 RETURN                           R10 1

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
       56 GETTABLEKS                       R9 R9 K19 ["FFlagAssistantGetConsoleOutputUsesFullLogHistory"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K18 ["Flags"]
       63 GETTABLEKS                       R10 R10 K20 ["FFlagAssistantStartStopPlayBusyCheck"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K18 ["Flags"]
       70 GETTABLEKS                       R11 R11 K21 ["FFlagDisableStartStopPlayConfirmation"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R12 R0 K18 ["Flags"]
       77 GETTABLEKS                       R12 R12 K22 ["FIntAssistantDebugToolMaxOutput"]
       79 CALL                             R11 1 1
       80 GETTABLEKS                       R12 R2 K23 ["ToolNames"]
       82 DUPCLOSURE                       R13 K24 [PROTO_8]
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R3
       93 RETURN                           R13 1
