PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 LOADK                            R1 K1 ["Client->Side"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["new"]
        8 LOADK                            R2 K2 ["Server<-Side"]
        9 CALL                             R1 1 1
       10 MOVE                             R4 R1
       11 LOADB                            R5 0
       12 NAMECALL                         R2 R0 K3 ["bindPeer"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 2

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"tools"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K2 ["getDefinitions"]
        4 CALL                             R3 0 1
        5 SETTABLEKS                       R3 R2 K0 ["tools"]
        7 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["params"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected params to be present in tools/call request"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["name"]
       11 MOVE                             R5 R3
       12 JUMPIFNOT                        R5 ; [+9]
       13 FASTCALL1                        TYPEOF R3 ; [+3]
       14 MOVE                             R7 R3
       15 GETIMPORT                        R6 K6 [typeof]
       17 CALL                             R6 1 1
       18 JUMPIFEQKS                       R6 K7 ["string"] ; [+2]
       20 LOADB                            R5 0 +1
       21 LOADB                            R5 1
       22 FASTCALL2K                       ASSERT R5 K8 ; [+4]
       24 LOADK                            R6 K8 ["Expected tool name to be a string"]
       25 GETIMPORT                        R4 K3 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K9 ["getHandler"]
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R2 K10 ["arguments"]
       35 GETTABLEKS                       R6 R2 K11 ["_meta"]
       37 MOVE                             R7 R1
       38 CALL                             R4 3 -1
       39 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 DUPTABLE                         R1 K5 [{["name"] = "Test Server", ["version"] = "0.1.0"}]
        4 DUPTABLE                         R2 K7 [{"capabilities"}]
        5 DUPTABLE                         R3 K11 [{"prompts", "resources", "tools"}]
        6 NEWTABLE                         R4 0 0
        8 SETTABLEKS                       R4 R3 K8 ["prompts"]
       10 NEWTABLE                         R4 0 0
       12 SETTABLEKS                       R4 R3 K9 ["resources"]
       14 NEWTABLE                         R4 0 0
       16 SETTABLEKS                       R4 R3 K10 ["tools"]
       18 SETTABLEKS                       R3 R2 K6 ["capabilities"]
       20 CALL                             R0 2 1
       21 DUPTABLE                         R3 K14 [{["method"] = "tools/list"}]
       22 DUPCLOSURE                       R4 K15 [PROTO_1]
       23 CAPTURE                          UPVAL U1
       24 NAMECALL                         R1 R0 K16 ["setRequestHandler"]
       26 CALL                             R1 3 0
       27 DUPTABLE                         R3 K18 [{["method"] = "tools/call"}]
       28 DUPCLOSURE                       R4 K19 [PROTO_2]
       29 CAPTURE                          UPVAL U1
       30 NAMECALL                         R1 R0 K16 ["setRequestHandler"]
       32 CALL                             R1 3 0
       33 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R4 K0 ["%* executed"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K1 ["name"]
        6 NAMECALL                         R4 R4 K2 ["format"]
        8 CALL                             R4 2 1
        9 MOVE                             R3 R4
       10 NAMECALL                         R1 R1 K3 ["addText"]
       12 CALL                             R1 2 1
       13 NAMECALL                         R1 R1 K4 ["build"]
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1

PROTO_5:
        0 DUPTABLE                         R2 K1 [{"tools"}]
        1 GETUPVAL                         R3 0
        2 SETTABLEKS                       R3 R2 K0 ["tools"]
        4 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["params"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected params to be present in tools/call request"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["name"]
       11 MOVE                             R5 R3
       12 JUMPIFNOT                        R5 ; [+9]
       13 FASTCALL1                        TYPEOF R3 ; [+3]
       14 MOVE                             R7 R3
       15 GETIMPORT                        R6 K6 [typeof]
       17 CALL                             R6 1 1
       18 JUMPIFEQKS                       R6 K7 ["string"] ; [+2]
       20 LOADB                            R5 0 +1
       21 LOADB                            R5 1
       22 FASTCALL2K                       ASSERT R5 K8 ; [+4]
       24 LOADK                            R6 K8 ["Expected tool name to be a string"]
       25 GETIMPORT                        R4 K3 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 0
       29 GETTABLE                         R4 R5 R3
       30 LOADK                            R8 K9 ["No handler found for tool: %*"]
       31 MOVE                             R10 R3
       32 NAMECALL                         R8 R8 K10 ["format"]
       34 CALL                             R8 2 1
       35 MOVE                             R7 R8
       36 FASTCALL2                        ASSERT R4 R7 ; [+4]
       38 MOVE                             R6 R4
       39 GETIMPORT                        R5 K3 [assert]
       41 CALL                             R5 2 0
       42 MOVE                             R5 R4
       43 GETTABLEKS                       R6 R2 K11 ["arguments"]
       45 LOADNIL                          R7
       46 MOVE                             R8 R1
       47 CALL                             R5 3 -1
       48 RETURN                           R5 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 DUPTABLE                         R2 K5 [{["name"] = "Aliased Server", ["version"] = "0.1.0"}]
        4 DUPTABLE                         R3 K7 [{"capabilities"}]
        5 DUPTABLE                         R4 K11 [{"prompts", "resources", "tools"}]
        6 NEWTABLE                         R5 0 0
        8 SETTABLEKS                       R5 R4 K8 ["prompts"]
       10 NEWTABLE                         R5 0 0
       12 SETTABLEKS                       R5 R4 K9 ["resources"]
       14 NEWTABLE                         R5 0 0
       16 SETTABLEKS                       R5 R4 K10 ["tools"]
       18 SETTABLEKS                       R4 R3 K6 ["capabilities"]
       20 CALL                             R1 2 1
       21 NEWTABLE                         R2 0 0
       23 NEWTABLE                         R3 0 0
       25 MOVE                             R4 R0
       26 LOADNIL                          R5
       27 LOADNIL                          R6
       28 FORGPREP                         R4
       29 GETTABLEKS                       R9 R8 K12 ["definition"]
       31 GETTABLEKS                       R9 R9 K12 ["definition"]
       33 GETTABLEKS                       R10 R9 K1 ["name"]
       35 NEWCLOSURE                       R11 P0
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R9
       38 SETTABLE                         R11 R2 R10
       39 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       41 MOVE                             R11 R3
       42 MOVE                             R12 R9
       43 GETIMPORT                        R10 K15 [table.insert]
       45 CALL                             R10 2 0
       46 FORGLOOP                         R4 2 ; [-18]
       48 DUPTABLE                         R6 K18 [{["method"] = "tools/list"}]
       49 NEWCLOSURE                       R7 P1
       50 CAPTURE                          VAL R3
       51 NAMECALL                         R4 R1 K19 ["setRequestHandler"]
       53 CALL                             R4 3 0
       54 DUPTABLE                         R6 K21 [{["method"] = "tools/call"}]
       55 NEWCLOSURE                       R7 P2
       56 CAPTURE                          VAL R2
       57 NAMECALL                         R4 R1 K19 ["setRequestHandler"]
       59 CALL                             R4 3 0
       60 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["aliased_confirmation_tool executed"]
        3 NAMECALL                         R1 R1 K1 ["addText"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K2 ["build"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_9:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["aliased_confirmation_tool"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 LOADK                            R2 K3 ["A tool that uses aliases and requires confirmation"]
        9 NAMECALL                         R0 R0 K4 ["setDescription"]
       11 CALL                             R0 2 1
       12 LOADK                            R2 K5 ["param"]
       13 DUPTABLE                         R3 K10 [{["type"] = "string", ["description"] = "A parameter"}]
       14 NAMECALL                         R0 R0 K11 ["addArgument"]
       16 CALL                             R0 3 1
       17 DUPCLOSURE                       R2 K12 [PROTO_8]
       18 CAPTURE                          UPVAL U1
       19 NAMECALL                         R0 R0 K13 ["setHandler"]
       21 CALL                             R0 2 1
       22 NAMECALL                         R0 R0 K14 ["build"]
       24 CALL                             R0 1 1
       25 DUPTABLE                         R1 K17 [{"definition", "getPreExecuteWarning"}]
       26 SETTABLEKS                       R0 R1 K15 ["definition"]
       28 DUPCLOSURE                       R2 K18 [PROTO_9]
       29 SETTABLEKS                       R2 R1 K16 ["getPreExecuteWarning"]
       31 RETURN                           R1 1

PROTO_11:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 SETLIST                          R0 R1 1 [1]
        6 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createTestLoadedCode"]
        3 GETTABLEKS                       R2 R0 K1 ["code"]
        5 CALL                             R1 1 1
        6 NEWTABLE                         R2 0 1
        8 MOVE                             R3 R1
        9 CALL                             R3 0 -1
       10 SETLIST                          R2 R3 -1 [1]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K2 ["toString"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 2
       18 CALL                             R4 0 1
       19 MOVE                             R6 R3
       20 NAMECALL                         R4 R4 K3 ["addText"]
       22 CALL                             R4 2 1
       23 NAMECALL                         R4 R4 K4 ["build"]
       25 CALL                             R4 1 -1
       26 RETURN                           R4 -1

PROTO_13:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["name"]
        4 DUPTABLE                         R2 K4 [{"code"}]
        5 GETUPVAL                         R3 1
        6 SETTABLEKS                       R3 R2 K3 ["code"]
        8 SETTABLEKS                       R2 R1 K1 ["arguments"]
       10 RETURN                           R1 1

PROTO_14:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R1
        6 SETLIST                          R2 R3 1 [1]
        8 RETURN                           R2 1

PROTO_15:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["name"]
        4 DUPTABLE                         R2 K4 [{"code"}]
        5 SETTABLEKS                       R0 R2 K3 ["code"]
        7 SETTABLEKS                       R2 R1 K1 ["arguments"]
        9 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ExecuteLuau"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["define"]
        6 CALL                             R1 0 1
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K2 ["setName"]
       10 CALL                             R1 2 1
       11 DUPCLOSURE                       R3 K3 [PROTO_12]
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 NAMECALL                         R1 R1 K4 ["setHandler"]
       17 CALL                             R1 2 1
       18 NAMECALL                         R1 R1 K5 ["build"]
       20 CALL                             R1 1 1
       21 DUPTABLE                         R2 K10 [{["command"] = "run", ["runToolChain"], ["mapToToolCall"]}]
       22 GETUPVAL                         R4 5
       23 GETTABLEKS                       R4 R4 K11 ["FFlagAssistantAskInputTool"]
       25 JUMPIFNOT                        R4 ; [+3]
       26 NEWCLOSURE                       R3 P1
       27 CAPTURE                          VAL R0
       28 JUMP                             ; [+1]
       29 LOADNIL                          R3
       30 SETTABLEKS                       R3 R2 K8 ["runToolChain"]
       32 GETUPVAL                         R4 5
       33 GETTABLEKS                       R4 R4 K11 ["FFlagAssistantAskInputTool"]
       35 JUMPIFNOT                        R4 ; [+2]
       36 LOADNIL                          R3
       37 JUMP                             ; [+2]
       38 NEWCLOSURE                       R3 P2
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R3 R2 K9 ["mapToToolCall"]
       42 GETUPVAL                         R3 6
       43 GETTABLEKS                       R3 R3 K12 ["add"]
       45 MOVE                             R4 R0
       46 GETUPVAL                         R5 7
       47 GETTABLEKS                       R5 R5 K13 ["Type"]
       49 CALL                             R3 2 0
       50 DUPTABLE                         R3 K16 [{"definition", "slashCommands"}]
       51 SETTABLEKS                       R1 R3 K14 ["definition"]
       53 NEWTABLE                         R4 0 1
       55 MOVE                             R5 R2
       56 SETLIST                          R4 R5 1 [1]
       58 SETTABLEKS                       R4 R3 K15 ["slashCommands"]
       60 RETURN                           R3 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["should never run"]
        3 NAMECALL                         R1 R1 K1 ["addText"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K2 ["build"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_18:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["chain step failed to prepare"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 DUPCLOSURE                       R0 K0 [PROTO_18]
        1 NEWTABLE                         R1 0 1
        3 MOVE                             R2 R0
        4 SETLIST                          R1 R2 1 [1]
        6 RETURN                           R1 1

PROTO_20:
        0 DUPTABLE                         R0 K3 [{[1] = "chain_error_tool", ["arguments"]}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K2 ["arguments"]
        5 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["chain_error_tool"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 DUPCLOSURE                       R2 K3 [PROTO_17]
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R0 R0 K4 ["setHandler"]
       12 CALL                             R0 2 1
       13 NAMECALL                         R0 R0 K5 ["build"]
       15 CALL                             R0 1 1
       16 DUPTABLE                         R1 K10 [{["command"] = "chainerror", ["runToolChain"], ["mapToToolCall"]}]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K11 ["FFlagAssistantAskInputTool"]
       20 JUMPIFNOT                        R3 ; [+2]
       21 DUPCLOSURE                       R2 K12 [PROTO_19]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R2
       24 SETTABLEKS                       R2 R1 K8 ["runToolChain"]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K11 ["FFlagAssistantAskInputTool"]
       29 JUMPIFNOT                        R3 ; [+2]
       30 LOADNIL                          R2
       31 JUMP                             ; [+1]
       32 DUPCLOSURE                       R2 K13 [PROTO_20]
       33 SETTABLEKS                       R2 R1 K9 ["mapToToolCall"]
       35 GETUPVAL                         R2 3
       36 GETTABLEKS                       R2 R2 K14 ["add"]
       38 LOADK                            R3 K1 ["chain_error_tool"]
       39 GETUPVAL                         R4 3
       40 GETTABLEKS                       R4 R4 K15 ["None"]
       42 CALL                             R2 2 0
       43 DUPTABLE                         R2 K18 [{"definition", "slashCommands"}]
       44 SETTABLEKS                       R0 R2 K16 ["definition"]
       46 NEWTABLE                         R3 0 1
       48 MOVE                             R4 R1
       49 SETLIST                          R3 R4 1 [1]
       51 SETTABLEKS                       R3 R2 K17 ["slashCommands"]
       53 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["Generic Content"]
        3 NAMECALL                         R1 R1 K1 ["addText"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K2 ["build"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["generic_tool"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 DUPCLOSURE                       R2 K3 [PROTO_22]
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R0 R0 K4 ["setHandler"]
       12 CALL                             R0 2 1
       13 NAMECALL                         R0 R0 K5 ["build"]
       15 CALL                             R0 1 1
       16 DUPTABLE                         R1 K7 [{"definition"}]
       17 SETTABLEKS                       R0 R1 K6 ["definition"]
       19 RETURN                           R1 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["Special Content"]
        3 NAMECALL                         R1 R1 K1 ["addText"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K2 ["build"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["no_stream_tool"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 DUPCLOSURE                       R2 K3 [PROTO_24]
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R0 R0 K4 ["setHandler"]
       12 CALL                             R0 2 1
       13 NAMECALL                         R0 R0 K5 ["build"]
       15 CALL                             R0 1 1
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R1 R1 K6 ["add"]
       19 LOADK                            R2 K1 ["no_stream_tool"]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K7 ["None"]
       23 CALL                             R1 2 0
       24 DUPTABLE                         R1 K9 [{"definition"}]
       25 SETTABLEKS                       R0 R1 K8 ["definition"]
       27 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["ToolUse"]
        3 NAMECALL                         R1 R1 K1 ["addText"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K2 ["build"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["ui_on_tool_use_tool"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 LOADK                            R2 K3 ["code"]
        9 DUPTABLE                         R3 K6 [{["type"] = "string"}]
       10 NAMECALL                         R0 R0 K7 ["addArgument"]
       12 CALL                             R0 3 1
       13 DUPCLOSURE                       R2 K8 [PROTO_26]
       14 CAPTURE                          UPVAL U1
       15 NAMECALL                         R0 R0 K9 ["setHandler"]
       17 CALL                             R0 2 1
       18 NAMECALL                         R0 R0 K10 ["build"]
       20 CALL                             R0 1 1
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K11 ["add"]
       24 LOADK                            R2 K1 ["ui_on_tool_use_tool"]
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K12 ["Type"]
       28 CALL                             R1 2 0
       29 DUPTABLE                         R1 K15 [{"definition", "contentWidgets"}]
       30 SETTABLEKS                       R0 R1 K13 ["definition"]
       32 NEWTABLE                         R2 0 1
       34 GETUPVAL                         R3 3
       35 SETLIST                          R2 R3 1 [1]
       37 SETTABLEKS                       R2 R1 K14 ["contentWidgets"]
       39 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["ToolResult"]
        3 NAMECALL                         R1 R1 K1 ["addText"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K2 ["build"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["ui_on_result_tool"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 DUPCLOSURE                       R2 K3 [PROTO_28]
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R0 R0 K4 ["setHandler"]
       12 CALL                             R0 2 1
       13 NAMECALL                         R0 R0 K5 ["build"]
       15 CALL                             R0 1 1
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R1 R1 K6 ["add"]
       19 LOADK                            R2 K1 ["ui_on_result_tool"]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K7 ["Type"]
       23 CALL                             R1 2 0
       24 DUPTABLE                         R1 K10 [{"definition", "contentWidgets"}]
       25 SETTABLEKS                       R0 R1 K8 ["definition"]
       27 NEWTABLE                         R2 0 1
       29 GETUPVAL                         R3 3
       30 SETLIST                          R2 R3 1 [1]
       32 SETTABLEKS                       R2 R1 K9 ["contentWidgets"]
       34 RETURN                           R1 1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["Confirmation tool executed"]
        3 NAMECALL                         R1 R1 K1 ["addText"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K2 ["build"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_31:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["confirmation_required_tool"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 LOADK                            R2 K3 ["param"]
        9 DUPTABLE                         R3 K6 [{["type"] = "string"}]
       10 NAMECALL                         R0 R0 K7 ["addArgument"]
       12 CALL                             R0 3 1
       13 DUPCLOSURE                       R2 K8 [PROTO_30]
       14 CAPTURE                          UPVAL U1
       15 NAMECALL                         R0 R0 K9 ["setHandler"]
       17 CALL                             R0 2 1
       18 NAMECALL                         R0 R0 K10 ["build"]
       20 CALL                             R0 1 1
       21 DUPTABLE                         R1 K13 [{"definition", "getPreExecuteWarning"}]
       22 SETTABLEKS                       R0 R1 K11 ["definition"]
       24 DUPCLOSURE                       R2 K14 [PROTO_31]
       25 SETTABLEKS                       R2 R1 K12 ["getPreExecuteWarning"]
       27 RETURN                           R1 1

PROTO_33:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["Dangerous tool executed"]
        3 NAMECALL                         R1 R1 K1 ["addText"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K2 ["build"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_34:
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETTABLEKS                       R2 R1 K0 ["code"]
        3 JUMPIFNOTEQKS                    R2 K1 ["triggerwarning"] ; [+3]
        5 DUPTABLE                         R2 K6 [{["shouldConfirm"] = True, ["warningMessage"] = "Warning: This is a test warning message."}]
        6 RETURN                           R2 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["dangerous_tool"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 LOADK                            R2 K3 ["code"]
        9 DUPTABLE                         R3 K6 [{["type"] = "string"}]
       10 NAMECALL                         R0 R0 K7 ["addArgument"]
       12 CALL                             R0 3 1
       13 DUPCLOSURE                       R2 K8 [PROTO_33]
       14 CAPTURE                          UPVAL U1
       15 NAMECALL                         R0 R0 K9 ["setHandler"]
       17 CALL                             R0 2 1
       18 NAMECALL                         R0 R0 K10 ["build"]
       20 CALL                             R0 1 1
       21 DUPTABLE                         R1 K13 [{"definition", "getPreExecuteWarning"}]
       22 SETTABLEKS                       R0 R1 K11 ["definition"]
       24 DUPCLOSURE                       R2 K14 [PROTO_34]
       25 SETTABLEKS                       R2 R1 K12 ["getPreExecuteWarning"]
       27 RETURN                           R1 1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["Script change tool executed"]
        3 NAMECALL                         R1 R1 K1 ["addText"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K2 ["build"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_37:
        0 DUPTABLE                         R0 K3 [{[1] = True, ["confirmationType"]}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["ConfirmationType"]
        4 GETTABLEKS                       R1 R1 K5 ["ScriptChange"]
        6 SETTABLEKS                       R1 R0 K2 ["confirmationType"]
        8 RETURN                           R0 1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["script_change_tool"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 LOADK                            R2 K3 ["file_path"]
        9 DUPTABLE                         R3 K6 [{["type"] = "string"}]
       10 NAMECALL                         R0 R0 K7 ["addArgument"]
       12 CALL                             R0 3 1
       13 DUPCLOSURE                       R2 K8 [PROTO_36]
       14 CAPTURE                          UPVAL U1
       15 NAMECALL                         R0 R0 K9 ["setHandler"]
       17 CALL                             R0 2 1
       18 NAMECALL                         R0 R0 K10 ["build"]
       20 CALL                             R0 1 1
       21 DUPTABLE                         R1 K13 [{"definition", "getPreExecuteWarning"}]
       22 SETTABLEKS                       R0 R1 K11 ["definition"]
       24 DUPCLOSURE                       R2 K14 [PROTO_37]
       25 CAPTURE                          UPVAL U2
       26 SETTABLEKS                       R2 R1 K12 ["getPreExecuteWarning"]
       28 RETURN                           R1 1

PROTO_39:
        0 GETIMPORT                        R1 K2 [task.wait]
        2 CALL                             R1 0 0
        3 GETUPVAL                         R1 0
        4 CALL                             R1 0 1
        5 LOADK                            R4 K3 ["generated: "]
        6 GETTABLEKS                       R6 R0 K4 ["prompt"]
        8 FASTCALL1                        TOSTRING R6 ; [+2]
        9 GETIMPORT                        R5 K6 [tostring]
       11 CALL                             R5 1 1
       12 CONCAT                           R3 R4 R5
       13 NAMECALL                         R1 R1 K7 ["addText"]
       15 CALL                             R1 2 1
       16 DUPTABLE                         R3 K9 [{"generationName"}]
       17 GETTABLEKS                       R4 R0 K4 ["prompt"]
       19 SETTABLEKS                       R4 R3 K8 ["generationName"]
       21 NAMECALL                         R1 R1 K10 ["setStructuredContent"]
       23 CALL                             R1 2 1
       24 NAMECALL                         R1 R1 K11 ["build"]
       26 CALL                             R1 1 -1
       27 RETURN                           R1 -1

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["define"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["PrimitiveGen"]
        7 NAMECALL                         R0 R0 K2 ["setName"]
        9 CALL                             R0 2 1
       10 LOADK                            R2 K3 ["prompt"]
       11 DUPTABLE                         R3 K6 [{["type"] = "string"}]
       12 NAMECALL                         R0 R0 K7 ["addArgument"]
       14 CALL                             R0 3 1
       15 DUPCLOSURE                       R2 K8 [PROTO_39]
       16 CAPTURE                          UPVAL U2
       17 NAMECALL                         R0 R0 K9 ["setHandler"]
       19 CALL                             R0 2 1
       20 NAMECALL                         R0 R0 K10 ["build"]
       22 CALL                             R0 1 1
       23 GETUPVAL                         R1 3
       24 GETTABLEKS                       R1 R1 K11 ["add"]
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K1 ["PrimitiveGen"]
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R3 R3 K12 ["None"]
       32 CALL                             R1 2 0
       33 DUPTABLE                         R1 K14 [{"definition"}]
       34 SETTABLEKS                       R0 R1 K13 ["definition"]
       36 RETURN                           R1 1

PROTO_41:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["unused"]
        3 NAMECALL                         R1 R1 K1 ["addText"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K2 ["build"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_42:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["JobRun"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"toolName", "arguments"}]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K6 ["PrimitiveGen"]
       10 SETTABLEKS                       R3 R2 K4 ["toolName"]
       12 DUPTABLE                         R3 K8 [{"prompt"}]
       13 GETUPVAL                         R4 1
       14 SETTABLEKS                       R4 R3 K7 ["prompt"]
       16 SETTABLEKS                       R3 R2 K1 ["arguments"]
       18 SETTABLEKS                       R2 R1 K1 ["arguments"]
       20 RETURN                           R1 1

PROTO_43:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R1
        6 SETLIST                          R2 R3 1 [1]
        8 RETURN                           R2 1

PROTO_44:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["PrimitiveGen"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"prompt"}]
        7 SETTABLEKS                       R0 R2 K4 ["prompt"]
        9 SETTABLEKS                       R2 R1 K1 ["arguments"]
       11 RETURN                           R1 1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["mock_async_job_slash"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 DUPCLOSURE                       R2 K3 [PROTO_41]
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R0 R0 K4 ["setHandler"]
       12 CALL                             R0 2 1
       13 NAMECALL                         R0 R0 K5 ["build"]
       15 CALL                             R0 1 1
       16 DUPTABLE                         R1 K10 [{["command"] = "asyncjob", ["runToolChain"], ["mapToToolCall"]}]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K11 ["FFlagAssistantAskInputTool"]
       20 JUMPIFNOT                        R3 ; [+3]
       21 DUPCLOSURE                       R2 K12 [PROTO_43]
       22 CAPTURE                          UPVAL U3
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 SETTABLEKS                       R2 R1 K8 ["runToolChain"]
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K11 ["FFlagAssistantAskInputTool"]
       30 JUMPIFNOT                        R3 ; [+2]
       31 LOADNIL                          R2
       32 JUMP                             ; [+2]
       33 DUPCLOSURE                       R2 K13 [PROTO_44]
       34 CAPTURE                          UPVAL U3
       35 SETTABLEKS                       R2 R1 K9 ["mapToToolCall"]
       37 GETUPVAL                         R2 4
       38 GETTABLEKS                       R2 R2 K14 ["add"]
       40 LOADK                            R3 K1 ["mock_async_job_slash"]
       41 GETUPVAL                         R4 4
       42 GETTABLEKS                       R4 R4 K15 ["None"]
       44 CALL                             R2 2 0
       45 DUPTABLE                         R2 K18 [{"definition", "slashCommands"}]
       46 SETTABLEKS                       R0 R2 K16 ["definition"]
       48 NEWTABLE                         R3 0 1
       50 MOVE                             R4 R1
       51 SETLIST                          R3 R4 1 [1]
       53 SETTABLEKS                       R3 R2 K17 ["slashCommands"]
       55 RETURN                           R2 1

PROTO_46:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R4 K0 ["generated: "]
        3 GETTABLEKS                       R6 R0 K1 ["prompt"]
        5 FASTCALL1                        TOSTRING R6 ; [+2]
        6 GETIMPORT                        R5 K3 [tostring]
        8 CALL                             R5 1 1
        9 CONCAT                           R3 R4 R5
       10 NAMECALL                         R1 R1 K4 ["addText"]
       12 CALL                             R1 2 1
       13 DUPTABLE                         R3 K6 [{"generationName"}]
       14 GETTABLEKS                       R4 R0 K1 ["prompt"]
       16 SETTABLEKS                       R4 R3 K5 ["generationName"]
       18 NAMECALL                         R1 R1 K7 ["setStructuredContent"]
       20 CALL                             R1 2 1
       21 NAMECALL                         R1 R1 K8 ["build"]
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["define"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["MeshGen"]
        7 NAMECALL                         R0 R0 K2 ["setName"]
        9 CALL                             R0 2 1
       10 LOADK                            R2 K3 ["prompt"]
       11 DUPTABLE                         R3 K6 [{["type"] = "string"}]
       12 NAMECALL                         R0 R0 K7 ["addArgument"]
       14 CALL                             R0 3 1
       15 DUPCLOSURE                       R2 K8 [PROTO_46]
       16 CAPTURE                          UPVAL U2
       17 NAMECALL                         R0 R0 K9 ["setHandler"]
       19 CALL                             R0 2 1
       20 NAMECALL                         R0 R0 K10 ["build"]
       22 CALL                             R0 1 1
       23 GETUPVAL                         R1 3
       24 GETTABLEKS                       R1 R1 K11 ["add"]
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K1 ["MeshGen"]
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R3 R3 K12 ["None"]
       32 CALL                             R1 2 0
       33 DUPTABLE                         R1 K14 [{"definition"}]
       34 SETTABLEKS                       R0 R1 K13 ["definition"]
       36 RETURN                           R1 1

PROTO_48:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["unused"]
        3 NAMECALL                         R1 R1 K1 ["addText"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K2 ["build"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_49:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["JobRun"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"toolName", "arguments"}]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K6 ["MeshGen"]
       10 SETTABLEKS                       R3 R2 K4 ["toolName"]
       12 DUPTABLE                         R3 K8 [{"prompt"}]
       13 GETUPVAL                         R4 1
       14 SETTABLEKS                       R4 R3 K7 ["prompt"]
       16 SETTABLEKS                       R3 R2 K1 ["arguments"]
       18 SETTABLEKS                       R2 R1 K1 ["arguments"]
       20 RETURN                           R1 1

PROTO_50:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R1
        6 SETLIST                          R2 R3 1 [1]
        8 RETURN                           R2 1

PROTO_51:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["MeshGen"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"prompt"}]
        7 SETTABLEKS                       R0 R2 K4 ["prompt"]
        9 SETTABLEKS                       R2 R1 K1 ["arguments"]
       11 RETURN                           R1 1

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["mock_sync_job_slash"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 DUPCLOSURE                       R2 K3 [PROTO_48]
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R0 R0 K4 ["setHandler"]
       12 CALL                             R0 2 1
       13 NAMECALL                         R0 R0 K5 ["build"]
       15 CALL                             R0 1 1
       16 DUPTABLE                         R1 K10 [{["command"] = "syncjob", ["runToolChain"], ["mapToToolCall"]}]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K11 ["FFlagAssistantAskInputTool"]
       20 JUMPIFNOT                        R3 ; [+3]
       21 DUPCLOSURE                       R2 K12 [PROTO_50]
       22 CAPTURE                          UPVAL U3
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 SETTABLEKS                       R2 R1 K8 ["runToolChain"]
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K11 ["FFlagAssistantAskInputTool"]
       30 JUMPIFNOT                        R3 ; [+2]
       31 LOADNIL                          R2
       32 JUMP                             ; [+2]
       33 DUPCLOSURE                       R2 K13 [PROTO_51]
       34 CAPTURE                          UPVAL U3
       35 SETTABLEKS                       R2 R1 K9 ["mapToToolCall"]
       37 GETUPVAL                         R2 4
       38 GETTABLEKS                       R2 R2 K14 ["add"]
       40 LOADK                            R3 K1 ["mock_sync_job_slash"]
       41 GETUPVAL                         R4 4
       42 GETTABLEKS                       R4 R4 K15 ["None"]
       44 CALL                             R2 2 0
       45 DUPTABLE                         R2 K18 [{"definition", "slashCommands"}]
       46 SETTABLEKS                       R0 R2 K16 ["definition"]
       48 NEWTABLE                         R3 0 1
       50 MOVE                             R4 R1
       51 SETLIST                          R3 R4 1 [1]
       53 SETTABLEKS                       R3 R2 K17 ["slashCommands"]
       55 RETURN                           R2 1

PROTO_53:
        0 NEWTABLE                         R0 0 15
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 3
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 4
       11 CALL                             R5 0 1
       12 GETUPVAL                         R6 5
       13 CALL                             R6 0 1
       14 GETUPVAL                         R7 6
       15 CALL                             R7 0 1
       16 GETUPVAL                         R8 7
       17 CALL                             R8 0 1
       18 GETUPVAL                         R9 8
       19 CALL                             R9 0 1
       20 GETUPVAL                         R10 9
       21 CALL                             R10 0 1
       22 GETUPVAL                         R11 10
       23 CALL                             R11 0 1
       24 GETUPVAL                         R12 11
       25 CALL                             R12 0 1
       26 GETUPVAL                         R13 12
       27 CALL                             R13 0 1
       28 GETUPVAL                         R14 13
       29 LOADNIL                          R15
       30 CALL                             R14 1 1
       31 GETUPVAL                         R15 14
       32 LOADNIL                          R16
       33 CALL                             R15 1 -1
       34 SETLIST                          R0 R1 -1 [1]
       36 RETURN                           R0 1

PROTO_54:
        0 NEWTABLE                         R1 0 1
        2 GETIMPORT                        R2 K1 [pcall]
        4 MOVE                             R3 R0
        5 GETUPVAL                         R4 0
        6 CALL                             R2 2 -1
        7 SETLIST                          R1 R2 -1 [1]
        9 GETIMPORT                        R2 K4 [table.remove]
       11 MOVE                             R3 R1
       12 LOADN                            R4 1
       13 CALL                             R2 2 1
       14 JUMPIF                           R2 ; [+9]
       15 GETIMPORT                        R3 K6 [warn]
       17 LOADK                            R4 K7 ["Error in mock runWithClient callback:"]
       18 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       19 MOVE                             R6 R1
       20 GETIMPORT                        R5 K9 [table.unpack]
       22 CALL                             R5 1 -1
       23 CALL                             R3 -1 0
       24 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Provider"]
        4 DUPTABLE                         R3 K2 [{"runWithClient"}]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U2
        7 SETTABLEKS                       R4 R3 K1 ["runWithClient"]
        9 GETTABLEKS                       R4 R0 K3 ["children"]
       11 CALL                             R1 3 -1
       12 RETURN                           R1 -1

PROTO_56:
        0 JUMPIFNOT                        R1 ; [+7]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["invokedWith"]
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["wasInvoked"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_57:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"method"}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["method"]
        5 GETUPVAL                         R3 2
        6 NAMECALL                         R0 R0 K2 ["setRequestHandler"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["_protocol"]
        3 GETTABLEKS                       R3 R3 K1 ["_requestHandlers"]
        5 GETTABLE                         R2 R3 R0
        6 GETUPVAL                         R3 0
        7 DUPTABLE                         R5 K3 [{"method"}]
        8 SETTABLEKS                       R0 R5 K2 ["method"]
       10 MOVE                             R6 R1
       11 NAMECALL                         R3 R3 K4 ["setRequestHandler"]
       13 CALL                             R3 3 0
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1

PROTO_59:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_60:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_toolNameAliases"]
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["actualToolName"]
        9 JUMPIFNOTEQ                      R7 R0 ; [+2]
       11 RETURN                           R5 1
       12 FORGLOOP                         R2 2 ; [-6]
       14 LOADNIL                          R2
       15 RETURN                           R2 1

PROTO_61:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clear"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 3
        6 FORGPREP                         R0
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K1 ["registerTool"]
       10 MOVE                             R6 R4
       11 CALL                             R5 1 0
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K2 ["spyHandler"]
       15 GETTABLEKS                       R6 R4 K3 ["definition"]
       17 CALL                             R5 1 0
       18 FORGLOOP                         R0 2 ; [-12]
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K4 ["registerModeCommands"]
       23 GETUPVAL                         R1 3
       24 GETTABLEKS                       R1 R1 K5 ["getAssistantModeOrdered"]
       26 CALL                             R1 0 -1
       27 CALL                             R0 -1 0
       28 GETUPVAL                         R2 4
       29 GETTABLEKS                       R2 R2 K6 ["new"]
       31 LOADK                            R3 K7 ["Client->Side"]
       32 CALL                             R2 1 1
       33 GETUPVAL                         R3 4
       34 GETTABLEKS                       R3 R3 K6 ["new"]
       36 LOADK                            R4 K8 ["Server<-Side"]
       37 CALL                             R3 1 1
       38 MOVE                             R6 R3
       39 LOADB                            R7 0
       40 NAMECALL                         R4 R2 K9 ["bindPeer"]
       42 CALL                             R4 3 0
       43 MOVE                             R0 R2
       44 MOVE                             R1 R3
       45 GETUPVAL                         R2 5
       46 CALL                             R2 0 1
       47 GETTABLEKS                       R5 R1 K10 ["transport"]
       49 NAMECALL                         R3 R2 K11 ["connect"]
       51 CALL                             R3 2 0
       52 GETUPVAL                         R5 4
       53 GETTABLEKS                       R5 R5 K6 ["new"]
       55 LOADK                            R6 K7 ["Client->Side"]
       56 CALL                             R5 1 1
       57 GETUPVAL                         R6 4
       58 GETTABLEKS                       R6 R6 K6 ["new"]
       60 LOADK                            R7 K8 ["Server<-Side"]
       61 CALL                             R6 1 1
       62 MOVE                             R9 R6
       63 LOADB                            R10 0
       64 NAMECALL                         R7 R5 K9 ["bindPeer"]
       66 CALL                             R7 3 0
       67 MOVE                             R3 R5
       68 MOVE                             R4 R6
       69 GETUPVAL                         R5 6
       70 NEWTABLE                         R6 0 1
       72 GETUPVAL                         R7 7
       73 CALL                             R7 0 1
       74 SETLIST                          R6 R7 1 [1]
       76 CALL                             R5 1 1
       77 GETTABLEKS                       R8 R4 K10 ["transport"]
       79 NAMECALL                         R6 R5 K11 ["connect"]
       81 CALL                             R6 2 0
       82 GETUPVAL                         R6 8
       83 GETTABLEKS                       R6 R6 K6 ["new"]
       85 DUPTABLE                         R7 K16 [{["name"] = "Test Client", ["version"] = "0.1.0"}]
       86 CALL                             R6 1 1
       87 DUPTABLE                         R9 K21 [{["identifier"] = "Test Client", ["transport"], ["clientOptions"], ["useStaticToolNames"] = True}]
       88 GETTABLEKS                       R10 R0 K10 ["transport"]
       90 SETTABLEKS                       R10 R9 K10 ["transport"]
       92 DUPTABLE                         R10 K23 [{"capabilities"}]
       93 DUPTABLE                         R11 K25 [{"sampling"}]
       94 NEWTABLE                         R12 0 0
       96 SETTABLEKS                       R12 R11 K24 ["sampling"]
       98 SETTABLEKS                       R11 R10 K22 ["capabilities"]
      100 SETTABLEKS                       R10 R9 K18 ["clientOptions"]
      102 NAMECALL                         R7 R6 K26 ["addClient"]
      104 CALL                             R7 2 0
      105 DUPTABLE                         R9 K29 [{["identifier"] = "Aliased Client", ["transport"], ["clientOptions"], ["useStaticToolNames"] = False}]
      106 GETTABLEKS                       R10 R3 K10 ["transport"]
      108 SETTABLEKS                       R10 R9 K10 ["transport"]
      110 DUPTABLE                         R10 K23 [{"capabilities"}]
      111 DUPTABLE                         R11 K25 [{"sampling"}]
      112 NEWTABLE                         R12 0 0
      114 SETTABLEKS                       R12 R11 K24 ["sampling"]
      116 SETTABLEKS                       R11 R10 K22 ["capabilities"]
      118 SETTABLEKS                       R10 R9 K18 ["clientOptions"]
      120 NAMECALL                         R7 R6 K26 ["addClient"]
      122 CALL                             R7 2 0
      123 GETUPVAL                         R7 3
      124 GETTABLEKS                       R7 R7 K30 ["setMcpClientIdentifier"]
      126 LOADK                            R8 K13 ["Test Client"]
      127 CALL                             R7 1 0
      128 NAMECALL                         R7 R6 K31 ["connectAll"]
      130 CALL                             R7 1 1
      131 NAMECALL                         R7 R7 K32 ["await"]
      133 CALL                             R7 1 2
      134 JUMPIF                           R7 ; [+4]
      135 GETIMPORT                        R9 K34 [error]
      137 MOVE                             R10 R8
      138 CALL                             R9 1 0
      139 NAMECALL                         R9 R6 K35 ["listTools"]
      141 CALL                             R9 1 1
      142 NAMECALL                         R9 R9 K32 ["await"]
      144 CALL                             R9 1 2
      145 MOVE                             R7 R9
      146 MOVE                             R8 R10
      147 JUMPIF                           R7 ; [+4]
      148 GETIMPORT                        R9 K34 [error]
      150 MOVE                             R10 R8
      151 CALL                             R9 1 0
      152 NEWCLOSURE                       R9 P0
      153 CAPTURE                          UPVAL U9
      154 CAPTURE                          UPVAL U10
      155 CAPTURE                          VAL R6
      156 MOVE                             R10 R9
      157 DUPTABLE                         R11 K40 [{"wasToolInvoked", "overrideMethod", "getClientObject", "getToolAlias"}]
      158 DUPCLOSURE                       R12 K41 [PROTO_56]
      159 CAPTURE                          UPVAL U2
      160 SETTABLEKS                       R12 R11 K36 ["wasToolInvoked"]
      162 NEWCLOSURE                       R12 P2
      163 CAPTURE                          VAL R2
      164 SETTABLEKS                       R12 R11 K37 ["overrideMethod"]
      166 NEWCLOSURE                       R12 P3
      167 CAPTURE                          VAL R6
      168 SETTABLEKS                       R12 R11 K38 ["getClientObject"]
      170 NEWCLOSURE                       R12 P4
      171 CAPTURE                          VAL R6
      172 SETTABLEKS                       R12 R11 K39 ["getToolAlias"]
      174 RETURN                           R10 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Tools"]
       16 GETTABLEKS                       R3 R3 K8 ["JobRunTool"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Tools"]
       23 GETTABLEKS                       R4 R4 K9 ["JobWaitTool"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Components"]
       30 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K12 ["McpClientContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Parent"]
       39 GETTABLEKS                       R6 R6 K14 ["ModelContextProtocol"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Parent"]
       46 GETTABLEKS                       R7 R7 K15 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K10 ["Components"]
       53 GETTABLEKS                       R8 R8 K16 ["ContentWidgets"]
       55 GETTABLEKS                       R8 R8 K17 ["RunCodeContentWidget"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K10 ["Components"]
       62 GETTABLEKS                       R9 R9 K16 ["ContentWidgets"]
       64 GETTABLEKS                       R9 R9 K18 ["SummarizedContentWidget"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETIMPORT                        R10 K1 [script]
       71 GETTABLEKS                       R10 R10 K13 ["Parent"]
       73 GETTABLEKS                       R10 R10 K13 ["Parent"]
       75 GETTABLEKS                       R10 R10 K19 ["ToolSpy"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETIMPORT                        R11 K1 [script]
       82 GETTABLEKS                       R11 R11 K13 ["Parent"]
       84 GETTABLEKS                       R11 R11 K13 ["Parent"]
       86 GETTABLEKS                       R11 R11 K20 ["ToolTestUtils"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K7 ["Tools"]
       93 GETTABLEKS                       R12 R12 K21 ["ToolTypes"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K22 ["Util"]
      100 GETTABLEKS                       R13 R13 K23 ["ToolUtils"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R14 R0 K22 ["Util"]
      107 GETTABLEKS                       R14 R14 K16 ["ContentWidgets"]
      109 GETTABLEKS                       R14 R14 K24 ["ToolWidgetMappingRegistry"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R15 R0 K25 ["Types"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K5 [require]
      119 GETTABLEKS                       R16 R0 K10 ["Components"]
      121 GETTABLEKS                       R16 R16 K26 ["UIToolRegistry"]
      123 CALL                             R15 1 1
      124 GETTABLEKS                       R16 R5 K27 ["MultiplexedClient"]
      126 GETTABLEKS                       R17 R5 K28 ["PeerTransport"]
      128 GETTABLEKS                       R18 R5 K29 ["Server"]
      130 GETTABLEKS                       R19 R5 K22 ["Util"]
      132 GETTABLEKS                       R19 R19 K30 ["ToolBuilder"]
      134 GETTABLEKS                       R20 R5 K31 ["ToolRegistry"]
      136 GETTABLEKS                       R21 R5 K22 ["Util"]
      138 GETTABLEKS                       R21 R21 K32 ["ToolResult"]
      140 GETTABLEKS                       R22 R11 K33 ["ToolNames"]
      142 GETTABLEKS                       R23 R6 K34 ["createElement"]
      144 DUPCLOSURE                       R24 K35 [PROTO_0]
      145 CAPTURE                          VAL R17
      146 DUPCLOSURE                       R25 K36 [PROTO_3]
      147 CAPTURE                          VAL R18
      148 CAPTURE                          VAL R20
      149 DUPCLOSURE                       R26 K37 [PROTO_7]
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R21
      152 DUPCLOSURE                       R27 K38 [PROTO_10]
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R21
      155 DUPCLOSURE                       R28 K39 [PROTO_11]
      156 CAPTURE                          VAL R27
      157 DUPCLOSURE                       R29 K40 [PROTO_16]
      158 CAPTURE                          VAL R22
      159 CAPTURE                          VAL R19
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R21
      163 CAPTURE                          VAL R1
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R7
      166 DUPCLOSURE                       R30 K41 [PROTO_21]
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R21
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R13
      171 DUPCLOSURE                       R31 K42 [PROTO_23]
      172 CAPTURE                          VAL R19
      173 CAPTURE                          VAL R21
      174 DUPCLOSURE                       R32 K43 [PROTO_25]
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R21
      177 CAPTURE                          VAL R13
      178 DUPCLOSURE                       R33 K44 [PROTO_27]
      179 CAPTURE                          VAL R19
      180 CAPTURE                          VAL R21
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R8
      183 DUPCLOSURE                       R34 K45 [PROTO_29]
      184 CAPTURE                          VAL R19
      185 CAPTURE                          VAL R21
      186 CAPTURE                          VAL R13
      187 CAPTURE                          VAL R8
      188 DUPCLOSURE                       R35 K46 [PROTO_32]
      189 CAPTURE                          VAL R19
      190 CAPTURE                          VAL R21
      191 DUPCLOSURE                       R36 K47 [PROTO_35]
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R21
      194 DUPCLOSURE                       R37 K48 [PROTO_38]
      195 CAPTURE                          VAL R19
      196 CAPTURE                          VAL R21
      197 CAPTURE                          VAL R14
      198 DUPCLOSURE                       R38 K49 [PROTO_40]
      199 CAPTURE                          VAL R19
      200 CAPTURE                          VAL R22
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R13
      203 DUPCLOSURE                       R39 K50 [PROTO_45]
      204 CAPTURE                          VAL R19
      205 CAPTURE                          VAL R21
      206 CAPTURE                          VAL R1
      207 CAPTURE                          VAL R22
      208 CAPTURE                          VAL R13
      209 DUPCLOSURE                       R40 K51 [PROTO_47]
      210 CAPTURE                          VAL R19
      211 CAPTURE                          VAL R22
      212 CAPTURE                          VAL R21
      213 CAPTURE                          VAL R13
      214 DUPCLOSURE                       R41 K52 [PROTO_52]
      215 CAPTURE                          VAL R19
      216 CAPTURE                          VAL R21
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R22
      219 CAPTURE                          VAL R13
      220 DUPCLOSURE                       R42 K53 [PROTO_53]
      221 CAPTURE                          VAL R29
      222 CAPTURE                          VAL R30
      223 CAPTURE                          VAL R31
      224 CAPTURE                          VAL R32
      225 CAPTURE                          VAL R33
      226 CAPTURE                          VAL R34
      227 CAPTURE                          VAL R35
      228 CAPTURE                          VAL R36
      229 CAPTURE                          VAL R37
      230 CAPTURE                          VAL R38
      231 CAPTURE                          VAL R40
      232 CAPTURE                          VAL R39
      233 CAPTURE                          VAL R41
      234 CAPTURE                          VAL R2
      235 CAPTURE                          VAL R3
      236 DUPCLOSURE                       R43 K54 [PROTO_61]
      237 CAPTURE                          VAL R15
      238 CAPTURE                          VAL R42
      239 CAPTURE                          VAL R9
      240 CAPTURE                          VAL R14
      241 CAPTURE                          VAL R17
      242 CAPTURE                          VAL R25
      243 CAPTURE                          VAL R26
      244 CAPTURE                          VAL R27
      245 CAPTURE                          VAL R16
      246 CAPTURE                          VAL R23
      247 CAPTURE                          VAL R4
      248 RETURN                           R43 1
