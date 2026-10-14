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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFocusedDataModelEnum"]
        3 CALL                             R1 0 1
        4 GETIMPORT                        R2 K4 [Enum.StudioDataModelType.None]
        6 JUMPIFNOTEQ                      R1 R2 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 RETURN                           R0 1

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETIMPORT                        R0 K1 [pcall]
        4 GETIMPORT                        R1 K4 [task.cancel]
        6 GETUPVAL                         R2 0
        7 CALL                             R0 2 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 0
       10 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U2
        6 CALL                             R1 1 1
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_12:
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
       18 GETUPVAL                         R0 2
       19 JUMPIFNOT                        R0 ; [+6]
       20 GETUPVAL                         R0 2
       21 NAMECALL                         R0 R0 K5 ["Disconnect"]
       23 CALL                             R0 1 0
       24 LOADNIL                          R0
       25 SETUPVAL                         R0 2
       26 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
        0 JUMPIFNOT                        R0 ; [+7]
        1 LOADN                            R1 0
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R3
        5 NAMECALL                         R1 R1 K0 ["set"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_25:
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
       17 GETTABLEKS                       R0 R0 K1 ["destructor"]
       19 CALL                             R0 0 0
       20 GETUPVAL                         R0 3
       21 NAMECALL                         R0 R0 K2 ["close"]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 4
       25 GETUPVAL                         R1 3
       26 JUMPIFNOTEQ                      R0 R1 ; [+8]
       28 GETUPVAL                         R0 5
       29 LOADNIL                          R2
       30 NAMECALL                         R0 R0 K3 ["set"]
       32 CALL                             R0 2 0
       33 LOADNIL                          R0
       34 SETUPVAL                         R0 4
       35 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 DUPTABLE                         R1 K4 [{["url"] = "ws://localhost:13469/studio", ["getHeadersAsync"]}]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K5 ["EngineFeatureAssistantMCPProxyTokenEnabled"]
        7 JUMPIFNOT                        R3 ; [+2]
        8 GETUPVAL                         R2 2
        9 JUMP                             ; [+1]
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R1 K3 ["getHeadersAsync"]
       13 CALL                             R0 1 1
       14 SETUPVAL                         R0 3
       15 LOADNIL                          R1
       16 LOADNIL                          R2
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K6 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
       20 JUMPIFNOT                        R3 ; [+21]
       21 LOADN                            R3 0
       22 SETUPVAL                         R3 4
       23 GETTABLEKS                       R3 R0 K7 ["transport"]
       25 GETTABLEKS                       R3 R3 K8 ["onTransportError"]
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          UPVAL U5
       29 NAMECALL                         R3 R3 K9 ["Connect"]
       31 CALL                             R3 2 1
       32 MOVE                             R1 R3
       33 GETTABLEKS                       R3 R0 K10 ["isActive"]
       35 NEWCLOSURE                       R5 P1
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U6
       38 NAMECALL                         R3 R3 K11 ["connect"]
       40 CALL                             R3 2 1
       41 MOVE                             R2 R3
       42 GETUPVAL                         R3 7
       43 GETTABLEKS                       R3 R3 K12 ["startExternalServer"]
       45 MOVE                             R4 R0
       46 GETUPVAL                         R5 8
       47 CALL                             R3 2 1
       48 GETTABLEKS                       R4 R3 K13 ["promise"]
       50 NAMECALL                         R4 R4 K14 ["await"]
       52 CALL                             R4 1 2
       53 NEWCLOSURE                       R6 P2
       54 CAPTURE                          REF R1
       55 CAPTURE                          REF R2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          UPVAL U9
       60 JUMPIF                           R4 ; [+13]
       61 GETIMPORT                        R7 K16 [warn]
       63 LOADK                            R8 K17 ["Failed to start external server: %*"]
       64 MOVE                             R10 R5
       65 NAMECALL                         R8 R8 K18 ["format"]
       67 CALL                             R8 2 1
       68 CALL                             R7 1 0
       69 MOVE                             R7 R6
       70 CALL                             R7 0 0
       71 LOADNIL                          R7
       72 CLOSEUPVALS                      R1
       73 RETURN                           R7 1
       74 GETUPVAL                         R7 3
       75 JUMPIFNOTEQ                      R7 R0 ; [+7]
       77 GETUPVAL                         R7 9
       78 GETTABLEKS                       R9 R3 K19 ["server"]
       80 NAMECALL                         R7 R7 K20 ["set"]
       82 CALL                             R7 2 0
       83 DUPTABLE                         R7 K24 [{"disconnect", "connectionCountObservable", "activeConnectionsObservable"}]
       84 SETTABLEKS                       R6 R7 K21 ["disconnect"]
       86 GETTABLEKS                       R8 R3 K22 ["connectionCountObservable"]
       88 SETTABLEKS                       R8 R7 K22 ["connectionCountObservable"]
       90 GETTABLEKS                       R8 R3 K23 ["activeConnectionsObservable"]
       92 SETTABLEKS                       R8 R7 K23 ["activeConnectionsObservable"]
       94 CLOSEUPVALS                      R1
       95 RETURN                           R7 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 NEWTABLE                         R2 1 0
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K2 ["enabled"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setPluginSetting"]
        3 LOADK                            R1 K1 ["Assistant-ExternalMCPEnabled"]
        4 GETUPVAL                         R2 1
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["setupMCPServerAsync"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

PROTO_31:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_30]
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

PROTO_32:
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

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 GETUPVAL                         R0 2
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_34:
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
       56 JUMP                             ; [+26]
       57 GETUPVAL                         R3 11
       58 GETTABLEKS                       R3 R3 K11 ["FFlagAssistantExternalMCPRetryOnStartFailure"]
       60 JUMPIFNOT                        R3 ; [+22]
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
       83 GETUPVAL                         R3 13
       84 LOADB                            R5 0
       85 NAMECALL                         R3 R3 K10 ["set"]
       87 CALL                             R3 2 0
       88 RETURN                           R0 0

PROTO_35:
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
       29 GETUPVAL                         R1 8
       30 GETTABLEKS                       R1 R1 K5 ["FFlagAssistantExternalMCPRetryOnStartFailure"]
       32 JUMPIFNOT                        R1 ; [+5]
       33 GETUPVAL                         R1 9
       34 LOADK                            R3 K6 ["connecting"]
       35 NAMECALL                         R1 R1 K4 ["set"]
       37 CALL                             R1 2 0
       38 GETIMPORT                        R1 K2 [task.spawn]
       40 NEWCLOSURE                       R2 P1
       41 CAPTURE                          UPVAL U10
       42 CAPTURE                          UPVAL U11
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          UPVAL U12
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U13
       49 CAPTURE                          UPVAL U9
       50 CAPTURE                          UPVAL U14
       51 CAPTURE                          UPVAL U15
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          UPVAL U16
       54 CAPTURE                          UPVAL U7
       55 CALL                             R1 1 0
       56 RETURN                           R0 0

PROTO_36:
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

PROTO_37:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 ADDK                             R0 R0 K0 [1]
        4 SETUPVAL                         R0 1
        5 LOADN                            R0 0
        6 SETUPVAL                         R0 2
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R1 3
        9 JUMPIFNOT                        R1 ; [+8]
       10 GETIMPORT                        R1 K2 [pcall]
       12 GETIMPORT                        R2 K5 [task.cancel]
       14 GETUPVAL                         R3 3
       15 CALL                             R1 2 0
       16 LOADNIL                          R1
       17 SETUPVAL                         R1 3
       18 GETUPVAL                         R1 4
       19 JUMPIFNOT                        R1 ; [+6]
       20 GETUPVAL                         R1 4
       21 NAMECALL                         R1 R1 K6 ["Disconnect"]
       23 CALL                             R1 1 0
       24 LOADNIL                          R1
       25 SETUPVAL                         R1 4
       26 GETUPVAL                         R1 5
       27 JUMPIFNOT                        R1 ; [+6]
       28 GETUPVAL                         R1 5
       29 NAMECALL                         R1 R1 K6 ["Disconnect"]
       31 CALL                             R1 1 0
       32 LOADNIL                          R1
       33 SETUPVAL                         R1 5
       34 GETUPVAL                         R1 6
       35 JUMPIFNOT                        R1 ; [+6]
       36 GETUPVAL                         R1 6
       37 GETTABLEKS                       R1 R1 K7 ["disconnect"]
       39 CALL                             R1 0 0
       40 LOADNIL                          R1
       41 SETUPVAL                         R1 6
       42 GETUPVAL                         R1 7
       43 CALL                             R1 0 0
       44 GETUPVAL                         R1 8
       45 GETTABLEKS                       R1 R1 K8 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
       47 JUMPIFNOT                        R1 ; [+5]
       48 GETUPVAL                         R1 9
       49 LOADNIL                          R3
       50 NAMECALL                         R1 R1 K9 ["set"]
       52 CALL                             R1 2 0
       53 GETUPVAL                         R1 10
       54 LOADK                            R3 K10 ["disconnected"]
       55 NAMECALL                         R1 R1 K9 ["set"]
       57 CALL                             R1 2 0
       58 GETUPVAL                         R1 11
       59 LOADB                            R3 1
       60 NAMECALL                         R1 R1 K9 ["set"]
       62 CALL                             R1 2 0
       63 GETIMPORT                        R1 K12 [task.spawn]
       65 NEWCLOSURE                       R2 P0
       66 CAPTURE                          UPVAL U12
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U1
       69 CAPTURE                          UPVAL U11
       70 CALL                             R1 1 0
       71 RETURN                           R0 0

PROTO_38:
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

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getPluginSetting"]
        3 LOADK                            R1 K1 ["Assistant-ExternalMCPEnabled"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 NEWTABLE                         R2 1 0
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R2 K2 ["enabled"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setPluginSetting"]
        3 LOADK                            R1 K1 ["Assistant-ExternalMCPEnabled"]
        4 LOADB                            R2 1
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_44:
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

PROTO_45:
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
       18 GETTABLEKS                       R1 R1 K5 ["FFlagAssistantResetMcpSessionOnPlaceClose"]
       20 JUMPIFNOT                        R1 ; [+3]
       21 JUMPIF                           R0 ; [+2]
       22 GETUPVAL                         R1 4
       23 CALL                             R1 0 0
       24 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_47:
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
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 CALL                             R1 1 1
       25 SETUPVAL                         R1 2
       26 GETIMPORT                        R1 K8 [task.spawn]
       28 NEWCLOSURE                       R2 P1
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 CALL                             R1 1 0
       32 CLOSEUPVALS                      R0
       33 RETURN                           R0 0

PROTO_48:
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
       50 GETTABLEKS                       R0 R0 K8 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
       52 JUMPIFNOT                        R0 ; [+5]
       53 GETUPVAL                         R0 10
       54 LOADNIL                          R2
       55 NAMECALL                         R0 R0 K9 ["set"]
       57 CALL                             R0 2 0
       58 GETUPVAL                         R0 11
       59 LOADK                            R2 K10 ["disconnected"]
       60 NAMECALL                         R0 R0 K9 ["set"]
       62 CALL                             R0 2 0
       63 RETURN                           R0 0

PROTO_49:
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
       31 LOADN                            R6 0
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K0 ["new"]
       35 LOADNIL                          R8
       36 CALL                             R7 1 1
       37 LOADNIL                          R8
       38 LOADNIL                          R9
       39 DUPCLOSURE                       R10 K2 [PROTO_2]
       40 CAPTURE                          UPVAL U1
       41 NEWCLOSURE                       R11 P1
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          REF R9
       45 LOADNIL                          R12
       46 LOADNIL                          R13
       47 LOADNIL                          R14
       48 LOADNIL                          R15
       49 LOADNIL                          R16
       50 LOADNIL                          R17
       51 LOADNIL                          R18
       52 LOADB                            R19 0
       53 LOADB                            R20 0
       54 LOADB                            R21 0
       55 LOADB                            R22 0
       56 LOADN                            R23 0
       57 LOADN                            R24 0
       58 DUPCLOSURE                       R25 K3 [PROTO_6]
       59 CAPTURE                          UPVAL U3
       60 DUPCLOSURE                       R26 K4 [PROTO_7]
       61 CAPTURE                          UPVAL U3
       62 NEWCLOSURE                       R27 P4
       63 CAPTURE                          REF R8
       64 NEWCLOSURE                       R28 P5
       65 CAPTURE                          REF R17
       66 NEWCLOSURE                       R29 P6
       67 CAPTURE                          REF R17
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          UPVAL U1
       70 NEWCLOSURE                       R30 P7
       71 CAPTURE                          REF R17
       72 CAPTURE                          REF R16
       73 NEWCLOSURE                       R31 P8
       74 CAPTURE                          REF R17
       75 CAPTURE                          REF R16
       76 CAPTURE                          REF R15
       77 NEWCLOSURE                       R32 P9
       78 CAPTURE                          UPVAL U4
       79 CAPTURE                          REF R17
       80 CAPTURE                          REF R16
       81 CAPTURE                          REF R15
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          VAL R7
       84 CAPTURE                          REF R8
       85 CAPTURE                          UPVAL U1
       86 NEWCLOSURE                       R33 P10
       87 CAPTURE                          REF R13
       88 CAPTURE                          VAL R3
       89 CAPTURE                          REF R14
       90 CAPTURE                          VAL R4
       91 NEWCLOSURE                       R34 P11
       92 CAPTURE                          REF R13
       93 CAPTURE                          REF R14
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R4
       96 NEWCLOSURE                       R35 P12
       97 CAPTURE                          REF R6
       98 CAPTURE                          VAL R5
       99 CAPTURE                          UPVAL U1
      100 CAPTURE                          UPVAL U5
      101 CAPTURE                          UPVAL U2
      102 CAPTURE                          REF R9
      103 NEWCLOSURE                       R36 P13
      104 CAPTURE                          UPVAL U6
      105 CAPTURE                          UPVAL U1
      106 CAPTURE                          VAL R11
      107 CAPTURE                          REF R8
      108 CAPTURE                          REF R6
      109 CAPTURE                          VAL R35
      110 CAPTURE                          VAL R5
      111 CAPTURE                          UPVAL U7
      112 CAPTURE                          VAL R25
      113 CAPTURE                          VAL R7
      114 DUPCLOSURE                       R37 K5 [PROTO_29]
      115 CAPTURE                          UPVAL U2
      116 CAPTURE                          UPVAL U1
      117 NEWCLOSURE                       R38 P15
      118 CAPTURE                          REF R21
      119 CAPTURE                          UPVAL U2
      120 CAPTURE                          UPVAL U8
      121 CAPTURE                          VAL R2
      122 NEWCLOSURE                       R39 P16
      123 CAPTURE                          REF R12
      124 CAPTURE                          REF R22
      125 CAPTURE                          REF R21
      126 CAPTURE                          UPVAL U2
      127 CAPTURE                          UPVAL U8
      128 CAPTURE                          VAL R2
      129 CAPTURE                          REF R23
      130 CAPTURE                          VAL R1
      131 CAPTURE                          UPVAL U1
      132 CAPTURE                          VAL R0
      133 CAPTURE                          VAL R36
      134 CAPTURE                          REF R20
      135 CAPTURE                          REF R24
      136 CAPTURE                          VAL R33
      137 CAPTURE                          VAL R32
      138 CAPTURE                          VAL R37
      139 CAPTURE                          VAL R39
      140 NEWCLOSURE                       R40 P17
      141 CAPTURE                          REF R22
      142 CAPTURE                          REF R23
      143 CAPTURE                          REF R24
      144 CAPTURE                          REF R17
      145 CAPTURE                          REF R16
      146 CAPTURE                          REF R15
      147 CAPTURE                          REF R12
      148 CAPTURE                          VAL R34
      149 CAPTURE                          UPVAL U1
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R0
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R37
      154 NEWCLOSURE                       R41 P18
      155 CAPTURE                          UPVAL U2
      156 CAPTURE                          REF R12
      157 CAPTURE                          REF R22
      158 CAPTURE                          REF R23
      159 CAPTURE                          REF R17
      160 CAPTURE                          REF R16
      161 CAPTURE                          REF R15
      162 CAPTURE                          VAL R34
      163 CAPTURE                          UPVAL U1
      164 CAPTURE                          VAL R5
      165 CAPTURE                          VAL R0
      166 CAPTURE                          VAL R39
      167 DUPCLOSURE                       R42 K6 [PROTO_44]
      168 CAPTURE                          UPVAL U2
      169 CAPTURE                          UPVAL U1
      170 NEWCLOSURE                       R43 P20
      171 CAPTURE                          REF R19
      172 CAPTURE                          UPVAL U3
      173 CAPTURE                          REF R18
      174 CAPTURE                          VAL R32
      175 CAPTURE                          UPVAL U1
      176 CAPTURE                          VAL R41
      177 CAPTURE                          VAL R42
      178 CAPTURE                          VAL R39
      179 NEWCLOSURE                       R44 P21
      180 CAPTURE                          REF R20
      181 CAPTURE                          REF R22
      182 CAPTURE                          REF R23
      183 CAPTURE                          REF R17
      184 CAPTURE                          REF R16
      185 CAPTURE                          REF R15
      186 CAPTURE                          REF R18
      187 CAPTURE                          REF R12
      188 CAPTURE                          VAL R34
      189 CAPTURE                          UPVAL U1
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R0
      192 DUPTABLE                         R45 K18 [{"init", "destroy", "start", "stop", "ensureSetupInstructionsLoaded", "stateObservable", "isBusyObservable", "setupInstructionsObservable", "connectionCountObservable", "activeConnectionsObservable", "authRejectedObservable"}]
      193 SETTABLEKS                       R43 R45 K7 ["init"]
      195 SETTABLEKS                       R44 R45 K8 ["destroy"]
      197 SETTABLEKS                       R39 R45 K9 ["start"]
      199 SETTABLEKS                       R40 R45 K10 ["stop"]
      201 SETTABLEKS                       R38 R45 K11 ["ensureSetupInstructionsLoaded"]
      203 SETTABLEKS                       R0 R45 K12 ["stateObservable"]
      205 SETTABLEKS                       R1 R45 K13 ["isBusyObservable"]
      207 SETTABLEKS                       R2 R45 K14 ["setupInstructionsObservable"]
      209 SETTABLEKS                       R3 R45 K15 ["connectionCountObservable"]
      211 SETTABLEKS                       R4 R45 K16 ["activeConnectionsObservable"]
      213 SETTABLEKS                       R5 R45 K17 ["authRejectedObservable"]
      215 CLOSEUPVALS                      R6
      216 RETURN                           R45 1

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
       74 DUPTABLE                         R11 K27 [{["Disconnected"] = "disconnected", ["Connecting"] = "connecting", ["Connected"] = "connected"}]
       75 DUPTABLE                         R12 K32 [{["restartRequired"] = "The MCP server rejected this Studio session because it is using older settings. Restart Studio to reconnect.", ["authFailed"] = "Studio couldn't authenticate with the MCP server. Restart your AI clients, then try again."}]
       76 DUPCLOSURE                       R13 K33 [PROTO_0]
       77 DUPCLOSURE                       R14 K34 [PROTO_1]
       78 DUPCLOSURE                       R15 K35 [PROTO_49]
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R14
       88 DUPTABLE                         R16 K37 [{"new"}]
       89 SETTABLEKS                       R15 R16 K36 ["new"]
       91 RETURN                           R16 1
