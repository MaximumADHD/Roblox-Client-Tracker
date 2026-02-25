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
       58 LOADK                            R2 K14 ["Game Stopped"]
       59 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K0 ["addText"]
        8 CALL                             R2 2 1
        9 NAMECALL                         R2 R2 K1 ["build"]
       11 CALL                             R2 1 1
       12 RETURN                           R2 1

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        4 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["StartStopPlay"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_6:
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
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          VAL R4
       14 CAPTURE                          UPVAL U3
       15 GETUPVAL                         R7 4
       16 GETTABLEKS                       R6 R7 K2 ["define"]
       18 CALL                             R6 0 1
       19 GETUPVAL                         R9 5
       20 GETTABLEKS                       R8 R9 K3 ["StartStopPlay"]
       22 NAMECALL                         R6 R6 K4 ["setName"]
       24 CALL                             R6 2 1
       25 LOADK                            R8 K5 ["Start play the game or stop the play."]
       26 NAMECALL                         R6 R6 K6 ["setDescription"]
       28 CALL                             R6 2 1
       29 LOADK                            R8 K7 ["is_start"]
       30 DUPTABLE                         R9 K10 [{"type", "description"}]
       31 LOADK                            R10 K11 ["boolean"]
       32 SETTABLEKS                       R10 R9 K8 ["type"]
       34 LOADK                            R10 K12 ["true to start the game, false to stop the game and return to edit mode."]
       35 SETTABLEKS                       R10 R9 K9 ["description"]
       37 NAMECALL                         R6 R6 K13 ["addArgument"]
       39 CALL                             R6 3 1
       40 MOVE                             R8 R5
       41 NAMECALL                         R6 R6 K14 ["setHandler"]
       43 CALL                             R6 2 1
       44 NAMECALL                         R6 R6 K15 ["build"]
       46 CALL                             R6 1 1
       47 DUPTABLE                         R7 K19 [{"definition", "getPreExecuteWarning", "displayNameFunction"}]
       48 SETTABLEKS                       R6 R7 K16 ["definition"]
       50 DUPCLOSURE                       R8 K20 [PROTO_4]
       51 SETTABLEKS                       R8 R7 K17 ["getPreExecuteWarning"]
       53 DUPCLOSURE                       R8 K21 [PROTO_5]
       54 CAPTURE                          UPVAL U6
       55 SETTABLEKS                       R8 R7 K18 ["displayNameFunction"]
       57 CLOSEUPVALS                      R3
       58 RETURN                           R7 1

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
       56 GETTABLEKS                       R9 R10 K19 ["FIntAssistantDebugToolMaxOutput"]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R9 R2 K20 ["ToolNames"]
       61 DUPCLOSURE                       R10 K21 [PROTO_6]
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R3
       69 RETURN                           R10 1
