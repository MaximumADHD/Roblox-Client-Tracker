PROTO_0:
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_viewBoundsDirty"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_selectionBoundsDirty"]
  RETURN R0 0

PROTO_3:
  MOVE R3 R2
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  MOVE R2 R3
  DUPTABLE R4 K3 [{"_draggerContext", "_viewBoundsDirty", "_selectionBoundsDirty"}]
  SETTABLEKS R0 R4 K0 ["_draggerContext"]
  LOADB R5 1
  SETTABLEKS R5 R4 K1 ["_viewBoundsDirty"]
  LOADB R5 1
  SETTABLEKS R5 R4 K2 ["_selectionBoundsDirty"]
  GETUPVAL R5 0
  FASTCALL2 SETMETATABLE R4 R5 [+3]
  GETIMPORT R3 K5 [setmetatable]
  CALL R3 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["new"]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  DUPCLOSURE R8 K7 [PROTO_0]
  NEWCLOSURE R9 P1
  CAPTURE VAL R3
  NEWCLOSURE R10 P2
  CAPTURE VAL R3
  CALL R4 6 1
  SETTABLEKS R4 R3 K8 ["_draggerToolModel"]
  RETURN R3 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_draggerToolModel"]
  RETURN R1 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_selectionBoundsDirty"]
  JUMPIFNOT R1 [+8]
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_selectionBoundsDirty"]
  GETTABLEKS R1 R0 K1 ["_draggerToolModel"]
  NAMECALL R1 R1 K2 ["_processSelectionChanged"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["_viewBoundsDirty"]
  JUMPIFNOT R1 [+8]
  LOADB R1 0
  SETTABLEKS R1 R0 K3 ["_viewBoundsDirty"]
  GETTABLEKS R1 R0 K1 ["_draggerToolModel"]
  NAMECALL R1 R1 K4 ["_processViewChanged"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R3 R0 K0 ["_selected"]
  NOT R2 R3
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["select called while already selected"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_selected"]
  GETTABLEKS R1 R0 K4 ["_draggerToolModel"]
  NAMECALL R1 R1 K5 ["_processSelected"]
  CALL R1 1 0
  NAMECALL R1 R0 K6 ["_update"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R0 K0 ["_selected"]
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["must call select before beginDrag"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K4 ["_draggerToolModel"]
  NAMECALL R1 R1 K5 ["_processMouseDown"]
  CALL R1 1 0
  NAMECALL R1 R0 K6 ["_update"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R4 R0 K0 ["_selected"]
  FASTCALL2K ASSERT R4 K1 [+4]
  LOADK R5 K1 ["must call select before moveMouse"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  GETTABLEKS R3 R0 K4 ["_draggerContext"]
  NAMECALL R3 R3 K5 ["getViewportSize"]
  CALL R3 1 1
  GETTABLEKS R4 R0 K4 ["_draggerContext"]
  GETIMPORT R6 K8 [Vector2.new]
  GETTABLEKS R8 R3 K9 ["X"]
  MUL R7 R8 R1
  GETTABLEKS R9 R3 K10 ["Y"]
  MUL R8 R9 R2
  CALL R6 2 -1
  NAMECALL R4 R4 K11 ["setMouseLocation"]
  CALL R4 -1 0
  GETTABLEKS R4 R0 K12 ["_draggerToolModel"]
  NAMECALL R4 R4 K13 ["_processViewChanged"]
  CALL R4 1 0
  NAMECALL R4 R0 K14 ["_update"]
  CALL R4 1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R0 K0 ["_draggerContext"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["worldToViewportPoint"]
  CALL R2 2 1
  GETTABLEKS R5 R2 K2 ["Z"]
  LOADN R6 0
  JUMPIFLT R6 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  LOADK R6 K3 ["Can't move mouse over %* because it is behind the camera"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  FASTCALL2 ASSERT R4 R5 [+3]
  GETIMPORT R3 K6 [assert]
  CALL R3 2 0
  GETTABLEKS R3 R0 K0 ["_draggerContext"]
  GETIMPORT R5 K9 [Vector2.new]
  GETTABLEKS R6 R2 K10 ["X"]
  GETTABLEKS R7 R2 K11 ["Y"]
  CALL R5 2 -1
  NAMECALL R3 R3 K12 ["setMouseLocation"]
  CALL R3 -1 0
  GETTABLEKS R3 R0 K13 ["_draggerToolModel"]
  NAMECALL R3 R3 K14 ["_processViewChanged"]
  CALL R3 1 0
  NAMECALL R3 R0 K15 ["_update"]
  CALL R3 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R2 R0 K0 ["_selected"]
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["must call select before endDrag"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K4 ["_draggerToolModel"]
  NAMECALL R1 R1 K5 ["_processMouseUp"]
  CALL R1 1 0
  NAMECALL R1 R0 K6 ["_update"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  NAMECALL R1 R0 K0 ["mouseDown"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["mouseUp"]
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["mouseMoveOverPoint"]
  CALL R2 2 0
  NAMECALL R2 R0 K1 ["mouseClick"]
  CALL R2 1 0
  RETURN R0 0

PROTO_13:
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["EnumItem"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["keyPress takes an Enum.KeyCode"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  GETTABLEKS R3 R0 K6 ["_selected"]
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["must call select before keyPress"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K8 ["_draggerToolModel"]
  MOVE R4 R1
  NAMECALL R2 R2 K9 ["_processKeyDown"]
  CALL R2 2 0
  NAMECALL R2 R0 K10 ["_update"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K8 ["_draggerToolModel"]
  MOVE R4 R1
  NAMECALL R2 R2 K11 ["_processKeyUp"]
  CALL R2 2 0
  NAMECALL R2 R0 K10 ["_update"]
  CALL R2 1 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R2 R0 K0 ["_selected"]
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["deselect called while not selected"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_selected"]
  GETTABLEKS R1 R0 K4 ["_draggerToolModel"]
  NAMECALL R1 R1 K5 ["_processDeselected"]
  CALL R1 1 0
  NAMECALL R1 R0 K6 ["_update"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Implementation"]
  GETTABLEKS R2 R3 K6 ["DraggerToolModel"]
  CALL R1 1 1
  NEWTABLE R2 16 0
  SETTABLEKS R2 R2 K7 ["__index"]
  DUPCLOSURE R3 K8 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K9 ["new"]
  DUPCLOSURE R3 K10 [PROTO_4]
  SETTABLEKS R3 R2 K11 ["getModel"]
  DUPCLOSURE R3 K12 [PROTO_5]
  SETTABLEKS R3 R2 K13 ["_update"]
  DUPCLOSURE R3 K14 [PROTO_6]
  SETTABLEKS R3 R2 K15 ["select"]
  DUPCLOSURE R3 K16 [PROTO_7]
  SETTABLEKS R3 R2 K17 ["mouseDown"]
  DUPCLOSURE R3 K18 [PROTO_8]
  SETTABLEKS R3 R2 K19 ["mouseMove"]
  DUPCLOSURE R3 K20 [PROTO_9]
  SETTABLEKS R3 R2 K21 ["mouseMoveOverPoint"]
  DUPCLOSURE R3 K22 [PROTO_10]
  SETTABLEKS R3 R2 K23 ["mouseUp"]
  DUPCLOSURE R3 K24 [PROTO_11]
  SETTABLEKS R3 R2 K25 ["mouseClick"]
  DUPCLOSURE R3 K26 [PROTO_12]
  SETTABLEKS R3 R2 K27 ["mouseClickPoint"]
  DUPCLOSURE R3 K28 [PROTO_13]
  SETTABLEKS R3 R2 K29 ["keyPress"]
  DUPCLOSURE R3 K30 [PROTO_14]
  SETTABLEKS R3 R2 K31 ["deselect"]
  RETURN R2 1
