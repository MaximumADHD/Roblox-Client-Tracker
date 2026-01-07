PROTO_0:
  DUPTABLE R4 K1 [{"_draggerToolModel"}]
  SETTABLEKS R0 R4 K0 ["_draggerToolModel"]
  GETUPVAL R5 0
  FASTCALL2 SETMETATABLE R4 R5 [+3]
  GETIMPORT R3 K3 [setmetatable]
  CALL R3 2 1
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R4 R3 K4 ["_init"]
  CALL R4 3 0
  RETURN R3 1

PROTO_1:
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  FASTCALL2K ASSERT R2 K0 [+5]
  MOVE R4 R2
  LOADK R5 K0 ["Missing draggingHandleId"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R0 K3 ["_draggerToolModel"]
  GETTABLEKS R3 R4 K4 ["_sessionAnalytics"]
  GETTABLEKS R7 R0 K3 ["_draggerToolModel"]
  GETTABLEKS R6 R7 K4 ["_sessionAnalytics"]
  GETTABLEKS R5 R6 K6 ["handleDrags"]
  ADDK R4 R5 K5 [1]
  SETTABLEKS R4 R3 K6 ["handleDrags"]
  GETTABLEKS R4 R0 K3 ["_draggerToolModel"]
  GETTABLEKS R3 R4 K7 ["_boundsChangedTracker"]
  NAMECALL R3 R3 K8 ["uninstall"]
  CALL R3 1 0
  GETTABLEKS R6 R0 K3 ["_draggerToolModel"]
  GETTABLEKS R5 R6 K9 ["_draggerContext"]
  NAMECALL R5 R5 K10 ["getMouseRay"]
  CALL R5 1 1
  MOVE R6 R2
  NAMECALL R3 R1 K11 ["mouseDown"]
  CALL R3 3 0
  SETTABLEKS R2 R0 K12 ["_draggingHandleId"]
  SETTABLEKS R1 R0 K13 ["_draggingHandles"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_draggerToolModel"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["getClosedHand"]
  CALL R3 0 -1
  NAMECALL R1 R1 K2 ["setMouseCursor"]
  CALL R1 -1 0
  GETTABLEKS R1 R0 K3 ["_draggingHandles"]
  GETTABLEKS R3 R0 K4 ["_draggingHandleId"]
  NAMECALL R1 R1 K5 ["render"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_5:
  LOADB R3 1
  NAMECALL R1 R0 K0 ["_endHandleDrag"]
  CALL R1 2 0
  GETTABLEKS R3 R0 K1 ["_draggingHandles"]
  GETTABLEKS R4 R0 K2 ["_draggingHandleId"]
  NAMECALL R1 R0 K3 ["_init"]
  CALL R1 3 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["Mouse should already be down while dragging handle."]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["_draggingHandles"]
  GETTABLEKS R4 R0 K1 ["_draggerToolModel"]
  GETTABLEKS R3 R4 K2 ["_draggerContext"]
  NAMECALL R3 R3 K3 ["getMouseRay"]
  CALL R3 1 -1
  NAMECALL R1 R1 K4 ["mouseDrag"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_8:
  LOADB R3 0
  NAMECALL R1 R0 K0 ["_endHandleDrag"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K1 ["_draggerToolModel"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Ready"]
  NAMECALL R1 R1 K3 ["transitionToState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  RETURN R0 0

PROTO_10:
  RETURN R0 0

PROTO_11:
  GETIMPORT R2 K1 [pairs]
  GETTABLEKS R3 R0 K2 ["_draggerToolModel"]
  NAMECALL R3 R3 K3 ["getHandlesList"]
  CALL R3 1 -1
  CALL R2 -1 3
  FORGPREP_NEXT R2
  GETTABLEKS R7 R6 K4 ["keyDown"]
  JUMPIFNOT R7 [+13]
  MOVE R9 R1
  NAMECALL R7 R6 K4 ["keyDown"]
  CALL R7 2 1
  JUMPIFNOT R7 [+8]
  NAMECALL R7 R0 K5 ["processViewChanged"]
  CALL R7 1 0
  GETTABLEKS R7 R0 K2 ["_draggerToolModel"]
  NAMECALL R7 R7 K6 ["_scheduleRender"]
  CALL R7 1 0
  FORGLOOP R2 2 [-17]
  RETURN R0 0

PROTO_12:
  GETIMPORT R2 K1 [pairs]
  GETTABLEKS R3 R0 K2 ["_draggerToolModel"]
  NAMECALL R3 R3 K3 ["getHandlesList"]
  CALL R3 1 -1
  CALL R2 -1 3
  FORGPREP_NEXT R2
  GETTABLEKS R7 R6 K4 ["keyUp"]
  JUMPIFNOT R7 [+13]
  MOVE R9 R1
  NAMECALL R7 R6 K4 ["keyUp"]
  CALL R7 2 1
  JUMPIFNOT R7 [+8]
  NAMECALL R7 R0 K5 ["processViewChanged"]
  CALL R7 1 0
  GETTABLEKS R7 R0 K2 ["_draggerToolModel"]
  NAMECALL R7 R7 K6 ["_scheduleRender"]
  CALL R7 1 0
  FORGLOOP R2 2 [-17]
  RETURN R0 0

PROTO_13:
  GETTABLEKS R2 R0 K0 ["_draggingHandles"]
  GETTABLEKS R5 R0 K1 ["_draggerToolModel"]
  GETTABLEKS R4 R5 K2 ["_draggerContext"]
  NAMECALL R4 R4 K3 ["getMouseRay"]
  CALL R4 1 -1
  NAMECALL R2 R2 K4 ["mouseUp"]
  CALL R2 -1 1
  JUMPIFNOT R1 [+7]
  GETTABLEKS R3 R0 K1 ["_draggerToolModel"]
  LOADNIL R5
  NAMECALL R3 R3 K5 ["_updateSelectionInfo"]
  CALL R3 2 0
  JUMP [+6]
  GETTABLEKS R3 R0 K1 ["_draggerToolModel"]
  MOVE R5 R2
  NAMECALL R3 R3 K5 ["_updateSelectionInfo"]
  CALL R3 2 0
  GETTABLEKS R4 R0 K1 ["_draggerToolModel"]
  GETTABLEKS R3 R4 K6 ["_boundsChangedTracker"]
  NAMECALL R3 R3 K7 ["install"]
  CALL R3 1 0
  GETTABLEKS R4 R0 K1 ["_draggerToolModel"]
  NAMECALL R4 R4 K8 ["getSchema"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K9 ["setActivePoint"]
  GETTABLEKS R5 R0 K1 ["_draggerToolModel"]
  GETTABLEKS R4 R5 K2 ["_draggerContext"]
  GETTABLEKS R6 R0 K1 ["_draggerToolModel"]
  GETTABLEKS R5 R6 K10 ["_selectionInfo"]
  CALL R3 2 0
  GETTABLEKS R3 R0 K1 ["_draggerToolModel"]
  GETTABLEKS R5 R0 K11 ["_draggingHandleId"]
  NAMECALL R3 R3 K12 ["_analyticsSendHandleDragged"]
  CALL R3 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Implementation"]
  GETTABLEKS R2 R3 K6 ["DraggerStateType"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Utility"]
  GETTABLEKS R3 R4 K8 ["StandardCursor"]
  CALL R2 1 1
  NEWTABLE R3 16 0
  SETTABLEKS R3 R3 K9 ["__index"]
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K11 ["new"]
  DUPCLOSURE R4 K12 [PROTO_1]
  SETTABLEKS R4 R3 K13 ["enter"]
  DUPCLOSURE R4 K14 [PROTO_2]
  SETTABLEKS R4 R3 K15 ["leave"]
  DUPCLOSURE R4 K16 [PROTO_3]
  SETTABLEKS R4 R3 K17 ["_init"]
  DUPCLOSURE R4 K18 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K19 ["render"]
  DUPCLOSURE R4 K20 [PROTO_5]
  SETTABLEKS R4 R3 K21 ["processSelectionChanged"]
  DUPCLOSURE R4 K22 [PROTO_6]
  SETTABLEKS R4 R3 K23 ["processMouseDown"]
  DUPCLOSURE R4 K24 [PROTO_7]
  SETTABLEKS R4 R3 K25 ["processViewChanged"]
  DUPCLOSURE R4 K26 [PROTO_8]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K27 ["processMouseUp"]
  DUPCLOSURE R4 K28 [PROTO_9]
  SETTABLEKS R4 R3 K29 ["processMouseEnter"]
  DUPCLOSURE R4 K30 [PROTO_10]
  SETTABLEKS R4 R3 K31 ["processMouseLeave"]
  DUPCLOSURE R4 K32 [PROTO_11]
  SETTABLEKS R4 R3 K33 ["processKeyDown"]
  DUPCLOSURE R4 K34 [PROTO_12]
  SETTABLEKS R4 R3 K35 ["processKeyUp"]
  DUPCLOSURE R4 K36 [PROTO_13]
  SETTABLEKS R4 R3 K37 ["_endHandleDrag"]
  RETURN R3 1
