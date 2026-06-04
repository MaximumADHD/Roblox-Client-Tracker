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
       22 CALL                             R2 1 0
       23 LOADK                            R2 K7 ["Success"]
       24 RETURN                           R2 1

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
        2 CALL                             R2 0 1
        3 NOT                              R1 R2
        4 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        6 RETURN                           R0 1

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
        9 NAMECALL                         R3 R1 K4 ["OnHostInvokeAsync"]
       11 CALL                             R3 3 1
       12 LOADK                            R6 K5 ["CharacterNavigationTool_StopCharacterNavigation"]
       13 DUPCLOSURE                       R7 K6 [PROTO_1]
       14 CAPTURE                          UPVAL U2
       15 NAMECALL                         R4 R1 K4 ["OnHostInvokeAsync"]
       17 CALL                             R4 3 1
       18 NEWCLOSURE                       R5 P2
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R4
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R3
       25 CAPTURE                          UPVAL U4
       26 GETUPVAL                         R6 5
       27 GETTABLEKS                       R6 R6 K7 ["define"]
       29 CALL                             R6 0 1
       30 GETUPVAL                         R8 6
       31 GETTABLEKS                       R8 R8 K8 ["CharacterNavigation"]
       33 NAMECALL                         R6 R6 K9 ["setName"]
       35 CALL                             R6 2 1
       36 LOADK                            R8 K10 ["Navigate the character to the given position, or instance."]
       37 NAMECALL                         R6 R6 K11 ["setDescription"]
       39 CALL                             R6 2 1
       40 LOADK                            R8 K12 ["x"]
       41 DUPTABLE                         R9 K15 [{"type", "description"}]
       42 LOADK                            R10 K16 ["number"]
       43 SETTABLEKS                       R10 R9 K13 ["type"]
       45 LOADK                            R10 K17 ["The x coordinate to move the character to. Required if instance_path is not provided."]
       46 SETTABLEKS                       R10 R9 K14 ["description"]
       48 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       50 CALL                             R6 3 1
       51 LOADK                            R8 K19 ["y"]
       52 DUPTABLE                         R9 K15 [{"type", "description"}]
       53 LOADK                            R10 K16 ["number"]
       54 SETTABLEKS                       R10 R9 K13 ["type"]
       56 LOADK                            R10 K20 ["The y coordinate to move the character to. Required if instance_path is not provided."]
       57 SETTABLEKS                       R10 R9 K14 ["description"]
       59 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       61 CALL                             R6 3 1
       62 LOADK                            R8 K21 ["z"]
       63 DUPTABLE                         R9 K15 [{"type", "description"}]
       64 LOADK                            R10 K16 ["number"]
       65 SETTABLEKS                       R10 R9 K13 ["type"]
       67 LOADK                            R10 K22 ["The z coordinate to move the character to. Required if instance_path is not provided."]
       68 SETTABLEKS                       R10 R9 K14 ["description"]
       70 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       72 CALL                             R6 3 1
       73 LOADK                            R8 K23 ["instance_path"]
       74 DUPTABLE                         R9 K15 [{"type", "description"}]
       75 LOADK                            R10 K24 ["string"]
       76 SETTABLEKS                       R10 R9 K13 ["type"]
       78 LOADK                            R10 K25 ["The instance path that the character should be moved to. for example: \"game.Workspace.Part\",\"game.Workspace.Model\". The path should start with game, LocalPlayer, or Workspace."]
       79 SETTABLEKS                       R10 R9 K14 ["description"]
       81 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       83 CALL                             R6 3 1
       84 LOADK                            R8 K26 ["speed_multiplier"]
       85 DUPTABLE                         R9 K15 [{"type", "description"}]
       86 LOADK                            R10 K16 ["number"]
       87 SETTABLEKS                       R10 R9 K13 ["type"]
       89 LOADK                            R10 K27 ["speed multiplier, default is 1.0, 0.5 is half speed, 2.0 is double speed. minimum is 0.1, maximum is 10.0."]
       90 SETTABLEKS                       R10 R9 K14 ["description"]
       92 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       94 CALL                             R6 3 1
       95 MOVE                             R8 R5
       96 NAMECALL                         R6 R6 K28 ["setHandler"]
       98 CALL                             R6 2 1
       99 DUPTABLE                         R8 K34 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
      100 LOADK                            R9 K35 ["Character Navigation"]
      101 SETTABLEKS                       R9 R8 K29 ["title"]
      103 LOADB                            R9 0
      104 SETTABLEKS                       R9 R8 K30 ["readOnlyHint"]
      106 LOADB                            R9 0
      107 SETTABLEKS                       R9 R8 K31 ["destructiveHint"]
      109 LOADB                            R9 0
      110 SETTABLEKS                       R9 R8 K32 ["idempotentHint"]
      112 LOADB                            R9 0
      113 SETTABLEKS                       R9 R8 K33 ["openWorldHint"]
      115 NAMECALL                         R6 R6 K36 ["setAnnotations"]
      117 CALL                             R6 2 1
      118 NAMECALL                         R6 R6 K37 ["build"]
      120 CALL                             R6 1 1
      121 DUPTABLE                         R7 K43 [{"availableDataModelTypes", "toolCallOptions", "definition", "getPreExecuteWarning", "displayNameFunction"}]
      122 GETUPVAL                         R9 7
      123 CALL                             R9 0 1
      124 JUMPIFNOT                        R9 ; [+10]
      125 NEWTABLE                         R8 0 1
      127 GETUPVAL                         R9 1
      128 GETTABLEKS                       R9 R9 K44 ["Types"]
      130 GETTABLEKS                       R9 R9 K45 ["Client"]
      132 SETLIST                          R8 R9 1 [1]
      134 JUMPIF                           R8 ; [+1]
      135 LOADNIL                          R8
      136 SETTABLEKS                       R8 R7 K38 ["availableDataModelTypes"]
      138 DUPTABLE                         R8 K47 [{"timeout"}]
      139 LOADK                            R9 K48 [200000000]
      140 SETTABLEKS                       R9 R8 K46 ["timeout"]
      142 SETTABLEKS                       R8 R7 K39 ["toolCallOptions"]
      144 SETTABLEKS                       R6 R7 K40 ["definition"]
      146 DUPCLOSURE                       R8 K49 [PROTO_7]
      147 CAPTURE                          UPVAL U8
      148 SETTABLEKS                       R8 R7 K41 ["getPreExecuteWarning"]
      150 DUPCLOSURE                       R8 K50 [PROTO_8]
      151 CAPTURE                          UPVAL U9
      152 SETTABLEKS                       R8 R7 K42 ["displayNameFunction"]
      154 RETURN                           R7 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Signal"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Util"]
       32 GETTABLEKS                       R5 R5 K11 ["TestAutomationUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Tools"]
       39 GETTABLEKS                       R6 R6 K13 ["ToolTypes"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Resources"]
       46 GETTABLEKS                       R7 R7 K15 ["Localization"]
       48 GETTABLEKS                       R7 R7 K16 ["Translator"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K17 ["Flags"]
       55 GETTABLEKS                       R8 R8 K18 ["FFlagAssistantBackgroundDataModelToolCall"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Flags"]
       62 GETTABLEKS                       R9 R9 K19 ["FFlagDisableNavigationConfirmation"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K17 ["Flags"]
       69 GETTABLEKS                       R10 R10 K20 ["getIsAssistantBackgroundDataModelToolCall"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R10 R2 K6 ["Util"]
       74 GETTABLEKS                       R10 R10 K21 ["ToolBuilder"]
       76 GETTABLEKS                       R11 R2 K6 ["Util"]
       78 GETTABLEKS                       R11 R11 K22 ["ToolResult"]
       80 GETTABLEKS                       R12 R5 K23 ["ToolNames"]
       82 DUPCLOSURE                       R13 K24 [PROTO_9]
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R12
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R6
       93 RETURN                           R13 1
