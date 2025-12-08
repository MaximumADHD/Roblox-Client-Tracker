PROTO_0:
  GETIMPORT R3 K1 [tick]
  CALL R3 0 1
  GETTABLEKS R4 R0 K2 ["_boundsChangedTracker"]
  NAMECALL R4 R4 K3 ["uninstall"]
  CALL R4 1 0
  DUPTABLE R5 K8 [{"_keyForcingStateTransition", "_dragInfo", "_draggerToolModel", "_freeformDragger"}]
  SETTABLEKS R2 R5 K4 ["_keyForcingStateTransition"]
  SETTABLEKS R1 R5 K5 ["_dragInfo"]
  SETTABLEKS R0 R5 K6 ["_draggerToolModel"]
  NAMECALL R8 R0 K9 ["getSchema"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K10 ["FreeformDragger"]
  GETTABLEKS R6 R7 K11 ["new"]
  GETTABLEKS R7 R0 K12 ["_draggerContext"]
  MOVE R8 R0
  MOVE R9 R1
  CALL R6 3 1
  SETTABLEKS R6 R5 K7 ["_freeformDragger"]
  GETUPVAL R6 0
  FASTCALL2 SETMETATABLE R5 R6 [+3]
  GETIMPORT R4 K14 [setmetatable]
  CALL R4 2 1
  GETIMPORT R6 K1 [tick]
  CALL R6 0 1
  SUB R5 R6 R3
  MOVE R8 R5
  NAMECALL R6 R0 K15 ["_analyticsRecordFreeformDragBegin"]
  CALL R6 2 0
  RETURN R4 1

PROTO_1:
  NAMECALL R1 R0 K0 ["_updateFreeformSelectionDrag"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["_keyForcingStateTransition"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R3 R0 K1 ["_keyForcingStateTransition"]
  NAMECALL R1 R0 K2 ["processKeyDown"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R1 R2 K1 ["_draggerContext"]
  NEWTABLE R2 0 2
  GETUPVAL R3 0
  GETUPVAL R4 1
  SETLIST R2 R3 2 [1]
  NAMECALL R3 R1 K2 ["isAltKeyDown"]
  CALL R3 1 1
  JUMPIFNOT R3 [+8]
  GETUPVAL R5 2
  FASTCALL2 TABLE_INSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K5 [table.insert]
  CALL R3 2 0
  JUMP [+7]
  GETUPVAL R5 3
  FASTCALL2 TABLE_INSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K5 [table.insert]
  CALL R3 2 0
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K6 ["addGridSnap"]
  MOVE R4 R2
  MOVE R5 R1
  CALL R3 2 0
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K7 ["addHelp"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R2 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_draggerToolModel"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["getClosedHand"]
  CALL R3 0 -1
  NAMECALL R1 R1 K2 ["setMouseCursor"]
  CALL R1 -1 0
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+42]
  GETTABLEKS R1 R0 K3 ["_freeformDragger"]
  NAMECALL R1 R1 K4 ["render"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K5 ["_draggerContext"]
  LOADK R4 K6 ["HotkeyUsageHidden"]
  NAMECALL R2 R2 K7 ["getSetting"]
  CALL R2 2 1
  JUMPIFNOT R2 [+1]
  RETURN R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K8 ["createFragment"]
  DUPTABLE R3 K11 [{"DraggerElements", "HotkeyUsageInfo"}]
  SETTABLEKS R1 R3 K9 ["DraggerElements"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K12 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K15 [{"DraggerContext", "HotkeyList"}]
  GETTABLEKS R8 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R7 R8 K5 ["_draggerContext"]
  SETTABLEKS R7 R6 K13 ["DraggerContext"]
  NAMECALL R7 R0 K16 ["_getHotkeyList"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K14 ["HotkeyList"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K10 ["HotkeyUsageInfo"]
  CALL R2 1 -1
  RETURN R2 -1
  GETTABLEKS R1 R0 K3 ["_freeformDragger"]
  NAMECALL R1 R1 K4 ["render"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_freeformDragger"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_draggerToolModel"]
  NAMECALL R1 R1 K3 ["_updateSelectionInfo"]
  CALL R1 1 0
  GETTABLEKS R3 R0 K2 ["_draggerToolModel"]
  NAMECALL R3 R3 K4 ["getSchema"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K5 ["FreeformDragger"]
  GETTABLEKS R1 R2 K6 ["new"]
  GETTABLEKS R3 R0 K2 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K7 ["_draggerContext"]
  GETTABLEKS R3 R0 K2 ["_draggerToolModel"]
  GETTABLEKS R4 R0 K8 ["_dragInfo"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K0 ["_freeformDragger"]
  RETURN R0 0

PROTO_6:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["Mouse should already be down while dragging parts."]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  NAMECALL R1 R0 K0 ["_updateFreeformSelectionDrag"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  NAMECALL R1 R0 K0 ["_endFreeformSelectionDrag"]
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  RETURN R0 0

PROTO_10:
  RETURN R0 0

PROTO_11:
  GETIMPORT R2 K3 [Enum.KeyCode.R]
  JUMPIFNOTEQ R1 R2 [+19]
  GETTABLEKS R3 R0 K4 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K5 ["_sessionAnalytics"]
  GETTABLEKS R6 R0 K4 ["_draggerToolModel"]
  GETTABLEKS R5 R6 K5 ["_sessionAnalytics"]
  GETTABLEKS R4 R5 K7 ["dragRotates"]
  ADDK R3 R4 K6 [1]
  SETTABLEKS R3 R2 K7 ["dragRotates"]
  LOADK R4 K8 [{0, 1, 0}]
  NAMECALL R2 R0 K9 ["_tiltRotateFreeformSelectionDrag"]
  CALL R2 2 0
  RETURN R0 0
  GETIMPORT R2 K11 [Enum.KeyCode.T]
  JUMPIFNOTEQ R1 R2 [+19]
  GETTABLEKS R3 R0 K4 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K5 ["_sessionAnalytics"]
  GETTABLEKS R6 R0 K4 ["_draggerToolModel"]
  GETTABLEKS R5 R6 K5 ["_sessionAnalytics"]
  GETTABLEKS R4 R5 K12 ["dragTilts"]
  ADDK R3 R4 K6 [1]
  SETTABLEKS R3 R2 K12 ["dragTilts"]
  LOADK R4 K13 [{1, 0, 0}]
  NAMECALL R2 R0 K9 ["_tiltRotateFreeformSelectionDrag"]
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+23]
  GETIMPORT R2 K15 [Enum.KeyCode.H]
  JUMPIFNOTEQ R1 R2 [+20]
  GETTABLEKS R3 R0 K4 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K16 ["_draggerContext"]
  LOADK R5 K17 ["HotkeyUsageHidden"]
  LOADK R9 K17 ["HotkeyUsageHidden"]
  NAMECALL R7 R2 K18 ["getSetting"]
  CALL R7 2 1
  NOT R6 R7
  NAMECALL R3 R2 K19 ["setSetting"]
  CALL R3 3 0
  GETTABLEKS R3 R0 K4 ["_draggerToolModel"]
  NAMECALL R3 R3 K20 ["_scheduleRender"]
  CALL R3 1 0
  RETURN R0 0
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+11]
  GETUPVAL R3 1
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+8]
  NAMECALL R2 R0 K21 ["_updateFreeformSelectionDrag"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K4 ["_draggerToolModel"]
  NAMECALL R2 R2 K20 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+11]
  GETUPVAL R3 1
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+8]
  NAMECALL R2 R0 K0 ["_updateFreeformSelectionDrag"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K1 ["_draggerToolModel"]
  NAMECALL R2 R2 K2 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R2 R0 K0 ["_freeformDragger"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["rotate"]
  CALL R2 2 0
  NAMECALL R2 R0 K2 ["_updateFreeformSelectionDrag"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K3 ["_draggerToolModel"]
  NAMECALL R2 R2 K4 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["_freeformDragger"]
  NAMECALL R1 R1 K1 ["update"]
  CALL R1 1 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["_freeformDragger"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K2 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K3 ["_boundsChangedTracker"]
  NAMECALL R2 R2 K4 ["install"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K2 ["_draggerToolModel"]
  MOVE R4 R1
  NAMECALL R2 R2 K5 ["_updateSelectionInfo"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K2 ["_draggerToolModel"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["Ready"]
  NAMECALL R2 R2 K7 ["transitionToState"]
  CALL R2 2 0
  GETTABLEKS R3 R0 K2 ["_draggerToolModel"]
  NAMECALL R3 R3 K8 ["getSchema"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K9 ["addUndoWaypoint"]
  GETTABLEKS R4 R0 K2 ["_draggerToolModel"]
  GETTABLEKS R3 R4 K10 ["_draggerContext"]
  LOADK R4 K11 ["End Freeform Drag"]
  CALL R2 2 0
  GETTABLEKS R3 R0 K2 ["_draggerToolModel"]
  NAMECALL R3 R3 K8 ["getSchema"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K12 ["setActivePoint"]
  GETTABLEKS R4 R0 K2 ["_draggerToolModel"]
  GETTABLEKS R3 R4 K10 ["_draggerContext"]
  GETTABLEKS R5 R0 K2 ["_draggerToolModel"]
  GETTABLEKS R4 R5 K13 ["_selectionInfo"]
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K6 ["Components"]
  GETTABLEKS R4 R5 K7 ["HotkeyUsageInfo"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K8 ["Implementation"]
  GETTABLEKS R5 R6 K9 ["DraggerStateType"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K10 ["Utility"]
  GETTABLEKS R6 R7 K11 ["StandardCursor"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K10 ["Utility"]
  GETTABLEKS R7 R8 K12 ["HotkeyHelpBuilder"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K13 ["Flags"]
  GETTABLEKS R8 R9 K14 ["getFFlagDraggerImprovements"]
  CALL R7 1 1
  NEWTABLE R8 32 0
  SETTABLEKS R8 R8 K15 ["__index"]
  DUPCLOSURE R9 K16 [PROTO_0]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K17 ["new"]
  DUPCLOSURE R9 K18 [PROTO_1]
  SETTABLEKS R9 R8 K19 ["enter"]
  DUPCLOSURE R9 K20 [PROTO_2]
  SETTABLEKS R9 R8 K21 ["leave"]
  GETIMPORT R9 K24 [table.freeze]
  DUPTABLE R10 K27 [{"Hotkey", "LabelLocEntry"}]
  LOADK R11 K28 ["T"]
  SETTABLEKS R11 R10 K25 ["Hotkey"]
  LOADK R11 K29 ["DragTilt"]
  SETTABLEKS R11 R10 K26 ["LabelLocEntry"]
  CALL R9 1 1
  GETIMPORT R10 K24 [table.freeze]
  DUPTABLE R11 K27 [{"Hotkey", "LabelLocEntry"}]
  LOADK R12 K30 ["R"]
  SETTABLEKS R12 R11 K25 ["Hotkey"]
  LOADK R12 K31 ["DragRotate"]
  SETTABLEKS R12 R11 K26 ["LabelLocEntry"]
  CALL R10 1 1
  GETIMPORT R11 K24 [table.freeze]
  DUPTABLE R12 K27 [{"Hotkey", "LabelLocEntry"}]
  LOADK R13 K32 ["⬇Alt"]
  SETTABLEKS R13 R12 K25 ["Hotkey"]
  LOADK R13 K33 ["HoldOrientation"]
  SETTABLEKS R13 R12 K26 ["LabelLocEntry"]
  CALL R11 1 1
  GETIMPORT R12 K24 [table.freeze]
  DUPTABLE R13 K27 [{"Hotkey", "LabelLocEntry"}]
  LOADK R14 K34 ["⬆Alt"]
  SETTABLEKS R14 R13 K25 ["Hotkey"]
  LOADK R14 K35 ["UnholdOrientation"]
  SETTABLEKS R14 R13 K26 ["LabelLocEntry"]
  CALL R12 1 1
  DUPCLOSURE R13 K36 [PROTO_3]
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R6
  SETTABLEKS R13 R8 K37 ["_getHotkeyList"]
  DUPCLOSURE R13 K38 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R13 R8 K39 ["render"]
  DUPCLOSURE R13 K40 [PROTO_5]
  SETTABLEKS R13 R8 K41 ["processSelectionChanged"]
  DUPCLOSURE R13 K42 [PROTO_6]
  SETTABLEKS R13 R8 K43 ["processMouseDown"]
  DUPCLOSURE R13 K44 [PROTO_7]
  SETTABLEKS R13 R8 K45 ["processViewChanged"]
  DUPCLOSURE R13 K46 [PROTO_8]
  SETTABLEKS R13 R8 K47 ["processMouseUp"]
  DUPCLOSURE R13 K48 [PROTO_9]
  SETTABLEKS R13 R8 K49 ["processMouseEnter"]
  DUPCLOSURE R13 K50 [PROTO_10]
  SETTABLEKS R13 R8 K51 ["processMouseLeave"]
  GETIMPORT R13 K24 [table.freeze]
  NEWTABLE R14 8 0
  GETIMPORT R15 K55 [Enum.KeyCode.RightShift]
  LOADB R16 1
  SETTABLE R16 R14 R15
  GETIMPORT R15 K57 [Enum.KeyCode.LeftShift]
  LOADB R16 1
  SETTABLE R16 R14 R15
  GETIMPORT R15 K59 [Enum.KeyCode.RightControl]
  LOADB R16 1
  SETTABLE R16 R14 R15
  GETIMPORT R15 K61 [Enum.KeyCode.LeftControl]
  LOADB R16 1
  SETTABLE R16 R14 R15
  GETIMPORT R15 K63 [Enum.KeyCode.RightAlt]
  LOADB R16 1
  SETTABLE R16 R14 R15
  GETIMPORT R15 K65 [Enum.KeyCode.LeftAlt]
  LOADB R16 1
  SETTABLE R16 R14 R15
  CALL R13 1 1
  DUPCLOSURE R14 K66 [PROTO_11]
  CAPTURE VAL R7
  CAPTURE VAL R13
  SETTABLEKS R14 R8 K67 ["processKeyDown"]
  DUPCLOSURE R14 K68 [PROTO_12]
  CAPTURE VAL R7
  CAPTURE VAL R13
  SETTABLEKS R14 R8 K69 ["processKeyUp"]
  DUPCLOSURE R14 K70 [PROTO_13]
  SETTABLEKS R14 R8 K71 ["_tiltRotateFreeformSelectionDrag"]
  DUPCLOSURE R14 K72 [PROTO_14]
  SETTABLEKS R14 R8 K73 ["_updateFreeformSelectionDrag"]
  DUPCLOSURE R14 K74 [PROTO_15]
  CAPTURE VAL R4
  SETTABLEKS R14 R8 K75 ["_endFreeformSelectionDrag"]
  RETURN R8 1
