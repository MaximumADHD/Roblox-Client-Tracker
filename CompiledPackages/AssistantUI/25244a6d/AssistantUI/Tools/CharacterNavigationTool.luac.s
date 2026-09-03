PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["characterNavigation"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["FFlagAssistantPlaytestToolFix"]
        8 JUMPIFNOT                        R3 ; [+5]
        9 JUMPIFNOT                        R2 ; [+4]
       10 LOADK                            R4 K2 ["Success. "]
       11 MOVE                             R5 R2
       12 CONCAT                           R3 R4 R5
       13 RETURN                           R3 1
       14 LOADK                            R3 K3 ["Success"]
       15 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["stopCharacterNavigation"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 LOADK                            R0 K0 ["User stopped the game"]
        3 SETUPVAL                         R0 1
        4 GETUPVAL                         R0 2
        5 NAMECALL                         R0 R0 K1 ["Fire"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CALL                             R0 1 2
        7 SETUPVAL                         R0 0
        8 SETUPVAL                         R1 1
        9 GETUPVAL                         R0 5
       10 NAMECALL                         R0 R0 K2 ["Fire"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["targetDataModel"]
        3 JUMPIF                           R3 ; [+1]
        4 LOADNIL                          R3
        5 JUMPIFNOT                        R2 ; [+18]
        6 GETTABLEKS                       R4 R2 K1 ["signal"]
        8 JUMPIFNOT                        R4 ; [+15]
        9 GETTABLEKS                       R4 R2 K1 ["signal"]
       11 GETTABLEKS                       R4 R4 K2 ["abortSignal"]
       13 JUMPIFNOT                        R4 ; [+10]
       14 GETTABLEKS                       R4 R2 K1 ["signal"]
       16 GETTABLEKS                       R4 R4 K2 ["abortSignal"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R3
       21 NAMECALL                         R4 R4 K3 ["Once"]
       23 CALL                             R4 2 0
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K4 ["new"]
       27 CALL                             R4 0 1
       28 LOADNIL                          R5
       29 LOADNIL                          R6
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K5 ["subscribeGameStopped"]
       33 GETUPVAL                         R8 3
       34 NEWCLOSURE                       R9 P1
       35 CAPTURE                          REF R5
       36 CAPTURE                          REF R6
       37 CAPTURE                          VAL R4
       38 CALL                             R7 2 1
       39 GETIMPORT                        R8 K8 [task.spawn]
       41 NEWCLOSURE                       R9 P2
       42 CAPTURE                          REF R5
       43 CAPTURE                          REF R6
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R4
       48 CALL                             R8 1 0
       49 JUMPIFNOTEQKNIL                  R5 ; [+4]
       51 NAMECALL                         R8 R4 K9 ["Wait"]
       53 CALL                             R8 1 0
       54 MOVE                             R8 R7
       55 CALL                             R8 0 0
       56 JUMPIF                           R5 ; [+4]
       57 GETIMPORT                        R8 K11 [error]
       59 MOVE                             R9 R6
       60 CALL                             R8 1 0
       61 GETUPVAL                         R8 5
       62 CALL                             R8 0 1
       63 MOVE                             R10 R6
       64 NAMECALL                         R8 R8 K12 ["addText"]
       66 CALL                             R8 2 1
       67 NAMECALL                         R8 R8 K13 ["build"]
       69 CALL                             R8 1 1
       70 CLOSEUPVALS                      R5
       71 RETURN                           R8 1

PROTO_7:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["FFlagDisableNavigationConfirmation"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        7 RETURN                           R0 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 LOADK                            R5 K2 ["CharacterNavigationTool_NavigateCharacter"]
        5 DUPCLOSURE                       R6 K3 [PROTO_0]
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R3 R1 K4 ["OnHostInvokeAsync"]
       10 CALL                             R3 3 1
       11 LOADK                            R6 K5 ["CharacterNavigationTool_StopCharacterNavigation"]
       12 DUPCLOSURE                       R7 K6 [PROTO_1]
       13 CAPTURE                          UPVAL U0
       14 NAMECALL                         R4 R1 K4 ["OnHostInvokeAsync"]
       16 CALL                             R4 3 1
       17 NEWCLOSURE                       R5 P2
       18 CAPTURE                          VAL R4
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U3
       24 GETUPVAL                         R6 4
       25 GETTABLEKS                       R6 R6 K7 ["define"]
       27 CALL                             R6 0 1
       28 GETUPVAL                         R8 5
       29 GETTABLEKS                       R8 R8 K8 ["CharacterNavigation"]
       31 NAMECALL                         R6 R6 K9 ["setName"]
       33 CALL                             R6 2 1
       34 LOADK                            R8 K10 ["Navigate the character to the given position, or instance."]
       35 NAMECALL                         R6 R6 K11 ["setDescription"]
       37 CALL                             R6 2 1
       38 LOADK                            R8 K12 ["x"]
       39 DUPTABLE                         R9 K17 [{["type"] = "number", ["description"] = "The x coordinate to move the character to. Required if instance_path is not provided."}]
       40 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       42 CALL                             R6 3 1
       43 LOADK                            R8 K19 ["y"]
       44 DUPTABLE                         R9 K21 [{["type"] = "number", ["description"] = "The y coordinate to move the character to. Required if instance_path is not provided."}]
       45 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       47 CALL                             R6 3 1
       48 LOADK                            R8 K22 ["z"]
       49 DUPTABLE                         R9 K24 [{["type"] = "number", ["description"] = "The z coordinate to move the character to. Required if instance_path is not provided."}]
       50 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       52 CALL                             R6 3 1
       53 LOADK                            R8 K25 ["instance_path"]
       54 DUPTABLE                         R9 K28 [{["type"] = "string", ["description"] = "The instance path that the character should be moved to. for example: \"game.Workspace.Part\",\"game.Workspace.Model\". The path should start with game, LocalPlayer, or Workspace."}]
       55 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       57 CALL                             R6 3 1
       58 LOADK                            R8 K29 ["speed_multiplier"]
       59 DUPTABLE                         R9 K31 [{["type"] = "number", ["description"] = "speed multiplier, default is 1.0, 0.5 is half speed, 2.0 is double speed. minimum is 0.1, maximum is 10.0."}]
       60 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       62 CALL                             R6 3 1
       63 MOVE                             R8 R5
       64 NAMECALL                         R6 R6 K32 ["setHandler"]
       66 CALL                             R6 2 1
       67 DUPTABLE                         R8 K40 [{["title"] = "Character Navigation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       68 NAMECALL                         R6 R6 K41 ["setAnnotations"]
       70 CALL                             R6 2 1
       71 NAMECALL                         R6 R6 K42 ["build"]
       73 CALL                             R6 1 1
       74 DUPTABLE                         R7 K47 [{"availableDataModelTypes", "toolCallOptions", "definition", "getPreExecuteWarning"}]
       75 NEWTABLE                         R8 0 1
       77 GETUPVAL                         R9 6
       78 GETTABLEKS                       R9 R9 K48 ["Types"]
       80 GETTABLEKS                       R9 R9 K49 ["Client"]
       82 SETLIST                          R8 R9 1 [1]
       84 SETTABLEKS                       R8 R7 K43 ["availableDataModelTypes"]
       86 DUPTABLE                         R8 K52 [{["timeout"] = 200000000}]
       87 SETTABLEKS                       R8 R7 K44 ["toolCallOptions"]
       89 SETTABLEKS                       R6 R7 K45 ["definition"]
       91 DUPCLOSURE                       R8 K53 [PROTO_7]
       92 CAPTURE                          UPVAL U1
       93 SETTABLEKS                       R8 R7 K46 ["getPreExecuteWarning"]
       95 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["DataModelType"]
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
       35 GETTABLEKS                       R6 R0 K6 ["Util"]
       37 GETTABLEKS                       R6 R6 K12 ["TestAutomationUtils"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Tools"]
       44 GETTABLEKS                       R7 R7 K14 ["ToolTypes"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R3 K6 ["Util"]
       49 GETTABLEKS                       R7 R7 K15 ["ToolBuilder"]
       51 GETTABLEKS                       R8 R3 K6 ["Util"]
       53 GETTABLEKS                       R8 R8 K16 ["ToolResult"]
       55 GETTABLEKS                       R9 R6 K17 ["ToolNames"]
       57 DUPCLOSURE                       R10 K18 [PROTO_8]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R1
       65 RETURN                           R10 1
