PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["SelectedObject"]
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["SelectedObject"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R2
  CALL R3 2 1
  MOVE R0 R3
  GETTABLEKS R3 R1 K3 ["AddPointSubMode"]
  JUMPIFNOTEQKS R3 K4 ["Append"] [+15]
  GETTABLEKS R3 R1 K5 ["dispatchAddControlPoint"]
  GETUPVAL R4 2
  MOVE R5 R0
  GETTABLEKS R6 R1 K6 ["ControlPoints"]
  MOVE R7 R2
  CALL R4 3 1
  GETTABLEKS R7 R1 K6 ["ControlPoints"]
  LENGTH R6 R7
  ADDK R5 R6 K7 [1]
  CALL R3 2 0
  RETURN R0 0
  GETTABLEKS R3 R1 K3 ["AddPointSubMode"]
  JUMPIFNOTEQKS R3 K8 ["Prepend"] [+12]
  GETTABLEKS R3 R1 K5 ["dispatchAddControlPoint"]
  GETUPVAL R4 2
  MOVE R5 R0
  GETTABLEKS R6 R1 K6 ["ControlPoints"]
  MOVE R7 R2
  CALL R4 3 1
  LOADN R5 1
  CALL R3 2 0
  RETURN R0 0
  GETUPVAL R3 3
  MOVE R4 R0
  GETTABLEKS R6 R1 K6 ["ControlPoints"]
  GETTABLEN R5 R6 1
  MOVE R6 R2
  CALL R3 3 1
  GETUPVAL R4 3
  MOVE R5 R0
  GETTABLEKS R7 R1 K6 ["ControlPoints"]
  GETTABLEKS R9 R1 K6 ["ControlPoints"]
  LENGTH R8 R9
  GETTABLE R6 R7 R8
  MOVE R7 R2
  CALL R4 3 1
  JUMPIFNOT R3 [+5]
  GETTABLEKS R5 R1 K9 ["dispatchSetAddPointSubMode"]
  LOADK R6 K8 ["Prepend"]
  CALL R5 1 0
  RETURN R0 0
  JUMPIFNOT R4 [+5]
  GETTABLEKS R5 R1 K9 ["dispatchSetAddPointSubMode"]
  LOADK R6 K4 ["Append"]
  CALL R5 1 0
  RETURN R0 0
  GETTABLEKS R6 R1 K6 ["ControlPoints"]
  LENGTH R5 R6
  LOADN R6 1
  JUMPIFNOTLT R6 R5 [+35]
  GETUPVAL R5 4
  GETTABLEKS R6 R1 K1 ["SelectedObject"]
  MOVE R7 R0
  CALL R5 2 1
  GETTABLEN R7 R5 1
  ADDK R6 R7 K10 [2]
  GETTABLEN R7 R5 2
  GETTABLEN R8 R5 3
  JUMPIFEQKNIL R7 [+24]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K11 ["SnapToSegmentEpsilon"]
  JUMPIFNOTLT R7 R9 [+19]
  GETTABLEKS R9 R1 K5 ["dispatchAddControlPoint"]
  GETTABLEKS R10 R1 K1 ["SelectedObject"]
  MOVE R12 R8
  NAMECALL R10 R10 K12 ["GetPositionOnCurve"]
  CALL R10 2 1
  GETUPVAL R12 6
  JUMPIFNOT R12 [+6]
  FASTCALL1 MATH_FLOOR R6 [+3]
  MOVE R12 R6
  GETIMPORT R11 K15 [math.floor]
  CALL R11 1 1
  JUMP [+1]
  MOVE R11 R6
  CALL R9 2 0
  RETURN R0 0

PROTO_1:
  JUMPIF R1 [+7]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["SelectedObject"]
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R4 R2 K1 ["SelectedObject"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R3
  CALL R4 2 1
  GETUPVAL R5 0
  DUPTABLE R7 K5 [{"dragLocationAbs", "dragLocationRelative"}]
  SETTABLEKS R0 R7 K3 ["dragLocationAbs"]
  SETTABLEKS R4 R7 K4 ["dragLocationRelative"]
  NAMECALL R5 R5 K6 ["setState"]
  CALL R5 2 0
  GETTABLEKS R6 R2 K7 ["ControlPoints"]
  LENGTH R5 R6
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+72]
  GETTABLEKS R5 R2 K1 ["SelectedObject"]
  JUMPIFEQKNIL R5 [+68]
  GETTABLEKS R5 R2 K8 ["AddPointSubMode"]
  JUMPIFNOTEQKS R5 K9 ["Unselected"] [+64]
  GETUPVAL R5 2
  MOVE R6 R4
  GETTABLEKS R8 R2 K7 ["ControlPoints"]
  GETTABLEN R7 R8 1
  MOVE R8 R3
  CALL R5 3 1
  JUMPIFNOT R5 [+13]
  GETTABLEKS R5 R2 K10 ["dispatchSelectControlPoint"]
  LOADN R6 1
  CALL R5 1 0
  GETUPVAL R5 0
  DUPTABLE R7 K12 [{"hoveringSelectablePoint"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K11 ["hoveringSelectablePoint"]
  NAMECALL R5 R5 K6 ["setState"]
  CALL R5 2 0
  RETURN R0 0
  GETUPVAL R5 2
  MOVE R6 R4
  GETTABLEKS R8 R2 K7 ["ControlPoints"]
  GETTABLEKS R10 R2 K7 ["ControlPoints"]
  LENGTH R9 R10
  GETTABLE R7 R8 R9
  MOVE R8 R3
  CALL R5 3 1
  JUMPIFNOT R5 [+15]
  GETTABLEKS R5 R2 K10 ["dispatchSelectControlPoint"]
  GETTABLEKS R7 R2 K7 ["ControlPoints"]
  LENGTH R6 R7
  CALL R5 1 0
  GETUPVAL R5 0
  DUPTABLE R7 K12 [{"hoveringSelectablePoint"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K11 ["hoveringSelectablePoint"]
  NAMECALL R5 R5 K6 ["setState"]
  CALL R5 2 0
  RETURN R0 0
  GETTABLEKS R5 R2 K13 ["SelectedControlPointIndex"]
  JUMPIFEQKN R5 K14 [0] [+13]
  GETTABLEKS R5 R2 K10 ["dispatchSelectControlPoint"]
  LOADN R6 0
  CALL R5 1 0
  GETUPVAL R5 0
  DUPTABLE R7 K12 [{"hoveringSelectablePoint"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K11 ["hoveringSelectablePoint"]
  NAMECALL R5 R5 K6 ["setState"]
  CALL R5 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["SelectedObject"]
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["SelectedObject"]
  GETTABLEKS R5 R2 K2 ["AddPointSubMode"]
  JUMPIFNOTEQKS R5 K3 ["Append"] [+3]
  LOADK R4 K4 ["Right"]
  JUMP [+1]
  LOADK R4 K5 ["Left"]
  GETTABLEKS R6 R2 K6 ["ControlPoints"]
  LENGTH R5 R6
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+20]
  JUMPIFEQKNIL R3 [+18]
  GETTABLEKS R5 R2 K2 ["AddPointSubMode"]
  JUMPIFNOTEQKS R5 K7 ["Unselected"] [+5]
  GETTABLEKS R5 R2 K8 ["SelectedControlPointIndex"]
  JUMPIFEQKN R5 K9 [0] [+10]
  GETTABLEKS R5 R2 K10 ["dispatchSetControlPointTangent"]
  GETTABLEKS R6 R3 K11 ["SelectedControlPoint"]
  MOVE R7 R4
  MOVE R8 R1
  LOADB R9 0
  LOADB R10 0
  CALL R5 5 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R1 R0 K0 ["onDragAreaClicked"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K1 ["onDragAreaHoverMoved"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["onDragAreaDragged"]
  DUPTABLE R3 K4 [{"hoveringSelectablePoint"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K3 ["hoveringSelectablePoint"]
  NAMECALL R1 R0 K5 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["dispatchSetIsDraggingPoint"]
  LOADB R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["dispatchSetIsDraggingPoint"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["SelectedObject"]
  JUMPIFNOTEQKNIL R3 [+3]
  LOADNIL R3
  RETURN R3 1
  GETTABLEKS R3 R1 K2 ["SelectedObject"]
  GETTABLEKS R4 R1 K3 ["Path2DToolMode"]
  JUMPIFNOTEQKS R4 K4 ["AddPoint"] [+5]
  GETTABLEKS R4 R3 K5 ["Parent"]
  JUMPIFNOTEQKNIL R4 [+3]
  LOADNIL R4
  RETURN R4 1
  GETTABLEKS R4 R3 K5 ["Parent"]
  GETTABLEKS R7 R1 K6 ["ControlPoints"]
  LENGTH R6 R7
  JUMPIFEQKN R6 K7 [0] [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETTABLEKS R7 R1 K6 ["ControlPoints"]
  LENGTH R6 R7
  LOADN R7 2
  JUMPIFNOTLT R6 R7 [+9]
  GETTABLEKS R6 R1 K8 ["AddPointSubMode"]
  JUMPIFEQKS R6 K9 ["Append"] [+5]
  GETTABLEKS R6 R1 K10 ["dispatchSetAddPointSubMode"]
  LOADK R7 K9 ["Append"]
  CALL R6 1 0
  LOADNIL R6
  LOADNIL R7
  JUMPIF R5 [+4]
  GETTABLEKS R8 R1 K8 ["AddPointSubMode"]
  JUMPIFNOTEQKS R8 K11 ["Unselected"] [+6]
  GETIMPORT R8 K14 [UDim2.new]
  CALL R8 0 1
  MOVE R6 R8
  JUMP [+29]
  GETTABLEKS R8 R1 K8 ["AddPointSubMode"]
  JUMPIFNOTEQKS R8 K9 ["Append"] [+8]
  GETTABLEKS R8 R1 K6 ["ControlPoints"]
  GETTABLEKS R10 R1 K6 ["ControlPoints"]
  LENGTH R9 R10
  GETTABLE R7 R8 R9
  JUMP [+7]
  GETTABLEKS R8 R1 K8 ["AddPointSubMode"]
  JUMPIFNOTEQKS R8 K15 ["Prepend"] [+4]
  GETTABLEKS R8 R1 K6 ["ControlPoints"]
  GETTABLEN R7 R8 1
  JUMPIFEQKNIL R7 [+10]
  GETUPVAL R8 0
  GETUPVAL R9 1
  GETTABLEKS R10 R7 K16 ["Position"]
  MOVE R11 R4
  CALL R9 2 1
  MOVE R10 R4
  CALL R8 2 1
  MOVE R6 R8
  GETTABLEKS R9 R2 K17 ["dragLocationAbs"]
  JUMPIFEQKNIL R9 [+6]
  GETUPVAL R8 0
  GETTABLEKS R9 R2 K17 ["dragLocationAbs"]
  CALL R8 1 1
  JUMP [+3]
  GETIMPORT R8 K14 [UDim2.new]
  CALL R8 0 1
  GETTABLEKS R10 R1 K18 ["ToolbarHovered"]
  NOT R9 R10
  JUMPIFNOT R9 [+10]
  GETTABLEKS R10 R1 K19 ["IsDraggingPoint"]
  NOT R9 R10
  JUMPIFNOT R9 [+6]
  GETTABLEKS R10 R2 K17 ["dragLocationAbs"]
  JUMPIFNOTEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  MOVE R10 R9
  JUMPIFNOT R10 [+11]
  NOT R10 R5
  JUMPIFNOT R10 [+9]
  LOADB R10 0
  JUMPIFEQKNIL R7 [+7]
  GETTABLEKS R11 R1 K8 ["AddPointSubMode"]
  JUMPIFNOTEQKS R11 K11 ["Unselected"] [+2]
  LOADB R10 0 +1
  LOADB R10 1
  LOADB R11 0
  GETTABLEKS R12 R1 K8 ["AddPointSubMode"]
  JUMPIFEQKS R12 K11 ["Unselected"] [+18]
  JUMPIFNOT R9 [+16]
  GETUPVAL R12 0
  GETUPVAL R13 1
  GETUPVAL R14 2
  GETTABLEKS R15 R2 K20 ["dragLocationRelative"]
  GETTABLEKS R16 R1 K6 ["ControlPoints"]
  MOVE R17 R4
  CALL R14 3 1
  MOVE R15 R4
  CALL R13 2 1
  MOVE R14 R4
  CALL R12 2 1
  MOVE R8 R12
  LOADB R11 1
  JUMP [+38]
  GETTABLEKS R12 R1 K8 ["AddPointSubMode"]
  JUMPIFNOTEQKS R12 K11 ["Unselected"] [+35]
  JUMPIFNOT R9 [+33]
  GETTABLEKS R13 R1 K6 ["ControlPoints"]
  LENGTH R12 R13
  LOADN R13 1
  JUMPIFNOTLT R13 R12 [+28]
  GETUPVAL R12 3
  MOVE R13 R3
  GETTABLEKS R14 R2 K20 ["dragLocationRelative"]
  CALL R12 2 1
  GETTABLEN R13 R12 2
  GETTABLEN R14 R12 3
  JUMPIFEQKNIL R13 [+19]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K21 ["SnapToSegmentEpsilon"]
  JUMPIFNOTLT R13 R15 [+14]
  GETUPVAL R15 0
  GETUPVAL R16 1
  MOVE R19 R14
  NAMECALL R17 R3 K22 ["GetPositionOnCurve"]
  CALL R17 2 1
  MOVE R18 R4
  CALL R16 2 -1
  CALL R15 -1 1
  MOVE R8 R15
  GETTABLEKS R15 R2 K23 ["hoveringSelectablePoint"]
  NOT R11 R15
  LOADNIL R12
  JUMPIFNOT R10 [+26]
  JUMPIFEQKNIL R7 [+25]
  JUMPIFEQKNIL R3 [+23]
  GETTABLEKS R14 R1 K8 ["AddPointSubMode"]
  JUMPIFNOTEQKS R14 K9 ["Append"] [+4]
  GETTABLEKS R13 R7 K24 ["RightTangent"]
  JUMP [+2]
  GETTABLEKS R13 R7 K25 ["LeftTangent"]
  NEWTABLE R14 0 2
  GETUPVAL R15 5
  MOVE R16 R6
  MOVE R17 R13
  MOVE R18 R13
  CALL R15 3 1
  GETUPVAL R16 5
  MOVE R17 R8
  CALL R16 1 -1
  SETLIST R14 R15 -1 [1]
  MOVE R12 R14
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K26 ["createElement"]
  GETIMPORT R15 K28 [game]
  LOADK R17 K29 ["PathEditorSurfaceGui"]
  NAMECALL R15 R15 K30 ["GetFastFlag"]
  CALL R15 2 1
  JUMPIFNOT R15 [+2]
  GETUPVAL R14 7
  JUMP [+1]
  LOADK R14 K31 ["ScreenGui"]
  DUPTABLE R15 K34 [{"DisplayOrder", "ZIndexBehavior"}]
  LOADN R16 3
  SETTABLEKS R16 R15 K32 ["DisplayOrder"]
  GETIMPORT R16 K37 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R16 R15 K33 ["ZIndexBehavior"]
  NEWTABLE R16 0 1
  GETUPVAL R18 6
  GETTABLEKS R17 R18 K26 ["createElement"]
  GETUPVAL R18 8
  DUPTABLE R19 K46 [{"Style", "Size", "FollowCursorOnDrag", "OnSelected", "OnDragStart", "OnDragMoved", "OnDragEnd", "OnHoverMoved"}]
  LOADK R20 K4 ["AddPoint"]
  SETTABLEKS R20 R19 K38 ["Style"]
  GETIMPORT R20 K48 [UDim2.fromScale]
  LOADN R21 1
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K39 ["Size"]
  LOADB R20 0
  SETTABLEKS R20 R19 K40 ["FollowCursorOnDrag"]
  GETTABLEKS R20 R0 K49 ["onDragAreaClicked"]
  SETTABLEKS R20 R19 K41 ["OnSelected"]
  NEWCLOSURE R20 P0
  CAPTURE VAL R1
  SETTABLEKS R20 R19 K42 ["OnDragStart"]
  GETTABLEKS R20 R0 K50 ["onDragAreaDragged"]
  SETTABLEKS R20 R19 K43 ["OnDragMoved"]
  NEWCLOSURE R20 P1
  CAPTURE VAL R1
  SETTABLEKS R20 R19 K44 ["OnDragEnd"]
  GETTABLEKS R20 R0 K51 ["onDragAreaHoverMoved"]
  SETTABLEKS R20 R19 K45 ["OnHoverMoved"]
  DUPTABLE R20 K54 [{"Line", "ControlPoint"}]
  JUMPIFNOT R10 [+20]
  GETUPVAL R22 6
  GETTABLEKS R21 R22 K26 ["createElement"]
  GETUPVAL R22 9
  DUPTABLE R23 K57 [{"Color", "Style", "Thickness", "ControlPoints"}]
  GETTABLEKS R24 R3 K58 ["Color3"]
  SETTABLEKS R24 R23 K55 ["Color"]
  LOADK R24 K59 ["Tangent"]
  SETTABLEKS R24 R23 K38 ["Style"]
  GETTABLEKS R24 R3 K56 ["Thickness"]
  SETTABLEKS R24 R23 K56 ["Thickness"]
  SETTABLEKS R12 R23 K6 ["ControlPoints"]
  CALL R21 2 1
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K52 ["Line"]
  JUMPIFNOT R11 [+15]
  GETUPVAL R22 6
  GETTABLEKS R21 R22 K26 ["createElement"]
  GETUPVAL R22 10
  DUPTABLE R23 K61 [{"Style", "Position", "ZIndex"}]
  LOADK R24 K53 ["ControlPoint"]
  SETTABLEKS R24 R23 K38 ["Style"]
  SETTABLEKS R8 R23 K16 ["Position"]
  LOADN R24 1
  SETTABLEKS R24 R23 K60 ["ZIndex"]
  CALL R21 2 1
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K53 ["ControlPoint"]
  CALL R17 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  RETURN R13 -1

PROTO_7:
  DUPTABLE R2 K11 [{"Refreshed", "SelectedObject", "ParentAbsPos", "ParentAbsSize", "ParentAbsRotation", "Path2DToolMode", "ControlPoints", "ToolbarHovered", "IsDraggingPoint", "AddPointSubMode", "SelectedControlPointIndex"}]
  GETTABLEKS R4 R0 K12 ["PathReducer"]
  GETTABLEKS R3 R4 K0 ["Refreshed"]
  SETTABLEKS R3 R2 K0 ["Refreshed"]
  GETTABLEKS R4 R0 K12 ["PathReducer"]
  GETTABLEKS R3 R4 K1 ["SelectedObject"]
  SETTABLEKS R3 R2 K1 ["SelectedObject"]
  GETTABLEKS R4 R0 K12 ["PathReducer"]
  GETTABLEKS R3 R4 K2 ["ParentAbsPos"]
  SETTABLEKS R3 R2 K2 ["ParentAbsPos"]
  GETTABLEKS R4 R0 K12 ["PathReducer"]
  GETTABLEKS R3 R4 K3 ["ParentAbsSize"]
  SETTABLEKS R3 R2 K3 ["ParentAbsSize"]
  GETTABLEKS R4 R0 K12 ["PathReducer"]
  GETTABLEKS R3 R4 K4 ["ParentAbsRotation"]
  SETTABLEKS R3 R2 K4 ["ParentAbsRotation"]
  GETTABLEKS R4 R0 K12 ["PathReducer"]
  GETTABLEKS R3 R4 K5 ["Path2DToolMode"]
  SETTABLEKS R3 R2 K5 ["Path2DToolMode"]
  GETTABLEKS R4 R0 K12 ["PathReducer"]
  GETTABLEKS R3 R4 K6 ["ControlPoints"]
  SETTABLEKS R3 R2 K6 ["ControlPoints"]
  GETTABLEKS R4 R0 K12 ["PathReducer"]
  GETTABLEKS R3 R4 K7 ["ToolbarHovered"]
  SETTABLEKS R3 R2 K7 ["ToolbarHovered"]
  GETTABLEKS R4 R0 K12 ["PathReducer"]
  GETTABLEKS R3 R4 K8 ["IsDraggingPoint"]
  SETTABLEKS R3 R2 K8 ["IsDraggingPoint"]
  GETTABLEKS R4 R0 K12 ["PathReducer"]
  GETTABLEKS R3 R4 K9 ["AddPointSubMode"]
  SETTABLEKS R3 R2 K9 ["AddPointSubMode"]
  GETTABLEKS R4 R0 K12 ["PathReducer"]
  GETTABLEKS R3 R4 K10 ["SelectedControlPointIndex"]
  SETTABLEKS R3 R2 K10 ["SelectedControlPointIndex"]
  RETURN R2 1

PROTO_8:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R5 0
  GETUPVAL R6 1
  MOVE R7 R0
  MOVE R8 R1
  MOVE R9 R2
  MOVE R10 R3
  MOVE R11 R4
  CALL R6 5 -1
  CALL R5 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R1 K5 [{"dispatchAddControlPoint", "dispatchSelectControlPoint", "dispatchSetControlPointTangent", "dispatchSetIsDraggingPoint", "dispatchSetAddPointSubMode"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchAddControlPoint"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["dispatchSelectControlPoint"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["dispatchSetControlPointTangent"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["dispatchSetIsDraggingPoint"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K4 ["dispatchSetAddPointSubMode"]
  RETURN R1 1

PROTO_14:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETUPVAL R2 1
  GETTABLEKS R3 R1 K1 ["SelectedObject"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K2 ["ParentAbsPos"]
  GETTABLEKS R4 R1 K3 ["ParentAbsSize"]
  GETUPVAL R5 2
  SUB R6 R0 R2
  CALL R5 1 1
  GETTABLEKS R6 R1 K4 ["AddPointSubMode"]
  JUMPIFNOTEQKS R6 K5 ["Append"] [+16]
  GETTABLEKS R6 R1 K6 ["dispatchAddControlPoint"]
  GETUPVAL R7 3
  MOVE R8 R5
  GETTABLEKS R9 R1 K7 ["ControlPoints"]
  MOVE R10 R3
  MOVE R11 R4
  CALL R7 4 1
  GETTABLEKS R10 R1 K7 ["ControlPoints"]
  LENGTH R9 R10
  ADDK R8 R9 K8 [1]
  CALL R6 2 0
  RETURN R0 0
  GETTABLEKS R6 R1 K4 ["AddPointSubMode"]
  JUMPIFNOTEQKS R6 K9 ["Prepend"] [+13]
  GETTABLEKS R6 R1 K6 ["dispatchAddControlPoint"]
  GETUPVAL R7 3
  MOVE R8 R5
  GETTABLEKS R9 R1 K7 ["ControlPoints"]
  MOVE R10 R3
  MOVE R11 R4
  CALL R7 4 1
  LOADN R8 1
  CALL R6 2 0
  RETURN R0 0
  GETUPVAL R6 4
  MOVE R7 R5
  GETTABLEKS R9 R1 K7 ["ControlPoints"]
  GETTABLEN R8 R9 1
  MOVE R9 R3
  MOVE R10 R4
  CALL R6 4 1
  GETUPVAL R7 4
  MOVE R8 R5
  GETTABLEKS R10 R1 K7 ["ControlPoints"]
  GETTABLEKS R12 R1 K7 ["ControlPoints"]
  LENGTH R11 R12
  GETTABLE R9 R10 R11
  MOVE R10 R3
  MOVE R11 R4
  CALL R7 4 1
  JUMPIFNOT R6 [+5]
  GETTABLEKS R8 R1 K10 ["dispatchSetAddPointSubMode"]
  LOADK R9 K9 ["Prepend"]
  CALL R8 1 0
  RETURN R0 0
  JUMPIFNOT R7 [+5]
  GETTABLEKS R8 R1 K10 ["dispatchSetAddPointSubMode"]
  LOADK R9 K5 ["Append"]
  CALL R8 1 0
  RETURN R0 0
  GETTABLEKS R9 R1 K7 ["ControlPoints"]
  LENGTH R8 R9
  LOADN R9 1
  JUMPIFNOTLT R9 R8 [+43]
  GETUPVAL R9 5
  JUMPIFNOT R9 [+6]
  GETUPVAL R8 6
  GETTABLEKS R9 R1 K1 ["SelectedObject"]
  SUB R10 R0 R2
  CALL R8 2 1
  JUMP [+5]
  GETUPVAL R8 6
  GETTABLEKS R9 R1 K1 ["SelectedObject"]
  MOVE R10 R0
  CALL R8 2 1
  GETTABLEN R10 R8 1
  ADDK R9 R10 K11 [2]
  GETTABLEN R10 R8 2
  GETTABLEN R11 R8 3
  JUMPIFEQKNIL R10 [+24]
  GETUPVAL R13 7
  GETTABLEKS R12 R13 K12 ["SnapToSegmentEpsilon"]
  JUMPIFNOTLT R10 R12 [+19]
  GETUPVAL R13 2
  MOVE R14 R3
  CALL R13 1 1
  GETUPVAL R14 2
  MOVE R15 R2
  CALL R14 1 1
  SUB R12 R13 R14
  GETUPVAL R14 8
  GETTABLEKS R15 R1 K1 ["SelectedObject"]
  MOVE R16 R11
  CALL R14 2 1
  ADD R13 R14 R12
  GETTABLEKS R14 R1 K6 ["dispatchAddControlPoint"]
  MOVE R15 R13
  MOVE R16 R9
  CALL R14 2 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"dragLocation"}]
  SETTABLEKS R0 R3 K0 ["dragLocation"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R3 R1 K4 ["ControlPoints"]
  LENGTH R2 R3
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+85]
  GETTABLEKS R2 R1 K5 ["SelectedObject"]
  JUMPIFEQKNIL R2 [+81]
  GETTABLEKS R2 R1 K6 ["AddPointSubMode"]
  JUMPIFNOTEQKS R2 K7 ["Unselected"] [+77]
  GETUPVAL R2 1
  GETTABLEKS R3 R1 K5 ["SelectedObject"]
  CALL R2 1 1
  GETUPVAL R3 2
  SUB R4 R0 R2
  CALL R3 1 1
  GETUPVAL R4 3
  MOVE R5 R3
  GETTABLEKS R7 R1 K4 ["ControlPoints"]
  GETTABLEN R6 R7 1
  GETTABLEKS R7 R1 K8 ["ParentAbsPos"]
  GETTABLEKS R8 R1 K9 ["ParentAbsSize"]
  CALL R4 4 1
  JUMPIFNOT R4 [+13]
  GETTABLEKS R4 R1 K10 ["dispatchSelectControlPoint"]
  LOADN R5 1
  CALL R4 1 0
  GETUPVAL R4 0
  DUPTABLE R6 K12 [{"hoveringSelectablePoint"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K11 ["hoveringSelectablePoint"]
  NAMECALL R4 R4 K2 ["setState"]
  CALL R4 2 0
  RETURN R0 0
  GETUPVAL R4 3
  MOVE R5 R3
  GETTABLEKS R7 R1 K4 ["ControlPoints"]
  GETTABLEKS R9 R1 K4 ["ControlPoints"]
  LENGTH R8 R9
  GETTABLE R6 R7 R8
  GETTABLEKS R7 R1 K8 ["ParentAbsPos"]
  GETTABLEKS R8 R1 K9 ["ParentAbsSize"]
  CALL R4 4 1
  JUMPIFNOT R4 [+15]
  GETTABLEKS R4 R1 K10 ["dispatchSelectControlPoint"]
  GETTABLEKS R6 R1 K4 ["ControlPoints"]
  LENGTH R5 R6
  CALL R4 1 0
  GETUPVAL R4 0
  DUPTABLE R6 K12 [{"hoveringSelectablePoint"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K11 ["hoveringSelectablePoint"]
  NAMECALL R4 R4 K2 ["setState"]
  CALL R4 2 0
  RETURN R0 0
  GETTABLEKS R4 R1 K13 ["SelectedControlPointIndex"]
  JUMPIFEQKN R4 K14 [0] [+13]
  GETTABLEKS R4 R1 K10 ["dispatchSelectControlPoint"]
  LOADN R5 0
  CALL R4 1 0
  GETUPVAL R4 0
  DUPTABLE R6 K12 [{"hoveringSelectablePoint"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K11 ["hoveringSelectablePoint"]
  NAMECALL R4 R4 K2 ["setState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["SelectedObject"]
  GETTABLEKS R5 R2 K2 ["AddPointSubMode"]
  JUMPIFNOTEQKS R5 K3 ["Append"] [+3]
  LOADK R4 K4 ["Right"]
  JUMP [+1]
  LOADK R4 K5 ["Left"]
  GETTABLEKS R6 R2 K6 ["ControlPoints"]
  LENGTH R5 R6
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+16]
  JUMPIFEQKNIL R3 [+14]
  GETTABLEKS R5 R2 K2 ["AddPointSubMode"]
  JUMPIFEQKS R5 K7 ["Unselected"] [+10]
  GETTABLEKS R5 R2 K8 ["dispatchSetControlPointTangent"]
  GETTABLEKS R6 R3 K9 ["SelectedControlPoint"]
  MOVE R7 R4
  MOVE R8 R1
  LOADB R9 0
  LOADB R10 0
  CALL R5 5 0
  RETURN R0 0

PROTO_17:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  SETTABLEKS R1 R0 K0 ["onDragAreaClicked"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K1 ["onDragAreaHoverMoved"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["onDragAreaDragged"]
  DUPTABLE R3 K4 [{"hoveringSelectablePoint"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K3 ["hoveringSelectablePoint"]
  NAMECALL R1 R0 K5 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["dispatchSetIsDraggingPoint"]
  LOADB R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["dispatchSetIsDraggingPoint"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_20:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["SelectedObject"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R3 R1 K3 ["Path2DToolMode"]
  JUMPIFEQKS R3 K4 ["AddPoint"] [+3]
  LOADNIL R3
  RETURN R3 1
  GETUPVAL R3 0
  GETTABLEKS R4 R1 K2 ["SelectedObject"]
  CALL R3 1 1
  GETTABLEKS R6 R1 K5 ["ControlPoints"]
  LENGTH R5 R6
  JUMPIFEQKN R5 K6 [0] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETTABLEKS R6 R1 K5 ["ControlPoints"]
  LENGTH R5 R6
  LOADN R6 2
  JUMPIFNOTLT R5 R6 [+9]
  GETTABLEKS R5 R1 K7 ["AddPointSubMode"]
  JUMPIFEQKS R5 K8 ["Append"] [+5]
  GETTABLEKS R5 R1 K9 ["dispatchSetAddPointSubMode"]
  LOADK R6 K8 ["Append"]
  CALL R5 1 0
  LOADNIL R5
  LOADNIL R6
  JUMPIF R4 [+4]
  GETTABLEKS R7 R1 K7 ["AddPointSubMode"]
  JUMPIFNOTEQKS R7 K10 ["Unselected"] [+6]
  GETIMPORT R7 K13 [UDim2.new]
  CALL R7 0 1
  MOVE R5 R7
  JUMP [+36]
  GETTABLEKS R7 R1 K7 ["AddPointSubMode"]
  JUMPIFNOTEQKS R7 K8 ["Append"] [+8]
  GETTABLEKS R7 R1 K5 ["ControlPoints"]
  GETTABLEKS R9 R1 K5 ["ControlPoints"]
  LENGTH R8 R9
  GETTABLE R6 R7 R8
  JUMP [+7]
  GETTABLEKS R7 R1 K7 ["AddPointSubMode"]
  JUMPIFNOTEQKS R7 K14 ["Prepend"] [+4]
  GETTABLEKS R7 R1 K5 ["ControlPoints"]
  GETTABLEN R6 R7 1
  JUMPIFEQKNIL R6 [+17]
  GETTABLEKS R7 R1 K2 ["SelectedObject"]
  JUMPIFEQKNIL R7 [+13]
  GETUPVAL R7 1
  GETTABLEKS R8 R6 K15 ["Position"]
  GETTABLEKS R10 R1 K2 ["SelectedObject"]
  GETTABLEKS R9 R10 K16 ["Parent"]
  CALL R7 2 1
  GETUPVAL R8 2
  MOVE R9 R3
  CALL R8 1 1
  ADD R5 R7 R8
  GETTABLEKS R8 R2 K17 ["dragLocation"]
  JUMPIFEQKNIL R8 [+6]
  GETUPVAL R7 2
  GETTABLEKS R8 R2 K17 ["dragLocation"]
  CALL R7 1 1
  JUMP [+3]
  GETIMPORT R7 K13 [UDim2.new]
  CALL R7 0 1
  GETTABLEKS R9 R1 K18 ["ToolbarHovered"]
  NOT R8 R9
  JUMPIFNOT R8 [+10]
  GETTABLEKS R9 R1 K19 ["IsDraggingPoint"]
  NOT R8 R9
  JUMPIFNOT R8 [+6]
  GETTABLEKS R9 R2 K17 ["dragLocation"]
  JUMPIFNOTEQKNIL R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  MOVE R9 R8
  JUMPIFNOT R9 [+11]
  NOT R9 R4
  JUMPIFNOT R9 [+9]
  LOADB R9 0
  JUMPIFEQKNIL R6 [+7]
  GETTABLEKS R10 R1 K7 ["AddPointSubMode"]
  JUMPIFNOTEQKS R10 K10 ["Unselected"] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  LOADB R10 0
  GETTABLEKS R11 R1 K7 ["AddPointSubMode"]
  JUMPIFEQKS R11 K10 ["Unselected"] [+32]
  JUMPIFNOT R8 [+30]
  GETTABLEKS R11 R1 K2 ["SelectedObject"]
  JUMPIFEQKNIL R11 [+27]
  GETUPVAL R11 1
  GETUPVAL R13 3
  GETUPVAL R14 2
  GETTABLEKS R16 R2 K17 ["dragLocation"]
  SUB R15 R16 R3
  CALL R14 1 1
  GETTABLEKS R15 R1 K5 ["ControlPoints"]
  GETTABLEKS R16 R1 K20 ["ParentAbsPos"]
  GETTABLEKS R17 R1 K21 ["ParentAbsSize"]
  CALL R13 4 1
  GETUPVAL R14 2
  MOVE R15 R3
  CALL R14 1 1
  ADD R12 R13 R14
  GETTABLEKS R14 R1 K2 ["SelectedObject"]
  GETTABLEKS R13 R14 K16 ["Parent"]
  CALL R11 2 1
  MOVE R7 R11
  LOADB R10 1
  JUMP [+58]
  GETTABLEKS R11 R1 K7 ["AddPointSubMode"]
  JUMPIFNOTEQKS R11 K10 ["Unselected"] [+55]
  JUMPIFNOT R8 [+53]
  GETTABLEKS R12 R1 K5 ["ControlPoints"]
  LENGTH R11 R12
  LOADN R12 1
  JUMPIFNOTLT R12 R11 [+48]
  GETTABLEKS R11 R1 K2 ["SelectedObject"]
  JUMPIFEQKNIL R11 [+44]
  GETUPVAL R11 0
  GETTABLEKS R13 R1 K2 ["SelectedObject"]
  GETTABLEKS R12 R13 K16 ["Parent"]
  CALL R11 1 1
  GETUPVAL R13 4
  JUMPIFNOT R13 [+8]
  GETUPVAL R12 5
  GETTABLEKS R13 R1 K2 ["SelectedObject"]
  GETTABLEKS R15 R2 K17 ["dragLocation"]
  SUB R14 R15 R11
  CALL R12 2 1
  JUMP [+6]
  GETUPVAL R12 5
  GETTABLEKS R13 R1 K2 ["SelectedObject"]
  GETTABLEKS R14 R2 K17 ["dragLocation"]
  CALL R12 2 1
  GETTABLEN R13 R12 2
  GETTABLEN R14 R12 3
  JUMPIFEQKNIL R13 [+18]
  GETUPVAL R16 6
  GETTABLEKS R15 R16 K22 ["SnapToSegmentEpsilon"]
  JUMPIFNOTLT R13 R15 [+13]
  GETUPVAL R15 7
  GETTABLEKS R16 R1 K2 ["SelectedObject"]
  MOVE R17 R14
  CALL R15 2 1
  GETUPVAL R16 2
  MOVE R17 R11
  CALL R16 1 1
  ADD R7 R15 R16
  GETTABLEKS R15 R2 K23 ["hoveringSelectablePoint"]
  NOT R10 R15
  LOADNIL R11
  JUMPIFNOT R9 [+36]
  JUMPIFEQKNIL R6 [+35]
  GETTABLEKS R12 R1 K2 ["SelectedObject"]
  JUMPIFEQKNIL R12 [+31]
  GETTABLEKS R13 R1 K7 ["AddPointSubMode"]
  JUMPIFNOTEQKS R13 K8 ["Append"] [+4]
  GETTABLEKS R12 R6 K24 ["RightTangent"]
  JUMP [+2]
  GETTABLEKS R12 R6 K25 ["LeftTangent"]
  GETUPVAL R13 1
  MOVE R14 R12
  GETTABLEKS R16 R1 K2 ["SelectedObject"]
  GETTABLEKS R15 R16 K16 ["Parent"]
  CALL R13 2 1
  MOVE R12 R13
  NEWTABLE R13 0 2
  GETUPVAL R14 8
  MOVE R15 R5
  MOVE R16 R12
  MOVE R17 R12
  CALL R14 3 1
  GETUPVAL R15 8
  MOVE R16 R7
  CALL R15 1 -1
  SETLIST R13 R14 -1 [1]
  MOVE R11 R13
  GETUPVAL R13 9
  GETTABLEKS R12 R13 K26 ["createElement"]
  GETIMPORT R14 K28 [game]
  LOADK R16 K29 ["PathEditorSurfaceGui"]
  NAMECALL R14 R14 K30 ["GetFastFlag"]
  CALL R14 2 1
  JUMPIFNOT R14 [+2]
  GETUPVAL R13 10
  JUMP [+1]
  LOADK R13 K31 ["ScreenGui"]
  DUPTABLE R14 K34 [{"DisplayOrder", "ZIndexBehavior"}]
  LOADN R15 3
  SETTABLEKS R15 R14 K32 ["DisplayOrder"]
  GETIMPORT R15 K37 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R15 R14 K33 ["ZIndexBehavior"]
  NEWTABLE R15 0 1
  GETUPVAL R17 9
  GETTABLEKS R16 R17 K26 ["createElement"]
  GETUPVAL R17 11
  DUPTABLE R18 K46 [{"Style", "Size", "FollowCursorOnDrag", "OnSelected", "OnDragStart", "OnDragMoved", "OnDragEnd", "OnHoverMoved"}]
  LOADK R19 K4 ["AddPoint"]
  SETTABLEKS R19 R18 K38 ["Style"]
  GETIMPORT R19 K48 [UDim2.fromScale]
  LOADN R20 1
  LOADN R21 1
  CALL R19 2 1
  SETTABLEKS R19 R18 K39 ["Size"]
  LOADB R19 0
  SETTABLEKS R19 R18 K40 ["FollowCursorOnDrag"]
  GETTABLEKS R19 R0 K49 ["onDragAreaClicked"]
  SETTABLEKS R19 R18 K41 ["OnSelected"]
  NEWCLOSURE R19 P0
  CAPTURE VAL R1
  SETTABLEKS R19 R18 K42 ["OnDragStart"]
  GETTABLEKS R19 R0 K50 ["onDragAreaDragged"]
  SETTABLEKS R19 R18 K43 ["OnDragMoved"]
  NEWCLOSURE R19 P1
  CAPTURE VAL R1
  SETTABLEKS R19 R18 K44 ["OnDragEnd"]
  GETTABLEKS R19 R0 K51 ["onDragAreaHoverMoved"]
  SETTABLEKS R19 R18 K45 ["OnHoverMoved"]
  DUPTABLE R19 K54 [{"Line", "ControlPoint"}]
  JUMPIFNOT R9 [+34]
  GETUPVAL R21 9
  GETTABLEKS R20 R21 K26 ["createElement"]
  GETUPVAL R21 12
  DUPTABLE R22 K57 [{"Color", "Style", "Thickness", "ControlPoints"}]
  GETTABLEKS R24 R1 K2 ["SelectedObject"]
  JUMPIFNOT R24 [+5]
  GETTABLEKS R24 R1 K2 ["SelectedObject"]
  GETTABLEKS R23 R24 K58 ["Color3"]
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K55 ["Color"]
  LOADK R23 K59 ["Tangent"]
  SETTABLEKS R23 R22 K38 ["Style"]
  GETTABLEKS R24 R1 K2 ["SelectedObject"]
  JUMPIFNOT R24 [+5]
  GETTABLEKS R24 R1 K2 ["SelectedObject"]
  GETTABLEKS R23 R24 K56 ["Thickness"]
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K56 ["Thickness"]
  SETTABLEKS R11 R22 K5 ["ControlPoints"]
  CALL R20 2 1
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K52 ["Line"]
  JUMPIFNOT R10 [+15]
  GETUPVAL R21 9
  GETTABLEKS R20 R21 K26 ["createElement"]
  GETUPVAL R21 13
  DUPTABLE R22 K61 [{"Style", "Position", "ZIndex"}]
  LOADK R23 K53 ["ControlPoint"]
  SETTABLEKS R23 R22 K38 ["Style"]
  SETTABLEKS R7 R22 K15 ["Position"]
  LOADN R23 1
  SETTABLEKS R23 R22 K60 ["ZIndex"]
  CALL R20 2 1
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K53 ["ControlPoint"]
  CALL R16 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  RETURN R12 -1

PROTO_21:
  DUPTABLE R2 K9 [{"Refreshed", "SelectedObject", "ParentAbsPos", "ParentAbsSize", "Path2DToolMode", "ControlPoints", "ToolbarHovered", "IsDraggingPoint", "AddPointSubMode"}]
  GETTABLEKS R4 R0 K10 ["PathReducer"]
  GETTABLEKS R3 R4 K0 ["Refreshed"]
  SETTABLEKS R3 R2 K0 ["Refreshed"]
  GETTABLEKS R4 R0 K10 ["PathReducer"]
  GETTABLEKS R3 R4 K1 ["SelectedObject"]
  SETTABLEKS R3 R2 K1 ["SelectedObject"]
  GETTABLEKS R4 R0 K10 ["PathReducer"]
  GETTABLEKS R3 R4 K2 ["ParentAbsPos"]
  SETTABLEKS R3 R2 K2 ["ParentAbsPos"]
  GETTABLEKS R4 R0 K10 ["PathReducer"]
  GETTABLEKS R3 R4 K3 ["ParentAbsSize"]
  SETTABLEKS R3 R2 K3 ["ParentAbsSize"]
  GETTABLEKS R4 R0 K10 ["PathReducer"]
  GETTABLEKS R3 R4 K4 ["Path2DToolMode"]
  SETTABLEKS R3 R2 K4 ["Path2DToolMode"]
  GETTABLEKS R4 R0 K10 ["PathReducer"]
  GETTABLEKS R3 R4 K5 ["ControlPoints"]
  SETTABLEKS R3 R2 K5 ["ControlPoints"]
  GETTABLEKS R4 R0 K10 ["PathReducer"]
  GETTABLEKS R3 R4 K6 ["ToolbarHovered"]
  SETTABLEKS R3 R2 K6 ["ToolbarHovered"]
  GETTABLEKS R4 R0 K10 ["PathReducer"]
  GETTABLEKS R3 R4 K7 ["IsDraggingPoint"]
  SETTABLEKS R3 R2 K7 ["IsDraggingPoint"]
  GETTABLEKS R4 R0 K10 ["PathReducer"]
  GETTABLEKS R3 R4 K8 ["AddPointSubMode"]
  SETTABLEKS R3 R2 K8 ["AddPointSubMode"]
  RETURN R2 1

PROTO_22:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R5 0
  GETUPVAL R6 1
  MOVE R7 R0
  MOVE R8 R1
  MOVE R9 R2
  MOVE R10 R3
  MOVE R11 R4
  CALL R6 5 -1
  CALL R5 -1 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_27:
  DUPTABLE R1 K5 [{"dispatchAddControlPoint", "dispatchSelectControlPoint", "dispatchSetControlPointTangent", "dispatchSetIsDraggingPoint", "dispatchSetAddPointSubMode"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchAddControlPoint"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["dispatchSelectControlPoint"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["dispatchSetControlPointTangent"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["dispatchSetIsDraggingPoint"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K4 ["dispatchSetAddPointSubMode"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["PathEditorRotation"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+189]
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K11 ["Packages"]
  GETTABLEKS R5 R6 K13 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K11 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R7 R1 K9 ["Src"]
  GETTABLEKS R6 R7 K15 ["Actions"]
  GETIMPORT R7 K8 [require]
  GETTABLEKS R8 R6 K16 ["SetIsDraggingPoint"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R9 R6 K17 ["SetAddPointSubMode"]
  CALL R8 1 1
  GETTABLEKS R10 R1 K9 ["Src"]
  GETTABLEKS R9 R10 K18 ["Thunks"]
  GETIMPORT R10 K8 [require]
  GETTABLEKS R11 R9 K19 ["AddControlPoint"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R12 R9 K20 ["SetControlPointTangent"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R13 R9 K21 ["SelectControlPoint"]
  CALL R12 1 1
  GETTABLEKS R14 R1 K9 ["Src"]
  GETTABLEKS R13 R14 K22 ["Components"]
  GETIMPORT R14 K8 [require]
  GETTABLEKS R15 R13 K23 ["DraggablePoint"]
  CALL R14 1 1
  GETIMPORT R15 K8 [require]
  GETTABLEKS R16 R13 K24 ["GuiShim"]
  CALL R15 1 1
  GETIMPORT R16 K8 [require]
  GETTABLEKS R17 R13 K25 ["Line"]
  CALL R16 1 1
  GETTABLEKS R17 R5 K26 ["UI"]
  GETTABLEKS R18 R17 K27 ["Image"]
  GETIMPORT R19 K8 [require]
  GETTABLEKS R22 R1 K9 ["Src"]
  GETTABLEKS R21 R22 K28 ["Resources"]
  GETTABLEKS R20 R21 K29 ["Constants"]
  CALL R19 1 1
  GETTABLEKS R21 R1 K9 ["Src"]
  GETTABLEKS R20 R21 K30 ["Util"]
  GETIMPORT R21 K8 [require]
  GETTABLEKS R22 R20 K31 ["getClosestControlPointToPosition"]
  CALL R21 1 1
  GETIMPORT R22 K8 [require]
  GETTABLEKS R23 R20 K32 ["getPositionMatchesControlPoint"]
  CALL R22 1 1
  GETIMPORT R23 K8 [require]
  GETTABLEKS R24 R20 K33 ["getSnapToControlPoint"]
  CALL R23 1 1
  GETIMPORT R24 K8 [require]
  GETTABLEKS R25 R20 K34 ["getUDim2FromVector2"]
  CALL R24 1 1
  GETIMPORT R25 K8 [require]
  GETTABLEKS R26 R20 K35 ["makeNewPath2DControlPoint"]
  CALL R25 1 1
  GETIMPORT R26 K8 [require]
  GETTABLEKS R27 R20 K36 ["getRelativePosFromAbsPos"]
  CALL R26 1 1
  GETIMPORT R27 K8 [require]
  GETTABLEKS R28 R20 K37 ["getAbsPosFromRelative"]
  CALL R27 1 1
  GETIMPORT R28 K1 [game]
  LOADK R30 K38 ["PathEditorShowInsertDragTangents"]
  LOADB R31 0
  NAMECALL R28 R28 K39 ["DefineFastFlag"]
  CALL R28 3 1
  GETTABLEKS R29 R3 K40 ["Component"]
  LOADK R31 K41 ["AddPointComponent"]
  NAMECALL R29 R29 K42 ["extend"]
  CALL R29 2 1
  DUPCLOSURE R30 K43 [PROTO_3]
  CAPTURE VAL R26
  CAPTURE VAL R23
  CAPTURE VAL R22
  CAPTURE VAL R21
  CAPTURE VAL R19
  CAPTURE VAL R28
  SETTABLEKS R30 R29 K44 ["init"]
  DUPCLOSURE R30 K45 [PROTO_6]
  CAPTURE VAL R24
  CAPTURE VAL R27
  CAPTURE VAL R23
  CAPTURE VAL R21
  CAPTURE VAL R19
  CAPTURE VAL R25
  CAPTURE VAL R3
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R18
  SETTABLEKS R30 R29 K46 ["render"]
  GETTABLEKS R30 R4 K47 ["connect"]
  DUPCLOSURE R31 K48 [PROTO_7]
  DUPCLOSURE R32 K49 [PROTO_13]
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R8
  CALL R30 2 1
  MOVE R31 R29
  CALL R30 1 -1
  RETURN R30 -1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K11 ["Packages"]
  GETTABLEKS R5 R6 K13 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K11 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R7 R1 K9 ["Src"]
  GETTABLEKS R6 R7 K15 ["Actions"]
  GETIMPORT R7 K8 [require]
  GETTABLEKS R8 R6 K16 ["SetIsDraggingPoint"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R9 R6 K17 ["SetAddPointSubMode"]
  CALL R8 1 1
  GETTABLEKS R10 R1 K9 ["Src"]
  GETTABLEKS R9 R10 K18 ["Thunks"]
  GETIMPORT R10 K8 [require]
  GETTABLEKS R11 R9 K19 ["AddControlPoint"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R12 R9 K20 ["SetControlPointTangent"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R13 R9 K21 ["SelectControlPoint"]
  CALL R12 1 1
  GETTABLEKS R14 R1 K9 ["Src"]
  GETTABLEKS R13 R14 K22 ["Components"]
  GETIMPORT R14 K8 [require]
  GETTABLEKS R15 R13 K23 ["DraggablePoint"]
  CALL R14 1 1
  GETIMPORT R15 K8 [require]
  GETTABLEKS R16 R13 K24 ["GuiShim"]
  CALL R15 1 1
  GETIMPORT R16 K8 [require]
  GETTABLEKS R17 R13 K25 ["Line"]
  CALL R16 1 1
  GETTABLEKS R17 R5 K26 ["UI"]
  GETTABLEKS R18 R17 K27 ["Image"]
  GETIMPORT R19 K8 [require]
  GETTABLEKS R22 R1 K9 ["Src"]
  GETTABLEKS R21 R22 K28 ["Resources"]
  GETTABLEKS R20 R21 K29 ["Constants"]
  CALL R19 1 1
  GETTABLEKS R21 R1 K9 ["Src"]
  GETTABLEKS R20 R21 K30 ["Util"]
  GETIMPORT R21 K8 [require]
  GETTABLEKS R22 R20 K50 ["getAbsolutePosition"]
  CALL R21 1 1
  GETIMPORT R22 K8 [require]
  GETTABLEKS R23 R20 K35 ["makeNewPath2DControlPoint"]
  CALL R22 1 1
  GETIMPORT R23 K8 [require]
  GETTABLEKS R24 R20 K33 ["getSnapToControlPoint"]
  CALL R23 1 1
  GETIMPORT R24 K8 [require]
  GETTABLEKS R25 R20 K34 ["getUDim2FromVector2"]
  CALL R24 1 1
  GETIMPORT R25 K8 [require]
  GETTABLEKS R26 R20 K51 ["getUDim2OffsetFromScale"]
  CALL R25 1 1
  GETIMPORT R26 K8 [require]
  GETTABLEKS R27 R20 K32 ["getPositionMatchesControlPoint"]
  CALL R26 1 1
  GETIMPORT R27 K8 [require]
  GETTABLEKS R28 R20 K52 ["getPosOnCurveOffset"]
  CALL R27 1 1
  GETIMPORT R28 K8 [require]
  GETTABLEKS R29 R20 K31 ["getClosestControlPointToPosition"]
  CALL R28 1 1
  GETIMPORT R29 K1 [game]
  LOADK R31 K53 ["PathEditorInsertPointSnappingFix"]
  LOADB R32 0
  NAMECALL R29 R29 K54 ["defineFastFlag"]
  CALL R29 3 1
  GETTABLEKS R30 R3 K40 ["Component"]
  LOADK R32 K41 ["AddPointComponent"]
  NAMECALL R30 R30 K42 ["extend"]
  CALL R30 2 1
  DUPCLOSURE R31 K55 [PROTO_17]
  CAPTURE VAL R21
  CAPTURE VAL R24
  CAPTURE VAL R23
  CAPTURE VAL R26
  CAPTURE VAL R29
  CAPTURE VAL R28
  CAPTURE VAL R19
  CAPTURE VAL R27
  SETTABLEKS R31 R30 K44 ["init"]
  DUPCLOSURE R31 K56 [PROTO_20]
  CAPTURE VAL R21
  CAPTURE VAL R25
  CAPTURE VAL R24
  CAPTURE VAL R23
  CAPTURE VAL R29
  CAPTURE VAL R28
  CAPTURE VAL R19
  CAPTURE VAL R27
  CAPTURE VAL R22
  CAPTURE VAL R3
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R18
  SETTABLEKS R31 R30 K46 ["render"]
  GETTABLEKS R31 R4 K47 ["connect"]
  DUPCLOSURE R32 K57 [PROTO_21]
  DUPCLOSURE R33 K58 [PROTO_27]
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R8
  CALL R31 2 1
  MOVE R32 R30
  CALL R31 1 -1
  RETURN R31 -1
