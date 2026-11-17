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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["InvokeAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R0 K1 [pcall]
        6 CALL                             R0 1 2
        7 JUMPIF                           R0 ; [+8]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["[Assistant] Failed to stop character navigation: %*"]
       11 MOVE                             R5 R1
       12 NAMECALL                         R3 R3 K5 ["format"]
       14 CALL                             R3 2 1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 LOADK                            R0 K0 ["User stopped the game"]
        3 SETUPVAL                         R0 1
        4 GETUPVAL                         R0 2
        5 NAMECALL                         R0 R0 K1 ["Fire"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["InvokeAsync"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U2
        2 CAPTURE                          UPVAL U3
        3 CAPTURE                          UPVAL U4
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R0 K1 [pcall]
        7 CALL                             R0 1 2
        8 SETUPVAL                         R0 0
        9 SETUPVAL                         R1 1
       10 GETUPVAL                         R0 5
       11 NAMECALL                         R0 R0 K2 ["Fire"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_10:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["targetDataModel"]
        3 JUMPIF                           R3 ; [+1]
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["forTarget"]
        8 MOVE                             R5 R3
        9 CALL                             R4 1 1
       10 JUMPIFNOT                        R2 ; [+18]
       11 GETTABLEKS                       R5 R2 K2 ["signal"]
       13 JUMPIFNOT                        R5 ; [+15]
       14 GETTABLEKS                       R5 R2 K2 ["signal"]
       16 GETTABLEKS                       R5 R5 K3 ["abortSignal"]
       18 JUMPIFNOT                        R5 ; [+10]
       19 GETTABLEKS                       R5 R2 K2 ["signal"]
       21 GETTABLEKS                       R5 R5 K3 ["abortSignal"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R4
       26 NAMECALL                         R5 R5 K4 ["Once"]
       28 CALL                             R5 2 0
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K5 ["new"]
       32 CALL                             R5 0 1
       33 LOADNIL                          R6
       34 LOADNIL                          R7
       35 GETUPVAL                         R8 3
       36 GETTABLEKS                       R8 R8 K6 ["subscribeGameStopped"]
       38 GETUPVAL                         R9 4
       39 NEWCLOSURE                       R10 P1
       40 CAPTURE                          REF R6
       41 CAPTURE                          REF R7
       42 CAPTURE                          VAL R5
       43 CALL                             R8 2 1
       44 GETIMPORT                        R9 K9 [task.spawn]
       46 NEWCLOSURE                       R10 P2
       47 CAPTURE                          REF R6
       48 CAPTURE                          REF R7
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R5
       53 CALL                             R9 1 0
       54 JUMPIFNOTEQKNIL                  R6 ; [+4]
       56 NAMECALL                         R9 R5 K10 ["Wait"]
       58 CALL                             R9 1 0
       59 MOVE                             R9 R8
       60 CALL                             R9 0 0
       61 JUMPIF                           R6 ; [+4]
       62 GETIMPORT                        R9 K12 [error]
       64 MOVE                             R10 R7
       65 CALL                             R9 1 0
       66 GETUPVAL                         R9 6
       67 CALL                             R9 0 1
       68 MOVE                             R11 R7
       69 NAMECALL                         R9 R9 K13 ["addText"]
       71 CALL                             R9 2 1
       72 NAMECALL                         R9 R9 K14 ["build"]
       74 CALL                             R9 1 1
       75 CLOSEUPVALS                      R6
       76 RETURN                           R9 1

PROTO_11:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["FFlagDisableNavigationConfirmation"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        7 RETURN                           R0 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["invoke"]
        9 MOVE                             R5 R1
       10 LOADK                            R6 K4 ["CharacterNavigationTool.NavigateCharacter"]
       11 CALL                             R4 2 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K3 ["invoke"]
       15 MOVE                             R6 R1
       16 LOADK                            R7 K5 ["CharacterNavigationTool.StopCharacterNavigation"]
       17 CALL                             R5 2 1
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K6 ["new"]
       21 CALL                             R6 0 1
       22 NAMECALL                         R7 R1 K7 ["GetIdentity"]
       24 CALL                             R7 1 1
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K8 ["Identity"]
       28 GETTABLEKS                       R8 R8 K9 ["Standalone"]
       30 JUMPIFEQ                         R7 R8 ; [+18]
       32 DUPCLOSURE                       R11 K10 [PROTO_2]
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U4
       35 NAMECALL                         R9 R4 K11 ["Connect"]
       37 CALL                             R9 2 -1
       38 NAMECALL                         R7 R6 K12 ["Add"]
       40 CALL                             R7 -1 0
       41 DUPCLOSURE                       R11 K13 [PROTO_3]
       42 CAPTURE                          UPVAL U3
       43 NAMECALL                         R9 R5 K11 ["Connect"]
       45 CALL                             R9 2 -1
       46 NAMECALL                         R7 R6 K12 ["Add"]
       48 CALL                             R7 -1 0
       49 NEWCLOSURE                       R9 P2
       50 CAPTURE                          VAL R6
       51 NAMECALL                         R7 R3 K14 ["Once"]
       53 CALL                             R7 2 0
       54 NEWCLOSURE                       R7 P3
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          VAL R5
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R4
       61 CAPTURE                          UPVAL U7
       62 GETUPVAL                         R8 8
       63 GETTABLEKS                       R8 R8 K15 ["define"]
       65 CALL                             R8 0 1
       66 GETUPVAL                         R10 9
       67 GETTABLEKS                       R10 R10 K16 ["CharacterNavigation"]
       69 NAMECALL                         R8 R8 K17 ["setName"]
       71 CALL                             R8 2 1
       72 LOADK                            R10 K18 ["Navigate the character to the given position, or instance."]
       73 NAMECALL                         R8 R8 K19 ["setDescription"]
       75 CALL                             R8 2 1
       76 LOADK                            R10 K20 ["x"]
       77 DUPTABLE                         R11 K25 [{["type"] = "number", ["description"] = "The x coordinate to move the character to. Required if instance_path is not provided."}]
       78 NAMECALL                         R8 R8 K26 ["addOptionalArgument"]
       80 CALL                             R8 3 1
       81 LOADK                            R10 K27 ["y"]
       82 DUPTABLE                         R11 K29 [{["type"] = "number", ["description"] = "The y coordinate to move the character to. Required if instance_path is not provided."}]
       83 NAMECALL                         R8 R8 K26 ["addOptionalArgument"]
       85 CALL                             R8 3 1
       86 LOADK                            R10 K30 ["z"]
       87 DUPTABLE                         R11 K32 [{["type"] = "number", ["description"] = "The z coordinate to move the character to. Required if instance_path is not provided."}]
       88 NAMECALL                         R8 R8 K26 ["addOptionalArgument"]
       90 CALL                             R8 3 1
       91 LOADK                            R10 K33 ["instance_path"]
       92 DUPTABLE                         R11 K36 [{["type"] = "string", ["description"] = "The instance path that the character should be moved to. for example: \"game.Workspace.Part\",\"game.Workspace.Model\". The path should start with game, LocalPlayer, or Workspace."}]
       93 NAMECALL                         R8 R8 K26 ["addOptionalArgument"]
       95 CALL                             R8 3 1
       96 LOADK                            R10 K37 ["speed_multiplier"]
       97 DUPTABLE                         R11 K39 [{["type"] = "number", ["description"] = "speed multiplier, default is 1.0, 0.5 is half speed, 2.0 is double speed. minimum is 0.1, maximum is 10.0."}]
       98 NAMECALL                         R8 R8 K26 ["addOptionalArgument"]
      100 CALL                             R8 3 1
      101 MOVE                             R10 R7
      102 NAMECALL                         R8 R8 K40 ["setHandler"]
      104 CALL                             R8 2 1
      105 LOADK                            R10 K41 ["Character Navigation"]
      106 NAMECALL                         R8 R8 K42 ["setTitle"]
      108 CALL                             R8 2 1
      109 DUPTABLE                         R10 K49 [{["title"] = "Character Navigation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      110 NAMECALL                         R8 R8 K50 ["setAnnotations"]
      112 CALL                             R8 2 1
      113 NAMECALL                         R8 R8 K51 ["build"]
      115 CALL                             R8 1 1
      116 DUPTABLE                         R9 K56 [{"availableDataModelTypes", "toolCallOptions", "definition", "getPreExecuteWarning"}]
      117 NEWTABLE                         R10 0 1
      119 GETUPVAL                         R11 10
      120 GETTABLEKS                       R11 R11 K57 ["Types"]
      122 GETTABLEKS                       R11 R11 K58 ["Client"]
      124 SETLIST                          R10 R11 1 [1]
      126 SETTABLEKS                       R10 R9 K52 ["availableDataModelTypes"]
      128 DUPTABLE                         R10 K61 [{["timeout"] = 200000000}]
      129 SETTABLEKS                       R10 R9 K53 ["toolCallOptions"]
      131 SETTABLEKS                       R8 R9 K54 ["definition"]
      133 DUPCLOSURE                       R10 K62 [PROTO_11]
      134 CAPTURE                          UPVAL U4
      135 SETTABLEKS                       R10 R9 K55 ["getPreExecuteWarning"]
      137 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Bin"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ModelContextProtocol"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Util"]
       28 GETTABLEKS                       R6 R6 K11 ["DataModelType"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Flags"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K10 ["Util"]
       40 GETTABLEKS                       R8 R8 K13 ["NetworkingIdentity"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K4 ["Parent"]
       47 GETTABLEKS                       R9 R9 K14 ["Signal"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R0 K10 ["Util"]
       54 GETTABLEKS                       R10 R10 K15 ["TestAutomationUtils"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K6 [require]
       59 GETTABLEKS                       R11 R0 K16 ["Tools"]
       61 GETTABLEKS                       R11 R11 K17 ["ToolTypes"]
       63 CALL                             R10 1 1
       64 GETTABLEKS                       R11 R3 K18 ["Remote"]
       66 GETTABLEKS                       R12 R4 K10 ["Util"]
       68 GETTABLEKS                       R12 R12 K19 ["ToolBuilder"]
       70 GETTABLEKS                       R13 R4 K10 ["Util"]
       72 GETTABLEKS                       R13 R13 K20 ["ToolResult"]
       74 GETTABLEKS                       R14 R10 K21 ["ToolNames"]
       76 DUPCLOSURE                       R15 K22 [PROTO_0]
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R6
       79 DUPCLOSURE                       R16 K23 [PROTO_1]
       80 CAPTURE                          VAL R9
       81 DUPCLOSURE                       R17 K24 [PROTO_12]
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R5
       93 RETURN                           R17 1
