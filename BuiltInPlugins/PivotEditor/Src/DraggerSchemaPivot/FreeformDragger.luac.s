PROTO_0:
  DUPTABLE R4 K6 [{"_draggerContext", "_draggerToolModel", "_dragInfo", "_snapPoints", "_originalPivot", "_tiltRotate"}]
  SETTABLEKS R0 R4 K0 ["_draggerContext"]
  SETTABLEKS R1 R4 K1 ["_draggerToolModel"]
  SETTABLEKS R2 R4 K2 ["_dragInfo"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K3 ["_snapPoints"]
  GETTABLEKS R5 R2 K7 ["ClickedSelectable"]
  NAMECALL R5 R5 K8 ["GetPivot"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K4 ["_originalPivot"]
  GETIMPORT R5 K11 [CFrame.new]
  CALL R5 0 1
  SETTABLEKS R5 R4 K5 ["_tiltRotate"]
  GETUPVAL R5 0
  FASTCALL2 SETMETATABLE R4 R5 [+3]
  GETIMPORT R3 K13 [setmetatable]
  CALL R3 2 1
  GETUPVAL R4 1
  GETTABLEKS R5 R2 K7 ["ClickedSelectable"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["_snapPoints"]
  GETTABLEKS R4 R2 K7 ["ClickedSelectable"]
  SETTABLEKS R4 R3 K14 ["_pivotOwner"]
  GETTABLEKS R4 R3 K3 ["_snapPoints"]
  SETTABLEKS R4 R3 K15 ["_originalPivotSnapPoints"]
  NAMECALL R4 R3 K16 ["update"]
  CALL R4 1 0
  RETURN R3 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["shouldShowActiveInstanceHighlight"]
  CALL R1 1 1
  JUMPIFNOT R1 [+15]
  GETTABLEKS R1 R0 K2 ["_draggerToolModel"]
  NAMECALL R1 R1 K3 ["getSelectionWrapper"]
  CALL R1 1 1
  NAMECALL R1 R1 K4 ["getActiveSelectable"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K5 ["_pivotOwner"]
  JUMPIFEQ R3 R1 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  LOADB R1 0
  RETURN R1 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["_lastDragTarget"]
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  NEWTABLE R1 4 0
  GETIMPORT R2 K2 [pairs]
  GETUPVAL R3 0
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLEKS R9 R0 K0 ["_lastDragTarget"]
  GETTABLEKS R8 R9 K3 ["mainCFrame"]
  GETTABLEKS R9 R6 K4 ["Offset"]
  MUL R7 R8 R9
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K12 [{"Axis", "Color", "Outset", "Scale", "AlwaysOnTop", "Thin"}]
  SETTABLEKS R7 R10 K6 ["Axis"]
  GETTABLEKS R11 R6 K7 ["Color"]
  SETTABLEKS R11 R10 K7 ["Color"]
  LOADK R11 K13 [0.5]
  SETTABLEKS R11 R10 K8 ["Outset"]
  GETTABLEKS R11 R0 K14 ["_draggerContext"]
  GETTABLEKS R13 R7 K15 ["Position"]
  NAMECALL R11 R11 K16 ["getHandleScale"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K9 ["Scale"]
  LOADB R11 1
  SETTABLEKS R11 R10 K10 ["AlwaysOnTop"]
  LOADB R11 1
  SETTABLEKS R11 R10 K11 ["Thin"]
  CALL R8 2 1
  SETTABLE R8 R1 R5
  FORGLOOP R2 2 [-39]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["createElement"]
  GETUPVAL R3 3
  DUPTABLE R4 K20 [{"DraggerContext", "CFrame", "IsActive"}]
  GETTABLEKS R5 R0 K14 ["_draggerContext"]
  SETTABLEKS R5 R4 K17 ["DraggerContext"]
  GETTABLEKS R6 R0 K0 ["_lastDragTarget"]
  GETTABLEKS R5 R6 K3 ["mainCFrame"]
  SETTABLEKS R5 R4 K18 ["CFrame"]
  NAMECALL R5 R0 K21 ["_selectedIsActive"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K19 ["IsActive"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K22 ["DraggedPivot"]
  GETTABLEKS R2 R0 K14 ["_draggerContext"]
  NAMECALL R2 R2 K23 ["shouldSnapPivotToGeometry"]
  CALL R2 1 1
  JUMPIFNOT R2 [+27]
  GETTABLEKS R2 R0 K24 ["_snapPoints"]
  JUMPIFNOT R2 [+24]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["createElement"]
  GETUPVAL R3 4
  DUPTABLE R4 K27 [{"Focus", "SnapPoints", "DraggerContext"}]
  GETTABLEKS R7 R0 K0 ["_lastDragTarget"]
  GETTABLEKS R6 R7 K3 ["mainCFrame"]
  GETTABLEKS R5 R6 K15 ["Position"]
  SETTABLEKS R5 R4 K25 ["Focus"]
  GETTABLEKS R5 R0 K24 ["_snapPoints"]
  SETTABLEKS R5 R4 K26 ["SnapPoints"]
  GETTABLEKS R5 R0 K14 ["_draggerContext"]
  SETTABLEKS R5 R4 K17 ["DraggerContext"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K26 ["SnapPoints"]
  GETUPVAL R2 5
  CALL R2 0 1
  JUMPIFNOT R2 [+97]
  GETTABLEKS R2 R0 K14 ["_draggerContext"]
  NAMECALL R2 R2 K23 ["shouldSnapPivotToGeometry"]
  CALL R2 1 1
  JUMPIF R2 [+91]
  GETTABLEKS R3 R0 K0 ["_lastDragTarget"]
  GETTABLEKS R2 R3 K28 ["targetMatrix"]
  GETTABLEKS R3 R2 K15 ["Position"]
  GETTABLEKS R4 R0 K14 ["_draggerContext"]
  MOVE R6 R3
  NAMECALL R4 R4 K16 ["getHandleScale"]
  CALL R4 2 1
  GETTABLEKS R7 R0 K0 ["_lastDragTarget"]
  GETTABLEKS R6 R7 K29 ["softSnaps"]
  LENGTH R5 R6
  JUMPIFNOTEQKN R5 K30 [0] [+57]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 6
  DUPTABLE R7 K36 [{"DragTarget", "SourceSize", "Scale", "GridSize", "MajorStep", "Color", "PrimaryColor"}]
  GETTABLEKS R8 R0 K0 ["_lastDragTarget"]
  SETTABLEKS R8 R7 K31 ["DragTarget"]
  GETIMPORT R9 K40 [Vector3.one]
  MULK R8 R9 K37 [4]
  SETTABLEKS R8 R7 K32 ["SourceSize"]
  SETTABLEKS R4 R7 K9 ["Scale"]
  GETTABLEKS R9 R0 K14 ["_draggerContext"]
  NAMECALL R9 R9 K41 ["getGridSnapEnabled"]
  CALL R9 1 1
  JUMPIFNOT R9 [+6]
  GETTABLEKS R8 R0 K14 ["_draggerContext"]
  NAMECALL R8 R8 K42 ["getGridSize"]
  CALL R8 1 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K33 ["GridSize"]
  GETTABLEKS R8 R0 K14 ["_draggerContext"]
  NAMECALL R8 R8 K43 ["getMajorGridIncrement"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K34 ["MajorStep"]
  GETTABLEKS R8 R0 K14 ["_draggerContext"]
  NAMECALL R8 R8 K44 ["getGridColor"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K7 ["Color"]
  GETTABLEKS R8 R0 K14 ["_draggerContext"]
  NAMECALL R8 R8 K45 ["getChosenColor"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K35 ["PrimaryColor"]
  CALL R5 2 1
  SETTABLEKS R5 R1 K46 ["TargetGrid"]
  JUMP [+16]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 7
  DUPTABLE R7 K47 [{"DragTarget", "DraggerContext"}]
  GETTABLEKS R8 R0 K0 ["_lastDragTarget"]
  SETTABLEKS R8 R7 K31 ["DragTarget"]
  GETTABLEKS R8 R0 K14 ["_draggerContext"]
  SETTABLEKS R8 R7 K17 ["DraggerContext"]
  CALL R5 2 1
  SETTABLEKS R5 R1 K48 ["TargetSoftSnapView"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K49 ["createFragment"]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["_originalPivot"]
  LOADNIL R3
  GETTABLEKS R4 R0 K1 ["_lastDragTarget"]
  JUMPIFNOT R4 [+4]
  GETTABLEKS R4 R0 K1 ["_lastDragTarget"]
  GETTABLEKS R3 R4 K2 ["targetMatrix"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["updateTiltRotate"]
  GETTABLEKS R6 R0 K4 ["_draggerToolModel"]
  GETTABLEKS R5 R6 K5 ["_draggerContext"]
  NAMECALL R5 R5 K6 ["getCameraCFrame"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K4 ["_draggerToolModel"]
  GETTABLEKS R6 R7 K5 ["_draggerContext"]
  NAMECALL R6 R6 K7 ["getMouseRay"]
  CALL R6 1 1
  NEWTABLE R7 0 0
  MOVE R8 R2
  MOVE R9 R3
  GETTABLEKS R10 R0 K8 ["_tiltRotate"]
  MOVE R11 R1
  LOADB R12 1
  CALL R4 8 1
  SETTABLEKS R4 R0 K8 ["_tiltRotate"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_draggerContext"]
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["snapToGridSize"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_5:
  LOADNIL R1
  GETTABLEKS R2 R0 K0 ["_lastDragTarget"]
  JUMPIFNOT R2 [+4]
  GETTABLEKS R2 R0 K0 ["_lastDragTarget"]
  GETTABLEKS R1 R2 K1 ["targetMatrix"]
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+58]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["getDragTarget"]
  NEWTABLE R3 0 0
  GETTABLEKS R4 R0 K3 ["_originalPivot"]
  GETUPVAL R5 2
  GETUPVAL R6 2
  GETUPVAL R7 2
  GETTABLEKS R9 R0 K4 ["_draggerToolModel"]
  GETTABLEKS R8 R9 K5 ["_draggerContext"]
  NAMECALL R8 R8 K6 ["getMouseRay"]
  CALL R8 1 1
  GETTABLEKS R10 R0 K5 ["_draggerContext"]
  NAMECALL R10 R10 K7 ["shouldGridSnap"]
  CALL R10 1 1
  JUMPIFNOT R10 [+6]
  GETTABLEKS R9 R0 K5 ["_draggerContext"]
  NAMECALL R9 R9 K8 ["getGridSize"]
  CALL R9 1 1
  JUMP [+1]
  LOADNIL R9
  GETTABLEKS R10 R0 K9 ["_tiltRotate"]
  MOVE R11 R1
  LOADB R12 1
  LOADB R13 0
  GETTABLEKS R14 R0 K5 ["_draggerContext"]
  NAMECALL R14 R14 K10 ["getSoftSnapMarginFactor"]
  CALL R14 1 1
  GETTABLEKS R15 R0 K5 ["_draggerContext"]
  NAMECALL R15 R15 K11 ["shouldPartSnap"]
  CALL R15 1 -1
  CALL R2 -1 1
  JUMPIFNOT R2 [+48]
  SETTABLEKS R2 R0 K0 ["_lastDragTarget"]
  GETUPVAL R3 3
  GETTABLEKS R5 R0 K12 ["_dragInfo"]
  GETTABLEKS R4 R5 K13 ["ClickedSelectable"]
  GETTABLEKS R5 R2 K14 ["mainCFrame"]
  CALL R3 2 0
  RETURN R0 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["getDragTarget"]
  GETTABLEKS R5 R0 K4 ["_draggerToolModel"]
  GETTABLEKS R4 R5 K5 ["_draggerContext"]
  NAMECALL R4 R4 K6 ["getMouseRay"]
  CALL R4 1 1
  MOVE R5 R2
  GETUPVAL R6 2
  NEWTABLE R7 0 0
  GETTABLEKS R8 R0 K3 ["_originalPivot"]
  GETUPVAL R9 2
  GETUPVAL R10 2
  GETUPVAL R11 2
  GETTABLEKS R12 R0 K9 ["_tiltRotate"]
  MOVE R13 R1
  LOADB R14 1
  CALL R3 11 1
  JUMPIFNOT R3 [+10]
  SETTABLEKS R3 R0 K0 ["_lastDragTarget"]
  GETUPVAL R4 3
  GETTABLEKS R6 R0 K12 ["_dragInfo"]
  GETTABLEKS R5 R6 K13 ["ClickedSelectable"]
  GETTABLEKS R6 R3 K14 ["mainCFrame"]
  CALL R4 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["getMouseRay"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K2 ["_draggerToolModel"]
  NAMECALL R2 R2 K3 ["getSchema"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K2 ["_draggerToolModel"]
  NAMECALL R3 R3 K4 ["getSelectionWrapper"]
  CALL R3 1 1
  NAMECALL R3 R3 K5 ["get"]
  CALL R3 1 1
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+34]
  GETTABLEKS R4 R2 K6 ["getMouseTarget"]
  GETTABLEKS R5 R0 K0 ["_draggerContext"]
  MOVE R6 R1
  MOVE R7 R3
  LOADB R8 1
  LOADB R9 0
  CALL R4 5 4
  JUMPIFNOT R4 [+52]
  GETTABLEKS R8 R0 K7 ["_pivotOwner"]
  JUMPIFEQ R4 R8 [+5]
  GETTABLEKS R8 R0 K7 ["_pivotOwner"]
  JUMPIFNOTEQ R5 R8 [+6]
  GETTABLEKS R8 R0 K8 ["_originalPivotSnapPoints"]
  SETTABLEKS R8 R0 K9 ["_snapPoints"]
  RETURN R0 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K10 ["Terrain"]
  JUMPIFEQ R4 R8 [+35]
  GETUPVAL R8 2
  MOVE R9 R4
  CALL R8 1 1
  SETTABLEKS R8 R0 K9 ["_snapPoints"]
  RETURN R0 0
  GETTABLEKS R4 R2 K6 ["getMouseTarget"]
  GETTABLEKS R5 R0 K0 ["_draggerContext"]
  MOVE R6 R1
  MOVE R7 R3
  LOADB R8 1
  CALL R4 4 1
  JUMPIFNOT R4 [+19]
  GETTABLEKS R5 R0 K7 ["_pivotOwner"]
  JUMPIFNOTEQ R4 R5 [+6]
  GETTABLEKS R5 R0 K8 ["_originalPivotSnapPoints"]
  SETTABLEKS R5 R0 K9 ["_snapPoints"]
  RETURN R0 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["Terrain"]
  JUMPIFEQ R4 R5 [+6]
  GETUPVAL R5 2
  MOVE R6 R4
  CALL R5 1 1
  SETTABLEKS R5 R0 K9 ["_snapPoints"]
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["_snapPoints"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["_draggerContext"]
  NAMECALL R1 R1 K2 ["getMouseLocation"]
  CALL R1 1 1
  LOADNIL R2
  LOADK R3 K3 [∞]
  GETIMPORT R4 K5 [ipairs]
  GETTABLEKS R5 R0 K0 ["_snapPoints"]
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETTABLEKS R9 R0 K1 ["_draggerContext"]
  GETTABLEKS R11 R8 K6 ["Position"]
  NAMECALL R9 R9 K7 ["worldToViewportPoint"]
  CALL R9 2 2
  JUMPIFNOT R10 [+14]
  GETIMPORT R11 K10 [Vector2.new]
  GETTABLEKS R12 R9 K11 ["X"]
  GETTABLEKS R13 R9 K12 ["Y"]
  CALL R11 2 1
  SUB R13 R11 R1
  GETTABLEKS R12 R13 K13 ["Magnitude"]
  JUMPIFNOTLT R12 R3 [+3]
  MOVE R3 R12
  MOVE R2 R8
  FORGLOOP R4 2 [inext] [-23]
  MOVE R4 R2
  JUMPIF R4 [+2]
  GETTABLEKS R4 R0 K14 ["_originalPivot"]
  DUPTABLE R5 K16 [{"mainCFrame"}]
  SETTABLEKS R4 R5 K15 ["mainCFrame"]
  SETTABLEKS R5 R0 K17 ["_lastDragTarget"]
  GETUPVAL R5 0
  GETTABLEKS R7 R0 K18 ["_dragInfo"]
  GETTABLEKS R6 R7 K19 ["ClickedSelectable"]
  MOVE R7 R4
  CALL R5 2 0
  RETURN R0 0

PROTO_8:
  NAMECALL R1 R0 K0 ["_recomputeSnapPoints"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["_snapToSnapPoints"]
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["shouldSnapPivotToGeometry"]
  CALL R1 1 1
  JUMPIFNOT R1 [+4]
  NAMECALL R1 R0 K2 ["_updateSnap"]
  CALL R1 1 0
  RETURN R0 0
  NAMECALL R1 R0 K3 ["_updateNoSnap"]
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["getAnalytics"]
  CALL R1 1 1
  LOADK R3 K2 ["setPivot"]
  DUPTABLE R4 K7 [{"gridSize", "rotateIncrement", "handleId", "pivotType"}]
  GETTABLEKS R5 R0 K0 ["_draggerContext"]
  NAMECALL R5 R5 K8 ["getGridSize"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K3 ["gridSize"]
  GETTABLEKS R5 R0 K0 ["_draggerContext"]
  NAMECALL R5 R5 K9 ["getRotateIncrement"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K4 ["rotateIncrement"]
  GETTABLEKS R6 R0 K10 ["_dragInfo"]
  GETTABLEKS R5 R6 K11 ["HandleId"]
  SETTABLEKS R5 R4 K5 ["handleId"]
  GETUPVAL R5 0
  GETTABLEKS R7 R0 K10 ["_dragInfo"]
  GETTABLEKS R6 R7 K12 ["ClickedSelectable"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K6 ["pivotType"]
  NAMECALL R1 R1 K13 ["sendEvent"]
  CALL R1 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Workspace"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R2 R1 K7 ["Packages"]
  GETTABLEKS R3 R2 K8 ["DraggerFramework"]
  GETIMPORT R4 K10 [require]
  GETTABLEKS R5 R2 K11 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R7 R3 K12 ["Utility"]
  GETTABLEKS R6 R7 K13 ["DragHelper"]
  CALL R5 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R8 R3 K12 ["Utility"]
  GETTABLEKS R7 R8 K14 ["Colors"]
  CALL R6 1 1
  GETIMPORT R7 K10 [require]
  GETTABLEKS R9 R3 K15 ["Components"]
  GETTABLEKS R8 R9 K16 ["MoveHandleView"]
  CALL R7 1 1
  GETIMPORT R8 K10 [require]
  GETTABLEKS R10 R3 K15 ["Components"]
  GETTABLEKS R9 R10 K17 ["TargetGridView"]
  CALL R8 1 1
  GETIMPORT R9 K10 [require]
  GETTABLEKS R11 R3 K15 ["Components"]
  GETTABLEKS R10 R11 K18 ["TargetSoftSnapView"]
  CALL R9 1 1
  GETIMPORT R10 K10 [require]
  GETTABLEKS R13 R1 K19 ["Src"]
  GETTABLEKS R12 R13 K12 ["Utility"]
  GETTABLEKS R11 R12 K20 ["setWorldPivot"]
  CALL R10 1 1
  GETIMPORT R11 K10 [require]
  GETTABLEKS R14 R1 K19 ["Src"]
  GETTABLEKS R13 R14 K12 ["Utility"]
  GETTABLEKS R12 R13 K21 ["computeSnapPointsForInstance"]
  CALL R11 1 1
  GETIMPORT R12 K10 [require]
  GETTABLEKS R15 R1 K19 ["Src"]
  GETTABLEKS R14 R15 K15 ["Components"]
  GETTABLEKS R13 R14 K22 ["SnapPoints"]
  CALL R12 1 1
  GETIMPORT R13 K10 [require]
  GETTABLEKS R15 R3 K15 ["Components"]
  GETTABLEKS R14 R15 K23 ["DraggedPivot"]
  CALL R13 1 1
  GETIMPORT R14 K10 [require]
  GETTABLEKS R17 R1 K19 ["Src"]
  GETTABLEKS R16 R17 K12 ["Utility"]
  GETTABLEKS R15 R16 K24 ["classifyInstancePivot"]
  CALL R14 1 1
  GETIMPORT R15 K10 [require]
  GETTABLEKS R17 R3 K25 ["Flags"]
  GETTABLEKS R16 R17 K26 ["getFFlagDraggerImprovements"]
  CALL R15 1 1
  FASTCALL VECTOR [+2]
  GETIMPORT R16 K29 [Vector3.new]
  CALL R16 0 1
  DUPTABLE R17 K36 [{"MinusZ", "PlusZ", "MinusY", "PlusY", "MinusX", "PlusX"}]
  DUPTABLE R18 K39 [{"Offset", "Color"}]
  GETIMPORT R19 K42 [CFrame.fromMatrix]
  MOVE R20 R16
  LOADK R21 K43 [{1, 0, 0}]
  LOADK R22 K44 [{0, 1, 0}]
  CALL R19 3 1
  SETTABLEKS R19 R18 K37 ["Offset"]
  GETTABLEKS R19 R6 K45 ["Z_AXIS"]
  SETTABLEKS R19 R18 K38 ["Color"]
  SETTABLEKS R18 R17 K30 ["MinusZ"]
  DUPTABLE R18 K39 [{"Offset", "Color"}]
  GETIMPORT R19 K42 [CFrame.fromMatrix]
  MOVE R20 R16
  LOADK R21 K43 [{1, 0, 0}]
  LOADK R22 K46 [{0, -1, 0}]
  CALL R19 3 1
  SETTABLEKS R19 R18 K37 ["Offset"]
  GETTABLEKS R19 R6 K45 ["Z_AXIS"]
  SETTABLEKS R19 R18 K38 ["Color"]
  SETTABLEKS R18 R17 K31 ["PlusZ"]
  DUPTABLE R18 K39 [{"Offset", "Color"}]
  GETIMPORT R19 K42 [CFrame.fromMatrix]
  MOVE R20 R16
  LOADK R21 K47 [{0, 0, 1}]
  LOADK R22 K43 [{1, 0, 0}]
  CALL R19 3 1
  SETTABLEKS R19 R18 K37 ["Offset"]
  GETTABLEKS R19 R6 K48 ["Y_AXIS"]
  SETTABLEKS R19 R18 K38 ["Color"]
  SETTABLEKS R18 R17 K32 ["MinusY"]
  DUPTABLE R18 K39 [{"Offset", "Color"}]
  GETIMPORT R19 K42 [CFrame.fromMatrix]
  MOVE R20 R16
  LOADK R21 K47 [{0, 0, 1}]
  LOADK R22 K49 [{-1, 0, 0}]
  CALL R19 3 1
  SETTABLEKS R19 R18 K37 ["Offset"]
  GETTABLEKS R19 R6 K48 ["Y_AXIS"]
  SETTABLEKS R19 R18 K38 ["Color"]
  SETTABLEKS R18 R17 K33 ["PlusY"]
  DUPTABLE R18 K39 [{"Offset", "Color"}]
  GETIMPORT R19 K42 [CFrame.fromMatrix]
  MOVE R20 R16
  LOADK R21 K44 [{0, 1, 0}]
  LOADK R22 K47 [{0, 0, 1}]
  CALL R19 3 1
  SETTABLEKS R19 R18 K37 ["Offset"]
  GETTABLEKS R19 R6 K50 ["X_AXIS"]
  SETTABLEKS R19 R18 K38 ["Color"]
  SETTABLEKS R18 R17 K34 ["MinusX"]
  DUPTABLE R18 K39 [{"Offset", "Color"}]
  GETIMPORT R19 K42 [CFrame.fromMatrix]
  MOVE R20 R16
  LOADK R21 K44 [{0, 1, 0}]
  LOADK R22 K51 [{0, 0, -1}]
  CALL R19 3 1
  SETTABLEKS R19 R18 K37 ["Offset"]
  GETTABLEKS R19 R6 K50 ["X_AXIS"]
  SETTABLEKS R19 R18 K38 ["Color"]
  SETTABLEKS R18 R17 K35 ["PlusX"]
  NEWTABLE R18 16 0
  SETTABLEKS R18 R18 K52 ["__index"]
  DUPCLOSURE R19 K53 [PROTO_0]
  CAPTURE VAL R18
  CAPTURE VAL R11
  SETTABLEKS R19 R18 K28 ["new"]
  DUPCLOSURE R19 K54 [PROTO_1]
  SETTABLEKS R19 R18 K55 ["_selectedIsActive"]
  DUPCLOSURE R19 K56 [PROTO_2]
  CAPTURE VAL R17
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R19 R18 K57 ["render"]
  DUPCLOSURE R19 K58 [PROTO_3]
  CAPTURE VAL R5
  SETTABLEKS R19 R18 K59 ["rotate"]
  DUPCLOSURE R19 K60 [PROTO_5]
  CAPTURE VAL R15
  CAPTURE VAL R5
  CAPTURE VAL R16
  CAPTURE VAL R10
  SETTABLEKS R19 R18 K61 ["_updateNoSnap"]
  DUPCLOSURE R19 K62 [PROTO_6]
  CAPTURE VAL R15
  CAPTURE VAL R0
  CAPTURE VAL R11
  SETTABLEKS R19 R18 K63 ["_recomputeSnapPoints"]
  DUPCLOSURE R19 K64 [PROTO_7]
  CAPTURE VAL R10
  SETTABLEKS R19 R18 K65 ["_snapToSnapPoints"]
  DUPCLOSURE R19 K66 [PROTO_8]
  SETTABLEKS R19 R18 K67 ["_updateSnap"]
  DUPCLOSURE R19 K68 [PROTO_9]
  SETTABLEKS R19 R18 K69 ["update"]
  DUPCLOSURE R19 K70 [PROTO_10]
  CAPTURE VAL R14
  SETTABLEKS R19 R18 K71 ["destroy"]
  RETURN R18 1
