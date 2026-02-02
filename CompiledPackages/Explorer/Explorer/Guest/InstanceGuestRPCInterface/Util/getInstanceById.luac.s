PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetDebuggers"]
  CALL R0 1 3
  FORGPREP R0
  LOADK R8 K1 ["ScriptDebugger"]
  NAMECALL R6 R4 K2 ["IsA"]
  CALL R6 2 1
  FASTCALL2K ASSERT R6 K3 [+4]
  LOADK R7 K3 ["Not a ScriptDebugger"]
  GETIMPORT R5 K5 [assert]
  CALL R5 2 0
  GETTABLEKS R5 R4 K6 ["IsPaused"]
  JUMPIFNOT R5 [+2]
  LOADK R5 K7 ["paused"]
  RETURN R5 1
  FORGLOOP R0 2 [-16]
  LOADK R0 K8 ["unpaused"]
  RETURN R0 1

PROTO_1:
  LOADK R2 K0 ["error: %*"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_2:
  GETIMPORT R0 K1 [xpcall]
  DUPCLOSURE R1 K2 [PROTO_0]
  CAPTURE UPVAL U0
  DUPCLOSURE R2 K3 [PROTO_1]
  CALL R0 2 2
  RETURN R1 1

PROTO_3:
  LOADB R0 0
  SETUPVAL R0 0
  RETURN R0 0

PROTO_4:
  LOADB R0 1
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["BindableEvent"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K4 ["Event"]
  NEWCLOSURE R4 P0
  CAPTURE REF R0
  NAMECALL R2 R2 K5 ["Connect"]
  CALL R2 2 0
  NAMECALL R2 R1 K6 ["Fire"]
  CALL R2 1 0
  NAMECALL R2 R1 K7 ["Destroy"]
  CALL R2 1 0
  CLOSEUPVALS R0
  RETURN R0 1

PROTO_5:
  LOADK R1 K0 [""]
  GETTABLEKS R2 R0 K1 ["instanceIdsToInstance"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["rootId"]
  JUMPIFEQ R5 R7 [+4]
  JUMPIFNOTLT R1 R5 [+2]
  MOVE R1 R5
  FORGLOOP R2 1 [-9]
  RETURN R1 1

PROTO_6:
  GETUPVAL R2 0
  CALL R2 0 1
  NEWTABLE R3 0 0
  LOADN R6 1
  MOVE R4 R1
  LOADN R5 1
  FORNPREP R4
  MOVE R7 R2
  CALL R7 0 1
  GETTABLE R8 R0 R7
  JUMPIFNOTEQKNIL R8 [+14]
  LOADK R12 K0 ["%* = NIL"]
  MOVE R14 R7
  NAMECALL R12 R12 K1 ["format"]
  CALL R12 2 1
  MOVE R11 R12
  FASTCALL2 TABLE_INSERT R3 R11 [+4]
  MOVE R10 R3
  GETIMPORT R9 K4 [table.insert]
  CALL R9 2 0
  JUMP [+15]
  LOADK R12 K5 ["%* = %*"]
  MOVE R14 R7
  NAMECALL R15 R8 K6 ["GetFullName"]
  CALL R15 1 1
  NAMECALL R12 R12 K1 ["format"]
  CALL R12 3 1
  MOVE R11 R12
  FASTCALL2 TABLE_INSERT R3 R11 [+4]
  MOVE R10 R3
  GETIMPORT R9 K4 [table.insert]
  CALL R9 2 0
  FORNLOOP R4
  GETIMPORT R4 K8 [table.concat]
  MOVE R5 R3
  LOADK R6 K9 ["   "]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_7:
  LOADN R1 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  ADDK R1 R1 K0 [1]
  FORGLOOP R2 1 [-2]
  RETURN R1 1

PROTO_8:
  GETTABLEKS R4 R0 K0 ["instanceIdsToInstance"]
  GETTABLE R3 R4 R1
  JUMPIFEQKNIL R3 [+2]
  RETURN R3 1
  GETTABLEKS R5 R0 K1 ["analytics"]
  GETTABLEKS R4 R5 K2 ["logEvent"]
  DUPTABLE R5 K8 [{"eventName", "backends", "throttlingPercentage", "description", "lastUpdated"}]
  LOADK R6 K9 ["LuaExplorerGetInstanceByIdFailed"]
  SETTABLEKS R6 R5 K3 ["eventName"]
  NEWTABLE R6 0 1
  LOADK R7 K10 ["Points"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K4 ["backends"]
  GETIMPORT R6 K12 [game]
  LOADK R8 K13 ["LuaExplorerGetInstanceByIdFailedThrottlingHundredthsPercent"]
  LOADN R9 16
  NAMECALL R6 R6 K14 ["DefineFastInt"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K5 ["throttlingPercentage"]
  LOADK R6 K15 ["Fired when getInstanceById fails to find an instance with that instance ID."]
  SETTABLEKS R6 R5 K6 ["description"]
  LOADK R6 K16 ["2025-04-01"]
  SETTABLEKS R6 R5 K7 ["lastUpdated"]
  DUPTABLE R6 K28 [{"context", "signalsAreDeferred", "dataModelType", "debuggerPaused", "timeElapsed", "instanceId", "largestInstanceId", "instanceIdsToInstanceCount", "instancesToInstanceIdCount", "firstIds", "otaVersion"}]
  SETTABLEKS R2 R6 K17 ["context"]
  GETUPVAL R7 0
  CALL R7 0 1
  SETTABLEKS R7 R6 K18 ["signalsAreDeferred"]
  GETUPVAL R8 1
  NAMECALL R8 R8 K29 ["IsServer"]
  CALL R8 1 1
  JUMPIFNOT R8 [+2]
  LOADK R7 K30 ["server"]
  JUMP [+8]
  GETUPVAL R8 1
  NAMECALL R8 R8 K31 ["IsClient"]
  CALL R8 1 1
  JUMPIFNOT R8 [+2]
  LOADK R7 K32 ["client"]
  JUMP [+1]
  LOADK R7 K33 ["edit"]
  SETTABLEKS R7 R6 K19 ["dataModelType"]
  GETIMPORT R8 K35 [xpcall]
  DUPCLOSURE R9 K36 [PROTO_0]
  CAPTURE UPVAL U2
  DUPCLOSURE R10 K37 [PROTO_1]
  CALL R8 2 2
  MOVE R7 R9
  SETTABLEKS R7 R6 K20 ["debuggerPaused"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K38 ["DistributedGameTime"]
  SETTABLEKS R7 R6 K21 ["timeElapsed"]
  SETTABLEKS R1 R6 K22 ["instanceId"]
  LOADK R8 K39 [""]
  GETTABLEKS R9 R0 K0 ["instanceIdsToInstance"]
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K40 ["rootId"]
  JUMPIFEQ R12 R14 [+4]
  JUMPIFNOTLT R8 R12 [+2]
  MOVE R8 R12
  FORGLOOP R9 1 [-9]
  MOVE R7 R8
  SETTABLEKS R7 R6 K23 ["largestInstanceId"]
  GETTABLEKS R8 R0 K0 ["instanceIdsToInstance"]
  LOADN R9 0
  MOVE R10 R8
  LOADNIL R11
  LOADNIL R12
  FORGPREP R10
  ADDK R9 R9 K41 [1]
  FORGLOOP R10 1 [-2]
  MOVE R7 R9
  SETTABLEKS R7 R6 K24 ["instanceIdsToInstanceCount"]
  GETTABLEKS R8 R0 K42 ["instancesToInstanceId"]
  LOADN R9 0
  MOVE R10 R8
  LOADNIL R11
  LOADNIL R12
  FORGPREP R10
  ADDK R9 R9 K41 [1]
  FORGLOOP R10 1 [-2]
  MOVE R7 R9
  SETTABLEKS R7 R6 K25 ["instancesToInstanceIdCount"]
  GETUPVAL R7 5
  GETTABLEKS R8 R0 K0 ["instanceIdsToInstance"]
  LOADN R9 10
  CALL R7 2 1
  SETTABLEKS R7 R6 K26 ["firstIds"]
  JUMPIFNOTEQKS R2 K43 ["tests ><>"] [+7]
  GETUPVAL R7 6
  LOADK R9 K44 ["ExplorerPlugin"]
  NAMECALL R7 R7 K45 ["GetOTAPluginVersion"]
  CALL R7 2 1
  JUMP [+1]
  LOADK R7 K46 ["tests"]
  SETTABLEKS R7 R6 K27 ["otaVersion"]
  CALL R4 2 0
  GETIMPORT R4 K48 [error]
  LOADK R6 K49 ["Could not find an instance by ID (%*). If you see this, please file a bug report, we are having a hard time tracking this one down! =)"]
  MOVE R8 R2
  NAMECALL R6 R6 K50 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R4 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebuggerManager"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["PluginManagementService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["RunService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["Workspace"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K8 [script]
  LOADK R6 K9 ["Explorer"]
  NAMECALL R4 R4 K10 ["FindFirstAncestor"]
  CALL R4 2 1
  GETIMPORT R5 K12 [require]
  GETTABLEKS R7 R4 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R9 R4 K15 ["Guest"]
  GETTABLEKS R8 R9 K16 ["InstanceGuestRPCInterface"]
  GETTABLEKS R7 R8 K17 ["InstanceGuestRPCInterfaceTypes"]
  CALL R6 1 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R8 R4 K18 ["RpcTypes"]
  CALL R7 1 1
  GETIMPORT R8 K12 [require]
  GETTABLEKS R10 R4 K13 ["Util"]
  GETTABLEKS R9 R10 K19 ["createNextNonce"]
  CALL R8 1 1
  DUPCLOSURE R9 K20 [PROTO_2]
  CAPTURE VAL R0
  DUPCLOSURE R10 K21 [PROTO_4]
  DUPCLOSURE R11 K22 [PROTO_5]
  CAPTURE VAL R5
  DUPCLOSURE R12 K23 [PROTO_6]
  CAPTURE VAL R8
  DUPCLOSURE R13 K24 [PROTO_7]
  DUPCLOSURE R14 K25 [PROTO_8]
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R12
  CAPTURE VAL R1
  RETURN R14 1
