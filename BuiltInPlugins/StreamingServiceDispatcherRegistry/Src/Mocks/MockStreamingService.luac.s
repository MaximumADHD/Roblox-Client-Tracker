PROTO_0:
        0 NEWTABLE                         R1 16 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K1 [setmetatable]
        8 CALL                             R2 2 0
        9 SETTABLEKS                       R0 R1 K2 ["_adapter"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K3 ["new"]
       14 CALL                             R2 0 1
       15 SETTABLEKS                       R2 R1 K4 ["RequestEnded"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K3 ["new"]
       20 CALL                             R2 0 1
       21 SETTABLEKS                       R2 R1 K5 ["ConversationCleared"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K3 ["new"]
       26 CALL                             R2 0 1
       27 SETTABLEKS                       R2 R1 K6 ["SequentialCommandsFinished"]
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R2 R3 K3 ["new"]
       32 CALL                             R2 0 1
       33 SETTABLEKS                       R2 R1 K7 ["RequestError"]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R2 R3 K3 ["new"]
       38 CALL                             R2 0 1
       39 SETTABLEKS                       R2 R1 K8 ["RequestStarted"]
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R2 R3 K3 ["new"]
       44 CALL                             R2 0 1
       45 SETTABLEKS                       R2 R1 K9 ["Stream"]
       47 LOADK                            R2 K10 ["123"]
       48 SETTABLEKS                       R2 R1 K11 ["_requestId"]
       50 NEWTABLE                         R2 0 0
       52 SETTABLEKS                       R2 R1 K12 ["_instanceStore"]
       54 NEWTABLE                         R2 0 0
       56 SETTABLEKS                       R2 R1 K13 ["_variableStore"]
       58 NEWTABLE                         R2 0 0
       60 SETTABLEKS                       R2 R1 K14 ["_commandStore"]
       62 NEWTABLE                         R2 0 0
       64 SETTABLEKS                       R2 R1 K15 ["_collectorStore"]
       66 NEWTABLE                         R2 0 0
       68 SETTABLEKS                       R2 R1 K16 ["_boundCodeGuids"]
       70 LOADNIL                          R2
       71 SETTABLEKS                       R2 R1 K17 ["_pluginInfoCallback"]
       73 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_commandStore"]
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R2 R1
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_collectorStore"]
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R2 R1
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["_instanceStore"]
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 CONCAT                           R5 R6 R7
        5 GETTABLE                         R3 R4 R5
        6 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R5 R0 K0 ["_commandStore"]
        2 SETTABLE                         R2 R5 R1
        3 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["_commandStore"]
        2 SETTABLE                         R2 R3 R1
        3 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_commandStore"]
        2 SETTABLE                         R2 R3 R1
        3 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["_collectorStore"]
        2 SETTABLE                         R2 R3 R1
        3 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R4 R0 K0 ["_variableStore"]
        2 SETTABLE                         R2 R4 R1
        3 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["_variableStore"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_10:
        0 MOVE                             R4 R3
        1 JUMPIF                           R4 ; [+2]
        2 NEWTABLE                         R4 0 0
        4 SETTABLEKS                       R1 R4 K0 ["requestId"]
        6 DUPTABLE                         R5 K2 [{"requestId", "arguments"}]
        7 SETTABLEKS                       R1 R5 K0 ["requestId"]
        9 SETTABLEKS                       R4 R5 K1 ["arguments"]
       11 GETTABLEKS                       R7 R0 K3 ["_commandStore"]
       13 GETTABLE                         R6 R7 R2
       14 MOVE                             R7 R5
       15 CALL                             R6 1 0
       16 RETURN                           R0 0

PROTO_11:
        0 MOVE                             R4 R3
        1 JUMPIF                           R4 ; [+2]
        2 NEWTABLE                         R4 0 0
        4 SETTABLEKS                       R1 R4 K0 ["requestId"]
        6 DUPTABLE                         R5 K2 [{"requestId", "arguments"}]
        7 SETTABLEKS                       R1 R5 K0 ["requestId"]
        9 SETTABLEKS                       R4 R5 K1 ["arguments"]
       11 GETTABLEKS                       R7 R0 K3 ["_commandStore"]
       13 GETTABLE                         R6 R7 R2
       14 JUMPIF                           R6 ; [+6]
       15 GETIMPORT                        R6 K5 [error]
       17 LOADK                            R8 K6 ["[MockStreamingService:ExecuteCommandAsync] Command not found: "]
       18 MOVE                             R9 R2
       19 CONCAT                           R7 R8 R9
       20 CALL                             R6 1 0
       21 GETTABLEKS                       R7 R0 K3 ["_commandStore"]
       23 GETTABLE                         R6 R7 R2
       24 MOVE                             R7 R5
       25 CALL                             R6 1 -1
       26 RETURN                           R6 -1

PROTO_12:
        0 SETTABLEKS                       R1 R0 K0 ["_pluginInfoCallback"]
        2 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["_boundCodeGuids"]
        2 SETTABLE                         R2 R3 R1
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Loaded code is nil!"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R4 R0 K0 ["_boundCodeGuids"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+7]
        4 GETIMPORT                        R4 K2 [warn]
        6 LOADK                            R5 K3 ["Code was not bound to a guid!"]
        7 CALL                             R4 1 0
        8 LOADB                            R4 0
        9 LOADK                            R5 K3 ["Code was not bound to a guid!"]
       10 RETURN                           R4 2
       11 GETIMPORT                        R4 K5 [loadstring]
       13 MOVE                             R5 R3
       14 CALL                             R4 1 2
       15 JUMPIF                           R4 ; [+8]
       16 GETIMPORT                        R6 K2 [warn]
       18 LOADK                            R7 K6 ["COMPILATION ERROR"]
       19 MOVE                             R8 R5
       20 CALL                             R6 2 0
       21 LOADB                            R6 0
       22 MOVE                             R7 R5
       23 RETURN                           R6 2
       24 GETTABLEKS                       R7 R0 K7 ["_adapter"]
       26 GETTABLEKS                       R6 R7 K8 ["RunningEval"]
       28 JUMPIFNOT                        R6 ; [+8]
       29 GETIMPORT                        R6 K10 [getfenv]
       31 MOVE                             R7 R4
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K12 [print]
       35 SETTABLEKS                       R7 R6 K11 ["print"]
       37 GETIMPORT                        R6 K14 [pcall]
       39 NEWCLOSURE                       R7 P0
       40 CAPTURE                          VAL R4
       41 CALL                             R6 1 2
       42 JUMPIF                           R6 ; [+8]
       43 GETIMPORT                        R8 K2 [warn]
       45 LOADK                            R9 K15 ["RUNTIME ERROR"]
       46 MOVE                             R10 R7
       47 CALL                             R8 2 0
       48 LOADB                            R8 0
       49 MOVE                             R9 R7
       50 RETURN                           R8 2
       51 LOADB                            R8 1
       52 LOADNIL                          R9
       53 RETURN                           R8 2

PROTO_16:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+14]
        7 MOVE                             R3 R1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 MOVE                             R10 R7
       12 MOVE                             R11 R2
       13 NAMECALL                         R8 R0 K3 ["_replaceInstances"]
       15 CALL                             R8 3 1
       16 SETTABLE                         R8 R1 R6
       17 FORGLOOP                         R3 2 ; [-7]
       19 RETURN                           R1 1
       20 FASTCALL1                        TYPEOF R1 ; [+3]
       21 MOVE                             R4 R1
       22 GETIMPORT                        R3 K5 [typeof]
       24 CALL                             R3 1 1
       25 JUMPIFNOTEQKS                    R3 K6 ["Instance"] ; [+13]
       27 LOADK                            R4 K7 ["Instance_"]
       28 NAMECALL                         R5 R1 K8 ["GetDebugId"]
       30 CALL                             R5 1 1
       31 CONCAT                           R3 R4 R5
       32 GETTABLEKS                       R4 R0 K9 ["_instanceStore"]
       34 MOVE                             R6 R2
       35 MOVE                             R7 R3
       36 CONCAT                           R5 R6 R7
       37 SETTABLE                         R1 R4 R5
       38 RETURN                           R3 1
       39 RETURN                           R1 1

PROTO_17:
        0 DUPTABLE                         R0 K4 [{"ClientVersionContext", "use_inventory_assets", "ClientFlagContext", "MessageIdentifier"}]
        1 LOADK                            R1 K5 ["1.0.0"]
        2 SETTABLEKS                       R1 R0 K0 ["ClientVersionContext"]
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K1 ["use_inventory_assets"]
        7 DUPTABLE                         R1 K9 [{"FFlagCAPFixMissingHREndTag", "FFlagCAPAddStreamIdToRichTextContent", "FFlagConvAICodeRunnerClientMarker"}]
        8 DUPTABLE                         R2 K11 [{"boolean"}]
        9 LOADK                            R3 K12 ["true"]
       10 SETTABLEKS                       R3 R2 K10 ["boolean"]
       12 SETTABLEKS                       R2 R1 K6 ["FFlagCAPFixMissingHREndTag"]
       14 DUPTABLE                         R2 K11 [{"boolean"}]
       15 LOADK                            R3 K12 ["true"]
       16 SETTABLEKS                       R3 R2 K10 ["boolean"]
       18 SETTABLEKS                       R2 R1 K7 ["FFlagCAPAddStreamIdToRichTextContent"]
       20 DUPTABLE                         R2 K11 [{"boolean"}]
       21 LOADK                            R3 K12 ["true"]
       22 SETTABLEKS                       R3 R2 K10 ["boolean"]
       24 SETTABLEKS                       R2 R1 K8 ["FFlagConvAICodeRunnerClientMarker"]
       26 SETTABLEKS                       R1 R0 K2 ["ClientFlagContext"]
       28 GETUPVAL                         R1 0
       29 SETTABLEKS                       R1 R0 K3 ["MessageIdentifier"]
       31 RETURN                           R0 1

PROTO_18:
        0 LOADK                            R5 K0 ["native_injector"]
        1 NEWCLOSURE                       R6 P0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R3 R0 K1 ["RegisterContextCollector"]
        5 CALL                             R3 3 0
        6 GETTABLEKS                       R3 R0 K2 ["_collectorStore"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 MOVE                             R8 R7
       12 MOVE                             R9 R1
       13 CALL                             R8 1 1
       14 MOVE                             R9 R8
       15 LOADNIL                          R10
       16 LOADNIL                          R11
       17 FORGPREP                         R9
       18 GETTABLE                         R14 R2 R12
       19 JUMPIF                           R14 ; [+1]
       20 SETTABLE                         R13 R2 R12
       21 FORGLOOP                         R9 2 ; [-4]
       23 FORGLOOP                         R3 2 ; [-13]
       25 MOVE                             R5 R2
       26 MOVE                             R6 R1
       27 NAMECALL                         R3 R0 K3 ["_replaceInstances"]
       29 CALL                             R3 3 0
       30 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R3 R0 K0 ["_pluginInfoCallback"]
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETTABLEKS                       R3 R0 K0 ["_pluginInfoCallback"]
        5 MOVE                             R4 R1
        6 MOVE                             R5 R2
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1
        9 RETURN                           R0 0

PROTO_20:
        0 LOADNIL                          R2
        1 GETIMPORT                        R3 K1 [game]
        3 LOADK                            R5 K2 ["AsyncRenamesUsedInLuaApps"]
        4 NAMECALL                         R3 R3 K3 ["GetEngineFeature"]
        6 CALL                             R3 2 1
        7 JUMPIFNOT                        R3 ; [+9]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R5 R1 K4 ["query"]
       11 LOADN                            R6 0
       12 NAMECALL                         R3 R3 K5 ["GetFreeModelsAsync"]
       14 CALL                             R3 3 1
       15 MOVE                             R2 R3
       16 JUMP                             ; [+8]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R5 R1 K4 ["query"]
       20 LOADN                            R6 0
       21 NAMECALL                         R3 R3 K6 ["GetFreeModels"]
       23 CALL                             R3 3 1
       24 MOVE                             R2 R3
       25 NEWTABLE                         R3 0 0
       27 MOVE                             R4 R2
       28 LOADNIL                          R5
       29 LOADNIL                          R6
       30 FORGPREP                         R4
       31 DUPTABLE                         R11 K10 [{"id", "matchScore", "properties"}]
       32 GETTABLEKS                       R12 R8 K11 ["AssetId"]
       34 SETTABLEKS                       R12 R11 K7 ["id"]
       36 LOADK                            R12 K12 [0.8]
       37 SETTABLEKS                       R12 R11 K8 ["matchScore"]
       39 DUPTABLE                         R12 K15 [{"name", "size"}]
       40 GETTABLEKS                       R13 R8 K16 ["Name"]
       42 SETTABLEKS                       R13 R12 K13 ["name"]
       44 DUPTABLE                         R13 K20 [{"x", "y", "z"}]
       45 LOADN                            R14 5
       46 SETTABLEKS                       R14 R13 K17 ["x"]
       48 LOADN                            R14 10
       49 SETTABLEKS                       R14 R13 K18 ["y"]
       51 LOADN                            R14 15
       52 SETTABLEKS                       R14 R13 K19 ["z"]
       54 SETTABLEKS                       R13 R12 K14 ["size"]
       56 SETTABLEKS                       R12 R11 K9 ["properties"]
       58 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       60 MOVE                             R10 R3
       61 GETIMPORT                        R9 K23 [table.insert]
       63 CALL                             R9 2 0
       64 FORGLOOP                         R4 2 ; [-34]
       66 DUPTABLE                         R4 K25 [{"data"}]
       67 SETTABLEKS                       R3 R4 K24 ["data"]
       69 RETURN                           R4 1

PROTO_21:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["InsertService"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 GETTABLEKS                       R4 R1 K12 ["Util"]
       22 GETTABLEKS                       R3 R4 K13 ["Signal"]
       24 NEWTABLE                         R4 32 0
       26 SETTABLEKS                       R4 R4 K14 ["__index"]
       28 DUPCLOSURE                       R5 K15 [PROTO_0]
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R3
       31 SETTABLEKS                       R5 R4 K16 ["new"]
       33 DUPCLOSURE                       R5 K17 [PROTO_1]
       34 SETTABLEKS                       R5 R4 K18 ["UnregisterCommand"]
       36 DUPCLOSURE                       R5 K19 [PROTO_2]
       37 SETTABLEKS                       R5 R4 K20 ["UnregisterContextCollector"]
       39 DUPCLOSURE                       R5 K21 [PROTO_3]
       40 SETTABLEKS                       R5 R4 K22 ["GetInstance"]
       42 DUPCLOSURE                       R5 K23 [PROTO_4]
       43 SETTABLEKS                       R5 R4 K24 ["RegisterCommandInternal"]
       45 DUPCLOSURE                       R5 K25 [PROTO_5]
       46 SETTABLEKS                       R5 R4 K26 ["DEPRECATED_RegisterCommand"]
       48 DUPCLOSURE                       R5 K27 [PROTO_6]
       49 SETTABLEKS                       R5 R4 K28 ["DEPRECATED_RegisterSequentialCommand"]
       51 DUPCLOSURE                       R5 K29 [PROTO_7]
       52 SETTABLEKS                       R5 R4 K30 ["RegisterContextCollector"]
       54 DUPCLOSURE                       R5 K31 [PROTO_8]
       55 SETTABLEKS                       R5 R4 K32 ["SetEphemeralVariable"]
       57 DUPCLOSURE                       R5 K33 [PROTO_9]
       58 SETTABLEKS                       R5 R4 K34 ["GetEphemeralVariable"]
       60 DUPCLOSURE                       R5 K35 [PROTO_10]
       61 SETTABLEKS                       R5 R4 K36 ["InvokeCommand"]
       63 DUPCLOSURE                       R5 K37 [PROTO_11]
       64 SETTABLEKS                       R5 R4 K38 ["ExecuteCommandAsync"]
       66 DUPCLOSURE                       R5 K39 [PROTO_12]
       67 SETTABLEKS                       R5 R4 K40 ["SetPluginInfoCallback"]
       69 DUPCLOSURE                       R5 K41 [PROTO_13]
       70 SETTABLEKS                       R5 R4 K42 ["BindCodeToGuid"]
       72 DUPCLOSURE                       R5 K43 [PROTO_15]
       73 SETTABLEKS                       R5 R4 K44 ["RunSandboxedCode"]
       75 DUPCLOSURE                       R5 K45 [PROTO_16]
       76 SETTABLEKS                       R5 R4 K46 ["_replaceInstances"]
       78 DUPCLOSURE                       R5 K47 [PROTO_18]
       79 SETTABLEKS                       R5 R4 K48 ["CollectContexts"]
       81 DUPCLOSURE                       R5 K49 [PROTO_19]
       82 SETTABLEKS                       R5 R4 K50 ["GetPluginInfo"]
       84 DUPCLOSURE                       R5 K51 [PROTO_20]
       85 CAPTURE                          VAL R2
       86 SETTABLEKS                       R5 R4 K52 ["SearchForAssets"]
       88 DUPCLOSURE                       R5 K53 [PROTO_21]
       89 SETTABLEKS                       R5 R4 K54 ["AttemptSaveAndSendPlaceTelemetry"]
       91 RETURN                           R4 1
