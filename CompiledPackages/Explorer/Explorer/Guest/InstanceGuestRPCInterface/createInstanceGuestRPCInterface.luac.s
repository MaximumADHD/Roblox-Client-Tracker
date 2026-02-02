PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["streamingInterface"]
  MOVE R4 R0
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  GETIMPORT R0 K2 [table.clear]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["instancesToInstanceId"]
  CALL R0 1 0
  GETUPVAL R3 0
  GETTABLEKS R0 R3 K4 ["watchingInstanceConnections"]
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K5 [+4]
  LOADK R7 K5 ["Luau"]
  GETIMPORT R5 K7 [assert]
  CALL R5 2 0
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  NAMECALL R10 R9 K8 ["Disconnect"]
  CALL R10 1 0
  FORGLOOP R5 2 [-4]
  FORGLOOP R0 2 [-20]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K9 ["destroy"]
  CALL R0 0 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K9 ["destroy"]
  CALL R0 0 0
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K9 ["destroy"]
  CALL R0 0 0
  GETUPVAL R0 4
  JUMPIFEQKNIL R0 [+5]
  GETUPVAL R1 4
  GETTABLEKS R0 R1 K9 ["destroy"]
  CALL R0 0 0
  GETUPVAL R1 5
  GETTABLEKS R0 R1 K9 ["destroy"]
  CALL R0 0 0
  GETUPVAL R1 6
  GETTABLEKS R0 R1 K9 ["destroy"]
  CALL R0 0 0
  GETUPVAL R0 7
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 7
  GETTABLEKS R0 R1 K9 ["destroy"]
  CALL R0 0 0
  GETUPVAL R0 8
  CALL R0 0 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 9
  JUMPIFEQKNIL R0 [+5]
  GETUPVAL R1 9
  GETTABLEKS R0 R1 K9 ["destroy"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_3:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETVARARGS R2 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_4:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETVARARGS R2 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_5:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETVARARGS R2 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_6:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["instancePickerSubmitInstance called with no instancePicker in config"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["requestStreamIn called with no streaming interface"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  MOVE R4 R3
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  NEWTABLE R5 1 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["rootId"]
  SETTABLE R0 R5 R6
  NEWTABLE R6 1 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["rootId"]
  SETTABLE R7 R6 R0
  DUPTABLE R7 K14 [{"root", "hostRpcInterface", "instanceIdsToInstance", "instancesToInstanceId", "getInstanceId", "expandedInstances", "watchingInstanceConnections", "instancesInView", "trackingFields", "streamingInterface", "analytics", "isServiceVisible", "recordChanges"}]
  SETTABLEKS R0 R7 K1 ["root"]
  SETTABLEKS R1 R7 K2 ["hostRpcInterface"]
  SETTABLEKS R5 R7 K3 ["instanceIdsToInstance"]
  SETTABLEKS R6 R7 K4 ["instancesToInstanceId"]
  GETUPVAL R8 1
  GETTABLEKS R9 R4 K5 ["getInstanceId"]
  JUMPIF R9 [+2]
  GETUPVAL R9 2
  CALL R9 0 1
  MOVE R10 R5
  MOVE R11 R6
  CALL R8 3 1
  SETTABLEKS R8 R7 K5 ["getInstanceId"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K6 ["expandedInstances"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K7 ["watchingInstanceConnections"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K8 ["instancesInView"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K9 ["trackingFields"]
  GETTABLEKS R8 R4 K10 ["streamingInterface"]
  SETTABLEKS R8 R7 K10 ["streamingInterface"]
  GETTABLEKS R8 R4 K11 ["analytics"]
  JUMPIF R8 [+3]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K15 ["TelemetryServiceInterface"]
  SETTABLEKS R8 R7 K11 ["analytics"]
  GETTABLEKS R8 R4 K12 ["isServiceVisible"]
  SETTABLEKS R8 R7 K12 ["isServiceVisible"]
  GETTABLEKS R8 R4 K13 ["recordChanges"]
  JUMPIF R8 [+1]
  GETUPVAL R8 4
  SETTABLEKS R8 R7 K13 ["recordChanges"]
  DUPTABLE R8 K19 [{"insertObjectButton", "scriptOpening", "respondsToScriptClicks"}]
  GETTABLEKS R10 R4 K20 ["openInsertObjectMenuAsync"]
  JUMPIFNOTEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K16 ["insertObjectButton"]
  GETTABLEKS R10 R4 K21 ["openScript"]
  JUMPIFNOTEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K17 ["scriptOpening"]
  GETTABLEKS R10 R4 K22 ["clickScript"]
  JUMPIFNOTEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K18 ["respondsToScriptClicks"]
  GETUPVAL R9 5
  MOVE R10 R7
  MOVE R11 R2
  GETTABLEKS R13 R4 K24 ["enableOpenContextMenuDelayHack"]
  ORK R12 R13 K23 [False]
  CALL R9 3 1
  GETTABLEKS R11 R4 K12 ["isServiceVisible"]
  JUMPIFNOT R11 [+8]
  GETUPVAL R10 6
  MOVE R11 R7
  GETTABLEKS R12 R4 K12 ["isServiceVisible"]
  GETTABLEKS R13 R4 K25 ["listenForVisibilityChanges"]
  CALL R10 3 1
  JUMP [+1]
  LOADNIL R10
  GETUPVAL R11 7
  MOVE R12 R7
  GETTABLEKS R13 R4 K26 ["fieldsConfig"]
  CALL R11 2 1
  GETUPVAL R12 8
  MOVE R13 R7
  CALL R12 1 1
  JUMPIFNOT R4 [+9]
  GETTABLEKS R14 R4 K27 ["instancePicker"]
  JUMPIFNOT R14 [+6]
  GETUPVAL R13 9
  MOVE R14 R7
  GETTABLEKS R15 R4 K27 ["instancePicker"]
  CALL R13 2 1
  JUMP [+1]
  LOADNIL R13
  GETUPVAL R14 10
  MOVE R15 R7
  GETTABLEKS R16 R4 K20 ["openInsertObjectMenuAsync"]
  CALL R14 2 1
  GETUPVAL R15 11
  MOVE R16 R7
  MOVE R17 R4
  JUMPIFNOT R17 [+2]
  GETTABLEKS R17 R4 K21 ["openScript"]
  MOVE R18 R4
  JUMPIFNOT R18 [+2]
  GETTABLEKS R18 R4 K22 ["clickScript"]
  CALL R15 3 1
  NEWCLOSURE R16 P0
  CAPTURE UPVAL U12
  CAPTURE VAL R7
  CAPTURE VAL R4
  GETUPVAL R17 13
  MOVE R18 R7
  MOVE R19 R4
  JUMPIFNOT R19 [+2]
  GETTABLEKS R19 R4 K28 ["flushSelectionChangedThisFrameSignal"]
  MOVE R20 R16
  MOVE R21 R4
  JUMPIFNOT R21 [+2]
  GETTABLEKS R21 R4 K29 ["DEBUG_dataModelType"]
  MOVE R22 R4
  JUMPIFNOT R22 [+2]
  GETTABLEKS R22 R4 K30 ["DEBUG_startTime"]
  CALL R17 5 1
  GETUPVAL R18 14
  MOVE R19 R7
  MOVE R20 R4
  JUMPIFNOT R20 [+2]
  GETTABLEKS R20 R4 K31 ["createSearchThrottler"]
  CALL R18 2 1
  GETUPVAL R20 15
  CALL R20 0 1
  JUMPIFNOT R20 [+9]
  GETTABLEKS R20 R4 K10 ["streamingInterface"]
  JUMPIFNOT R20 [+6]
  GETUPVAL R19 16
  MOVE R20 R7
  GETTABLEKS R21 R4 K10 ["streamingInterface"]
  CALL R19 2 1
  JUMP [+1]
  LOADNIL R19
  NEWCLOSURE R20 P1
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R10
  CAPTURE UPVAL U15
  CAPTURE VAL R19
  DUPTABLE R21 K54 [{"getCapabilitiesAsync", "expandAsync", "stopListening", "setSelection", "requestCurrentSelection", "renameInstance", "hostHovered", "openContextMenuAsync", "performContextMenuAction", "createFieldAsync", "deleteField", "viewInstancesAsync", "stopViewingInstances", "performFieldAction", "dropSelectionOntoAsync", "startSearchAsync", "continueSearchAsync", "stopSearching", "openInsertObjectMenuAsync", "openScript", "clickScript", "instancePickerSubmitInstance", "requestStreamIn", "getPlaceIdAsync", "getClockAsync"}]
  NEWCLOSURE R22 P2
  CAPTURE VAL R8
  SETTABLEKS R22 R21 K32 ["getCapabilitiesAsync"]
  SETTABLEKS R16 R21 K33 ["expandAsync"]
  NEWCLOSURE R22 P3
  CAPTURE UPVAL U17
  CAPTURE VAL R7
  SETTABLEKS R22 R21 K34 ["stopListening"]
  GETTABLEKS R22 R17 K35 ["setSelection"]
  SETTABLEKS R22 R21 K35 ["setSelection"]
  GETTABLEKS R22 R17 K55 ["sendCurrentSelection"]
  SETTABLEKS R22 R21 K36 ["requestCurrentSelection"]
  NEWCLOSURE R22 P4
  CAPTURE UPVAL U18
  CAPTURE VAL R7
  SETTABLEKS R22 R21 K37 ["renameInstance"]
  GETTABLEKS R22 R12 K38 ["hostHovered"]
  SETTABLEKS R22 R21 K38 ["hostHovered"]
  GETTABLEKS R22 R9 K39 ["openContextMenuAsync"]
  SETTABLEKS R22 R21 K39 ["openContextMenuAsync"]
  GETTABLEKS R22 R9 K40 ["performContextMenuAction"]
  SETTABLEKS R22 R21 K40 ["performContextMenuAction"]
  GETTABLEKS R22 R11 K41 ["createFieldAsync"]
  SETTABLEKS R22 R21 K41 ["createFieldAsync"]
  GETTABLEKS R22 R11 K42 ["deleteField"]
  SETTABLEKS R22 R21 K42 ["deleteField"]
  GETTABLEKS R22 R11 K43 ["viewInstancesAsync"]
  SETTABLEKS R22 R21 K43 ["viewInstancesAsync"]
  GETTABLEKS R22 R11 K44 ["stopViewingInstances"]
  SETTABLEKS R22 R21 K44 ["stopViewingInstances"]
  GETTABLEKS R22 R11 K45 ["performFieldAction"]
  SETTABLEKS R22 R21 K45 ["performFieldAction"]
  NEWCLOSURE R22 P5
  CAPTURE UPVAL U19
  CAPTURE VAL R7
  SETTABLEKS R22 R21 K46 ["dropSelectionOntoAsync"]
  GETTABLEKS R22 R18 K47 ["startSearchAsync"]
  SETTABLEKS R22 R21 K47 ["startSearchAsync"]
  GETTABLEKS R22 R18 K48 ["continueSearchAsync"]
  SETTABLEKS R22 R21 K48 ["continueSearchAsync"]
  GETTABLEKS R22 R18 K49 ["stopSearching"]
  SETTABLEKS R22 R21 K49 ["stopSearching"]
  SETTABLEKS R14 R21 K20 ["openInsertObjectMenuAsync"]
  GETTABLEKS R22 R15 K21 ["openScript"]
  SETTABLEKS R22 R21 K21 ["openScript"]
  GETTABLEKS R22 R15 K22 ["clickScript"]
  SETTABLEKS R22 R21 K22 ["clickScript"]
  JUMPIFNOT R13 [+3]
  GETTABLEKS R22 R13 K50 ["instancePickerSubmitInstance"]
  JUMP [+1]
  DUPCLOSURE R22 K56 [PROTO_6]
  SETTABLEKS R22 R21 K50 ["instancePickerSubmitInstance"]
  GETTABLEKS R23 R4 K10 ["streamingInterface"]
  JUMPIFNOT R23 [+5]
  GETTABLEKS R23 R4 K10 ["streamingInterface"]
  GETTABLEKS R22 R23 K51 ["requestStreamIn"]
  JUMP [+1]
  DUPCLOSURE R22 K57 [PROTO_7]
  SETTABLEKS R22 R21 K51 ["requestStreamIn"]
  GETUPVAL R22 20
  SETTABLEKS R22 R21 K52 ["getPlaceIdAsync"]
  GETIMPORT R22 K60 [os.clock]
  SETTABLEKS R22 R21 K53 ["getClockAsync"]
  MOVE R22 R20
  RETURN R21 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["Analytics"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Fields"]
  GETTABLEKS R4 R5 K10 ["FieldTypes"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Guest"]
  GETTABLEKS R6 R7 K12 ["InstanceGuestRPCInterface"]
  GETTABLEKS R5 R6 K13 ["InstanceGuestRPCInterfaceTypes"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R0 K14 ["RpcTypes"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K15 ["Parent"]
  GETTABLEKS R7 R8 K16 ["Signal"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K11 ["Guest"]
  GETTABLEKS R10 R11 K12 ["InstanceGuestRPCInterface"]
  GETTABLEKS R9 R10 K17 ["Streaming"]
  GETTABLEKS R8 R9 K18 ["StreamingInterface"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K11 ["Guest"]
  GETTABLEKS R10 R11 K12 ["InstanceGuestRPCInterface"]
  GETTABLEKS R9 R10 K19 ["createGetInstanceId"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R13 R0 K11 ["Guest"]
  GETTABLEKS R12 R13 K12 ["InstanceGuestRPCInterface"]
  GETTABLEKS R11 R12 K7 ["Util"]
  GETTABLEKS R10 R11 K20 ["createGetInstanceIdDefault"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K11 ["Guest"]
  GETTABLEKS R12 R13 K12 ["InstanceGuestRPCInterface"]
  GETTABLEKS R11 R12 K21 ["createGuestContextMenu"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K11 ["Guest"]
  GETTABLEKS R13 R14 K12 ["InstanceGuestRPCInterface"]
  GETTABLEKS R12 R13 K22 ["createGuestFields"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K11 ["Guest"]
  GETTABLEKS R14 R15 K12 ["InstanceGuestRPCInterface"]
  GETTABLEKS R13 R14 K23 ["createGuestHoverTracker"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K11 ["Guest"]
  GETTABLEKS R15 R16 K12 ["InstanceGuestRPCInterface"]
  GETTABLEKS R14 R15 K24 ["createGuestInstancePicker"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K11 ["Guest"]
  GETTABLEKS R16 R17 K12 ["InstanceGuestRPCInterface"]
  GETTABLEKS R15 R16 K25 ["createGuestOpenInsertObjectMenu"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K11 ["Guest"]
  GETTABLEKS R17 R18 K12 ["InstanceGuestRPCInterface"]
  GETTABLEKS R16 R17 K26 ["createGuestScriptActions"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K11 ["Guest"]
  GETTABLEKS R18 R19 K12 ["InstanceGuestRPCInterface"]
  GETTABLEKS R17 R18 K27 ["createGuestSearching"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K11 ["Guest"]
  GETTABLEKS R19 R20 K12 ["InstanceGuestRPCInterface"]
  GETTABLEKS R18 R19 K28 ["createGuestSelectionService"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R20 R0 K11 ["Guest"]
  GETTABLEKS R19 R20 K29 ["createGuestServiceVisibility"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R23 R0 K11 ["Guest"]
  GETTABLEKS R22 R23 K12 ["InstanceGuestRPCInterface"]
  GETTABLEKS R21 R22 K17 ["Streaming"]
  GETTABLEKS R20 R21 K30 ["createGuestStreaming"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R24 R0 K11 ["Guest"]
  GETTABLEKS R23 R24 K12 ["InstanceGuestRPCInterface"]
  GETTABLEKS R22 R23 K31 ["Methods"]
  GETTABLEKS R21 R22 K32 ["dropSelectionOntoAsync"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R25 R0 K11 ["Guest"]
  GETTABLEKS R24 R25 K12 ["InstanceGuestRPCInterface"]
  GETTABLEKS R23 R24 K31 ["Methods"]
  GETTABLEKS R22 R23 K33 ["expandAsync"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R24 R0 K34 ["Flags"]
  GETTABLEKS R23 R24 K35 ["getFFlagExplorerStreaming"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R27 R0 K11 ["Guest"]
  GETTABLEKS R26 R27 K12 ["InstanceGuestRPCInterface"]
  GETTABLEKS R25 R26 K31 ["Methods"]
  GETTABLEKS R24 R25 K36 ["getPlaceIdAsync"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R28 R0 K11 ["Guest"]
  GETTABLEKS R27 R28 K12 ["InstanceGuestRPCInterface"]
  GETTABLEKS R26 R27 K7 ["Util"]
  GETTABLEKS R25 R26 K37 ["recordChangesThroughChangeHistoryService"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R29 R0 K11 ["Guest"]
  GETTABLEKS R28 R29 K12 ["InstanceGuestRPCInterface"]
  GETTABLEKS R27 R28 K31 ["Methods"]
  GETTABLEKS R26 R27 K38 ["renameInstance"]
  CALL R25 1 1
  GETIMPORT R26 K5 [require]
  GETTABLEKS R30 R0 K11 ["Guest"]
  GETTABLEKS R29 R30 K12 ["InstanceGuestRPCInterface"]
  GETTABLEKS R28 R29 K31 ["Methods"]
  GETTABLEKS R27 R28 K39 ["stopListening"]
  CALL R26 1 1
  DUPCLOSURE R27 K40 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R24
  CAPTURE VAL R10
  CAPTURE VAL R18
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R21
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE VAL R22
  CAPTURE VAL R19
  CAPTURE VAL R26
  CAPTURE VAL R25
  CAPTURE VAL R20
  CAPTURE VAL R23
  RETURN R27 1
