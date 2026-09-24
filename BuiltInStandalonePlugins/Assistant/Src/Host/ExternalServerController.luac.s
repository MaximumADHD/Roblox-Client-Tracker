PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 DUPTABLE                         R1 K5 [{["error"] = "MCP Server not supported"}]
        8 RETURN                           R1 1
        9 GETTABLEKS                       R2 R0 K3 ["error"]
       11 FASTCALL1                        TYPEOF R2 ; [+2]
       12 GETIMPORT                        R1 K1 [typeof]
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKS                    R1 K6 ["string"] ; [+7]
       17 DUPTABLE                         R1 K7 [{"error"}]
       18 GETTABLEKS                       R2 R0 K3 ["error"]
       20 SETTABLEKS                       R2 R1 K3 ["error"]
       22 RETURN                           R1 1
       23 GETTABLEKS                       R2 R0 K8 ["mcpServers"]
       25 FASTCALL1                        TYPEOF R2 ; [+2]
       26 GETIMPORT                        R1 K1 [typeof]
       28 CALL                             R1 1 1
       29 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+2]
       31 RETURN                           R0 1
       32 DUPTABLE                         R1 K5 [{["error"] = "MCP Server not supported"}]
       33 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFocusedDataModelEnum"]
        3 CALL                             R0 0 1
        4 LOADB                            R1 0
        5 GETIMPORT                        R2 K4 [Enum.StudioDataModelType.Edit]
        7 JUMPIFEQ                         R0 R2 ; [+7]
        9 GETIMPORT                        R2 K6 [Enum.StudioDataModelType.None]
       11 JUMPIFNOTEQ                      R0 R2 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFocusedDataModelEnum"]
        3 CALL                             R1 0 1
        4 GETIMPORT                        R2 K4 [Enum.StudioDataModelType.None]
        6 JUMPIFNOTEQ                      R1 R2 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 RETURN                           R0 1

PROTO_3:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 0
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["isActive"]
       10 NAMECALL                         R1 R1 K1 ["get"]
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETIMPORT                        R0 K1 [pcall]
        4 GETIMPORT                        R1 K4 [task.cancel]
        6 GETUPVAL                         R2 0
        7 CALL                             R0 2 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 0
       10 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["getNameAsync"]
        4 CALL                             R1 0 1
        5 JUMPIFEQ                         R1 R0 ; [+19]
        7 GETUPVAL                         R2 1
        8 DUPTABLE                         R4 K5 [{["_meta"], ["data"], ["level"] = "info"}]
        9 DUPTABLE                         R5 K7 [{"studio_name"}]
       10 SETTABLEKS                       R1 R5 K6 ["studio_name"]
       12 SETTABLEKS                       R5 R4 K1 ["_meta"]
       14 LOADK                            R5 K8 ["Server started for %*"]
       15 MOVE                             R7 R1
       16 NAMECALL                         R5 R5 K9 ["format"]
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K2 ["data"]
       21 NAMECALL                         R2 R2 K10 ["sendLoggingMessage"]
       23 CALL                             R2 2 0
       24 MOVE                             R0 R1
       25 GETIMPORT                        R2 K13 [task.wait]
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K14 ["FIntAssistantStudioNameCheckInterval"]
       30 CALL                             R2 1 0
       31 JUMPBACK                         ; [-31]
       32 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U2
        6 CALL                             R1 1 1
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETIMPORT                        R0 K1 [pcall]
        4 GETIMPORT                        R1 K4 [task.cancel]
        6 GETUPVAL                         R2 0
        7 CALL                             R0 2 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R0 1
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R0 1
       13 NAMECALL                         R0 R0 K5 ["Disconnect"]
       15 CALL                             R0 1 0
       16 LOADNIL                          R0
       17 SETUPVAL                         R0 1
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETIMPORT                        R0 K1 [pcall]
        4 GETIMPORT                        R1 K4 [task.cancel]
        6 GETUPVAL                         R2 0
        7 CALL                             R0 2 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R0 1
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R0 1
       13 NAMECALL                         R0 R0 K5 ["Disconnect"]
       15 CALL                             R0 1 0
       16 LOADNIL                          R0
       17 SETUPVAL                         R0 1
       18 GETUPVAL                         R0 2
       19 JUMPIFNOT                        R0 ; [+6]
       20 GETUPVAL                         R0 2
       21 NAMECALL                         R0 R0 K5 ["Disconnect"]
       23 CALL                             R0 1 0
       24 LOADNIL                          R0
       25 SETUPVAL                         R0 2
       26 RETURN                           R0 0

