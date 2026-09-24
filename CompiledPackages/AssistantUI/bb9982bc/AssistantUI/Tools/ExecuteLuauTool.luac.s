PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantStandaloneDataModel"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["EngineFeatureAssistantBridgeStandalone"]
        7 JUMPIFEQKB                       R1 TRUE ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["targetDataModel"]
        3 JUMPIF                           R2 ; [+1]
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["FFlagAssistantStandaloneDataModel"]
        9 JUMPIFNOT                        R4 ; [+7]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["EngineFeatureAssistantBridgeStandalone"]
       13 JUMPIFEQKB                       R5 TRUE ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 JUMPIFNOT                        R4 ; [+43]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K3 ["Types"]
       21 GETTABLEKS                       R4 R4 K4 ["Standalone"]
       23 JUMPIFNOTEQ                      R2 R4 ; [+37]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K5 ["bridges"]
       28 GETTABLEKS                       R4 R4 K6 ["ExecuteLuau"]
       30 GETTABLEKS                       R4 R4 K7 ["createHostContext"]
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 3
       36 GETTABLEKS                       R5 R5 K8 ["bridge"]
       38 GETTABLEKS                       R5 R5 K9 ["loadCodeAsync"]
       40 DUPTABLE                         R6 K11 [{"code"}]
       41 GETTABLEKS                       R7 R0 K10 ["code"]
       43 SETTABLEKS                       R7 R6 K10 ["code"]
       45 MOVE                             R7 R4
       46 CALL                             R5 2 1
       47 GETUPVAL                         R6 3
       48 GETTABLEKS                       R6 R6 K8 ["bridge"]
       50 GETTABLEKS                       R6 R6 K12 ["runCodeAsync"]
       52 DUPTABLE                         R7 K14 [{"id"}]
       53 GETTABLEKS                       R8 R5 K13 ["id"]
       55 SETTABLEKS                       R8 R7 K13 ["id"]
       57 MOVE                             R8 R4
       58 CALL                             R6 2 1
       59 MOVE                             R3 R6
       60 JUMP                             ; [+29]
       61 GETUPVAL                         R4 2
       62 GETTABLEKS                       R4 R4 K5 ["bridges"]
       64 GETTABLEKS                       R4 R4 K6 ["ExecuteLuau"]
       66 GETTABLEKS                       R4 R4 K15 ["createGuestContext"]
       68 MOVE                             R5 R2
       69 LOADNIL                          R6
       70 CALL                             R4 2 1
       71 GETTABLEKS                       R4 R4 K8 ["bridge"]
       73 GETTABLEKS                       R5 R4 K9 ["loadCodeAsync"]
       75 DUPTABLE                         R6 K11 [{"code"}]
       76 GETTABLEKS                       R7 R0 K10 ["code"]
       78 SETTABLEKS                       R7 R6 K10 ["code"]
       80 CALL                             R5 1 1
       81 GETTABLEKS                       R6 R4 K12 ["runCodeAsync"]
       83 DUPTABLE                         R7 K14 [{"id"}]
       84 GETTABLEKS                       R8 R5 K13 ["id"]
       86 SETTABLEKS                       R8 R7 K13 ["id"]
       88 CALL                             R6 1 1
       89 MOVE                             R3 R6
       90 GETTABLEKS                       R4 R3 K16 ["success"]
       92 JUMPIFNOT                        R4 ; [+11]
       93 GETUPVAL                         R4 4
       94 CALL                             R4 0 1
       95 GETTABLEKS                       R6 R3 K17 ["result"]
       97 NAMECALL                         R4 R4 K18 ["addText"]
       99 CALL                             R4 2 1
      100 NAMECALL                         R4 R4 K19 ["build"]
      102 CALL                             R4 1 -1
      103 RETURN                           R4 -1
      104 GETIMPORT                        R4 K21 [error]
      106 GETTABLEKS                       R5 R3 K17 ["result"]
      108 CALL                             R4 1 0
      109 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["environment"]
        3 GETTABLEKS                       R0 R0 K1 ["getStudioPlayState"]
        5 CALL                             R0 0 1
        6 JUMPIF                           R0 ; [+6]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K2 ["Types"]
       10 GETTABLEKS                       R0 R0 K3 ["Edit"]
       12 RETURN                           R0 1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["environment"]
       16 GETTABLEKS                       R1 R1 K4 ["getFocusedDataModelType"]
       18 CALL                             R1 0 1
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K2 ["Types"]
       22 GETTABLEKS                       R2 R2 K5 ["Server"]
       24 JUMPIFNOTEQ                      R1 R2 ; [+7]
       26 GETUPVAL                         R0 1
       27 GETTABLEKS                       R0 R0 K2 ["Types"]
       29 GETTABLEKS                       R0 R0 K5 ["Server"]
       31 RETURN                           R0 1
       32 GETUPVAL                         R0 1
       33 GETTABLEKS                       R0 R0 K2 ["Types"]
       35 GETTABLEKS                       R0 R0 K6 ["Client"]
       37 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["ExecuteLuau"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["ExecuteLuau"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K6 [{"code", "datamodel_type"}]
        7 GETUPVAL                         R3 1
        8 SETTABLEKS                       R3 R2 K4 ["code"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K7 ["environment"]
       13 GETTABLEKS                       R4 R4 K8 ["getStudioPlayState"]
       15 CALL                             R4 0 1
       16 JUMPIF                           R4 ; [+6]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 GETTABLEKS                       R3 R3 K10 ["Edit"]
       22 JUMP                             ; [+24]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K7 ["environment"]
       26 GETTABLEKS                       R4 R4 K11 ["getFocusedDataModelType"]
       28 CALL                             R4 0 1
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K9 ["Types"]
       32 GETTABLEKS                       R5 R5 K12 ["Server"]
       34 JUMPIFNOTEQ                      R4 R5 ; [+7]
       36 GETUPVAL                         R3 3
       37 GETTABLEKS                       R3 R3 K9 ["Types"]
       39 GETTABLEKS                       R3 R3 K12 ["Server"]
       41 JUMP                             ; [+5]
       42 GETUPVAL                         R3 3
       43 GETTABLEKS                       R3 R3 K9 ["Types"]
       45 GETTABLEKS                       R3 R3 K13 ["Client"]
       47 SETTABLEKS                       R3 R2 K5 ["datamodel_type"]
       49 SETTABLEKS                       R2 R1 K1 ["arguments"]
       51 RETURN                           R1 1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 NEWTABLE                         R2 0 1
        7 MOVE                             R3 R1
        8 SETLIST                          R2 R3 1 [1]
       10 RETURN                           R2 1

PROTO_6:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["ExecuteLuau"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K6 [{"code", "datamodel_type"}]
        7 SETTABLEKS                       R0 R2 K4 ["code"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K7 ["environment"]
       12 GETTABLEKS                       R4 R4 K8 ["getStudioPlayState"]
       14 CALL                             R4 0 1
       15 JUMPIF                           R4 ; [+6]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K9 ["Types"]
       19 GETTABLEKS                       R3 R3 K10 ["Edit"]
       21 JUMP                             ; [+24]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K7 ["environment"]
       25 GETTABLEKS                       R4 R4 K11 ["getFocusedDataModelType"]
       27 CALL                             R4 0 1
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K9 ["Types"]
       31 GETTABLEKS                       R5 R5 K12 ["Server"]
       33 JUMPIFNOTEQ                      R4 R5 ; [+7]
       35 GETUPVAL                         R3 2
       36 GETTABLEKS                       R3 R3 K9 ["Types"]
       38 GETTABLEKS                       R3 R3 K12 ["Server"]
       40 JUMP                             ; [+5]
       41 GETUPVAL                         R3 2
       42 GETTABLEKS                       R3 R3 K9 ["Types"]
       44 GETTABLEKS                       R3 R3 K13 ["Client"]
       46 SETTABLEKS                       R3 R2 K5 ["datamodel_type"]
       48 SETTABLEKS                       R2 R1 K1 ["arguments"]
       50 RETURN                           R1 1

PROTO_7:
        0 JUMPIFNOT                        R1 ; [+20]
        1 GETTABLEKS                       R2 R1 K0 ["code"]
        3 JUMPIFNOT                        R2 ; [+17]
        4 GETTABLEKS                       R3 R1 K0 ["code"]
        6 FASTCALL1                        TYPEOF R3 ; [+2]
        7 GETIMPORT                        R2 K2 [typeof]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+10]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R3 R1 K0 ["code"]
       15 CALL                             R2 1 1
       16 JUMPIFNOT                        R2 ; [+4]
       17 DUPTABLE                         R3 K7 [{["shouldConfirm"] = True, ["warningMessage"]}]
       18 SETTABLEKS                       R2 R3 K6 ["warningMessage"]
       20 RETURN                           R3 1
       21 LOADNIL                          R2
       22 RETURN                           R2 1

PROTO_8:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 GETUPVAL                         R2 4
        7 GETTABLEKS                       R2 R2 K0 ["define"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R4 5
       11 GETTABLEKS                       R4 R4 K1 ["ExecuteLuau"]
       13 NAMECALL                         R2 R2 K2 ["setName"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K3 ["FFlagAssistantHintMultiEditOverExecLuau"]
       19 JUMPIFNOT                        R5 ; [+2]
       20 GETUPVAL                         R4 6
       21 JUMP                             ; [+1]
       22 LOADK                            R4 K4 ["Executes Luau code in Roblox Studio. Returns the result of the executed code or an error message if the code fails to execute."]
       23 NAMECALL                         R2 R2 K5 ["setDescription"]
       25 CALL                             R2 2 1
       26 LOADK                            R4 K6 ["code"]
       27 DUPTABLE                         R5 K10 [{["type"] = "string", ["description"]}]
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K3 ["FFlagAssistantHintMultiEditOverExecLuau"]
       31 JUMPIFNOT                        R7 ; [+2]
       32 LOADK                            R6 K11 ["The Luau code to execute. Must NOT be used to edit script source -- use multi_edit for that."]
       33 JUMP                             ; [+1]
       34 LOADK                            R6 K12 ["The Luau code to execute."]
       35 SETTABLEKS                       R6 R5 K9 ["description"]
       37 NAMECALL                         R2 R2 K13 ["addArgument"]
       39 CALL                             R2 3 1
       40 MOVE                             R4 R1
       41 NAMECALL                         R2 R2 K14 ["setHandler"]
       43 CALL                             R2 2 1
       44 DUPTABLE                         R4 K23 [{["title"] = "Execute Luau", ["readOnlyHint"] = False, ["destructiveHint"] = True, ["idempotentHint"] = False, ["openWorldHint"] = True}]
       45 NAMECALL                         R2 R2 K24 ["setAnnotations"]
       47 CALL                             R2 2 1
       48 NAMECALL                         R2 R2 K25 ["build"]
       50 CALL                             R2 1 1
       51 NEWCLOSURE                       R3 P1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U1
       54 DUPTABLE                         R4 K31 [{["command"] = "run", ["getDescription"], ["runToolChain"], ["mapToToolCall"]}]
       55 DUPCLOSURE                       R5 K32 [PROTO_3]
       56 CAPTURE                          UPVAL U7
       57 SETTABLEKS                       R5 R4 K28 ["getDescription"]
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R6 R6 K33 ["FFlagAssistantAskInputTool"]
       62 JUMPIFNOT                        R6 ; [+5]
       63 NEWCLOSURE                       R5 P3
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          VAL R0
       66 CAPTURE                          UPVAL U1
       67 JUMP                             ; [+1]
       68 LOADNIL                          R5
       69 SETTABLEKS                       R5 R4 K29 ["runToolChain"]
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R6 R6 K33 ["FFlagAssistantAskInputTool"]
       74 JUMPIFNOT                        R6 ; [+2]
       75 LOADNIL                          R5
       76 JUMP                             ; [+4]
       77 NEWCLOSURE                       R5 P4
       78 CAPTURE                          UPVAL U5
       79 CAPTURE                          VAL R0
       80 CAPTURE                          UPVAL U1
       81 SETTABLEKS                       R5 R4 K30 ["mapToToolCall"]
       83 DUPTABLE                         R5 K38 [{"availableDataModelTypes", "definition", "slashCommands", "getPreExecuteWarning"}]
       84 GETUPVAL                         R7 0
       85 GETTABLEKS                       R7 R7 K39 ["FFlagAssistantStandaloneDataModel"]
       87 JUMPIFNOT                        R7 ; [+7]
       88 GETUPVAL                         R8 0
       89 GETTABLEKS                       R8 R8 K40 ["EngineFeatureAssistantBridgeStandalone"]
       91 JUMPIFEQKB                       R8 TRUE ; [+2]
       93 LOADB                            R7 0 +1
       94 LOADB                            R7 1
       95 JUMPIFNOT                        R7 ; [+25]
       96 NEWTABLE                         R6 0 4
       98 GETUPVAL                         R7 1
       99 GETTABLEKS                       R7 R7 K41 ["Types"]
      101 GETTABLEKS                       R7 R7 K42 ["Edit"]
      103 GETUPVAL                         R8 1
      104 GETTABLEKS                       R8 R8 K41 ["Types"]
      106 GETTABLEKS                       R8 R8 K43 ["Client"]
      108 GETUPVAL                         R9 1
      109 GETTABLEKS                       R9 R9 K41 ["Types"]
      111 GETTABLEKS                       R9 R9 K44 ["Server"]
      113 GETUPVAL                         R10 1
      114 GETTABLEKS                       R10 R10 K41 ["Types"]
      116 GETTABLEKS                       R10 R10 K45 ["Standalone"]
      118 SETLIST                          R6 R7 4 [1]
      120 JUMP                             ; [+19]
      121 NEWTABLE                         R6 0 3
      123 GETUPVAL                         R7 1
      124 GETTABLEKS                       R7 R7 K41 ["Types"]
      126 GETTABLEKS                       R7 R7 K42 ["Edit"]
      128 GETUPVAL                         R8 1
      129 GETTABLEKS                       R8 R8 K41 ["Types"]
      131 GETTABLEKS                       R8 R8 K43 ["Client"]
      133 GETUPVAL                         R9 1
      134 GETTABLEKS                       R9 R9 K41 ["Types"]
      136 GETTABLEKS                       R9 R9 K44 ["Server"]
      138 SETLIST                          R6 R7 3 [1]
      140 SETTABLEKS                       R6 R5 K34 ["availableDataModelTypes"]
      142 SETTABLEKS                       R2 R5 K35 ["definition"]
      144 NEWTABLE                         R6 0 1
      146 MOVE                             R7 R4
      147 SETLIST                          R6 R7 1 [1]
      149 SETTABLEKS                       R6 R5 K36 ["slashCommands"]
      151 DUPCLOSURE                       R6 K46 [PROTO_7]
      152 CAPTURE                          UPVAL U8
      153 SETTABLEKS                       R6 R5 K37 ["getPreExecuteWarning"]
      155 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["CheckCodeSafety"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["DataModelType"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Actions"]
       25 GETTABLEKS                       R4 R4 K10 ["ExecuteLuauActions"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Flags"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Parent"]
       37 GETTABLEKS                       R6 R6 K13 ["ModelContextProtocol"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K14 ["Tools"]
       44 GETTABLEKS                       R7 R7 K15 ["ToolTypes"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K16 ["Resources"]
       51 GETTABLEKS                       R8 R8 K17 ["Localization"]
       53 GETTABLEKS                       R8 R8 K18 ["Translator"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R5 K6 ["Util"]
       58 GETTABLEKS                       R8 R8 K19 ["ToolBuilder"]
       60 GETTABLEKS                       R9 R5 K6 ["Util"]
       62 GETTABLEKS                       R9 R9 K20 ["ToolResult"]
       64 GETTABLEKS                       R10 R6 K21 ["ToolNames"]
       66 GETTABLEKS                       R11 R10 K22 ["replaceTokens"]
       68 LOADK                            R12 K23 ["Executes a Luau snippet in Roblox Studio (like the command bar / a REPL) and returns the value of the last expression, or an error message if execution fails.\n\nUse this for one-off runtime queries or data model mutations that DO NOT involve editing script source code -- for example: counting or inspecting instances, reading or setting properties, moving / inserting / deleting instances, or running ad-hoc computations against the place.\n\nDO NOT use this tool to edit, create, rename, or refactor the source of any Script, LocalScript, or ModuleScript. For ANY change to script source code -- including creating a new script, inserting or replacing code, renaming identifiers, or applying multiple edits across a file -- use the {ToolNames.MultiEdit} tool instead. {ToolNames.MultiEdit} preserves script identity, supports atomic multi-edit diffs reviewable by the user, and is the only correct tool for source-code authoring. Setting `script.Source = ...` from this tool is NOT a valid substitute and must not be done."]
       69 CALL                             R11 1 1
       70 DUPCLOSURE                       R12 K24 [PROTO_0]
       71 CAPTURE                          VAL R4
       72 DUPCLOSURE                       R13 K25 [PROTO_8]
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R1
       82 RETURN                           R13 1
