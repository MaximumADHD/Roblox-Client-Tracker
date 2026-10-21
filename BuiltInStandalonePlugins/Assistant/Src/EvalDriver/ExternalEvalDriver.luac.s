PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setEvalConfig"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["startRunningEvaluation"]
        8 CALL                             R2 0 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["callFunction"]
       12 LOADK                            R3 K3 ["ClearConversation"]
       13 CALL                             R2 1 0
       14 GETIMPORT                        R2 K6 [task.wait]
       16 LOADK                            R3 K7 [0.2]
       17 CALL                             R2 1 0
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K2 ["callFunction"]
       21 LOADK                            R3 K8 ["SendMessage"]
       22 MOVE                             R4 R0
       23 CALL                             R2 2 0
       24 GETIMPORT                        R2 K6 [task.wait]
       26 LOADK                            R3 K7 [0.2]
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [os.time]
        2 CALL                             R1 0 1
        3 GETIMPORT                        R2 K2 [os.time]
        5 CALL                             R2 0 1
        6 SUB                              R3 R2 R1
        7 JUMPIFNOTLT                      R0 R3 ; [+3]
        9 LOADB                            R3 0
       10 RETURN                           R3 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K3 ["getInputEnabled"]
       14 CALL                             R3 0 1
       15 JUMPIFNOT                        R3 ; [+2]
       16 LOADB                            R3 1
       17 RETURN                           R3 1
       18 GETIMPORT                        R3 K6 [task.wait]
       20 LOADN                            R4 1
       21 CALL                             R3 1 0
       22 JUMPBACK                         ; [-20]
       23 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["identifier"]
        3 GETTABLEKS                       R2 R2 K1 ["datamodel"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["Types"]
        8 GETTABLEKS                       R3 R3 K3 ["Standalone"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+18]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K4 ["callFunction"]
       15 GETTABLEKS                       R3 R0 K5 ["command"]
       17 GETTABLEKS                       R5 R0 K6 ["varargs"]
       19 LOADN                            R6 1
       20 GETTABLEKS                       R7 R0 K7 ["varargsSize"]
       22 FASTCALL                         TABLE_UNPACK ; [+2]
       23 GETIMPORT                        R4 K10 [table.unpack]
       25 CALL                             R4 3 -1
       26 CALL                             R2 -1 1
       27 MOVE                             R1 R2
       28 JUMP                             ; [+54]
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R2 R2 K11 ["FFlagAssistantUseNewDMNetworking"]
       32 JUMPIFNOT                        R2 ; [+30]
       33 GETUPVAL                         R2 3
       34 GETTABLEKS                       R2 R2 K12 ["invoke"]
       36 GETUPVAL                         R3 4
       37 GETTABLEKS                       R4 R0 K5 ["command"]
       39 CALL                             R2 2 1
       40 GETUPVAL                         R3 5
       41 GETTABLEKS                       R3 R3 K13 ["forTarget"]
       43 GETTABLEKS                       R4 R0 K0 ["identifier"]
       45 GETTABLEKS                       R4 R4 K1 ["datamodel"]
       47 CALL                             R3 1 1
       48 MOVE                             R6 R3
       49 GETTABLEKS                       R8 R0 K6 ["varargs"]
       51 LOADN                            R9 1
       52 GETTABLEKS                       R10 R0 K7 ["varargsSize"]
       54 FASTCALL                         TABLE_UNPACK ; [+2]
       55 GETIMPORT                        R7 K10 [table.unpack]
       57 CALL                             R7 3 -1
       58 NAMECALL                         R4 R2 K14 ["InvokeAsync"]
       60 CALL                             R4 -1 1
       61 MOVE                             R1 R4
       62 JUMP                             ; [+20]
       63 GETUPVAL                         R2 6
       64 GETTABLEKS                       R4 R0 K5 ["command"]
       66 GETTABLEKS                       R5 R0 K0 ["identifier"]
       68 GETTABLEKS                       R5 R5 K1 ["datamodel"]
       70 GETTABLEKS                       R7 R0 K6 ["varargs"]
       72 LOADN                            R8 1
       73 GETTABLEKS                       R9 R0 K7 ["varargsSize"]
       75 FASTCALL                         TABLE_UNPACK ; [+2]
       76 GETIMPORT                        R6 K10 [table.unpack]
       78 CALL                             R6 3 -1
       79 NAMECALL                         R2 R2 K15 ["InvokeHostAsync"]
       81 CALL                             R2 -1 1
       82 MOVE                             R1 R2
       83 GETUPVAL                         R2 7
       84 MOVE                             R4 R1
       85 NAMECALL                         R2 R2 K16 ["JSONEncode"]
       87 CALL                             R2 2 -1
       88 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+14]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 LOADK                            R4 K0 ["Tool not found"]
        6 NAMECALL                         R2 R2 K1 ["addText"]
        8 CALL                             R2 2 1
        9 LOADB                            R4 1
       10 NAMECALL                         R2 R2 K2 ["setError"]
       12 CALL                             R2 2 1
       13 NAMECALL                         R2 R2 K3 ["build"]
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1
       17 GETUPVAL                         R3 0
       18 GETTABLE                         R2 R3 R0
       19 MOVE                             R3 R1
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["close"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K1 ["Disconnect"]
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 1
       16 GETUPVAL                         R0 2
       17 JUMPIFNOT                        R0 ; [+6]
       18 GETUPVAL                         R0 2
       19 NAMECALL                         R0 R0 K1 ["Disconnect"]
       21 CALL                             R0 1 0
       22 LOADNIL                          R0
       23 SETUPVAL                         R0 2
       24 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K1 [{"message"}]
        1 LOADK                            R1 K2 ["pong from %*"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["_serverInfo"]
        5 GETTABLEKS                       R3 R3 K4 ["name"]
        7 NAMECALL                         R1 R1 K5 ["format"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["message"]
       12 RETURN                           R0 1

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 DUPTABLE                         R8 K4 [{[1], ["description"] = "", ["inputSchema"]}]
        7 SETTABLEKS                       R4 R8 K0 ["name"]
        9 DUPTABLE                         R9 K11 [{["type"] = "object", ["properties"], ["required"], ["additionalProperties"] = True}]
       10 NEWTABLE                         R10 0 0
       12 SETTABLEKS                       R10 R9 K7 ["properties"]
       14 NEWTABLE                         R10 0 0
       16 SETTABLEKS                       R10 R9 K8 ["required"]
       18 SETTABLEKS                       R9 R8 K3 ["inputSchema"]
       20 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       22 MOVE                             R7 R0
       23 GETIMPORT                        R6 K14 [table.insert]
       25 CALL                             R6 2 0
       26 FORGLOOP                         R1 2 ; [-21]
       28 DUPTABLE                         R1 K16 [{"tools"}]
       29 SETTABLEKS                       R0 R1 K15 ["tools"]
       31 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["params"]
        4 GETTABLEKS                       R1 R1 K1 ["name"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["params"]
        9 GETTABLEKS                       R2 R2 K2 ["arguments"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["params"]
        2 JUMPIF                           R2 ; [+14]
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 LOADK                            R4 K1 ["No params provided"]
        6 NAMECALL                         R2 R2 K2 ["addText"]
        8 CALL                             R2 2 1
        9 LOADB                            R4 1
       10 NAMECALL                         R2 R2 K3 ["setError"]
       12 CALL                             R2 2 1
       13 NAMECALL                         R2 R2 K4 ["build"]
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1
       17 GETIMPORT                        R2 K6 [pcall]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R0
       22 CALL                             R2 1 2
       23 GETUPVAL                         R4 0
       24 CALL                             R4 0 1
       25 FASTCALL1                        TOSTRING R3 ; [+3]
       26 MOVE                             R7 R3
       27 GETIMPORT                        R6 K8 [tostring]
       29 CALL                             R6 1 1
       30 NAMECALL                         R4 R4 K2 ["addText"]
       32 CALL                             R4 2 1
       33 NOT                              R6 R2
       34 NAMECALL                         R4 R4 K3 ["setError"]
       36 CALL                             R4 2 1
       37 NAMECALL                         R4 R4 K4 ["build"]
       39 CALL                             R4 1 -1
       40 RETURN                           R4 -1

PROTO_10:
        0 DUPTABLE                         R0 K1 [{"capabilities"}]
        1 DUPTABLE                         R1 K5 [{"prompts", "resources", "tools"}]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K6 ["emptyObject"]
        5 CALL                             R2 0 1
        6 SETTABLEKS                       R2 R1 K2 ["prompts"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K6 ["emptyObject"]
       11 CALL                             R2 0 1
       12 SETTABLEKS                       R2 R1 K3 ["resources"]
       14 DUPTABLE                         R2 K9 [{["listChanged"] = True}]
       15 SETTABLEKS                       R2 R1 K4 ["tools"]
       17 SETTABLEKS                       R1 R0 K0 ["capabilities"]
       19 GETUPVAL                         R1 1
       20 JUMPIFNOT                        R1 ; [+6]
       21 GETUPVAL                         R1 1
       22 NAMECALL                         R1 R1 K10 ["close"]
       24 CALL                             R1 1 0
       25 LOADNIL                          R1
       26 SETUPVAL                         R1 1
       27 GETUPVAL                         R1 2
       28 JUMPIFNOT                        R1 ; [+6]
       29 GETUPVAL                         R1 2
       30 NAMECALL                         R1 R1 K11 ["Disconnect"]
       32 CALL                             R1 1 0
       33 LOADNIL                          R1
       34 SETUPVAL                         R1 2
       35 GETUPVAL                         R1 3
       36 JUMPIFNOT                        R1 ; [+6]
       37 GETUPVAL                         R1 3
       38 NAMECALL                         R1 R1 K11 ["Disconnect"]
       40 CALL                             R1 1 0
       41 LOADNIL                          R1
       42 SETUPVAL                         R1 3
       43 GETUPVAL                         R1 4
       44 GETTABLEKS                       R1 R1 K12 ["new"]
       46 DUPTABLE                         R2 K17 [{["url"] = "ws://localhost:13468/eval", ["retryDelay"] = 10}]
       47 CALL                             R1 1 1
       48 SETUPVAL                         R1 1
       49 GETUPVAL                         R1 1
       50 GETTABLEKS                       R1 R1 K18 ["transport"]
       52 GETUPVAL                         R2 6
       53 GETTABLEKS                       R2 R2 K12 ["new"]
       55 DUPTABLE                         R3 K23 [{["name"] = "RobloxStudio", ["version"] = "0.1.0"}]
       56 MOVE                             R4 R0
       57 CALL                             R2 2 1
       58 SETUPVAL                         R2 5
       59 GETUPVAL                         R2 5
       60 DUPTABLE                         R4 K26 [{["method"] = "ping"}]
       61 NEWCLOSURE                       R5 P0
       62 CAPTURE                          UPVAL U5
       63 NAMECALL                         R2 R2 K27 ["setRequestHandler"]
       65 CALL                             R2 3 0
       66 GETUPVAL                         R2 5
       67 DUPTABLE                         R4 K29 [{["method"] = "tools/list"}]
       68 DUPCLOSURE                       R5 K30 [PROTO_7]
       69 CAPTURE                          UPVAL U7
       70 NAMECALL                         R2 R2 K27 ["setRequestHandler"]
       72 CALL                             R2 3 0
       73 GETUPVAL                         R2 5
       74 DUPTABLE                         R4 K32 [{["method"] = "tools/call"}]
       75 DUPCLOSURE                       R5 K33 [PROTO_9]
       76 CAPTURE                          UPVAL U8
       77 CAPTURE                          UPVAL U9
       78 NAMECALL                         R2 R2 K27 ["setRequestHandler"]
       80 CALL                             R2 3 0
       81 GETUPVAL                         R2 5
       82 MOVE                             R4 R1
       83 NAMECALL                         R2 R2 K34 ["connect"]
       85 CALL                             R2 2 1
       86 NAMECALL                         R2 R2 K35 ["await"]
       88 CALL                             R2 1 0
       89 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["openPlaceFile"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["runWithMode"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cleanupServerAndClients"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["stopPlay"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["startPlaySoloWithPlayers"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["waitForPlaySoloDataModelStarted"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["stopPlaySolo"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getConsoleOutputStr"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clearConsoleOutput"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["closePlace"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["savePlace"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getInputEnabled"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getConversation"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_27:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getMcpClient"]
        3 CALL                             R3 0 1
        4 JUMPIF                           R3 ; [+9]
        5 GETIMPORT                        R3 K2 [warn]
        7 LOADK                            R4 K3 ["mcpClient not ready yet"]
        8 CALL                             R3 1 0
        9 GETIMPORT                        R3 K6 [task.wait]
       11 LOADN                            R4 1
       12 CALL                             R3 1 0
       13 JUMPBACK                         ; [-14]
       14 NEWTABLE                         R3 0 0
       16 NEWTABLE                         R4 0 0
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K0 ["getMcpClient"]
       21 CALL                             R5 0 1
       22 MOVE                             R7 R1
       23 MOVE                             R8 R2
       24 MOVE                             R9 R3
       25 MOVE                             R10 R4
       26 NAMECALL                         R5 R5 K7 ["callTool"]
       28 CALL                             R5 5 1
       29 NAMECALL                         R5 R5 K8 ["await"]
       31 CALL                             R5 1 2
       32 JUMPIF                           R5 ; [+9]
       33 GETIMPORT                        R7 K10 [error]
       35 LOADK                            R8 K11 ["Failed to call tool %*: %*"]
       36 MOVE                             R10 R1
       37 MOVE                             R11 R6
       38 NAMECALL                         R8 R8 K12 ["format"]
       40 CALL                             R8 3 1
       41 CALL                             R7 1 0
       42 RETURN                           R6 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["registerFunction"]
        3 LOADK                            R1 K1 ["getEvalDriverVersion"]
        4 DUPCLOSURE                       R2 K2 [PROTO_11]
        5 CAPTURE                          UPVAL U1
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["registerFunction"]
       10 LOADK                            R1 K3 ["openPlaceFile"]
       11 DUPCLOSURE                       R2 K4 [PROTO_12]
       12 CAPTURE                          UPVAL U2
       13 CALL                             R0 2 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K0 ["registerFunction"]
       17 LOADK                            R1 K5 ["runWithMode"]
       18 DUPCLOSURE                       R2 K6 [PROTO_13]
       19 CAPTURE                          UPVAL U2
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 0
       22 GETTABLEKS                       R0 R0 K0 ["registerFunction"]
       24 LOADK                            R1 K7 ["cleanupServerAndClients"]
       25 DUPCLOSURE                       R2 K8 [PROTO_14]
       26 CAPTURE                          UPVAL U2
       27 CALL                             R0 2 0
       28 GETUPVAL                         R0 0
       29 GETTABLEKS                       R0 R0 K0 ["registerFunction"]
       31 LOADK                            R1 K9 ["stopPlay"]
       32 DUPCLOSURE                       R2 K10 [PROTO_15]
       33 CAPTURE                          UPVAL U2
       34 CALL                             R0 2 0
       35 GETUPVAL                         R0 0
       36 GETTABLEKS                       R0 R0 K0 ["registerFunction"]
       38 LOADK                            R1 K11 ["startPlaySoloWithPlayers"]
       39 DUPCLOSURE                       R2 K12 [PROTO_16]
       40 CAPTURE                          UPVAL U3
       41 CALL                             R0 2 0
       42 GETUPVAL                         R0 0
       43 GETTABLEKS                       R0 R0 K0 ["registerFunction"]
       45 LOADK                            R1 K13 ["waitForPlaySoloDataModelStarted"]
       46 DUPCLOSURE                       R2 K14 [PROTO_17]
       47 CAPTURE                          UPVAL U3
       48 CALL                             R0 2 0
       49 GETUPVAL                         R0 0
       50 GETTABLEKS                       R0 R0 K0 ["registerFunction"]
       52 LOADK                            R1 K15 ["stopPlaySolo"]
       53 DUPCLOSURE                       R2 K16 [PROTO_18]
       54 CAPTURE                          UPVAL U3
       55 CALL                             R0 2 0
       56 GETUPVAL                         R0 0
       57 GETTABLEKS                       R0 R0 K0 ["registerFunction"]
       59 LOADK                            R1 K17 ["getConsoleOutputStr"]
       60 DUPCLOSURE                       R2 K18 [PROTO_19]
       61 CAPTURE                          UPVAL U3
       62 CALL                             R0 2 0
       63 GETUPVAL                         R0 0
       64 GETTABLEKS                       R0 R0 K0 ["registerFunction"]
       66 LOADK                            R1 K19 ["clearConsoleOutput"]
       67 DUPCLOSURE                       R2 K20 [PROTO_20]
       68 CAPTURE                          UPVAL U3
       69 CALL                             R0 2 0
       70 GETUPVAL                         R0 0
       71 GETTABLEKS                       R0 R0 K0 ["registerFunction"]
       73 LOADK                            R1 K21 ["closePlace"]
       74 DUPCLOSURE                       R2 K22 [PROTO_21]
       75 CAPTURE                          UPVAL U4
       76 CALL                             R0 2 0
       77 GETUPVAL                         R0 0
       78 GETTABLEKS                       R0 R0 K0 ["registerFunction"]
       80 LOADK                            R1 K23 ["savePlace"]
       81 DUPCLOSURE                       R2 K24 [PROTO_22]
       82 CAPTURE                          UPVAL U2
       83 CALL                             R0 2 0
       84 GETUPVAL                         R0 0
       85 GETTABLEKS                       R0 R0 K0 ["registerFunction"]
       87 LOADK                            R1 K25 ["getInputEnabled"]
       88 DUPCLOSURE                       R2 K26 [PROTO_23]
       89 CAPTURE                          UPVAL U5
       90 CALL                             R0 2 0
       91 GETUPVAL                         R0 0
       92 GETTABLEKS                       R0 R0 K0 ["registerFunction"]
       94 LOADK                            R1 K27 ["getConversation"]
       95 DUPCLOSURE                       R2 K28 [PROTO_24]
       96 CAPTURE                          UPVAL U5
       97 CALL                             R0 2 0
       98 GETUPVAL                         R0 0
       99 GETTABLEKS                       R0 R0 K0 ["registerFunction"]
      101 LOADK                            R1 K29 ["invokeAssistant"]
      102 DUPCLOSURE                       R2 K30 [PROTO_25]
      103 CAPTURE                          UPVAL U6
      104 CALL                             R0 2 0
      105 GETUPVAL                         R0 0
      106 GETTABLEKS                       R0 R0 K0 ["registerFunction"]
      108 LOADK                            R1 K31 ["waitForConversationFinish"]
      109 DUPCLOSURE                       R2 K32 [PROTO_26]
      110 CAPTURE                          UPVAL U7
      111 CALL                             R0 2 0
      112 DUPCLOSURE                       R0 K33 [PROTO_27]
      113 CAPTURE                          UPVAL U2
      114 GETUPVAL                         R1 8
      115 GETTABLEKS                       R1 R1 K34 ["FFlagAssistantUseNewDMNetworking"]
      117 JUMPIFNOT                        R1 ; [+15]
      118 GETUPVAL                         R1 9
      119 GETTABLEKS                       R1 R1 K35 ["invoke"]
      121 GETUPVAL                         R2 10
      122 LOADK                            R3 K36 ["ExternalEvalDriver.AssistantEvalCallTool"]
      123 CALL                             R1 2 1
      124 GETUPVAL                         R2 11
      125 MOVE                             R6 R0
      126 NAMECALL                         R4 R1 K37 ["Connect"]
      128 CALL                             R4 2 -1
      129 NAMECALL                         R2 R2 K38 ["Add"]
      131 CALL                             R2 -1 0
      132 RETURN                           R0 0
      133 GETUPVAL                         R1 12
      134 LOADK                            R3 K39 ["AssistantEvalCallTool"]
      135 MOVE                             R4 R0
      136 NAMECALL                         R1 R1 K40 ["OnGuestInvokeAsync"]
      138 CALL                             R1 3 0
      139 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["close"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K1 ["Disconnect"]
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 1
       16 GETUPVAL                         R0 2
       17 JUMPIFNOT                        R0 ; [+6]
       18 GETUPVAL                         R0 2
       19 NAMECALL                         R0 R0 K1 ["Disconnect"]
       21 CALL                             R0 1 0
       22 LOADNIL                          R0
       23 SETUPVAL                         R0 2
       24 GETUPVAL                         R0 3
       25 GETTABLEKS                       R0 R0 K2 ["FFlagAssistantUseNewDMNetworking"]
       27 JUMPIFNOT                        R0 ; [+4]
       28 GETUPVAL                         R0 4
       29 NAMECALL                         R0 R0 K3 ["Destroy"]
       31 CALL                             R0 1 0
       32 GETUPVAL                         R0 5
       33 LOADNIL                          R1
       34 LOADNIL                          R2
       35 FORGPREP                         R0
       36 NAMECALL                         R5 R4 K1 ["Disconnect"]
       38 CALL                             R5 1 0
       39 FORGLOOP                         R0 2 ; [-4]
       41 NEWTABLE                         R0 0 0
       43 SETUPVAL                         R0 5
       44 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_31:
        0 SETUPVAL                         R3 0
        1 GETIMPORT                        R4 K1 [print]
        3 LOADK                            R5 K2 ["[StudioEvalDriver]::EvalDriverIdentity=%*"]
        4 GETUPVAL                         R7 0
        5 NAMECALL                         R5 R5 K3 ["format"]
        7 CALL                             R5 2 1
        8 CALL                             R4 1 0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K4 ["FFlagAssistantUseNewDMNetworking"]
       12 JUMPIFNOT                        R4 ; [+14]
       13 FASTCALL2K                       ASSERT R2 K5 ; [+5]
       15 MOVE                             R5 R2
       16 LOADK                            R6 K5 ["ExternalEvalDriver requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
       17 GETIMPORT                        R4 K7 [assert]
       19 CALL                             R4 2 0
       20 SETUPVAL                         R2 2
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R4 R4 K8 ["new"]
       24 CALL                             R4 0 1
       25 SETUPVAL                         R4 3
       26 JUMP                             ; [+8]
       27 FASTCALL2K                       ASSERT R1 K9 ; [+5]
       29 MOVE                             R5 R1
       30 LOADK                            R6 K9 ["ExternalEvalDriver requires networking"]
       31 GETIMPORT                        R4 K7 [assert]
       33 CALL                             R4 2 0
       34 SETUPVAL                         R1 5
       35 GETUPVAL                         R4 6
       36 GETTABLEKS                       R4 R4 K10 ["init"]
       38 MOVE                             R5 R0
       39 CALL                             R4 1 0
       40 GETUPVAL                         R4 7
       41 GETTABLEKS                       R4 R4 K10 ["init"]
       43 MOVE                             R5 R0
       44 GETUPVAL                         R6 5
       45 GETUPVAL                         R7 2
       46 CALL                             R4 3 0
       47 GETUPVAL                         R4 8
       48 GETTABLEKS                       R4 R4 K10 ["init"]
       50 MOVE                             R5 R0
       51 GETUPVAL                         R6 5
       52 GETUPVAL                         R7 2
       53 CALL                             R4 3 0
       54 GETUPVAL                         R4 9
       55 CALL                             R4 0 0
       56 GETUPVAL                         R4 10
       57 CALL                             R4 0 0
       58 GETTABLEKS                       R4 R0 K11 ["Unloading"]
       60 DUPCLOSURE                       R6 K12 [PROTO_30]
       61 CAPTURE                          UPVAL U11
       62 NAMECALL                         R4 R4 K13 ["Connect"]
       64 CALL                             R4 2 0
       65 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["AssistantUI"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["Bin"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["DMNetworking"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R2 K14 ["DMNetworkingOLD"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K10 [require]
       37 GETTABLEKS                       R8 R2 K15 ["ModelContextProtocol"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K10 [require]
       42 GETTABLEKS                       R9 R0 K16 ["Src"]
       44 GETTABLEKS                       R9 R9 K17 ["EvalDriver"]
       46 GETTABLEKS                       R9 R9 K18 ["EvalDriverVersion"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K10 [require]
       51 GETTABLEKS                       R10 R0 K16 ["Src"]
       53 GETTABLEKS                       R10 R10 K17 ["EvalDriver"]
       55 GETTABLEKS                       R10 R10 K19 ["EvalUtils"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K10 [require]
       60 GETTABLEKS                       R11 R0 K16 ["Src"]
       62 GETTABLEKS                       R11 R11 K20 ["Flags"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K10 [require]
       67 GETTABLEKS                       R12 R0 K16 ["Src"]
       69 GETTABLEKS                       R12 R12 K17 ["EvalDriver"]
       71 GETTABLEKS                       R12 R12 K21 ["PlaceManager"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K10 [require]
       76 GETTABLEKS                       R13 R0 K16 ["Src"]
       78 GETTABLEKS                       R13 R13 K17 ["EvalDriver"]
       80 GETTABLEKS                       R13 R13 K22 ["PlaySoloManager"]
       82 CALL                             R12 1 1
       83 GETTABLEKS                       R13 R3 K23 ["Utils"]
       85 GETTABLEKS                       R13 R13 K24 ["DataModelType"]
       87 GETTABLEKS                       R14 R3 K23 ["Utils"]
       89 GETTABLEKS                       R14 R14 K25 ["EvalController"]
       91 GETTABLEKS                       R15 R3 K23 ["Utils"]
       93 GETTABLEKS                       R15 R15 K26 ["EvalFunctionRegistry"]
       95 GETTABLEKS                       R16 R3 K23 ["Utils"]
       97 GETTABLEKS                       R16 R16 K27 ["NetworkingIdentity"]
       99 GETTABLEKS                       R17 R5 K28 ["Remote"]
      101 GETTABLEKS                       R18 R7 K29 ["Types"]
      103 GETTABLEKS                       R19 R7 K30 ["Server"]
      105 GETTABLEKS                       R20 R7 K31 ["Util"]
      107 GETTABLEKS                       R20 R20 K32 ["ToolResult"]
      109 GETTABLEKS                       R21 R7 K33 ["WebSocketTransport"]
      111 GETTABLEKS                       R21 R21 K33 ["WebSocketTransport"]
      113 LOADNIL                          R22
      114 LOADNIL                          R23
      115 LOADNIL                          R24
      116 LOADNIL                          R25
      117 LOADNIL                          R26
      118 LOADNIL                          R27
      119 LOADNIL                          R28
      120 LOADNIL                          R29
      121 DUPCLOSURE                       R30 K34 [PROTO_0]
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R15
      124 DUPCLOSURE                       R31 K35 [PROTO_1]
      125 CAPTURE                          VAL R14
      126 NEWCLOSURE                       R32 P2
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R17
      131 CAPTURE                          REF R23
      132 CAPTURE                          VAL R16
      133 CAPTURE                          REF R22
      134 CAPTURE                          VAL R1
      135 NEWCLOSURE                       R33 P3
      136 CAPTURE                          REF R29
      137 DUPTABLE                         R34 K38 [{"invokeEventBridge", "identifyStudio"}]
      138 SETTABLEKS                       R32 R34 K36 ["invokeEventBridge"]
      140 SETTABLEKS                       R33 R34 K37 ["identifyStudio"]
      142 DUPCLOSURE                       R35 K39 [PROTO_4]
      143 CAPTURE                          VAL R34
      144 CAPTURE                          VAL R20
      145 NEWCLOSURE                       R36 P5
      146 CAPTURE                          REF R25
      147 CAPTURE                          REF R26
      148 CAPTURE                          REF R27
      149 NEWCLOSURE                       R37 P6
      150 CAPTURE                          VAL R18
      151 CAPTURE                          REF R25
      152 CAPTURE                          REF R26
      153 CAPTURE                          REF R27
      154 CAPTURE                          VAL R21
      155 CAPTURE                          REF R28
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R34
      158 CAPTURE                          VAL R20
      159 CAPTURE                          VAL R35
      160 NEWTABLE                         R38 0 0
      162 NEWCLOSURE                       R39 P7
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R8
      165 CAPTURE                          VAL R9
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R11
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R30
      170 CAPTURE                          VAL R31
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R17
      173 CAPTURE                          REF R23
      174 CAPTURE                          REF R24
      175 CAPTURE                          REF R22
      176 NEWCLOSURE                       R40 P8
      177 CAPTURE                          REF R25
      178 CAPTURE                          REF R26
      179 CAPTURE                          REF R27
      180 CAPTURE                          VAL R10
      181 CAPTURE                          REF R24
      182 CAPTURE                          REF R38
      183 NEWCLOSURE                       R41 P9
      184 CAPTURE                          REF R29
      185 CAPTURE                          VAL R10
      186 CAPTURE                          REF R23
      187 CAPTURE                          REF R24
      188 CAPTURE                          VAL R4
      189 CAPTURE                          REF R22
      190 CAPTURE                          VAL R9
      191 CAPTURE                          VAL R11
      192 CAPTURE                          VAL R12
      193 CAPTURE                          VAL R39
      194 CAPTURE                          VAL R37
      195 CAPTURE                          VAL R40
      196 DUPTABLE                         R42 K41 [{"init"}]
      197 SETTABLEKS                       R41 R42 K40 ["init"]
      199 CLOSEUPVALS                      R22
      200 RETURN                           R42 1
