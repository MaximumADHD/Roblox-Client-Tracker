PROTO_0:
  NEWTABLE R0 16 0
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K1 [setmetatable]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K3 ["RequestEnded"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K4 ["ConversationCleared"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K5 ["SequentialCommandsFinished"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K6 ["RequestError"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K7 ["RequestStarted"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K8 ["Stream"]
  LOADK R1 K9 ["123"]
  SETTABLEKS R1 R0 K10 ["_requestId"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K11 ["_instanceStore"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K12 ["_variableStore"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K13 ["_commandStore"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K14 ["_collectorStore"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K15 ["_boundCodeGuids"]
  LOADNIL R1
  SETTABLEKS R1 R0 K16 ["_pluginInfoCallback"]
  RETURN R0 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["_commandStore"]
  LOADNIL R3
  SETTABLE R3 R2 R1
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["_collectorStore"]
  LOADNIL R3
  SETTABLE R3 R2 R1
  RETURN R0 0

PROTO_3:
  GETTABLEKS R4 R0 K0 ["_instanceStore"]
  MOVE R6 R1
  MOVE R7 R2
  CONCAT R5 R6 R7
  GETTABLE R3 R4 R5
  RETURN R3 1

PROTO_4:
  GETTABLEKS R3 R0 K0 ["_commandStore"]
  SETTABLE R2 R3 R1
  RETURN R0 0

PROTO_5:
  GETTABLEKS R3 R0 K0 ["_commandStore"]
  SETTABLE R2 R3 R1
  RETURN R0 0

PROTO_6:
  GETTABLEKS R3 R0 K0 ["_collectorStore"]
  SETTABLE R2 R3 R1
  RETURN R0 0

PROTO_7:
  GETTABLEKS R4 R0 K0 ["_variableStore"]
  SETTABLE R2 R4 R1
  RETURN R0 0

PROTO_8:
  GETTABLEKS R3 R0 K0 ["_variableStore"]
  GETTABLE R2 R3 R1
  RETURN R2 1

PROTO_9:
  MOVE R4 R3
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  SETTABLEKS R1 R4 K0 ["requestId"]
  DUPTABLE R5 K2 [{"requestId", "arguments"}]
  SETTABLEKS R1 R5 K0 ["requestId"]
  SETTABLEKS R4 R5 K1 ["arguments"]
  GETTABLEKS R7 R0 K3 ["_commandStore"]
  GETTABLE R6 R7 R2
  MOVE R7 R5
  CALL R6 1 0
  RETURN R0 0

PROTO_10:
  MOVE R4 R3
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  SETTABLEKS R1 R4 K0 ["requestId"]
  DUPTABLE R5 K2 [{"requestId", "arguments"}]
  SETTABLEKS R1 R5 K0 ["requestId"]
  SETTABLEKS R4 R5 K1 ["arguments"]
  GETTABLEKS R7 R0 K3 ["_commandStore"]
  GETTABLE R6 R7 R2
  MOVE R7 R5
  CALL R6 1 -1
  RETURN R6 -1

PROTO_11:
  SETTABLEKS R1 R0 K0 ["_pluginInfoCallback"]
  RETURN R0 0

PROTO_12:
  GETTABLEKS R3 R0 K0 ["_boundCodeGuids"]
  SETTABLE R2 R3 R1
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["Loaded code is nil!"]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETUPVAL R0 0
  CALL R0 0 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R4 R0 K0 ["_boundCodeGuids"]
  GETTABLE R3 R4 R1
  JUMPIF R3 [+7]
  GETIMPORT R4 K2 [warn]
  LOADK R5 K3 ["Code was not bound to a guid!"]
  CALL R4 1 0
  LOADB R4 0
  LOADK R5 K3 ["Code was not bound to a guid!"]
  RETURN R4 2
  GETIMPORT R4 K5 [loadstring]
  MOVE R5 R3
  CALL R4 1 2
  JUMPIF R4 [+8]
  GETIMPORT R6 K2 [warn]
  LOADK R7 K6 ["COMPILATION ERROR"]
  MOVE R8 R5
  CALL R6 2 0
  LOADB R6 0
  MOVE R7 R5
  RETURN R6 2
  GETIMPORT R6 K8 [getfenv]
  MOVE R7 R4
  CALL R6 1 1
  GETIMPORT R7 K10 [print]
  SETTABLEKS R7 R6 K9 ["print"]
  GETIMPORT R6 K12 [pcall]
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  CALL R6 1 2
  JUMPIF R6 [+8]
  GETIMPORT R8 K2 [warn]
  LOADK R9 K13 ["RUNTIME ERROR"]
  MOVE R10 R7
  CALL R8 2 0
  LOADB R8 0
  MOVE R9 R7
  RETURN R8 2
  LOADB R8 1
  LOADNIL R9
  RETURN R8 2

PROTO_15:
  FASTCALL1 TYPE R1 [+3]
  MOVE R4 R1
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K2 ["table"] [+14]
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  MOVE R10 R7
  MOVE R11 R2
  NAMECALL R8 R0 K3 ["_replaceInstances"]
  CALL R8 3 1
  SETTABLE R8 R1 R6
  FORGLOOP R3 2 [-7]
  RETURN R1 1
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R4 R1
  GETIMPORT R3 K5 [typeof]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K6 ["Instance"] [+13]
  LOADK R4 K7 ["Instance_"]
  NAMECALL R5 R1 K8 ["GetDebugId"]
  CALL R5 1 1
  CONCAT R3 R4 R5
  GETTABLEKS R4 R0 K9 ["_instanceStore"]
  MOVE R6 R2
  MOVE R7 R3
  CONCAT R5 R6 R7
  SETTABLE R1 R4 R5
  RETURN R3 1
  RETURN R1 1

PROTO_16:
  DUPTABLE R0 K4 [{"ClientVersionContext", "use_inventory_assets", "ClientFlagContext", "MessageIdentifier"}]
  LOADK R1 K5 ["1.0.0"]
  SETTABLEKS R1 R0 K0 ["ClientVersionContext"]
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["use_inventory_assets"]
  DUPTABLE R1 K9 [{"FFlagCAPFixMissingHREndTag", "FFlagCAPAddStreamIdToRichTextContent", "FFlagConvAICodeRunnerClientMarker"}]
  DUPTABLE R2 K11 [{"boolean"}]
  LOADK R3 K12 ["true"]
  SETTABLEKS R3 R2 K10 ["boolean"]
  SETTABLEKS R2 R1 K6 ["FFlagCAPFixMissingHREndTag"]
  DUPTABLE R2 K11 [{"boolean"}]
  LOADK R3 K12 ["true"]
  SETTABLEKS R3 R2 K10 ["boolean"]
  SETTABLEKS R2 R1 K7 ["FFlagCAPAddStreamIdToRichTextContent"]
  DUPTABLE R2 K11 [{"boolean"}]
  LOADK R3 K12 ["true"]
  SETTABLEKS R3 R2 K10 ["boolean"]
  SETTABLEKS R2 R1 K8 ["FFlagConvAICodeRunnerClientMarker"]
  SETTABLEKS R1 R0 K2 ["ClientFlagContext"]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K3 ["MessageIdentifier"]
  RETURN R0 1

PROTO_17:
  LOADK R5 K0 ["native_injector"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  NAMECALL R3 R0 K1 ["RegisterContextCollector"]
  CALL R3 3 0
  GETTABLEKS R3 R0 K2 ["_collectorStore"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  MOVE R8 R7
  MOVE R9 R1
  CALL R8 1 1
  MOVE R9 R8
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  GETTABLE R14 R2 R12
  JUMPIF R14 [+1]
  SETTABLE R13 R2 R12
  FORGLOOP R9 2 [-4]
  FORGLOOP R3 2 [-13]
  MOVE R5 R2
  MOVE R6 R1
  NAMECALL R3 R0 K3 ["_replaceInstances"]
  CALL R3 3 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R3 R0 K0 ["_pluginInfoCallback"]
  JUMPIFNOT R3 [+6]
  GETTABLEKS R3 R0 K0 ["_pluginInfoCallback"]
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 -1
  RETURN R3 -1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Util"]
  GETTABLEKS R2 R3 K9 ["Signal"]
  NEWTABLE R3 32 0
  SETTABLEKS R3 R3 K10 ["__index"]
  DUPCLOSURE R4 K11 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K12 ["new"]
  DUPCLOSURE R4 K13 [PROTO_1]
  SETTABLEKS R4 R3 K14 ["UnregisterCommand"]
  DUPCLOSURE R4 K15 [PROTO_2]
  SETTABLEKS R4 R3 K16 ["UnregisterContextCollector"]
  DUPCLOSURE R4 K17 [PROTO_3]
  SETTABLEKS R4 R3 K18 ["GetInstance"]
  DUPCLOSURE R4 K19 [PROTO_4]
  SETTABLEKS R4 R3 K20 ["RegisterCommand"]
  DUPCLOSURE R4 K21 [PROTO_5]
  SETTABLEKS R4 R3 K22 ["RegisterSequentialCommand"]
  DUPCLOSURE R4 K23 [PROTO_6]
  SETTABLEKS R4 R3 K24 ["RegisterContextCollector"]
  DUPCLOSURE R4 K25 [PROTO_7]
  SETTABLEKS R4 R3 K26 ["SetEphemeralVariable"]
  DUPCLOSURE R4 K27 [PROTO_8]
  SETTABLEKS R4 R3 K28 ["GetEphemeralVariable"]
  DUPCLOSURE R4 K29 [PROTO_9]
  SETTABLEKS R4 R3 K30 ["InvokeCommand"]
  DUPCLOSURE R4 K31 [PROTO_10]
  SETTABLEKS R4 R3 K32 ["ExecuteCommandAsync"]
  DUPCLOSURE R4 K33 [PROTO_11]
  SETTABLEKS R4 R3 K34 ["SetPluginInfoCallback"]
  DUPCLOSURE R4 K35 [PROTO_12]
  SETTABLEKS R4 R3 K36 ["BindCodeToGuid"]
  DUPCLOSURE R4 K37 [PROTO_14]
  SETTABLEKS R4 R3 K38 ["RunSandboxedCode"]
  DUPCLOSURE R4 K39 [PROTO_15]
  SETTABLEKS R4 R3 K40 ["_replaceInstances"]
  DUPCLOSURE R4 K41 [PROTO_17]
  SETTABLEKS R4 R3 K42 ["CollectContexts"]
  DUPCLOSURE R4 K43 [PROTO_18]
  SETTABLEKS R4 R3 K44 ["GetPluginInfo"]
  RETURN R3 1