PROTO_9:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETUPVAL                         R1 0
        2 GETIMPORT                        R2 K2 [task.spawn]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U3
        8 CALL                             R2 1 1
        9 SETUPVAL                         R2 1
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 JUMPIFNOT                        R1 ; [+8]
       13 GETIMPORT                        R1 K4 [pcall]
       15 GETIMPORT                        R2 K6 [task.cancel]
       17 GETUPVAL                         R3 1
       18 CALL                             R1 2 0
       19 LOADNIL                          R1
       20 SETUPVAL                         R1 1
       21 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETIMPORT                        R1 K1 [pcall]
        4 GETIMPORT                        R2 K4 [task.cancel]
        6 GETUPVAL                         R3 0
        7 CALL                             R1 2 0
        8 LOADNIL                          R1
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R1 1
       11 JUMPIFNOT                        R1 ; [+6]
       12 GETUPVAL                         R1 1
       13 NAMECALL                         R1 R1 K5 ["Disconnect"]
       15 CALL                             R1 1 0
       16 LOADNIL                          R1
       17 SETUPVAL                         R1 1
       18 JUMPIF                           R0 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 2
       21 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       23 LOADK                            R3 K6 ["WebSocket transport is not set"]
       24 GETIMPORT                        R1 K8 [assert]
       26 CALL                             R1 2 0
       27 GETUPVAL                         R1 2
       28 GETTABLEKS                       R1 R1 K9 ["isActive"]
       30 NEWCLOSURE                       R3 P0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U4
       35 LOADB                            R4 1
       36 NAMECALL                         R1 R1 K10 ["connect"]
       38 CALL                             R1 3 1
       39 SETUPVAL                         R1 1
       40 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clearCache"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETIMPORT                        R0 K2 [pcall]
        8 GETIMPORT                        R1 K5 [task.cancel]
       10 GETUPVAL                         R2 1
       11 CALL                             R0 2 0
       12 LOADNIL                          R0
       13 SETUPVAL                         R0 1
       14 GETUPVAL                         R0 2
       15 JUMPIFNOT                        R0 ; [+6]
       16 GETUPVAL                         R0 2
       17 NAMECALL                         R0 R0 K6 ["Disconnect"]
       19 CALL                             R0 1 0
       20 LOADNIL                          R0
       21 SETUPVAL                         R0 2
       22 GETUPVAL                         R0 3
       23 JUMPIFNOT                        R0 ; [+6]
       24 GETUPVAL                         R0 3
       25 NAMECALL                         R0 R0 K6 ["Disconnect"]
       27 CALL                             R0 1 0
       28 LOADNIL                          R0
       29 SETUPVAL                         R0 3
       30 GETUPVAL                         R1 4
       31 GETTABLEKS                       R1 R1 K7 ["getFocusedDataModelEnum"]
       33 CALL                             R1 0 1
       34 GETIMPORT                        R2 K11 [Enum.StudioDataModelType.None]
       36 JUMPIFNOTEQ                      R1 R2 ; [+2]
       38 LOADB                            R0 0 +1
       39 LOADB                            R0 1
       40 JUMPIF                           R0 ; [+33]
       41 GETUPVAL                         R0 5
       42 NAMECALL                         R0 R0 K12 ["get"]
       44 CALL                             R0 1 1
       45 JUMPIF                           R0 ; [+2]
       46 LOADB                            R1 0
       47 JUMP                             ; [+10]
       48 GETUPVAL                         R2 6
       49 JUMPIF                           R2 ; [+2]
       50 LOADB                            R1 0
       51 JUMP                             ; [+6]
       52 GETUPVAL                         R1 6
       53 GETTABLEKS                       R1 R1 K13 ["isActive"]
       55 NAMECALL                         R1 R1 K12 ["get"]
       57 CALL                             R1 1 1
       58 JUMPIFNOT                        R1 ; [+14]
       59 FASTCALL2K                       ASSERT R0 K14 ; [+5]
       61 MOVE                             R2 R0
       62 LOADK                            R3 K14 ["Server is nil"]
       63 GETIMPORT                        R1 K16 [assert]
       65 CALL                             R1 2 0
       66 DUPTABLE                         R3 K22 [{["_meta"], ["data"] = "Studio is not inside a place", ["level"] = "info"}]
       67 DUPTABLE                         R4 K25 [{["studio_name"] = ""}]
       68 SETTABLEKS                       R4 R3 K17 ["_meta"]
       70 NAMECALL                         R1 R0 K26 ["sendLoggingMessage"]
       72 CALL                             R1 2 0
       73 RETURN                           R0 0
       74 GETUPVAL                         R0 5
       75 NEWCLOSURE                       R2 P0
       76 CAPTURE                          UPVAL U1
       77 CAPTURE                          UPVAL U2
       78 CAPTURE                          UPVAL U6
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          UPVAL U7
       81 LOADB                            R3 1
       82 NAMECALL                         R0 R0 K27 ["connect"]
       84 CALL                             R0 3 1
       85 SETUPVAL                         R0 3
       86 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["connectionCountObservable"]
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETTABLEKS                       R1 R0 K0 ["connectionCountObservable"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 LOADB                            R4 1
        8 NAMECALL                         R1 R1 K1 ["connect"]
       10 CALL                             R1 3 1
       11 SETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R0 K2 ["activeConnectionsObservable"]
       14 JUMPIFNOT                        R1 ; [+9]
       15 GETTABLEKS                       R1 R0 K2 ["activeConnectionsObservable"]
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          UPVAL U3
       19 LOADB                            R4 1
       20 NAMECALL                         R1 R1 K1 ["connect"]
       22 CALL                             R1 3 1
       23 SETUPVAL                         R1 2
       24 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K0 ["Disconnect"]
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 1
       16 GETUPVAL                         R0 2
       17 LOADN                            R2 0
       18 NAMECALL                         R0 R0 K1 ["set"]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 3
       22 NEWTABLE                         R2 0 0
       24 NAMECALL                         R0 R0 K1 ["set"]
       26 CALL                             R0 2 0
       27 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destructor"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["close"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 1
       10 JUMPIFNOTEQ                      R0 R1 ; [+8]
       12 GETUPVAL                         R0 3
       13 LOADNIL                          R2
       14 NAMECALL                         R0 R0 K2 ["set"]
       16 CALL                             R0 2 0
       17 LOADNIL                          R0
       18 SETUPVAL                         R0 2
       19 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 DUPTABLE                         R1 K3 [{["url"] = "ws://localhost:13469/studio"}]
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K4 ["startExternalServer"]
        9 MOVE                             R2 R0
       10 GETUPVAL                         R3 3
       11 CALL                             R1 2 1
       12 GETTABLEKS                       R2 R1 K5 ["promise"]
       14 NAMECALL                         R2 R2 K6 ["await"]
       16 CALL                             R2 1 2
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U4
       22 JUMPIF                           R2 ; [+26]
       23 GETIMPORT                        R5 K8 [warn]
       25 LOADK                            R6 K9 ["Failed to start external server: %*"]
       26 MOVE                             R8 R3
       27 NAMECALL                         R6 R6 K10 ["format"]
       29 CALL                             R6 2 1
       30 CALL                             R5 1 0
       31 GETTABLEKS                       R5 R1 K11 ["destructor"]
       33 CALL                             R5 0 0
       34 NAMECALL                         R5 R0 K12 ["close"]
       36 CALL                             R5 1 0
       37 GETUPVAL                         R5 1
       38 JUMPIFNOTEQ                      R5 R0 ; [+8]
       40 GETUPVAL                         R5 4
       41 LOADNIL                          R7
       42 NAMECALL                         R5 R5 K13 ["set"]
       44 CALL                             R5 2 0
       45 LOADNIL                          R5
       46 SETUPVAL                         R5 1
       47 LOADNIL                          R5
       48 RETURN                           R5 1
       49 GETUPVAL                         R5 1
       50 JUMPIFNOTEQ                      R5 R0 ; [+7]
       52 GETUPVAL                         R5 4
       53 GETTABLEKS                       R7 R1 K14 ["server"]
       55 NAMECALL                         R5 R5 K13 ["set"]
       57 CALL                             R5 2 0
       58 DUPTABLE                         R5 K18 [{"disconnect", "connectionCountObservable", "activeConnectionsObservable"}]
       59 SETTABLEKS                       R4 R5 K15 ["disconnect"]
       61 GETTABLEKS                       R6 R1 K16 ["connectionCountObservable"]
       63 SETTABLEKS                       R6 R5 K16 ["connectionCountObservable"]
       65 GETTABLEKS                       R6 R1 K17 ["activeConnectionsObservable"]
       67 SETTABLEKS                       R6 R5 K17 ["activeConnectionsObservable"]
       69 RETURN                           R5 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 NEWTABLE                         R2 1 0
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K2 ["enabled"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setPluginSetting"]
        3 LOADK                            R1 K1 ["Assistant-ExternalMCPEnabled"]
        4 GETUPVAL                         R2 1
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETIMPORT                        R2 K2 [pcall]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R0
        9 CALL                             R2 1 2
       10 JUMPIF                           R2 ; [+8]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["FFlagDebugLogAssistantUI"]
       14 JUMPIFNOT                        R4 ; [+4]
       15 GETIMPORT                        R4 K5 [warn]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 0
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K6 ["FFlagAssistantExternalMCPPluginSettingRedundancy"]
       22 JUMPIFNOT                        R4 ; [+17]
       23 GETIMPORT                        R4 K2 [pcall]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R0
       28 CALL                             R4 1 2
       29 MOVE                             R2 R4
       30 MOVE                             R3 R5
       31 JUMPIF                           R2 ; [+8]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K3 ["FFlagDebugLogAssistantUI"]
       35 JUMPIFNOT                        R4 ; [+4]
       36 GETIMPORT                        R4 K5 [warn]
       38 MOVE                             R5 R3
       39 CALL                             R4 1 0
       40 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["setupMCPServerAsync"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

PROTO_22:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_21]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R1
        8 CALL                             R2 1 1
        9 JUMP                             ; [+1]
       10 DUPTABLE                         R2 K5 [{["error"] = "MCP Server not supported"}]
       11 GETUPVAL                         R3 2
       12 MOVE                             R5 R2
       13 NAMECALL                         R3 R3 K6 ["set"]
       15 CALL                             R3 2 0
       16 GETTABLEKS                       R3 R2 K3 ["error"]
       18 JUMPIFNOT                        R3 ; [+2]
       19 LOADB                            R3 0
       20 SETUPVAL                         R3 3
       21 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETIMPORT                        R0 K2 [task.spawn]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U0
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_24:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+2]
        5 MOVE                             R2 R1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 JUMPIF                           R0 ; [+12]
        9 GETIMPORT                        R3 K3 [warn]
       11 LOADK                            R4 K4 ["Failed to start external server: %*"]
       12 FASTCALL1                        TOSTRING R1 ; [+3]
       13 MOVE                             R7 R1
       14 GETIMPORT                        R6 K6 [tostring]
       16 CALL                             R6 1 1
       17 NAMECALL                         R4 R4 K7 ["format"]
       19 CALL                             R4 2 1
       20 CALL                             R3 1 0
       21 JUMPIFNOT                        R2 ; [+10]
       22 GETUPVAL                         R3 1
       23 JUMPIF                           R3 ; [+4]
       24 GETUPVAL                         R3 2
       25 GETUPVAL                         R4 3
       26 JUMPIFEQ                         R3 R4 ; [+5]
       28 GETTABLEKS                       R3 R2 K8 ["disconnect"]
       30 CALL                             R3 0 0
       31 LOADNIL                          R2
       32 GETUPVAL                         R3 2
       33 GETUPVAL                         R4 3
       34 JUMPIFEQ                         R3 R4 ; [+2]
       36 RETURN                           R0 0
       37 LOADB                            R3 0
       38 SETUPVAL                         R3 4
       39 JUMPIFNOT                        R2 ; [+14]
       40 SETUPVAL                         R2 5
       41 GETUPVAL                         R3 6
       42 MOVE                             R4 R2
       43 CALL                             R3 1 0
       44 GETUPVAL                         R3 7
       45 LOADK                            R5 K9 ["connected"]
       46 NAMECALL                         R3 R3 K10 ["set"]
       48 CALL                             R3 2 0
       49 GETUPVAL                         R3 8
       50 CALL                             R3 0 0
       51 GETUPVAL                         R3 9
       52 LOADB                            R4 1
       53 CALL                             R3 1 0
       54 GETUPVAL                         R3 10
       55 LOADB                            R5 0
       56 NAMECALL                         R3 R3 K10 ["set"]
       58 CALL                             R3 2 0
       59 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 JUMPIFNOT                        R0 ; [+1]
        7 JUMP                             ; [+10]
        8 LOADB                            R0 1
        9 SETUPVAL                         R0 2
       10 GETIMPORT                        R0 K2 [task.spawn]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U2
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 6
       19 ADDK                             R0 R0 K3 [1]
       20 SETUPVAL                         R0 6
       21 GETUPVAL                         R0 6
       22 LOADB                            R1 1
       23 SETUPVAL                         R1 1
       24 GETUPVAL                         R1 7
       25 LOADB                            R3 1
       26 NAMECALL                         R1 R1 K4 ["set"]
       28 CALL                             R1 2 0
       29 GETIMPORT                        R1 K2 [task.spawn]
       31 NEWCLOSURE                       R2 P1
       32 CAPTURE                          UPVAL U8
       33 CAPTURE                          UPVAL U9
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U10
       39 CAPTURE                          UPVAL U11
       40 CAPTURE                          UPVAL U12
       41 CAPTURE                          UPVAL U13
       42 CAPTURE                          UPVAL U7
       43 CALL                             R1 1 0
       44 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 JUMPIFNOTEQ                      R0 R1 ; [+6]
        7 GETUPVAL                         R0 3
        8 LOADB                            R2 0
        9 NAMECALL                         R0 R0 K0 ["set"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_27:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 ADDK                             R0 R0 K0 [1]
        4 SETUPVAL                         R0 1
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 JUMPIFNOT                        R1 ; [+8]
        8 GETIMPORT                        R1 K2 [pcall]
       10 GETIMPORT                        R2 K5 [task.cancel]
       12 GETUPVAL                         R3 2
       13 CALL                             R1 2 0
       14 LOADNIL                          R1
       15 SETUPVAL                         R1 2
       16 GETUPVAL                         R1 3
       17 JUMPIFNOT                        R1 ; [+6]
       18 GETUPVAL                         R1 3
       19 NAMECALL                         R1 R1 K6 ["Disconnect"]
       21 CALL                             R1 1 0
       22 LOADNIL                          R1
       23 SETUPVAL                         R1 3
       24 GETUPVAL                         R1 4
       25 JUMPIFNOT                        R1 ; [+6]
       26 GETUPVAL                         R1 4
       27 NAMECALL                         R1 R1 K6 ["Disconnect"]
       29 CALL                             R1 1 0
       30 LOADNIL                          R1
       31 SETUPVAL                         R1 4
       32 GETUPVAL                         R1 5
       33 JUMPIFNOT                        R1 ; [+6]
       34 GETUPVAL                         R1 5
       35 GETTABLEKS                       R1 R1 K7 ["disconnect"]
       37 CALL                             R1 0 0
       38 LOADNIL                          R1
       39 SETUPVAL                         R1 5
       40 GETUPVAL                         R1 6
       41 CALL                             R1 0 0
       42 GETUPVAL                         R1 7
       43 LOADK                            R3 K8 ["disconnected"]
       44 NAMECALL                         R1 R1 K9 ["set"]
       46 CALL                             R1 2 0
       47 GETUPVAL                         R1 8
       48 LOADB                            R3 1
       49 NAMECALL                         R1 R1 K9 ["set"]
       51 CALL                             R1 2 0
       52 GETIMPORT                        R1 K11 [task.spawn]
       54 NEWCLOSURE                       R2 P0
       55 CAPTURE                          UPVAL U9
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          UPVAL U8
       59 CALL                             R1 1 0
       60 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getPluginSetting"]
        3 LOADK                            R1 K1 ["Assistant-ExternalMCPEnabled"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 NEWTABLE                         R2 1 0
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R2 K2 ["enabled"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setPluginSetting"]
        3 LOADK                            R1 K1 ["Assistant-ExternalMCPEnabled"]
        4 LOADB                            R2 1
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantExternalMCPPluginSettingRedundancy"]
        7 JUMPIFNOT                        R1 ; [+91]
        8 GETIMPORT                        R1 K3 [pcall]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 CALL                             R1 1 2
       13 JUMPIF                           R1 ; [+12]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K4 ["FFlagDebugLogAssistantUI"]
       17 JUMPIFNOT                        R3 ; [+8]
       18 GETIMPORT                        R3 K6 [warn]
       20 FASTCALL1                        TOSTRING R2 ; [+3]
       21 MOVE                             R5 R2
       22 GETIMPORT                        R4 K8 [tostring]
       24 CALL                             R4 1 1
       25 CALL                             R3 1 0
       26 JUMPIFNOT                        R1 ; [+4]
       27 JUMPIFNOT                        R2 ; [+3]
       28 GETTABLEKS                       R3 R2 K9 ["enabled"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R3
       32 GETIMPORT                        R4 K3 [pcall]
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          VAL R0
       36 CALL                             R4 1 2
       37 JUMPIF                           R4 ; [+12]
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K4 ["FFlagDebugLogAssistantUI"]
       41 JUMPIFNOT                        R6 ; [+8]
       42 GETIMPORT                        R6 K6 [warn]
       44 FASTCALL1                        TOSTRING R5 ; [+3]
       45 MOVE                             R8 R5
       46 GETIMPORT                        R7 K8 [tostring]
       48 CALL                             R7 1 1
       49 CALL                             R6 1 0
       50 JUMPIF                           R4 ; [+1]
       51 LOADNIL                          R5
       52 OR                               R7 R3 R5
       53 JUMPIFEQKB                       R7 TRUE ; [+2]
       55 LOADB                            R6 0 +1
       56 LOADB                            R6 1
       57 JUMPIFNOT                        R6 ; [+40]
       58 JUMPIFEQ                         R3 R5 ; [+39]
       60 JUMPIF                           R3 ; [+18]
       61 GETIMPORT                        R7 K3 [pcall]
       63 NEWCLOSURE                       R8 P2
       64 CAPTURE                          VAL R0
       65 CALL                             R7 1 2
       66 JUMPIF                           R7 ; [+12]
       67 GETUPVAL                         R9 1
       68 GETTABLEKS                       R9 R9 K4 ["FFlagDebugLogAssistantUI"]
       70 JUMPIFNOT                        R9 ; [+8]
       71 GETIMPORT                        R9 K6 [warn]
       73 FASTCALL1                        TOSTRING R8 ; [+3]
       74 MOVE                             R11 R8
       75 GETIMPORT                        R10 K8 [tostring]
       77 CALL                             R10 1 1
       78 CALL                             R9 1 0
       79 JUMPIF                           R5 ; [+18]
       80 GETIMPORT                        R7 K3 [pcall]
       82 NEWCLOSURE                       R8 P3
       83 CAPTURE                          VAL R0
       84 CALL                             R7 1 2
       85 JUMPIF                           R7 ; [+12]
       86 GETUPVAL                         R9 1
       87 GETTABLEKS                       R9 R9 K4 ["FFlagDebugLogAssistantUI"]
       89 JUMPIFNOT                        R9 ; [+8]
       90 GETIMPORT                        R9 K6 [warn]
       92 FASTCALL1                        TOSTRING R8 ; [+3]
       93 MOVE                             R11 R8
       94 GETIMPORT                        R10 K8 [tostring]
       96 CALL                             R10 1 1
       97 CALL                             R9 1 0
       98 RETURN                           R6 1
       99 GETIMPORT                        R1 K3 [pcall]
      101 NEWCLOSURE                       R2 P4
      102 CAPTURE                          VAL R0
      103 CALL                             R1 1 2
      104 JUMPIF                           R1 ; [+12]
      105 GETUPVAL                         R3 1
      106 GETTABLEKS                       R3 R3 K4 ["FFlagDebugLogAssistantUI"]
      108 JUMPIFNOT                        R3 ; [+8]
      109 GETIMPORT                        R3 K6 [warn]
      111 FASTCALL1                        TOSTRING R2 ; [+3]
      112 MOVE                             R5 R2
      113 GETIMPORT                        R4 K8 [tostring]
      115 CALL                             R4 1 1
      116 CALL                             R3 1 0
      117 MOVE                             R4 R1
      118 JUMPIFNOT                        R4 ; [+4]
      119 MOVE                             R4 R2
      120 JUMPIFNOT                        R4 ; [+2]
      121 GETTABLEKS                       R4 R2 K9 ["enabled"]
      123 JUMPIFEQKB                       R4 TRUE ; [+2]
      125 LOADB                            R3 0 +1
      126 LOADB                            R3 1
      127 RETURN                           R3 1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFocusedDataModelEnum"]
        3 CALL                             R1 0 1
        4 GETIMPORT                        R2 K4 [Enum.StudioDataModelType.None]
        6 JUMPIFNOTEQ                      R1 R2 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 GETUPVAL                         R1 1
       11 JUMPIFNOTEQ                      R0 R1 ; [+2]
       13 RETURN                           R0 0
       14 SETUPVAL                         R0 1
       15 GETUPVAL                         R1 2
       16 CALL                             R1 0 0
       17 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+44]
        3 GETUPVAL                         R0 1
        4 JUMPIF                           R0 ; [+42]
        5 GETUPVAL                         R0 2
        6 JUMPIFNOT                        R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 3
        9 JUMPIFNOT                        R0 ; [+1]
       10 JUMP                             ; [+10]
       11 LOADB                            R0 1
       12 SETUPVAL                         R0 3
       13 GETIMPORT                        R0 K2 [task.spawn]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          UPVAL U3
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 7
       22 ADDK                             R0 R0 K3 [1]
       23 SETUPVAL                         R0 7
       24 GETUPVAL                         R0 7
       25 LOADB                            R1 1
       26 SETUPVAL                         R1 2
       27 GETUPVAL                         R1 8
       28 LOADB                            R3 1
       29 NAMECALL                         R1 R1 K4 ["set"]
       31 CALL                             R1 2 0
       32 GETIMPORT                        R1 K2 [task.spawn]
       34 NEWCLOSURE                       R2 P1
       35 CAPTURE                          UPVAL U9
       36 CAPTURE                          UPVAL U10
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          UPVAL U11
       42 CAPTURE                          UPVAL U12
       43 CAPTURE                          UPVAL U13
       44 CAPTURE                          UPVAL U14
       45 CAPTURE                          UPVAL U8
       46 CALL                             R1 1 0
       47 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["getFocusedDataModelEnum"]
        8 CALL                             R1 0 1
        9 GETIMPORT                        R2 K4 [Enum.StudioDataModelType.None]
       11 JUMPIFNOTEQ                      R1 R2 ; [+2]
       13 LOADB                            R0 0 +1
       14 LOADB                            R0 1
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K5 ["subscribeFocusedDataModelTypeChanged"]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          REF R0
       21 CAPTURE                          UPVAL U3
       22 CALL                             R1 1 1
       23 SETUPVAL                         R1 2
       24 GETIMPORT                        R1 K8 [task.spawn]
       26 NEWCLOSURE                       R2 P1
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 CAPTURE                          UPVAL U9
       33 CAPTURE                          UPVAL U10
       34 CAPTURE                          UPVAL U11
       35 CAPTURE                          UPVAL U12
       36 CAPTURE                          UPVAL U13
       37 CAPTURE                          UPVAL U14
       38 CAPTURE                          UPVAL U15
       39 CAPTURE                          UPVAL U16
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          UPVAL U17
       42 CALL                             R1 1 0
       43 CLOSEUPVALS                      R0
       44 RETURN                           R0 0

PROTO_37:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 LOADB                            R0 0
        3 SETUPVAL                         R0 1
        4 GETUPVAL                         R0 2
        5 ADDK                             R0 R0 K0 [1]
        6 SETUPVAL                         R0 2
        7 GETUPVAL                         R0 3
        8 JUMPIFNOT                        R0 ; [+8]
        9 GETIMPORT                        R0 K2 [pcall]
       11 GETIMPORT                        R1 K5 [task.cancel]
       13 GETUPVAL                         R2 3
       14 CALL                             R0 2 0
       15 LOADNIL                          R0
       16 SETUPVAL                         R0 3
       17 GETUPVAL                         R0 4
       18 JUMPIFNOT                        R0 ; [+6]
       19 GETUPVAL                         R0 4
       20 NAMECALL                         R0 R0 K6 ["Disconnect"]
       22 CALL                             R0 1 0
       23 LOADNIL                          R0
       24 SETUPVAL                         R0 4
       25 GETUPVAL                         R0 5
       26 JUMPIFNOT                        R0 ; [+6]
       27 GETUPVAL                         R0 5
       28 NAMECALL                         R0 R0 K6 ["Disconnect"]
       30 CALL                             R0 1 0
       31 LOADNIL                          R0
       32 SETUPVAL                         R0 5
       33 GETUPVAL                         R0 6
       34 JUMPIFNOT                        R0 ; [+4]
       35 GETUPVAL                         R0 6
       36 CALL                             R0 0 0
       37 LOADNIL                          R0
       38 SETUPVAL                         R0 6
       39 GETUPVAL                         R0 7
       40 JUMPIFNOT                        R0 ; [+6]
       41 GETUPVAL                         R0 7
       42 GETTABLEKS                       R0 R0 K7 ["disconnect"]
       44 CALL                             R0 0 0
       45 LOADNIL                          R0
       46 SETUPVAL                         R0 7
       47 GETUPVAL                         R0 8
       48 CALL                             R0 0 0
       49 GETUPVAL                         R0 9
       50 LOADK                            R2 K8 ["disconnected"]
       51 NAMECALL                         R0 R0 K9 ["set"]
       53 CALL                             R0 2 0
       54 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 LOADK                            R1 K1 ["disconnected"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["new"]
        8 LOADB                            R2 0
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["new"]
       13 LOADNIL                          R3
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["new"]
       18 LOADN                            R4 0
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K0 ["new"]
       23 NEWTABLE                         R5 0 0
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K0 ["new"]
       29 LOADNIL                          R6
       30 CALL                             R5 1 1
       31 LOADNIL                          R6
       32 LOADNIL                          R7
       33 LOADNIL                          R8
       34 LOADNIL                          R9
       35 LOADNIL                          R10
       36 LOADNIL                          R11
       37 LOADNIL                          R12
       38 LOADNIL                          R13
       39 LOADB                            R14 0
       40 LOADB                            R15 0
       41 LOADB                            R16 0
       42 LOADB                            R17 0
       43 LOADN                            R18 0
       44 DUPCLOSURE                       R19 K2 [PROTO_1]
       45 CAPTURE                          UPVAL U1
       46 DUPCLOSURE                       R20 K3 [PROTO_2]
       47 CAPTURE                          UPVAL U1
       48 NEWCLOSURE                       R21 P2
       49 CAPTURE                          REF R6
       50 NEWCLOSURE                       R22 P3
       51 CAPTURE                          REF R12
       52 NEWCLOSURE                       R23 P4
       53 CAPTURE                          REF R12
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          UPVAL U3
       56 NEWCLOSURE                       R24 P5
       57 CAPTURE                          REF R12
       58 CAPTURE                          REF R11
       59 NEWCLOSURE                       R25 P6
       60 CAPTURE                          REF R12
       61 CAPTURE                          REF R11
       62 CAPTURE                          REF R10
       63 NEWCLOSURE                       R26 P7
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          REF R12
       66 CAPTURE                          REF R11
       67 CAPTURE                          REF R10
       68 CAPTURE                          UPVAL U1
       69 CAPTURE                          VAL R5
       70 CAPTURE                          REF R6
       71 CAPTURE                          UPVAL U3
       72 NEWCLOSURE                       R27 P8
       73 CAPTURE                          REF R8
       74 CAPTURE                          VAL R3
       75 CAPTURE                          REF R9
       76 CAPTURE                          VAL R4
       77 NEWCLOSURE                       R28 P9
       78 CAPTURE                          REF R8
       79 CAPTURE                          REF R9
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R4
       82 NEWCLOSURE                       R29 P10
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          REF R6
       85 CAPTURE                          UPVAL U5
       86 CAPTURE                          VAL R19
       87 CAPTURE                          VAL R5
       88 DUPCLOSURE                       R30 K4 [PROTO_20]
       89 CAPTURE                          UPVAL U6
       90 CAPTURE                          UPVAL U3
       91 NEWCLOSURE                       R31 P12
       92 CAPTURE                          REF R16
       93 CAPTURE                          UPVAL U6
       94 CAPTURE                          UPVAL U7
       95 CAPTURE                          VAL R2
       96 NEWCLOSURE                       R32 P13
       97 CAPTURE                          REF R7
       98 CAPTURE                          REF R17
       99 CAPTURE                          REF R16
      100 CAPTURE                          UPVAL U6
      101 CAPTURE                          UPVAL U7
      102 CAPTURE                          VAL R2
      103 CAPTURE                          REF R18
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R29
      106 CAPTURE                          REF R15
      107 CAPTURE                          VAL R27
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R26
      110 CAPTURE                          VAL R30
      111 NEWCLOSURE                       R33 P14
      112 CAPTURE                          REF R17
      113 CAPTURE                          REF R18
      114 CAPTURE                          REF R12
      115 CAPTURE                          REF R11
      116 CAPTURE                          REF R10
      117 CAPTURE                          REF R7
      118 CAPTURE                          VAL R28
      119 CAPTURE                          VAL R0
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R30
      122 DUPCLOSURE                       R34 K5 [PROTO_33]
      123 CAPTURE                          UPVAL U6
      124 CAPTURE                          UPVAL U3
      125 NEWCLOSURE                       R35 P16
      126 CAPTURE                          REF R14
      127 CAPTURE                          UPVAL U1
      128 CAPTURE                          REF R13
      129 CAPTURE                          VAL R26
      130 CAPTURE                          VAL R34
      131 CAPTURE                          REF R7
      132 CAPTURE                          REF R17
      133 CAPTURE                          REF R16
      134 CAPTURE                          UPVAL U6
      135 CAPTURE                          UPVAL U7
      136 CAPTURE                          VAL R2
      137 CAPTURE                          REF R18
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R29
      140 CAPTURE                          REF R15
      141 CAPTURE                          VAL R27
      142 CAPTURE                          VAL R0
      143 CAPTURE                          VAL R30
      144 NEWCLOSURE                       R36 P17
      145 CAPTURE                          REF R15
      146 CAPTURE                          REF R17
      147 CAPTURE                          REF R18
      148 CAPTURE                          REF R12
      149 CAPTURE                          REF R11
      150 CAPTURE                          REF R10
      151 CAPTURE                          REF R13
      152 CAPTURE                          REF R7
      153 CAPTURE                          VAL R28
      154 CAPTURE                          VAL R0
      155 DUPTABLE                         R37 K16 [{"init", "destroy", "start", "stop", "ensureSetupInstructionsLoaded", "stateObservable", "isBusyObservable", "setupInstructionsObservable", "connectionCountObservable", "activeConnectionsObservable"}]
      156 SETTABLEKS                       R35 R37 K6 ["init"]
      158 SETTABLEKS                       R36 R37 K7 ["destroy"]
      160 SETTABLEKS                       R32 R37 K8 ["start"]
      162 SETTABLEKS                       R33 R37 K9 ["stop"]
      164 SETTABLEKS                       R31 R37 K10 ["ensureSetupInstructionsLoaded"]
      166 SETTABLEKS                       R0 R37 K11 ["stateObservable"]
      168 SETTABLEKS                       R1 R37 K12 ["isBusyObservable"]
      170 SETTABLEKS                       R2 R37 K13 ["setupInstructionsObservable"]
      172 SETTABLEKS                       R3 R37 K14 ["connectionCountObservable"]
      174 SETTABLEKS                       R4 R37 K15 ["activeConnectionsObservable"]
      176 CLOSEUPVALS                      R6
      177 RETURN                           R37 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Signal"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Flags"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Util"]
       41 GETTABLEKS                       R6 R6 K13 ["StudioIdentification"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K10 ["Src"]
       48 GETTABLEKS                       R7 R7 K12 ["Util"]
       50 GETTABLEKS                       R7 R7 K14 ["StudioState"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K10 ["Src"]
       57 GETTABLEKS                       R8 R8 K15 ["Host"]
       59 GETTABLEKS                       R8 R8 K16 ["startMcpHost"]
       61 CALL                             R7 1 1
       62 GETTABLEKS                       R8 R1 K17 ["Guest"]
       64 GETTABLEKS                       R8 R8 K18 ["Environment"]
       66 GETTABLEKS                       R9 R2 K12 ["Util"]
       68 GETTABLEKS                       R9 R9 K19 ["Observable"]
       70 GETTABLEKS                       R10 R2 K20 ["WebSocketTransport"]
       72 GETTABLEKS                       R10 R10 K20 ["WebSocketTransport"]
       74 DUPTABLE                         R11 K25 [{["Disconnected"] = "disconnected", ["Connected"] = "connected"}]
       75 DUPCLOSURE                       R12 K26 [PROTO_0]
       76 DUPCLOSURE                       R13 K27 [PROTO_38]
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R12
       85 DUPTABLE                         R14 K29 [{"new"}]
       86 SETTABLEKS                       R13 R14 K28 ["new"]
       88 RETURN                           R14 1
