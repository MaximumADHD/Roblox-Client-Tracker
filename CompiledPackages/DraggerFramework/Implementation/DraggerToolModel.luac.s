PROTO_0:
  GETIMPORT R6 K1 [pairs]
  MOVE R7 R2
  CALL R6 1 3
  FORGPREP_NEXT R6
  GETUPVAL R12 0
  GETTABLE R11 R12 R9
  JUMPIFNOTEQKNIL R11 [+12]
  GETUPVAL R12 1
  GETTABLE R11 R12 R9
  JUMPIFNOTEQKNIL R11 [+8]
  GETIMPORT R11 K3 [error]
  LOADK R13 K4 ["Unexpected DraggerToolModel prop `"]
  MOVE R14 R9
  LOADK R15 K5 ["`"]
  CONCAT R12 R13 R15
  CALL R11 1 0
  FORGLOOP R6 2 [-16]
  NEWTABLE R6 0 0
  GETIMPORT R7 K1 [pairs]
  GETUPVAL R8 1
  CALL R7 1 3
  FORGPREP_NEXT R7
  GETTABLE R12 R2 R10
  JUMPIFNOTEQKNIL R12 [+9]
  GETIMPORT R13 K3 [error]
  LOADK R15 K6 ["Required prop `"]
  MOVE R16 R10
  LOADK R17 K7 ["` missing from DraggerToolModel props"]
  CONCAT R14 R15 R17
  CALL R13 1 0
  JUMP [+1]
  SETTABLE R12 R6 R10
  FORGLOOP R7 2 [-13]
  GETIMPORT R7 K1 [pairs]
  GETUPVAL R8 0
  CALL R7 1 3
  FORGPREP_NEXT R7
  GETTABLE R12 R2 R10
  JUMPIFEQKNIL R12 [+4]
  GETTABLE R12 R2 R10
  SETTABLE R12 R6 R10
  JUMP [+1]
  SETTABLE R11 R6 R10
  FORGLOOP R7 2 [-8]
  DUPTABLE R8 K22 [{"_lastMouseClickTime", "_lastMouseClickLocation", "_handlesList", "_allHandlesList", "_enabledHandlesList", "_draggerContext", "_draggerSchema", "_modelProps", "_requestRenderCallback", "_markViewDirtyCallback", "_markSelectionDirtyCallback", "_selectionWrapper", "_selectionCycleCache", "_handlesSummoned"}]
  LOADN R9 0
  SETTABLEKS R9 R8 K8 ["_lastMouseClickTime"]
  GETIMPORT R9 K25 [Vector2.new]
  LOADN R10 255
  LOADN R11 255
  CALL R9 2 1
  SETTABLEKS R9 R8 K9 ["_lastMouseClickLocation"]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIF R10 [+3]
  GETTABLEKS R9 R6 K26 ["HandlesList"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K10 ["_handlesList"]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+3]
  GETTABLEKS R9 R6 K26 ["HandlesList"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K11 ["_allHandlesList"]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+3]
  GETTABLEKS R9 R6 K26 ["HandlesList"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K12 ["_enabledHandlesList"]
  SETTABLEKS R0 R8 K13 ["_draggerContext"]
  SETTABLEKS R1 R8 K14 ["_draggerSchema"]
  SETTABLEKS R6 R8 K15 ["_modelProps"]
  SETTABLEKS R3 R8 K16 ["_requestRenderCallback"]
  SETTABLEKS R4 R8 K17 ["_markViewDirtyCallback"]
  SETTABLEKS R5 R8 K18 ["_markSelectionDirtyCallback"]
  LOADNIL R9
  SETTABLEKS R9 R8 K19 ["_selectionWrapper"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K24 ["new"]
  MOVE R10 R0
  MOVE R11 R1
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["_selectionCycleCache"]
  LOADB R9 0
  SETTABLEKS R9 R8 K21 ["_handlesSummoned"]
  GETUPVAL R9 4
  FASTCALL2 SETMETATABLE R8 R9 [+3]
  GETIMPORT R7 K28 [setmetatable]
  CALL R7 2 1
  RETURN R7 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["_mouseCursor"]
  JUMPIFEQ R2 R1 [+9]
  SETTABLEKS R1 R0 K0 ["_mouseCursor"]
  GETTABLEKS R2 R0 K1 ["_draggerContext"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["setMouseIcon"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  PREPVARARGS 2
  GETUPVAL R4 0
  GETTABLE R3 R4 R1
  LOADK R5 K0 ["Missing state type: "]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K2 [tostring]
  CALL R6 1 1
  CONCAT R4 R5 R6
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K5 ["_stateObject"]
  NAMECALL R2 R2 K6 ["leave"]
  CALL R2 1 0
  SETTABLEKS R1 R0 K7 ["_mainState"]
  GETUPVAL R4 0
  GETTABLE R3 R4 R1
  GETTABLEKS R2 R3 K8 ["new"]
  MOVE R3 R0
  GETVARARGS R4 -1
  CALL R2 -1 1
  SETTABLEKS R2 R0 K5 ["_stateObject"]
  GETTABLEKS R2 R0 K5 ["_stateObject"]
  NAMECALL R2 R2 K9 ["enter"]
  CALL R2 1 0
  NAMECALL R2 R0 K10 ["_updatePivotIndicatorVisibility"]
  CALL R2 1 0
  NAMECALL R2 R0 K11 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  NAMECALL R1 R0 K0 ["_updateHandles"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["createElement"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Portal"]
  DUPTABLE R3 K4 [{"target"}]
  GETTABLEKS R4 R0 K5 ["_draggerContext"]
  NAMECALL R4 R4 K6 ["getGuiParent"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["target"]
  DUPTABLE R4 K8 [{"DraggerUI"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["createElement"]
  LOADK R6 K9 ["Folder"]
  NEWTABLE R7 0 0
  GETTABLEKS R8 R0 K10 ["_stateObject"]
  NAMECALL R8 R8 K11 ["render"]
  CALL R8 1 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K7 ["DraggerUI"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["isSimulating"]
  CALL R1 1 1
  JUMPIFNOT R1 [+30]
  GETTABLEKS R1 R0 K2 ["_markViewDirtyCallback"]
  CALL R1 0 0
  LOADB R1 1
  GETTABLEKS R2 R0 K3 ["_mainState"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["DraggingHandle"]
  JUMPIFEQ R2 R3 [+10]
  GETTABLEKS R2 R0 K3 ["_mainState"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["DraggingParts"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIF R1 [+9]
  GETTABLEKS R2 R0 K6 ["_selectionInfo"]
  NAMECALL R2 R2 K7 ["isDynamic"]
  CALL R2 1 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R0 K8 ["_markSelectionDirtyCallback"]
  CALL R2 0 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_selectionWrapper"]
  RETURN R1 1

PROTO_6:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["AnalyticsName"]
  RETURN R1 1

PROTO_7:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["WasAutoSelected"]
  RETURN R1 1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_draggerSchema"]
  RETURN R1 1

PROTO_9:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R1 R0 K0 ["_enabledHandlesList"]
  RETURN R1 1
  GETTABLEKS R1 R0 K1 ["_handlesList"]
  RETURN R1 1

PROTO_10:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["AllowDragSelect"]
  RETURN R1 1

PROTO_11:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["AllowFreeformDrag"]
  RETURN R1 1

PROTO_12:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowDragSelect"]
  RETURN R1 1

PROTO_13:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowLocalSpaceIndicator"]
  RETURN R1 1

PROTO_14:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowSelectionDot"]
  RETURN R1 1

PROTO_15:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["UseCollisionsTransparency"]
  RETURN R1 1

PROTO_16:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["shouldAlignDraggedObjects"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_17:
  GETTABLEKS R3 R0 K0 ["_selectionWrapper"]
  NAMECALL R3 R3 K1 ["get"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K2 ["_draggerSchema"]
  GETTABLEKS R4 R5 K3 ["getNextSelectables"]
  GETTABLEKS R5 R0 K4 ["_draggerContext"]
  MOVE R6 R3
  MOVE R7 R1
  MOVE R8 R2
  CALL R4 4 1
  JUMPIFNOT R4 [+27]
  GETTABLEKS R5 R0 K4 ["_draggerContext"]
  NAMECALL R5 R5 K5 ["shouldExtendSelection"]
  CALL R5 1 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["updateSelectionWithMultipleSelectables"]
  MOVE R7 R4
  MOVE R8 R3
  LOADB R9 0
  MOVE R10 R5
  CALL R6 4 1
  GETTABLEKS R7 R0 K0 ["_selectionWrapper"]
  MOVE R9 R6
  NAMECALL R7 R7 K7 ["set"]
  CALL R7 2 0
  NAMECALL R7 R0 K8 ["isSelected"]
  CALL R7 1 1
  JUMPIF R7 [+1]
  RETURN R0 0
  NAMECALL R7 R0 K9 ["_updateSelectionInfo"]
  CALL R7 1 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R1 R0 K0 ["_selectionInfo"]
  JUMPIF R1 [+2]
  LOADK R1 K1 ["None"]
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["_selectionInfo"]
  NAMECALL R1 R1 K2 ["getBoundingBox"]
  CALL R1 1 3
  GETUPVAL R4 0
  MOVE R5 R1
  MOVE R6 R2
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1

PROTO_19:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_markSelectionDirtyCallback"]
  CALL R1 0 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_processSelectionChanged"]
  CALL R0 1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Ready"]
  SETTABLEKS R1 R0 K1 ["_mainState"]
  GETUPVAL R3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Ready"]
  GETTABLE R2 R3 R4
  GETTABLEKS R1 R2 K2 ["new"]
  MOVE R2 R0
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["_stateObject"]
  GETTABLEKS R2 R0 K4 ["_modelProps"]
  GETTABLEKS R1 R2 K5 ["ShowPivotIndicator"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K6 ["_draggerContext"]
  LOADB R3 1
  NAMECALL R1 R1 K7 ["setPivotIndicator"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K8 ["_oldShowPivot"]
  LOADK R1 K9 [""]
  SETTABLEKS R1 R0 K10 ["_mouseCursor"]
  GETTABLEKS R1 R0 K6 ["_draggerContext"]
  LOADK R3 K9 [""]
  NAMECALL R1 R1 K11 ["setMouseIcon"]
  CALL R1 2 0
  GETTABLEKS R3 R0 K12 ["_draggerSchema"]
  GETTABLEKS R2 R3 K13 ["BoundsChangedTracker"]
  GETTABLEKS R1 R2 K2 ["new"]
  GETTABLEKS R2 R0 K6 ["_draggerContext"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R1 2 1
  SETTABLEKS R1 R0 K14 ["_boundsChangedTracker"]
  GETTABLEKS R1 R0 K14 ["_boundsChangedTracker"]
  NAMECALL R1 R1 K15 ["install"]
  CALL R1 1 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["new"]
  GETTABLEKS R2 R0 K6 ["_draggerContext"]
  NAMECALL R2 R2 K16 ["getSelection"]
  CALL R2 1 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K17 ["_selectionWrapper"]
  GETTABLEKS R2 R0 K17 ["_selectionWrapper"]
  GETTABLEKS R1 R2 K18 ["onSelectionExternallyChanged"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  NAMECALL R1 R1 K19 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K20 ["_selectionChangedConnection"]
  NAMECALL R1 R0 K21 ["_updateSelectionInfo"]
  CALL R1 1 0
  GETUPVAL R1 3
  CALL R1 0 1
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K22 ["_updateEnabledHandlesList"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["_stateObject"]
  NAMECALL R1 R1 K23 ["enter"]
  CALL R1 1 0
  NAMECALL R1 R0 K24 ["_analyticsSessionBegin"]
  CALL R1 1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K0 ["_endSummon"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["_isMouseDown"]
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K2 ["_processMouseUp"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K3 ["_modelProps"]
  GETTABLEKS R1 R2 K4 ["ShowPivotIndicator"]
  JUMPIFNOT R1 [+7]
  GETTABLEKS R1 R0 K5 ["_draggerContext"]
  GETTABLEKS R3 R0 K6 ["_oldShowPivot"]
  NAMECALL R1 R1 K7 ["setPivotIndicator"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K8 ["_stateObject"]
  NAMECALL R1 R1 K9 ["leave"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K8 ["_stateObject"]
  GETTABLEKS R1 R0 K10 ["_selectionWrapper"]
  NAMECALL R1 R1 K11 ["destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K10 ["_selectionWrapper"]
  GETTABLEKS R1 R0 K12 ["_boundsChangedTracker"]
  NAMECALL R1 R1 K13 ["uninstall"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K14 ["_selectionChangedConnection"]
  NAMECALL R1 R1 K15 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K14 ["_selectionChangedConnection"]
  NAMECALL R1 R0 K16 ["_analyticsSendSession"]
  CALL R1 1 0
  RETURN R0 0

PROTO_23:
  GETTABLEKS R2 R0 K0 ["_stateObject"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_24:
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["_enabledHandlesList"]
  GETTABLEKS R1 R0 K1 ["_allHandlesList"]
  JUMPIFNOT R1 [+41]
  GETIMPORT R1 K3 [pairs]
  GETTABLEKS R2 R0 K1 ["_allHandlesList"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETTABLEKS R6 R5 K4 ["_props"]
  JUMPIFNOT R6 [+5]
  GETTABLEKS R7 R5 K4 ["_props"]
  GETTABLEKS R6 R7 K5 ["IsEnabledFunction"]
  JUMPIF R6 [+9]
  GETTABLEKS R7 R0 K0 ["_enabledHandlesList"]
  FASTCALL2 TABLE_INSERT R7 R5 [+4]
  MOVE R8 R5
  GETIMPORT R6 K8 [table.insert]
  CALL R6 2 0
  JUMP [+16]
  GETTABLEKS R7 R5 K4 ["_props"]
  GETTABLEKS R6 R7 K5 ["IsEnabledFunction"]
  GETTABLEKS R7 R0 K9 ["_selectionInfo"]
  CALL R6 1 1
  JUMPIFNOT R6 [+8]
  GETTABLEKS R7 R0 K0 ["_enabledHandlesList"]
  FASTCALL2 TABLE_INSERT R7 R5 [+4]
  MOVE R8 R5
  GETIMPORT R6 K8 [table.insert]
  CALL R6 2 0
  FORGLOOP R1 2 [-34]
  RETURN R0 0

PROTO_25:
  GETTABLEKS R1 R0 K0 ["_selectionWrapper"]
  JUMPIF R1 [+1]
  RETURN R0 0
  NAMECALL R1 R0 K1 ["_updateSelectionInfo"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_stateObject"]
  NAMECALL R1 R1 K3 ["processSelectionChanged"]
  CALL R1 1 0
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K4 ["_updateEnabledHandlesList"]
  CALL R1 1 0
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+36]
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+17]
  GETTABLEKS R1 R0 K5 ["_allHandlesList"]
  JUMPIFNOT R1 [+30]
  GETTABLEKS R1 R0 K5 ["_allHandlesList"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R6 R5 K6 ["selectionChanged"]
  JUMPIFNOT R6 [+3]
  NAMECALL R6 R5 K6 ["selectionChanged"]
  CALL R6 1 0
  FORGLOOP R1 2 [-7]
  JUMP [+16]
  GETTABLEKS R1 R0 K7 ["_handlesList"]
  JUMPIFNOT R1 [+13]
  GETTABLEKS R1 R0 K7 ["_handlesList"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R6 R5 K6 ["selectionChanged"]
  JUMPIFNOT R6 [+3]
  NAMECALL R6 R5 K6 ["selectionChanged"]
  CALL R6 1 0
  FORGLOOP R1 2 [-7]
  NAMECALL R1 R0 K8 ["_scheduleRender"]
  CALL R1 1 0
  RETURN R0 0

PROTO_26:
  GETTABLEKS R2 R0 K0 ["_stateObject"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["processKeyDown"]
  CALL R2 2 0
  RETURN R0 0

PROTO_27:
  GETTABLEKS R2 R0 K0 ["_stateObject"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["processKeyUp"]
  CALL R2 2 0
  RETURN R0 0

PROTO_28:
  GETTABLEKS R1 R0 K0 ["_isMouseDown"]
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K1 ["_processMouseUp"]
  CALL R1 1 0
  LOADNIL R1
  GETTABLEKS R2 R0 K2 ["_draggerContext"]
  NAMECALL R2 R2 K3 ["getMouseLocation"]
  CALL R2 1 1
  GETIMPORT R4 K6 [os.clock]
  CALL R4 0 1
  GETTABLEKS R5 R0 K7 ["_lastMouseClickTime"]
  SUB R3 R4 R5
  LOADK R4 K8 [0.5]
  JUMPIFNOTLT R3 R4 [+10]
  GETTABLEKS R3 R0 K9 ["_lastMouseClickLocation"]
  JUMPIFNOTEQ R2 R3 [+6]
  LOADB R1 1
  LOADN R3 0
  SETTABLEKS R3 R0 K7 ["_lastMouseClickTime"]
  JUMP [+6]
  LOADB R1 0
  GETIMPORT R3 K6 [os.clock]
  CALL R3 0 1
  SETTABLEKS R3 R0 K7 ["_lastMouseClickTime"]
  SETTABLEKS R2 R0 K9 ["_lastMouseClickLocation"]
  LOADB R3 1
  SETTABLEKS R3 R0 K0 ["_isMouseDown"]
  GETTABLEKS R3 R0 K10 ["_stateObject"]
  MOVE R5 R1
  NAMECALL R3 R3 K11 ["processMouseDown"]
  CALL R3 2 0
  RETURN R0 0

PROTO_29:
  GETTABLEKS R1 R0 K0 ["_isMouseDown"]
  JUMPIF R1 [+1]
  RETURN R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_isMouseDown"]
  GETTABLEKS R1 R0 K1 ["_stateObject"]
  NAMECALL R1 R1 K2 ["processMouseUp"]
  CALL R1 1 0
  RETURN R0 0

PROTO_30:
  GETTABLEKS R1 R0 K0 ["_stateObject"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["_stateObject"]
  NAMECALL R1 R1 K1 ["processViewChanged"]
  CALL R1 1 0
  NAMECALL R1 R0 K2 ["_scheduleRender"]
  CALL R1 1 0
  RETURN R0 0

PROTO_31:
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+3]
  GETTABLEKS R2 R0 K2 ["_enabledHandlesList"]
  JUMP [+2]
  GETTABLEKS R2 R0 K3 ["_handlesList"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETTABLEKS R6 R5 K4 ["update"]
  JUMPIFNOT R6 [+6]
  MOVE R8 R0
  GETTABLEKS R9 R0 K5 ["_selectionInfo"]
  NAMECALL R6 R5 K4 ["update"]
  CALL R6 3 0
  FORGLOOP R1 2 [-10]
  RETURN R0 0

PROTO_32:
  JUMPIFNOT R1 [+3]
  SETTABLEKS R1 R0 K0 ["_selectionInfo"]
  JUMP [+16]
  GETTABLEKS R4 R0 K1 ["_draggerSchema"]
  GETTABLEKS R3 R4 K2 ["SelectionInfo"]
  GETTABLEKS R2 R3 K3 ["new"]
  GETTABLEKS R3 R0 K4 ["_draggerContext"]
  GETTABLEKS R4 R0 K5 ["_selectionWrapper"]
  NAMECALL R4 R4 K6 ["get"]
  CALL R4 1 -1
  CALL R2 -1 1
  SETTABLEKS R2 R0 K0 ["_selectionInfo"]
  GETTABLEKS R2 R0 K7 ["_boundsChangedTracker"]
  GETTABLEKS R4 R0 K0 ["_selectionInfo"]
  NAMECALL R2 R2 K8 ["setSelection"]
  CALL R2 2 0
  NAMECALL R2 R0 K9 ["_updateHandles"]
  CALL R2 1 0
  NAMECALL R2 R0 K10 ["_updatePivotIndicatorVisibility"]
  CALL R2 1 0
  RETURN R0 0

PROTO_33:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowPivotIndicator"]
  JUMPIFNOT R1 [+30]
  GETTABLEKS R1 R0 K2 ["_mainState"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["DragSelecting"]
  JUMPIFEQ R1 R2 [+10]
  GETTABLEKS R2 R0 K4 ["_selectionWrapper"]
  NAMECALL R2 R2 K5 ["get"]
  CALL R2 1 1
  LENGTH R1 R2
  LOADN R2 1
  JUMPIFNOTLT R2 R1 [+9]
  GETTABLEKS R1 R0 K6 ["_draggerContext"]
  GETTABLEKS R3 R0 K7 ["_oldShowPivot"]
  NAMECALL R1 R1 K8 ["setPivotIndicator"]
  CALL R1 2 0
  RETURN R0 0
  GETTABLEKS R1 R0 K6 ["_draggerContext"]
  LOADB R3 1
  NAMECALL R1 R1 K8 ["setPivotIndicator"]
  CALL R1 2 0
  RETURN R0 0

PROTO_34:
  NAMECALL R2 R0 K0 ["doesAllowFreeformDrag"]
  CALL R2 1 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["_isMouseDown"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  LOADB R2 1
  SETTABLEKS R2 R0 K1 ["_isMouseDown"]
  GETUPVAL R2 0
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R0 K2 ["_selectionWrapper"]
  MOVE R4 R1
  NAMECALL R2 R2 K3 ["set"]
  CALL R2 2 0
  NAMECALL R2 R0 K4 ["_updateSelectionInfo"]
  CALL R2 1 0
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+40]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["DraggingParts"]
  DUPTABLE R5 K11 [{"draggedPoint", "clickedPoint", "clickedMetadata", "clickedFaceInstance", "attachmentBeingDragged"}]
  LOADK R6 K12 [{0, 0, 0}]
  SETTABLEKS R6 R5 K6 ["draggedPoint"]
  LOADK R6 K12 [{0, 0, 0}]
  SETTABLEKS R6 R5 K7 ["clickedPoint"]
  GETIMPORT R6 K15 [table.freeze]
  DUPTABLE R7 K20 [{"RaycastResult", "TargetMatrix", "TargetSize", "IsPivot"}]
  LOADNIL R8
  SETTABLEKS R8 R7 K16 ["RaycastResult"]
  GETIMPORT R8 K23 [CFrame.new]
  CALL R8 0 1
  SETTABLEKS R8 R7 K17 ["TargetMatrix"]
  LOADK R8 K12 [{0, 0, 0}]
  SETTABLEKS R8 R7 K18 ["TargetSize"]
  LOADB R8 0
  SETTABLEKS R8 R7 K19 ["IsPivot"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K8 ["clickedMetadata"]
  LOADNIL R6
  SETTABLEKS R6 R5 K9 ["clickedFaceInstance"]
  LOADNIL R6
  SETTABLEKS R6 R5 K10 ["attachmentBeingDragged"]
  NAMECALL R2 R0 K24 ["transitionToState"]
  CALL R2 3 0
  RETURN R0 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["DraggingParts"]
  DUPTABLE R5 K28 [{"mouseLocation", "basisPoint", "clickPoint"}]
  GETTABLEKS R6 R0 K29 ["_draggerContext"]
  NAMECALL R6 R6 K30 ["getMouseLocation"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K25 ["mouseLocation"]
  LOADK R6 K12 [{0, 0, 0}]
  SETTABLEKS R6 R5 K26 ["basisPoint"]
  LOADK R6 K12 [{0, 0, 0}]
  SETTABLEKS R6 R5 K27 ["clickPoint"]
  NAMECALL R2 R0 K24 ["transitionToState"]
  CALL R2 3 0
  RETURN R0 0

PROTO_35:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["Destroy"]
  CALL R1 1 0
  RETURN R0 0

PROTO_36:
  GETTABLEKS R2 R0 K0 ["_isMouseDown"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  LOADB R2 1
  SETTABLEKS R2 R0 K0 ["_isMouseDown"]
  LOADNIL R2
  GETTABLEN R3 R1 1
  LOADK R5 K1 ["VideoFrame"]
  NAMECALL R3 R3 K2 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+39]
  GETIMPORT R3 K5 [Instance.new]
  LOADK R4 K6 ["SurfaceGui"]
  CALL R3 1 1
  LOADB R4 1
  SETTABLEKS R4 R3 K7 ["Enabled"]
  GETUPVAL R4 0
  SETTABLEKS R4 R3 K8 ["Parent"]
  GETTABLEN R4 R1 1
  SETTABLEKS R3 R4 K8 ["Parent"]
  GETTABLEKS R4 R3 K9 ["ChildRemoved"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  NAMECALL R4 R4 K10 ["Connect"]
  CALL R4 2 1
  MOVE R2 R4
  GETTABLEKS R4 R0 K11 ["_selectionWrapper"]
  NEWTABLE R6 0 1
  MOVE R7 R3
  SETLIST R6 R7 1 [1]
  NAMECALL R4 R4 K12 ["set"]
  CALL R4 2 0
  NAMECALL R4 R0 K13 ["isSelected"]
  CALL R4 1 1
  JUMPIF R4 [+1]
  RETURN R0 0
  NAMECALL R4 R0 K14 ["_updateSelectionInfo"]
  CALL R4 1 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K15 ["DraggingFaceInstance"]
  MOVE R6 R2
  NAMECALL R3 R0 K16 ["transitionToState"]
  CALL R3 3 0
  RETURN R0 0

PROTO_37:
  GETTABLEKS R1 R0 K0 ["_stateObject"]
  NAMECALL R1 R1 K1 ["processMouseEnter"]
  CALL R1 1 0
  RETURN R0 0

PROTO_38:
  GETTABLEKS R1 R0 K0 ["_stateObject"]
  NAMECALL R1 R1 K1 ["processMouseLeave"]
  CALL R1 1 0
  RETURN R0 0

PROTO_39:
  GETTABLEKS R1 R0 K0 ["_requestRenderCallback"]
  CALL R1 0 0
  RETURN R0 0

PROTO_40:
  GETTABLEKS R1 R0 K0 ["_handlesSummoned"]
  RETURN R1 1

PROTO_41:
  GETTABLEKS R1 R0 K0 ["_handlesSummoned"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["_draggerContext"]
  GETTABLEKS R3 R0 K2 ["_draggerSchema"]
  GETTABLEKS R2 R3 K3 ["getSummonTarget"]
  JUMPIFNOT R2 [+49]
  GETTABLEKS R3 R0 K2 ["_draggerSchema"]
  GETTABLEKS R2 R3 K3 ["getSummonTarget"]
  MOVE R3 R1
  NAMECALL R4 R1 K4 ["getMouseRay"]
  CALL R4 1 -1
  CALL R2 -1 1
  JUMPIFNOT R2 [+39]
  GETTABLEKS R3 R0 K5 ["_selectionInfo"]
  NAMECALL R3 R3 K6 ["getBoundingBox"]
  CALL R3 1 3
  MOVE R8 R2
  NAMECALL R6 R3 K7 ["ToObjectSpace"]
  CALL R6 2 1
  LOADB R7 0
  NAMECALL R8 R0 K8 ["getHandlesList"]
  CALL R8 1 3
  FORGPREP R8
  GETTABLEKS R13 R12 K9 ["beginSummon"]
  JUMPIFNOT R13 [+5]
  MOVE R15 R6
  NAMECALL R13 R12 K9 ["beginSummon"]
  CALL R13 2 0
  LOADB R7 1
  FORGLOOP R8 2 [-9]
  JUMPIFNOT R7 [+14]
  LOADB R8 1
  SETTABLEKS R8 R0 K0 ["_handlesSummoned"]
  GETTABLEKS R8 R0 K1 ["_draggerContext"]
  LOADB R10 0
  NAMECALL R8 R8 K10 ["setPivotIndicator"]
  CALL R8 2 1
  SETTABLEKS R8 R0 K11 ["_pivotVisibleBeforeSummon"]
  NAMECALL R8 R0 K12 ["_scheduleRender"]
  CALL R8 1 0
  RETURN R0 0

PROTO_42:
  GETTABLEKS R1 R0 K0 ["_handlesSummoned"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K1 ["_isMouseDown"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_handlesSummoned"]
  NAMECALL R1 R0 K2 ["getHandlesList"]
  CALL R1 1 3
  FORGPREP R1
  GETTABLEKS R6 R5 K3 ["endSummon"]
  JUMPIFNOT R6 [+3]
  NAMECALL R6 R5 K3 ["endSummon"]
  CALL R6 1 0
  FORGLOOP R1 2 [-7]
  GETTABLEKS R1 R0 K4 ["_draggerContext"]
  GETTABLEKS R3 R0 K5 ["_pivotVisibleBeforeSummon"]
  NAMECALL R1 R1 K6 ["setPivotIndicator"]
  CALL R1 2 0
  NAMECALL R1 R0 K7 ["_scheduleRender"]
  CALL R1 1 0
  RETURN R0 0

PROTO_43:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowPivotIndicator"]
  RETURN R1 1

PROTO_44:
  GETIMPORT R1 K1 [tick]
  CALL R1 0 1
  SETTABLEKS R1 R0 K2 ["_selectedAtTime"]
  DUPTABLE R1 K11 [{"freeformDrags", "handleDrags", "clickSelects", "dragSelects", "dragTilts", "dragRotates", "toolName", "wasAutoSelected"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K3 ["freeformDrags"]
  LOADN R2 0
  SETTABLEKS R2 R1 K4 ["handleDrags"]
  LOADN R2 0
  SETTABLEKS R2 R1 K5 ["clickSelects"]
  LOADN R2 0
  SETTABLEKS R2 R1 K6 ["dragSelects"]
  LOADN R2 0
  SETTABLEKS R2 R1 K7 ["dragTilts"]
  LOADN R2 0
  SETTABLEKS R2 R1 K8 ["dragRotates"]
  GETTABLEKS R3 R0 K12 ["_modelProps"]
  GETTABLEKS R2 R3 K13 ["AnalyticsName"]
  SETTABLEKS R2 R1 K9 ["toolName"]
  GETTABLEKS R3 R0 K12 ["_modelProps"]
  GETTABLEKS R2 R3 K14 ["WasAutoSelected"]
  SETTABLEKS R2 R1 K10 ["wasAutoSelected"]
  SETTABLEKS R1 R0 K15 ["_sessionAnalytics"]
  GETTABLEKS R1 R0 K16 ["_draggerContext"]
  NAMECALL R1 R1 K17 ["getAnalytics"]
  CALL R1 1 1
  LOADK R3 K18 ["toolSelected"]
  DUPTABLE R4 K19 [{"toolName", "wasAutoSelected"}]
  GETTABLEKS R6 R0 K12 ["_modelProps"]
  GETTABLEKS R5 R6 K13 ["AnalyticsName"]
  SETTABLEKS R5 R4 K9 ["toolName"]
  GETTABLEKS R6 R0 K12 ["_modelProps"]
  GETTABLEKS R5 R6 K14 ["WasAutoSelected"]
  SETTABLEKS R5 R4 K10 ["wasAutoSelected"]
  NAMECALL R1 R1 K20 ["sendEvent"]
  CALL R1 3 0
  GETTABLEKS R2 R0 K12 ["_modelProps"]
  GETTABLEKS R1 R2 K14 ["WasAutoSelected"]
  JUMPIFNOT R1 [+10]
  GETTABLEKS R1 R0 K16 ["_draggerContext"]
  NAMECALL R1 R1 K17 ["getAnalytics"]
  CALL R1 1 1
  LOADK R3 K21 ["studioLuaDefaultDraggerSelected"]
  NAMECALL R1 R1 K22 ["reportCounter"]
  CALL R1 2 0
  RETURN R0 0
  GETTABLEKS R1 R0 K16 ["_draggerContext"]
  NAMECALL R1 R1 K17 ["getAnalytics"]
  CALL R1 1 1
  LOADK R4 K23 ["studioLua"]
  GETTABLEKS R7 R0 K12 ["_modelProps"]
  GETTABLEKS R5 R7 K13 ["AnalyticsName"]
  LOADK R6 K24 ["DraggerSelected"]
  CONCAT R3 R4 R6
  NAMECALL R1 R1 K22 ["reportCounter"]
  CALL R1 2 0
  RETURN R0 0

PROTO_45:
  GETIMPORT R2 K1 [tick]
  CALL R2 0 1
  GETTABLEKS R3 R0 K2 ["_selectedAtTime"]
  SUB R1 R2 R3
  GETTABLEKS R2 R0 K3 ["_sessionAnalytics"]
  SETTABLEKS R1 R2 K4 ["duration"]
  GETTABLEKS R2 R0 K5 ["_draggerContext"]
  NAMECALL R2 R2 K6 ["getAnalytics"]
  CALL R2 1 1
  LOADK R4 K7 ["toolSession"]
  GETTABLEKS R5 R0 K3 ["_sessionAnalytics"]
  NAMECALL R2 R2 K8 ["sendEvent"]
  CALL R2 3 0
  RETURN R0 0

PROTO_46:
  GETTABLEKS R3 R0 K0 ["_draggerContext"]
  NAMECALL R3 R3 K1 ["getAnalytics"]
  CALL R3 1 1
  LOADK R5 K2 ["clickedObject"]
  DUPTABLE R6 K13 [{"toolName", "wasAutoSelected", "altPressed", "ctrlPressed", "shiftPressed", "clickedAttachment", "clickedConstraint", "clickedWeldConstraint", "clickedNoCollisionConstraint", "didAlterSelection"}]
  GETTABLEKS R8 R0 K14 ["_modelProps"]
  GETTABLEKS R7 R8 K15 ["AnalyticsName"]
  SETTABLEKS R7 R6 K3 ["toolName"]
  GETTABLEKS R8 R0 K14 ["_modelProps"]
  GETTABLEKS R7 R8 K16 ["WasAutoSelected"]
  SETTABLEKS R7 R6 K4 ["wasAutoSelected"]
  GETTABLEKS R7 R0 K0 ["_draggerContext"]
  NAMECALL R7 R7 K17 ["isAltKeyDown"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K5 ["altPressed"]
  GETTABLEKS R7 R0 K0 ["_draggerContext"]
  NAMECALL R7 R7 K18 ["isCtrlKeyDown"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["ctrlPressed"]
  GETTABLEKS R7 R0 K0 ["_draggerContext"]
  NAMECALL R7 R7 K19 ["isShiftKeyDown"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K7 ["shiftPressed"]
  MOVE R7 R1
  JUMPIFNOT R7 [+4]
  LOADK R9 K20 ["Attachment"]
  NAMECALL R7 R1 K21 ["IsA"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["clickedAttachment"]
  MOVE R7 R1
  JUMPIFNOT R7 [+4]
  LOADK R9 K22 ["Constraint"]
  NAMECALL R7 R1 K21 ["IsA"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K9 ["clickedConstraint"]
  MOVE R7 R1
  JUMPIFNOT R7 [+4]
  LOADK R9 K23 ["WeldConstraint"]
  NAMECALL R7 R1 K21 ["IsA"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K10 ["clickedWeldConstraint"]
  MOVE R7 R1
  JUMPIFNOT R7 [+4]
  LOADK R9 K24 ["NoCollisionConstraint"]
  NAMECALL R7 R1 K21 ["IsA"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K11 ["clickedNoCollisionConstraint"]
  SETTABLEKS R2 R6 K12 ["didAlterSelection"]
  NAMECALL R3 R3 K25 ["sendEvent"]
  CALL R3 3 0
  JUMPIFNOT R2 [+9]
  GETTABLEKS R3 R0 K26 ["_sessionAnalytics"]
  GETTABLEKS R6 R0 K26 ["_sessionAnalytics"]
  GETTABLEKS R5 R6 K28 ["clickSelects"]
  ADDK R4 R5 K27 [1]
  SETTABLEKS R4 R3 K28 ["clickSelects"]
  RETURN R0 0

PROTO_47:
  GETTABLEKS R3 R0 K0 ["_draggerContext"]
  NAMECALL R3 R3 K1 ["getAnalytics"]
  CALL R3 1 1
  LOADK R5 K2 ["selectionCycle"]
  DUPTABLE R6 K6 [{"toolName", "numberOfClicks", "selectableCount"}]
  GETTABLEKS R8 R0 K7 ["_modelProps"]
  GETTABLEKS R7 R8 K8 ["AnalyticsName"]
  SETTABLEKS R7 R6 K3 ["toolName"]
  SETTABLEKS R1 R6 K4 ["numberOfClicks"]
  SETTABLEKS R2 R6 K5 ["selectableCount"]
  NAMECALL R3 R3 K9 ["sendEvent"]
  CALL R3 3 0
  RETURN R0 0

PROTO_48:
  GETTABLEKS R2 R0 K0 ["_sessionAnalytics"]
  GETTABLEKS R5 R0 K0 ["_sessionAnalytics"]
  GETTABLEKS R4 R5 K2 ["freeformDrags"]
  ADDK R3 R4 K1 [1]
  SETTABLEKS R3 R2 K2 ["freeformDrags"]
  LOADK R3 K3 ["studioLuaDragger"]
  GETTABLEKS R6 R0 K4 ["_modelProps"]
  GETTABLEKS R4 R6 K5 ["AnalyticsName"]
  LOADK R5 K6 ["DragTime"]
  CONCAT R2 R3 R5
  GETTABLEKS R3 R0 K7 ["_draggerContext"]
  NAMECALL R3 R3 K8 ["getAnalytics"]
  CALL R3 1 1
  MOVE R5 R2
  MOVE R6 R1
  NAMECALL R3 R3 K9 ["reportStats"]
  CALL R3 3 0
  RETURN R0 0

PROTO_49:
  GETTABLEKS R2 R0 K0 ["_draggerContext"]
  NAMECALL R2 R2 K1 ["getAnalytics"]
  CALL R2 1 1
  LOADK R4 K2 ["handleDragged"]
  DUPTABLE R5 K13 [{"toolName", "wasAutoSelected", "gridSize", "rotateIncrement", "useLocalSpace", "joinSurfaces", "useConstraints", "haveCollisions", "pivotType", "handleId"}]
  GETTABLEKS R7 R0 K14 ["_modelProps"]
  GETTABLEKS R6 R7 K15 ["AnalyticsName"]
  SETTABLEKS R6 R5 K3 ["toolName"]
  LOADB R6 0
  SETTABLEKS R6 R5 K4 ["wasAutoSelected"]
  GETTABLEKS R6 R0 K0 ["_draggerContext"]
  NAMECALL R6 R6 K16 ["getGridSize"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K5 ["gridSize"]
  GETTABLEKS R6 R0 K0 ["_draggerContext"]
  NAMECALL R6 R6 K17 ["getRotateIncrement"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K6 ["rotateIncrement"]
  GETTABLEKS R6 R0 K0 ["_draggerContext"]
  NAMECALL R6 R6 K18 ["shouldUseLocalSpace"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["useLocalSpace"]
  GETTABLEKS R6 R0 K0 ["_draggerContext"]
  NAMECALL R6 R6 K19 ["shouldJoinSurfaces"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K8 ["joinSurfaces"]
  GETTABLEKS R6 R0 K0 ["_draggerContext"]
  NAMECALL R6 R6 K20 ["areConstraintsEnabled"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K9 ["useConstraints"]
  GETTABLEKS R6 R0 K0 ["_draggerContext"]
  NAMECALL R6 R6 K21 ["areCollisionsEnabled"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K10 ["haveCollisions"]
  NAMECALL R6 R0 K22 ["classifySelectionPivot"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K11 ["pivotType"]
  SETTABLEKS R1 R5 K12 ["handleId"]
  NAMECALL R2 R2 K23 ["sendEvent"]
  CALL R2 3 0
  GETTABLEKS R2 R0 K0 ["_draggerContext"]
  NAMECALL R2 R2 K1 ["getAnalytics"]
  CALL R2 1 1
  GETTABLEKS R5 R0 K14 ["_modelProps"]
  GETTABLEKS R4 R5 K15 ["AnalyticsName"]
  GETUPVAL R5 0
  NAMECALL R2 R2 K24 ["logTelemetryCounter"]
  CALL R2 3 0
  RETURN R0 0

PROTO_50:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["getAnalytics"]
  CALL R1 1 1
  LOADK R3 K2 ["boxSelected"]
  DUPTABLE R4 K9 [{"toolName", "wasAutoSelected", "objectCount", "altPressed", "ctrlPressed", "shiftPressed"}]
  GETTABLEKS R6 R0 K10 ["_modelProps"]
  GETTABLEKS R5 R6 K11 ["AnalyticsName"]
  SETTABLEKS R5 R4 K3 ["toolName"]
  GETTABLEKS R6 R0 K10 ["_modelProps"]
  GETTABLEKS R5 R6 K12 ["WasAutoSelected"]
  SETTABLEKS R5 R4 K4 ["wasAutoSelected"]
  GETTABLEKS R6 R0 K13 ["_selectionWrapper"]
  NAMECALL R6 R6 K14 ["get"]
  CALL R6 1 1
  LENGTH R5 R6
  SETTABLEKS R5 R4 K5 ["objectCount"]
  GETTABLEKS R5 R0 K0 ["_draggerContext"]
  NAMECALL R5 R5 K15 ["isAltKeyDown"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K6 ["altPressed"]
  GETTABLEKS R5 R0 K0 ["_draggerContext"]
  NAMECALL R5 R5 K16 ["isCtrlKeyDown"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K7 ["ctrlPressed"]
  GETTABLEKS R5 R0 K0 ["_draggerContext"]
  NAMECALL R5 R5 K17 ["isShiftKeyDown"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K8 ["shiftPressed"]
  NAMECALL R1 R1 K18 ["sendEvent"]
  CALL R1 3 0
  RETURN R0 0

PROTO_51:
  GETTABLEKS R2 R0 K0 ["_draggerContext"]
  NAMECALL R2 R2 K1 ["getAnalytics"]
  CALL R2 1 1
  LOADK R4 K2 ["faceInstanceSelected"]
  DUPTABLE R5 K6 [{"toolName", "wasAutoSelected", "className"}]
  GETTABLEKS R7 R0 K7 ["_modelProps"]
  GETTABLEKS R6 R7 K8 ["AnalyticsName"]
  SETTABLEKS R6 R5 K3 ["toolName"]
  GETTABLEKS R7 R0 K7 ["_modelProps"]
  GETTABLEKS R6 R7 K9 ["WasAutoSelected"]
  SETTABLEKS R6 R5 K4 ["wasAutoSelected"]
  SETTABLEKS R1 R5 K5 ["className"]
  NAMECALL R2 R2 K10 ["sendEvent"]
  CALL R2 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Workspace"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R3 R1 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R2 K9 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K11 ["Implementation"]
  GETTABLEKS R5 R6 K12 ["SelectionCycleCache"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K13 ["Utility"]
  GETTABLEKS R6 R7 K14 ["SelectionWrapper"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R1 K13 ["Utility"]
  GETTABLEKS R7 R8 K15 ["SelectionHelper"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R1 K13 ["Utility"]
  GETTABLEKS R8 R9 K16 ["classifyPivot"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R10 R1 K13 ["Utility"]
  GETTABLEKS R9 R10 K17 ["Analytics"]
  CALL R8 1 1
  DUPTABLE R9 K23 [{"eventName", "lastUpdated", "description", "links", "backends"}]
  LOADK R10 K24 ["SBT_DraggerHandleDragCompleted"]
  SETTABLEKS R10 R9 K18 ["eventName"]
  NEWTABLE R10 0 3
  LOADN R11 232
  LOADN R12 10
  LOADN R13 14
  SETLIST R10 R11 3 [1]
  SETTABLEKS R10 R9 K19 ["lastUpdated"]
  LOADK R10 K25 ["The user successfully dragged the selection via a handle."]
  SETTABLEKS R10 R9 K20 ["description"]
  LOADK R10 K26 ["https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d"]
  SETTABLEKS R10 R9 K21 ["links"]
  NEWTABLE R10 0 1
  LOADK R11 K27 ["RobloxTelemetryCounter"]
  SETLIST R10 R11 1 [1]
  SETTABLEKS R10 R9 K22 ["backends"]
  GETIMPORT R10 K8 [require]
  GETTABLEKS R12 R1 K28 ["Flags"]
  GETTABLEKS R11 R12 K29 ["getFFlagDraggerHandlesIsEnabledFunction"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R13 R1 K28 ["Flags"]
  GETTABLEKS R12 R13 K30 ["getFFlagDraggerImprovements"]
  CALL R11 1 1
  GETIMPORT R12 K1 [game]
  LOADK R14 K31 ["FixDragFromToolbox"]
  LOADB R15 0
  NAMECALL R12 R12 K32 ["DefineFastFlag"]
  CALL R12 3 1
  NEWTABLE R13 64 0
  SETTABLEKS R13 R13 K33 ["__index"]
  GETIMPORT R14 K8 [require]
  GETTABLEKS R16 R1 K11 ["Implementation"]
  GETTABLEKS R15 R16 K34 ["DraggerStateType"]
  CALL R14 1 1
  GETTABLEKS R16 R1 K11 ["Implementation"]
  GETTABLEKS R15 R16 K35 ["DraggerStates"]
  GETIMPORT R16 K38 [table.freeze]
  NEWTABLE R17 8 0
  GETTABLEKS R18 R14 K39 ["Ready"]
  GETIMPORT R19 K8 [require]
  GETTABLEKS R20 R15 K39 ["Ready"]
  CALL R19 1 1
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R14 K40 ["DraggingFaceInstance"]
  GETIMPORT R19 K8 [require]
  GETTABLEKS R20 R15 K40 ["DraggingFaceInstance"]
  CALL R19 1 1
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R14 K41 ["PendingDraggingParts"]
  GETIMPORT R19 K8 [require]
  GETTABLEKS R20 R15 K41 ["PendingDraggingParts"]
  CALL R19 1 1
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R14 K42 ["PendingSelectNext"]
  GETIMPORT R19 K8 [require]
  GETTABLEKS R20 R15 K42 ["PendingSelectNext"]
  CALL R19 1 1
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R14 K43 ["DraggingHandle"]
  GETIMPORT R19 K8 [require]
  GETTABLEKS R20 R15 K43 ["DraggingHandle"]
  CALL R19 1 1
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R14 K44 ["DraggingParts"]
  GETIMPORT R19 K8 [require]
  GETTABLEKS R20 R15 K44 ["DraggingParts"]
  CALL R19 1 1
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R14 K45 ["DragSelecting"]
  GETIMPORT R19 K8 [require]
  GETTABLEKS R20 R15 K45 ["DragSelecting"]
  CALL R19 1 1
  SETTABLE R19 R17 R18
  CALL R16 1 1
  DUPTABLE R17 K53 [{"AllowDragSelect", "AllowFreeformDrag", "ShowLocalSpaceIndicator", "WasAutoSelected", "HandlesList", "ShowPivotIndicator", "ShowDragSelect"}]
  LOADB R18 1
  SETTABLEKS R18 R17 K46 ["AllowDragSelect"]
  LOADB R18 1
  SETTABLEKS R18 R17 K47 ["AllowFreeformDrag"]
  LOADB R18 0
  SETTABLEKS R18 R17 K48 ["ShowLocalSpaceIndicator"]
  LOADB R18 0
  SETTABLEKS R18 R17 K49 ["WasAutoSelected"]
  NEWTABLE R18 0 0
  SETTABLEKS R18 R17 K50 ["HandlesList"]
  LOADB R18 0
  SETTABLEKS R18 R17 K51 ["ShowPivotIndicator"]
  LOADB R18 1
  SETTABLEKS R18 R17 K52 ["ShowDragSelect"]
  DUPTABLE R18 K55 [{"AnalyticsName"}]
  LOADB R19 1
  SETTABLEKS R19 R18 K54 ["AnalyticsName"]
  DUPCLOSURE R19 K56 [PROTO_0]
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R13
  SETTABLEKS R19 R13 K57 ["new"]
  DUPCLOSURE R19 K58 [PROTO_1]
  SETTABLEKS R19 R13 K59 ["setMouseCursor"]
  DUPCLOSURE R19 K60 [PROTO_2]
  CAPTURE VAL R16
  SETTABLEKS R19 R13 K61 ["transitionToState"]
  DUPCLOSURE R19 K62 [PROTO_3]
  CAPTURE VAL R3
  SETTABLEKS R19 R13 K63 ["render"]
  DUPCLOSURE R19 K64 [PROTO_4]
  CAPTURE VAL R14
  SETTABLEKS R19 R13 K65 ["update"]
  DUPCLOSURE R19 K66 [PROTO_5]
  SETTABLEKS R19 R13 K67 ["getSelectionWrapper"]
  DUPCLOSURE R19 K68 [PROTO_6]
  SETTABLEKS R19 R13 K69 ["getAnalyticsName"]
  DUPCLOSURE R19 K70 [PROTO_7]
  SETTABLEKS R19 R13 K71 ["wasAutoSelected"]
  DUPCLOSURE R19 K72 [PROTO_8]
  SETTABLEKS R19 R13 K73 ["getSchema"]
  DUPCLOSURE R19 K74 [PROTO_9]
  CAPTURE VAL R10
  SETTABLEKS R19 R13 K75 ["getHandlesList"]
  DUPCLOSURE R19 K76 [PROTO_10]
  SETTABLEKS R19 R13 K77 ["doesAllowDragSelect"]
  DUPCLOSURE R19 K78 [PROTO_11]
  SETTABLEKS R19 R13 K79 ["doesAllowFreeformDrag"]
  DUPCLOSURE R19 K80 [PROTO_12]
  SETTABLEKS R19 R13 K81 ["shouldShowDragSelect"]
  DUPCLOSURE R19 K82 [PROTO_13]
  SETTABLEKS R19 R13 K83 ["shouldShowLocalSpaceIndicator"]
  DUPCLOSURE R19 K84 [PROTO_14]
  SETTABLEKS R19 R13 K85 ["shouldShowSelectionDot"]
  DUPCLOSURE R19 K86 [PROTO_15]
  SETTABLEKS R19 R13 K87 ["shouldUseCollisionTransparency"]
  DUPCLOSURE R19 K88 [PROTO_16]
  SETTABLEKS R19 R13 K89 ["shouldAlignDraggedObjects"]
  DUPCLOSURE R19 K90 [PROTO_17]
  CAPTURE VAL R6
  SETTABLEKS R19 R13 K91 ["selectNextSelectables"]
  DUPCLOSURE R19 K92 [PROTO_18]
  CAPTURE VAL R7
  SETTABLEKS R19 R13 K93 ["classifySelectionPivot"]
  DUPCLOSURE R19 K94 [PROTO_21]
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R5
  CAPTURE VAL R10
  SETTABLEKS R19 R13 K95 ["_processSelected"]
  DUPCLOSURE R19 K96 [PROTO_22]
  CAPTURE VAL R11
  SETTABLEKS R19 R13 K97 ["_processDeselected"]
  DUPCLOSURE R19 K98 [PROTO_23]
  SETTABLEKS R19 R13 K99 ["isSelected"]
  MOVE R19 R10
  CALL R19 0 1
  JUMPIFNOT R19 [+3]
  DUPCLOSURE R19 K100 [PROTO_24]
  SETTABLEKS R19 R13 K101 ["_updateEnabledHandlesList"]
  DUPCLOSURE R19 K102 [PROTO_25]
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R19 R13 K103 ["_processSelectionChanged"]
  DUPCLOSURE R19 K104 [PROTO_26]
  SETTABLEKS R19 R13 K105 ["_processKeyDown"]
  DUPCLOSURE R19 K106 [PROTO_27]
  SETTABLEKS R19 R13 K107 ["_processKeyUp"]
  DUPCLOSURE R19 K108 [PROTO_28]
  SETTABLEKS R19 R13 K109 ["_processMouseDown"]
  DUPCLOSURE R19 K110 [PROTO_29]
  SETTABLEKS R19 R13 K111 ["_processMouseUp"]
  DUPCLOSURE R19 K112 [PROTO_30]
  SETTABLEKS R19 R13 K113 ["_processViewChanged"]
  DUPCLOSURE R19 K114 [PROTO_31]
  CAPTURE VAL R10
  SETTABLEKS R19 R13 K115 ["_updateHandles"]
  DUPCLOSURE R19 K116 [PROTO_32]
  SETTABLEKS R19 R13 K117 ["_updateSelectionInfo"]
  DUPCLOSURE R19 K118 [PROTO_33]
  CAPTURE VAL R14
  SETTABLEKS R19 R13 K119 ["_updatePivotIndicatorVisibility"]
  DUPCLOSURE R19 K120 [PROTO_34]
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R14
  SETTABLEKS R19 R13 K121 ["_processToolboxInitiatedFreeformSelectionDrag"]
  DUPCLOSURE R19 K122 [PROTO_36]
  CAPTURE VAL R0
  CAPTURE VAL R14
  SETTABLEKS R19 R13 K123 ["_processToolboxInitiatedFaceDrag"]
  DUPCLOSURE R19 K124 [PROTO_37]
  SETTABLEKS R19 R13 K125 ["_processMouseEnter"]
  DUPCLOSURE R19 K126 [PROTO_38]
  SETTABLEKS R19 R13 K127 ["_processMouseLeave"]
  DUPCLOSURE R19 K128 [PROTO_39]
  SETTABLEKS R19 R13 K129 ["_scheduleRender"]
  DUPCLOSURE R19 K130 [PROTO_40]
  SETTABLEKS R19 R13 K131 ["_isSummoned"]
  DUPCLOSURE R19 K132 [PROTO_41]
  SETTABLEKS R19 R13 K133 ["_beginSummon"]
  DUPCLOSURE R19 K134 [PROTO_42]
  SETTABLEKS R19 R13 K135 ["_endSummon"]
  DUPCLOSURE R19 K136 [PROTO_43]
  SETTABLEKS R19 R13 K137 ["shouldShowPivotIndicator"]
  DUPCLOSURE R19 K138 [PROTO_44]
  SETTABLEKS R19 R13 K139 ["_analyticsSessionBegin"]
  DUPCLOSURE R19 K140 [PROTO_45]
  SETTABLEKS R19 R13 K141 ["_analyticsSendSession"]
  DUPCLOSURE R19 K142 [PROTO_46]
  SETTABLEKS R19 R13 K143 ["_analyticsSendClick"]
  DUPCLOSURE R19 K144 [PROTO_47]
  SETTABLEKS R19 R13 K145 ["_analyticsSendSelectionCycle"]
  DUPCLOSURE R19 K146 [PROTO_48]
  SETTABLEKS R19 R13 K147 ["_analyticsRecordFreeformDragBegin"]
  DUPCLOSURE R19 K148 [PROTO_49]
  CAPTURE VAL R9
  SETTABLEKS R19 R13 K149 ["_analyticsSendHandleDragged"]
  DUPCLOSURE R19 K150 [PROTO_50]
  SETTABLEKS R19 R13 K151 ["_analyticsSendBoxSelect"]
  DUPCLOSURE R19 K152 [PROTO_51]
  SETTABLEKS R19 R13 K153 ["_analyticsSendFaceInstanceSelected"]
  RETURN R13 1
