PROTO_0:
  JUMPIFNOT R1 [+24]
  LOADB R3 0
  SETTABLEKS R3 R1 K0 ["Enabled"]
  GETTABLEKS R4 R0 K1 ["Actions"]
  FASTCALL2 TABLE_INSERT R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K4 [table.insert]
  CALL R3 2 0
  GETTABLEKS R4 R0 K5 ["Connections"]
  GETTABLEKS R5 R1 K6 ["Triggered"]
  MOVE R7 R2
  NAMECALL R5 R5 K7 ["Connect"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K4 [table.insert]
  CALL R3 -1 0
  RETURN R1 1
  LOADNIL R3
  RETURN R3 1

PROTO_1:
  JUMPIFNOT R1 [+10]
  GETIMPORT R2 K1 [ipairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_INEXT R2
  LOADB R7 1
  SETTABLEKS R7 R6 K2 ["Enabled"]
  FORGLOOP R2 2 [inext] [-4]
  RETURN R0 0

PROTO_2:
  JUMPIFNOT R1 [+10]
  GETIMPORT R2 K1 [ipairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_INEXT R2
  LOADB R7 0
  SETTABLEKS R7 R6 K2 ["Enabled"]
  FORGLOOP R2 2 [inext] [-4]
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Path2DToolMode"]
  JUMPIFNOTEQKS R0 K2 ["AddTangent"] [+32]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K3 ["SelectedControlPointIndex"]
  JUMPIFEQKN R0 K4 [0] [+31]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K5 ["SelectedTangentSide"]
  JUMPIFEQKNIL R0 [+24]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K6 ["dispatchClearControlPointTangent"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["SelectedControlPointIndex"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K5 ["SelectedTangentSide"]
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K7 ["dispatchRemoveControlPoint"]
  CALL R0 0 0
  RETURN R0 0

PROTO_4:
  JUMPIFNOTEQKS R0 K0 ["AbsolutePosition"] [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["dispatchPathChanged"]
  LOADK R2 K2 ["Position"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Get"]
  CALL R0 1 1
  LENGTH R1 R0
  JUMPIFNOTEQKN R1 K1 [0] [+10]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["dispatchSelectPathCleared"]
  CALL R1 0 0
  GETUPVAL R1 2
  NAMECALL R1 R1 K3 ["disableActions"]
  CALL R1 1 0
  RETURN R0 0
  LENGTH R1 R0
  JUMPIFNOTEQKN R1 K4 [1] [+92]
  GETIMPORT R1 K6 [pairs]
  MOVE R2 R0
  CALL R1 1 3
  FORGPREP_NEXT R1
  LOADK R8 K7 ["Path2D"]
  NAMECALL R6 R5 K8 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+38]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["dispatchSelectPath"]
  MOVE R7 R5
  CALL R6 1 0
  GETUPVAL R6 2
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K10 ["UniversalActions"]
  NAMECALL R6 R6 K11 ["enableActions"]
  CALL R6 2 0
  GETUPVAL R6 2
  DUPTABLE R8 K14 [{"selectedObjectChangedConn", "selectedObjectParentChangedConn"}]
  GETTABLEKS R9 R5 K15 ["Changed"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K16 ["dispatchPathChanged"]
  NAMECALL R9 R9 K17 ["Connect"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K12 ["selectedObjectChangedConn"]
  GETTABLEKS R10 R5 K18 ["Parent"]
  GETTABLEKS R9 R10 K15 ["Changed"]
  GETUPVAL R11 3
  NAMECALL R9 R9 K17 ["Connect"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K13 ["selectedObjectParentChangedConn"]
  NAMECALL R6 R6 K19 ["setState"]
  CALL R6 2 0
  JUMP [+41]
  GETUPVAL R6 2
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K10 ["UniversalActions"]
  NAMECALL R6 R6 K3 ["disableActions"]
  CALL R6 2 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["dispatchSelectPathCleared"]
  CALL R6 0 0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K20 ["state"]
  GETTABLEKS R6 R7 K12 ["selectedObjectChangedConn"]
  JUMPIFEQKNIL R6 [+9]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K20 ["state"]
  GETTABLEKS R6 R7 K12 ["selectedObjectChangedConn"]
  NAMECALL R6 R6 K21 ["Disconnect"]
  CALL R6 1 0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K20 ["state"]
  GETTABLEKS R6 R7 K13 ["selectedObjectParentChangedConn"]
  JUMPIFEQKNIL R6 [+9]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K20 ["state"]
  GETTABLEKS R6 R7 K13 ["selectedObjectParentChangedConn"]
  NAMECALL R6 R6 K21 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [-85]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K1 ["delete"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["SelectionChanged"]
  NEWCLOSURE R5 P2
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R2
  NAMECALL R3 R3 K3 ["Connect"]
  CALL R3 2 1
  DUPTABLE R6 K5 [{"selectionChangedConn"}]
  SETTABLEKS R3 R6 K4 ["selectionChangedConn"]
  NAMECALL R4 R0 K6 ["setState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["ChangeHistoryServiceActionName"]
  JUMPIFNOTEQ R0 R1 [+7]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["dispatchUndo"]
  CALL R1 0 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["ChangeHistoryServiceActionName"]
  JUMPIFNOTEQ R0 R1 [+7]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["dispatchRedo"]
  CALL R1 0 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PluginActions"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K2 ["Connections"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K3 ["Actions"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K4 ["EditingActions"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K5 ["UniversalActions"]
  GETTABLEKS R3 R0 K4 ["EditingActions"]
  LOADK R8 K6 ["DoneEditing"]
  NAMECALL R6 R1 K7 ["get"]
  CALL R6 2 1
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K8 ["dispatchToggleDone"]
  NAMECALL R4 R0 K9 ["addAction"]
  CALL R4 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K12 [table.insert]
  CALL R2 -1 0
  GETTABLEKS R3 R0 K5 ["UniversalActions"]
  LOADK R8 K13 ["MoveTool"]
  NAMECALL R6 R1 K7 ["get"]
  CALL R6 2 1
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K14 ["dispatchToggleMoveTool"]
  NAMECALL R4 R0 K9 ["addAction"]
  CALL R4 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K12 [table.insert]
  CALL R2 -1 0
  GETTABLEKS R3 R0 K5 ["UniversalActions"]
  LOADK R8 K15 ["AddPointMode"]
  NAMECALL R6 R1 K7 ["get"]
  CALL R6 2 1
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K16 ["dispatchToggleAddPointTool"]
  NAMECALL R4 R0 K9 ["addAction"]
  CALL R4 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K12 [table.insert]
  CALL R2 -1 0
  GETTABLEKS R3 R0 K5 ["UniversalActions"]
  LOADK R8 K17 ["AddTangentMode"]
  NAMECALL R6 R1 K7 ["get"]
  CALL R6 2 1
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K18 ["dispatchToggleAddTangentTool"]
  NAMECALL R4 R0 K9 ["addAction"]
  CALL R4 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K12 [table.insert]
  CALL R2 -1 0
  GETTABLEKS R3 R0 K4 ["EditingActions"]
  LOADK R8 K19 ["DeletePoint"]
  NAMECALL R6 R1 K7 ["get"]
  CALL R6 2 1
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K20 ["dispatchRemoveControlPoint"]
  NAMECALL R4 R0 K9 ["addAction"]
  CALL R4 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K12 [table.insert]
  CALL R2 -1 0
  GETTABLEKS R3 R0 K4 ["EditingActions"]
  LOADK R8 K21 ["DeletePoint2"]
  NAMECALL R6 R1 K7 ["get"]
  CALL R6 2 1
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K20 ["dispatchRemoveControlPoint"]
  NAMECALL R4 R0 K9 ["addAction"]
  CALL R4 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K12 [table.insert]
  CALL R2 -1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K22 ["OnUndo"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NAMECALL R2 R2 K23 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K24 ["ChangeHistoryUndoConnection"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K25 ["OnRedo"]
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NAMECALL R2 R2 K23 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K26 ["ChangeHistoryRedoConnection"]
  RETURN R0 0

PROTO_10:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["selectionChangedConn"]
  JUMPIFEQKNIL R1 [+8]
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["selectionChangedConn"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K3 ["selectedObjectChangedConn"]
  JUMPIFEQKNIL R1 [+8]
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K3 ["selectedObjectChangedConn"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K4 ["selectedObjectParentChangedConn"]
  JUMPIFEQKNIL R1 [+8]
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K4 ["selectedObjectParentChangedConn"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K5 ["Connections"]
  JUMPIFNOT R1 [+15]
  GETIMPORT R1 K7 [ipairs]
  GETTABLEKS R2 R0 K5 ["Connections"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  NAMECALL R6 R5 K2 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [inext] [-4]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K5 ["Connections"]
  GETTABLEKS R1 R0 K8 ["Actions"]
  JUMPIFNOT R1 [+11]
  GETIMPORT R1 K7 [ipairs]
  GETTABLEKS R2 R0 K8 ["Actions"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  LOADB R6 0
  SETTABLEKS R6 R5 K9 ["Enabled"]
  FORGLOOP R1 2 [inext] [-4]
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["lastToolingMode"]
  GETTABLEKS R3 R1 K2 ["Path2DToolMode"]
  JUMPIFEQ R2 R3 [+20]
  GETTABLEKS R2 R1 K2 ["Path2DToolMode"]
  SETTABLEKS R2 R0 K1 ["lastToolingMode"]
  GETTABLEKS R2 R0 K1 ["lastToolingMode"]
  JUMPIFNOTEQKS R2 K3 ["DoneEditing"] [+7]
  GETTABLEKS R4 R0 K4 ["EditingActions"]
  NAMECALL R2 R0 K5 ["disableActions"]
  CALL R2 2 0
  JUMP [+5]
  GETTABLEKS R4 R0 K4 ["EditingActions"]
  NAMECALL R2 R0 K6 ["enableActions"]
  CALL R2 2 0
  LOADNIL R2
  RETURN R2 1

PROTO_12:
  DUPTABLE R2 K4 [{"SelectedObject", "SelectedControlPointIndex", "SelectedTangentSide", "Path2DToolMode"}]
  GETTABLEKS R4 R0 K5 ["PathReducer"]
  GETTABLEKS R3 R4 K0 ["SelectedObject"]
  SETTABLEKS R3 R2 K0 ["SelectedObject"]
  GETTABLEKS R4 R0 K5 ["PathReducer"]
  GETTABLEKS R3 R4 K1 ["SelectedControlPointIndex"]
  SETTABLEKS R3 R2 K1 ["SelectedControlPointIndex"]
  GETTABLEKS R4 R0 K5 ["PathReducer"]
  GETTABLEKS R3 R4 K2 ["SelectedTangentSide"]
  SETTABLEKS R3 R2 K2 ["SelectedTangentSide"]
  GETTABLEKS R4 R0 K5 ["PathReducer"]
  GETTABLEKS R3 R4 K3 ["Path2DToolMode"]
  SETTABLEKS R3 R2 K3 ["Path2DToolMode"]
  RETURN R2 1

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_23:
  DUPTABLE R1 K10 [{"dispatchToggleDone", "dispatchToggleAddPointTool", "dispatchToggleMoveTool", "dispatchToggleAddTangentTool", "dispatchPathChanged", "dispatchSelectPath", "dispatchSelectPathCleared", "dispatchUndo", "dispatchRedo", "dispatchRemoveControlPoint"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchToggleDone"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["dispatchToggleAddPointTool"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["dispatchToggleMoveTool"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["dispatchToggleAddTangentTool"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K4 ["dispatchPathChanged"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K5 ["dispatchSelectPath"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R2 R1 K6 ["dispatchSelectPathCleared"]
  NEWCLOSURE R2 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  SETTABLEKS R2 R1 K7 ["dispatchUndo"]
  NEWCLOSURE R2 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  SETTABLEKS R2 R1 K8 ["dispatchRedo"]
  NEWCLOSURE R2 P9
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  SETTABLEKS R2 R1 K9 ["dispatchRemoveControlPoint"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K12 [game]
  LOADK R7 K13 ["Selection"]
  NAMECALL R5 R5 K14 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K12 [game]
  LOADK R8 K15 ["ChangeHistoryService"]
  NAMECALL R6 R6 K14 ["GetService"]
  CALL R6 2 1
  GETTABLEKS R7 R4 K16 ["ContextServices"]
  GETTABLEKS R8 R7 K17 ["withContext"]
  GETTABLEKS R10 R0 K5 ["Src"]
  GETTABLEKS R9 R10 K18 ["Actions"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R9 K19 ["SelectPath"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R9 K20 ["ClearPathSelection"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R9 K21 ["PathChanged"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R9 K22 ["ToggleAddPointTool"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R9 K23 ["ToggleMoveTool"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R9 K24 ["ToggleAddTangentTool"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R9 K25 ["ToggleDone"]
  CALL R16 1 1
  GETTABLEKS R18 R0 K5 ["Src"]
  GETTABLEKS R17 R18 K26 ["Thunks"]
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R17 K27 ["Undo"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R17 K28 ["Redo"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R17 K29 ["RemoveControlPoint"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R24 R0 K5 ["Src"]
  GETTABLEKS R23 R24 K30 ["Resources"]
  GETTABLEKS R22 R23 K31 ["Constants"]
  CALL R21 1 1
  GETTABLEKS R22 R2 K32 ["PureComponent"]
  LOADK R24 K33 ["SelectionListener"]
  NAMECALL R22 R22 K34 ["extend"]
  CALL R22 2 1
  DUPCLOSURE R23 K35 [PROTO_0]
  SETTABLEKS R23 R22 K36 ["addAction"]
  DUPCLOSURE R23 K37 [PROTO_1]
  SETTABLEKS R23 R22 K38 ["enableActions"]
  DUPCLOSURE R23 K39 [PROTO_2]
  SETTABLEKS R23 R22 K40 ["disableActions"]
  DUPCLOSURE R23 K41 [PROTO_6]
  CAPTURE VAL R5
  SETTABLEKS R23 R22 K42 ["init"]
  DUPCLOSURE R23 K43 [PROTO_9]
  CAPTURE VAL R6
  CAPTURE VAL R21
  SETTABLEKS R23 R22 K44 ["didMount"]
  DUPCLOSURE R23 K45 [PROTO_10]
  SETTABLEKS R23 R22 K46 ["willUnmount"]
  DUPCLOSURE R23 K47 [PROTO_11]
  SETTABLEKS R23 R22 K48 ["render"]
  MOVE R23 R8
  DUPTABLE R24 K51 [{"PluginActions", "Mouse"}]
  GETTABLEKS R25 R7 K49 ["PluginActions"]
  SETTABLEKS R25 R24 K49 ["PluginActions"]
  GETTABLEKS R25 R7 K50 ["Mouse"]
  SETTABLEKS R25 R24 K50 ["Mouse"]
  CALL R23 1 1
  MOVE R24 R22
  CALL R23 1 1
  MOVE R22 R23
  GETTABLEKS R23 R3 K52 ["connect"]
  DUPCLOSURE R24 K53 [PROTO_12]
  DUPCLOSURE R25 K54 [PROTO_23]
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R20
  CALL R23 2 1
  MOVE R24 R22
  CALL R23 1 -1
  RETURN R23 -1
