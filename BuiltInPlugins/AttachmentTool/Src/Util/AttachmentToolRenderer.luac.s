PROTO_0:
  DUPTABLE R4 K4 [{"_draggerContext", "_draggerSchema", "_attachmentToolModel", "_mouseCursor"}]
  SETTABLEKS R0 R4 K0 ["_draggerContext"]
  SETTABLEKS R1 R4 K1 ["_draggerSchema"]
  SETTABLEKS R2 R4 K2 ["_attachmentToolModel"]
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
  JUMPIFNOT R3 [+68]
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
  GETTABLEKS R6 R0 K9 ["_attachmentToolModel"]
  GETTABLEKS R5 R6 K10 ["_selectionInfo"]
  NAMECALL R5 R5 K11 ["getLocalBoundingBox"]
  CALL R5 1 3
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K17 [{"DragTarget", "SourceSize", "Scale", "GridSize", "Color", "PrimaryColor"}]
  SETTABLEKS R1 R10 K4 ["DragTarget"]
  SETTABLEKS R7 R10 K12 ["SourceSize"]
  GETTABLEKS R14 R1 K18 ["targetMatrix"]
  GETTABLEKS R13 R14 K19 ["Position"]
  NAMECALL R11 R2 K20 ["getHandleScale"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K13 ["Scale"]
  SETTABLEKS R4 R10 K14 ["GridSize"]
  NAMECALL R11 R2 K21 ["getGridColor"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K15 ["Color"]
  NAMECALL R11 R2 K22 ["getChosenColor"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K16 ["PrimaryColor"]
  CALL R8 2 -1
  RETURN R8 -1
  LOADNIL R3
  RETURN R3 1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["_attachmentToolModel"]
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
  NEWTABLE R2 0 2
  GETUPVAL R3 0
  GETUPVAL R4 1
  SETLIST R2 R3 2 [1]
  NAMECALL R3 R1 K1 ["isAltKeyDown"]
  CALL R3 1 1
  JUMPIFNOT R3 [+8]
  GETUPVAL R5 2
  FASTCALL2 TABLE_INSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K4 [table.insert]
  CALL R3 2 0
  JUMP [+7]
  GETUPVAL R5 3
  FASTCALL2 TABLE_INSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K4 [table.insert]
  CALL R3 2 0
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K5 ["addGridSnap"]
  MOVE R4 R2
  MOVE R5 R1
  CALL R3 2 0
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K6 ["addHelp"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R2 1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["_mouseCursor"]
  JUMPIFEQ R2 R1 [+9]
  SETTABLEKS R1 R0 K0 ["_mouseCursor"]
  GETTABLEKS R2 R0 K1 ["_draggerContext"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["setMouseIcon"]
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  LOADK R3 K0 ["rbxasset://textures/ConstraintCursor.png"]
  NAMECALL R1 R0 K1 ["setMouseCursor"]
  CALL R1 2 0
  NAMECALL R1 R0 K2 ["_renderSnap"]
  CALL R1 1 1
  LOADNIL R2
  GETTABLEKS R3 R0 K3 ["_draggerContext"]
  LOADK R5 K4 ["HotkeyUsageHidden"]
  NAMECALL R3 R3 K5 ["getSetting"]
  CALL R3 2 1
  JUMPIF R3 [+16]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K9 [{"DraggerContext", "HotkeyList"}]
  GETTABLEKS R6 R0 K3 ["_draggerContext"]
  SETTABLEKS R6 R5 K7 ["DraggerContext"]
  NAMECALL R6 R0 K10 ["_getHotkeyList"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K8 ["HotkeyList"]
  CALL R3 2 1
  MOVE R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K11 ["createFragment"]
  DUPTABLE R4 K14 [{"DraggerElements", "HotkeyUsageInfo"}]
  SETTABLEKS R1 R4 K12 ["DraggerElements"]
  SETTABLEKS R2 R4 K13 ["HotkeyUsageInfo"]
  CALL R3 1 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AttachmentTool"]
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
  NEWTABLE R7 8 0
  SETTABLEKS R7 R7 K15 ["__index"]
  DUPCLOSURE R8 K16 [PROTO_0]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K17 ["new"]
  DUPCLOSURE R8 K18 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R8 R7 K19 ["_renderSnapTarget"]
  DUPCLOSURE R8 K20 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K21 ["_renderSnap"]
  GETIMPORT R8 K24 [table.freeze]
  DUPTABLE R9 K27 [{"Hotkey", "LabelLocEntry"}]
  LOADK R10 K28 ["T"]
  SETTABLEKS R10 R9 K25 ["Hotkey"]
  LOADK R10 K29 ["DragTilt"]
  SETTABLEKS R10 R9 K26 ["LabelLocEntry"]
  CALL R8 1 1
  GETIMPORT R9 K24 [table.freeze]
  DUPTABLE R10 K27 [{"Hotkey", "LabelLocEntry"}]
  LOADK R11 K30 ["R"]
  SETTABLEKS R11 R10 K25 ["Hotkey"]
  LOADK R11 K31 ["DragRotate"]
  SETTABLEKS R11 R10 K26 ["LabelLocEntry"]
  CALL R9 1 1
  GETIMPORT R10 K24 [table.freeze]
  DUPTABLE R11 K27 [{"Hotkey", "LabelLocEntry"}]
  LOADK R12 K32 ["⬇Alt"]
  SETTABLEKS R12 R11 K25 ["Hotkey"]
  LOADK R12 K33 ["HoldOrientation"]
  SETTABLEKS R12 R11 K26 ["LabelLocEntry"]
  CALL R10 1 1
  GETIMPORT R11 K24 [table.freeze]
  DUPTABLE R12 K27 [{"Hotkey", "LabelLocEntry"}]
  LOADK R13 K34 ["⬆Alt"]
  SETTABLEKS R13 R12 K25 ["Hotkey"]
  LOADK R13 K35 ["UnholdOrientation"]
  SETTABLEKS R13 R12 K26 ["LabelLocEntry"]
  CALL R11 1 1
  DUPCLOSURE R12 K36 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R6
  SETTABLEKS R12 R7 K37 ["_getHotkeyList"]
  DUPCLOSURE R12 K38 [PROTO_4]
  SETTABLEKS R12 R7 K39 ["setMouseCursor"]
  DUPCLOSURE R12 K40 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R12 R7 K41 ["render"]
  RETURN R7 1
