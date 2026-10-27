PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+10]
        8 GETIMPORT                        R2 K4 [string.find]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K5 ["^401"]
       12 CALL                             R2 2 1
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["EngineFeatureAssistantMCPProxyTokenEnabled"]
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getMCPProxyTokenAsync"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["EventLogger"]
        6 GETTABLEKS                       R0 R0 K2 ["logMCPProxyTokenRead"]
        8 DUPTABLE                         R1 K5 [{"outcome", "errorMessage"}]
        9 GETUPVAL                         R2 1
       10 SETTABLEKS                       R2 R1 K3 ["outcome"]
       12 GETUPVAL                         R2 2
       13 SETTABLEKS                       R2 R1 K4 ["errorMessage"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["EngineFeatureAssistantMCPProxyTokenEnabled"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETIMPORT                        R0 K2 [pcall]
        8 DUPCLOSURE                       R1 K3 [PROTO_3]
        9 CAPTURE                          UPVAL U1
       10 CALL                             R0 1 2
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 JUMPIF                           R0 ; [+8]
       15 LOADK                            R2 K4 ["threw"]
       16 FASTCALL1                        TOSTRING R1 ; [+3]
       17 MOVE                             R6 R1
       18 GETIMPORT                        R5 K6 [tostring]
       20 CALL                             R5 1 1
       21 MOVE                             R3 R5
       22 JUMP                             ; [+13]
       23 FASTCALL1                        TYPE R1 ; [+3]
       24 MOVE                             R6 R1
       25 GETIMPORT                        R5 K8 [type]
       27 CALL                             R5 1 1
       28 JUMPIFNOTEQKS                    R5 K9 ["string"] ; [+3]
       30 JUMPIFNOTEQKS                    R1 K10 [""] ; [+3]
       32 LOADK                            R2 K11 ["missing"]
       33 JUMP                             ; [+2]
       34 LOADK                            R2 K12 ["ok"]
       35 MOVE                             R4 R1
       36 GETUPVAL                         R5 2
       37 JUMPIFEQ                         R5 R2 ; [+9]
       39 SETUPVAL                         R2 2
       40 GETIMPORT                        R5 K2 [pcall]
       42 NEWCLOSURE                       R6 P1
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          REF R2
       45 CAPTURE                          REF R3
       46 CALL                             R5 1 0
       47 JUMPIFNOT                        R4 ; [+9]
       48 DUPTABLE                         R5 K14 [{"authorization"}]
       49 LOADK                            R6 K15 ["Bearer %*"]
       50 MOVE                             R8 R4
       51 NAMECALL                         R6 R6 K16 ["format"]
       53 CALL                             R6 2 1
       54 SETTABLEKS                       R6 R5 K13 ["authorization"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R5
       58 CLOSEUPVALS                      R2
       59 RETURN                           R5 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADNIL                          R0
        4 GETUPVAL                         R1 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADK                            R0 K0 ["off"]
        7 JUMP                             ; [+32]
        8 GETUPVAL                         R1 2
        9 NAMECALL                         R1 R1 K1 ["get"]
       11 CALL                             R1 1 1
       12 JUMPIFEQKNIL                     R1 ; [+3]
       14 LOADK                            R0 K2 ["error"]
       15 JUMP                             ; [+24]
       16 GETUPVAL                         R1 3
       17 JUMPIF                           R1 ; [+2]
       18 LOADK                            R0 K3 ["indeterminate"]
       19 JUMP                             ; [+20]
       20 GETUPVAL                         R1 4
       21 JUMPIFNOT                        R1 ; [+17]
       22 GETUPVAL                         R1 4
       23 GETTABLEKS                       R1 R1 K4 ["isActive"]
       25 NAMECALL                         R1 R1 K1 ["get"]
       27 CALL                             R1 1 1
       28 JUMPIFNOT                        R1 ; [+10]
       29 GETUPVAL                         R2 5
       30 NAMECALL                         R2 R2 K1 ["get"]
       32 CALL                             R2 1 1
       33 LENGTH                           R1 R2
       34 LOADN                            R2 0
       35 JUMPIFNOTLT                      R2 R1 ; [+3]
       37 LOADK                            R0 K5 ["connected"]
       38 JUMP                             ; [+1]
       39 LOADK                            R0 K6 ["ready"]
       40 GETUPVAL                         R1 0
       41 MOVE                             R2 R0
       42 GETUPVAL                         R4 5
       43 NAMECALL                         R4 R4 K1 ["get"]
       45 CALL                             R4 1 1
       46 LENGTH                           R3 R4
       47 CALL                             R1 2 0
       48 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFocusedDataModelEnum"]
        3 CALL                             R1 0 1
        4 GETIMPORT                        R2 K4 [Enum.StudioDataModelType.None]
        6 JUMPIFNOTEQ                      R1 R2 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 RETURN                           R0 1

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETIMPORT                        R0 K1 [pcall]
        4 GETIMPORT                        R1 K4 [task.cancel]
        6 GETUPVAL                         R2 0
        7 CALL                             R0 2 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 0
       10 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U2
        6 CALL                             R1 1 1
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getAssistantPermissionsBridge"]
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+3]
        8 NAMECALL                         R1 R0 K2 ["SyncPermissionsAsync"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_18]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+12]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K3 ["FFlagDebugLogAssistantUI"]
        9 JUMPIFNOT                        R2 ; [+8]
       10 GETIMPORT                        R2 K5 [warn]
       12 FASTCALL1                        TOSTRING R1 ; [+3]
       13 MOVE                             R4 R1
       14 GETIMPORT                        R3 K7 [tostring]
       16 CALL                             R3 1 1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EngineFeatureStudioAssistantPermissions"]
        3 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        5 LOADK                            R2 K1 ["syncAssistantPermissions requires EngineFeatureStudioAssistantPermissions"]
        6 GETIMPORT                        R0 K3 [assert]
        8 CALL                             R0 2 0
        9 GETIMPORT                        R0 K6 [task.spawn]
       11 DUPCLOSURE                       R1 K7 [PROTO_19]
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U0
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["set"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["FFlagMCPClientCountAsASetting"]
        8 JUMPIFNOT                        R1 ; [+2]
        9 GETUPVAL                         R1 2
       10 CALL                             R1 0 0
       11 RETURN                           R0 0

PROTO_23:
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
       14 JUMPIFNOT                        R1 ; [+11]
       15 GETTABLEKS                       R1 R0 K2 ["activeConnectionsObservable"]
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 LOADB                            R4 1
       22 NAMECALL                         R1 R1 K1 ["connect"]
       24 CALL                             R1 3 1
       25 SETUPVAL                         R1 2
       26 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagMCPClientCountAsASetting"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K1 ["Disconnect"]
        9 CALL                             R0 1 0
       10 LOADNIL                          R0
       11 SETUPVAL                         R0 1
       12 GETUPVAL                         R0 2
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 2
       15 NAMECALL                         R0 R0 K1 ["Disconnect"]
       17 CALL                             R0 1 0
       18 LOADNIL                          R0
       19 SETUPVAL                         R0 2
       20 GETUPVAL                         R0 3
       21 JUMPIFNOT                        R0 ; [+6]
       22 GETUPVAL                         R0 3
       23 NAMECALL                         R0 R0 K1 ["Disconnect"]
       25 CALL                             R0 1 0
       26 LOADNIL                          R0
       27 SETUPVAL                         R0 3
       28 GETUPVAL                         R0 4
       29 LOADN                            R2 0
       30 NAMECALL                         R0 R0 K2 ["set"]
       32 CALL                             R0 2 0
       33 GETUPVAL                         R0 5
       34 NEWTABLE                         R2 0 0
       36 NAMECALL                         R0 R0 K2 ["set"]
       38 CALL                             R0 2 0
       39 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["EventLogger"]
        6 GETTABLEKS                       R0 R0 K2 ["logMCPProxyAuthRejected"]
        8 DUPTABLE                         R1 K5 [{"sendTokenEnabled", "tokenOutcome"}]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K6 ["EngineFeatureAssistantMCPProxyTokenEnabled"]
       12 SETTABLEKS                       R2 R1 K3 ["sendTokenEnabled"]
       14 GETUPVAL                         R2 2
       15 SETTABLEKS                       R2 R1 K4 ["tokenOutcome"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 LOADN                            R1 2
        5 JUMPIFLT                         R0 R1 ; [+7]
        7 GETUPVAL                         R0 1
        8 NAMECALL                         R0 R0 K1 ["get"]
       10 CALL                             R0 1 1
       11 JUMPIFEQKNIL                     R0 ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K2 ["EngineFeatureAssistantMCPProxyTokenEnabled"]
       17 JUMPIFNOT                        R1 ; [+2]
       18 LOADK                            R0 K3 ["authFailed"]
       19 JUMP                             ; [+1]
       20 LOADK                            R0 K4 ["restartRequired"]
       21 GETUPVAL                         R1 1
       22 MOVE                             R3 R0
       23 NAMECALL                         R1 R1 K5 ["set"]
       25 CALL                             R1 2 0
       26 GETIMPORT                        R1 K7 [warn]
       28 GETUPVAL                         R3 3
       29 GETTABLE                         R2 R3 R0
       30 CALL                             R1 1 0
       31 GETIMPORT                        R1 K9 [pcall]
       33 NEWCLOSURE                       R2 P0
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U5
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

PROTO_27:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+10]
        8 GETIMPORT                        R2 K4 [string.find]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K5 ["^401"]
       12 CALL                             R2 2 1
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 JUMPIFNOT                        R1 ; [+2]
       18 GETUPVAL                         R1 0
       19 CALL                             R1 0 0
       20 RETURN                           R0 0

PROTO_28:
        0 JUMPIFNOT                        R0 ; [+7]
        1 LOADN                            R1 0
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R3
        5 NAMECALL                         R1 R1 K0 ["set"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagMCPClientCountAsASetting"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 JUMPIFNOTEQ                      R0 R1 ; [+9]
        8 GETUPVAL                         R0 3
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 3
       11 NAMECALL                         R0 R0 K1 ["Disconnect"]
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 3
       16 GETUPVAL                         R0 4
       17 JUMPIFNOT                        R0 ; [+6]
       18 GETUPVAL                         R0 4
       19 NAMECALL                         R0 R0 K1 ["Disconnect"]
       21 CALL                             R0 1 0
       22 LOADNIL                          R0
       23 SETUPVAL                         R0 4
       24 GETUPVAL                         R0 5
       25 JUMPIFNOT                        R0 ; [+6]
       26 GETUPVAL                         R0 5
       27 NAMECALL                         R0 R0 K1 ["Disconnect"]
       29 CALL                             R0 1 0
       30 LOADNIL                          R0
       31 SETUPVAL                         R0 5
       32 GETUPVAL                         R0 6
       33 GETTABLEKS                       R0 R0 K2 ["destructor"]
       35 CALL                             R0 0 0
       36 GETUPVAL                         R0 2
       37 NAMECALL                         R0 R0 K3 ["close"]
       39 CALL                             R0 1 0
       40 GETUPVAL                         R0 1
       41 GETUPVAL                         R1 2
       42 JUMPIFNOTEQ                      R0 R1 ; [+8]
       44 GETUPVAL                         R0 7
       45 LOADNIL                          R2
       46 NAMECALL                         R0 R0 K4 ["set"]
       48 CALL                             R0 2 0
       49 LOADNIL                          R0
       50 SETUPVAL                         R0 1
       51 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagMCPClientCountAsASetting"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K1 ["Disconnect"]
        9 CALL                             R0 1 0
       10 LOADNIL                          R0
       11 SETUPVAL                         R0 1
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K2 ["new"]
       15 DUPTABLE                         R1 K6 [{["url"] = "ws://localhost:13469/studio", ["getHeadersAsync"]}]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K7 ["EngineFeatureAssistantMCPProxyTokenEnabled"]
       19 JUMPIFNOT                        R3 ; [+2]
       20 GETUPVAL                         R2 3
       21 JUMP                             ; [+1]
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R1 K5 ["getHeadersAsync"]
       25 CALL                             R0 1 1
       26 SETUPVAL                         R0 4
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K0 ["FFlagMCPClientCountAsASetting"]
       30 JUMPIFNOT                        R1 ; [+9]
       31 GETUPVAL                         R1 5
       32 JUMPIFNOT                        R1 ; [+7]
       33 GETTABLEKS                       R1 R0 K8 ["isActive"]
       35 GETUPVAL                         R3 6
       36 NAMECALL                         R1 R1 K9 ["connect"]
       38 CALL                             R1 2 1
       39 SETUPVAL                         R1 1
       40 LOADNIL                          R1
       41 LOADNIL                          R2
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R3 R3 K10 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
       45 JUMPIFNOT                        R3 ; [+21]
       46 LOADN                            R3 0
       47 SETUPVAL                         R3 7
       48 GETTABLEKS                       R3 R0 K11 ["transport"]
       50 GETTABLEKS                       R3 R3 K12 ["onTransportError"]
       52 NEWCLOSURE                       R5 P0
       53 CAPTURE                          UPVAL U8
       54 NAMECALL                         R3 R3 K13 ["Connect"]
       56 CALL                             R3 2 1
       57 MOVE                             R1 R3
       58 GETTABLEKS                       R3 R0 K8 ["isActive"]
       60 NEWCLOSURE                       R5 P1
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          UPVAL U9
       63 NAMECALL                         R3 R3 K9 ["connect"]
       65 CALL                             R3 2 1
       66 MOVE                             R2 R3
       67 GETUPVAL                         R3 10
       68 GETTABLEKS                       R3 R3 K14 ["startExternalServer"]
       70 MOVE                             R4 R0
       71 GETUPVAL                         R5 11
       72 CALL                             R3 2 1
       73 GETTABLEKS                       R4 R3 K15 ["promise"]
       75 NAMECALL                         R4 R4 K16 ["await"]
       77 CALL                             R4 1 2
       78 NEWCLOSURE                       R6 P2
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          UPVAL U4
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U1
       83 CAPTURE                          REF R1
       84 CAPTURE                          REF R2
       85 CAPTURE                          VAL R3
       86 CAPTURE                          UPVAL U12
       87 JUMPIF                           R4 ; [+13]
       88 GETIMPORT                        R7 K18 [warn]
       90 LOADK                            R8 K19 ["Failed to start external server: %*"]
       91 MOVE                             R10 R5
       92 NAMECALL                         R8 R8 K20 ["format"]
       94 CALL                             R8 2 1
       95 CALL                             R7 1 0
       96 MOVE                             R7 R6
       97 CALL                             R7 0 0
       98 LOADNIL                          R7
       99 CLOSEUPVALS                      R1
      100 RETURN                           R7 1
      101 GETUPVAL                         R7 4
      102 JUMPIFNOTEQ                      R7 R0 ; [+7]
      104 GETUPVAL                         R7 12
      105 GETTABLEKS                       R9 R3 K21 ["server"]
      107 NAMECALL                         R7 R7 K22 ["set"]
      109 CALL                             R7 2 0
      110 DUPTABLE                         R7 K26 [{"disconnect", "connectionCountObservable", "activeConnectionsObservable"}]
      111 SETTABLEKS                       R6 R7 K23 ["disconnect"]
      113 GETTABLEKS                       R8 R3 K24 ["connectionCountObservable"]
      115 SETTABLEKS                       R8 R7 K24 ["connectionCountObservable"]
      117 GETTABLEKS                       R8 R3 K25 ["activeConnectionsObservable"]
      119 SETTABLEKS                       R8 R7 K25 ["activeConnectionsObservable"]
      121 CLOSEUPVALS                      R1
      122 RETURN                           R7 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 NEWTABLE                         R2 1 0
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K2 ["enabled"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setPluginSetting"]
        3 LOADK                            R1 K1 ["Assistant-ExternalMCPEnabled"]
        4 GETUPVAL                         R2 1
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_33:
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

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["setupMCPServerAsync"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

PROTO_35:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_34]
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

PROTO_36:
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

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 GETUPVAL                         R0 2
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_38:
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
       39 JUMPIFNOT                        R2 ; [+17]
       40 LOADN                            R3 0
       41 SETUPVAL                         R3 5
       42 SETUPVAL                         R2 6
       43 GETUPVAL                         R3 7
       44 MOVE                             R4 R2
       45 CALL                             R3 1 0
       46 GETUPVAL                         R3 8
       47 LOADK                            R5 K9 ["connected"]
       48 NAMECALL                         R3 R3 K10 ["set"]
       50 CALL                             R3 2 0
       51 GETUPVAL                         R3 9
       52 CALL                             R3 0 0
       53 GETUPVAL                         R3 10
       54 LOADB                            R4 1
       55 CALL                             R3 1 0
       56 JUMP                             ; [+33]
       57 GETUPVAL                         R3 11
       58 GETTABLEKS                       R3 R3 K11 ["FFlagAssistantExternalMCPRetryOnStartFailure"]
       60 JUMPIFNOT                        R3 ; [+23]
       61 GETUPVAL                         R3 5
       62 ADDK                             R3 R3 K12 [1]
       63 SETUPVAL                         R3 5
       64 LOADN                            R6 2
       65 GETUPVAL                         R8 5
       66 SUBK                             R7 R8 K12 [1]
       67 POW                              R5 R6 R7
       68 MULK                             R4 R5 K13 [2]
       69 LOADN                            R5 1
       70 LOADN                            R6 20
       71 FASTCALL                         MATH_CLAMP ; [+2]
       72 GETIMPORT                        R3 K16 [math.clamp]
       74 CALL                             R3 3 1
       75 GETIMPORT                        R4 K19 [task.delay]
       77 MOVE                             R5 R3
       78 NEWCLOSURE                       R6 P0
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          UPVAL U3
       81 CAPTURE                          UPVAL U12
       82 CALL                             R4 2 0
       83 JUMP                             ; [+6]
       84 GETUPVAL                         R3 11
       85 GETTABLEKS                       R3 R3 K20 ["FFlagMCPClientCountAsASetting"]
       87 JUMPIFNOT                        R3 ; [+2]
       88 LOADB                            R3 0
       89 SETUPVAL                         R3 13
       90 GETUPVAL                         R3 11
       91 GETTABLEKS                       R3 R3 K20 ["FFlagMCPClientCountAsASetting"]
       93 JUMPIFNOT                        R3 ; [+2]
       94 GETUPVAL                         R3 14
       95 CALL                             R3 0 0
       96 GETUPVAL                         R3 15
       97 LOADB                            R5 0
       98 NAMECALL                         R3 R3 K10 ["set"]
      100 CALL                             R3 2 0
      101 RETURN                           R0 0

PROTO_39:
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
       25 GETTABLEKS                       R1 R1 K4 ["FFlagMCPClientCountAsASetting"]
       27 JUMPIFNOT                        R1 ; [+4]
       28 LOADB                            R1 1
       29 SETUPVAL                         R1 8
       30 GETUPVAL                         R1 9
       31 CALL                             R1 0 0
       32 GETUPVAL                         R1 10
       33 LOADB                            R3 1
       34 NAMECALL                         R1 R1 K5 ["set"]
       36 CALL                             R1 2 0
       37 GETUPVAL                         R1 7
       38 GETTABLEKS                       R1 R1 K6 ["FFlagAssistantExternalMCPRetryOnStartFailure"]
       40 JUMPIFNOT                        R1 ; [+5]
       41 GETUPVAL                         R1 11
       42 LOADK                            R3 K7 ["connecting"]
       43 NAMECALL                         R1 R1 K5 ["set"]
       45 CALL                             R1 2 0
       46 GETIMPORT                        R1 K2 [task.spawn]
       48 NEWCLOSURE                       R2 P1
       49 CAPTURE                          UPVAL U12
       50 CAPTURE                          UPVAL U13
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U6
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U14
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          UPVAL U15
       57 CAPTURE                          UPVAL U11
       58 CAPTURE                          UPVAL U16
       59 CAPTURE                          UPVAL U17
       60 CAPTURE                          UPVAL U7
       61 CAPTURE                          UPVAL U18
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          UPVAL U9
       64 CAPTURE                          UPVAL U10
       65 CALL                             R1 1 0
       66 RETURN                           R0 0

PROTO_40:
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

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagMCPClientCountAsASetting"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADB                            R0 0
        5 SETUPVAL                         R0 1
        6 LOADB                            R0 0
        7 SETUPVAL                         R0 2
        8 GETUPVAL                         R0 3
        9 ADDK                             R0 R0 K1 [1]
       10 SETUPVAL                         R0 3
       11 LOADN                            R0 0
       12 SETUPVAL                         R0 4
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R1 5
       15 JUMPIFNOT                        R1 ; [+8]
       16 GETIMPORT                        R1 K3 [pcall]
       18 GETIMPORT                        R2 K6 [task.cancel]
       20 GETUPVAL                         R3 5
       21 CALL                             R1 2 0
       22 LOADNIL                          R1
       23 SETUPVAL                         R1 5
       24 GETUPVAL                         R1 6
       25 JUMPIFNOT                        R1 ; [+6]
       26 GETUPVAL                         R1 6
       27 NAMECALL                         R1 R1 K7 ["Disconnect"]
       29 CALL                             R1 1 0
       30 LOADNIL                          R1
       31 SETUPVAL                         R1 6
       32 GETUPVAL                         R1 7
       33 JUMPIFNOT                        R1 ; [+6]
       34 GETUPVAL                         R1 7
       35 NAMECALL                         R1 R1 K7 ["Disconnect"]
       37 CALL                             R1 1 0
       38 LOADNIL                          R1
       39 SETUPVAL                         R1 7
       40 GETUPVAL                         R1 8
       41 JUMPIFNOT                        R1 ; [+6]
       42 GETUPVAL                         R1 8
       43 GETTABLEKS                       R1 R1 K8 ["disconnect"]
       45 CALL                             R1 0 0
       46 LOADNIL                          R1
       47 SETUPVAL                         R1 8
       48 GETUPVAL                         R1 9
       49 CALL                             R1 0 0
       50 GETUPVAL                         R1 0
       51 GETTABLEKS                       R1 R1 K9 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
       53 JUMPIFNOT                        R1 ; [+5]
       54 GETUPVAL                         R1 10
       55 LOADNIL                          R3
       56 NAMECALL                         R1 R1 K10 ["set"]
       58 CALL                             R1 2 0
       59 GETUPVAL                         R1 11
       60 LOADK                            R3 K11 ["disconnected"]
       61 NAMECALL                         R1 R1 K10 ["set"]
       63 CALL                             R1 2 0
       64 GETUPVAL                         R1 0
       65 GETTABLEKS                       R1 R1 K0 ["FFlagMCPClientCountAsASetting"]
       67 JUMPIFNOT                        R1 ; [+2]
       68 GETUPVAL                         R1 12
       69 CALL                             R1 0 0
       70 GETUPVAL                         R1 13
       71 LOADB                            R3 1
       72 NAMECALL                         R1 R1 K10 ["set"]
       74 CALL                             R1 2 0
       75 GETIMPORT                        R1 K13 [task.spawn]
       77 NEWCLOSURE                       R2 P0
       78 CAPTURE                          UPVAL U14
       79 CAPTURE                          VAL R0
       80 CAPTURE                          UPVAL U3
       81 CAPTURE                          UPVAL U13
       82 CALL                             R1 1 0
       83 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["resetStudioSessionId"]
        6 CALL                             R0 0 0
        7 GETUPVAL                         R0 1
        8 JUMPIF                           R0 ; [+3]
        9 GETUPVAL                         R0 2
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 LOADB                            R0 0
       13 SETUPVAL                         R0 2
       14 GETUPVAL                         R0 3
       15 ADDK                             R0 R0 K2 [1]
       16 SETUPVAL                         R0 3
       17 GETUPVAL                         R0 4
       18 JUMPIFNOT                        R0 ; [+8]
       19 GETIMPORT                        R0 K4 [pcall]
       21 GETIMPORT                        R1 K7 [task.cancel]
       23 GETUPVAL                         R2 4
       24 CALL                             R0 2 0
       25 LOADNIL                          R0
       26 SETUPVAL                         R0 4
       27 GETUPVAL                         R0 5
       28 JUMPIFNOT                        R0 ; [+6]
       29 GETUPVAL                         R0 5
       30 NAMECALL                         R0 R0 K8 ["Disconnect"]
       32 CALL                             R0 1 0
       33 LOADNIL                          R0
       34 SETUPVAL                         R0 5
       35 GETUPVAL                         R0 6
       36 JUMPIFNOT                        R0 ; [+6]
       37 GETUPVAL                         R0 6
       38 NAMECALL                         R0 R0 K8 ["Disconnect"]
       40 CALL                             R0 1 0
       41 LOADNIL                          R0
       42 SETUPVAL                         R0 6
       43 GETUPVAL                         R0 1
       44 JUMPIFNOT                        R0 ; [+6]
       45 GETUPVAL                         R0 1
       46 GETTABLEKS                       R0 R0 K9 ["disconnect"]
       48 CALL                             R0 0 0
       49 LOADNIL                          R0
       50 SETUPVAL                         R0 1
       51 GETUPVAL                         R0 7
       52 CALL                             R0 0 0
       53 GETUPVAL                         R0 8
       54 GETTABLEKS                       R0 R0 K10 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
       56 JUMPIFNOT                        R0 ; [+5]
       57 GETUPVAL                         R0 9
       58 LOADNIL                          R2
       59 NAMECALL                         R0 R0 K11 ["set"]
       61 CALL                             R0 2 0
       62 GETUPVAL                         R0 10
       63 LOADK                            R2 K12 ["disconnected"]
       64 NAMECALL                         R0 R0 K11 ["set"]
       66 CALL                             R0 2 0
       67 GETUPVAL                         R0 11
       68 CALL                             R0 0 0
       69 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_44:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getPluginSetting"]
        3 LOADK                            R1 K1 ["Assistant-ExternalMCPEnabled"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 NEWTABLE                         R2 1 0
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R2 K2 ["enabled"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setPluginSetting"]
        3 LOADK                            R1 K1 ["Assistant-ExternalMCPEnabled"]
        4 LOADB                            R2 1
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_48:
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

PROTO_49:
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
       17 GETUPVAL                         R1 3
       18 GETTABLEKS                       R1 R1 K5 ["EngineFeatureStudioAssistantPermissions"]
       20 JUMPIFNOT                        R1 ; [+18]
       21 JUMPIFNOT                        R0 ; [+17]
       22 GETUPVAL                         R1 4
       23 JUMPIFNOT                        R1 ; [+15]
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K5 ["EngineFeatureStudioAssistantPermissions"]
       27 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       29 LOADK                            R3 K6 ["syncAssistantPermissions requires EngineFeatureStudioAssistantPermissions"]
       30 GETIMPORT                        R1 K8 [assert]
       32 CALL                             R1 2 0
       33 GETIMPORT                        R1 K11 [task.spawn]
       35 DUPCLOSURE                       R2 K12 [PROTO_19]
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          UPVAL U3
       38 CALL                             R1 1 0
       39 GETUPVAL                         R1 3
       40 GETTABLEKS                       R1 R1 K13 ["FFlagAssistantResetMcpSessionOnPlaceClose"]
       42 JUMPIFNOT                        R1 ; [+3]
       43 JUMPIF                           R0 ; [+2]
       44 GETUPVAL                         R1 6
       45 CALL                             R1 0 0
       46 RETURN                           R0 0

PROTO_50:
        0 LENGTH                           R2 R0
        1 LOADN                            R3 0
        2 JUMPIFLT                         R3 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 JUMPIFNOT                        R1 ; [+28]
        7 GETUPVAL                         R2 0
        8 JUMPIF                           R2 ; [+26]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K0 ["getFocusedDataModelEnum"]
       12 CALL                             R3 0 1
       13 GETIMPORT                        R4 K4 [Enum.StudioDataModelType.None]
       15 JUMPIFNOTEQ                      R3 R4 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 JUMPIFNOT                        R2 ; [+15]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K5 ["EngineFeatureStudioAssistantPermissions"]
       23 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       25 LOADK                            R4 K6 ["syncAssistantPermissions requires EngineFeatureStudioAssistantPermissions"]
       26 GETIMPORT                        R2 K8 [assert]
       28 CALL                             R2 2 0
       29 GETIMPORT                        R2 K11 [task.spawn]
       31 DUPCLOSURE                       R3 K12 [PROTO_19]
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U2
       34 CALL                             R2 1 0
       35 SETUPVAL                         R1 0
       36 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["FFlagMCPClientCountAsASetting"]
        8 JUMPIFNOT                        R0 ; [+2]
        9 GETUPVAL                         R0 2
       10 CALL                             R0 0 0
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K1 ["getFocusedDataModelEnum"]
       14 CALL                             R1 0 1
       15 GETIMPORT                        R2 K5 [Enum.StudioDataModelType.None]
       17 JUMPIFNOTEQ                      R1 R2 ; [+2]
       19 LOADB                            R0 0 +1
       20 LOADB                            R0 1
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R1 R1 K6 ["subscribeFocusedDataModelTypeChanged"]
       24 NEWCLOSURE                       R2 P0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          REF R0
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 CALL                             R1 1 1
       33 SETUPVAL                         R1 4
       34 GETUPVAL                         R1 1
       35 GETTABLEKS                       R1 R1 K7 ["EngineFeatureStudioAssistantPermissions"]
       37 JUMPIFNOT                        R1 ; [+10]
       38 GETUPVAL                         R1 10
       39 NEWCLOSURE                       R3 P1
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U7
       44 NAMECALL                         R1 R1 K8 ["connect"]
       46 CALL                             R1 2 1
       47 SETUPVAL                         R1 9
       48 GETIMPORT                        R1 K11 [task.spawn]
       50 NEWCLOSURE                       R2 P2
       51 CAPTURE                          UPVAL U11
       52 CAPTURE                          UPVAL U12
       53 CALL                             R1 1 0
       54 CLOSEUPVALS                      R0
       55 RETURN                           R0 0

PROTO_53:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["FFlagMCPClientCountAsASetting"]
        5 JUMPIFNOT                        R0 ; [+2]
        6 LOADB                            R0 0
        7 SETUPVAL                         R0 2
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K0 ["FFlagMCPClientCountAsASetting"]
       11 JUMPIFNOT                        R0 ; [+8]
       12 GETUPVAL                         R0 3
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 3
       15 NAMECALL                         R0 R0 K1 ["Disconnect"]
       17 CALL                             R0 1 0
       18 LOADNIL                          R0
       19 SETUPVAL                         R0 3
       20 LOADB                            R0 0
       21 SETUPVAL                         R0 4
       22 GETUPVAL                         R0 5
       23 ADDK                             R0 R0 K2 [1]
       24 SETUPVAL                         R0 5
       25 GETUPVAL                         R0 6
       26 JUMPIFNOT                        R0 ; [+8]
       27 GETIMPORT                        R0 K4 [pcall]
       29 GETIMPORT                        R1 K7 [task.cancel]
       31 GETUPVAL                         R2 6
       32 CALL                             R0 2 0
       33 LOADNIL                          R0
       34 SETUPVAL                         R0 6
       35 GETUPVAL                         R0 7
       36 JUMPIFNOT                        R0 ; [+6]
       37 GETUPVAL                         R0 7
       38 NAMECALL                         R0 R0 K1 ["Disconnect"]
       40 CALL                             R0 1 0
       41 LOADNIL                          R0
       42 SETUPVAL                         R0 7
       43 GETUPVAL                         R0 8
       44 JUMPIFNOT                        R0 ; [+6]
       45 GETUPVAL                         R0 8
       46 NAMECALL                         R0 R0 K1 ["Disconnect"]
       48 CALL                             R0 1 0
       49 LOADNIL                          R0
       50 SETUPVAL                         R0 8
       51 GETUPVAL                         R0 9
       52 JUMPIFNOT                        R0 ; [+4]
       53 GETUPVAL                         R0 9
       54 CALL                             R0 0 0
       55 LOADNIL                          R0
       56 SETUPVAL                         R0 9
       57 GETUPVAL                         R0 1
       58 GETTABLEKS                       R0 R0 K8 ["EngineFeatureStudioAssistantPermissions"]
       60 JUMPIFNOT                        R0 ; [+8]
       61 GETUPVAL                         R0 10
       62 JUMPIFNOT                        R0 ; [+6]
       63 GETUPVAL                         R0 10
       64 NAMECALL                         R0 R0 K1 ["Disconnect"]
       66 CALL                             R0 1 0
       67 LOADNIL                          R0
       68 SETUPVAL                         R0 10
       69 GETUPVAL                         R0 11
       70 JUMPIFNOT                        R0 ; [+6]
       71 GETUPVAL                         R0 11
       72 GETTABLEKS                       R0 R0 K9 ["disconnect"]
       74 CALL                             R0 0 0
       75 LOADNIL                          R0
       76 SETUPVAL                         R0 11
       77 GETUPVAL                         R0 12
       78 CALL                             R0 0 0
       79 GETUPVAL                         R0 1
       80 GETTABLEKS                       R0 R0 K10 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
       82 JUMPIFNOT                        R0 ; [+5]
       83 GETUPVAL                         R0 13
       84 LOADNIL                          R2
       85 NAMECALL                         R0 R0 K11 ["set"]
       87 CALL                             R0 2 0
       88 GETUPVAL                         R0 14
       89 LOADK                            R2 K12 ["disconnected"]
       90 NAMECALL                         R0 R0 K11 ["set"]
       92 CALL                             R0 2 0
       93 GETUPVAL                         R0 1
       94 GETTABLEKS                       R0 R0 K0 ["FFlagMCPClientCountAsASetting"]
       96 JUMPIFNOT                        R0 ; [+2]
       97 GETUPVAL                         R0 15
       98 CALL                             R0 0 0
       99 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 LOADK                            R2 K1 ["disconnected"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["new"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["new"]
       13 LOADNIL                          R4
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K0 ["new"]
       18 LOADN                            R5 0
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["new"]
       23 NEWTABLE                         R6 0 0
       25 CALL                             R5 1 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K0 ["new"]
       29 LOADNIL                          R7
       30 CALL                             R6 1 1
       31 LOADN                            R7 0
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K0 ["new"]
       35 LOADNIL                          R9
       36 CALL                             R8 1 1
       37 LOADNIL                          R9
       38 LOADNIL                          R10
       39 DUPCLOSURE                       R11 K2 [PROTO_2]
       40 CAPTURE                          UPVAL U1
       41 NEWCLOSURE                       R12 P1
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          REF R10
       45 LOADNIL                          R13
       46 LOADNIL                          R14
       47 LOADNIL                          R15
       48 LOADNIL                          R16
       49 LOADNIL                          R17
       50 LOADNIL                          R18
       51 LOADNIL                          R19
       52 LOADB                            R20 0
       53 LOADNIL                          R21
       54 LOADB                            R22 0
       55 LOADB                            R23 0
       56 LOADB                            R24 0
       57 LOADB                            R25 0
       58 LOADN                            R26 0
       59 LOADN                            R27 0
       60 LOADB                            R28 0
       61 LOADNIL                          R29
       62 LOADNIL                          R30
       63 GETUPVAL                         R31 1
       64 GETTABLEKS                       R31 R31 K3 ["FFlagMCPClientCountAsASetting"]
       66 JUMPIFNOT                        R31 ; [+14]
       67 FASTCALL2K                       ASSERT R0 K4 ; [+5]
       69 MOVE                             R32 R0
       70 LOADK                            R33 K4 ["Plugin is required when FFlagMCPClientCountAsASetting is enabled"]
       71 GETIMPORT                        R31 K6 [assert]
       73 CALL                             R31 2 0
       74 GETUPVAL                         R31 3
       75 GETTABLEKS                       R31 R31 K0 ["new"]
       77 MOVE                             R32 R0
       78 GETUPVAL                         R33 4
       79 CALL                             R31 2 1
       80 MOVE                             R30 R31
       81 NEWCLOSURE                       R31 P2
       82 CAPTURE                          REF R30
       83 CAPTURE                          REF R28
       84 CAPTURE                          VAL R6
       85 CAPTURE                          REF R13
       86 CAPTURE                          REF R9
       87 CAPTURE                          VAL R5
       88 JUMPIFNOT                        R30 ; [+5]
       89 MOVE                             R34 R31
       90 NAMECALL                         R32 R6 K7 ["connect"]
       92 CALL                             R32 2 1
       93 JUMP                             ; [+1]
       94 LOADNIL                          R32
       95 DUPCLOSURE                       R33 K8 [PROTO_7]
       96 CAPTURE                          UPVAL U5
       97 DUPCLOSURE                       R34 K9 [PROTO_8]
       98 CAPTURE                          UPVAL U5
       99 NEWCLOSURE                       R35 P5
      100 CAPTURE                          REF R9
      101 NEWCLOSURE                       R36 P6
      102 CAPTURE                          REF R18
      103 NEWCLOSURE                       R37 P7
      104 CAPTURE                          REF R18
      105 CAPTURE                          UPVAL U6
      106 CAPTURE                          UPVAL U1
      107 NEWCLOSURE                       R38 P8
      108 CAPTURE                          REF R18
      109 CAPTURE                          REF R17
      110 NEWCLOSURE                       R39 P9
      111 CAPTURE                          REF R18
      112 CAPTURE                          REF R17
      113 CAPTURE                          REF R16
      114 NEWCLOSURE                       R40 P10
      115 CAPTURE                          UPVAL U6
      116 CAPTURE                          REF R18
      117 CAPTURE                          REF R17
      118 CAPTURE                          REF R16
      119 CAPTURE                          UPVAL U5
      120 CAPTURE                          VAL R8
      121 CAPTURE                          REF R9
      122 CAPTURE                          UPVAL U1
      123 DUPCLOSURE                       R41 K10 [PROTO_20]
      124 CAPTURE                          UPVAL U1
      125 CAPTURE                          UPVAL U2
      126 NEWCLOSURE                       R42 P12
      127 CAPTURE                          REF R14
      128 CAPTURE                          VAL R4
      129 CAPTURE                          REF R15
      130 CAPTURE                          VAL R5
      131 CAPTURE                          UPVAL U1
      132 CAPTURE                          VAL R31
      133 NEWCLOSURE                       R43 P13
      134 CAPTURE                          UPVAL U1
      135 CAPTURE                          REF R29
      136 CAPTURE                          REF R14
      137 CAPTURE                          REF R15
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R5
      140 NEWCLOSURE                       R44 P14
      141 CAPTURE                          REF R7
      142 CAPTURE                          VAL R6
      143 CAPTURE                          UPVAL U1
      144 CAPTURE                          UPVAL U7
      145 CAPTURE                          UPVAL U2
      146 CAPTURE                          REF R10
      147 NEWCLOSURE                       R45 P15
      148 CAPTURE                          UPVAL U1
      149 CAPTURE                          REF R29
      150 CAPTURE                          UPVAL U8
      151 CAPTURE                          VAL R12
      152 CAPTURE                          REF R9
      153 CAPTURE                          REF R30
      154 CAPTURE                          VAL R31
      155 CAPTURE                          REF R7
      156 CAPTURE                          VAL R44
      157 CAPTURE                          VAL R6
      158 CAPTURE                          UPVAL U9
      159 CAPTURE                          VAL R33
      160 CAPTURE                          VAL R8
      161 DUPCLOSURE                       R46 K11 [PROTO_33]
      162 CAPTURE                          UPVAL U2
      163 CAPTURE                          UPVAL U1
      164 NEWCLOSURE                       R47 P17
      165 CAPTURE                          REF R24
      166 CAPTURE                          UPVAL U2
      167 CAPTURE                          UPVAL U10
      168 CAPTURE                          VAL R3
      169 NEWCLOSURE                       R48 P18
      170 CAPTURE                          REF R13
      171 CAPTURE                          REF R25
      172 CAPTURE                          REF R24
      173 CAPTURE                          UPVAL U2
      174 CAPTURE                          UPVAL U10
      175 CAPTURE                          VAL R3
      176 CAPTURE                          REF R26
      177 CAPTURE                          UPVAL U1
      178 CAPTURE                          REF R28
      179 CAPTURE                          VAL R31
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R1
      182 CAPTURE                          VAL R45
      183 CAPTURE                          REF R23
      184 CAPTURE                          REF R27
      185 CAPTURE                          VAL R42
      186 CAPTURE                          VAL R40
      187 CAPTURE                          VAL R46
      188 CAPTURE                          VAL R48
      189 NEWCLOSURE                       R49 P19
      190 CAPTURE                          UPVAL U1
      191 CAPTURE                          REF R28
      192 CAPTURE                          REF R25
      193 CAPTURE                          REF R26
      194 CAPTURE                          REF R27
      195 CAPTURE                          REF R18
      196 CAPTURE                          REF R17
      197 CAPTURE                          REF R16
      198 CAPTURE                          REF R13
      199 CAPTURE                          VAL R43
      200 CAPTURE                          VAL R6
      201 CAPTURE                          VAL R1
      202 CAPTURE                          VAL R31
      203 CAPTURE                          VAL R2
      204 CAPTURE                          VAL R46
      205 NEWCLOSURE                       R50 P20
      206 CAPTURE                          UPVAL U2
      207 CAPTURE                          REF R13
      208 CAPTURE                          REF R25
      209 CAPTURE                          REF R26
      210 CAPTURE                          REF R18
      211 CAPTURE                          REF R17
      212 CAPTURE                          REF R16
      213 CAPTURE                          VAL R43
      214 CAPTURE                          UPVAL U1
      215 CAPTURE                          VAL R6
      216 CAPTURE                          VAL R1
      217 CAPTURE                          VAL R48
      218 DUPCLOSURE                       R51 K12 [PROTO_48]
      219 CAPTURE                          UPVAL U2
      220 CAPTURE                          UPVAL U1
      221 NEWCLOSURE                       R52 P22
      222 CAPTURE                          REF R22
      223 CAPTURE                          UPVAL U1
      224 CAPTURE                          VAL R31
      225 CAPTURE                          UPVAL U5
      226 CAPTURE                          REF R19
      227 CAPTURE                          VAL R40
      228 CAPTURE                          REF R20
      229 CAPTURE                          UPVAL U2
      230 CAPTURE                          VAL R50
      231 CAPTURE                          REF R21
      232 CAPTURE                          VAL R5
      233 CAPTURE                          VAL R51
      234 CAPTURE                          VAL R48
      235 NEWCLOSURE                       R53 P23
      236 CAPTURE                          REF R23
      237 CAPTURE                          UPVAL U1
      238 CAPTURE                          REF R28
      239 CAPTURE                          REF R32
      240 CAPTURE                          REF R25
      241 CAPTURE                          REF R26
      242 CAPTURE                          REF R18
      243 CAPTURE                          REF R17
      244 CAPTURE                          REF R16
      245 CAPTURE                          REF R19
      246 CAPTURE                          REF R21
      247 CAPTURE                          REF R13
      248 CAPTURE                          VAL R43
      249 CAPTURE                          VAL R6
      250 CAPTURE                          VAL R1
      251 CAPTURE                          VAL R31
      252 DUPTABLE                         R54 K24 [{"init", "destroy", "start", "stop", "ensureSetupInstructionsLoaded", "stateObservable", "isBusyObservable", "setupInstructionsObservable", "connectionCountObservable", "activeConnectionsObservable", "authRejectedObservable"}]
      253 SETTABLEKS                       R52 R54 K13 ["init"]
      255 SETTABLEKS                       R53 R54 K14 ["destroy"]
      257 SETTABLEKS                       R48 R54 K15 ["start"]
      259 SETTABLEKS                       R49 R54 K16 ["stop"]
      261 SETTABLEKS                       R47 R54 K17 ["ensureSetupInstructionsLoaded"]
      263 SETTABLEKS                       R1 R54 K18 ["stateObservable"]
      265 SETTABLEKS                       R2 R54 K19 ["isBusyObservable"]
      267 SETTABLEKS                       R3 R54 K20 ["setupInstructionsObservable"]
      269 SETTABLEKS                       R4 R54 K21 ["connectionCountObservable"]
      271 SETTABLEKS                       R5 R54 K22 ["activeConnectionsObservable"]
      273 SETTABLEKS                       R6 R54 K23 ["authRejectedObservable"]
      275 CLOSEUPVALS                      R7
      276 RETURN                           R54 1

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
       39 GETTABLEKS                       R6 R6 K12 ["Resources"]
       41 GETTABLEKS                       R6 R6 K13 ["Localization"]
       43 GETTABLEKS                       R6 R6 K13 ["Localization"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K14 ["Host"]
       52 GETTABLEKS                       R7 R7 K15 ["McpStatusSetting"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K10 ["Src"]
       59 GETTABLEKS                       R8 R8 K16 ["Util"]
       61 GETTABLEKS                       R8 R8 K17 ["StudioIdentification"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K10 ["Src"]
       68 GETTABLEKS                       R9 R9 K16 ["Util"]
       70 GETTABLEKS                       R9 R9 K18 ["StudioState"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K10 ["Src"]
       77 GETTABLEKS                       R10 R10 K14 ["Host"]
       79 GETTABLEKS                       R10 R10 K19 ["startMcpHost"]
       81 CALL                             R9 1 1
       82 GETTABLEKS                       R10 R1 K20 ["Guest"]
       84 GETTABLEKS                       R10 R10 K21 ["Environment"]
       86 GETTABLEKS                       R11 R2 K16 ["Util"]
       88 GETTABLEKS                       R11 R11 K22 ["Observable"]
       90 GETTABLEKS                       R12 R2 K23 ["WebSocketTransport"]
       92 GETTABLEKS                       R12 R12 K23 ["WebSocketTransport"]
       94 DUPTABLE                         R13 K30 [{["Disconnected"] = "disconnected", ["Connecting"] = "connecting", ["Connected"] = "connected"}]
       95 DUPTABLE                         R14 K35 [{["restartRequired"] = "The MCP server rejected this Studio session because it is using older settings. Restart Studio to reconnect.", ["authFailed"] = "Studio couldn't authenticate with the MCP server. Restart your AI clients, then try again."}]
       96 DUPCLOSURE                       R15 K36 [PROTO_0]
       97 DUPCLOSURE                       R16 K37 [PROTO_1]
       98 DUPCLOSURE                       R17 K38 [PROTO_54]
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R16
      110 DUPTABLE                         R18 K40 [{"new"}]
      111 SETTABLEKS                       R17 R18 K39 ["new"]
      113 RETURN                           R18 1
