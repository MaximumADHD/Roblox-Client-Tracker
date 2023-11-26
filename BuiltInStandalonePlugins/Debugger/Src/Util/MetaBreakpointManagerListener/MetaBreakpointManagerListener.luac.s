PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["fromMetaBreakpoint"]
  MOVE R3 R1
  CALL R2 1 1
  GETTABLEKS R3 R0 K1 ["store"]
  NAMECALL R3 R3 K2 ["getState"]
  CALL R3 1 1
  GETTABLEKS R4 R0 K1 ["store"]
  GETUPVAL R6 1
  GETTABLEKS R8 R3 K3 ["Common"]
  GETTABLEKS R7 R8 K4 ["currentDebuggerConnectionId"]
  MOVE R8 R2
  CALL R6 2 -1
  NAMECALL R4 R4 K5 ["dispatch"]
  CALL R4 -1 0
  GETTABLEKS R4 R0 K1 ["store"]
  GETUPVAL R6 2
  GETTABLEKS R7 R1 K6 ["Script"]
  LOADK R8 K7 [""]
  CALL R6 2 -1
  NAMECALL R4 R4 K5 ["dispatch"]
  CALL R4 -1 0
  MOVE R6 R1
  NAMECALL R4 R0 K8 ["updateScriptWatcher"]
  CALL R4 2 0
  RETURN R0 0

PROTO_1:
  NAMECALL R2 R1 K0 ["GetContextBreakpoints"]
  CALL R2 1 1
  GETIMPORT R3 K2 [pairs]
  MOVE R4 R2
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLEKS R8 R7 K3 ["connectionId"]
  GETTABLEKS R9 R7 K4 ["breakpoints"]
  GETIMPORT R10 K6 [ipairs]
  MOVE R11 R9
  CALL R10 1 3
  FORGPREP_INEXT R10
  GETTABLEKS R15 R0 K7 ["_crossDmScriptChangeListenerService"]
  GETTABLEKS R17 R14 K8 ["Script"]
  MOVE R18 R8
  GETTABLEKS R19 R14 K9 ["Line"]
  NAMECALL R15 R15 K10 ["StartWatchingScriptLine"]
  CALL R15 4 0
  FORGLOOP R10 2 [inext] [-11]
  FORGLOOP R3 2 [-22]
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["fromMetaBreakpoint"]
  MOVE R3 R1
  CALL R2 1 1
  MOVE R5 R1
  NAMECALL R3 R0 K1 ["updateScriptWatcher"]
  CALL R3 2 0
  GETTABLEKS R3 R0 K2 ["store"]
  GETUPVAL R5 1
  MOVE R6 R2
  CALL R5 1 -1
  NAMECALL R3 R3 K3 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["store"]
  GETUPVAL R4 0
  GETTABLEKS R5 R1 K1 ["Id"]
  CALL R4 1 -1
  NAMECALL R2 R2 K2 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["onMetaBreakpointAdded"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["onMetaBreakpointChanged"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K0 ["onMetaBreakpointChanged"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["onMetaBreakpointRemoved"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  MOVE R3 R1
  JUMPIF R3 [+6]
  GETIMPORT R3 K1 [game]
  LOADK R5 K2 ["MetaBreakpointManager"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  MOVE R4 R2
  JUMPIF R4 [+6]
  GETIMPORT R4 K1 [game]
  LOADK R6 K4 ["CrossDMScriptChangeListener"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  SETTABLEKS R4 R0 K5 ["_crossDmScriptChangeListenerService"]
  GETTABLEKS R4 R3 K6 ["MetaBreakpointAdded"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  NAMECALL R4 R4 K7 ["Connect"]
  CALL R4 2 1
  SETTABLEKS R4 R0 K8 ["_metaBreakpointAddedConnection"]
  GETTABLEKS R4 R3 K9 ["MetaBreakpointChanged"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  NAMECALL R4 R4 K7 ["Connect"]
  CALL R4 2 1
  SETTABLEKS R4 R0 K10 ["_metaBreakpointChangedConnection"]
  GETTABLEKS R4 R3 K11 ["MetaBreakpointSetChanged"]
  NEWCLOSURE R6 P2
  CAPTURE VAL R0
  NAMECALL R4 R4 K7 ["Connect"]
  CALL R4 2 1
  SETTABLEKS R4 R0 K12 ["_metaBreakpointSetChangedConnection"]
  GETTABLEKS R4 R3 K13 ["MetaBreakpointRemoved"]
  NEWCLOSURE R6 P3
  CAPTURE VAL R0
  NAMECALL R4 R4 K7 ["Connect"]
  CALL R4 2 1
  SETTABLEKS R4 R0 K14 ["_metaBreakpointRemovedConnection"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_metaBreakpointAddedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_metaBreakpointAddedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_metaBreakpointAddedConnection"]
  GETTABLEKS R1 R0 K2 ["_metaBreakpointRemovedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["_metaBreakpointRemovedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_metaBreakpointRemovedConnection"]
  GETTABLEKS R1 R0 K3 ["_metaBreakpointChangedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K3 ["_metaBreakpointChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_metaBreakpointChangedConnection"]
  GETTABLEKS R1 R0 K4 ["_metaBreakpointSetChangedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K4 ["_metaBreakpointSetChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_metaBreakpointSetChangedConnection"]
  RETURN R0 0

PROTO_10:
  DUPTABLE R3 K1 [{"store"}]
  SETTABLEKS R0 R3 K0 ["store"]
  GETUPVAL R4 0
  MOVE R5 R3
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 0
  GETUPVAL R6 1
  FASTCALL2 SETMETATABLE R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K3 [setmetatable]
  CALL R4 2 0
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Actions"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Models"]
  GETTABLEKS R3 R4 K7 ["MetaBreakpoint"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R1 K8 ["BreakpointsWindow"]
  GETTABLEKS R4 R5 K9 ["AddBreakpoint"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R1 K8 ["BreakpointsWindow"]
  GETTABLEKS R5 R6 K10 ["ModifyBreakpoint"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R1 K8 ["BreakpointsWindow"]
  GETTABLEKS R6 R7 K11 ["DeleteBreakpoint"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R1 K12 ["Common"]
  GETTABLEKS R7 R8 K13 ["SetFilenameForGuid"]
  CALL R6 1 1
  NEWTABLE R7 8 0
  SETTABLEKS R7 R7 K14 ["__index"]
  DUPCLOSURE R8 K15 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K16 ["onMetaBreakpointAdded"]
  DUPCLOSURE R8 K17 [PROTO_1]
  SETTABLEKS R8 R7 K18 ["updateScriptWatcher"]
  DUPCLOSURE R8 K19 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K20 ["onMetaBreakpointChanged"]
  DUPCLOSURE R8 K21 [PROTO_3]
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K22 ["onMetaBreakpointRemoved"]
  DUPCLOSURE R8 K23 [PROTO_8]
  DUPCLOSURE R9 K24 [PROTO_9]
  SETTABLEKS R9 R7 K25 ["destroy"]
  DUPCLOSURE R9 K26 [PROTO_10]
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R9 R7 K27 ["new"]
  RETURN R7 1
