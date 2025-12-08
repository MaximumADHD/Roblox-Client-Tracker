PROTO_0:
  RETURN R0 0

PROTO_1:
  DUPTABLE R2 K2 [{"_dragSelector", "_draggerToolModel"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["new"]
  NAMECALL R4 R0 K4 ["getSelectionWrapper"]
  CALL R4 1 1
  NAMECALL R6 R0 K5 ["getSchema"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K6 ["beginBoxSelect"]
  NAMECALL R7 R0 K5 ["getSchema"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K7 ["updateBoxSelect"]
  JUMPIF R6 [+1]
  DUPCLOSURE R6 K8 [PROTO_0]
  NAMECALL R8 R0 K5 ["getSchema"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K9 ["endBoxSelect"]
  CALL R3 4 1
  SETTABLEKS R3 R2 K0 ["_dragSelector"]
  SETTABLEKS R0 R2 K1 ["_draggerToolModel"]
  GETUPVAL R3 1
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K11 [setmetatable]
  CALL R1 2 1
  NAMECALL R2 R1 K12 ["_init"]
  CALL R2 1 0
  RETURN R1 1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R1 R2 K1 ["_draggerContext"]
  NAMECALL R1 R1 K2 ["getMouseLocation"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["_mouseStartLocation"]
  RETURN R0 0

PROTO_3:
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R1 R2 K1 ["_sessionAnalytics"]
  GETTABLEKS R5 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R4 R5 K1 ["_sessionAnalytics"]
  GETTABLEKS R3 R4 K3 ["dragSelects"]
  ADDK R2 R3 K2 [1]
  SETTABLEKS R2 R1 K3 ["dragSelects"]
  LOADB R1 0
  SETTABLEKS R1 R0 K4 ["_hasMovedMouse"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_draggerToolModel"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["getArrow"]
  CALL R3 0 -1
  NAMECALL R1 R1 K2 ["setMouseCursor"]
  CALL R1 -1 0
  GETTABLEKS R2 R0 K3 ["_hasMovedMouse"]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R1 R0 K4 ["_dragSelector"]
  NAMECALL R1 R1 K5 ["getStartLocation"]
  CALL R1 1 1
  JUMPIF R1 [+7]
  GETTABLEKS R2 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R1 R2 K6 ["_draggerContext"]
  NAMECALL R1 R1 K7 ["getMouseLocation"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K0 ["_draggerToolModel"]
  NAMECALL R2 R2 K8 ["shouldShowDragSelect"]
  CALL R2 1 1
  JUMPIFNOT R2 [+18]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K9 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K12 [{"DragStartLocation", "DragEndLocation"}]
  SETTABLEKS R1 R4 K10 ["DragStartLocation"]
  GETTABLEKS R6 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R5 R6 K6 ["_draggerContext"]
  NAMECALL R5 R5 K7 ["getMouseLocation"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K11 ["DragEndLocation"]
  CALL R2 2 -1
  RETURN R2 -1
  LOADNIL R2
  RETURN R2 1

PROTO_6:
  RETURN R0 0

PROTO_7:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["Mouse should already be down while drag selecting."]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_hasMovedMouse"]
  JUMPIF R1 [+14]
  GETTABLEKS R1 R0 K1 ["_dragSelector"]
  GETTABLEKS R4 R0 K2 ["_draggerToolModel"]
  GETTABLEKS R3 R4 K3 ["_draggerContext"]
  GETTABLEKS R4 R0 K4 ["_mouseStartLocation"]
  NAMECALL R1 R1 K5 ["beginDrag"]
  CALL R1 3 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_hasMovedMouse"]
  GETTABLEKS R1 R0 K1 ["_dragSelector"]
  GETTABLEKS R4 R0 K2 ["_draggerToolModel"]
  GETTABLEKS R3 R4 K3 ["_draggerContext"]
  NAMECALL R1 R1 K6 ["updateDrag"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_hasMovedMouse"]
  JUMPIFNOT R1 [+17]
  GETTABLEKS R1 R0 K1 ["_dragSelector"]
  GETTABLEKS R4 R0 K2 ["_draggerToolModel"]
  GETTABLEKS R3 R4 K3 ["_draggerContext"]
  NAMECALL R1 R1 K4 ["commitDrag"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K2 ["_draggerToolModel"]
  NAMECALL R1 R1 K5 ["_updateSelectionInfo"]
  CALL R1 1 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_hasMovedMouse"]
  GETTABLEKS R1 R0 K2 ["_draggerToolModel"]
  NAMECALL R1 R1 K6 ["_analyticsSendBoxSelect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_draggerToolModel"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["Ready"]
  NAMECALL R1 R1 K8 ["transitionToState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_10:
  RETURN R0 0

PROTO_11:
  RETURN R0 0

PROTO_12:
  RETURN R0 0

PROTO_13:
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
  GETTABLEKS R4 R5 K7 ["DragSelectionView"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K8 ["Implementation"]
  GETTABLEKS R5 R6 K9 ["DraggerStateType"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K10 ["Utility"]
  GETTABLEKS R6 R7 K11 ["DragSelector"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K10 ["Utility"]
  GETTABLEKS R7 R8 K12 ["StandardCursor"]
  CALL R6 1 1
  NEWTABLE R7 16 0
  SETTABLEKS R7 R7 K13 ["__index"]
  DUPCLOSURE R8 K14 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K15 ["new"]
  DUPCLOSURE R8 K16 [PROTO_2]
  SETTABLEKS R8 R7 K17 ["enter"]
  DUPCLOSURE R8 K18 [PROTO_3]
  SETTABLEKS R8 R7 K19 ["leave"]
  DUPCLOSURE R8 K20 [PROTO_4]
  SETTABLEKS R8 R7 K21 ["_init"]
  DUPCLOSURE R8 K22 [PROTO_5]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R8 R7 K23 ["render"]
  DUPCLOSURE R8 K24 [PROTO_6]
  SETTABLEKS R8 R7 K25 ["processSelectionChanged"]
  DUPCLOSURE R8 K26 [PROTO_7]
  SETTABLEKS R8 R7 K27 ["processMouseDown"]
  DUPCLOSURE R8 K28 [PROTO_8]
  SETTABLEKS R8 R7 K29 ["processViewChanged"]
  DUPCLOSURE R8 K30 [PROTO_9]
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K31 ["processMouseUp"]
  DUPCLOSURE R8 K32 [PROTO_10]
  SETTABLEKS R8 R7 K33 ["processMouseEnter"]
  DUPCLOSURE R8 K34 [PROTO_11]
  SETTABLEKS R8 R7 K35 ["processMouseLeave"]
  DUPCLOSURE R8 K36 [PROTO_12]
  SETTABLEKS R8 R7 K37 ["processKeyDown"]
  DUPCLOSURE R8 K38 [PROTO_13]
  SETTABLEKS R8 R7 K39 ["processKeyUp"]
  RETURN R7 1
