PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+15]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["getDataModelType"]
        6 CALL                             R2 0 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["Types"]
       10 GETTABLEKS                       R3 R3 K2 ["Client"]
       12 JUMPIFEQ                         R2 R3 ; [+5]
       14 GETIMPORT                        R2 K4 [error]
       16 LOADK                            R3 K5 ["This tool is only available in play mode with client datamodel focused."]
       17 CALL                             R2 1 0
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K6 ["characterNavigation"]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 1
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R3 R3 K7 ["FFlagAssistantPlaytestToolFix"]
       26 JUMPIFNOT                        R3 ; [+5]
       27 JUMPIFNOT                        R2 ; [+4]
       28 LOADK                            R4 K8 ["Success. "]
       29 MOVE                             R5 R2
       30 CONCAT                           R3 R4 R5
       31 RETURN                           R3 1
       32 LOADK                            R3 K9 ["Success"]
       33 RETURN                           R3 1

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
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+4]
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R3 R1 K0 ["targetDataModel"]
        6 JUMPIF                           R3 ; [+1]
        7 LOADNIL                          R3
        8 JUMPIFNOT                        R2 ; [+18]
        9 GETTABLEKS                       R4 R2 K1 ["signal"]
       11 JUMPIFNOT                        R4 ; [+15]
       12 GETTABLEKS                       R4 R2 K1 ["signal"]
       14 GETTABLEKS                       R4 R4 K2 ["abortSignal"]
       16 JUMPIFNOT                        R4 ; [+10]
       17 GETTABLEKS                       R4 R2 K1 ["signal"]
       19 GETTABLEKS                       R4 R4 K2 ["abortSignal"]
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R3
       24 NAMECALL                         R4 R4 K3 ["Once"]
       26 CALL                             R4 2 0
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K4 ["new"]
       30 CALL                             R4 0 1
       31 LOADNIL                          R5
       32 LOADNIL                          R6
       33 GETUPVAL                         R7 3
       34 GETTABLEKS                       R7 R7 K5 ["subscribeGameStopped"]
       36 GETUPVAL                         R8 4
       37 NEWCLOSURE                       R9 P1
       38 CAPTURE                          REF R5
       39 CAPTURE                          REF R6
       40 CAPTURE                          VAL R4
       41 CALL                             R7 2 1
       42 GETIMPORT                        R8 K8 [task.spawn]
       44 NEWCLOSURE                       R9 P2
       45 CAPTURE                          REF R5
       46 CAPTURE                          REF R6
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R4
       51 CALL                             R8 1 0
       52 JUMPIFNOTEQKNIL                  R5 ; [+4]
       54 NAMECALL                         R8 R4 K9 ["Wait"]
       56 CALL                             R8 1 0
       57 MOVE                             R8 R7
       58 CALL                             R8 0 0
       59 JUMPIF                           R5 ; [+4]
       60 GETIMPORT                        R8 K11 [error]
       62 MOVE                             R9 R6
       63 CALL                             R8 1 0
       64 GETUPVAL                         R8 6
       65 CALL                             R8 0 1
       66 MOVE                             R10 R6
       67 NAMECALL                         R8 R8 K12 ["addText"]
       69 CALL                             R8 2 1
       70 NAMECALL                         R8 R8 K13 ["build"]
       72 CALL                             R8 1 1
       73 CLOSEUPVALS                      R5
       74 RETURN                           R8 1

