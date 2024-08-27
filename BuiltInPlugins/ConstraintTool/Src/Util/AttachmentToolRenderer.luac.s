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
  NEWTABLE R2 0 5
  GETUPVAL R3 0
  GETUPVAL R4 1
  GETUPVAL R5 2
  GETUPVAL R7 3
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K1 ["ShowWeldDetails"]
  GETTABLE R6 R7 R8
  GETUPVAL R8 5
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K2 ["ShowConstraintDetails"]
  GETTABLE R7 R8 R9
  SETLIST R2 R3 5 [1]
  GETUPVAL R3 6
  JUMPIFNOT R3 [+12]
  GETUPVAL R6 7
  GETTABLEKS R8 R0 K3 ["_constraintToolModel"]
  GETTABLEKS R7 R8 K4 ["_partPassthroughEnabled"]
  GETTABLE R5 R6 R7
  FASTCALL2 TABLE_INSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K7 [table.insert]
  CALL R3 2 0
  GETUPVAL R4 8
  GETTABLEKS R3 R4 K8 ["addGridSnap"]
  MOVE R4 R2
  MOVE R5 R1
  CALL R3 2 0
  GETUPVAL R4 8
  GETTABLEKS R3 R4 K9 ["addHelp"]
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
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["StudioService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R3 R0 K8 ["Packages"]
  GETTABLEKS R2 R3 K9 ["DraggerFramework"]
  GETIMPORT R3 K11 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K11 [require]
  GETTABLEKS R6 R2 K13 ["Components"]
  GETTABLEKS R5 R6 K14 ["TargetGridView"]
  CALL R4 1 1
  GETIMPORT R5 K11 [require]
  GETTABLEKS R7 R2 K13 ["Components"]
  GETTABLEKS R6 R7 K15 ["TargetSoftSnapView"]
  CALL R5 1 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R8 R2 K13 ["Components"]
  GETTABLEKS R7 R8 K16 ["HotkeyUsageInfo"]
  CALL R6 1 1
  GETIMPORT R7 K11 [require]
  GETTABLEKS R9 R2 K17 ["Utility"]
  GETTABLEKS R8 R9 K18 ["HotkeyHelpBuilder"]
  CALL R7 1 1
  GETIMPORT R8 K5 [game]
  LOADK R10 K19 ["EnableConstraintToolPartPassthroughFeature"]
  NAMECALL R8 R8 K20 ["GetFastFlag"]
  CALL R8 2 1
  NEWTABLE R9 8 0
  SETTABLEKS R9 R9 K21 ["__index"]
  DUPCLOSURE R10 K22 [PROTO_0]
  CAPTURE VAL R9
  SETTABLEKS R10 R9 K23 ["new"]
  DUPCLOSURE R10 K24 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K25 ["_renderSnapTarget"]
  DUPCLOSURE R10 K26 [PROTO_2]
  CAPTURE VAL R3
  SETTABLEKS R10 R9 K27 ["_renderSnap"]
  GETIMPORT R10 K30 [table.freeze]
  DUPTABLE R11 K33 [{"Hotkey", "LabelLocEntry"}]
  LOADK R12 K34 ["T"]
  SETTABLEKS R12 R11 K31 ["Hotkey"]
  LOADK R12 K35 ["DragTilt"]
  SETTABLEKS R12 R11 K32 ["LabelLocEntry"]
  CALL R10 1 1
  GETIMPORT R11 K30 [table.freeze]
  DUPTABLE R12 K33 [{"Hotkey", "LabelLocEntry"}]
  LOADK R13 K36 ["R"]
  SETTABLEKS R13 R12 K31 ["Hotkey"]
  LOADK R13 K37 ["DragRotate"]
  SETTABLEKS R13 R12 K32 ["LabelLocEntry"]
  CALL R11 1 1
  GETIMPORT R12 K30 [table.freeze]
  NEWTABLE R13 2 0
  LOADB R14 1
  DUPTABLE R15 K33 [{"Hotkey", "LabelLocEntry"}]
  LOADK R16 K38 ["G"]
  SETTABLEKS R16 R15 K31 ["Hotkey"]
  LOADK R16 K39 ["DisablePartPassthrough"]
  SETTABLEKS R16 R15 K32 ["LabelLocEntry"]
  SETTABLE R15 R13 R14
  LOADB R14 0
  DUPTABLE R15 K33 [{"Hotkey", "LabelLocEntry"}]
  LOADK R16 K38 ["G"]
  SETTABLEKS R16 R15 K31 ["Hotkey"]
  LOADK R16 K40 ["EnablePartPassthrough"]
  SETTABLEKS R16 R15 K32 ["LabelLocEntry"]
  SETTABLE R15 R13 R14
  CALL R12 1 1
  GETIMPORT R13 K30 [table.freeze]
  NEWTABLE R14 2 0
  LOADB R15 1
  DUPTABLE R16 K33 [{"Hotkey", "LabelLocEntry"}]
  LOADK R17 K41 ["Alt+W"]
  SETTABLEKS R17 R16 K31 ["Hotkey"]
  LOADK R17 K42 ["DisableWeldVisualization"]
  SETTABLEKS R17 R16 K32 ["LabelLocEntry"]
  SETTABLE R16 R14 R15
  LOADB R15 0
  DUPTABLE R16 K33 [{"Hotkey", "LabelLocEntry"}]
  LOADK R17 K41 ["Alt+W"]
  SETTABLEKS R17 R16 K31 ["Hotkey"]
  LOADK R17 K43 ["EnableWeldVisualization"]
  SETTABLEKS R17 R16 K32 ["LabelLocEntry"]
  SETTABLE R16 R14 R15
  CALL R13 1 1
  GETIMPORT R14 K30 [table.freeze]
  NEWTABLE R15 2 0
  LOADB R16 1
  DUPTABLE R17 K33 [{"Hotkey", "LabelLocEntry"}]
  LOADK R18 K44 ["Alt+D"]
  SETTABLEKS R18 R17 K31 ["Hotkey"]
  LOADK R18 K45 ["DisableConstraintVisualization"]
  SETTABLEKS R18 R17 K32 ["LabelLocEntry"]
  SETTABLE R17 R15 R16
  LOADB R16 0
  DUPTABLE R17 K33 [{"Hotkey", "LabelLocEntry"}]
  LOADK R18 K44 ["Alt+D"]
  SETTABLEKS R18 R17 K31 ["Hotkey"]
  LOADK R18 K46 ["EnableConstraintVisualization"]
  SETTABLEKS R18 R17 K32 ["LabelLocEntry"]
  SETTABLE R17 R15 R16
  CALL R14 1 1
  GETIMPORT R15 K30 [table.freeze]
  DUPTABLE R16 K33 [{"Hotkey", "LabelLocEntry"}]
  LOADK R17 K47 ["Esc"]
  SETTABLEKS R17 R16 K31 ["Hotkey"]
  LOADK R17 K48 ["Escape"]
  SETTABLEKS R17 R16 K32 ["LabelLocEntry"]
  CALL R15 1 1
  DUPCLOSURE R16 K49 [PROTO_3]
  CAPTURE VAL R15
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R7
  SETTABLEKS R16 R9 K50 ["_getHotkeyList"]
  DUPCLOSURE R16 K51 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R6
  SETTABLEKS R16 R9 K52 ["render"]
  RETURN R9 1
