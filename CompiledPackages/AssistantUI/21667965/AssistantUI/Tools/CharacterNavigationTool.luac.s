PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["characterNavigation"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantPlaytestToolFix"]
        8 JUMPIFNOT                        R2 ; [+5]
        9 JUMPIFNOT                        R1 ; [+4]
       10 LOADK                            R3 K2 ["Success. "]
       11 MOVE                             R4 R1
       12 CONCAT                           R2 R3 R4
       13 RETURN                           R2 1
       14 LOADK                            R2 K3 ["Success"]
       15 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["stopCharacterNavigation"]
        3 CALL                             R0 0 0
        4 LOADNIL                          R0
        5 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["characterNavigation"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["FFlagAssistantPlaytestToolFix"]
        8 JUMPIFNOT                        R4 ; [+5]
        9 JUMPIFNOT                        R3 ; [+4]
       10 LOADK                            R4 K2 ["Success. "]
       11 MOVE                             R5 R3
       12 CONCAT                           R2 R4 R5
       13 RETURN                           R2 1
       14 LOADK                            R2 K3 ["Success"]
       15 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["stopCharacterNavigation"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["characterNavigation"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["FFlagAssistantPlaytestToolFix"]
        8 JUMPIFNOT                        R4 ; [+5]
        9 JUMPIFNOT                        R3 ; [+4]
       10 LOADK                            R4 K2 ["Success. "]
       11 MOVE                             R5 R3
       12 CONCAT                           R2 R4 R5
       13 RETURN                           R2 1
       14 LOADK                            R2 K3 ["Success"]
       15 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["stopCharacterNavigation"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["InvokeAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+16]
        4 GETIMPORT                        R0 K2 [pcall]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 1 2
       10 JUMPIF                           R0 ; [+12]
       11 GETIMPORT                        R2 K4 [warn]
       13 LOADK                            R3 K5 ["[Assistant] Failed to stop character navigation: %*"]
       14 MOVE                             R5 R1
       15 NAMECALL                         R3 R3 K6 ["format"]
       17 CALL                             R3 2 1
       18 CALL                             R2 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 3
       21 GETUPVAL                         R1 4
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 LOADK                            R0 K0 ["User stopped the game"]
        3 SETUPVAL                         R0 1
        4 GETUPVAL                         R0 2
        5 NAMECALL                         R0 R0 K1 ["Fire"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R3 3
        7 NAMECALL                         R0 R0 K1 ["InvokeAsync"]
        9 CALL                             R0 3 -1
       10 RETURN                           R0 -1
       11 GETUPVAL                         R0 4
       12 GETUPVAL                         R1 5
       13 GETUPVAL                         R2 3
       14 CALL                             R0 2 -1
       15 RETURN                           R0 -1

PROTO_11:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CALL                             R0 1 2
       10 SETUPVAL                         R0 0
       11 SETUPVAL                         R1 1
       12 GETUPVAL                         R0 8
       13 NAMECALL                         R0 R0 K2 ["Fire"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["targetDataModel"]
        3 JUMPIF                           R3 ; [+1]
        4 LOADNIL                          R3
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K1 ["FFlagAssistantUseNewDMNetworking"]
        8 JUMPIFNOT                        R5 ; [+6]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["forTarget"]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R4
       16 JUMPIFNOT                        R2 ; [+21]
       17 GETTABLEKS                       R5 R2 K3 ["signal"]
       19 JUMPIFNOT                        R5 ; [+18]
       20 GETTABLEKS                       R5 R2 K3 ["signal"]
       22 GETTABLEKS                       R5 R5 K4 ["abortSignal"]
       24 JUMPIFNOT                        R5 ; [+13]
       25 GETTABLEKS                       R5 R2 K3 ["signal"]
       27 GETTABLEKS                       R5 R5 K4 ["abortSignal"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R4
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R3
       35 NAMECALL                         R5 R5 K5 ["Once"]
       37 CALL                             R5 2 0
       38 GETUPVAL                         R5 4
       39 GETTABLEKS                       R5 R5 K6 ["new"]
       41 CALL                             R5 0 1
       42 LOADNIL                          R6
       43 LOADNIL                          R7
       44 GETUPVAL                         R8 5
       45 GETTABLEKS                       R8 R8 K7 ["subscribeGameStopped"]
       47 GETUPVAL                         R9 6
       48 GETUPVAL                         R10 7
       49 NEWCLOSURE                       R11 P1
       50 CAPTURE                          REF R6
       51 CAPTURE                          REF R7
       52 CAPTURE                          VAL R5
       53 CALL                             R8 3 1
       54 GETIMPORT                        R9 K10 [task.spawn]
       56 NEWCLOSURE                       R10 P2
       57 CAPTURE                          REF R6
       58 CAPTURE                          REF R7
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          UPVAL U8
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U9
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R5
       66 CALL                             R9 1 0
       67 JUMPIFNOTEQKNIL                  R6 ; [+4]
       69 NAMECALL                         R9 R5 K11 ["Wait"]
       71 CALL                             R9 1 0
       72 MOVE                             R9 R8
       73 CALL                             R9 0 0
       74 JUMPIF                           R6 ; [+4]
       75 GETIMPORT                        R9 K13 [error]
       77 MOVE                             R10 R7
       78 CALL                             R9 1 0
       79 GETUPVAL                         R9 10
       80 CALL                             R9 0 1
       81 MOVE                             R11 R7
       82 NAMECALL                         R9 R9 K14 ["addText"]
       84 CALL                             R9 2 1
       85 NAMECALL                         R9 R9 K15 ["build"]
       87 CALL                             R9 1 1
       88 CLOSEUPVALS                      R6
       89 RETURN                           R9 1

PROTO_13:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["FFlagDisableNavigationConfirmation"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        7 RETURN                           R0 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["networkingOLD"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["environment"]
        6 GETTABLEKS                       R4 R0 K3 ["destroying"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 LOADNIL                          R8
       12 GETUPVAL                         R9 0
       13 GETTABLEKS                       R9 R9 K4 ["FFlagAssistantUseNewDMNetworking"]
       15 JUMPIFNOT                        R9 ; [+51]
       16 GETUPVAL                         R9 1
       17 GETTABLEKS                       R9 R9 K5 ["invoke"]
       19 MOVE                             R10 R2
       20 LOADK                            R11 K6 ["CharacterNavigationTool.NavigateCharacter"]
       21 CALL                             R9 2 1
       22 MOVE                             R6 R9
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R9 R9 K5 ["invoke"]
       26 MOVE                             R10 R2
       27 LOADK                            R11 K7 ["CharacterNavigationTool.StopCharacterNavigation"]
       28 CALL                             R9 2 1
       29 MOVE                             R8 R9
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K8 ["new"]
       33 CALL                             R9 0 1
       34 NAMECALL                         R10 R2 K9 ["GetIdentity"]
       36 CALL                             R10 1 1
       37 GETUPVAL                         R11 3
       38 GETTABLEKS                       R11 R11 K10 ["Identity"]
       40 GETTABLEKS                       R11 R11 K11 ["Standalone"]
       42 JUMPIFEQ                         R10 R11 ; [+18]
       44 DUPCLOSURE                       R14 K12 [PROTO_2]
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U0
       47 NAMECALL                         R12 R6 K13 ["Connect"]
       49 CALL                             R12 2 -1
       50 NAMECALL                         R10 R9 K14 ["Add"]
       52 CALL                             R10 -1 0
       53 DUPCLOSURE                       R14 K15 [PROTO_3]
       54 CAPTURE                          UPVAL U4
       55 NAMECALL                         R12 R8 K13 ["Connect"]
       57 CALL                             R12 2 -1
       58 NAMECALL                         R10 R9 K14 ["Add"]
       60 CALL                             R10 -1 0
       61 NEWCLOSURE                       R12 P2
       62 CAPTURE                          VAL R9
       63 NAMECALL                         R10 R4 K16 ["Once"]
       65 CALL                             R10 2 0
       66 JUMP                             ; [+15]
       67 LOADK                            R11 K17 ["CharacterNavigationTool_NavigateCharacter"]
       68 DUPCLOSURE                       R12 K18 [PROTO_5]
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          UPVAL U0
       71 NAMECALL                         R9 R1 K19 ["OnHostInvokeAsync"]
       73 CALL                             R9 3 1
       74 MOVE                             R5 R9
       75 LOADK                            R11 K20 ["CharacterNavigationTool_StopCharacterNavigation"]
       76 DUPCLOSURE                       R12 K21 [PROTO_6]
       77 CAPTURE                          UPVAL U4
       78 NAMECALL                         R9 R1 K19 ["OnHostInvokeAsync"]
       80 CALL                             R9 3 1
       81 MOVE                             R7 R9
       82 NEWCLOSURE                       R9 P5
       83 CAPTURE                          UPVAL U0
       84 CAPTURE                          UPVAL U5
       85 CAPTURE                          REF R8
       86 CAPTURE                          REF R7
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R2
       91 CAPTURE                          REF R6
       92 CAPTURE                          REF R5
       93 CAPTURE                          UPVAL U7
       94 GETUPVAL                         R10 8
       95 GETTABLEKS                       R10 R10 K22 ["define"]
       97 CALL                             R10 0 1
       98 GETUPVAL                         R12 9
       99 GETTABLEKS                       R12 R12 K23 ["CharacterNavigation"]
      101 NAMECALL                         R10 R10 K24 ["setName"]
      103 CALL                             R10 2 1
      104 LOADK                            R12 K25 ["Navigate the character to the given position, or instance."]
      105 NAMECALL                         R10 R10 K26 ["setDescription"]
      107 CALL                             R10 2 1
      108 LOADK                            R12 K27 ["x"]
      109 DUPTABLE                         R13 K32 [{["type"] = "number", ["description"] = "The x coordinate to move the character to. Required if instance_path is not provided."}]
      110 NAMECALL                         R10 R10 K33 ["addOptionalArgument"]
      112 CALL                             R10 3 1
      113 LOADK                            R12 K34 ["y"]
      114 DUPTABLE                         R13 K36 [{["type"] = "number", ["description"] = "The y coordinate to move the character to. Required if instance_path is not provided."}]
      115 NAMECALL                         R10 R10 K33 ["addOptionalArgument"]
      117 CALL                             R10 3 1
      118 LOADK                            R12 K37 ["z"]
      119 DUPTABLE                         R13 K39 [{["type"] = "number", ["description"] = "The z coordinate to move the character to. Required if instance_path is not provided."}]
      120 NAMECALL                         R10 R10 K33 ["addOptionalArgument"]
      122 CALL                             R10 3 1
      123 LOADK                            R12 K40 ["instance_path"]
      124 DUPTABLE                         R13 K43 [{["type"] = "string", ["description"] = "The instance path that the character should be moved to. for example: \"game.Workspace.Part\",\"game.Workspace.Model\". The path should start with game, LocalPlayer, or Workspace."}]
      125 NAMECALL                         R10 R10 K33 ["addOptionalArgument"]
      127 CALL                             R10 3 1
      128 LOADK                            R12 K44 ["speed_multiplier"]
      129 DUPTABLE                         R13 K46 [{["type"] = "number", ["description"] = "speed multiplier, default is 1.0, 0.5 is half speed, 2.0 is double speed. minimum is 0.1, maximum is 10.0."}]
      130 NAMECALL                         R10 R10 K33 ["addOptionalArgument"]
      132 CALL                             R10 3 1
      133 MOVE                             R12 R9
      134 NAMECALL                         R10 R10 K47 ["setHandler"]
      136 CALL                             R10 2 1
      137 DUPTABLE                         R12 K55 [{["title"] = "Character Navigation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      138 NAMECALL                         R10 R10 K56 ["setAnnotations"]
      140 CALL                             R10 2 1
      141 NAMECALL                         R10 R10 K57 ["build"]
      143 CALL                             R10 1 1
      144 DUPTABLE                         R11 K62 [{"availableDataModelTypes", "toolCallOptions", "definition", "getPreExecuteWarning"}]
      145 NEWTABLE                         R12 0 1
      147 GETUPVAL                         R13 10
      148 GETTABLEKS                       R13 R13 K63 ["Types"]
      150 GETTABLEKS                       R13 R13 K64 ["Client"]
      152 SETLIST                          R12 R13 1 [1]
      154 SETTABLEKS                       R12 R11 K58 ["availableDataModelTypes"]
      156 DUPTABLE                         R12 K67 [{["timeout"] = 200000000}]
      157 SETTABLEKS                       R12 R11 K59 ["toolCallOptions"]
      159 SETTABLEKS                       R10 R11 K60 ["definition"]
      161 DUPCLOSURE                       R12 K68 [PROTO_13]
      162 CAPTURE                          UPVAL U0
      163 SETTABLEKS                       R12 R11 K61 ["getPreExecuteWarning"]
      165 CLOSEUPVALS                      R5
      166 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Bin"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["DataModelType"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Flags"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K8 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["ModelContextProtocol"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K6 ["Util"]
       44 GETTABLEKS                       R7 R7 K13 ["NetworkingIdentity"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K8 ["Parent"]
       51 GETTABLEKS                       R8 R8 K14 ["Signal"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K6 ["Util"]
       58 GETTABLEKS                       R9 R9 K15 ["TestAutomationUtils"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K16 ["Tools"]
       65 GETTABLEKS                       R10 R10 K17 ["ToolTypes"]
       67 CALL                             R9 1 1
       68 GETTABLEKS                       R10 R2 K18 ["Remote"]
       70 GETTABLEKS                       R11 R5 K6 ["Util"]
       72 GETTABLEKS                       R11 R11 K19 ["ToolBuilder"]
       74 GETTABLEKS                       R12 R5 K6 ["Util"]
       76 GETTABLEKS                       R12 R12 K20 ["ToolResult"]
       78 GETTABLEKS                       R13 R9 K21 ["ToolNames"]
       80 DUPCLOSURE                       R14 K22 [PROTO_0]
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R4
       83 DUPCLOSURE                       R15 K23 [PROTO_1]
       84 CAPTURE                          VAL R8
       85 DUPCLOSURE                       R16 K24 [PROTO_14]
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R3
       97 RETURN                           R16 1
