PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 LOADK                            R1 K1 ["Client->Side"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["new"]
        8 LOADK                            R2 K2 ["Server<-Side"]
        9 CALL                             R1 1 1
       10 MOVE                             R4 R1
       11 LOADB                            R5 0
       12 NAMECALL                         R2 R0 K3 ["bindPeer"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 2

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"tools"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K2 ["getDefinitions"]
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
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K9 ["getHandler"]
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R2 K10 ["arguments"]
       35 LOADNIL                          R6
       36 MOVE                             R7 R1
       37 CALL                             R4 3 -1
       38 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 DUPTABLE                         R1 K3 [{"name", "version"}]
        4 LOADK                            R2 K4 ["Test Server"]
        5 SETTABLEKS                       R2 R1 K1 ["name"]
        7 LOADK                            R2 K5 ["0.1.0"]
        8 SETTABLEKS                       R2 R1 K2 ["version"]
       10 DUPTABLE                         R2 K7 [{"capabilities"}]
       11 DUPTABLE                         R3 K11 [{"prompts", "resources", "tools"}]
       12 NEWTABLE                         R4 0 0
       14 SETTABLEKS                       R4 R3 K8 ["prompts"]
       16 NEWTABLE                         R4 0 0
       18 SETTABLEKS                       R4 R3 K9 ["resources"]
       20 NEWTABLE                         R4 0 0
       22 SETTABLEKS                       R4 R3 K10 ["tools"]
       24 SETTABLEKS                       R3 R2 K6 ["capabilities"]
       26 CALL                             R0 2 1
       27 DUPTABLE                         R3 K13 [{"method"}]
       28 LOADK                            R4 K14 ["tools/list"]
       29 SETTABLEKS                       R4 R3 K12 ["method"]
       31 DUPCLOSURE                       R4 K15 [PROTO_1]
       32 CAPTURE                          UPVAL U1
       33 NAMECALL                         R1 R0 K16 ["setRequestHandler"]
       35 CALL                             R1 3 0
       36 DUPTABLE                         R3 K13 [{"method"}]
       37 LOADK                            R4 K17 ["tools/call"]
       38 SETTABLEKS                       R4 R3 K12 ["method"]
       40 DUPCLOSURE                       R4 K18 [PROTO_2]
       41 CAPTURE                          UPVAL U1
       42 NAMECALL                         R1 R0 K16 ["setRequestHandler"]
       44 CALL                             R1 3 0
       45 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R4 K0 ["%* executed"]
        3 GETUPVAL                         R7 1
        4 GETTABLEKS                       R6 R7 K1 ["name"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 DUPTABLE                         R2 K3 [{"name", "version"}]
        4 LOADK                            R3 K4 ["Aliased Server"]
        5 SETTABLEKS                       R3 R2 K1 ["name"]
        7 LOADK                            R3 K5 ["0.1.0"]
        8 SETTABLEKS                       R3 R2 K2 ["version"]
       10 DUPTABLE                         R3 K7 [{"capabilities"}]
       11 DUPTABLE                         R4 K11 [{"prompts", "resources", "tools"}]
       12 NEWTABLE                         R5 0 0
       14 SETTABLEKS                       R5 R4 K8 ["prompts"]
       16 NEWTABLE                         R5 0 0
       18 SETTABLEKS                       R5 R4 K9 ["resources"]
       20 NEWTABLE                         R5 0 0
       22 SETTABLEKS                       R5 R4 K10 ["tools"]
       24 SETTABLEKS                       R4 R3 K6 ["capabilities"]
       26 CALL                             R1 2 1
       27 NEWTABLE                         R2 0 0
       29 NEWTABLE                         R3 0 0
       31 MOVE                             R4 R0
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 FORGPREP                         R4
       35 GETTABLEKS                       R10 R8 K12 ["definition"]
       37 GETTABLEKS                       R9 R10 K12 ["definition"]
       39 GETTABLEKS                       R10 R9 K1 ["name"]
       41 NEWCLOSURE                       R11 P0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R9
       44 SETTABLE                         R11 R2 R10
       45 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       47 MOVE                             R11 R3
       48 MOVE                             R12 R9
       49 GETIMPORT                        R10 K15 [table.insert]
       51 CALL                             R10 2 0
       52 FORGLOOP                         R4 2 ; [-18]
       54 DUPTABLE                         R6 K17 [{"method"}]
       55 LOADK                            R7 K18 ["tools/list"]
       56 SETTABLEKS                       R7 R6 K16 ["method"]
       58 NEWCLOSURE                       R7 P1
       59 CAPTURE                          VAL R3
       60 NAMECALL                         R4 R1 K19 ["setRequestHandler"]
       62 CALL                             R4 3 0
       63 DUPTABLE                         R6 K17 [{"method"}]
       64 LOADK                            R7 K20 ["tools/call"]
       65 SETTABLEKS                       R7 R6 K16 ["method"]
       67 NEWCLOSURE                       R7 P2
       68 CAPTURE                          VAL R2
       69 NAMECALL                         R4 R1 K19 ["setRequestHandler"]
       71 CALL                             R4 3 0
       72 RETURN                           R1 1

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
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        4 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["aliased_confirmation_tool"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 LOADK                            R2 K3 ["A tool that uses aliases and requires confirmation"]
        9 NAMECALL                         R0 R0 K4 ["setDescription"]
       11 CALL                             R0 2 1
       12 LOADK                            R2 K5 ["param"]
       13 DUPTABLE                         R3 K8 [{"type", "description"}]
       14 LOADK                            R4 K9 ["string"]
       15 SETTABLEKS                       R4 R3 K6 ["type"]
       17 LOADK                            R4 K10 ["A parameter"]
       18 SETTABLEKS                       R4 R3 K7 ["description"]
       20 NAMECALL                         R0 R0 K11 ["addArgument"]
       22 CALL                             R0 3 1
       23 DUPCLOSURE                       R2 K12 [PROTO_8]
       24 CAPTURE                          UPVAL U1
       25 NAMECALL                         R0 R0 K13 ["setHandler"]
       27 CALL                             R0 2 1
       28 NAMECALL                         R0 R0 K14 ["build"]
       30 CALL                             R0 1 1
       31 DUPTABLE                         R1 K17 [{"definition", "getPreExecuteWarning"}]
       32 SETTABLEKS                       R0 R1 K15 ["definition"]
       34 DUPCLOSURE                       R2 K18 [PROTO_9]
       35 SETTABLEKS                       R2 R1 K16 ["getPreExecuteWarning"]
       37 RETURN                           R1 1

PROTO_11:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 SETLIST                          R0 R1 1 [1]
        6 RETURN                           R0 1

PROTO_12:
        0 GETIMPORT                        R1 K1 [loadstring]
        2 GETTABLEKS                       R2 R0 K2 ["code"]
        4 CALL                             R1 1 1
        5 FASTCALL2K                       ASSERT R1 K3 ; [+5]
        7 MOVE                             R3 R1
        8 LOADK                            R4 K3 ["Failed to load code"]
        9 GETIMPORT                        R2 K5 [assert]
       11 CALL                             R2 2 0
       12 NEWTABLE                         R2 0 1
       14 MOVE                             R3 R1
       15 CALL                             R3 0 -1
       16 SETLIST                          R2 R3 -1 [1]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K6 ["toString"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 1
       24 CALL                             R4 0 1
       25 MOVE                             R6 R3
       26 NAMECALL                         R4 R4 K7 ["addText"]
       28 CALL                             R4 2 1
       29 NAMECALL                         R4 R4 K8 ["build"]
       31 CALL                             R4 1 -1
       32 RETURN                           R4 -1

PROTO_13:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 LOADK                            R2 K3 ["execute_luau"]
        2 SETTABLEKS                       R2 R1 K0 ["name"]
        4 DUPTABLE                         R2 K5 [{"code"}]
        5 SETTABLEKS                       R0 R2 K4 ["code"]
        7 SETTABLEKS                       R2 R1 K1 ["arguments"]
        9 RETURN                           R1 1

PROTO_14:
        0 DUPTABLE                         R0 K3 [{"type", "code", "expanded"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K4 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 LOADK                            R1 K5 [""]
        7 SETTABLEKS                       R1 R0 K1 ["code"]
        9 LOADB                            R1 0
       10 SETTABLEKS                       R1 R0 K2 ["expanded"]
       12 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["code"]
        3 RETURN                           R0 0

PROTO_16:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["execute_luau"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 DUPCLOSURE                       R2 K3 [PROTO_12]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 NAMECALL                         R0 R0 K4 ["setHandler"]
       13 CALL                             R0 2 1
       14 NAMECALL                         R0 R0 K5 ["build"]
       16 CALL                             R0 1 1
       17 DUPTABLE                         R1 K8 [{"command", "mapToToolCall"}]
       18 LOADK                            R2 K9 ["run"]
       19 SETTABLEKS                       R2 R1 K6 ["command"]
       21 DUPCLOSURE                       R2 K10 [PROTO_13]
       22 SETTABLEKS                       R2 R1 K7 ["mapToToolCall"]
       24 DUPTABLE                         R2 K13 [{"transformInitialContent", "getTransformDeltaFn"}]
       25 DUPCLOSURE                       R3 K14 [PROTO_14]
       26 CAPTURE                          UPVAL U3
       27 SETTABLEKS                       R3 R2 K11 ["transformInitialContent"]
       29 DUPCLOSURE                       R3 K15 [PROTO_16]
       30 SETTABLEKS                       R3 R2 K12 ["getTransformDeltaFn"]
       32 DUPTABLE                         R3 K20 [{"definition", "slashCommands", "contentWidgets", "streamTransform"}]
       33 SETTABLEKS                       R0 R3 K16 ["definition"]
       35 NEWTABLE                         R4 0 1
       37 MOVE                             R5 R1
       38 SETLIST                          R4 R5 1 [1]
       40 SETTABLEKS                       R4 R3 K17 ["slashCommands"]
       42 NEWTABLE                         R4 0 1
       44 GETUPVAL                         R5 3
       45 SETLIST                          R4 R5 1 [1]
       47 SETTABLEKS                       R4 R3 K18 ["contentWidgets"]
       49 SETTABLEKS                       R2 R3 K19 ["streamTransform"]
       51 RETURN                           R3 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["Generic Content"]
        3 NAMECALL                         R1 R1 K1 ["addText"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K2 ["build"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["generic_tool"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 DUPCLOSURE                       R2 K3 [PROTO_18]
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R0 R0 K4 ["setHandler"]
       12 CALL                             R0 2 1
       13 NAMECALL                         R0 R0 K5 ["build"]
       15 CALL                             R0 1 1
       16 DUPTABLE                         R1 K7 [{"definition"}]
       17 SETTABLEKS                       R0 R1 K6 ["definition"]
       19 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["Special Content"]
        3 NAMECALL                         R1 R1 K1 ["addText"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K2 ["build"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["no_stream_tool"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 DUPCLOSURE                       R2 K3 [PROTO_20]
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R0 R0 K4 ["setHandler"]
       12 CALL                             R0 2 1
       13 NAMECALL                         R0 R0 K5 ["build"]
       15 CALL                             R0 1 1
       16 DUPTABLE                         R1 K8 [{"definition", "streamTransform"}]
       17 SETTABLEKS                       R0 R1 K6 ["definition"]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K9 ["None"]
       22 SETTABLEKS                       R2 R1 K7 ["streamTransform"]
       24 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["ToolResult"]
        3 NAMECALL                         R1 R1 K1 ["addText"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K2 ["build"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_23:
        0 DUPTABLE                         R0 K3 [{"type", "code", "expanded"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K4 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 LOADK                            R1 K5 [""]
        7 SETTABLEKS                       R1 R0 K1 ["code"]
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K2 ["expanded"]
       12 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["text"]
        3 SETTABLEKS                       R1 R0 K1 ["code"]
        5 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["content"]
        2 GETTABLEN                        R1 R2 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETTABLEKS                       R2 R1 K1 ["type"]
        6 JUMPIFEQKS                       R2 K2 ["text"] ; [+8]
        8 LOADB                            R3 0
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Expected text content"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          VAL R1
       17 RETURN                           R2 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["ui_on_result_tool"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 DUPCLOSURE                       R2 K3 [PROTO_22]
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R0 R0 K4 ["setHandler"]
       12 CALL                             R0 2 1
       13 NAMECALL                         R0 R0 K5 ["build"]
       15 CALL                             R0 1 1
       16 DUPTABLE                         R1 K8 [{"transformInitialContent", "getTransformResultFn"}]
       17 DUPCLOSURE                       R2 K9 [PROTO_23]
       18 CAPTURE                          UPVAL U2
       19 SETTABLEKS                       R2 R1 K6 ["transformInitialContent"]
       21 DUPCLOSURE                       R2 K10 [PROTO_25]
       22 SETTABLEKS                       R2 R1 K7 ["getTransformResultFn"]
       24 DUPTABLE                         R2 K14 [{"definition", "contentWidgets", "streamTransform"}]
       25 SETTABLEKS                       R0 R2 K11 ["definition"]
       27 NEWTABLE                         R3 0 1
       29 GETUPVAL                         R4 2
       30 SETLIST                          R3 R4 1 [1]
       32 SETTABLEKS                       R3 R2 K12 ["contentWidgets"]
       34 SETTABLEKS                       R1 R2 K13 ["streamTransform"]
       36 RETURN                           R2 1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["ToolUse"]
        3 NAMECALL                         R1 R1 K1 ["addText"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K2 ["build"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_28:
        0 DUPTABLE                         R1 K2 [{"type", "summary"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["Type"]
        4 SETTABLEKS                       R2 R1 K0 ["type"]
        6 GETTABLEKS                       R2 R0 K4 ["name"]
        8 SETTABLEKS                       R2 R1 K1 ["summary"]
       10 RETURN                           R1 1

PROTO_29:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["input"]
        3 GETTABLEKS                       R1 R2 K1 ["code"]
        5 SETTABLEKS                       R1 R0 K2 ["summary"]
        7 RETURN                           R0 0

PROTO_30:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["ui_on_tool_use_tool"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 LOADK                            R2 K3 ["code"]
        9 DUPTABLE                         R3 K5 [{"type"}]
       10 LOADK                            R4 K6 ["string"]
       11 SETTABLEKS                       R4 R3 K4 ["type"]
       13 NAMECALL                         R0 R0 K7 ["addArgument"]
       15 CALL                             R0 3 1
       16 DUPCLOSURE                       R2 K8 [PROTO_27]
       17 CAPTURE                          UPVAL U1
       18 NAMECALL                         R0 R0 K9 ["setHandler"]
       20 CALL                             R0 2 1
       21 NAMECALL                         R0 R0 K10 ["build"]
       23 CALL                             R0 1 1
       24 DUPTABLE                         R1 K13 [{"transformInitialContent", "getTransformPreExecuteFn"}]
       25 DUPCLOSURE                       R2 K14 [PROTO_28]
       26 CAPTURE                          UPVAL U2
       27 SETTABLEKS                       R2 R1 K11 ["transformInitialContent"]
       29 DUPCLOSURE                       R2 K15 [PROTO_30]
       30 SETTABLEKS                       R2 R1 K12 ["getTransformPreExecuteFn"]
       32 DUPTABLE                         R2 K19 [{"definition", "contentWidgets", "streamTransform"}]
       33 SETTABLEKS                       R0 R2 K16 ["definition"]
       35 NEWTABLE                         R3 0 1
       37 GETUPVAL                         R4 2
       38 SETLIST                          R3 R4 1 [1]
       40 SETTABLEKS                       R3 R2 K17 ["contentWidgets"]
       42 SETTABLEKS                       R1 R2 K18 ["streamTransform"]
       44 RETURN                           R2 1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["Confirmation tool executed"]
        3 NAMECALL                         R1 R1 K1 ["addText"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K2 ["build"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_33:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        4 RETURN                           R0 1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["confirmation_required_tool"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 LOADK                            R2 K3 ["param"]
        9 DUPTABLE                         R3 K5 [{"type"}]
       10 LOADK                            R4 K6 ["string"]
       11 SETTABLEKS                       R4 R3 K4 ["type"]
       13 NAMECALL                         R0 R0 K7 ["addArgument"]
       15 CALL                             R0 3 1
       16 DUPCLOSURE                       R2 K8 [PROTO_32]
       17 CAPTURE                          UPVAL U1
       18 NAMECALL                         R0 R0 K9 ["setHandler"]
       20 CALL                             R0 2 1
       21 NAMECALL                         R0 R0 K10 ["build"]
       23 CALL                             R0 1 1
       24 DUPTABLE                         R1 K13 [{"definition", "getPreExecuteWarning"}]
       25 SETTABLEKS                       R0 R1 K11 ["definition"]
       27 DUPCLOSURE                       R2 K14 [PROTO_33]
       28 SETTABLEKS                       R2 R1 K12 ["getPreExecuteWarning"]
       30 RETURN                           R1 1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["Dangerous tool executed"]
        3 NAMECALL                         R1 R1 K1 ["addText"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K2 ["build"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_36:
        0 JUMPIFNOT                        R1 ; [+12]
        1 GETTABLEKS                       R2 R1 K0 ["code"]
        3 JUMPIFNOTEQKS                    R2 K1 ["triggerwarning"] ; [+9]
        5 DUPTABLE                         R2 K4 [{"shouldConfirm", "warningMessage"}]
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R2 K2 ["shouldConfirm"]
        9 LOADK                            R3 K5 ["Warning: This is a test warning message."]
       10 SETTABLEKS                       R3 R2 K3 ["warningMessage"]
       12 RETURN                           R2 1
       13 LOADNIL                          R2
       14 RETURN                           R2 1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["dangerous_tool"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 LOADK                            R2 K3 ["code"]
        9 DUPTABLE                         R3 K5 [{"type"}]
       10 LOADK                            R4 K6 ["string"]
       11 SETTABLEKS                       R4 R3 K4 ["type"]
       13 NAMECALL                         R0 R0 K7 ["addArgument"]
       15 CALL                             R0 3 1
       16 DUPCLOSURE                       R2 K8 [PROTO_35]
       17 CAPTURE                          UPVAL U1
       18 NAMECALL                         R0 R0 K9 ["setHandler"]
       20 CALL                             R0 2 1
       21 NAMECALL                         R0 R0 K10 ["build"]
       23 CALL                             R0 1 1
       24 DUPTABLE                         R1 K13 [{"definition", "getPreExecuteWarning"}]
       25 SETTABLEKS                       R0 R1 K11 ["definition"]
       27 DUPCLOSURE                       R2 K14 [PROTO_36]
       28 SETTABLEKS                       R2 R1 K12 ["getPreExecuteWarning"]
       30 RETURN                           R1 1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["Script change tool executed"]
        3 NAMECALL                         R1 R1 K1 ["addText"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K2 ["build"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_39:
        0 DUPTABLE                         R0 K2 [{"shouldConfirm", "confirmationType"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K3 ["ConfirmationType"]
        7 GETTABLEKS                       R1 R2 K4 ["ScriptChange"]
        9 SETTABLEKS                       R1 R0 K1 ["confirmationType"]
       11 RETURN                           R0 1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["define"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["script_change_tool"]
        5 NAMECALL                         R0 R0 K2 ["setName"]
        7 CALL                             R0 2 1
        8 LOADK                            R2 K3 ["file_path"]
        9 DUPTABLE                         R3 K5 [{"type"}]
       10 LOADK                            R4 K6 ["string"]
       11 SETTABLEKS                       R4 R3 K4 ["type"]
       13 NAMECALL                         R0 R0 K7 ["addArgument"]
       15 CALL                             R0 3 1
       16 DUPCLOSURE                       R2 K8 [PROTO_38]
       17 CAPTURE                          UPVAL U1
       18 NAMECALL                         R0 R0 K9 ["setHandler"]
       20 CALL                             R0 2 1
       21 NAMECALL                         R0 R0 K10 ["build"]
       23 CALL                             R0 1 1
       24 DUPTABLE                         R1 K13 [{"definition", "getPreExecuteWarning"}]
       25 SETTABLEKS                       R0 R1 K11 ["definition"]
       27 DUPCLOSURE                       R2 K14 [PROTO_39]
       28 CAPTURE                          UPVAL U2
       29 SETTABLEKS                       R2 R1 K12 ["getPreExecuteWarning"]
       31 RETURN                           R1 1

PROTO_41:
        0 NEWTABLE                         R0 0 8
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
       18 SETLIST                          R0 R1 8 [1]
       20 RETURN                           R0 1

PROTO_42:
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

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Provider"]
        4 DUPTABLE                         R3 K2 [{"runWithClient"}]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U2
        7 SETTABLEKS                       R4 R3 K1 ["runWithClient"]
        9 GETTABLEKS                       R4 R0 K3 ["children"]
       11 CALL                             R1 3 -1
       12 RETURN                           R1 -1

PROTO_44:
        0 JUMPIFNOT                        R1 ; [+7]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["invokedWith"]
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K1 ["wasInvoked"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"method"}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["method"]
        5 GETUPVAL                         R3 2
        6 NAMECALL                         R0 R0 K2 ["setRequestHandler"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["_protocol"]
        3 GETTABLEKS                       R3 R4 K1 ["_requestHandlers"]
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

PROTO_47:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_48:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_toolNameAliases"]
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

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clear"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 3
        6 FORGPREP                         R0
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K1 ["registerTool"]
       10 MOVE                             R6 R4
       11 CALL                             R5 1 0
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K2 ["spyHandler"]
       15 GETTABLEKS                       R6 R4 K3 ["definition"]
       17 CALL                             R5 1 0
       18 FORGLOOP                         R0 2 ; [-12]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R2 R3 K4 ["new"]
       23 LOADK                            R3 K5 ["Client->Side"]
       24 CALL                             R2 1 1
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R3 R4 K4 ["new"]
       28 LOADK                            R4 K6 ["Server<-Side"]
       29 CALL                             R3 1 1
       30 MOVE                             R6 R3
       31 LOADB                            R7 0
       32 NAMECALL                         R4 R2 K7 ["bindPeer"]
       34 CALL                             R4 3 0
       35 MOVE                             R0 R2
       36 MOVE                             R1 R3
       37 GETUPVAL                         R2 4
       38 CALL                             R2 0 1
       39 GETTABLEKS                       R5 R1 K8 ["transport"]
       41 NAMECALL                         R3 R2 K9 ["connect"]
       43 CALL                             R3 2 0
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R5 R6 K4 ["new"]
       47 LOADK                            R6 K5 ["Client->Side"]
       48 CALL                             R5 1 1
       49 GETUPVAL                         R7 3
       50 GETTABLEKS                       R6 R7 K4 ["new"]
       52 LOADK                            R7 K6 ["Server<-Side"]
       53 CALL                             R6 1 1
       54 MOVE                             R9 R6
       55 LOADB                            R10 0
       56 NAMECALL                         R7 R5 K7 ["bindPeer"]
       58 CALL                             R7 3 0
       59 MOVE                             R3 R5
       60 MOVE                             R4 R6
       61 GETUPVAL                         R5 5
       62 NEWTABLE                         R6 0 1
       64 GETUPVAL                         R7 6
       65 CALL                             R7 0 1
       66 SETLIST                          R6 R7 1 [1]
       68 CALL                             R5 1 1
       69 GETTABLEKS                       R8 R4 K8 ["transport"]
       71 NAMECALL                         R6 R5 K9 ["connect"]
       73 CALL                             R6 2 0
       74 GETUPVAL                         R7 7
       75 GETTABLEKS                       R6 R7 K4 ["new"]
       77 DUPTABLE                         R7 K12 [{"name", "version"}]
       78 LOADK                            R8 K13 ["Test Client"]
       79 SETTABLEKS                       R8 R7 K10 ["name"]
       81 LOADK                            R8 K14 ["0.1.0"]
       82 SETTABLEKS                       R8 R7 K11 ["version"]
       84 CALL                             R6 1 1
       85 DUPTABLE                         R9 K18 [{"identifier", "transport", "clientOptions", "useStaticToolNames"}]
       86 LOADK                            R10 K13 ["Test Client"]
       87 SETTABLEKS                       R10 R9 K15 ["identifier"]
       89 GETTABLEKS                       R10 R0 K8 ["transport"]
       91 SETTABLEKS                       R10 R9 K8 ["transport"]
       93 DUPTABLE                         R10 K20 [{"capabilities"}]
       94 DUPTABLE                         R11 K22 [{"sampling"}]
       95 NEWTABLE                         R12 0 0
       97 SETTABLEKS                       R12 R11 K21 ["sampling"]
       99 SETTABLEKS                       R11 R10 K19 ["capabilities"]
      101 SETTABLEKS                       R10 R9 K16 ["clientOptions"]
      103 LOADB                            R10 1
      104 SETTABLEKS                       R10 R9 K17 ["useStaticToolNames"]
      106 NAMECALL                         R7 R6 K23 ["addClient"]
      108 CALL                             R7 2 0
      109 DUPTABLE                         R9 K18 [{"identifier", "transport", "clientOptions", "useStaticToolNames"}]
      110 LOADK                            R10 K24 ["Aliased Client"]
      111 SETTABLEKS                       R10 R9 K15 ["identifier"]
      113 GETTABLEKS                       R10 R3 K8 ["transport"]
      115 SETTABLEKS                       R10 R9 K8 ["transport"]
      117 DUPTABLE                         R10 K20 [{"capabilities"}]
      118 DUPTABLE                         R11 K22 [{"sampling"}]
      119 NEWTABLE                         R12 0 0
      121 SETTABLEKS                       R12 R11 K21 ["sampling"]
      123 SETTABLEKS                       R11 R10 K19 ["capabilities"]
      125 SETTABLEKS                       R10 R9 K16 ["clientOptions"]
      127 LOADB                            R10 0
      128 SETTABLEKS                       R10 R9 K17 ["useStaticToolNames"]
      130 NAMECALL                         R7 R6 K23 ["addClient"]
      132 CALL                             R7 2 0
      133 GETUPVAL                         R8 8
      134 GETTABLEKS                       R7 R8 K25 ["setMcpClientIdentifier"]
      136 LOADK                            R8 K13 ["Test Client"]
      137 CALL                             R7 1 0
      138 NAMECALL                         R7 R6 K26 ["connectAll"]
      140 CALL                             R7 1 1
      141 NAMECALL                         R7 R7 K27 ["await"]
      143 CALL                             R7 1 2
      144 JUMPIF                           R7 ; [+4]
      145 GETIMPORT                        R9 K29 [error]
      147 MOVE                             R10 R8
      148 CALL                             R9 1 0
      149 NAMECALL                         R9 R6 K30 ["listTools"]
      151 CALL                             R9 1 1
      152 NAMECALL                         R9 R9 K27 ["await"]
      154 CALL                             R9 1 2
      155 MOVE                             R7 R9
      156 MOVE                             R8 R10
      157 JUMPIF                           R7 ; [+4]
      158 GETIMPORT                        R9 K29 [error]
      160 MOVE                             R10 R8
      161 CALL                             R9 1 0
      162 NEWCLOSURE                       R9 P0
      163 CAPTURE                          UPVAL U9
      164 CAPTURE                          UPVAL U10
      165 CAPTURE                          VAL R6
      166 MOVE                             R10 R9
      167 DUPTABLE                         R11 K35 [{"wasToolInvoked", "overrideMethod", "getClientObject", "getToolAlias"}]
      168 DUPCLOSURE                       R12 K36 [PROTO_44]
      169 CAPTURE                          UPVAL U2
      170 SETTABLEKS                       R12 R11 K31 ["wasToolInvoked"]
      172 NEWCLOSURE                       R12 P2
      173 CAPTURE                          VAL R2
      174 SETTABLEKS                       R12 R11 K32 ["overrideMethod"]
      176 NEWCLOSURE                       R12 P3
      177 CAPTURE                          VAL R6
      178 SETTABLEKS                       R12 R11 K33 ["getClientObject"]
      180 NEWCLOSURE                       R12 P4
      181 CAPTURE                          VAL R6
      182 SETTABLEKS                       R12 R11 K34 ["getToolAlias"]
      184 RETURN                           R10 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["McpClientContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["ModelContextProtocol"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K6 ["Components"]
       34 GETTABLEKS                       R6 R7 K12 ["ContentWidgets"]
       36 GETTABLEKS                       R5 R6 K13 ["RunCodeContentWidget"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K6 ["Components"]
       43 GETTABLEKS                       R7 R8 K12 ["ContentWidgets"]
       45 GETTABLEKS                       R6 R7 K14 ["SummarizedContentWidget"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R9 R0 K15 ["tests"]
       52 GETTABLEKS                       R8 R9 K16 ["TestUtils"]
       54 GETTABLEKS                       R7 R8 K17 ["ToolSpy"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R9 R0 K18 ["Tools"]
       61 GETTABLEKS                       R8 R9 K19 ["ToolTypes"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R10 R0 K20 ["Util"]
       68 GETTABLEKS                       R9 R10 K21 ["ToolUtils"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K22 ["Types"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R12 R0 K6 ["Components"]
       80 GETTABLEKS                       R11 R12 K23 ["UIToolRegistry"]
       82 CALL                             R10 1 1
       83 GETTABLEKS                       R11 R2 K24 ["MultiplexedClient"]
       85 GETTABLEKS                       R12 R2 K25 ["PeerTransport"]
       87 GETTABLEKS                       R13 R2 K26 ["Server"]
       89 GETTABLEKS                       R15 R2 K20 ["Util"]
       91 GETTABLEKS                       R14 R15 K27 ["ToolBuilder"]
       93 GETTABLEKS                       R15 R2 K28 ["ToolRegistry"]
       95 GETTABLEKS                       R17 R2 K20 ["Util"]
       97 GETTABLEKS                       R16 R17 K29 ["ToolResult"]
       99 GETTABLEKS                       R17 R3 K30 ["createElement"]
      101 DUPCLOSURE                       R18 K31 [PROTO_0]
      102 CAPTURE                          VAL R12
      103 DUPCLOSURE                       R19 K32 [PROTO_3]
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R15
      106 DUPCLOSURE                       R20 K33 [PROTO_7]
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R16
      109 DUPCLOSURE                       R21 K34 [PROTO_10]
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R16
      112 DUPCLOSURE                       R22 K35 [PROTO_11]
      113 CAPTURE                          VAL R21
      114 DUPCLOSURE                       R23 K36 [PROTO_17]
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R16
      118 CAPTURE                          VAL R4
      119 DUPCLOSURE                       R24 K37 [PROTO_19]
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R16
      122 DUPCLOSURE                       R25 K38 [PROTO_21]
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R10
      126 DUPCLOSURE                       R26 K39 [PROTO_26]
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R4
      130 DUPCLOSURE                       R27 K40 [PROTO_31]
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R5
      134 DUPCLOSURE                       R28 K41 [PROTO_34]
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R16
      137 DUPCLOSURE                       R29 K42 [PROTO_37]
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R16
      140 DUPCLOSURE                       R30 K43 [PROTO_40]
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R9
      144 DUPCLOSURE                       R31 K44 [PROTO_41]
      145 CAPTURE                          VAL R23
      146 CAPTURE                          VAL R24
      147 CAPTURE                          VAL R25
      148 CAPTURE                          VAL R26
      149 CAPTURE                          VAL R27
      150 CAPTURE                          VAL R28
      151 CAPTURE                          VAL R29
      152 CAPTURE                          VAL R30
      153 DUPCLOSURE                       R32 K45 [PROTO_49]
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R31
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R20
      160 CAPTURE                          VAL R21
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R1
      165 RETURN                           R32 1
