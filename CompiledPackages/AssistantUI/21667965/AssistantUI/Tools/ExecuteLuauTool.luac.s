PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantHintMultiEditOverExecLuau"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 GETUPVAL                         R0 1
        5 RETURN                           R0 1
        6 LOADK                            R0 K1 ["Executes Luau code in Roblox Studio. Returns the result of the executed code or an error message if the code fails to execute."]
        7 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantHintMultiEditOverExecLuau"]
        3 JUMPIFNOT                        R2 ; [+2]
        4 GETUPVAL                         R1 1
        5 JUMP                             ; [+1]
        6 LOADK                            R1 K1 ["Executes Luau code in Roblox Studio. Returns the result of the executed code or an error message if the code fails to execute."]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["FFlagAssistantExecLuauYieldHint"]
       10 JUMPIFNOT                        R2 ; [+9]
       11 JUMPIFNOT                        R0 ; [+8]
       12 GETTABLEKS                       R2 R0 K3 ["internal"]
       14 JUMPIFNOTEQKB                    R2 FALSE ; [+5]
       16 MOVE                             R2 R1
       17 LOADK                            R3 K4 ["\n\n"]
       18 LOADK                            R4 K5 ["Code runs on Studio's main thread; until it yields, Studio is frozen, the script can't be stopped, and the MCP connection may drop. For heavy work (bulk instance creation or edits, procedural or terrain generation, large loops), split it into logical chunks (e.g. per region, or batches of ~1000 items) and call `task.wait()` once per chunk, not per item. When creating many instances, build each chunk in a container outside the DataModel and parent it before that chunk's `task.wait()`. The cost of a .Parent write into the DataModel scales with the total size of the subtree being inserted (all descendants), so parenting one large container is itself a single unyielding operation that can freeze Studio or drop the connection, no matter how incrementally the container was built. Keeping each flushed subtree small (one chunk's worth) bounds the cost of every .Parent write. A loop that waits for state to change (e.g. `while not ready do`) must call `task.wait()` inside it."]
       19 CONCAT                           R1 R2 R4
       20 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantStandaloneDataModel"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["EngineFeatureAssistantBridgeStandalone"]
        7 JUMPIFEQKB                       R1 TRUE ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_3:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["targetDataModel"]
        3 JUMPIF                           R2 ; [+1]
        4 LOADNIL                          R2
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R3 R1 K1 ["isThirdPartyRequest"]
        8 JUMPIF                           R3 ; [+1]
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K2 ["FFlagAssistantUseNewDMNetworking"]
       14 JUMPIFNOT                        R5 ; [+70]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K3 ["FFlagAssistantStandaloneDataModel"]
       18 JUMPIFNOT                        R5 ; [+7]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K4 ["EngineFeatureAssistantBridgeStandalone"]
       22 JUMPIFEQKB                       R6 TRUE ; [+2]
       24 LOADB                            R5 0 +1
       25 LOADB                            R5 1
       26 JUMPIFNOT                        R5 ; [+24]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K5 ["Types"]
       30 GETTABLEKS                       R5 R5 K6 ["Standalone"]
       32 JUMPIFNOTEQ                      R2 R5 ; [+18]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K7 ["loadCode"]
       37 GETTABLEKS                       R6 R0 K8 ["code"]
       39 MOVE                             R7 R3
       40 CALL                             R5 2 1
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R6 R6 K9 ["runCode"]
       44 GETUPVAL                         R7 3
       45 GETTABLEKS                       R7 R7 K10 ["environment"]
       47 MOVE                             R8 R5
       48 CALL                             R6 2 1
       49 MOVE                             R4 R6
       50 JUMP                             ; [+122]
       51 GETUPVAL                         R5 4
       52 GETTABLEKS                       R5 R5 K11 ["resolveTargetAsync"]
       54 GETUPVAL                         R6 5
       55 MOVE                             R7 R2
       56 CALL                             R5 2 1
       57 GETUPVAL                         R6 6
       58 GETTABLEKS                       R6 R6 K7 ["loadCode"]
       60 MOVE                             R8 R5
       61 DUPTABLE                         R9 K13 [{"code", "isMcpOriginated"}]
       62 GETTABLEKS                       R10 R0 K8 ["code"]
       64 SETTABLEKS                       R10 R9 K8 ["code"]
       66 SETTABLEKS                       R3 R9 K12 ["isMcpOriginated"]
       68 NAMECALL                         R6 R6 K14 ["InvokeAsync"]
       70 CALL                             R6 3 1
       71 GETUPVAL                         R7 6
       72 GETTABLEKS                       R7 R7 K9 ["runCode"]
       74 MOVE                             R9 R5
       75 DUPTABLE                         R10 K16 [{"id"}]
       76 GETTABLEKS                       R11 R6 K15 ["id"]
       78 SETTABLEKS                       R11 R10 K15 ["id"]
       80 NAMECALL                         R7 R7 K14 ["InvokeAsync"]
       82 CALL                             R7 3 1
       83 MOVE                             R4 R7
       84 JUMP                             ; [+88]
       85 GETUPVAL                         R5 0
       86 GETTABLEKS                       R5 R5 K3 ["FFlagAssistantStandaloneDataModel"]
       88 JUMPIFNOT                        R5 ; [+7]
       89 GETUPVAL                         R6 0
       90 GETTABLEKS                       R6 R6 K4 ["EngineFeatureAssistantBridgeStandalone"]
       92 JUMPIFEQKB                       R6 TRUE ; [+2]
       94 LOADB                            R5 0 +1
       95 LOADB                            R5 1
       96 JUMPIFNOT                        R5 ; [+45]
       97 GETUPVAL                         R5 1
       98 GETTABLEKS                       R5 R5 K5 ["Types"]
      100 GETTABLEKS                       R5 R5 K6 ["Standalone"]
      102 JUMPIFNOTEQ                      R2 R5 ; [+39]
      104 GETUPVAL                         R5 3
      105 GETTABLEKS                       R5 R5 K17 ["bridges"]
      107 GETTABLEKS                       R5 R5 K18 ["ExecuteLuau"]
      109 GETTABLEKS                       R5 R5 K19 ["createHostContext"]
      111 LOADNIL                          R6
      112 LOADNIL                          R7
      113 CALL                             R5 2 1
      114 GETUPVAL                         R6 2
      115 GETTABLEKS                       R6 R6 K20 ["bridge"]
      117 GETTABLEKS                       R6 R6 K21 ["loadCodeAsync"]
      119 DUPTABLE                         R7 K13 [{"code", "isMcpOriginated"}]
      120 GETTABLEKS                       R8 R0 K8 ["code"]
      122 SETTABLEKS                       R8 R7 K8 ["code"]
      124 SETTABLEKS                       R3 R7 K12 ["isMcpOriginated"]
      126 MOVE                             R8 R5
      127 CALL                             R6 2 1
      128 GETUPVAL                         R7 2
      129 GETTABLEKS                       R7 R7 K20 ["bridge"]
      131 GETTABLEKS                       R7 R7 K22 ["runCodeAsync"]
      133 DUPTABLE                         R8 K16 [{"id"}]
      134 GETTABLEKS                       R9 R6 K15 ["id"]
      136 SETTABLEKS                       R9 R8 K15 ["id"]
      138 MOVE                             R9 R5
      139 CALL                             R7 2 1
      140 MOVE                             R4 R7
      141 JUMP                             ; [+31]
      142 GETUPVAL                         R5 3
      143 GETTABLEKS                       R5 R5 K17 ["bridges"]
      145 GETTABLEKS                       R5 R5 K18 ["ExecuteLuau"]
      147 GETTABLEKS                       R5 R5 K23 ["createGuestContext"]
      149 MOVE                             R6 R2
      150 LOADNIL                          R7
      151 CALL                             R5 2 1
      152 GETTABLEKS                       R5 R5 K20 ["bridge"]
      154 GETTABLEKS                       R6 R5 K21 ["loadCodeAsync"]
      156 DUPTABLE                         R7 K13 [{"code", "isMcpOriginated"}]
      157 GETTABLEKS                       R8 R0 K8 ["code"]
      159 SETTABLEKS                       R8 R7 K8 ["code"]
      161 SETTABLEKS                       R3 R7 K12 ["isMcpOriginated"]
      163 CALL                             R6 1 1
      164 GETTABLEKS                       R7 R5 K22 ["runCodeAsync"]
      166 DUPTABLE                         R8 K16 [{"id"}]
      167 GETTABLEKS                       R9 R6 K15 ["id"]
      169 SETTABLEKS                       R9 R8 K15 ["id"]
      171 CALL                             R7 1 1
      172 MOVE                             R4 R7
      173 GETTABLEKS                       R5 R4 K24 ["success"]
      175 JUMPIFNOT                        R5 ; [+11]
      176 GETUPVAL                         R5 7
      177 CALL                             R5 0 1
      178 GETTABLEKS                       R7 R4 K25 ["result"]
      180 NAMECALL                         R5 R5 K26 ["addText"]
      182 CALL                             R5 2 1
      183 NAMECALL                         R5 R5 K27 ["build"]
      185 CALL                             R5 1 -1
      186 RETURN                           R5 -1
      187 GETIMPORT                        R5 K29 [error]
      189 GETTABLEKS                       R6 R4 K25 ["result"]
      191 CALL                             R5 1 0
      192 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["ExecuteLuau"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_6:
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

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 NEWTABLE                         R2 0 1
        7 MOVE                             R3 R1
        8 SETLIST                          R2 R3 1 [1]
       10 RETURN                           R2 1

PROTO_8:
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

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U5
       16 GETUPVAL                         R4 6
       17 GETTABLEKS                       R4 R4 K2 ["define"]
       19 CALL                             R4 0 1
       20 GETUPVAL                         R6 7
       21 GETTABLEKS                       R6 R6 K3 ["ExecuteLuau"]
       23 NAMECALL                         R4 R4 K4 ["setName"]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K5 ["FFlagAssistantHintMultiEditOverExecLuau"]
       29 JUMPIFNOT                        R7 ; [+2]
       30 GETUPVAL                         R6 8
       31 JUMP                             ; [+1]
       32 LOADK                            R6 K6 ["Executes Luau code in Roblox Studio. Returns the result of the executed code or an error message if the code fails to execute."]
       33 NAMECALL                         R4 R4 K7 ["setDescription"]
       35 CALL                             R4 2 1
       36 LOADK                            R6 K8 ["code"]
       37 DUPTABLE                         R7 K12 [{["type"] = "string", ["description"]}]
       38 GETUPVAL                         R9 1
       39 GETTABLEKS                       R9 R9 K5 ["FFlagAssistantHintMultiEditOverExecLuau"]
       41 JUMPIFNOT                        R9 ; [+2]
       42 LOADK                            R8 K13 ["The Luau code to execute. Must NOT be used to edit script source -- use multi_edit for that."]
       43 JUMP                             ; [+1]
       44 LOADK                            R8 K14 ["The Luau code to execute."]
       45 SETTABLEKS                       R8 R7 K11 ["description"]
       47 NAMECALL                         R4 R4 K15 ["addArgument"]
       49 CALL                             R4 3 1
       50 MOVE                             R6 R3
       51 NAMECALL                         R4 R4 K16 ["setHandler"]
       53 CALL                             R4 2 1
       54 DUPTABLE                         R6 K25 [{["title"] = "Execute Luau", ["readOnlyHint"] = False, ["destructiveHint"] = True, ["idempotentHint"] = False, ["openWorldHint"] = True}]
       55 NAMECALL                         R4 R4 K26 ["setAnnotations"]
       57 CALL                             R4 2 1
       58 NAMECALL                         R4 R4 K27 ["build"]
       60 CALL                             R4 1 1
       61 NEWCLOSURE                       R5 P1
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U2
       64 DUPTABLE                         R6 K32 [{["command"] = "run", ["getDescription"], ["runToolChain"]}]
       65 DUPCLOSURE                       R7 K33 [PROTO_5]
       66 CAPTURE                          UPVAL U9
       67 SETTABLEKS                       R7 R6 K30 ["getDescription"]
       69 NEWCLOSURE                       R7 P3
       70 CAPTURE                          UPVAL U7
       71 CAPTURE                          VAL R0
       72 CAPTURE                          UPVAL U2
       73 SETTABLEKS                       R7 R6 K31 ["runToolChain"]
       75 DUPTABLE                         R7 K38 [{"availableDataModelTypes", "definition", "getDescription", "slashCommands", "getPreExecuteWarning"}]
       76 GETUPVAL                         R9 1
       77 GETTABLEKS                       R9 R9 K39 ["FFlagAssistantStandaloneDataModel"]
       79 JUMPIFNOT                        R9 ; [+7]
       80 GETUPVAL                         R10 1
       81 GETTABLEKS                       R10 R10 K40 ["EngineFeatureAssistantBridgeStandalone"]
       83 JUMPIFEQKB                       R10 TRUE ; [+2]
       85 LOADB                            R9 0 +1
       86 LOADB                            R9 1
       87 JUMPIFNOT                        R9 ; [+25]
       88 NEWTABLE                         R8 0 4
       90 GETUPVAL                         R9 2
       91 GETTABLEKS                       R9 R9 K41 ["Types"]
       93 GETTABLEKS                       R9 R9 K42 ["Edit"]
       95 GETUPVAL                         R10 2
       96 GETTABLEKS                       R10 R10 K41 ["Types"]
       98 GETTABLEKS                       R10 R10 K43 ["Client"]
      100 GETUPVAL                         R11 2
      101 GETTABLEKS                       R11 R11 K41 ["Types"]
      103 GETTABLEKS                       R11 R11 K44 ["Server"]
      105 GETUPVAL                         R12 2
      106 GETTABLEKS                       R12 R12 K41 ["Types"]
      108 GETTABLEKS                       R12 R12 K45 ["Standalone"]
      110 SETLIST                          R8 R9 4 [1]
      112 JUMP                             ; [+19]
      113 NEWTABLE                         R8 0 3
      115 GETUPVAL                         R9 2
      116 GETTABLEKS                       R9 R9 K41 ["Types"]
      118 GETTABLEKS                       R9 R9 K42 ["Edit"]
      120 GETUPVAL                         R10 2
      121 GETTABLEKS                       R10 R10 K41 ["Types"]
      123 GETTABLEKS                       R10 R10 K43 ["Client"]
      125 GETUPVAL                         R11 2
      126 GETTABLEKS                       R11 R11 K41 ["Types"]
      128 GETTABLEKS                       R11 R11 K44 ["Server"]
      130 SETLIST                          R8 R9 3 [1]
      132 SETTABLEKS                       R8 R7 K34 ["availableDataModelTypes"]
      134 SETTABLEKS                       R4 R7 K35 ["definition"]
      136 GETUPVAL                         R9 1
      137 GETTABLEKS                       R9 R9 K46 ["FFlagAssistantExecLuauYieldHint"]
      139 JUMPIFNOT                        R9 ; [+2]
      140 GETUPVAL                         R8 10
      141 JUMP                             ; [+1]
      142 LOADNIL                          R8
      143 SETTABLEKS                       R8 R7 K30 ["getDescription"]
      145 NEWTABLE                         R8 0 1
      147 MOVE                             R9 R6
      148 SETLIST                          R8 R9 1 [1]
      150 SETTABLEKS                       R8 R7 K36 ["slashCommands"]
      152 DUPCLOSURE                       R8 K47 [PROTO_8]
      153 CAPTURE                          UPVAL U11
      154 SETTABLEKS                       R8 R7 K37 ["getPreExecuteWarning"]
      156 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["ModelContextProtocol"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R4 K9 ["CheckCodeSafety"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Util"]
       25 GETTABLEKS                       R5 R5 K10 ["DataModelType"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Actions"]
       32 GETTABLEKS                       R6 R6 K12 ["ExecuteLuauActions"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Remotes"]
       39 GETTABLEKS                       R7 R7 K14 ["ExecuteLuauRemotes"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K15 ["Flags"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K8 ["Util"]
       51 GETTABLEKS                       R9 R9 K16 ["NetworkingIdentity"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K17 ["Tools"]
       58 GETTABLEKS                       R10 R10 K18 ["ToolTypes"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K19 ["Resources"]
       65 GETTABLEKS                       R11 R11 K20 ["Localization"]
       67 GETTABLEKS                       R11 R11 K21 ["Translator"]
       69 CALL                             R10 1 1
       70 GETTABLEKS                       R11 R2 K8 ["Util"]
       72 GETTABLEKS                       R11 R11 K22 ["ToolBuilder"]
       74 GETTABLEKS                       R12 R2 K8 ["Util"]
       76 GETTABLEKS                       R12 R12 K23 ["ToolResult"]
       78 GETTABLEKS                       R13 R9 K24 ["ToolNames"]
       80 GETTABLEKS                       R14 R13 K25 ["replaceTokens"]
       82 LOADK                            R15 K26 ["Executes a Luau snippet in Roblox Studio (like the command bar / a REPL) and returns the value of the last expression, or an error message if execution fails.\n\nUse this for one-off runtime queries or data model mutations that DO NOT involve editing script source code -- for example: counting or inspecting instances, reading or setting properties, moving / inserting / deleting instances, or running ad-hoc computations against the place.\n\nDO NOT use this tool to edit, create, rename, or refactor the source of any Script, LocalScript, or ModuleScript. For ANY change to script source code -- including creating a new script, inserting or replacing code, renaming identifiers, or applying multiple edits across a file -- use the {ToolNames.MultiEdit} tool instead. {ToolNames.MultiEdit} preserves script identity, supports atomic multi-edit diffs reviewable by the user, and is the only correct tool for source-code authoring. Setting `script.Source = ...` from this tool is NOT a valid substitute and must not be done."]
       83 CALL                             R14 1 1
       84 DUPCLOSURE                       R15 K27 [PROTO_0]
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R14
       87 DUPCLOSURE                       R16 K28 [PROTO_1]
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R14
       90 DUPCLOSURE                       R17 K29 [PROTO_2]
       91 CAPTURE                          VAL R7
       92 DUPCLOSURE                       R18 K30 [PROTO_9]
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R16
      104 CAPTURE                          VAL R3
      105 RETURN                           R18 1
