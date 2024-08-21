PROTO_0:
  DUPTABLE R4 K4 [{"_draggerContext", "_draggerSchema", "_constraintToolModel", "_mouseCursor"}]
  SETTABLEKS R0 R4 K0 ["_draggerContext"]
  SETTABLEKS R1 R4 K1 ["_draggerSchema"]
  SETTABLEKS R2 R4 K2 ["_constraintToolModel"]
  LOADK R5 K5 [""]
  SETTABLEKS R5 R4 K3 ["_mouseCursor"]
  GETUPVAL R5 0
  FASTCALL2 SETMETATABLE R4 R5 [+3]
  GETIMPORT R3 K7 [setmetatable]
  CALL R3 2 1
  RETURN R3 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["_draggerContext"]
  NAMECALL R3 R2 K1 ["shouldShowTargetGrids"]
  CALL R3 1 1
  JUMPIFNOT R3 [+65]
  GETTABLEKS R5 R1 K2 ["softSnaps"]
  LENGTH R4 R5
  LOADN R5 0
  JUMPIFLT R5 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+11]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K6 [{"DragTarget", "DraggerContext"}]
  SETTABLEKS R1 R6 K4 ["DragTarget"]
  SETTABLEKS R2 R6 K5 ["DraggerContext"]
  CALL R4 2 -1
  RETURN R4 -1
  NAMECALL R5 R2 K7 ["shouldGridSnap"]
  CALL R5 1 1
  JUMPIFNOT R5 [+4]
  NAMECALL R4 R2 K8 ["getGridSize"]
  CALL R4 1 1
  JUMP [+1]
  LOADNIL R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K14 [{"DragTarget", "SourceSize", "Scale", "GridSize", "Color", "PrimaryColor"}]
  SETTABLEKS R1 R7 K4 ["DragTarget"]
  FASTCALL VECTOR [+2]
  GETIMPORT R8 K17 [Vector3.new]
  CALL R8 0 1
  SETTABLEKS R8 R7 K9 ["SourceSize"]
  GETTABLEKS R11 R1 K18 ["targetMatrix"]
  GETTABLEKS R10 R11 K19 ["Position"]
  NAMECALL R8 R2 K20 ["getHandleScale"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["Scale"]
  SETTABLEKS R4 R7 K11 ["GridSize"]
  NAMECALL R8 R2 K21 ["getGridColor"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K12 ["Color"]
  NAMECALL R8 R2 K22 ["getChosenColor"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K13 ["PrimaryColor"]
  CALL R5 2 -1
  RETURN R5 -1
  LOADNIL R3
  RETURN R3 1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["_constraintToolModel"]
  GETTABLEKS R1 R2 K1 ["_lastDragTarget"]
  GETTABLEKS R2 R0 K2 ["_draggerContext"]
  NAMECALL R2 R2 K3 ["areConstraintsEnabled"]
  CALL R2 1 1
  JUMPIF R2 [+13]
  JUMPIFNOT R1 [+12]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["createFragment"]
  DUPTABLE R3 K6 [{"SnapTarget"}]
  MOVE R6 R1
  NAMECALL R4 R0 K7 ["_renderSnapTarget"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["SnapTarget"]
  CALL R2 1 -1
  RETURN R2 -1
  LOADNIL R2
  RETURN R2 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NEWTABLE R2 0 3
  GETUPVAL R3 0
  GETUPVAL R4 1
  GETUPVAL R5 2
  SETLIST R2 R3 3 [1]
  GETUPVAL R3 3
  JUMPIFNOT R3 [+14]
  GETTABLEKS R7 R0 K1 ["_constraintToolModel"]
  GETTABLEKS R6 R7 K2 ["_partPassthroughEnabled"]
  JUMPIFNOT R6 [+2]
  GETUPVAL R5 4
  JUMPIF R5 [+1]
  GETUPVAL R5 5
  FASTCALL2 TABLE_INSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K5 [table.insert]
  CALL R3 2 0
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K6 ["addGridSnap"]
  MOVE R4 R2
  MOVE R5 R1
  CALL R3 2 0
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K7 ["addHelp"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R2 1

PROTO_4:
  NAMECALL R1 R0 K0 ["_renderSnap"]
  CALL R1 1 1
  LOADNIL R2
  GETTABLEKS R3 R0 K1 ["_draggerContext"]
  LOADK R5 K2 ["HotkeyUsageHidden"]
  NAMECALL R3 R3 K3 ["getSetting"]
  CALL R3 2 1
  JUMPIF R3 [+16]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K7 [{"DraggerContext", "HotkeyList"}]
  GETTABLEKS R6 R0 K1 ["_draggerContext"]
  SETTABLEKS R6 R5 K5 ["DraggerContext"]
  NAMECALL R6 R0 K8 ["_getHotkeyList"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K6 ["HotkeyList"]
  CALL R3 2 1
  MOVE R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["createFragment"]
  DUPTABLE R4 K12 [{"DraggerElements", "HotkeyUsageInfo"}]
  SETTABLEKS R1 R4 K10 ["DraggerElements"]
  SETTABLEKS R2 R4 K11 ["HotkeyUsageInfo"]
  CALL R3 1 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ConstraintTool"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Packages"]
  GETTABLEKS R1 R2 K5 ["DraggerFramework"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R4 R0 K4 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R1 K9 ["Components"]
  GETTABLEKS R4 R5 K10 ["TargetGridView"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R6 R1 K9 ["Components"]
  GETTABLEKS R5 R6 K11 ["TargetSoftSnapView"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R7 R1 K9 ["Components"]
  GETTABLEKS R6 R7 K12 ["HotkeyUsageInfo"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R8 R1 K13 ["Utility"]
  GETTABLEKS R7 R8 K14 ["HotkeyHelpBuilder"]
  CALL R6 1 1
  GETIMPORT R7 K16 [game]
  LOADK R9 K17 ["EnableConstraintToolPartPassthroughFeature"]
  NAMECALL R7 R7 K18 ["GetFastFlag"]
  CALL R7 2 1
  NEWTABLE R8 8 0
  SETTABLEKS R8 R8 K19 ["__index"]
  DUPCLOSURE R9 K20 [PROTO_0]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K21 ["new"]
  DUPCLOSURE R9 K22 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R9 R8 K23 ["_renderSnapTarget"]
  DUPCLOSURE R9 K24 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K25 ["_renderSnap"]
  GETIMPORT R9 K28 [table.freeze]
  DUPTABLE R10 K31 [{"Hotkey", "LabelLocEntry"}]
  LOADK R11 K32 ["T"]
  SETTABLEKS R11 R10 K29 ["Hotkey"]
  LOADK R11 K33 ["DragTilt"]
  SETTABLEKS R11 R10 K30 ["LabelLocEntry"]
  CALL R9 1 1
  GETIMPORT R10 K28 [table.freeze]
  DUPTABLE R11 K31 [{"Hotkey", "LabelLocEntry"}]
  LOADK R12 K34 ["R"]
  SETTABLEKS R12 R11 K29 ["Hotkey"]
  LOADK R12 K35 ["DragRotate"]
  SETTABLEKS R12 R11 K30 ["LabelLocEntry"]
  CALL R10 1 1
  GETIMPORT R11 K28 [table.freeze]
  DUPTABLE R12 K31 [{"Hotkey", "LabelLocEntry"}]
  LOADK R13 K36 ["F"]
  SETTABLEKS R13 R12 K29 ["Hotkey"]
  LOADK R13 K37 ["EnablePartPassthrough"]
  SETTABLEKS R13 R12 K30 ["LabelLocEntry"]
  CALL R11 1 1
  GETIMPORT R12 K28 [table.freeze]
  DUPTABLE R13 K31 [{"Hotkey", "LabelLocEntry"}]
  LOADK R14 K36 ["F"]
  SETTABLEKS R14 R13 K29 ["Hotkey"]
  LOADK R14 K38 ["DisablePartPassthrough"]
  SETTABLEKS R14 R13 K30 ["LabelLocEntry"]
  CALL R12 1 1
  GETIMPORT R13 K28 [table.freeze]
  DUPTABLE R14 K31 [{"Hotkey", "LabelLocEntry"}]
  LOADK R15 K39 ["Esc"]
  SETTABLEKS R15 R14 K29 ["Hotkey"]
  LOADK R15 K40 ["Escape"]
  SETTABLEKS R15 R14 K30 ["LabelLocEntry"]
  CALL R13 1 1
  DUPCLOSURE R14 K41 [PROTO_3]
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R6
  SETTABLEKS R14 R8 K42 ["_getHotkeyList"]
  DUPCLOSURE R14 K43 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R14 R8 K44 ["render"]
  RETURN R8 1
