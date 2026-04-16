PROTO_0:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["outputMessage"]
        3 LENGTH                           R3 R4
        4 LENGTH                           R4 R0
        5 ADD                              R2 R3 R4
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 1
        8 JUMPIFNOTLE                      R2 R3 ; [+20]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["outputMessage"]
       13 LENGTH                           R2 R3
       14 JUMPIFNOTEQKN                    R2 K1 [0] ; [+5]
       16 GETUPVAL                         R2 0
       17 SETTABLEKS                       R0 R2 K0 ["outputMessage"]
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 0
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R4 R7 K0 ["outputMessage"]
       24 LOADK                            R5 K2 ["\n"]
       25 MOVE                             R6 R0
       26 CONCAT                           R3 R4 R6
       27 SETTABLEKS                       R3 R2 K0 ["outputMessage"]
       29 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["is_start"]
        2 JUMPIFNOT                        R1 ; [+44]
        3 LOADB                            R2 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["new"]
        7 CALL                             R3 0 1
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K2 ["subscribeGameLoaded"]
       11 GETUPVAL                         R5 2
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          REF R2
       14 CAPTURE                          VAL R3
       15 CALL                             R4 2 1
       16 GETUPVAL                         R5 3
       17 LOADK                            R6 K3 [""]
       18 SETTABLEKS                       R6 R5 K4 ["outputMessage"]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R5 R6 K5 ["subscribeOutput"]
       23 DUPCLOSURE                       R6 K6 [PROTO_1]
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U5
       26 CALL                             R5 1 1
       27 SETUPVAL                         R5 4
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R5 R6 K7 ["startStopPlayAsync"]
       31 LOADB                            R6 1
       32 CALL                             R5 1 0
       33 JUMPIF                           R2 ; [+3]
       34 NAMECALL                         R5 R3 K8 ["Wait"]
       36 CALL                             R5 1 0
       37 MOVE                             R5 R4
       38 CALL                             R5 0 0
       39 GETIMPORT                        R5 K11 [task.wait]
       41 LOADN                            R6 1
       42 CALL                             R5 1 0
       43 LOADK                            R5 K12 ["Game Started"]
       44 CLOSEUPVALS                      R2
       45 RETURN                           R5 1
       46 CLOSEUPVALS                      R2
       47 GETUPVAL                         R2 4
       48 JUMPIFNOT                        R2 ; [+4]
       49 GETUPVAL                         R2 4
       50 NAMECALL                         R2 R2 K13 ["Disconnect"]
       52 CALL                             R2 1 0
       53 GETUPVAL                         R3 1
       54 GETTABLEKS                       R2 R3 K7 ["startStopPlayAsync"]
       56 LOADB                            R3 0
       57 CALL                             R2 1 0
       58 GETUPVAL                         R2 6
       59 CALL                             R2 0 1
       60 JUMPIFNOT                        R2 ; [+4]
       61 GETIMPORT                        R2 K11 [task.wait]
       63 LOADN                            R3 1
       64 CALL                             R2 1 0
       65 LOADK                            R2 K14 ["Game Stopped"]
       66 RETURN                           R2 1

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
       10 CAPTURE                          REF R3
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 LOADB                            R5 0
       14 LOADNIL                          R6
       15 NEWCLOSURE                       R7 P1
       16 CAPTURE                          REF R5
       17 CAPTURE                          REF R6
       18 CAPTURE                          VAL R4
       19 NEWCLOSURE                       R8 P2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R7
       22 CAPTURE                          VAL R4
       23 CAPTURE                          UPVAL U4
       24 GETUPVAL                         R10 5
       25 GETTABLEKS                       R9 R10 K2 ["define"]
       27 CALL                             R9 0 1
       28 GETUPVAL                         R12 6
       29 GETTABLEKS                       R11 R12 K3 ["StartStopPlay"]
       31 NAMECALL                         R9 R9 K4 ["setName"]
       33 CALL                             R9 2 1
       34 LOADK                            R11 K5 ["Start play the game or stop the play."]
       35 NAMECALL                         R9 R9 K6 ["setDescription"]
       37 CALL                             R9 2 1
       38 LOADK                            R11 K7 ["is_start"]
       39 DUPTABLE                         R12 K10 [{"type", "description"}]
       40 LOADK                            R13 K11 ["boolean"]
       41 SETTABLEKS                       R13 R12 K8 ["type"]
       43 LOADK                            R13 K12 ["true to start the game, false to stop the game and return to edit mode."]
       44 SETTABLEKS                       R13 R12 K9 ["description"]
       46 NAMECALL                         R9 R9 K13 ["addArgument"]
       48 CALL                             R9 3 1
       49 MOVE                             R11 R8
       50 NAMECALL                         R9 R9 K14 ["setHandler"]
       52 CALL                             R9 2 1
       53 NAMECALL                         R9 R9 K15 ["build"]
       55 CALL                             R9 1 1
       56 DUPTABLE                         R10 K19 [{"definition", "getPreExecuteWarning", "displayNameFunction"}]
       57 SETTABLEKS                       R9 R10 K16 ["definition"]
       59 DUPCLOSURE                       R11 K20 [PROTO_6]
       60 CAPTURE                          UPVAL U7
       61 SETTABLEKS                       R11 R10 K17 ["getPreExecuteWarning"]
       63 DUPCLOSURE                       R11 K21 [PROTO_7]
       64 CAPTURE                          UPVAL U8
       65 SETTABLEKS                       R11 R10 K18 ["displayNameFunction"]
       67 CLOSEUPVALS                      R3
       68 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Tools"]
       18 GETTABLEKS                       R3 R4 K9 ["ToolTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Resources"]
       25 GETTABLEKS                       R5 R6 K11 ["Localization"]
       27 GETTABLEKS                       R4 R5 K12 ["Translator"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R1 K13 ["Util"]
       32 GETTABLEKS                       R4 R5 K14 ["ToolBuilder"]
       34 GETTABLEKS                       R6 R1 K13 ["Util"]
       36 GETTABLEKS                       R5 R6 K15 ["ToolResult"]
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R8 R0 K13 ["Util"]
       42 GETTABLEKS                       R7 R8 K16 ["ConsoleOutput"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R9 R0 K6 ["Parent"]
       49 GETTABLEKS                       R8 R9 K17 ["Signal"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R10 R0 K18 ["Flags"]
       56 GETTABLEKS                       R9 R10 K19 ["FFlagAssistantStartStopPlayBusyCheck"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R11 R0 K18 ["Flags"]
       63 GETTABLEKS                       R10 R11 K20 ["FFlagDisableStartStopPlayConfirmation"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R12 R0 K18 ["Flags"]
       70 GETTABLEKS                       R11 R12 K21 ["FIntAssistantDebugToolMaxOutput"]
       72 CALL                             R10 1 1
       73 GETTABLEKS                       R11 R2 K22 ["ToolNames"]
       75 DUPCLOSURE                       R12 K23 [PROTO_8]
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R3
       85 RETURN                           R12 1