PROTO_7:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["FFlagDisableNavigationConfirmation"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        7 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["CharacterNavigation"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 LOADK                            R5 K2 ["CharacterNavigationTool_NavigateCharacter"]
        5 DUPCLOSURE                       R6 K3 [PROTO_0]
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NAMECALL                         R3 R1 K4 ["OnHostInvokeAsync"]
       12 CALL                             R3 3 1
       13 LOADK                            R6 K5 ["CharacterNavigationTool_StopCharacterNavigation"]
       14 DUPCLOSURE                       R7 K6 [PROTO_1]
       15 CAPTURE                          UPVAL U2
       16 NAMECALL                         R4 R1 K4 ["OnHostInvokeAsync"]
       18 CALL                             R4 3 1
       19 NEWCLOSURE                       R5 P2
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R4
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R3
       26 CAPTURE                          UPVAL U5
       27 GETUPVAL                         R6 6
       28 GETTABLEKS                       R6 R6 K7 ["define"]
       30 CALL                             R6 0 1
       31 GETUPVAL                         R8 7
       32 GETTABLEKS                       R8 R8 K8 ["CharacterNavigation"]
       34 NAMECALL                         R6 R6 K9 ["setName"]
       36 CALL                             R6 2 1
       37 LOADK                            R8 K10 ["Navigate the character to the given position, or instance."]
       38 NAMECALL                         R6 R6 K11 ["setDescription"]
       40 CALL                             R6 2 1
       41 LOADK                            R8 K12 ["x"]
       42 DUPTABLE                         R9 K17 [{["type"] = "number", ["description"] = "The x coordinate to move the character to. Required if instance_path is not provided."}]
       43 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       45 CALL                             R6 3 1
       46 LOADK                            R8 K19 ["y"]
       47 DUPTABLE                         R9 K21 [{["type"] = "number", ["description"] = "The y coordinate to move the character to. Required if instance_path is not provided."}]
       48 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       50 CALL                             R6 3 1
       51 LOADK                            R8 K22 ["z"]
       52 DUPTABLE                         R9 K24 [{["type"] = "number", ["description"] = "The z coordinate to move the character to. Required if instance_path is not provided."}]
       53 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       55 CALL                             R6 3 1
       56 LOADK                            R8 K25 ["instance_path"]
       57 DUPTABLE                         R9 K28 [{["type"] = "string", ["description"] = "The instance path that the character should be moved to. for example: \"game.Workspace.Part\",\"game.Workspace.Model\". The path should start with game, LocalPlayer, or Workspace."}]
       58 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       60 CALL                             R6 3 1
       61 LOADK                            R8 K29 ["speed_multiplier"]
       62 DUPTABLE                         R9 K31 [{["type"] = "number", ["description"] = "speed multiplier, default is 1.0, 0.5 is half speed, 2.0 is double speed. minimum is 0.1, maximum is 10.0."}]
       63 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       65 CALL                             R6 3 1
       66 MOVE                             R8 R5
       67 NAMECALL                         R6 R6 K32 ["setHandler"]
       69 CALL                             R6 2 1
       70 DUPTABLE                         R8 K40 [{["title"] = "Character Navigation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       71 NAMECALL                         R6 R6 K41 ["setAnnotations"]
       73 CALL                             R6 2 1
       74 NAMECALL                         R6 R6 K42 ["build"]
       76 CALL                             R6 1 1
       77 DUPTABLE                         R7 K48 [{"availableDataModelTypes", "toolCallOptions", "definition", "getPreExecuteWarning", "displayNameFunction"}]
       78 GETUPVAL                         R9 3
       79 GETTABLEKS                       R9 R9 K49 ["FFlagAssistantBackgroundDataModelToolCall"]
       81 JUMPIFNOT                        R9 ; [+10]
       82 NEWTABLE                         R8 0 1
       84 GETUPVAL                         R9 1
       85 GETTABLEKS                       R9 R9 K50 ["Types"]
       87 GETTABLEKS                       R9 R9 K51 ["Client"]
       89 SETLIST                          R8 R9 1 [1]
       91 JUMPIF                           R8 ; [+1]
       92 LOADNIL                          R8
       93 SETTABLEKS                       R8 R7 K43 ["availableDataModelTypes"]
       95 DUPTABLE                         R8 K54 [{["timeout"] = 200000000}]
       96 SETTABLEKS                       R8 R7 K44 ["toolCallOptions"]
       98 SETTABLEKS                       R6 R7 K45 ["definition"]
      100 DUPCLOSURE                       R8 K55 [PROTO_7]
      101 CAPTURE                          UPVAL U3
      102 SETTABLEKS                       R8 R7 K46 ["getPreExecuteWarning"]
      104 GETUPVAL                         R9 3
      105 GETTABLEKS                       R9 R9 K56 ["FFlagAssistantSplitToolsAndWidgets"]
      107 JUMPIFNOT                        R9 ; [+2]
      108 LOADNIL                          R8
      109 JUMP                             ; [+2]
      110 DUPCLOSURE                       R8 K57 [PROTO_8]
      111 CAPTURE                          UPVAL U8
      112 SETTABLEKS                       R8 R7 K47 ["displayNameFunction"]
      114 RETURN                           R7 1

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
       16 GETTABLEKS                       R3 R0 K8 ["FlagUtils"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Flags"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K10 ["Parent"]
       28 GETTABLEKS                       R5 R5 K11 ["ModelContextProtocol"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K10 ["Parent"]
       35 GETTABLEKS                       R6 R6 K12 ["Signal"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K6 ["Util"]
       42 GETTABLEKS                       R7 R7 K13 ["TestAutomationUtils"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K14 ["Tools"]
       49 GETTABLEKS                       R8 R8 K15 ["ToolTypes"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K16 ["Resources"]
       56 GETTABLEKS                       R9 R9 K17 ["Localization"]
       58 GETTABLEKS                       R9 R9 K18 ["Translator"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R2 K19 ["getIsAssistantBackgroundDataModelToolCall"]
       63 GETTABLEKS                       R10 R4 K6 ["Util"]
       65 GETTABLEKS                       R10 R10 K20 ["ToolBuilder"]
       67 GETTABLEKS                       R11 R4 K6 ["Util"]
       69 GETTABLEKS                       R11 R11 K21 ["ToolResult"]
       71 GETTABLEKS                       R12 R7 K22 ["ToolNames"]
       73 DUPCLOSURE                       R13 K23 [PROTO_9]
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R8
       83 RETURN                           R13 1
