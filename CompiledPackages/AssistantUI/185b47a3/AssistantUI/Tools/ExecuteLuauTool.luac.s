PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["stopCode"]
        3 GETTABLEKS                       R3 R1 K1 ["id"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["contentId"]
        7 JUMPIFNOT                        R0 ; [+14]
        8 LOADB                            R0 1
        9 SETUPVAL                         R0 2
       10 GETUPVAL                         R0 3
       11 GETUPVAL                         R2 4
       12 GETTABLEKS                       R2 R2 K1 ["codeRunStatus"]
       14 GETUPVAL                         R3 5
       15 DUPTABLE                         R4 K5 [{["id"], ["status"] = True}]
       16 GETUPVAL                         R5 6
       17 SETTABLEKS                       R5 R4 K2 ["id"]
       19 NAMECALL                         R0 R0 K6 ["FireGuest"]
       21 CALL                             R0 4 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runCode"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 LOADB                            R4 0
        2 NAMECALL                         R2 R2 K0 ["GenerateGUID"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["startRecording"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 0
       10 GETTABLEKS                       R3 R1 K2 ["id"]
       12 JUMPIFNOT                        R3 ; [+16]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K3 ["isRunning"]
       16 MOVE                             R5 R3
       17 CALL                             R4 1 1
       18 JUMPIFNOT                        R4 ; [+10]
       19 GETIMPORT                        R4 K5 [error]
       21 LOADK                            R6 K6 ["Code is already running with id: "]
       22 FASTCALL1                        TOSTRING R3 ; [+3]
       23 MOVE                             R8 R3
       24 GETIMPORT                        R7 K8 [tostring]
       26 CALL                             R7 1 1
       27 CONCAT                           R5 R6 R7
       28 CALL                             R4 1 0
       29 GETTABLEKS                       R4 R1 K9 ["code"]
       31 JUMPIF                           R3 ; [+25]
       32 JUMPIFNOT                        R4 ; [+24]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R5 R5 K10 ["loadCode"]
       36 MOVE                             R6 R4
       37 CALL                             R5 1 1
       38 MOVE                             R3 R5
       39 GETTABLEKS                       R6 R1 K11 ["contentId"]
       41 JUMPIFNOT                        R6 ; [+15]
       42 GETUPVAL                         R6 3
       43 GETUPVAL                         R8 4
       44 GETTABLEKS                       R8 R8 K12 ["bindCodeId"]
       46 MOVE                             R9 R0
       47 DUPTABLE                         R10 K14 [{"contentId", "newCodeId"}]
       48 GETTABLEKS                       R11 R1 K11 ["contentId"]
       50 SETTABLEKS                       R11 R10 K11 ["contentId"]
       52 SETTABLEKS                       R3 R10 K13 ["newCodeId"]
       54 NAMECALL                         R6 R6 K15 ["FireGuest"]
       56 CALL                             R6 4 0
       57 FASTCALL2K                       ASSERT R3 K16 ; [+5]
       59 MOVE                             R6 R3
       60 LOADK                            R7 K16 ["No loadedId provided or created"]
       61 GETIMPORT                        R5 K18 [assert]
       63 CALL                             R5 2 0
       64 LOADNIL                          R5
       65 LOADNIL                          R6
       66 LOADB                            R7 0
       67 GETIMPORT                        R8 K21 [task.delay]
       69 LOADK                            R9 K22 [0.1]
       70 NEWCLOSURE                       R10 P0
       71 CAPTURE                          REF R5
       72 CAPTURE                          VAL R1
       73 CAPTURE                          REF R7
       74 CAPTURE                          UPVAL U3
       75 CAPTURE                          UPVAL U4
       76 CAPTURE                          VAL R0
       77 CAPTURE                          REF R3
       78 CALL                             R8 2 0
       79 GETIMPORT                        R8 K24 [pcall]
       81 NEWCLOSURE                       R9 P1
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          REF R3
       84 CALL                             R8 1 2
       85 MOVE                             R5 R8
       86 MOVE                             R6 R9
       87 JUMPIFNOT                        R7 ; [+11]
       88 GETUPVAL                         R8 3
       89 GETUPVAL                         R10 4
       90 GETTABLEKS                       R10 R10 K25 ["codeRunStatus"]
       92 MOVE                             R11 R0
       93 DUPTABLE                         R12 K28 [{["id"], ["status"] = False}]
       94 SETTABLEKS                       R3 R12 K2 ["id"]
       96 NAMECALL                         R8 R8 K15 ["FireGuest"]
       98 CALL                             R8 4 0
       99 GETUPVAL                         R8 1
      100 GETTABLEKS                       R8 R8 K29 ["endRecording"]
      102 MOVE                             R9 R2
      103 CALL                             R8 1 0
      104 DUPTABLE                         R8 K33 [{"success", "result", "loadedId"}]
      105 SETTABLEKS                       R5 R8 K30 ["success"]
      107 GETUPVAL                         R9 5
      108 GETTABLEKS                       R9 R9 K34 ["serializeToString"]
      110 MOVE                             R10 R6
      111 GETUPVAL                         R11 6
      112 GETTABLEKS                       R11 R11 K35 ["FIntExecuteLuauMaxStringLength"]
      114 GETUPVAL                         R12 6
      115 GETTABLEKS                       R12 R12 K36 ["FIntExecuteLuauMaxJsonLength"]
      117 CALL                             R9 3 1
      118 SETTABLEKS                       R9 R8 K31 ["result"]
      120 SETTABLEKS                       R3 R8 K32 ["loadedId"]
      122 CLOSEUPVALS                      R3
      123 RETURN                           R8 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantExecuteLuaBackground"]
        6 JUMPIFNOT                        R3 ; [+4]
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R2 R1 K1 ["targetDataModel"]
       10 JUMPIF                           R2 ; [+1]
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K2 ["FFlagAssistantSplitToolsAndWidgets"]
       16 JUMPIFNOT                        R4 ; [+30]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K3 ["bridges"]
       20 GETTABLEKS                       R4 R4 K4 ["ExecuteLuau"]
       22 GETTABLEKS                       R4 R4 K5 ["createGuestContext"]
       24 MOVE                             R5 R2
       25 LOADNIL                          R6
       26 CALL                             R4 2 1
       27 GETTABLEKS                       R4 R4 K6 ["bridge"]
       29 GETTABLEKS                       R5 R4 K7 ["loadCodeAsync"]
       31 DUPTABLE                         R6 K9 [{"code"}]
       32 GETTABLEKS                       R7 R0 K8 ["code"]
       34 SETTABLEKS                       R7 R6 K8 ["code"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R4 K10 ["runCodeAsync"]
       39 DUPTABLE                         R7 K12 [{"id"}]
       40 GETTABLEKS                       R8 R5 K11 ["id"]
       42 SETTABLEKS                       R8 R7 K11 ["id"]
       44 CALL                             R6 1 1
       45 MOVE                             R3 R6
       46 JUMP                             ; [+5]
       47 GETUPVAL                         R4 3
       48 MOVE                             R5 R2
       49 MOVE                             R6 R0
       50 CALL                             R4 2 1
       51 MOVE                             R3 R4
       52 GETTABLEKS                       R4 R3 K13 ["success"]
       54 JUMPIFNOT                        R4 ; [+11]
       55 GETUPVAL                         R4 4
       56 CALL                             R4 0 1
       57 GETTABLEKS                       R6 R3 K14 ["result"]
       59 NAMECALL                         R4 R4 K15 ["addText"]
       61 CALL                             R4 2 1
       62 NAMECALL                         R4 R4 K16 ["build"]
       64 CALL                             R4 1 -1
       65 RETURN                           R4 -1
       66 GETIMPORT                        R4 K18 [error]
       68 GETTABLEKS                       R5 R3 K14 ["result"]
       70 CALL                             R4 1 0
       71 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["ExecuteLuau"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["ExecuteLuau"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"code"}]
        7 GETUPVAL                         R3 1
        8 SETTABLEKS                       R3 R2 K4 ["code"]
       10 SETTABLEKS                       R2 R1 K1 ["arguments"]
       12 RETURN                           R1 1

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R1
        6 SETLIST                          R2 R3 1 [1]
        8 RETURN                           R2 1

PROTO_10:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["ExecuteLuau"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"code"}]
        7 SETTABLEKS                       R0 R2 K4 ["code"]
        9 SETTABLEKS                       R2 R1 K1 ["arguments"]
       11 RETURN                           R1 1

PROTO_11:
        0 DUPTABLE                         R0 K5 [{[1], ["code"] = "", ["expanded"] = False}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K6 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["code"]
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["parseJSONForCode"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R1
       10 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["code"]
        3 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["input"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["input"]
        5 GETTABLEKS                       R1 R1 K1 ["code"]
        7 JUMPIF                           R1 ; [+2]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R1
       12 RETURN                           R2 1

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["ExecuteLuau"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_18:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantSplitToolsAndWidgets"]
        4 JUMPIF                           R2 ; [+41]
        5 GETTABLEKS                       R2 R0 K1 ["networking"]
        7 GETTABLEKS                       R3 R0 K2 ["environment"]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K3 ["stopCode"]
       12 DUPCLOSURE                       R7 K4 [PROTO_0]
       13 CAPTURE                          UPVAL U2
       14 NAMECALL                         R4 R2 K5 ["OnHostEvent"]
       16 CALL                             R4 3 0
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K6 ["bindCodeId"]
       20 DUPCLOSURE                       R7 K7 [PROTO_1]
       21 NAMECALL                         R4 R2 K8 ["OnGuestEvent"]
       23 CALL                             R4 3 0
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K9 ["codeRunStatus"]
       27 DUPCLOSURE                       R7 K10 [PROTO_2]
       28 NAMECALL                         R4 R2 K8 ["OnGuestEvent"]
       30 CALL                             R4 3 0
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K11 ["loadAndRunCodeAsync"]
       34 NEWCLOSURE                       R7 P3
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          VAL R2
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U0
       42 NAMECALL                         R4 R2 K12 ["OnHostInvokeAsync"]
       44 CALL                             R4 3 1
       45 MOVE                             R1 R4
       46 NEWCLOSURE                       R2 P4
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          VAL R0
       50 CAPTURE                          REF R1
       51 CAPTURE                          UPVAL U6
       52 GETUPVAL                         R3 7
       53 GETTABLEKS                       R3 R3 K13 ["define"]
       55 CALL                             R3 0 1
       56 GETUPVAL                         R5 8
       57 GETTABLEKS                       R5 R5 K14 ["ExecuteLuau"]
       59 NAMECALL                         R3 R3 K15 ["setName"]
       61 CALL                             R3 2 1
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R6 R6 K16 ["FFlagAssistantHintMultiEditOverExecLuau"]
       65 JUMPIFNOT                        R6 ; [+2]
       66 GETUPVAL                         R5 9
       67 JUMP                             ; [+1]
       68 LOADK                            R5 K17 ["Executes Luau code in Roblox Studio. Returns the result of the executed code or an error message if the code fails to execute."]
       69 NAMECALL                         R3 R3 K18 ["setDescription"]
       71 CALL                             R3 2 1
       72 LOADK                            R5 K19 ["code"]
       73 DUPTABLE                         R6 K23 [{["type"] = "string", ["description"]}]
       74 GETUPVAL                         R8 0
       75 GETTABLEKS                       R8 R8 K16 ["FFlagAssistantHintMultiEditOverExecLuau"]
       77 JUMPIFNOT                        R8 ; [+2]
       78 LOADK                            R7 K24 ["The Luau code to execute. Must NOT be used to edit script source -- use multi_edit for that."]
       79 JUMP                             ; [+1]
       80 LOADK                            R7 K25 ["The Luau code to execute."]
       81 SETTABLEKS                       R7 R6 K22 ["description"]
       83 NAMECALL                         R3 R3 K26 ["addArgument"]
       85 CALL                             R3 3 1
       86 MOVE                             R5 R2
       87 NAMECALL                         R3 R3 K27 ["setHandler"]
       89 CALL                             R3 2 1
       90 DUPTABLE                         R5 K36 [{["title"] = "Execute Luau", ["readOnlyHint"] = False, ["destructiveHint"] = True, ["idempotentHint"] = False, ["openWorldHint"] = True}]
       91 NAMECALL                         R3 R3 K37 ["setAnnotations"]
       93 CALL                             R3 2 1
       94 NAMECALL                         R3 R3 K38 ["build"]
       96 CALL                             R3 1 1
       97 DUPTABLE                         R4 K44 [{["command"] = "run", ["getDescription"], ["runToolChain"], ["mapToToolCall"]}]
       98 DUPCLOSURE                       R5 K45 [PROTO_7]
       99 CAPTURE                          UPVAL U10
      100 SETTABLEKS                       R5 R4 K41 ["getDescription"]
      102 GETUPVAL                         R6 11
      103 GETTABLEKS                       R6 R6 K46 ["getIsAskInputToolEnabled"]
      105 CALL                             R6 0 1
      106 JUMPIFNOT                        R6 ; [+3]
      107 DUPCLOSURE                       R5 K47 [PROTO_9]
      108 CAPTURE                          UPVAL U8
      109 JUMP                             ; [+1]
      110 LOADNIL                          R5
      111 SETTABLEKS                       R5 R4 K42 ["runToolChain"]
      113 GETUPVAL                         R6 11
      114 GETTABLEKS                       R6 R6 K46 ["getIsAskInputToolEnabled"]
      116 CALL                             R6 0 1
      117 JUMPIFNOT                        R6 ; [+2]
      118 LOADNIL                          R5
      119 JUMP                             ; [+2]
      120 DUPCLOSURE                       R5 K48 [PROTO_10]
      121 CAPTURE                          UPVAL U8
      122 SETTABLEKS                       R5 R4 K43 ["mapToToolCall"]
      124 DUPTABLE                         R5 K52 [{"transformInitialContent", "getTransformDeltaFn", "getTransformPreExecuteFn"}]
      125 DUPCLOSURE                       R6 K53 [PROTO_11]
      126 CAPTURE                          UPVAL U12
      127 SETTABLEKS                       R6 R5 K49 ["transformInitialContent"]
      129 DUPCLOSURE                       R6 K54 [PROTO_13]
      130 CAPTURE                          UPVAL U13
      131 SETTABLEKS                       R6 R5 K50 ["getTransformDeltaFn"]
      133 DUPCLOSURE                       R6 K55 [PROTO_15]
      134 SETTABLEKS                       R6 R5 K51 ["getTransformPreExecuteFn"]
      136 DUPTABLE                         R6 K63 [{"availableDataModelTypes", "definition", "slashCommands", "contentWidgets", "streamTransform", "getPreExecuteWarning", "displayNameFunction"}]
      137 GETUPVAL                         R8 0
      138 GETTABLEKS                       R8 R8 K64 ["FFlagAssistantBackgroundDataModelToolCall"]
      140 JUMPIFNOT                        R8 ; [+24]
      141 GETUPVAL                         R8 0
      142 GETTABLEKS                       R8 R8 K65 ["FFlagAssistantExecuteLuaBackground"]
      144 JUMPIFNOT                        R8 ; [+20]
      145 NEWTABLE                         R7 0 3
      147 GETUPVAL                         R8 14
      148 GETTABLEKS                       R8 R8 K66 ["Types"]
      150 GETTABLEKS                       R8 R8 K67 ["Edit"]
      152 GETUPVAL                         R9 14
      153 GETTABLEKS                       R9 R9 K66 ["Types"]
      155 GETTABLEKS                       R9 R9 K68 ["Client"]
      157 GETUPVAL                         R10 14
      158 GETTABLEKS                       R10 R10 K66 ["Types"]
      160 GETTABLEKS                       R10 R10 K69 ["Server"]
      162 SETLIST                          R7 R8 3 [1]
      164 JUMPIF                           R7 ; [+1]
      165 LOADNIL                          R7
      166 SETTABLEKS                       R7 R6 K56 ["availableDataModelTypes"]
      168 SETTABLEKS                       R3 R6 K57 ["definition"]
      170 NEWTABLE                         R7 0 1
      172 MOVE                             R8 R4
      173 SETLIST                          R7 R8 1 [1]
      175 SETTABLEKS                       R7 R6 K58 ["slashCommands"]
      177 GETUPVAL                         R8 0
      178 GETTABLEKS                       R8 R8 K0 ["FFlagAssistantSplitToolsAndWidgets"]
      180 JUMPIFNOT                        R8 ; [+2]
      181 LOADNIL                          R7
      182 JUMP                             ; [+5]
      183 NEWTABLE                         R7 0 1
      185 GETUPVAL                         R8 12
      186 SETLIST                          R7 R8 1 [1]
      188 SETTABLEKS                       R7 R6 K59 ["contentWidgets"]
      190 GETUPVAL                         R8 0
      191 GETTABLEKS                       R8 R8 K0 ["FFlagAssistantSplitToolsAndWidgets"]
      193 JUMPIFNOT                        R8 ; [+2]
      194 LOADNIL                          R7
      195 JUMP                             ; [+1]
      196 MOVE                             R7 R5
      197 SETTABLEKS                       R7 R6 K60 ["streamTransform"]
      199 DUPCLOSURE                       R7 K70 [PROTO_16]
      200 CAPTURE                          UPVAL U15
      201 SETTABLEKS                       R7 R6 K61 ["getPreExecuteWarning"]
      203 GETUPVAL                         R8 0
      204 GETTABLEKS                       R8 R8 K0 ["FFlagAssistantSplitToolsAndWidgets"]
      206 JUMPIFNOT                        R8 ; [+2]
      207 LOADNIL                          R7
      208 JUMP                             ; [+2]
      209 DUPCLOSURE                       R7 K71 [PROTO_17]
      210 CAPTURE                          UPVAL U10
      211 SETTABLEKS                       R7 R6 K62 ["displayNameFunction"]
      213 CLOSEUPVALS                      R1
      214 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["CheckCodeSafety"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Util"]
       24 GETTABLEKS                       R4 R4 K12 ["CommandExecution"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Util"]
       31 GETTABLEKS                       R5 R5 K13 ["DataModelType"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K14 ["FlagUtils"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R7 R0 K15 ["Flags"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K9 [require]
       46 GETTABLEKS                       R8 R0 K16 ["Parent"]
       48 GETTABLEKS                       R8 R8 K17 ["ModelContextProtocol"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K9 [require]
       53 GETTABLEKS                       R9 R0 K10 ["Util"]
       55 GETTABLEKS                       R9 R9 K18 ["OutputParser"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K9 [require]
       60 GETTABLEKS                       R10 R0 K19 ["Components"]
       62 GETTABLEKS                       R10 R10 K20 ["ContentWidgets"]
       64 GETTABLEKS                       R10 R10 K21 ["RunCodeContentWidget"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K9 [require]
       69 GETTABLEKS                       R11 R0 K22 ["Tools"]
       71 GETTABLEKS                       R11 R11 K23 ["ToolTypes"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K9 [require]
       76 GETTABLEKS                       R12 R0 K10 ["Util"]
       78 GETTABLEKS                       R12 R12 K24 ["ToolUtils"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K9 [require]
       83 GETTABLEKS                       R13 R0 K25 ["Resources"]
       85 GETTABLEKS                       R13 R13 K26 ["Localization"]
       87 GETTABLEKS                       R13 R13 K27 ["Translator"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K9 [require]
       92 GETTABLEKS                       R14 R0 K28 ["Types"]
       94 CALL                             R13 1 1
       95 GETTABLEKS                       R14 R5 K29 ["getIsAssistantBackgroundDataModelToolCall"]
       97 GETTABLEKS                       R15 R7 K10 ["Util"]
       99 GETTABLEKS                       R15 R15 K30 ["ToolBuilder"]
      101 GETTABLEKS                       R16 R7 K10 ["Util"]
      103 GETTABLEKS                       R16 R16 K31 ["ToolResult"]
      105 GETTABLEKS                       R17 R10 K32 ["ToolNames"]
      107 GETTABLEKS                       R18 R17 K33 ["replaceTokens"]
      109 LOADK                            R19 K34 ["Executes a Luau snippet in Roblox Studio (like the command bar / a REPL) and returns the value of the last expression, or an error message if execution fails.\n\nUse this for one-off runtime queries or data model mutations that DO NOT involve editing script source code -- for example: counting or inspecting instances, reading or setting properties, moving / inserting / deleting instances, or running ad-hoc computations against the place.\n\nDO NOT use this tool to edit, create, rename, or refactor the source of any Script, LocalScript, or ModuleScript. For ANY change to script source code -- including creating a new script, inserting or replacing code, renaming identifiers, or applying multiple edits across a file -- use the {ToolNames.MultiEdit} tool instead. {ToolNames.MultiEdit} preserves script identity, supports atomic multi-edit diffs reviewable by the user, and is the only correct tool for source-code authoring. Setting `script.Source = ...` from this tool is NOT a valid substitute and must not be done."]
      110 CALL                             R18 1 1
      111 GETTABLEKS                       R19 R9 K35 ["NETWORK_KEYS"]
      113 DUPCLOSURE                       R20 K36 [PROTO_18]
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R19
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R17
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R2
      130 RETURN                           R20 1
