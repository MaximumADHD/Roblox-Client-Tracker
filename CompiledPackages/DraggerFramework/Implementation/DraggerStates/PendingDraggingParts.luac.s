PROTO_0:
  DUPTABLE R5 K5 [{"_isDoubleClick", "_dragStartLocation", "_dragInfo", "_clickedMetadata", "_draggerToolModel"}]
  SETTABLEKS R1 R5 K0 ["_isDoubleClick"]
  GETTABLEKS R6 R0 K6 ["_draggerContext"]
  NAMECALL R6 R6 K7 ["getMouseLocation"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K1 ["_dragStartLocation"]
  SETTABLEKS R2 R5 K2 ["_dragInfo"]
  SETTABLEKS R3 R5 K3 ["_clickedMetadata"]
  SETTABLEKS R0 R5 K4 ["_draggerToolModel"]
  GETUPVAL R6 0
  FASTCALL2 SETMETATABLE R5 R6 [+3]
  GETIMPORT R4 K9 [setmetatable]
  CALL R4 2 1
  RETURN R4 1

PROTO_1:
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_draggerToolModel"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["getClosedHand"]
  CALL R3 0 -1
  NAMECALL R1 R1 K2 ["setMouseCursor"]
  CALL R1 -1 0
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+35]
  GETTABLEKS R2 R0 K0 ["_draggerToolModel"]
  NAMECALL R2 R2 K3 ["getSchema"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K4 ["getHoverComponent"]
  JUMPIFNOT R1 [+27]
  MOVE R2 R1
  GETTABLEKS R4 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R3 R4 K5 ["_draggerContext"]
  CALL R2 1 1
  JUMPIFNOT R2 [+20]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["createElement"]
  MOVE R4 R2
  DUPTABLE R5 K10 [{"DraggerContext", "HoverMetadata", "Pending"}]
  GETTABLEKS R7 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R6 R7 K5 ["_draggerContext"]
  SETTABLEKS R6 R5 K7 ["DraggerContext"]
  GETTABLEKS R6 R0 K11 ["_clickedMetadata"]
  SETTABLEKS R6 R5 K8 ["HoverMetadata"]
  LOADB R6 1
  SETTABLEKS R6 R5 K9 ["Pending"]
  CALL R3 2 -1
  RETURN R3 -1
  RETURN R0 0

PROTO_4:
  RETURN R0 0

PROTO_5:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["Mouse should already be down while pending part drag."]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R1 R2 K1 ["_draggerContext"]
  NAMECALL R1 R1 K2 ["getMouseLocation"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K3 ["_dragStartLocation"]
  SUB R2 R1 R3
  GETTABLEKS R3 R2 K4 ["Magnitude"]
  LOADN R4 4
  JUMPIFNOTLT R4 R3 [+11]
  GETTABLEKS R3 R0 K0 ["_draggerToolModel"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["DraggingParts"]
  GETTABLEKS R6 R0 K6 ["_dragInfo"]
  NAMECALL R3 R3 K7 ["transitionToState"]
  CALL R3 3 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R2 R1 K1 ["_draggerContext"]
  NAMECALL R3 R2 K2 ["shouldExtendSelection"]
  CALL R3 1 1
  NAMECALL R4 R2 K3 ["isAltKeyDown"]
  CALL R4 1 1
  JUMPIFNOT R4 [+32]
  JUMPIF R3 [+31]
  GETTABLEKS R4 R1 K4 ["_selectionCycleCache"]
  NEWTABLE R5 0 0
  LOADB R8 1
  NAMECALL R6 R4 K5 ["getNextSelectable"]
  CALL R6 2 1
  JUMPIFNOT R6 [+29]
  FASTCALL2 TABLE_INSERT R5 R6 [+5]
  MOVE R8 R5
  MOVE R9 R6
  GETIMPORT R7 K8 [table.insert]
  CALL R7 2 0
  GETTABLEKS R7 R1 K9 ["_selectionWrapper"]
  MOVE R9 R5
  NAMECALL R7 R7 K10 ["set"]
  CALL R7 2 0
  NAMECALL R7 R1 K11 ["isSelected"]
  CALL R7 1 1
  JUMPIF R7 [+1]
  RETURN R0 0
  NAMECALL R7 R1 K12 ["_updateSelectionInfo"]
  CALL R7 1 0
  JUMP [+7]
  GETTABLEKS R6 R0 K13 ["_dragInfo"]
  GETTABLEKS R7 R0 K14 ["_isDoubleClick"]
  NAMECALL R4 R1 K15 ["selectNextSelectables"]
  CALL R4 3 0
  GETTABLEKS R4 R0 K0 ["_draggerToolModel"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K16 ["Ready"]
  NAMECALL R4 R4 K17 ["transitionToState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_8:
  RETURN R0 0

PROTO_9:
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+11]
  GETTABLEKS R2 R0 K0 ["_draggerToolModel"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["DraggingParts"]
  GETTABLEKS R5 R0 K2 ["_dragInfo"]
  MOVE R6 R1
  NAMECALL R2 R2 K3 ["transitionToState"]
  CALL R2 4 0
  RETURN R0 0

PROTO_11:
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
  GETTABLEKS R5 R0 K6 ["Implementation"]
  GETTABLEKS R4 R5 K7 ["DraggerStateType"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K8 ["Utility"]
  GETTABLEKS R5 R6 K9 ["StandardCursor"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K10 ["Flags"]
  GETTABLEKS R6 R7 K11 ["getFFlagDraggerImprovements"]
  CALL R5 1 1
  NEWTABLE R6 16 0
  SETTABLEKS R6 R6 K12 ["__index"]
  DUPCLOSURE R7 K13 [PROTO_0]
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K14 ["new"]
  DUPCLOSURE R7 K15 [PROTO_1]
  SETTABLEKS R7 R6 K16 ["enter"]
  DUPCLOSURE R7 K17 [PROTO_2]
  SETTABLEKS R7 R6 K18 ["leave"]
  DUPCLOSURE R7 K19 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K20 ["render"]
  DUPCLOSURE R7 K21 [PROTO_4]
  SETTABLEKS R7 R6 K22 ["processSelectionChanged"]
  DUPCLOSURE R7 K23 [PROTO_5]
  SETTABLEKS R7 R6 K24 ["processMouseDown"]
  DUPCLOSURE R7 K25 [PROTO_6]
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K26 ["processViewChanged"]
  DUPCLOSURE R7 K27 [PROTO_7]
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K28 ["processMouseUp"]
  DUPCLOSURE R7 K29 [PROTO_8]
  SETTABLEKS R7 R6 K30 ["processMouseEnter"]
  DUPCLOSURE R7 K31 [PROTO_9]
  SETTABLEKS R7 R6 K32 ["processMouseLeave"]
  DUPCLOSURE R7 K33 [PROTO_10]
  CAPTURE VAL R5
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K34 ["processKeyDown"]
  DUPCLOSURE R7 K35 [PROTO_11]
  SETTABLEKS R7 R6 K36 ["processKeyUp"]
  RETURN R6 1
