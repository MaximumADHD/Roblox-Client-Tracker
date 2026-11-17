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
        6 DUPCLOSURE                       R1 K1 [PROTO_3]
        7 CAPTURE                          UPVAL U1
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R0 K3 [pcall]
       11 CALL                             R0 1 2
       12 LOADNIL                          R2
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 JUMPIF                           R0 ; [+8]
       16 LOADK                            R2 K4 ["threw"]
       17 FASTCALL1                        TOSTRING R1 ; [+3]
       18 MOVE                             R6 R1
       19 GETIMPORT                        R5 K6 [tostring]
       21 CALL                             R5 1 1
       22 MOVE                             R3 R5
       23 JUMP                             ; [+13]
       24 FASTCALL1                        TYPE R1 ; [+3]
       25 MOVE                             R6 R1
       26 GETIMPORT                        R5 K8 [type]
       28 CALL                             R5 1 1
       29 JUMPIFNOTEQKS                    R5 K9 ["string"] ; [+3]
       31 JUMPIFNOTEQKS                    R1 K10 [""] ; [+3]
       33 LOADK                            R2 K11 ["missing"]
       34 JUMP                             ; [+2]
       35 LOADK                            R2 K12 ["ok"]
       36 MOVE                             R4 R1
       37 GETUPVAL                         R5 2
       38 JUMPIFEQ                         R5 R2 ; [+10]
       40 SETUPVAL                         R2 2
       41 NEWCLOSURE                       R6 P1
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          REF R2
       44 CAPTURE                          REF R3
       45 FASTPCALL                        pcall 1 ; [+2]
       46 GETIMPORT                        R5 K3 [pcall]
       48 CALL                             R5 1 0
       49 JUMPIFNOT                        R4 ; [+9]
       50 DUPTABLE                         R5 K14 [{"authorization"}]
       51 LOADK                            R6 K15 ["Bearer %*"]
       52 MOVE                             R8 R4
       53 NAMECALL                         R6 R6 K16 ["format"]
       55 CALL                             R6 2 1
       56 SETTABLEKS                       R6 R5 K13 ["authorization"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R5
       60 CLOSEUPVALS                      R2
       61 RETURN                           R5 1

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
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETIMPORT                        R1 K2 [task.cancel]
        4 GETUPVAL                         R2 0
        5 FASTPCALL                        pcall 2 ; [+2]
        6 GETIMPORT                        R0 K4 [pcall]
        8 CALL                             R0 2 0
        9 LOADNIL                          R0
       10 SETUPVAL                         R0 0
       11 RETURN                           R0 0

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
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETIMPORT                        R1 K2 [task.cancel]
        4 GETUPVAL                         R2 0
        5 FASTPCALL                        pcall 2 ; [+2]
        6 GETIMPORT                        R0 K4 [pcall]
        8 CALL                             R0 2 0
        9 LOADNIL                          R0
       10 SETUPVAL                         R0 0
       11 GETUPVAL                         R0 1
       12 JUMPIFNOT                        R0 ; [+6]
       13 GETUPVAL                         R0 1
       14 NAMECALL                         R0 R0 K5 ["Disconnect"]
       16 CALL                             R0 1 0
       17 LOADNIL                          R0
       18 SETUPVAL                         R0 1
       19 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETIMPORT                        R1 K2 [task.cancel]
        4 GETUPVAL                         R2 0
        5 FASTPCALL                        pcall 2 ; [+2]
        6 GETIMPORT                        R0 K4 [pcall]
        8 CALL                             R0 2 0
        9 LOADNIL                          R0
       10 SETUPVAL                         R0 0
       11 GETUPVAL                         R0 1
       12 JUMPIFNOT                        R0 ; [+6]
       13 GETUPVAL                         R0 1
       14 NAMECALL                         R0 R0 K5 ["Disconnect"]
       16 CALL                             R0 1 0
       17 LOADNIL                          R0
       18 SETUPVAL                         R0 1
       19 GETUPVAL                         R0 2
       20 JUMPIFNOT                        R0 ; [+6]
       21 GETUPVAL                         R0 2
       22 NAMECALL                         R0 R0 K5 ["Disconnect"]
       24 CALL                             R0 1 0
       25 LOADNIL                          R0
       26 SETUPVAL                         R0 2
       27 RETURN                           R0 0

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
       12 JUMPIFNOT                        R1 ; [+9]
       13 GETIMPORT                        R2 K4 [task.cancel]
       15 GETUPVAL                         R3 1
       16 FASTPCALL                        pcall 2 ; [+2]
       17 GETIMPORT                        R1 K6 [pcall]
       19 CALL                             R1 2 0
       20 LOADNIL                          R1
       21 SETUPVAL                         R1 1
       22 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+9]
        2 GETIMPORT                        R2 K2 [task.cancel]
        4 GETUPVAL                         R3 0
        5 FASTPCALL                        pcall 2 ; [+2]
        6 GETIMPORT                        R1 K4 [pcall]
        8 CALL                             R1 2 0
        9 LOADNIL                          R1
       10 SETUPVAL                         R1 0
       11 GETUPVAL                         R1 1
       12 JUMPIFNOT                        R1 ; [+6]
       13 GETUPVAL                         R1 1
       14 NAMECALL                         R1 R1 K5 ["Disconnect"]
       16 CALL                             R1 1 0
       17 LOADNIL                          R1
       18 SETUPVAL                         R1 1
       19 JUMPIF                           R0 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 2
       22 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       24 LOADK                            R3 K6 ["WebSocket transport is not set"]
       25 GETIMPORT                        R1 K8 [assert]
       27 CALL                             R1 2 0
       28 GETUPVAL                         R1 2
       29 GETTABLEKS                       R1 R1 K9 ["isActive"]
       31 NEWCLOSURE                       R3 P0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U4
       36 LOADB                            R4 1
       37 NAMECALL                         R1 R1 K10 ["connect"]
       39 CALL                             R1 3 1
       40 SETUPVAL                         R1 1
       41 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clearCache"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETIMPORT                        R1 K3 [task.cancel]
        8 GETUPVAL                         R2 1
        9 FASTPCALL                        pcall 2 ; [+2]
       10 GETIMPORT                        R0 K5 [pcall]
       12 CALL                             R0 2 0
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 1
       15 GETUPVAL                         R0 2
       16 JUMPIFNOT                        R0 ; [+6]
       17 GETUPVAL                         R0 2
       18 NAMECALL                         R0 R0 K6 ["Disconnect"]
       20 CALL                             R0 1 0
       21 LOADNIL                          R0
       22 SETUPVAL                         R0 2
       23 GETUPVAL                         R0 3
       24 JUMPIFNOT                        R0 ; [+6]
       25 GETUPVAL                         R0 3
       26 NAMECALL                         R0 R0 K6 ["Disconnect"]
       28 CALL                             R0 1 0
       29 LOADNIL                          R0
       30 SETUPVAL                         R0 3
       31 GETUPVAL                         R1 4
       32 GETTABLEKS                       R1 R1 K7 ["getFocusedDataModelEnum"]
       34 CALL                             R1 0 1
       35 GETIMPORT                        R2 K11 [Enum.StudioDataModelType.None]
       37 JUMPIFNOTEQ                      R1 R2 ; [+2]
       39 LOADB                            R0 0 +1
       40 LOADB                            R0 1
       41 JUMPIF                           R0 ; [+33]
       42 GETUPVAL                         R0 5
       43 NAMECALL                         R0 R0 K12 ["get"]
       45 CALL                             R0 1 1
       46 JUMPIF                           R0 ; [+2]
       47 LOADB                            R1 0
       48 JUMP                             ; [+10]
       49 GETUPVAL                         R2 6
       50 JUMPIF                           R2 ; [+2]
       51 LOADB                            R1 0
       52 JUMP                             ; [+6]
       53 GETUPVAL                         R1 6
       54 GETTABLEKS                       R1 R1 K13 ["isActive"]
       56 NAMECALL                         R1 R1 K12 ["get"]
       58 CALL                             R1 1 1
       59 JUMPIFNOT                        R1 ; [+14]
       60 FASTCALL2K                       ASSERT R0 K14 ; [+5]
       62 MOVE                             R2 R0
       63 LOADK                            R3 K14 ["Server is nil"]
       64 GETIMPORT                        R1 K16 [assert]
       66 CALL                             R1 2 0
       67 DUPTABLE                         R3 K22 [{["_meta"], ["data"] = "Studio is not inside a place", ["level"] = "info"}]
       68 DUPTABLE                         R4 K25 [{["studio_name"] = ""}]
       69 SETTABLEKS                       R4 R3 K17 ["_meta"]
       71 NAMECALL                         R1 R0 K26 ["sendLoggingMessage"]
       73 CALL                             R1 2 0
       74 RETURN                           R0 0
       75 GETUPVAL                         R0 5
       76 NEWCLOSURE                       R2 P0
       77 CAPTURE                          UPVAL U1
       78 CAPTURE                          UPVAL U2
       79 CAPTURE                          UPVAL U6
       80 CAPTURE                          UPVAL U0
       81 CAPTURE                          UPVAL U7
       82 LOADB                            R3 1
       83 NAMECALL                         R0 R0 K27 ["connect"]
       85 CALL                             R0 3 1
       86 SETUPVAL                         R0 3
       87 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getAssistantPermissionsBridge"]
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+16]
        8 NAMECALL                         R1 R0 K2 ["SyncPermissionsAsync"]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["FFlagStudioAssistantPermissionsHideNetwork"]
       14 JUMPIFNOT                        R1 ; [+9]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K4 ["IntegrationManagement"]
       18 GETTABLEKS                       R1 R1 K5 ["ForcedExecutionPermissions"]
       20 GETTABLEKS                       R1 R1 K6 ["grantAsync"]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_19:
        0 DUPCLOSURE                       R1 K0 [PROTO_18]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R0 K2 [pcall]
        7 CALL                             R0 1 2
        8 JUMPIF                           R0 ; [+12]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["FFlagDebugLogAssistantUI"]
       12 JUMPIFNOT                        R2 ; [+8]
       13 GETIMPORT                        R2 K5 [warn]
       15 FASTCALL1                        TOSTRING R1 ; [+3]
       16 MOVE                             R4 R1
       17 GETIMPORT                        R3 K7 [tostring]
       19 CALL                             R3 1 1
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

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
       14 CAPTURE                          UPVAL U2
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

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
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U5
       35 FASTPCALL                        pcall 1 ; [+2]
       36 GETIMPORT                        R1 K9 [pcall]
       38 CALL                             R1 1 0
       39 RETURN                           R0 0

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
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 FASTPCALL                        pcall 1 ; [+2]
        8 GETIMPORT                        R2 K2 [pcall]
       10 CALL                             R2 1 2
       11 JUMPIF                           R2 ; [+8]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K3 ["FFlagDebugLogAssistantUI"]
       15 JUMPIFNOT                        R4 ; [+4]
       16 GETIMPORT                        R4 K5 [warn]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 0
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K6 ["FFlagAssistantExternalMCPPluginSettingRedundancy"]
       23 JUMPIFNOT                        R4 ; [+18]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R0
       27 FASTPCALL                        pcall 1 ; [+2]
       28 GETIMPORT                        R4 K2 [pcall]
       30 CALL                             R4 1 2
       31 MOVE                             R2 R4
       32 MOVE                             R3 R5
       33 JUMPIF                           R2 ; [+8]
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K3 ["FFlagDebugLogAssistantUI"]
       37 JUMPIFNOT                        R4 ; [+4]
       38 GETIMPORT                        R4 K5 [warn]
       40 MOVE                             R5 R3
       41 CALL                             R4 1 0
       42 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["setupMCPServerAsync"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

PROTO_35:
        0 DUPCLOSURE                       R1 K0 [PROTO_34]
        1 CAPTURE                          UPVAL U0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R0 K2 [pcall]
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 JUMP                             ; [+1]
       11 DUPTABLE                         R2 K5 [{["error"] = "MCP Server not supported"}]
       12 GETUPVAL                         R3 2
       13 MOVE                             R5 R2
       14 NAMECALL                         R3 R3 K6 ["set"]
       16 CALL                             R3 2 0
       17 GETTABLEKS                       R3 R2 K3 ["error"]
       19 JUMPIFNOT                        R3 ; [+2]
       20 LOADB                            R3 0
       21 SETUPVAL                         R3 3
       22 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 FASTPCALL                        pcall 1 ; [+2]
        2 GETIMPORT                        R0 K1 [pcall]
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R2 R1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 JUMPIF                           R0 ; [+12]
       10 GETIMPORT                        R3 K3 [warn]
       12 LOADK                            R4 K4 ["Failed to start external server: %*"]
       13 FASTCALL1                        TOSTRING R1 ; [+3]
       14 MOVE                             R7 R1
       15 GETIMPORT                        R6 K6 [tostring]
       17 CALL                             R6 1 1
       18 NAMECALL                         R4 R4 K7 ["format"]
       20 CALL                             R4 2 1
       21 CALL                             R3 1 0
       22 JUMPIFNOT                        R2 ; [+10]
       23 GETUPVAL                         R3 1
       24 JUMPIF                           R3 ; [+4]
       25 GETUPVAL                         R3 2
       26 GETUPVAL                         R4 3
       27 JUMPIFEQ                         R3 R4 ; [+5]
       29 GETTABLEKS                       R3 R2 K8 ["disconnect"]
       31 CALL                             R3 0 0
       32 LOADNIL                          R2
       33 GETUPVAL                         R3 2
       34 GETUPVAL                         R4 3
       35 JUMPIFEQ                         R3 R4 ; [+2]
       37 RETURN                           R0 0
       38 LOADB                            R3 0
       39 SETUPVAL                         R3 4
       40 JUMPIFNOT                        R2 ; [+17]
       41 LOADN                            R3 0
       42 SETUPVAL                         R3 5
       43 SETUPVAL                         R2 6
       44 GETUPVAL                         R3 7
       45 MOVE                             R4 R2
       46 CALL                             R3 1 0
       47 GETUPVAL                         R3 8
       48 LOADK                            R5 K9 ["connected"]
       49 NAMECALL                         R3 R3 K10 ["set"]
       51 CALL                             R3 2 0
       52 GETUPVAL                         R3 9
       53 CALL                             R3 0 0
       54 GETUPVAL                         R3 10
       55 LOADB                            R4 1
       56 CALL                             R3 1 0
       57 JUMP                             ; [+33]
       58 GETUPVAL                         R3 11
       59 GETTABLEKS                       R3 R3 K11 ["FFlagAssistantExternalMCPRetryOnStartFailure"]
       61 JUMPIFNOT                        R3 ; [+23]
       62 GETUPVAL                         R3 5
       63 ADDK                             R3 R3 K12 [1]
       64 SETUPVAL                         R3 5
       65 LOADN                            R6 2
       66 GETUPVAL                         R8 5
       67 SUBK                             R7 R8 K12 [1]
       68 POW                              R5 R6 R7
       69 MULK                             R4 R5 K13 [2]
       70 LOADN                            R5 1
       71 LOADN                            R6 20
       72 FASTCALL                         MATH_CLAMP ; [+2]
       73 GETIMPORT                        R3 K16 [math.clamp]
       75 CALL                             R3 3 1
       76 GETIMPORT                        R4 K19 [task.delay]
       78 MOVE                             R5 R3
       79 NEWCLOSURE                       R6 P0
       80 CAPTURE                          UPVAL U2
       81 CAPTURE                          UPVAL U3
       82 CAPTURE                          UPVAL U12
       83 CALL                             R4 2 0
       84 JUMP                             ; [+6]
       85 GETUPVAL                         R3 11
       86 GETTABLEKS                       R3 R3 K20 ["FFlagMCPClientCountAsASetting"]
       88 JUMPIFNOT                        R3 ; [+2]
       89 LOADB                            R3 0
       90 SETUPVAL                         R3 13
       91 GETUPVAL                         R3 11
       92 GETTABLEKS                       R3 R3 K20 ["FFlagMCPClientCountAsASetting"]
       94 JUMPIFNOT                        R3 ; [+2]
       95 GETUPVAL                         R3 14
       96 CALL                             R3 0 0
       97 GETUPVAL                         R3 15
       98 LOADB                            R5 0
       99 NAMECALL                         R3 R3 K10 ["set"]
      101 CALL                             R3 2 0
      102 RETURN                           R0 0

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
       15 JUMPIFNOT                        R1 ; [+9]
       16 GETIMPORT                        R2 K4 [task.cancel]
       18 GETUPVAL                         R3 5
       19 FASTPCALL                        pcall 2 ; [+2]
       20 GETIMPORT                        R1 K6 [pcall]
       22 CALL                             R1 2 0
       23 LOADNIL                          R1
       24 SETUPVAL                         R1 5
       25 GETUPVAL                         R1 6
       26 JUMPIFNOT                        R1 ; [+6]
       27 GETUPVAL                         R1 6
       28 NAMECALL                         R1 R1 K7 ["Disconnect"]
       30 CALL                             R1 1 0
       31 LOADNIL                          R1
       32 SETUPVAL                         R1 6
       33 GETUPVAL                         R1 7
       34 JUMPIFNOT                        R1 ; [+6]
       35 GETUPVAL                         R1 7
       36 NAMECALL                         R1 R1 K7 ["Disconnect"]
       38 CALL                             R1 1 0
       39 LOADNIL                          R1
       40 SETUPVAL                         R1 7
       41 GETUPVAL                         R1 8
       42 JUMPIFNOT                        R1 ; [+6]
       43 GETUPVAL                         R1 8
       44 GETTABLEKS                       R1 R1 K8 ["disconnect"]
       46 CALL                             R1 0 0
       47 LOADNIL                          R1
       48 SETUPVAL                         R1 8
       49 GETUPVAL                         R1 9
       50 CALL                             R1 0 0
       51 GETUPVAL                         R1 0
       52 GETTABLEKS                       R1 R1 K9 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
       54 JUMPIFNOT                        R1 ; [+5]
       55 GETUPVAL                         R1 10
       56 LOADNIL                          R3
       57 NAMECALL                         R1 R1 K10 ["set"]
       59 CALL                             R1 2 0
       60 GETUPVAL                         R1 11
       61 LOADK                            R3 K11 ["disconnected"]
       62 NAMECALL                         R1 R1 K10 ["set"]
       64 CALL                             R1 2 0
       65 GETUPVAL                         R1 0
       66 GETTABLEKS                       R1 R1 K0 ["FFlagMCPClientCountAsASetting"]
       68 JUMPIFNOT                        R1 ; [+2]
       69 GETUPVAL                         R1 12
       70 CALL                             R1 0 0
       71 GETUPVAL                         R1 13
       72 LOADB                            R3 1
       73 NAMECALL                         R1 R1 K10 ["set"]
       75 CALL                             R1 2 0
       76 GETIMPORT                        R1 K13 [task.spawn]
       78 NEWCLOSURE                       R2 P0
       79 CAPTURE                          UPVAL U14
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U3
       82 CAPTURE                          UPVAL U13
       83 CALL                             R1 1 0
       84 RETURN                           R0 0

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
       18 JUMPIFNOT                        R0 ; [+9]
       19 GETIMPORT                        R1 K5 [task.cancel]
       21 GETUPVAL                         R2 4
       22 FASTPCALL                        pcall 2 ; [+2]
       23 GETIMPORT                        R0 K7 [pcall]
       25 CALL                             R0 2 0
       26 LOADNIL                          R0
       27 SETUPVAL                         R0 4
       28 GETUPVAL                         R0 5
       29 JUMPIFNOT                        R0 ; [+6]
       30 GETUPVAL                         R0 5
       31 NAMECALL                         R0 R0 K8 ["Disconnect"]
       33 CALL                             R0 1 0
       34 LOADNIL                          R0
       35 SETUPVAL                         R0 5
       36 GETUPVAL                         R0 6
       37 JUMPIFNOT                        R0 ; [+6]
       38 GETUPVAL                         R0 6
       39 NAMECALL                         R0 R0 K8 ["Disconnect"]
       41 CALL                             R0 1 0
       42 LOADNIL                          R0
       43 SETUPVAL                         R0 6
       44 GETUPVAL                         R0 1
       45 JUMPIFNOT                        R0 ; [+6]
       46 GETUPVAL                         R0 1
       47 GETTABLEKS                       R0 R0 K9 ["disconnect"]
       49 CALL                             R0 0 0
       50 LOADNIL                          R0
       51 SETUPVAL                         R0 1
       52 GETUPVAL                         R0 7
       53 CALL                             R0 0 0
       54 GETUPVAL                         R0 8
       55 GETTABLEKS                       R0 R0 K10 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
       57 JUMPIFNOT                        R0 ; [+5]
       58 GETUPVAL                         R0 9
       59 LOADNIL                          R2
       60 NAMECALL                         R0 R0 K11 ["set"]
       62 CALL                             R0 2 0
       63 GETUPVAL                         R0 10
       64 LOADK                            R2 K12 ["disconnected"]
       65 NAMECALL                         R0 R0 K11 ["set"]
       67 CALL                             R0 2 0
       68 GETUPVAL                         R0 11
       69 CALL                             R0 0 0
       70 RETURN                           R0 0

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
        7 JUMPIFNOT                        R1 ; [+95]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 FASTPCALL                        pcall 1 ; [+2]
       11 GETIMPORT                        R1 K3 [pcall]
       13 CALL                             R1 1 2
       14 JUMPIF                           R1 ; [+12]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K4 ["FFlagDebugLogAssistantUI"]
       18 JUMPIFNOT                        R3 ; [+8]
       19 GETIMPORT                        R3 K6 [warn]
       21 FASTCALL1                        TOSTRING R2 ; [+3]
       22 MOVE                             R5 R2
       23 GETIMPORT                        R4 K8 [tostring]
       25 CALL                             R4 1 1
       26 CALL                             R3 1 0
       27 JUMPIFNOT                        R1 ; [+4]
       28 JUMPIFNOT                        R2 ; [+3]
       29 GETTABLEKS                       R3 R2 K9 ["enabled"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R3
       33 NEWCLOSURE                       R5 P1
       34 CAPTURE                          VAL R0
       35 FASTPCALL                        pcall 1 ; [+2]
       36 GETIMPORT                        R4 K3 [pcall]
       38 CALL                             R4 1 2
       39 JUMPIF                           R4 ; [+12]
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K4 ["FFlagDebugLogAssistantUI"]
       43 JUMPIFNOT                        R6 ; [+8]
       44 GETIMPORT                        R6 K6 [warn]
       46 FASTCALL1                        TOSTRING R5 ; [+3]
       47 MOVE                             R8 R5
       48 GETIMPORT                        R7 K8 [tostring]
       50 CALL                             R7 1 1
       51 CALL                             R6 1 0
       52 JUMPIF                           R4 ; [+1]
       53 LOADNIL                          R5
       54 OR                               R7 R3 R5
       55 JUMPIFEQKB                       R7 TRUE ; [+2]
       57 LOADB                            R6 0 +1
       58 LOADB                            R6 1
       59 JUMPIFNOT                        R6 ; [+42]
       60 JUMPIFEQ                         R3 R5 ; [+41]
       62 JUMPIF                           R3 ; [+19]
       63 NEWCLOSURE                       R8 P2
       64 CAPTURE                          VAL R0
       65 FASTPCALL                        pcall 1 ; [+2]
       66 GETIMPORT                        R7 K3 [pcall]
       68 CALL                             R7 1 2
       69 JUMPIF                           R7 ; [+12]
       70 GETUPVAL                         R9 1
       71 GETTABLEKS                       R9 R9 K4 ["FFlagDebugLogAssistantUI"]
       73 JUMPIFNOT                        R9 ; [+8]
       74 GETIMPORT                        R9 K6 [warn]
       76 FASTCALL1                        TOSTRING R8 ; [+3]
       77 MOVE                             R11 R8
       78 GETIMPORT                        R10 K8 [tostring]
       80 CALL                             R10 1 1
       81 CALL                             R9 1 0
       82 JUMPIF                           R5 ; [+19]
       83 NEWCLOSURE                       R8 P3
       84 CAPTURE                          VAL R0
       85 FASTPCALL                        pcall 1 ; [+2]
       86 GETIMPORT                        R7 K3 [pcall]
       88 CALL                             R7 1 2
       89 JUMPIF                           R7 ; [+12]
       90 GETUPVAL                         R9 1
       91 GETTABLEKS                       R9 R9 K4 ["FFlagDebugLogAssistantUI"]
       93 JUMPIFNOT                        R9 ; [+8]
       94 GETIMPORT                        R9 K6 [warn]
       96 FASTCALL1                        TOSTRING R8 ; [+3]
       97 MOVE                             R11 R8
       98 GETIMPORT                        R10 K8 [tostring]
      100 CALL                             R10 1 1
      101 CALL                             R9 1 0
      102 RETURN                           R6 1
      103 NEWCLOSURE                       R2 P4
      104 CAPTURE                          VAL R0
      105 FASTPCALL                        pcall 1 ; [+2]
      106 GETIMPORT                        R1 K3 [pcall]
      108 CALL                             R1 1 2
      109 JUMPIF                           R1 ; [+12]
      110 GETUPVAL                         R3 1
      111 GETTABLEKS                       R3 R3 K4 ["FFlagDebugLogAssistantUI"]
      113 JUMPIFNOT                        R3 ; [+8]
      114 GETIMPORT                        R3 K6 [warn]
      116 FASTCALL1                        TOSTRING R2 ; [+3]
      117 MOVE                             R5 R2
      118 GETIMPORT                        R4 K8 [tostring]
      120 CALL                             R4 1 1
      121 CALL                             R3 1 0
      122 MOVE                             R4 R1
      123 JUMPIFNOT                        R4 ; [+4]
      124 MOVE                             R4 R2
      125 JUMPIFNOT                        R4 ; [+2]
      126 GETTABLEKS                       R4 R2 K9 ["enabled"]
      128 JUMPIFEQKB                       R4 TRUE ; [+2]
      130 LOADB                            R3 0 +1
      131 LOADB                            R3 1
      132 RETURN                           R3 1

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
       20 JUMPIFNOT                        R1 ; [+19]
       21 JUMPIFNOT                        R0 ; [+18]
       22 GETUPVAL                         R1 4
       23 JUMPIFNOT                        R1 ; [+16]
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
       38 CAPTURE                          UPVAL U6
       39 CALL                             R1 1 0
       40 GETUPVAL                         R1 3
       41 GETTABLEKS                       R1 R1 K13 ["FFlagAssistantResetMcpSessionOnPlaceClose"]
       43 JUMPIFNOT                        R1 ; [+3]
       44 JUMPIF                           R0 ; [+2]
       45 GETUPVAL                         R1 7
       46 CALL                             R1 0 0
       47 RETURN                           R0 0

PROTO_50:
        0 LENGTH                           R2 R0
        1 LOADN                            R3 0
        2 JUMPIFLT                         R3 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 JUMPIFNOT                        R1 ; [+29]
        7 GETUPVAL                         R2 0
        8 JUMPIF                           R2 ; [+27]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K0 ["getFocusedDataModelEnum"]
       12 CALL                             R3 0 1
       13 GETIMPORT                        R4 K4 [Enum.StudioDataModelType.None]
       15 JUMPIFNOTEQ                      R3 R4 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 JUMPIFNOT                        R2 ; [+16]
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
       34 CAPTURE                          UPVAL U4
       35 CALL                             R2 1 0
       36 SETUPVAL                         R1 0
       37 RETURN                           R0 0

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
       32 CAPTURE                          UPVAL U9
       33 CALL                             R1 1 1
       34 SETUPVAL                         R1 4
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R1 R1 K7 ["EngineFeatureStudioAssistantPermissions"]
       38 JUMPIFNOT                        R1 ; [+11]
       39 GETUPVAL                         R1 11
       40 NEWCLOSURE                       R3 P1
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          UPVAL U8
       46 NAMECALL                         R1 R1 K8 ["connect"]
       48 CALL                             R1 2 1
       49 SETUPVAL                         R1 10
       50 GETIMPORT                        R1 K11 [task.spawn]
       52 NEWCLOSURE                       R2 P2
       53 CAPTURE                          UPVAL U12
       54 CAPTURE                          UPVAL U13
       55 CALL                             R1 1 0
       56 CLOSEUPVALS                      R0
       57 RETURN                           R0 0

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
       26 JUMPIFNOT                        R0 ; [+9]
       27 GETIMPORT                        R1 K5 [task.cancel]
       29 GETUPVAL                         R2 6
       30 FASTPCALL                        pcall 2 ; [+2]
       31 GETIMPORT                        R0 K7 [pcall]
       33 CALL                             R0 2 0
       34 LOADNIL                          R0
       35 SETUPVAL                         R0 6
       36 GETUPVAL                         R0 7
       37 JUMPIFNOT                        R0 ; [+6]
       38 GETUPVAL                         R0 7
       39 NAMECALL                         R0 R0 K1 ["Disconnect"]
       41 CALL                             R0 1 0
       42 LOADNIL                          R0
       43 SETUPVAL                         R0 7
       44 GETUPVAL                         R0 8
       45 JUMPIFNOT                        R0 ; [+6]
       46 GETUPVAL                         R0 8
       47 NAMECALL                         R0 R0 K1 ["Disconnect"]
       49 CALL                             R0 1 0
       50 LOADNIL                          R0
       51 SETUPVAL                         R0 8
       52 GETUPVAL                         R0 9
       53 JUMPIFNOT                        R0 ; [+4]
       54 GETUPVAL                         R0 9
       55 CALL                             R0 0 0
       56 LOADNIL                          R0
       57 SETUPVAL                         R0 9
       58 GETUPVAL                         R0 1
       59 GETTABLEKS                       R0 R0 K8 ["EngineFeatureStudioAssistantPermissions"]
       61 JUMPIFNOT                        R0 ; [+8]
       62 GETUPVAL                         R0 10
       63 JUMPIFNOT                        R0 ; [+6]
       64 GETUPVAL                         R0 10
       65 NAMECALL                         R0 R0 K1 ["Disconnect"]
       67 CALL                             R0 1 0
       68 LOADNIL                          R0
       69 SETUPVAL                         R0 10
       70 GETUPVAL                         R0 11
       71 JUMPIFNOT                        R0 ; [+6]
       72 GETUPVAL                         R0 11
       73 GETTABLEKS                       R0 R0 K9 ["disconnect"]
       75 CALL                             R0 0 0
       76 LOADNIL                          R0
       77 SETUPVAL                         R0 11
       78 GETUPVAL                         R0 12
       79 CALL                             R0 0 0
       80 GETUPVAL                         R0 1
       81 GETTABLEKS                       R0 R0 K10 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
       83 JUMPIFNOT                        R0 ; [+5]
       84 GETUPVAL                         R0 13
       85 LOADNIL                          R2
       86 NAMECALL                         R0 R0 K11 ["set"]
       88 CALL                             R0 2 0
       89 GETUPVAL                         R0 14
       90 LOADK                            R2 K12 ["disconnected"]
       91 NAMECALL                         R0 R0 K11 ["set"]
       93 CALL                             R0 2 0
       94 GETUPVAL                         R0 1
       95 GETTABLEKS                       R0 R0 K0 ["FFlagMCPClientCountAsASetting"]
       97 JUMPIFNOT                        R0 ; [+2]
       98 GETUPVAL                         R0 15
       99 CALL                             R0 0 0
      100 RETURN                           R0 0

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
      126 CAPTURE                          UPVAL U7
      127 NEWCLOSURE                       R42 P12
      128 CAPTURE                          REF R14
      129 CAPTURE                          VAL R4
      130 CAPTURE                          REF R15
      131 CAPTURE                          VAL R5
      132 CAPTURE                          UPVAL U1
      133 CAPTURE                          VAL R31
      134 NEWCLOSURE                       R43 P13
      135 CAPTURE                          UPVAL U1
      136 CAPTURE                          REF R29
      137 CAPTURE                          REF R14
      138 CAPTURE                          REF R15
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R5
      141 NEWCLOSURE                       R44 P14
      142 CAPTURE                          REF R7
      143 CAPTURE                          VAL R6
      144 CAPTURE                          UPVAL U1
      145 CAPTURE                          UPVAL U8
      146 CAPTURE                          UPVAL U2
      147 CAPTURE                          REF R10
      148 NEWCLOSURE                       R45 P15
      149 CAPTURE                          UPVAL U1
      150 CAPTURE                          REF R29
      151 CAPTURE                          UPVAL U9
      152 CAPTURE                          VAL R12
      153 CAPTURE                          REF R9
      154 CAPTURE                          REF R30
      155 CAPTURE                          VAL R31
      156 CAPTURE                          REF R7
      157 CAPTURE                          VAL R44
      158 CAPTURE                          VAL R6
      159 CAPTURE                          UPVAL U10
      160 CAPTURE                          VAL R33
      161 CAPTURE                          VAL R8
      162 DUPCLOSURE                       R46 K11 [PROTO_33]
      163 CAPTURE                          UPVAL U2
      164 CAPTURE                          UPVAL U1
      165 NEWCLOSURE                       R47 P17
      166 CAPTURE                          REF R24
      167 CAPTURE                          UPVAL U2
      168 CAPTURE                          UPVAL U11
      169 CAPTURE                          VAL R3
      170 NEWCLOSURE                       R48 P18
      171 CAPTURE                          REF R13
      172 CAPTURE                          REF R25
      173 CAPTURE                          REF R24
      174 CAPTURE                          UPVAL U2
      175 CAPTURE                          UPVAL U11
      176 CAPTURE                          VAL R3
      177 CAPTURE                          REF R26
      178 CAPTURE                          UPVAL U1
      179 CAPTURE                          REF R28
      180 CAPTURE                          VAL R31
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R45
      184 CAPTURE                          REF R23
      185 CAPTURE                          REF R27
      186 CAPTURE                          VAL R42
      187 CAPTURE                          VAL R40
      188 CAPTURE                          VAL R46
      189 CAPTURE                          VAL R48
      190 NEWCLOSURE                       R49 P19
      191 CAPTURE                          UPVAL U1
      192 CAPTURE                          REF R28
      193 CAPTURE                          REF R25
      194 CAPTURE                          REF R26
      195 CAPTURE                          REF R27
      196 CAPTURE                          REF R18
      197 CAPTURE                          REF R17
      198 CAPTURE                          REF R16
      199 CAPTURE                          REF R13
      200 CAPTURE                          VAL R43
      201 CAPTURE                          VAL R6
      202 CAPTURE                          VAL R1
      203 CAPTURE                          VAL R31
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R46
      206 NEWCLOSURE                       R50 P20
      207 CAPTURE                          UPVAL U2
      208 CAPTURE                          REF R13
      209 CAPTURE                          REF R25
      210 CAPTURE                          REF R26
      211 CAPTURE                          REF R18
      212 CAPTURE                          REF R17
      213 CAPTURE                          REF R16
      214 CAPTURE                          VAL R43
      215 CAPTURE                          UPVAL U1
      216 CAPTURE                          VAL R6
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R48
      219 DUPCLOSURE                       R51 K12 [PROTO_48]
      220 CAPTURE                          UPVAL U2
      221 CAPTURE                          UPVAL U1
      222 NEWCLOSURE                       R52 P22
      223 CAPTURE                          REF R22
      224 CAPTURE                          UPVAL U1
      225 CAPTURE                          VAL R31
      226 CAPTURE                          UPVAL U5
      227 CAPTURE                          REF R19
      228 CAPTURE                          VAL R40
      229 CAPTURE                          REF R20
      230 CAPTURE                          UPVAL U2
      231 CAPTURE                          UPVAL U7
      232 CAPTURE                          VAL R50
      233 CAPTURE                          REF R21
      234 CAPTURE                          VAL R5
      235 CAPTURE                          VAL R51
      236 CAPTURE                          VAL R48
      237 NEWCLOSURE                       R53 P23
      238 CAPTURE                          REF R23
      239 CAPTURE                          UPVAL U1
      240 CAPTURE                          REF R28
      241 CAPTURE                          REF R32
      242 CAPTURE                          REF R25
      243 CAPTURE                          REF R26
      244 CAPTURE                          REF R18
      245 CAPTURE                          REF R17
      246 CAPTURE                          REF R16
      247 CAPTURE                          REF R19
      248 CAPTURE                          REF R21
      249 CAPTURE                          REF R13
      250 CAPTURE                          VAL R43
      251 CAPTURE                          VAL R6
      252 CAPTURE                          VAL R1
      253 CAPTURE                          VAL R31
      254 DUPTABLE                         R54 K25 [{"init", "destroy", "start", "stop", "readIsEnabledAsync", "ensureSetupInstructionsLoaded", "stateObservable", "isBusyObservable", "setupInstructionsObservable", "connectionCountObservable", "activeConnectionsObservable", "authRejectedObservable"}]
      255 SETTABLEKS                       R52 R54 K13 ["init"]
      257 SETTABLEKS                       R53 R54 K14 ["destroy"]
      259 SETTABLEKS                       R48 R54 K15 ["start"]
      261 SETTABLEKS                       R49 R54 K16 ["stop"]
      263 SETTABLEKS                       R51 R54 K17 ["readIsEnabledAsync"]
      265 SETTABLEKS                       R47 R54 K18 ["ensureSetupInstructionsLoaded"]
      267 SETTABLEKS                       R1 R54 K19 ["stateObservable"]
      269 SETTABLEKS                       R2 R54 K20 ["isBusyObservable"]
      271 SETTABLEKS                       R3 R54 K21 ["setupInstructionsObservable"]
      273 SETTABLEKS                       R4 R54 K22 ["connectionCountObservable"]
      275 SETTABLEKS                       R5 R54 K23 ["activeConnectionsObservable"]
      277 SETTABLEKS                       R6 R54 K24 ["authRejectedObservable"]
      279 CLOSEUPVALS                      R7
      280 RETURN                           R54 1

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
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R16
      111 DUPTABLE                         R18 K40 [{"new"}]
      112 SETTABLEKS                       R17 R18 K39 ["new"]
      114 RETURN                           R18 1
