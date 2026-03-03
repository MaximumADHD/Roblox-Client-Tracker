PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getDataModelType"]
        3 CALL                             R2 0 1
        4 JUMPIFEQKS                       R2 K1 ["Client"] ; [+5]
        6 GETIMPORT                        R2 K3 [error]
        8 LOADK                            R3 K4 ["This tool is only available in play mode with client datamodel focused."]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K5 ["characterNavigation"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 LOADK                            R2 K6 ["Success"]
       16 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["stopCharacterNavigation"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
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
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 1
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CALL                             R0 1 2
        6 SETUPVAL                         R0 0
        7 SETUPVAL                         R1 1
        8 GETUPVAL                         R0 4
        9 NAMECALL                         R0 R0 K2 ["Fire"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOT                        R2 ; [+17]
        1 GETTABLEKS                       R3 R2 K0 ["signal"]
        3 JUMPIFNOT                        R3 ; [+14]
        4 GETTABLEKS                       R4 R2 K0 ["signal"]
        6 GETTABLEKS                       R3 R4 K1 ["abortSignal"]
        8 JUMPIFNOT                        R3 ; [+9]
        9 GETTABLEKS                       R4 R2 K0 ["signal"]
       11 GETTABLEKS                       R3 R4 K1 ["abortSignal"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U0
       15 NAMECALL                         R3 R3 K2 ["Once"]
       17 CALL                             R3 2 0
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K3 ["new"]
       21 CALL                             R3 0 1
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R6 R7 K4 ["subscribeGameStopped"]
       27 GETUPVAL                         R7 3
       28 NEWCLOSURE                       R8 P1
       29 CAPTURE                          REF R4
       30 CAPTURE                          REF R5
       31 CAPTURE                          VAL R3
       32 CALL                             R6 2 1
       33 GETIMPORT                        R7 K7 [task.spawn]
       35 NEWCLOSURE                       R8 P2
       36 CAPTURE                          REF R4
       37 CAPTURE                          REF R5
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R3
       41 CALL                             R7 1 0
       42 JUMPIFNOTEQKNIL                  R4 ; [+4]
       44 NAMECALL                         R7 R3 K8 ["Wait"]
       46 CALL                             R7 1 0
       47 MOVE                             R7 R6
       48 CALL                             R7 0 0
       49 JUMPIF                           R4 ; [+4]
       50 GETIMPORT                        R7 K10 [error]
       52 MOVE                             R8 R5
       53 CALL                             R7 1 0
       54 GETUPVAL                         R7 5
       55 CALL                             R7 0 1
       56 MOVE                             R9 R5
       57 NAMECALL                         R7 R7 K11 ["addText"]
       59 CALL                             R7 2 1
       60 NAMECALL                         R7 R7 K12 ["build"]
       62 CALL                             R7 1 1
       63 CLOSEUPVALS                      R4
       64 RETURN                           R7 1

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
        8 NAMECALL                         R3 R1 K4 ["OnHostInvokeAsync"]
       10 CALL                             R3 3 1
       11 LOADK                            R6 K5 ["CharacterNavigationTool_StopCharacterNavigation"]
       12 DUPCLOSURE                       R7 K6 [PROTO_1]
       13 CAPTURE                          UPVAL U1
       14 NAMECALL                         R4 R1 K4 ["OnHostInvokeAsync"]
       16 CALL                             R4 3 1
       17 NEWCLOSURE                       R5 P2
       18 CAPTURE                          VAL R4
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U3
       24 GETUPVAL                         R7 4
       25 GETTABLEKS                       R6 R7 K7 ["define"]
       27 CALL                             R6 0 1
       28 GETUPVAL                         R9 5
       29 GETTABLEKS                       R8 R9 K8 ["CharacterNavigation"]
       31 NAMECALL                         R6 R6 K9 ["setName"]
       33 CALL                             R6 2 1
       34 LOADK                            R8 K10 ["Navigate the character to the given position, or instance."]
       35 NAMECALL                         R6 R6 K11 ["setDescription"]
       37 CALL                             R6 2 1
       38 LOADK                            R8 K12 ["x"]
       39 DUPTABLE                         R9 K15 [{"type", "description"}]
       40 LOADK                            R10 K16 ["number"]
       41 SETTABLEKS                       R10 R9 K13 ["type"]
       43 LOADK                            R10 K17 ["The x coordinate to move the character to. Required if instance_path is not provided."]
       44 SETTABLEKS                       R10 R9 K14 ["description"]
       46 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       48 CALL                             R6 3 1
       49 LOADK                            R8 K19 ["y"]
       50 DUPTABLE                         R9 K15 [{"type", "description"}]
       51 LOADK                            R10 K16 ["number"]
       52 SETTABLEKS                       R10 R9 K13 ["type"]
       54 LOADK                            R10 K20 ["The y coordinate to move the character to. Required if instance_path is not provided."]
       55 SETTABLEKS                       R10 R9 K14 ["description"]
       57 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       59 CALL                             R6 3 1
       60 LOADK                            R8 K21 ["z"]
       61 DUPTABLE                         R9 K15 [{"type", "description"}]
       62 LOADK                            R10 K16 ["number"]
       63 SETTABLEKS                       R10 R9 K13 ["type"]
       65 LOADK                            R10 K22 ["The z coordinate to move the character to. Required if instance_path is not provided."]
       66 SETTABLEKS                       R10 R9 K14 ["description"]
       68 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       70 CALL                             R6 3 1
       71 LOADK                            R8 K23 ["instance_path"]
       72 DUPTABLE                         R9 K15 [{"type", "description"}]
       73 LOADK                            R10 K24 ["string"]
       74 SETTABLEKS                       R10 R9 K13 ["type"]
       76 LOADK                            R10 K25 ["The instance path that the character should be moved to. for example: \"game.Workspace.Part\",\"game.Workspace.Model\". The path should start with game, LocalPlayer, or Workspace."]
       77 SETTABLEKS                       R10 R9 K14 ["description"]
       79 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       81 CALL                             R6 3 1
       82 LOADK                            R8 K26 ["speed_multiplier"]
       83 DUPTABLE                         R9 K15 [{"type", "description"}]
       84 LOADK                            R10 K16 ["number"]
       85 SETTABLEKS                       R10 R9 K13 ["type"]
       87 LOADK                            R10 K27 ["speed multiplier, default is 1.0, 0.5 is half speed, 2.0 is double speed. minimum is 0.1, maximum is 10.0."]
       88 SETTABLEKS                       R10 R9 K14 ["description"]
       90 NAMECALL                         R6 R6 K18 ["addOptionalArgument"]
       92 CALL                             R6 3 1
       93 MOVE                             R8 R5
       94 NAMECALL                         R6 R6 K28 ["setHandler"]
       96 CALL                             R6 2 1
       97 NAMECALL                         R6 R6 K29 ["build"]
       99 CALL                             R6 1 1
      100 DUPTABLE                         R7 K34 [{"toolCallOptions", "definition", "getPreExecuteWarning", "displayNameFunction"}]
      101 DUPTABLE                         R8 K36 [{"timeout"}]
      102 LOADK                            R9 K37 [200000000]
      103 SETTABLEKS                       R9 R8 K35 ["timeout"]
      105 SETTABLEKS                       R8 R7 K30 ["toolCallOptions"]
      107 SETTABLEKS                       R6 R7 K31 ["definition"]
      109 DUPCLOSURE                       R8 K38 [PROTO_7]
      110 CAPTURE                          UPVAL U6
      111 SETTABLEKS                       R8 R7 K32 ["getPreExecuteWarning"]
      113 DUPCLOSURE                       R8 K39 [PROTO_8]
      114 CAPTURE                          UPVAL U7
      115 SETTABLEKS                       R8 R7 K33 ["displayNameFunction"]
      117 RETURN                           R7 1

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
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Signal"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Tools"]
       25 GETTABLEKS                       R4 R5 K10 ["ToolTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K11 ["Resources"]
       32 GETTABLEKS                       R6 R7 K12 ["Localization"]
       34 GETTABLEKS                       R5 R6 K13 ["Translator"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R6 R1 K14 ["Util"]
       39 GETTABLEKS                       R5 R6 K15 ["ToolBuilder"]
       41 GETTABLEKS                       R7 R1 K14 ["Util"]
       43 GETTABLEKS                       R6 R7 K16 ["ToolResult"]
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R9 R0 K14 ["Util"]
       49 GETTABLEKS                       R8 R9 K17 ["DataModelType"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R10 R0 K14 ["Util"]
       56 GETTABLEKS                       R9 R10 K18 ["TestAutomationUtils"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R11 R0 K19 ["Flags"]
       63 GETTABLEKS                       R10 R11 K20 ["FFlagDisableNavigationConfirmation"]
       65 CALL                             R9 1 1
       66 GETTABLEKS                       R10 R3 K21 ["ToolNames"]
       68 DUPCLOSURE                       R11 K22 [PROTO_9]
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R4
       77 RETURN                           R11 1
