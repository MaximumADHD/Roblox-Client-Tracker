PROTO_0:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["targetDataModel"]
        3 JUMPIF                           R2 ; [+1]
        4 LOADNIL                          R2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["bridges"]
        8 GETTABLEKS                       R3 R3 K2 ["ExecuteLuau"]
       10 GETTABLEKS                       R3 R3 K3 ["createGuestContext"]
       12 MOVE                             R4 R2
       13 LOADNIL                          R5
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R3 R3 K4 ["bridge"]
       17 GETTABLEKS                       R4 R3 K5 ["loadCodeAsync"]
       19 DUPTABLE                         R5 K7 [{"code"}]
       20 GETTABLEKS                       R6 R0 K6 ["code"]
       22 SETTABLEKS                       R6 R5 K6 ["code"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R3 K8 ["runCodeAsync"]
       27 DUPTABLE                         R6 K10 [{"id"}]
       28 GETTABLEKS                       R7 R4 K9 ["id"]
       30 SETTABLEKS                       R7 R6 K9 ["id"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R5 K11 ["success"]
       35 JUMPIFNOT                        R6 ; [+11]
       36 GETUPVAL                         R6 1
       37 CALL                             R6 0 1
       38 GETTABLEKS                       R8 R5 K12 ["result"]
       40 NAMECALL                         R6 R6 K13 ["addText"]
       42 CALL                             R6 2 1
       43 NAMECALL                         R6 R6 K14 ["build"]
       45 CALL                             R6 1 -1
       46 RETURN                           R6 -1
       47 GETIMPORT                        R6 K16 [error]
       49 GETTABLEKS                       R7 R5 K12 ["result"]
       51 CALL                             R6 1 0
       52 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["ExecuteLuau"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_3:
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

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 NEWTABLE                         R2 0 1
        7 MOVE                             R3 R1
        8 SETLIST                          R2 R3 1 [1]
       10 RETURN                           R2 1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["define"]
        6 CALL                             R2 0 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K1 ["ExecuteLuau"]
       10 NAMECALL                         R2 R2 K2 ["setName"]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K3 ["FFlagAssistantHintMultiEditOverExecLuau"]
       16 JUMPIFNOT                        R5 ; [+2]
       17 GETUPVAL                         R4 4
       18 JUMP                             ; [+1]
       19 LOADK                            R4 K4 ["Executes Luau code in Roblox Studio. Returns the result of the executed code or an error message if the code fails to execute."]
       20 NAMECALL                         R2 R2 K5 ["setDescription"]
       22 CALL                             R2 2 1
       23 LOADK                            R4 K6 ["code"]
       24 DUPTABLE                         R5 K10 [{["type"] = "string", ["description"]}]
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R7 R7 K3 ["FFlagAssistantHintMultiEditOverExecLuau"]
       28 JUMPIFNOT                        R7 ; [+2]
       29 LOADK                            R6 K11 ["The Luau code to execute. Must NOT be used to edit script source -- use multi_edit for that."]
       30 JUMP                             ; [+1]
       31 LOADK                            R6 K12 ["The Luau code to execute."]
       32 SETTABLEKS                       R6 R5 K9 ["description"]
       34 NAMECALL                         R2 R2 K13 ["addArgument"]
       36 CALL                             R2 3 1
       37 MOVE                             R4 R1
       38 NAMECALL                         R2 R2 K14 ["setHandler"]
       40 CALL                             R2 2 1
       41 DUPTABLE                         R4 K23 [{["title"] = "Execute Luau", ["readOnlyHint"] = False, ["destructiveHint"] = True, ["idempotentHint"] = False, ["openWorldHint"] = True}]
       42 NAMECALL                         R2 R2 K24 ["setAnnotations"]
       44 CALL                             R2 2 1
       45 NAMECALL                         R2 R2 K25 ["build"]
       47 CALL                             R2 1 1
       48 NEWCLOSURE                       R3 P1
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U5
       51 DUPTABLE                         R4 K31 [{["command"] = "run", ["getDescription"], ["runToolChain"], ["mapToToolCall"]}]
       52 DUPCLOSURE                       R5 K32 [PROTO_2]
       53 CAPTURE                          UPVAL U6
       54 SETTABLEKS                       R5 R4 K28 ["getDescription"]
       56 GETUPVAL                         R6 3
       57 GETTABLEKS                       R6 R6 K33 ["FFlagAssistantAskInputTool"]
       59 JUMPIFNOT                        R6 ; [+5]
       60 NEWCLOSURE                       R5 P3
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U5
       64 JUMP                             ; [+1]
       65 LOADNIL                          R5
       66 SETTABLEKS                       R5 R4 K29 ["runToolChain"]
       68 GETUPVAL                         R6 3
       69 GETTABLEKS                       R6 R6 K33 ["FFlagAssistantAskInputTool"]
       71 JUMPIFNOT                        R6 ; [+2]
       72 LOADNIL                          R5
       73 JUMP                             ; [+4]
       74 NEWCLOSURE                       R5 P4
       75 CAPTURE                          UPVAL U2
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U5
       78 SETTABLEKS                       R5 R4 K30 ["mapToToolCall"]
       80 DUPTABLE                         R5 K38 [{"availableDataModelTypes", "definition", "slashCommands", "getPreExecuteWarning"}]
       81 NEWTABLE                         R6 0 3
       83 GETUPVAL                         R7 5
       84 GETTABLEKS                       R7 R7 K39 ["Types"]
       86 GETTABLEKS                       R7 R7 K40 ["Edit"]
       88 GETUPVAL                         R8 5
       89 GETTABLEKS                       R8 R8 K39 ["Types"]
       91 GETTABLEKS                       R8 R8 K41 ["Client"]
       93 GETUPVAL                         R9 5
       94 GETTABLEKS                       R9 R9 K39 ["Types"]
       96 GETTABLEKS                       R9 R9 K42 ["Server"]
       98 SETLIST                          R6 R7 3 [1]
      100 SETTABLEKS                       R6 R5 K34 ["availableDataModelTypes"]
      102 SETTABLEKS                       R2 R5 K35 ["definition"]
      104 NEWTABLE                         R6 0 1
      106 MOVE                             R7 R4
      107 SETLIST                          R6 R7 1 [1]
      109 SETTABLEKS                       R6 R5 K36 ["slashCommands"]
      111 DUPCLOSURE                       R6 K43 [PROTO_6]
      112 CAPTURE                          UPVAL U7
      113 SETTABLEKS                       R6 R5 K37 ["getPreExecuteWarning"]
      115 RETURN                           R5 1

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
       23 GETTABLEKS                       R4 R0 K9 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["ModelContextProtocol"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Tools"]
       37 GETTABLEKS                       R6 R6 K13 ["ToolTypes"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K14 ["Resources"]
       44 GETTABLEKS                       R7 R7 K15 ["Localization"]
       46 GETTABLEKS                       R7 R7 K16 ["Translator"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R4 K6 ["Util"]
       51 GETTABLEKS                       R7 R7 K17 ["ToolBuilder"]
       53 GETTABLEKS                       R8 R4 K6 ["Util"]
       55 GETTABLEKS                       R8 R8 K18 ["ToolResult"]
       57 GETTABLEKS                       R9 R5 K19 ["ToolNames"]
       59 GETTABLEKS                       R10 R9 K20 ["replaceTokens"]
       61 LOADK                            R11 K21 ["Executes a Luau snippet in Roblox Studio (like the command bar / a REPL) and returns the value of the last expression, or an error message if execution fails.\n\nUse this for one-off runtime queries or data model mutations that DO NOT involve editing script source code -- for example: counting or inspecting instances, reading or setting properties, moving / inserting / deleting instances, or running ad-hoc computations against the place.\n\nDO NOT use this tool to edit, create, rename, or refactor the source of any Script, LocalScript, or ModuleScript. For ANY change to script source code -- including creating a new script, inserting or replacing code, renaming identifiers, or applying multiple edits across a file -- use the {ToolNames.MultiEdit} tool instead. {ToolNames.MultiEdit} preserves script identity, supports atomic multi-edit diffs reviewable by the user, and is the only correct tool for source-code authoring. Setting `script.Source = ...` from this tool is NOT a valid substitute and must not be done."]
       62 CALL                             R10 1 1
       63 DUPCLOSURE                       R11 K22 [PROTO_7]
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R1
       72 RETURN                           R11 1
