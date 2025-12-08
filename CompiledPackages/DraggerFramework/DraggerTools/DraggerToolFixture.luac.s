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
  DUPTABLE R4 K4 [{"_draggerContext", "_viewBoundsDirty", "_selectionBoundsDirty", "_lastShouldUseLocalSpace"}]
  SETTABLEKS R0 R4 K0 ["_draggerContext"]
  LOADB R5 1
  SETTABLEKS R5 R4 K1 ["_viewBoundsDirty"]
  LOADB R5 1
  SETTABLEKS R5 R4 K2 ["_selectionBoundsDirty"]
  NAMECALL R5 R0 K5 ["shouldUseLocalSpace"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K3 ["_lastShouldUseLocalSpace"]
  GETUPVAL R5 0
  FASTCALL2 SETMETATABLE R4 R5 [+3]
  GETIMPORT R3 K7 [setmetatable]
  CALL R3 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["new"]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  DUPCLOSURE R8 K9 [PROTO_0]
  NEWCLOSURE R9 P1
  CAPTURE VAL R3
  NEWCLOSURE R10 P2
  CAPTURE VAL R3
  CALL R4 6 1
  SETTABLEKS R4 R3 K10 ["_draggerToolModel"]
  RETURN R3 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_draggerToolModel"]
  RETURN R1 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_lastShouldUseLocalSpace"]
  GETTABLEKS R2 R0 K1 ["_draggerContext"]
  NAMECALL R2 R2 K2 ["shouldUseLocalSpace"]
  CALL R2 1 1
  JUMPIFEQ R1 R2 [+11]
  GETTABLEKS R1 R0 K1 ["_draggerContext"]
  NAMECALL R1 R1 K2 ["shouldUseLocalSpace"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["_lastShouldUseLocalSpace"]
  LOADB R1 1
  SETTABLEKS R1 R0 K3 ["_selectionBoundsDirty"]
  GETTABLEKS R1 R0 K3 ["_selectionBoundsDirty"]
  JUMPIFNOT R1 [+8]
  LOADB R1 0
  SETTABLEKS R1 R0 K3 ["_selectionBoundsDirty"]
  GETTABLEKS R1 R0 K4 ["_draggerToolModel"]
  NAMECALL R1 R1 K5 ["_processSelectionChanged"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K6 ["_viewBoundsDirty"]
  JUMPIFNOT R1 [+8]
  LOADB R1 0
  SETTABLEKS R1 R0 K6 ["_viewBoundsDirty"]
  GETTABLEKS R1 R0 K4 ["_draggerToolModel"]
  NAMECALL R1 R1 K7 ["_processViewChanged"]
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
  GETTABLEKS R1 R0 K7 ["_draggerContext"]
  NAMECALL R1 R1 K8 ["getGuiParent"]
  CALL R1 1 1
  JUMPIFNOT R1 [+11]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K9 ["mount"]
  GETTABLEKS R2 R0 K4 ["_draggerToolModel"]
  NAMECALL R2 R2 K10 ["render"]
  CALL R2 1 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K11 ["_handle"]
  RETURN R0 0

PROTO_7:
  NAMECALL R1 R0 K0 ["_update"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["_handle"]
  JUMPIFNOT R1 [+14]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["update"]
  GETTABLEKS R2 R0 K1 ["_handle"]
  GETTABLEKS R3 R0 K3 ["_draggerToolModel"]
  NAMECALL R3 R3 K4 ["render"]
  CALL R3 1 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K1 ["_handle"]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["render"]
  GETTABLEKS R2 R0 K3 ["_draggerToolModel"]
  NAMECALL R2 R2 K4 ["render"]
  CALL R2 1 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K1 ["_handle"]
  RETURN R0 0

PROTO_8:
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

PROTO_9:
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

PROTO_10:
  GETTABLEKS R3 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K1 ["_selectionInfo"]
  NAMECALL R2 R2 K2 ["getBoundingBox"]
  CALL R2 1 3
  MOVE R7 R1
  NAMECALL R5 R2 K3 ["VectorToWorldSpace"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_11:
  NAMECALL R2 R0 K0 ["render"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K1 ["_draggerContext"]
  NAMECALL R2 R2 K2 ["getGuiParent"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K3 [+5]
  MOVE R4 R2
  LOADK R5 K3 ["No GuiParent set in DraggerContext"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  LOADK R5 K6 ["DraggerUI"]
  NAMECALL R3 R2 K7 ["FindFirstChild"]
  CALL R3 2 1
  MOVE R6 R1
  LOADB R7 1
  NAMECALL R4 R3 K7 ["FindFirstChild"]
  CALL R4 3 1
  LOADK R8 K8 ["Could not find handle named %*"]
  MOVE R10 R1
  NAMECALL R8 R8 K9 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  FASTCALL2 ASSERT R4 R7 [+4]
  MOVE R6 R4
  GETIMPORT R5 K5 [assert]
  CALL R5 2 0
  LOADK R7 K10 ["Head"]
  NAMECALL R5 R4 K7 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIF R5 [+4]
  LOADK R7 K11 ["Handle"]
  NAMECALL R5 R4 K7 ["FindFirstChild"]
  CALL R5 2 1
  GETTABLEKS R8 R5 K12 ["Adornee"]
  GETTABLEKS R7 R8 K13 ["CFrame"]
  GETTABLEKS R8 R5 K13 ["CFrame"]
  MUL R6 R7 R8
  GETTABLEKS R7 R0 K1 ["_draggerContext"]
  GETTABLEKS R9 R6 K14 ["Position"]
  NAMECALL R7 R7 K15 ["worldToViewportPoint"]
  CALL R7 2 2
  LOADK R12 K16 ["Handle %* is not on screen"]
  MOVE R14 R1
  NAMECALL R12 R12 K9 ["format"]
  CALL R12 2 1
  MOVE R11 R12
  FASTCALL2 ASSERT R8 R11 [+4]
  MOVE R10 R8
  GETIMPORT R9 K5 [assert]
  CALL R9 2 0
  GETTABLEKS R9 R0 K1 ["_draggerContext"]
  GETIMPORT R11 K19 [Vector2.new]
  GETTABLEKS R12 R7 K20 ["X"]
  GETTABLEKS R13 R7 K21 ["Y"]
  CALL R11 2 -1
  NAMECALL R9 R9 K22 ["setMouseLocation"]
  CALL R9 -1 0
  GETTABLEKS R9 R0 K23 ["_draggerToolModel"]
  NAMECALL R9 R9 K24 ["_processViewChanged"]
  CALL R9 1 0
  NAMECALL R9 R0 K25 ["_update"]
  CALL R9 1 0
  GETTABLEKS R9 R6 K14 ["Position"]
  RETURN R9 1

PROTO_12:
  LOADB R0 1
  SETUPVAL R0 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 2
  JUMPIFNOT R0 [+4]
  GETIMPORT R0 K3 [task.defer]
  GETUPVAL R1 2
  CALL R0 1 0
  RETURN R0 0

PROTO_13:
  LOADNIL R2
  LOADNIL R3
  LOADB R4 0
  GETTABLEKS R7 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R6 R7 K1 ["_selectionWrapper"]
  GETTABLEKS R5 R6 K2 ["onSelectionExternallyChanged"]
  NEWCLOSURE R7 P0
  CAPTURE REF R4
  CAPTURE REF R2
  CAPTURE REF R3
  NAMECALL R5 R5 K3 ["Connect"]
  CALL R5 2 1
  MOVE R2 R5
  GETTABLEKS R5 R0 K4 ["_draggerContext"]
  NAMECALL R5 R5 K5 ["getSelection"]
  CALL R5 1 1
  MOVE R7 R1
  NAMECALL R5 R5 K6 ["Set"]
  CALL R5 2 0
  JUMPIF R4 [+7]
  GETIMPORT R5 K9 [coroutine.running]
  CALL R5 0 1
  MOVE R3 R5
  GETIMPORT R5 K11 [coroutine.yield]
  CALL R5 0 0
  CLOSEUPVALS R2
  RETURN R0 0

PROTO_14:
  GETTABLEKS R2 R0 K0 ["_draggerContext"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["worldToViewportPoint"]
  CALL R2 2 2
  GETTABLEKS R6 R2 K2 ["Z"]
  LOADN R7 0
  JUMPIFLT R7 R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  LOADK R7 K3 ["Can't move mouse over %* because it is behind the camera"]
  MOVE R9 R1
  NAMECALL R7 R7 K4 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  FASTCALL2 ASSERT R5 R6 [+3]
  GETIMPORT R4 K6 [assert]
  CALL R4 2 0
  LOADK R7 K7 ["Can't move mouse over %* because it is off screen"]
  MOVE R9 R1
  NAMECALL R7 R7 K4 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  FASTCALL2 ASSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K6 [assert]
  CALL R4 2 0
  GETTABLEKS R4 R0 K0 ["_draggerContext"]
  GETIMPORT R6 K10 [Vector2.new]
  GETTABLEKS R7 R2 K11 ["X"]
  GETTABLEKS R8 R2 K12 ["Y"]
  CALL R6 2 -1
  NAMECALL R4 R4 K13 ["setMouseLocation"]
  CALL R4 -1 0
  GETTABLEKS R4 R0 K14 ["_draggerToolModel"]
  NAMECALL R4 R4 K15 ["_processViewChanged"]
  CALL R4 1 0
  NAMECALL R4 R0 K16 ["_update"]
  CALL R4 1 0
  RETURN R0 0

PROTO_15:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["mouseMoveOverHandle"]
  CALL R2 2 1
  NAMECALL R3 R0 K1 ["mouseDown"]
  CALL R3 1 0
  RETURN R2 1

PROTO_16:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["mouseMoveOverPoint"]
  CALL R2 2 0
  NAMECALL R2 R0 K1 ["mouseDown"]
  CALL R2 1 0
  RETURN R0 0

PROTO_17:
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

PROTO_18:
  NAMECALL R1 R0 K0 ["mouseDown"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["mouseUp"]
  CALL R1 1 0
  RETURN R0 0

PROTO_19:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["mouseMoveOverPoint"]
  CALL R2 2 0
  NAMECALL R2 R0 K1 ["mouseClick"]
  CALL R2 1 0
  RETURN R0 0

PROTO_20:
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

PROTO_21:
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
  GETTABLEKS R1 R0 K7 ["_handle"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["unmount"]
  GETTABLEKS R2 R0 K7 ["_handle"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R5 R0 K2 ["Parent"]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Implementation"]
  GETTABLEKS R3 R4 K8 ["DraggerToolModel"]
  CALL R2 1 1
  NEWTABLE R3 32 0
  SETTABLEKS R3 R3 K9 ["__index"]
  DUPCLOSURE R4 K10 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K11 ["new"]
  DUPCLOSURE R4 K12 [PROTO_4]
  SETTABLEKS R4 R3 K13 ["getModel"]
  DUPCLOSURE R4 K14 [PROTO_5]
  SETTABLEKS R4 R3 K15 ["_update"]
  DUPCLOSURE R4 K16 [PROTO_6]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K17 ["select"]
  DUPCLOSURE R4 K18 [PROTO_7]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K19 ["render"]
  DUPCLOSURE R4 K20 [PROTO_8]
  SETTABLEKS R4 R3 K21 ["mouseDown"]
  DUPCLOSURE R4 K22 [PROTO_9]
  SETTABLEKS R4 R3 K23 ["mouseMove"]
  DUPCLOSURE R4 K24 [PROTO_10]
  SETTABLEKS R4 R3 K25 ["motionToHandleSpace"]
  DUPCLOSURE R4 K26 [PROTO_11]
  SETTABLEKS R4 R3 K27 ["mouseMoveOverHandle"]
  DUPCLOSURE R4 K28 [PROTO_13]
  SETTABLEKS R4 R3 K29 ["setSelection"]
  DUPCLOSURE R4 K30 [PROTO_14]
  SETTABLEKS R4 R3 K31 ["mouseMoveOverPoint"]
  DUPCLOSURE R4 K32 [PROTO_15]
  SETTABLEKS R4 R3 K33 ["mouseDownOverHandle"]
  DUPCLOSURE R4 K34 [PROTO_16]
  SETTABLEKS R4 R3 K35 ["mouseDownOverPoint"]
  DUPCLOSURE R4 K36 [PROTO_17]
  SETTABLEKS R4 R3 K37 ["mouseUp"]
  DUPCLOSURE R4 K38 [PROTO_18]
  SETTABLEKS R4 R3 K39 ["mouseClick"]
  DUPCLOSURE R4 K40 [PROTO_19]
  SETTABLEKS R4 R3 K41 ["mouseClickPoint"]
  DUPCLOSURE R4 K42 [PROTO_20]
  SETTABLEKS R4 R3 K43 ["keyPress"]
  DUPCLOSURE R4 K44 [PROTO_21]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K45 ["deselect"]
  RETURN R3 1
