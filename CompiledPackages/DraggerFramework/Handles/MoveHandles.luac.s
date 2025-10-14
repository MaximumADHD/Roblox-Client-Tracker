PROTO_0:
  NEWTABLE R3 8 0
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K0 ["_handles"]
  MOVE R4 R1
  JUMPIF R4 [+7]
  DUPTABLE R4 K3 [{"MustPositionAtPivot", "Summonable"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K1 ["MustPositionAtPivot"]
  LOADB R5 1
  SETTABLEKS R5 R4 K2 ["Summonable"]
  SETTABLEKS R4 R3 K4 ["_props"]
  SETTABLEKS R0 R3 K5 ["_draggerContext"]
  SETTABLEKS R2 R3 K6 ["_implementation"]
  LOADB R4 0
  SETTABLEKS R4 R3 K7 ["_tabKeyDown"]
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+7]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["new"]
  MOVE R5 R0
  CALL R4 1 1
  SETTABLEKS R4 R3 K9 ["_softSnapper"]
  GETUPVAL R6 2
  FASTCALL2 SETMETATABLE R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K11 [setmetatable]
  CALL R4 2 1
  RETURN R4 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["_draggingHandleId"]
  JUMPIF R3 [+44]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+6]
  GETTABLEKS R3 R0 K1 ["_tabKeyDown"]
  JUMPIF R3 [+3]
  NAMECALL R3 R0 K2 ["_endSummon"]
  CALL R3 1 0
  NAMECALL R3 R2 K3 ["getBoundingBox"]
  CALL R3 1 3
  GETIMPORT R6 K6 [CFrame.new]
  MINUS R7 R4
  CALL R6 1 1
  SETTABLEKS R6 R0 K7 ["_basisOffset"]
  DUPTABLE R6 K9 [{"Size", "CFrame"}]
  SETTABLEKS R5 R6 K8 ["Size"]
  GETIMPORT R8 K6 [CFrame.new]
  MOVE R9 R4
  CALL R8 1 1
  MUL R7 R3 R8
  SETTABLEKS R7 R6 K4 ["CFrame"]
  SETTABLEKS R6 R0 K10 ["_boundingBox"]
  SETTABLEKS R1 R0 K11 ["_draggerToolModel"]
  NAMECALL R6 R1 K12 ["getSchema"]
  CALL R6 1 1
  SETTABLEKS R6 R0 K13 ["_schema"]
  NAMECALL R6 R1 K14 ["getSelectionWrapper"]
  CALL R6 1 1
  SETTABLEKS R6 R0 K15 ["_selectionWrapper"]
  SETTABLEKS R2 R0 K16 ["_selectionInfo"]
  NAMECALL R3 R0 K17 ["_updateHandles"]
  CALL R3 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Wrong flag branching"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETTABLEKS R2 R0 K3 ["_props"]
  GETTABLEKS R1 R2 K4 ["Summonable"]
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  GETTABLEKS R1 R0 K5 ["_draggerContext"]
  NAMECALL R1 R1 K6 ["getMouseRay"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K7 ["_schema"]
  GETTABLEKS R2 R3 K8 ["getMouseTarget"]
  GETTABLEKS R3 R0 K5 ["_draggerContext"]
  MOVE R4 R1
  NEWTABLE R5 0 0
  CALL R2 3 3
  JUMPIFNOT R4 [+21]
  GETTABLEKS R6 R1 K9 ["Origin"]
  GETTABLEKS R9 R1 K10 ["Direction"]
  GETTABLEKS R8 R9 K11 ["Unit"]
  MUL R7 R8 R4
  ADD R5 R6 R7
  GETIMPORT R6 K14 [CFrame.new]
  GETTABLEKS R8 R0 K15 ["_boundingBox"]
  GETTABLEKS R7 R8 K12 ["CFrame"]
  MOVE R9 R5
  NAMECALL R7 R7 K16 ["PointToObjectSpace"]
  CALL R7 2 -1
  CALL R6 -1 1
  SETTABLEKS R6 R0 K17 ["_summonBasisOffset"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Wrong flag branching"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K3 ["_summonBasisOffset"]
  JUMPIFNOT R1 [+9]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_summonBasisOffset"]
  LOADB R1 0
  SETTABLEKS R1 R0 K4 ["_summonWasSnapped"]
  LOADB R1 0
  SETTABLEKS R1 R0 K5 ["_summonWasSnappedToSurface"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  CALL R3 0 1
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["Wrong flag branching"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  SETTABLEKS R1 R0 K3 ["_summonOffsetInBasis"]
  LOADNIL R2
  SETTABLEKS R2 R0 K4 ["_laggingHandleId"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Wrong flag branching"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_summonOffsetInBasis"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_laggingHandleId"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+10]
  GETTABLEKS R1 R0 K0 ["_summonOffsetInBasis"]
  JUMPIFNOT R1 [+4]
  GETTABLEKS R3 R0 K1 ["_basisOffset"]
  MUL R2 R3 R1
  RETURN R2 1
  GETTABLEKS R2 R0 K1 ["_basisOffset"]
  RETURN R2 1
  GETTABLEKS R1 R0 K2 ["_summonBasisOffset"]
  JUMPIF R1 [+2]
  GETTABLEKS R1 R0 K1 ["_basisOffset"]
  RETURN R1 1

PROTO_7:
  LOADB R1 0
  RETURN R1 1

PROTO_8:
  LOADNIL R3
  LOADK R4 K0 [∞]
  GETIMPORT R5 K2 [pairs]
  GETTABLEKS R6 R0 K3 ["_handles"]
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["hitTest"]
  MOVE R11 R9
  MOVE R12 R1
  CALL R10 2 1
  JUMPIFNOT R10 [+4]
  JUMPIFNOTLT R10 R4 [+3]
  MOVE R4 R10
  MOVE R3 R8
  FORGLOOP R5 2 [-12]
  MOVE R5 R3
  MOVE R6 R4
  LOADB R7 1
  RETURN R5 3

PROTO_9:
  GETTABLEKS R3 R0 K0 ["_lastDelta"]
  SUB R2 R1 R3
  SETTABLEKS R1 R0 K0 ["_lastDelta"]
  GETTABLEKS R4 R0 K1 ["_draggerToolModel"]
  GETTABLEKS R3 R4 K2 ["_boundsChangedTracker"]
  NAMECALL R3 R3 K3 ["uninstall"]
  CALL R3 1 0
  GETTABLEKS R3 R0 K4 ["_implementation"]
  GETTABLEKS R5 R0 K5 ["_selectionWrapper"]
  NAMECALL R5 R5 K6 ["get"]
  CALL R5 1 1
  GETTABLEKS R6 R0 K7 ["_selectionInfo"]
  NAMECALL R3 R3 K8 ["beginDrag"]
  CALL R3 3 0
  GETTABLEKS R3 R0 K4 ["_implementation"]
  GETIMPORT R5 K11 [CFrame.new]
  GETTABLEKS R7 R0 K12 ["_axis"]
  MUL R6 R7 R2
  CALL R5 1 -1
  NAMECALL R3 R3 K13 ["updateDrag"]
  CALL R3 -1 0
  GETTABLEKS R3 R0 K4 ["_implementation"]
  NAMECALL R3 R3 K14 ["endDrag"]
  CALL R3 1 0
  GETTABLEKS R4 R0 K15 ["_schema"]
  GETTABLEKS R3 R4 K16 ["addUndoWaypoint"]
  GETTABLEKS R4 R0 K17 ["_draggerContext"]
  LOADK R5 K18 ["Precise Axis Move Selection"]
  CALL R3 2 0
  GETTABLEKS R4 R0 K1 ["_draggerToolModel"]
  GETTABLEKS R3 R4 K2 ["_boundsChangedTracker"]
  NAMECALL R3 R3 K19 ["install"]
  CALL R3 1 0
  GETTABLEKS R3 R0 K1 ["_draggerToolModel"]
  NAMECALL R3 R3 K20 ["_updateSelectionInfo"]
  CALL R3 1 0
  GETTABLEKS R3 R0 K1 ["_draggerToolModel"]
  NAMECALL R3 R3 K21 ["_scheduleRender"]
  CALL R3 1 0
  RETURN R0 0

PROTO_10:
  GETIMPORT R2 K1 [next]
  GETTABLEKS R3 R0 K2 ["_handles"]
  CALL R2 1 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K3 ["_draggerContext"]
  NAMECALL R2 R2 K4 ["getGridSize"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K5 ["_laggingHandleId"]
  JUMPIFNOT R3 [+11]
  GETUPVAL R5 0
  GETTABLEKS R6 R0 K6 ["_laggingRelativeToId"]
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K7 ["Opposite"]
  JUMPIFNOTEQ R3 R1 [+4]
  GETTABLEKS R1 R0 K6 ["_laggingRelativeToId"]
  MINUS R2 R2
  GETTABLEKS R3 R0 K5 ["_laggingHandleId"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R3 R0 K6 ["_laggingRelativeToId"]
  JUMPIFEQ R3 R1 [+21]
  MOVE R5 R1
  NAMECALL R3 R0 K8 ["_getHandleIdClosestToCenterOfScreen"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K5 ["_laggingHandleId"]
  SETTABLEKS R1 R0 K6 ["_laggingRelativeToId"]
  LOADN R3 0
  SETTABLEKS R3 R0 K9 ["_lastDelta"]
  GETTABLEKS R6 R0 K2 ["_handles"]
  GETTABLE R5 R6 R1
  GETTABLEKS R4 R5 K10 ["Axis"]
  GETTABLEKS R3 R4 K11 ["LookVector"]
  SETTABLEKS R3 R0 K12 ["_axis"]
  GETTABLEKS R6 R0 K9 ["_lastDelta"]
  ADD R5 R6 R2
  NAMECALL R3 R0 K13 ["_doMeasuredMove"]
  CALL R3 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+16]
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["useBoundingBoxMoveHandles"]
  CALL R1 1 1
  JUMPIFNOT R1 [+9]
  GETTABLEKS R2 R0 K2 ["_summonOffsetInBasis"]
  NOT R1 R2
  JUMPIFNOT R1 [+5]
  GETTABLEKS R3 R0 K3 ["_props"]
  GETTABLEKS R2 R3 K4 ["MustPositionAtPivot"]
  NOT R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["useBoundingBoxMoveHandles"]
  CALL R1 1 1
  JUMPIFNOT R1 [+9]
  GETTABLEKS R2 R0 K5 ["_summonBasisOffset"]
  NOT R1 R2
  JUMPIFNOT R1 [+5]
  GETTABLEKS R3 R0 K3 ["_props"]
  GETTABLEKS R2 R3 K4 ["MustPositionAtPivot"]
  NOT R1 R2
  RETURN R1 1

PROTO_12:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["shouldPartSnap"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_13:
  GETIMPORT R1 K2 [Vector2.new]
  GETTABLEKS R2 R0 K3 ["X"]
  GETTABLEKS R3 R0 K4 ["Y"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_14:
  GETTABLEKS R3 R0 K0 ["_handles"]
  GETTABLE R2 R3 R1
  LOADK R3 K1 [-∞]
  LOADK R4 K2 [∞]
  LOADNIL R5
  GETTABLEKS R6 R0 K3 ["_draggerContext"]
  NAMECALL R6 R6 K4 ["getCameraCFrame"]
  CALL R6 1 1
  GETTABLEKS R11 R2 K5 ["Axis"]
  GETTABLEKS R10 R11 K6 ["LookVector"]
  NAMECALL R8 R6 K7 ["VectorToObjectSpace"]
  CALL R8 2 1
  GETIMPORT R9 K10 [Vector2.new]
  GETTABLEKS R10 R8 K11 ["X"]
  GETTABLEKS R11 R8 K12 ["Y"]
  CALL R9 2 1
  MOVE R7 R9
  GETTABLEKS R8 R0 K0 ["_handles"]
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLEKS R13 R0 K13 ["_draggingHandleId"]
  JUMPIFEQ R11 R13 [+77]
  GETTABLEKS R13 R2 K14 ["Opposite"]
  JUMPIFEQ R11 R13 [+73]
  GETTABLEKS R17 R12 K5 ["Axis"]
  GETTABLEKS R16 R17 K6 ["LookVector"]
  NAMECALL R14 R6 K7 ["VectorToObjectSpace"]
  CALL R14 2 1
  GETIMPORT R15 K10 [Vector2.new]
  GETTABLEKS R16 R14 K11 ["X"]
  GETTABLEKS R17 R14 K12 ["Y"]
  CALL R15 2 1
  MOVE R13 R15
  GETTABLEKS R20 R12 K5 ["Axis"]
  GETTABLEKS R19 R20 K15 ["Position"]
  GETTABLEKS R22 R12 K5 ["Axis"]
  GETTABLEKS R21 R22 K6 ["LookVector"]
  MULK R20 R21 K16 [0.01]
  ADD R18 R19 R20
  NAMECALL R16 R6 K17 ["PointToObjectSpace"]
  CALL R16 2 1
  GETIMPORT R17 K10 [Vector2.new]
  GETTABLEKS R18 R16 K11 ["X"]
  GETTABLEKS R19 R16 K12 ["Y"]
  CALL R17 2 1
  MOVE R15 R17
  GETTABLEKS R14 R15 K18 ["Magnitude"]
  GETTABLEKS R18 R13 K12 ["Y"]
  GETTABLEKS R19 R7 K11 ["X"]
  MUL R17 R18 R19
  GETTABLEKS R19 R13 K11 ["X"]
  GETTABLEKS R20 R7 K12 ["Y"]
  MUL R18 R19 R20
  SUB R16 R17 R18
  FASTCALL1 MATH_ABS R16 [+2]
  GETIMPORT R15 K21 [math.abs]
  CALL R15 1 1
  SUB R17 R15 R3
  FASTCALL1 MATH_ABS R17 [+2]
  GETIMPORT R16 K21 [math.abs]
  CALL R16 1 1
  LOADK R17 K22 [0.001]
  JUMPIFNOTLT R16 R17 [+7]
  JUMPIFNOTLT R14 R4 [+10]
  MOVE R3 R15
  MOVE R4 R14
  MOVE R5 R11
  JUMP [+5]
  JUMPIFNOTLT R3 R15 [+4]
  MOVE R3 R15
  MOVE R4 R14
  MOVE R5 R11
  FORGLOOP R8 2 [-81]
  RETURN R5 1

PROTO_15:
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R3 R0 K1 ["_laggingRelativeToId"]
  GETTABLE R1 R2 R3
  GETTABLEKS R3 R0 K0 ["_handles"]
  GETTABLEKS R4 R0 K2 ["_laggingHandleId"]
  GETTABLE R2 R3 R4
  GETTABLEKS R4 R2 K3 ["Axis"]
  GETTABLEKS R6 R0 K4 ["_axis"]
  GETTABLEKS R7 R0 K5 ["_lastDelta"]
  MUL R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R0 K6 ["_draggerContext"]
  GETTABLEKS R6 R3 K7 ["Position"]
  NAMECALL R4 R4 K8 ["getHandleScale"]
  CALL R4 2 1
  GETTABLEKS R6 R1 K3 ["Axis"]
  GETTABLEKS R5 R6 K9 ["LookVector"]
  GETTABLEKS R6 R3 K9 ["LookVector"]
  GETTABLEKS R8 R1 K3 ["Axis"]
  GETTABLEKS R7 R8 K7 ["Position"]
  LOADNIL R8
  NAMECALL R9 R0 K10 ["_useBoundingBoxMoveHandles"]
  CALL R9 1 1
  JUMPIFNOT R9 [+10]
  LOADK R10 K11 [2.5]
  MUL R9 R10 R4
  GETTABLEKS R10 R2 K12 ["AxisOffset"]
  ADD R8 R9 R10
  GETTABLEKS R10 R1 K12 ["AxisOffset"]
  MUL R9 R5 R10
  SUB R7 R7 R9
  JUMP [+6]
  LOADK R10 K13 [3.5]
  GETTABLEKS R12 R2 K15 ["Outset"]
  ORK R11 R12 K14 [0]
  ADD R9 R10 R11
  MUL R8 R9 R4
  MUL R9 R6 R8
  ADD R10 R7 R9
  GETTABLEKS R14 R0 K5 ["_lastDelta"]
  MUL R13 R5 R14
  SUB R12 R7 R13
  ADD R11 R12 R9
  GETTABLEKS R12 R0 K5 ["_lastDelta"]
  LOADN R13 0
  JUMPIFNOTLT R12 R13 [+4]
  MOVE R12 R11
  MOVE R11 R10
  MOVE R10 R12
  GETTABLEKS R12 R0 K6 ["_draggerContext"]
  GETTABLEKS R15 R1 K3 ["Axis"]
  GETTABLEKS R14 R15 K7 ["Position"]
  NAMECALL R12 R12 K8 ["getHandleScale"]
  CALL R12 2 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K16 ["getHandleDimensionForScale"]
  MOVE R14 R12
  GETTABLEKS R15 R1 K15 ["Outset"]
  CALL R13 2 2
  GETUPVAL R15 1
  CALL R15 0 1
  JUMPIFNOT R15 [+7]
  GETTABLEKS R15 R0 K17 ["_draggingHandleFrac"]
  JUMPIFNOTEQKNIL R15 [+4]
  LOADK R15 K18 [0.5]
  SETTABLEKS R15 R0 K17 ["_draggingHandleFrac"]
  GETTABLEKS R16 R0 K17 ["_draggingHandleFrac"]
  LOADK R17 K19 [0.4]
  LOADN R18 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R15 K22 [math.clamp]
  CALL R15 3 1
  MUL R20 R15 R14
  ADD R19 R13 R20
  MUL R18 R5 R19
  ADD R17 R7 R18
  LOADK R19 K18 [0.5]
  MUL R18 R19 R9
  ADD R16 R17 R18
  GETTABLEKS R17 R0 K6 ["_draggerContext"]
  MOVE R19 R16
  NAMECALL R17 R17 K23 ["worldToViewportPoint"]
  CALL R17 2 2
  LOADNIL R19
  JUMPIFNOT R18 [+8]
  GETIMPORT R20 K26 [UDim2.fromOffset]
  GETTABLEKS R21 R17 K27 ["X"]
  GETTABLEKS R22 R17 K28 ["Y"]
  CALL R20 2 1
  MOVE R19 R20
  GETIMPORT R20 K31 [table.freeze]
  DUPTABLE R21 K39 [{"from", "to", "direction", "perpendicularDirection", "scale", "viewportPosition", "inBounds"}]
  SETTABLEKS R10 R21 K32 ["from"]
  SETTABLEKS R11 R21 K33 ["to"]
  SETTABLEKS R5 R21 K34 ["direction"]
  SETTABLEKS R6 R21 K35 ["perpendicularDirection"]
  SETTABLEKS R4 R21 K36 ["scale"]
  SETTABLEKS R19 R21 K37 ["viewportPosition"]
  SETTABLEKS R18 R21 K38 ["inBounds"]
  CALL R20 1 -1
  RETURN R20 -1

PROTO_16:
  GETUPVAL R3 0
  GETTABLEKS R1 R3 K0 ["from"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["to"]
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R0 K2 ["AddLine"]
  CALL R3 3 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["scale"]
  MULK R3 R4 K3 [0.3]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["_lastDelta"]
  FASTCALL1 MATH_ABS R5 [+2]
  GETIMPORT R4 K8 [math.abs]
  CALL R4 1 1
  MULK R5 R3 K9 [3]
  JUMPIFNOTLT R5 R4 [+40]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K10 ["perpendicularDirection"]
  MUL R4 R5 R3
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K11 ["direction"]
  MUL R5 R6 R3
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["_lastDelta"]
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+14]
  MOVE R8 R1
  SUB R10 R1 R5
  ADD R9 R10 R4
  NAMECALL R6 R0 K2 ["AddLine"]
  CALL R6 3 0
  MOVE R8 R1
  SUB R10 R1 R5
  SUB R9 R10 R4
  NAMECALL R6 R0 K2 ["AddLine"]
  CALL R6 3 0
  RETURN R0 0
  MOVE R8 R2
  ADD R10 R2 R5
  ADD R9 R10 R4
  NAMECALL R6 R0 K2 ["AddLine"]
  CALL R6 3 0
  MOVE R8 R2
  ADD R10 R2 R5
  SUB R9 R10 R4
  NAMECALL R6 R0 K2 ["AddLine"]
  CALL R6 3 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K4 [{"AlwaysOnTop", "Color3", "Render"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K1 ["AlwaysOnTop"]
  GETTABLEKS R5 R0 K5 ["_draggerContext"]
  NAMECALL R5 R5 K6 ["getChosenColor"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K2 ["Color3"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K3 ["Render"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_18:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  LOADK R3 K1 ["HotkeyUsageHidden"]
  NAMECALL R1 R1 K2 ["getSetting"]
  CALL R1 2 1
  JUMPIF R1 [+32]
  NEWTABLE R1 0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["addGridSnap"]
  MOVE R3 R1
  GETTABLEKS R4 R0 K0 ["_draggerContext"]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["addSummonHandles"]
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["addHelp"]
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K9 [{"DraggerContext", "HotkeyList"}]
  GETTABLEKS R5 R0 K0 ["_draggerContext"]
  SETTABLEKS R5 R4 K7 ["DraggerContext"]
  SETTABLEKS R1 R4 K8 ["HotkeyList"]
  CALL R2 2 -1
  RETURN R2 -1
  RETURN R0 0

PROTO_19:
  GETTABLEKS R2 R0 K0 ["_lastGlobalTransformForRender"]
  NAMECALL R2 R2 K1 ["ToOrientation"]
  CALL R2 1 -1
  FASTCALL VECTOR [+2]
  GETIMPORT R1 K4 [Vector3.new]
  CALL R1 -1 1
  GETTABLEKS R3 R1 K5 ["Magnitude"]
  LOADK R4 K6 [0.001]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_20:
  GETUPVAL R2 0
  GETUPVAL R3 1
  ADD R1 R2 R3
  GETUPVAL R5 2
  GETUPVAL R7 3
  MUL R6 R7 R1
  ADD R4 R5 R6
  GETUPVAL R6 2
  GETUPVAL R8 3
  MULK R7 R8 K0 [10000]
  ADD R5 R6 R7
  NAMECALL R2 R0 K1 ["AddLine"]
  CALL R2 3 0
  GETUPVAL R5 2
  GETUPVAL R7 3
  MULK R6 R7 K0 [10000]
  SUB R4 R5 R6
  GETUPVAL R5 2
  NAMECALL R2 R0 K1 ["AddLine"]
  CALL R2 3 0
  RETURN R0 0

PROTO_21:
  GETTABLEKS R3 R0 K0 ["_handles"]
  GETTABLE R2 R3 R1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["getHandleDimensionForScale"]
  GETTABLEKS R4 R2 K2 ["Scale"]
  GETTABLEKS R5 R2 K3 ["Outset"]
  CALL R3 2 2
  GETTABLEKS R6 R2 K4 ["Axis"]
  GETTABLEKS R5 R6 K5 ["Position"]
  GETTABLEKS R7 R2 K4 ["Axis"]
  GETTABLEKS R6 R7 K6 ["LookVector"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K11 [{"AlwaysOnTop", "Color3", "Render"}]
  LOADB R10 0
  SETTABLEKS R10 R9 K8 ["AlwaysOnTop"]
  GETTABLEKS R10 R0 K12 ["_draggerContext"]
  NAMECALL R10 R10 K13 ["getGridColor"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K9 ["Color3"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K10 ["Render"]
  CALL R7 2 -1
  RETURN R7 -1

PROTO_22:
  NAMECALL R2 R0 K0 ["_useBoundingBoxMoveHandles"]
  CALL R2 1 1
  NOT R1 R2
  NAMECALL R2 R0 K1 ["_getLaggingHandleChoice"]
  CALL R2 1 3
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K10 [{"Axis", "AxisOffset", "Outset", "Color", "Scale", "AlwaysOnTop", "Thin"}]
  SETTABLEKS R2 R7 K3 ["Axis"]
  JUMPIF R1 [+3]
  GETTABLEKS R8 R4 K4 ["AxisOffset"]
  JUMPIF R8 [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K4 ["AxisOffset"]
  GETTABLEKS R8 R4 K5 ["Outset"]
  SETTABLEKS R8 R7 K5 ["Outset"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K11 ["makeDimmed"]
  GETTABLEKS R9 R4 K6 ["Color"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K6 ["Color"]
  SETTABLEKS R3 R7 K7 ["Scale"]
  LOADB R8 1
  SETTABLEKS R8 R7 K8 ["AlwaysOnTop"]
  LOADB R8 1
  SETTABLEKS R8 R7 K9 ["Thin"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_23:
  GETTABLEKS R1 R0 K0 ["_laggingHandleId"]
  JUMPIFNOT R1 [+31]
  NAMECALL R1 R0 K1 ["_getMoveMeasurementArrowMetrics"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createFragment"]
  DUPTABLE R3 K4 [{"MoveMeasurementValue"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K9 [{"DraggerContext", "Position", "Value"}]
  GETTABLEKS R7 R0 K10 ["_draggerContext"]
  SETTABLEKS R7 R6 K6 ["DraggerContext"]
  GETTABLEKS R7 R1 K11 ["viewportPosition"]
  SETTABLEKS R7 R6 K7 ["Position"]
  GETUPVAL R7 2
  GETTABLEKS R8 R0 K12 ["_lastDelta"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K8 ["Value"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["MoveMeasurementValue"]
  CALL R2 1 -1
  RETURN R2 -1
  RETURN R0 0

PROTO_24:
  LOADNIL R2
  LOADNIL R3
  LOADNIL R4
  GETTABLEKS R5 R0 K0 ["_draggerContext"]
  NAMECALL R5 R5 K1 ["shouldShowPreciseInput"]
  CALL R5 1 1
  JUMPIFNOT R5 [+37]
  NAMECALL R5 R0 K2 ["_lastTransformWasLinear"]
  CALL R5 1 1
  JUMPIFNOT R5 [+33]
  GETTABLEKS R5 R0 K3 ["_laggingHandleId"]
  JUMPIF R5 [+8]
  MOVE R7 R1
  NAMECALL R5 R0 K4 ["_getHandleIdClosestToCenterOfScreen"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K3 ["_laggingHandleId"]
  SETTABLEKS R1 R0 K5 ["_laggingRelativeToId"]
  GETTABLEKS R5 R0 K6 ["_handles"]
  GETTABLEKS R6 R0 K3 ["_laggingHandleId"]
  GETTABLE R4 R5 R6
  GETTABLEKS R5 R0 K7 ["_lastGlobalTransformForRender"]
  NAMECALL R5 R5 K8 ["Inverse"]
  CALL R5 1 1
  GETTABLEKS R6 R4 K9 ["Axis"]
  MUL R2 R5 R6
  GETTABLEKS R5 R0 K0 ["_draggerContext"]
  GETTABLEKS R7 R2 K10 ["Position"]
  NAMECALL R5 R5 K11 ["getHandleScale"]
  CALL R5 2 1
  MOVE R3 R5
  RETURN R2 3
  LOADNIL R5
  SETTABLEKS R5 R0 K3 ["_laggingHandleId"]
  LOADNIL R5
  LOADNIL R6
  LOADNIL R7
  RETURN R5 3

PROTO_25:
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R3 R0 K1 ["_laggingHandleId"]
  GETTABLE R1 R2 R3
  GETIMPORT R3 K4 [CFrame.new]
  GETTABLEKS R6 R0 K5 ["_axis"]
  MINUS R5 R6
  GETTABLEKS R6 R0 K6 ["_lastDelta"]
  MUL R4 R5 R6
  CALL R3 1 1
  GETTABLEKS R4 R1 K7 ["Axis"]
  MUL R2 R3 R4
  GETTABLEKS R3 R0 K8 ["_draggerContext"]
  GETTABLEKS R5 R2 K9 ["Position"]
  NAMECALL R3 R3 K10 ["getHandleScale"]
  CALL R3 2 1
  MOVE R4 R2
  MOVE R5 R3
  MOVE R6 R1
  RETURN R4 3

PROTO_26:
  NEWTABLE R2 0 0
  GETTABLEKS R4 R0 K0 ["_handles"]
  GETTABLE R3 R4 R1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K11 [{"Axis", "AxisOffset", "Outset", "Color", "Scale", "Tail", "TailScale", "AlwaysOnTop", "Hovered"}]
  GETTABLEKS R7 R3 K2 ["Axis"]
  SETTABLEKS R7 R6 K2 ["Axis"]
  GETTABLEKS R7 R3 K3 ["AxisOffset"]
  SETTABLEKS R7 R6 K3 ["AxisOffset"]
  GETTABLEKS R7 R3 K4 ["Outset"]
  SETTABLEKS R7 R6 K4 ["Outset"]
  GETTABLEKS R7 R3 K5 ["Color"]
  SETTABLEKS R7 R6 K5 ["Color"]
  GETTABLEKS R7 R3 K6 ["Scale"]
  SETTABLEKS R7 R6 K6 ["Scale"]
  GETTABLEKS R7 R0 K12 ["_lastDelta"]
  SETTABLEKS R7 R6 K7 ["Tail"]
  GETTABLEKS R7 R0 K13 ["_draggerContext"]
  GETTABLEKS R11 R3 K2 ["Axis"]
  GETTABLEKS R10 R11 K14 ["Position"]
  GETTABLEKS R12 R0 K15 ["_axis"]
  GETTABLEKS R13 R0 K12 ["_lastDelta"]
  MUL R11 R12 R13
  SUB R9 R10 R11
  NAMECALL R7 R7 K16 ["getHandleScale"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["TailScale"]
  LOADB R7 1
  SETTABLEKS R7 R6 K9 ["AlwaysOnTop"]
  LOADB R7 0
  SETTABLEKS R7 R6 K10 ["Hovered"]
  CALL R4 2 1
  SETTABLE R4 R2 R1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K17 ["createFragment"]
  MOVE R5 R2
  CALL R4 1 -1
  RETURN R4 -1

PROTO_27:
  GETUPVAL R3 0
  CALL R3 0 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R2 K1 [assert]
  CALL R2 -1 0
  MOVE R4 R1
  NAMECALL R2 R0 K2 ["_updateLaggingHandleChoice"]
  CALL R2 2 0
  NAMECALL R2 R0 K3 ["_lastTransformWasLinear"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["createFragment"]
  DUPTABLE R4 K11 [{"ChosenAxisDisplay", "SoftSnaps", "ImplementationRendered", "HotkeyHelp", "MoveMeasurement", "Handles"}]
  JUMPIFNOT R2 [+5]
  MOVE R7 R1
  NAMECALL R5 R0 K12 ["_renderChosenAxisGuide"]
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K5 ["ChosenAxisDisplay"]
  NAMECALL R6 R0 K13 ["_hasSoftSnap"]
  CALL R6 1 1
  JUMPIFNOT R6 [+7]
  GETTABLEKS R5 R0 K14 ["_softSnapper"]
  LOADB R7 1
  NAMECALL R5 R5 K15 ["render"]
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K6 ["SoftSnaps"]
  GETTABLEKS R5 R0 K16 ["_implementation"]
  GETTABLEKS R7 R0 K17 ["_lastGlobalTransformForRender"]
  NAMECALL R5 R5 K15 ["render"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["ImplementationRendered"]
  NAMECALL R5 R0 K18 ["_renderHotkeyHelp"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K8 ["HotkeyHelp"]
  JUMPIFNOT R2 [+4]
  NAMECALL R5 R0 K19 ["_renderActiveMoveMeasurement"]
  CALL R5 1 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K9 ["MoveMeasurement"]
  MOVE R7 R1
  NAMECALL R5 R0 K20 ["_renderDraggingAxisHandles"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["Handles"]
  CALL R3 1 -1
  RETURN R3 -1

PROTO_28:
  NEWTABLE R2 0 0
  NAMECALL R4 R0 K0 ["_useBoundingBoxMoveHandles"]
  CALL R4 1 1
  NOT R3 R4
  GETTABLEKS R4 R0 K1 ["_handles"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R8 K2 ["Color"]
  JUMPIFEQ R7 R1 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  JUMPIF R10 [+6]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K3 ["makeDimmed"]
  MOVE R12 R9
  CALL R11 1 1
  MOVE R9 R11
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K4 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K11 [{"Axis", "AxisOffset", "Outset", "Color", "Scale", "AlwaysOnTop", "Hovered"}]
  GETTABLEKS R14 R8 K5 ["Axis"]
  SETTABLEKS R14 R13 K5 ["Axis"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R14 R8 K6 ["AxisOffset"]
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K6 ["AxisOffset"]
  GETTABLEKS R14 R8 K7 ["Outset"]
  SETTABLEKS R14 R13 K7 ["Outset"]
  SETTABLEKS R9 R13 K2 ["Color"]
  GETTABLEKS R14 R8 K8 ["Scale"]
  SETTABLEKS R14 R13 K8 ["Scale"]
  LOADB R14 1
  SETTABLEKS R14 R13 K9 ["AlwaysOnTop"]
  SETTABLEKS R10 R13 K10 ["Hovered"]
  CALL R11 2 1
  SETTABLE R11 R2 R7
  FORGLOOP R4 2 [-47]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K12 ["createFragment"]
  MOVE R5 R2
  CALL R4 1 -1
  RETURN R4 -1

PROTO_29:
  FASTCALL1 TONUMBER R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [tonumber]
  CALL R1 1 1
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["_doMeasuredMove"]
  CALL R2 2 0
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_30:
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_laggingHandleId"]
  RETURN R0 0

PROTO_31:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K6 [{"DraggerContext", "Position", "Value", "OnChanged", "OnHidden"}]
  GETTABLEKS R5 R0 K7 ["_draggerContext"]
  SETTABLEKS R5 R4 K1 ["DraggerContext"]
  GETTABLEKS R5 R1 K8 ["viewportPosition"]
  SETTABLEKS R5 R4 K2 ["Position"]
  GETUPVAL R5 2
  GETTABLEKS R6 R0 K9 ["_lastDelta"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K3 ["Value"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K4 ["OnChanged"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K5 ["OnHidden"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_32:
  GETTABLEKS R1 R0 K0 ["_laggingHandleId"]
  JUMPIFNOT R1 [+15]
  NAMECALL R1 R0 K1 ["_getMoveMeasurementArrowMetrics"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createFragment"]
  DUPTABLE R3 K4 [{"ValueInput"}]
  MOVE R6 R1
  NAMECALL R4 R0 K5 ["_renderMeasurementInputBox"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["ValueInput"]
  CALL R2 1 -1
  RETURN R2 -1
  RETURN R0 0

PROTO_33:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createFragment"]
  DUPTABLE R3 K3 [{"MoveMeasurement", "Handles"}]
  NAMECALL R4 R0 K4 ["_renderPassiveMoveMeasurement"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["MoveMeasurement"]
  MOVE R6 R1
  NAMECALL R4 R0 K5 ["_renderHoveringHandles"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["Handles"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_34:
  GETTABLEKS R2 R0 K0 ["_props"]
  GETTABLEKS R1 R2 K1 ["ShowBoundingBox"]
  JUMPIFNOT R1 [+49]
  GETTABLEKS R2 R0 K2 ["_selectionWrapper"]
  NAMECALL R2 R2 K3 ["get"]
  CALL R2 1 1
  LENGTH R1 R2
  LOADN R2 1
  JUMPIFNOTLT R2 R1 [+41]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K10 [{"CFrame", "Size", "Color", "LineThickness", "Container"}]
  GETTABLEKS R5 R0 K11 ["_boundingBox"]
  GETTABLEKS R4 R5 K5 ["CFrame"]
  SETTABLEKS R4 R3 K5 ["CFrame"]
  GETTABLEKS R5 R0 K11 ["_boundingBox"]
  GETTABLEKS R4 R5 K6 ["Size"]
  SETTABLEKS R4 R3 K6 ["Size"]
  GETTABLEKS R4 R0 K12 ["_draggerContext"]
  NAMECALL R4 R4 K13 ["getSelectionBoxColor"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K7 ["Color"]
  GETTABLEKS R4 R0 K12 ["_draggerContext"]
  NAMECALL R4 R4 K14 ["getHoverThickness"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K8 ["LineThickness"]
  GETTABLEKS R4 R0 K12 ["_draggerContext"]
  NAMECALL R4 R4 K15 ["getGuiParent"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K9 ["Container"]
  CALL R1 2 -1
  RETURN R1 -1
  RETURN R0 0

PROTO_35:
  NAMECALL R2 R0 K0 ["_useBoundingBoxMoveHandles"]
  CALL R2 1 1
  NOT R1 R2
  JUMPIFNOT R1 [+118]
  GETTABLEKS R3 R0 K1 ["_props"]
  GETTABLEKS R2 R3 K2 ["Summonable"]
  JUMPIFNOT R2 [+113]
  NEWTABLE R2 4 0
  GETTABLEKS R3 R0 K3 ["_summonOffsetInBasis"]
  JUMPIFNOT R3 [+33]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K9 [{"DraggerContext", "CFrame", "Dragging", "Hovered"}]
  GETTABLEKS R6 R0 K10 ["_draggerContext"]
  SETTABLEKS R6 R5 K5 ["DraggerContext"]
  GETTABLEKS R8 R0 K11 ["_boundingBox"]
  GETTABLEKS R7 R8 K6 ["CFrame"]
  NAMECALL R8 R0 K12 ["_getBasisOffset"]
  CALL R8 1 1
  MUL R6 R7 R8
  SETTABLEKS R6 R5 K6 ["CFrame"]
  GETTABLEKS R7 R0 K13 ["_draggingHandleId"]
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  SETTABLEKS R6 R5 K7 ["Dragging"]
  LOADB R6 0
  SETTABLEKS R6 R5 K8 ["Hovered"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K14 ["SummonSnap"]
  GETTABLEKS R3 R0 K13 ["_draggingHandleId"]
  JUMPIF R3 [+66]
  GETTABLEKS R3 R0 K3 ["_summonOffsetInBasis"]
  JUMPIFNOT R3 [+13]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K15 [{"DraggerContext"}]
  GETTABLEKS R6 R0 K10 ["_draggerContext"]
  SETTABLEKS R6 R5 K5 ["DraggerContext"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K16 ["SummonHandlesHider"]
  JUMP [+50]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K17 ["hasSeenEnough"]
  GETTABLEKS R4 R0 K10 ["_draggerContext"]
  CALL R3 1 1
  JUMPIF R3 [+43]
  GETTABLEKS R6 R0 K11 ["_boundingBox"]
  GETTABLEKS R5 R6 K6 ["CFrame"]
  GETTABLEKS R6 R0 K18 ["_basisOffset"]
  MUL R4 R5 R6
  GETTABLEKS R3 R4 K19 ["Position"]
  GETTABLEKS R4 R0 K10 ["_draggerContext"]
  MOVE R6 R3
  NAMECALL R4 R4 K20 ["worldToViewportPoint"]
  CALL R4 2 2
  GETTABLEKS R6 R4 K21 ["Z"]
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+24]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K23 [{"Position", "InView", "DraggerContext"}]
  GETIMPORT R9 K26 [Vector2.new]
  GETTABLEKS R10 R4 K27 ["X"]
  GETTABLEKS R11 R4 K28 ["Y"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K19 ["Position"]
  SETTABLEKS R5 R8 K22 ["InView"]
  GETTABLEKS R9 R0 K10 ["_draggerContext"]
  SETTABLEKS R9 R8 K5 ["DraggerContext"]
  CALL R6 2 1
  SETTABLEKS R6 R2 K29 ["SummonHandlesNote"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K30 ["createFragment"]
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1
  RETURN R0 0

PROTO_36:
  GETTABLEKS R2 R0 K0 ["_draggingHandleId"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R3 R0 K1 ["_handles"]
  GETTABLEKS R4 R0 K0 ["_draggingHandleId"]
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+6]
  GETTABLEKS R5 R0 K0 ["_draggingHandleId"]
  NAMECALL R3 R0 K2 ["_renderDraggingAxis"]
  CALL R3 2 -1
  RETURN R3 -1
  MOVE R5 R1
  NAMECALL R3 R0 K3 ["_renderHovering"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_37:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R4 1
  JUMPIFNOT R4 [+2]
  LOADK R3 K1 ["Folder"]
  JUMP [+1]
  LOADK R3 K2 ["Frame"]
  NEWTABLE R4 0 0
  DUPTABLE R5 K6 [{"Handles", "BoundingBox", "Summon"}]
  MOVE R8 R1
  NAMECALL R6 R0 K7 ["_renderHoverOrDrag"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K3 ["Handles"]
  NAMECALL R6 R0 K8 ["_renderBoundingBox"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K4 ["BoundingBox"]
  NAMECALL R6 R0 K9 ["_renderSummon"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K5 ["Summon"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_38:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+5]
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["renderNEW"]
  CALL R2 2 -1
  RETURN R2 -1
  NEWTABLE R2 8 0
  NAMECALL R4 R0 K1 ["_useBoundingBoxMoveHandles"]
  CALL R4 1 1
  NOT R3 R4
  GETTABLEKS R4 R0 K2 ["_draggingHandleId"]
  JUMPIFNOT R4 [+111]
  GETTABLEKS R5 R0 K3 ["_handles"]
  GETTABLEKS R6 R0 K2 ["_draggingHandleId"]
  GETTABLE R4 R5 R6
  JUMPIFNOT R4 [+105]
  GETTABLEKS R5 R0 K3 ["_handles"]
  GETTABLEKS R6 R0 K2 ["_draggingHandleId"]
  GETTABLE R4 R5 R6
  GETTABLEKS R5 R0 K2 ["_draggingHandleId"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K12 [{"Axis", "AxisOffset", "Outset", "Color", "Scale", "AlwaysOnTop", "Hovered"}]
  GETTABLEKS R9 R4 K5 ["Axis"]
  SETTABLEKS R9 R8 K5 ["Axis"]
  JUMPIF R3 [+3]
  GETTABLEKS R9 R4 K6 ["AxisOffset"]
  JUMPIF R9 [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K6 ["AxisOffset"]
  GETTABLEKS R9 R4 K7 ["Outset"]
  SETTABLEKS R9 R8 K7 ["Outset"]
  GETTABLEKS R9 R4 K8 ["Color"]
  SETTABLEKS R9 R8 K8 ["Color"]
  GETTABLEKS R9 R4 K9 ["Scale"]
  SETTABLEKS R9 R8 K9 ["Scale"]
  LOADB R9 1
  SETTABLEKS R9 R8 K10 ["AlwaysOnTop"]
  LOADB R9 0
  SETTABLEKS R9 R8 K11 ["Hovered"]
  CALL R6 2 1
  SETTABLE R6 R2 R5
  GETIMPORT R5 K14 [pairs]
  GETTABLEKS R6 R0 K3 ["_handles"]
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETTABLEKS R10 R0 K2 ["_draggingHandleId"]
  JUMPIFEQ R8 R10 [+41]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K16 [{"Axis", "AxisOffset", "Outset", "Color", "Scale", "AlwaysOnTop", "Thin"}]
  GETTABLEKS R13 R9 K5 ["Axis"]
  SETTABLEKS R13 R12 K5 ["Axis"]
  JUMPIF R3 [+3]
  GETTABLEKS R13 R9 K6 ["AxisOffset"]
  JUMPIF R13 [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K6 ["AxisOffset"]
  GETTABLEKS R13 R9 K7 ["Outset"]
  SETTABLEKS R13 R12 K7 ["Outset"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K17 ["makeDimmed"]
  GETTABLEKS R14 R9 K8 ["Color"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K8 ["Color"]
  GETTABLEKS R13 R9 K9 ["Scale"]
  SETTABLEKS R13 R12 K9 ["Scale"]
  LOADB R13 1
  SETTABLEKS R13 R12 K10 ["AlwaysOnTop"]
  LOADB R13 1
  SETTABLEKS R13 R12 K15 ["Thin"]
  CALL R10 2 1
  SETTABLE R10 R2 R8
  FORGLOOP R5 2 [-45]
  GETTABLEKS R5 R0 K18 ["_implementation"]
  GETTABLEKS R7 R0 K19 ["_lastGlobalTransformForRender"]
  NAMECALL R5 R5 K20 ["render"]
  CALL R5 2 1
  SETTABLEKS R5 R2 K21 ["ImplementationRendered"]
  JUMP [+54]
  GETIMPORT R4 K14 [pairs]
  GETTABLEKS R5 R0 K3 ["_handles"]
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETTABLEKS R9 R8 K8 ["Color"]
  JUMPIFEQ R7 R1 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  JUMPIF R10 [+6]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K17 ["makeDimmed"]
  MOVE R12 R9
  CALL R11 1 1
  MOVE R9 R11
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K4 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K12 [{"Axis", "AxisOffset", "Outset", "Color", "Scale", "AlwaysOnTop", "Hovered"}]
  GETTABLEKS R14 R8 K5 ["Axis"]
  SETTABLEKS R14 R13 K5 ["Axis"]
  JUMPIF R3 [+3]
  GETTABLEKS R14 R8 K6 ["AxisOffset"]
  JUMPIF R14 [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K6 ["AxisOffset"]
  GETTABLEKS R14 R8 K7 ["Outset"]
  SETTABLEKS R14 R13 K7 ["Outset"]
  SETTABLEKS R9 R13 K8 ["Color"]
  GETTABLEKS R14 R8 K9 ["Scale"]
  SETTABLEKS R14 R13 K9 ["Scale"]
  LOADB R14 1
  SETTABLEKS R14 R13 K10 ["AlwaysOnTop"]
  SETTABLEKS R10 R13 K11 ["Hovered"]
  CALL R11 2 1
  SETTABLE R11 R2 R7
  FORGLOOP R4 2 [-47]
  GETTABLEKS R5 R0 K22 ["_props"]
  GETTABLEKS R4 R5 K23 ["ShowBoundingBox"]
  JUMPIFNOT R4 [+50]
  GETTABLEKS R5 R0 K24 ["_selectionWrapper"]
  NAMECALL R5 R5 K25 ["get"]
  CALL R5 1 1
  LENGTH R4 R5
  LOADN R5 1
  JUMPIFNOTLT R5 R4 [+42]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 4
  DUPTABLE R6 K30 [{"CFrame", "Size", "Color", "LineThickness", "Container"}]
  GETTABLEKS R8 R0 K31 ["_boundingBox"]
  GETTABLEKS R7 R8 K26 ["CFrame"]
  SETTABLEKS R7 R6 K26 ["CFrame"]
  GETTABLEKS R8 R0 K31 ["_boundingBox"]
  GETTABLEKS R7 R8 K27 ["Size"]
  SETTABLEKS R7 R6 K27 ["Size"]
  GETTABLEKS R7 R0 K32 ["_draggerContext"]
  NAMECALL R7 R7 K33 ["getSelectionBoxColor"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K8 ["Color"]
  GETTABLEKS R7 R0 K32 ["_draggerContext"]
  NAMECALL R7 R7 K34 ["getHoverThickness"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K28 ["LineThickness"]
  GETTABLEKS R7 R0 K32 ["_draggerContext"]
  NAMECALL R7 R7 K35 ["getGuiParent"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K29 ["Container"]
  CALL R4 2 1
  SETTABLEKS R4 R2 K36 ["SelectionBoundingBox"]
  JUMPIFNOT R3 [+117]
  GETTABLEKS R5 R0 K22 ["_props"]
  GETTABLEKS R4 R5 K37 ["Summonable"]
  JUMPIFNOT R4 [+112]
  GETTABLEKS R4 R0 K38 ["_summonBasisOffset"]
  JUMPIFNOT R4 [+40]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 5
  DUPTABLE R6 K41 [{"DraggerContext", "CFrame", "IsActive"}]
  GETTABLEKS R7 R0 K32 ["_draggerContext"]
  SETTABLEKS R7 R6 K39 ["DraggerContext"]
  GETTABLEKS R9 R0 K31 ["_boundingBox"]
  GETTABLEKS R8 R9 K26 ["CFrame"]
  NAMECALL R9 R0 K42 ["_getBasisOffset"]
  CALL R9 1 1
  MUL R7 R8 R9
  SETTABLEKS R7 R6 K26 ["CFrame"]
  GETTABLEKS R7 R0 K32 ["_draggerContext"]
  NAMECALL R7 R7 K43 ["shouldShowActiveInstanceHighlight"]
  CALL R7 1 1
  JUMPIFNOT R7 [+10]
  GETTABLEKS R9 R0 K24 ["_selectionWrapper"]
  NAMECALL R9 R9 K25 ["get"]
  CALL R9 1 1
  LENGTH R8 R9
  JUMPIFEQKN R8 K44 [1] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  SETTABLEKS R7 R6 K40 ["IsActive"]
  CALL R4 2 1
  SETTABLEKS R4 R2 K45 ["SummonedPivot"]
  GETTABLEKS R4 R0 K2 ["_draggingHandleId"]
  JUMPIF R4 [+66]
  GETTABLEKS R4 R0 K38 ["_summonBasisOffset"]
  JUMPIFNOT R4 [+13]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 6
  DUPTABLE R6 K46 [{"DraggerContext"}]
  GETTABLEKS R7 R0 K32 ["_draggerContext"]
  SETTABLEKS R7 R6 K39 ["DraggerContext"]
  CALL R4 2 1
  SETTABLEKS R4 R2 K47 ["SummonHandlesHider"]
  JUMP [+50]
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K48 ["hasSeenEnough"]
  GETTABLEKS R5 R0 K32 ["_draggerContext"]
  CALL R4 1 1
  JUMPIF R4 [+43]
  GETTABLEKS R7 R0 K31 ["_boundingBox"]
  GETTABLEKS R6 R7 K26 ["CFrame"]
  GETTABLEKS R7 R0 K49 ["_basisOffset"]
  MUL R5 R6 R7
  GETTABLEKS R4 R5 K50 ["Position"]
  GETTABLEKS R5 R0 K32 ["_draggerContext"]
  MOVE R7 R4
  NAMECALL R5 R5 K51 ["worldToViewportPoint"]
  CALL R5 2 2
  GETTABLEKS R7 R5 K52 ["Z"]
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+24]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["createElement"]
  GETUPVAL R8 7
  DUPTABLE R9 K54 [{"Position", "InView", "DraggerContext"}]
  GETIMPORT R10 K57 [Vector2.new]
  GETTABLEKS R11 R5 K58 ["X"]
  GETTABLEKS R12 R5 K59 ["Y"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K50 ["Position"]
  SETTABLEKS R6 R9 K53 ["InView"]
  GETTABLEKS R10 R0 K32 ["_draggerContext"]
  SETTABLEKS R10 R9 K39 ["DraggerContext"]
  CALL R7 2 1
  SETTABLEKS R7 R2 K60 ["SummonHandlesNote"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["createElement"]
  LOADK R5 K61 ["Folder"]
  NEWTABLE R6 0 0
  MOVE R7 R2
  CALL R4 3 -1
  RETURN R4 -1

PROTO_39:
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_laggingHandleId"]
  RETURN R0 0

PROTO_40:
  LOADB R1 0
  GETTABLEKS R2 R0 K0 ["_draggerContext"]
  NAMECALL R2 R2 K1 ["getMaxSoftSnaps"]
  CALL R2 1 1
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+11]
  GETTABLEKS R2 R0 K0 ["_draggerContext"]
  NAMECALL R2 R2 K2 ["getSoftSnapMarginFactor"]
  CALL R2 1 1
  LOADN R3 0
  JUMPIFLT R3 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_41:
  LOADNIL R3
  SETTABLEKS R3 R0 K0 ["_laggingHandleId"]
  SETTABLEKS R2 R0 K1 ["_draggingHandleId"]
  GETTABLEKS R4 R0 K2 ["_boundingBox"]
  GETTABLEKS R3 R4 K3 ["CFrame"]
  SETTABLEKS R3 R0 K4 ["_draggingOriginalBoundingBoxCFrame"]
  GETTABLEKS R4 R0 K5 ["_handles"]
  GETTABLE R3 R4 R2
  JUMPIFNOT R3 [+74]
  MOVE R5 R1
  NAMECALL R3 R0 K6 ["_setupMoveAtCurrentBoundingBox"]
  CALL R3 2 0
  GETTABLEKS R4 R0 K5 ["_handles"]
  GETTABLE R3 R4 R2
  NAMECALL R4 R0 K7 ["_useBoundingBoxMoveHandles"]
  CALL R4 1 1
  JUMPIF R4 [+17]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["getHandleDimensionForScale"]
  GETTABLEKS R5 R3 K9 ["Scale"]
  GETTABLEKS R7 R0 K10 ["_props"]
  GETTABLEKS R6 R7 K11 ["Outset"]
  CALL R4 2 2
  GETTABLEKS R8 R0 K12 ["_startDistance"]
  SUB R7 R8 R4
  DIV R6 R7 R5
  SETTABLEKS R6 R0 K13 ["_draggingHandleFrac"]
  JUMP [+15]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["getHandleDimensionForScale"]
  GETTABLEKS R5 R3 K9 ["Scale"]
  CALL R4 1 2
  GETTABLEKS R6 R3 K14 ["AxisOffset"]
  GETTABLEKS R10 R0 K12 ["_startDistance"]
  SUB R9 R10 R4
  SUB R8 R9 R6
  DIV R7 R8 R5
  SETTABLEKS R7 R0 K13 ["_draggingHandleFrac"]
  GETTABLEKS R4 R0 K4 ["_draggingOriginalBoundingBoxCFrame"]
  GETTABLEKS R6 R4 K15 ["Position"]
  GETTABLEKS R7 R4 K16 ["Rotation"]
  NAMECALL R10 R0 K17 ["_getBasisOffset"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K15 ["Position"]
  NAMECALL R7 R7 K18 ["VectorToWorldSpace"]
  CALL R7 2 1
  ADD R5 R6 R7
  SETTABLEKS R5 R0 K19 ["_dragStartPosition"]
  GETTABLEKS R6 R3 K20 ["Axis"]
  GETTABLEKS R5 R6 K15 ["Position"]
  SETTABLEKS R5 R0 K21 ["_startDragHandlePosition"]
  GETTABLEKS R5 R3 K9 ["Scale"]
  SETTABLEKS R5 R0 K22 ["_startDragHandleScale"]
  GETTABLEKS R5 R0 K23 ["_axis"]
  SETTABLEKS R5 R0 K24 ["_dragDirection"]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETIMPORT R3 K26 [CFrame.new]
  CALL R3 0 1
  SETTABLEKS R3 R0 K27 ["_lastGlobalTransformForRender"]
  GETTABLEKS R3 R0 K28 ["_implementation"]
  GETTABLEKS R5 R0 K29 ["_selectionWrapper"]
  NAMECALL R5 R5 K30 ["get"]
  CALL R5 1 1
  GETTABLEKS R6 R0 K31 ["_selectionInfo"]
  NAMECALL R3 R3 K32 ["beginDrag"]
  CALL R3 3 0
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+29]
  GETTABLEKS R4 R0 K28 ["_implementation"]
  GETTABLEKS R3 R4 K33 ["getSoftSnaps"]
  JUMPIFNOT R3 [+19]
  NAMECALL R3 R0 K34 ["_needsSoftSnaps"]
  CALL R3 1 1
  JUMPIFNOT R3 [+15]
  GETTABLEKS R3 R0 K35 ["_softSnapper"]
  GETTABLEKS R5 R0 K28 ["_implementation"]
  GETTABLEKS R7 R0 K23 ["_axis"]
  GETTABLEKS R8 R0 K36 ["_summonOffsetInBasis"]
  NAMECALL R5 R5 K33 ["getSoftSnaps"]
  CALL R5 3 -1
  NAMECALL R3 R3 K37 ["setSnaps"]
  CALL R3 -1 0
  RETURN R0 0
  GETTABLEKS R3 R0 K35 ["_softSnapper"]
  NAMECALL R3 R3 K38 ["clearSnaps"]
  CALL R3 1 0
  RETURN R0 0

PROTO_42:
  GETUPVAL R4 0
  GETTABLEKS R5 R0 K0 ["_draggingHandleId"]
  GETTABLE R3 R4 R5
  GETTABLEKS R2 R3 K1 ["Offset"]
  LOADNIL R3
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+12]
  GETTABLEKS R7 R0 K2 ["_boundingBox"]
  GETTABLEKS R6 R7 K3 ["CFrame"]
  NAMECALL R7 R0 K4 ["_getBasisOffset"]
  CALL R7 1 1
  MUL R5 R6 R7
  MUL R4 R5 R2
  GETTABLEKS R3 R4 K5 ["LookVector"]
  JUMP [+7]
  GETTABLEKS R6 R0 K2 ["_boundingBox"]
  GETTABLEKS R5 R6 K3 ["CFrame"]
  MUL R4 R5 R2
  GETTABLEKS R3 R4 K5 ["LookVector"]
  SETTABLEKS R3 R0 K6 ["_axis"]
  MOVE R6 R1
  NAMECALL R4 R0 K7 ["_getDistanceAlongAxis"]
  CALL R4 2 2
  JUMPIFNOT R4 [+2]
  MOVE R6 R5
  JUMPIF R6 [+1]
  LOADN R6 0
  SETTABLEKS R6 R0 K8 ["_startDistance"]
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+4]
  LOADN R6 0
  SETTABLEKS R6 R0 K9 ["_lastDelta"]
  RETURN R0 0
  GETIMPORT R6 K11 [CFrame.new]
  CALL R6 0 1
  SETTABLEKS R6 R0 K12 ["_lastGlobalTransformForRender"]
  RETURN R0 0

PROTO_43:
  GETTABLEKS R2 R0 K0 ["_boundingBox"]
  SETTABLEKS R1 R2 K1 ["CFrame"]
  RETURN R0 0

PROTO_44:
  GETTABLEKS R2 R0 K0 ["_draggingOriginalBoundingBoxCFrame"]
  NAMECALL R3 R0 K1 ["_useBoundingBoxMoveHandles"]
  CALL R3 1 1
  JUMPIF R3 [+4]
  NAMECALL R3 R0 K2 ["_getBasisOffset"]
  CALL R3 1 1
  MUL R2 R2 R3
  GETTABLEKS R3 R2 K3 ["Position"]
  GETTABLEKS R5 R0 K4 ["_axis"]
  GETTABLEKS R4 R5 K5 ["Unit"]
  GETUPVAL R5 0
  MOVE R6 R3
  MOVE R7 R4
  MOVE R8 R1
  CALL R5 3 -1
  RETURN R5 -1

PROTO_45:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["_draggingOriginalBoundingBoxCFrame"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["_axis"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["_startDistance"]
  SUB R5 R0 R6
  MUL R3 R4 R5
  ADD R1 R2 R3
  LOADNIL R2
  GETUPVAL R3 1
  JUMPIFNOT R3 [+8]
  GETUPVAL R4 0
  NAMECALL R4 R4 K3 ["_getBasisOffset"]
  CALL R4 1 1
  MUL R3 R1 R4
  GETUPVAL R4 2
  MUL R2 R3 R4
  JUMP [+18]
  GETUPVAL R4 1
  JUMPIFNOT R4 [+5]
  GETUPVAL R5 2
  MUL R4 R1 R5
  GETUPVAL R5 3
  MUL R3 R4 R5
  JUMPIF R3 [+10]
  GETUPVAL R5 2
  MUL R4 R1 R5
  GETIMPORT R5 K6 [CFrame.new]
  LOADN R6 0
  LOADN R7 0
  GETUPVAL R9 4
  MINUS R8 R9
  CALL R5 3 1
  MUL R3 R4 R5
  MOVE R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["_draggerContext"]
  GETTABLEKS R5 R2 K8 ["Position"]
  NAMECALL R3 R3 K9 ["getHandleScale"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_46:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  JUMPIFNOT R2 [+19]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["getHandleDimensionForScale"]
  MOVE R3 R1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K1 ["_props"]
  GETTABLEKS R4 R5 K2 ["Outset"]
  CALL R2 2 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["_startDistance"]
  SUB R4 R0 R5
  ADD R5 R4 R2
  GETUPVAL R8 4
  SUB R7 R8 R5
  DIV R6 R7 R3
  RETURN R6 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["getHandleDimensionForScale"]
  MOVE R3 R1
  CALL R2 1 2
  GETUPVAL R6 4
  SUB R5 R6 R0
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K3 ["_startDistance"]
  ADD R4 R5 R6
  SUB R7 R4 R2
  GETUPVAL R8 5
  SUB R6 R7 R8
  DIV R5 R6 R3
  RETURN R5 1

PROTO_47:
  LOADNIL R1
  LOADNIL R2
  GETUPVAL R3 0
  JUMPIFNOT R3 [+15]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["getHandleDimensionForScale"]
  GETUPVAL R4 2
  MOVE R5 R0
  CALL R4 1 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K1 ["_props"]
  GETTABLEKS R5 R6 K2 ["Outset"]
  CALL R3 2 2
  MOVE R1 R3
  MOVE R2 R4
  RETURN R2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["getHandleDimensionForScale"]
  GETUPVAL R4 2
  MOVE R5 R0
  CALL R4 1 -1
  CALL R3 -1 2
  MOVE R1 R3
  MOVE R2 R4
  RETURN R2 1

PROTO_48:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K1 [assert]
  CALL R2 1 0
  NAMECALL R3 R0 K2 ["_useBoundingBoxMoveHandles"]
  CALL R3 1 1
  NOT R2 R3
  LOADNIL R3
  LOADNIL R4
  JUMPIFNOT R2 [+8]
  GETTABLEKS R6 R0 K3 ["_handles"]
  GETTABLEKS R7 R0 K4 ["_draggingHandleId"]
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K5 ["OffsetInHandleSpace"]
  JUMP [+7]
  GETTABLEKS R6 R0 K3 ["_handles"]
  GETTABLEKS R7 R0 K4 ["_draggingHandleId"]
  GETTABLE R5 R6 R7
  GETTABLEKS R3 R5 K6 ["AxisOffset"]
  GETUPVAL R7 1
  GETTABLEKS R8 R0 K4 ["_draggingHandleId"]
  GETTABLE R6 R7 R8
  GETTABLEKS R5 R6 K7 ["Offset"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE REF R4
  CAPTURE REF R3
  NEWCLOSURE R7 P1
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE REF R3
  NEWCLOSURE R8 P2
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE VAL R6
  CAPTURE VAL R0
  LOADNIL R10
  LOADNIL R11
  JUMPIFNOT R2 [+14]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K8 ["getHandleDimensionForScale"]
  MOVE R13 R6
  LOADN R14 0
  CALL R13 1 1
  GETTABLEKS R15 R0 K9 ["_props"]
  GETTABLEKS R14 R15 K10 ["Outset"]
  CALL R12 2 2
  MOVE R10 R12
  MOVE R11 R13
  JUMP [+9]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K8 ["getHandleDimensionForScale"]
  MOVE R13 R6
  LOADN R14 0
  CALL R13 1 -1
  CALL R12 -1 2
  MOVE R10 R12
  MOVE R11 R13
  MOVE R9 R11
  LOADNIL R11
  LOADNIL R12
  JUMPIFNOT R2 [+14]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K8 ["getHandleDimensionForScale"]
  MOVE R14 R6
  MOVE R15 R1
  CALL R14 1 1
  GETTABLEKS R16 R0 K9 ["_props"]
  GETTABLEKS R15 R16 K10 ["Outset"]
  CALL R13 2 2
  MOVE R11 R13
  MOVE R12 R14
  JUMP [+9]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K8 ["getHandleDimensionForScale"]
  MOVE R14 R6
  MOVE R15 R1
  CALL R14 1 -1
  CALL R13 -1 2
  MOVE R11 R13
  MOVE R12 R14
  MOVE R10 R12
  FASTCALL2 MATH_MAX R9 R10 [+5]
  MOVE R12 R9
  MOVE R13 R10
  GETIMPORT R11 K13 [math.max]
  CALL R11 2 1
  SUB R12 R1 R11
  ADD R13 R1 R11
  MOVE R14 R7
  MOVE R15 R12
  CALL R14 1 1
  MOVE R15 R7
  MOVE R16 R13
  CALL R15 1 1
  SUB R17 R12 R13
  FASTCALL1 MATH_ABS R17 [+2]
  GETIMPORT R16 K15 [math.abs]
  CALL R16 1 1
  LOADK R17 K16 [0.0001]
  JUMPIFNOTLT R17 R16 [+21]
  LOADK R17 K17 [0.5]
  ADD R18 R12 R13
  MUL R16 R17 R18
  MOVE R17 R7
  MOVE R18 R16
  CALL R17 1 1
  GETTABLEKS R20 R0 K18 ["_draggingHandleFrac"]
  SUB R19 R20 R17
  SUB R20 R15 R14
  MUL R18 R19 R20
  LOADN R19 0
  JUMPIFNOTLT R19 R18 [+4]
  MOVE R12 R16
  MOVE R14 R17
  JUMP [+2]
  MOVE R13 R16
  MOVE R15 R17
  JUMPBACK [-28]
  CLOSEUPVALS R3
  RETURN R12 1

PROTO_49:
  LOADNIL R2
  GETTABLEKS R4 R0 K0 ["_implementation"]
  GETTABLEKS R3 R4 K1 ["getSnapPoints"]
  JUMPIFNOT R3 [+6]
  GETTABLEKS R3 R0 K0 ["_implementation"]
  NAMECALL R3 R3 K1 ["getSnapPoints"]
  CALL R3 1 1
  MOVE R2 R3
  JUMPIFNOT R2 [+72]
  GETTABLEKS R5 R0 K2 ["_draggingOriginalBoundingBoxCFrame"]
  GETTABLEKS R6 R0 K3 ["_basisOffset"]
  MUL R4 R5 R6
  GETTABLEKS R3 R4 K4 ["Position"]
  GETTABLEKS R4 R0 K5 ["_axis"]
  LOADK R5 K6 [-∞]
  LOADK R6 K7 [∞]
  LOADK R7 K7 [∞]
  LOADK R8 K7 [∞]
  GETIMPORT R9 K9 [ipairs]
  MOVE R10 R2
  CALL R9 1 3
  FORGPREP_INEXT R9
  GETTABLEKS R15 R13 K4 ["Position"]
  SUB R14 R15 R3
  MOVE R16 R4
  NAMECALL R14 R14 K10 ["Dot"]
  CALL R14 2 1
  FASTCALL2 MATH_MAX R5 R14 [+5]
  MOVE R16 R5
  MOVE R17 R14
  GETIMPORT R15 K13 [math.max]
  CALL R15 2 1
  MOVE R5 R15
  FASTCALL2 MATH_MIN R6 R14 [+5]
  MOVE R16 R6
  MOVE R17 R14
  GETIMPORT R15 K15 [math.min]
  CALL R15 2 1
  MOVE R6 R15
  SUB R16 R14 R1
  FASTCALL1 MATH_ABS R16 [+2]
  GETIMPORT R15 K17 [math.abs]
  CALL R15 1 1
  JUMPIFNOTLT R15 R7 [+3]
  MOVE R7 R15
  MOVE R8 R14
  FORGLOOP R9 2 [inext] [-33]
  JUMPIFLT R5 R1 [+3]
  JUMPIFNOTLT R1 R6 [+16]
  GETTABLEKS R9 R0 K18 ["_draggerContext"]
  MOVE R11 R1
  NAMECALL R9 R9 K19 ["snapToGridSize"]
  CALL R9 2 1
  SUB R11 R9 R1
  FASTCALL1 MATH_ABS R11 [+2]
  GETIMPORT R10 K17 [math.abs]
  CALL R10 1 1
  JUMPIFNOTLT R7 R10 [+2]
  RETURN R8 1
  RETURN R9 1
  RETURN R8 1
  GETTABLEKS R3 R0 K18 ["_draggerContext"]
  MOVE R5 R1
  NAMECALL R3 R3 K19 ["snapToGridSize"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_50:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["_getDistanceAlongAxis"]
  CALL R2 2 2
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R4 R0 K1 ["_draggerContext"]
  NAMECALL R4 R4 K2 ["shouldGridSnap"]
  CALL R4 1 1
  LOADNIL R5
  GETUPVAL R6 0
  GETTABLEKS R7 R0 K1 ["_draggerContext"]
  NAMECALL R7 R7 K3 ["getCamera"]
  CALL R7 1 1
  GETTABLEKS R8 R0 K4 ["_dragStartPosition"]
  GETTABLEKS R9 R0 K5 ["_dragDirection"]
  GETTABLEKS R10 R0 K6 ["_startDragHandlePosition"]
  GETTABLEKS R11 R0 K7 ["_startDragHandleScale"]
  GETTABLEKS R12 R0 K8 ["_startDistance"]
  MOVE R13 R3
  CALL R6 7 1
  GETTABLEKS R9 R0 K6 ["_startDragHandlePosition"]
  GETTABLEKS R10 R0 K4 ["_dragStartPosition"]
  SUB R8 R9 R10
  GETTABLEKS R7 R8 K9 ["Magnitude"]
  SUB R5 R6 R7
  LOADNIL R8
  NAMECALL R9 R0 K10 ["_useBoundingBoxMoveHandles"]
  CALL R9 1 1
  JUMPIF R9 [+6]
  MOVE R11 R5
  NAMECALL R9 R0 K11 ["_getSnappedDelta"]
  CALL R9 2 1
  MOVE R8 R9
  JUMP [+7]
  GETTABLEKS R9 R0 K1 ["_draggerContext"]
  MOVE R11 R5
  NAMECALL R9 R9 K12 ["snapToGridSize"]
  CALL R9 2 1
  MOVE R8 R9
  NAMECALL R9 R0 K13 ["_hasSoftSnap"]
  CALL R9 1 1
  JUMPIFNOT R9 [+17]
  JUMPIFNOT R4 [+6]
  SUB R10 R5 R8
  FASTCALL1 MATH_ABS R10 [+2]
  GETIMPORT R9 K16 [math.abs]
  CALL R9 1 1
  JUMP [+1]
  LOADNIL R9
  GETTABLEKS R10 R0 K17 ["_softSnapper"]
  MOVE R12 R5
  MOVE R13 R9
  NAMECALL R10 R10 K18 ["updateCurrentSnap"]
  CALL R10 3 1
  JUMPIFNOT R10 [+1]
  MOVE R8 R10
  GETTABLEKS R9 R0 K19 ["_implementation"]
  GETIMPORT R11 K22 [CFrame.new]
  GETTABLEKS R13 R0 K23 ["_axis"]
  MUL R12 R13 R8
  CALL R11 1 -1
  NAMECALL R9 R9 K24 ["updateDrag"]
  CALL R9 -1 1
  JUMPIFNOTEQKNIL R9 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  FASTCALL2K ASSERT R11 K25 [+4]
  LOADK R12 K25 ["Did not return a transform from updateDrag."]
  GETIMPORT R10 K27 [assert]
  CALL R10 2 0
  GETUPVAL R10 1
  CALL R10 0 1
  JUMPIFNOT R10 [+21]
  NAMECALL R10 R0 K28 ["_lastTransformWasLinear"]
  CALL R10 1 1
  JUMPIFNOT R10 [+13]
  FASTCALL1 MATH_SIGN R8 [+3]
  MOVE R12 R8
  GETIMPORT R11 K30 [math.sign]
  CALL R11 1 1
  GETTABLEKS R13 R9 K31 ["Position"]
  GETTABLEKS R12 R13 K9 ["Magnitude"]
  MUL R10 R11 R12
  SETTABLEKS R10 R0 K32 ["_lastDelta"]
  RETURN R9 1
  LOADN R10 0
  SETTABLEKS R10 R0 K32 ["_lastDelta"]
  RETURN R9 1
  FASTCALL1 MATH_SIGN R8 [+3]
  MOVE R12 R8
  GETIMPORT R11 K30 [math.sign]
  CALL R11 1 1
  GETTABLEKS R13 R9 K31 ["Position"]
  GETTABLEKS R12 R13 K9 ["Magnitude"]
  MUL R10 R11 R12
  SETTABLEKS R10 R0 K32 ["_lastDelta"]
  RETURN R9 1

PROTO_51:
  LOADNIL R2
  GETTABLEKS R4 R0 K0 ["_handles"]
  GETTABLEKS R5 R0 K1 ["_draggingHandleId"]
  GETTABLE R3 R4 R5
  JUMPIFNOT R3 [+5]
  MOVE R5 R1
  NAMECALL R3 R0 K2 ["_mouseDragAxis"]
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFNOT R2 [+8]
  GETTABLEKS R6 R0 K3 ["_draggingOriginalBoundingBoxCFrame"]
  MUL R5 R2 R6
  NAMECALL R3 R0 K4 ["_setMidMoveBoundingBox"]
  CALL R3 2 0
  SETTABLEKS R2 R0 K5 ["_lastGlobalTransformForRender"]
  RETURN R0 0

PROTO_52:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["_getDistanceAlongAxis"]
  CALL R2 2 2
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R5 R0 K1 ["_handles"]
  GETTABLEKS R6 R0 K2 ["_draggingHandleId"]
  GETTABLE R4 R5 R6
  JUMPIF R4 [+1]
  RETURN R0 0
  MOVE R7 R3
  NAMECALL R5 R0 K3 ["_solveForAdjustedDistance"]
  CALL R5 2 1
  GETTABLEKS R6 R0 K4 ["_startDistance"]
  SUB R4 R5 R6
  LOADNIL R5
  NAMECALL R6 R0 K5 ["_useBoundingBoxMoveHandles"]
  CALL R6 1 1
  JUMPIF R6 [+6]
  MOVE R8 R4
  NAMECALL R6 R0 K6 ["_getSnappedDelta"]
  CALL R6 2 1
  MOVE R5 R6
  JUMP [+7]
  GETTABLEKS R6 R0 K7 ["_draggerContext"]
  MOVE R8 R4
  NAMECALL R6 R6 K8 ["snapToGridSize"]
  CALL R6 2 1
  MOVE R5 R6
  GETTABLEKS R6 R0 K9 ["_implementation"]
  GETIMPORT R8 K12 [CFrame.new]
  GETTABLEKS R10 R0 K13 ["_axis"]
  MUL R9 R10 R5
  CALL R8 1 -1
  NAMECALL R6 R6 K14 ["updateDrag"]
  CALL R6 -1 1
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  FASTCALL2K ASSERT R8 K15 [+4]
  LOADK R9 K15 ["Did not return a transform from updateDrag."]
  GETIMPORT R7 K17 [assert]
  CALL R7 2 0
  GETTABLEKS R10 R0 K18 ["_draggingOriginalBoundingBoxCFrame"]
  MUL R9 R6 R10
  NAMECALL R7 R0 K19 ["_setMidMoveBoundingBox"]
  CALL R7 2 0
  SETTABLEKS R6 R0 K20 ["_lastGlobalTransformForRender"]
  RETURN R0 0

PROTO_53:
  LOADNIL R2
  SETTABLEKS R2 R0 K0 ["_draggingHandleId"]
  GETTABLEKS R2 R0 K1 ["_implementation"]
  NAMECALL R2 R2 K2 ["endDrag"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["_schema"]
  GETTABLEKS R3 R4 K4 ["addUndoWaypoint"]
  GETTABLEKS R4 R0 K5 ["_draggerContext"]
  LOADK R5 K6 ["Axis Move Selection"]
  CALL R3 2 0
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+6]
  GETTABLEKS R3 R0 K7 ["_tabKeyDown"]
  JUMPIF R3 [+3]
  NAMECALL R3 R0 K8 ["_endSummon"]
  CALL R3 1 0
  RETURN R2 1

PROTO_54:
  GETTABLEKS R1 R0 K0 ["_selectionInfo"]
  NAMECALL R1 R1 K1 ["isEmpty"]
  CALL R1 1 1
  JUMPIFNOT R1 [+5]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K2 ["_handles"]
  RETURN R0 0
  GETIMPORT R1 K4 [pairs]
  GETUPVAL R2 0
  CALL R1 1 3
  FORGPREP_NEXT R1
  NAMECALL R6 R0 K5 ["_useBoundingBoxMoveHandles"]
  CALL R6 1 1
  JUMPIF R6 [+44]
  GETTABLEKS R9 R0 K6 ["_boundingBox"]
  GETTABLEKS R8 R9 K7 ["CFrame"]
  NAMECALL R9 R0 K8 ["_getBasisOffset"]
  CALL R9 1 1
  MUL R7 R8 R9
  GETTABLEKS R8 R5 K9 ["Offset"]
  MUL R6 R7 R8
  GETTABLEKS R7 R0 K2 ["_handles"]
  DUPTABLE R8 K16 [{"Outset", "Axis", "Color", "Scale", "AlwaysOnTop", "Opposite"}]
  GETTABLEKS R10 R0 K17 ["_props"]
  GETTABLEKS R9 R10 K10 ["Outset"]
  SETTABLEKS R9 R8 K10 ["Outset"]
  SETTABLEKS R6 R8 K11 ["Axis"]
  GETTABLEKS R9 R5 K12 ["Color"]
  SETTABLEKS R9 R8 K12 ["Color"]
  GETTABLEKS R9 R0 K18 ["_draggerContext"]
  GETTABLEKS R11 R6 K19 ["Position"]
  NAMECALL R9 R9 K20 ["getHandleScale"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K13 ["Scale"]
  LOADB R9 1
  SETTABLEKS R9 R8 K14 ["AlwaysOnTop"]
  GETTABLEKS R9 R5 K15 ["Opposite"]
  SETTABLEKS R9 R8 K15 ["Opposite"]
  SETTABLE R8 R7 R4
  JUMP [+61]
  GETTABLEKS R6 R5 K9 ["Offset"]
  NAMECALL R6 R6 K21 ["Inverse"]
  CALL R6 1 1
  GETTABLEKS R9 R0 K6 ["_boundingBox"]
  GETTABLEKS R8 R9 K22 ["Size"]
  NAMECALL R6 R6 K23 ["VectorToWorldSpace"]
  CALL R6 2 1
  GETTABLEKS R9 R6 K25 ["Z"]
  FASTCALL1 MATH_ABS R9 [+2]
  GETIMPORT R8 K28 [math.abs]
  CALL R8 1 1
  MULK R7 R8 K24 [0.5]
  GETTABLEKS R11 R0 K6 ["_boundingBox"]
  GETTABLEKS R10 R11 K7 ["CFrame"]
  GETTABLEKS R11 R5 K9 ["Offset"]
  MUL R9 R10 R11
  GETIMPORT R10 K30 [CFrame.new]
  LOADN R11 0
  LOADN R12 0
  MINUS R13 R7
  CALL R10 3 1
  MUL R8 R9 R10
  GETTABLEKS R9 R0 K2 ["_handles"]
  DUPTABLE R10 K32 [{"AxisOffset", "Axis", "Color", "Scale", "AlwaysOnTop", "Opposite"}]
  SETTABLEKS R7 R10 K31 ["AxisOffset"]
  SETTABLEKS R8 R10 K11 ["Axis"]
  GETTABLEKS R11 R5 K12 ["Color"]
  SETTABLEKS R11 R10 K12 ["Color"]
  GETTABLEKS R11 R0 K18 ["_draggerContext"]
  GETTABLEKS R13 R8 K19 ["Position"]
  NAMECALL R11 R11 K20 ["getHandleScale"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K13 ["Scale"]
  LOADB R11 1
  SETTABLEKS R11 R10 K14 ["AlwaysOnTop"]
  GETTABLEKS R11 R5 K15 ["Opposite"]
  SETTABLEKS R11 R10 K15 ["Opposite"]
  SETTABLE R10 R9 R4
  FORGLOOP R1 2 [-110]
  RETURN R0 0

PROTO_55:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIF R2 [+16]
  GETIMPORT R2 K3 [Enum.KeyCode.Tab]
  JUMPIFNOTEQ R1 R2 [+13]
  LOADB R2 1
  SETTABLEKS R2 R0 K4 ["_tabKeyDown"]
  GETTABLEKS R2 R0 K5 ["_draggingHandleId"]
  JUMPIF R2 [+55]
  NAMECALL R2 R0 K6 ["_summonHandles"]
  CALL R2 1 0
  LOADB R2 1
  RETURN R2 1
  JUMP [+49]
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+46]
  GETUPVAL R3 1
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+14]
  GETTABLEKS R2 R0 K5 ["_draggingHandleId"]
  JUMPIFNOT R2 [+40]
  GETTABLEKS R4 R0 K7 ["_draggerContext"]
  NAMECALL R4 R4 K8 ["getMouseRay"]
  CALL R4 1 -1
  NAMECALL R2 R0 K9 ["mouseDrag"]
  CALL R2 -1 0
  LOADB R2 1
  RETURN R2 1
  JUMP [+29]
  GETIMPORT R2 K11 [Enum.KeyCode.H]
  JUMPIFNOTEQ R1 R2 [+16]
  GETTABLEKS R2 R0 K7 ["_draggerContext"]
  LOADK R4 K12 ["HotkeyUsageHidden"]
  GETTABLEKS R6 R0 K7 ["_draggerContext"]
  LOADK R8 K12 ["HotkeyUsageHidden"]
  NAMECALL R6 R6 K13 ["getSetting"]
  CALL R6 2 1
  NOT R5 R6
  NAMECALL R2 R2 K14 ["setSetting"]
  CALL R2 3 0
  LOADB R2 1
  RETURN R2 1
  GETUPVAL R3 2
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+7]
  GETUPVAL R5 2
  GETTABLE R4 R5 R1
  NAMECALL R2 R0 K15 ["_doBump"]
  CALL R2 2 0
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_56:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIF R2 [+15]
  GETIMPORT R2 K3 [Enum.KeyCode.Tab]
  JUMPIFNOTEQ R1 R2 [+12]
  LOADB R2 0
  SETTABLEKS R2 R0 K4 ["_tabKeyDown"]
  GETTABLEKS R2 R0 K5 ["_draggingHandleId"]
  JUMPIF R2 [+3]
  NAMECALL R2 R0 K6 ["_endSummon"]
  CALL R2 1 0
  LOADB R2 1
  RETURN R2 1
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+16]
  GETUPVAL R3 1
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+13]
  GETTABLEKS R2 R0 K5 ["_draggingHandleId"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R4 R0 K7 ["_draggerContext"]
  NAMECALL R4 R4 K8 ["getMouseRay"]
  CALL R4 1 -1
  NAMECALL R2 R0 K9 ["mouseDrag"]
  CALL R2 -1 0
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_57:
  GETTABLEKS R2 R0 K0 ["_implementation"]
  GETTABLEKS R1 R2 K1 ["getPriority"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R2 R0 K0 ["_implementation"]
  GETTABLEKS R1 R2 K1 ["getPriority"]
  CALL R1 0 -1
  RETURN R1 -1
  LOADN R1 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R1 K5 ["Packages"]
  GETTABLEKS R3 R4 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Utility"]
  GETTABLEKS R4 R5 K8 ["Colors"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["StandaloneSelectionBox"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["WireframeHandleAdornment"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K9 ["Components"]
  GETTABLEKS R7 R8 K12 ["HotkeyUsageInfo"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K9 ["Components"]
  GETTABLEKS R8 R9 K13 ["FloatingValueInput"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R0 K7 ["Utility"]
  GETTABLEKS R9 R10 K14 ["HotkeyHelpBuilder"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R0 K7 ["Utility"]
  GETTABLEKS R10 R11 K15 ["conciseNumberFormat"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R0 K7 ["Utility"]
  GETTABLEKS R11 R12 K16 ["SoftSnapper"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R13 R0 K9 ["Components"]
  GETTABLEKS R12 R13 K17 ["MoveHandleView"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R14 R0 K9 ["Components"]
  GETTABLEKS R13 R14 K18 ["SummonHandlesNote"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R15 R0 K9 ["Components"]
  GETTABLEKS R14 R15 K19 ["SummonHandlesHider"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R16 R0 K9 ["Components"]
  GETTABLEKS R15 R16 K20 ["DraggedPivot"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R17 R0 K9 ["Components"]
  GETTABLEKS R16 R17 K21 ["SummonedPivot"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R18 R0 K7 ["Utility"]
  GETTABLEKS R17 R18 K22 ["computeDraggedDistance"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R19 R0 K7 ["Utility"]
  GETTABLEKS R18 R19 K23 ["computeHandlePositionDistance"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R20 R0 K24 ["Flags"]
  GETTABLEKS R19 R20 K25 ["getFFlagDraggerImprovements"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R21 R0 K24 ["Flags"]
  GETTABLEKS R20 R21 K26 ["getFFlagSBT4896NudgingWithNumpad"]
  CALL R19 1 1
  GETIMPORT R20 K28 [game]
  LOADK R22 K29 ["DraggerUseFolderNotFrame"]
  LOADB R23 0
  NAMECALL R20 R20 K30 ["DefineFastFlag"]
  CALL R20 3 1
  NEWTABLE R21 64 0
  SETTABLEKS R21 R21 K31 ["__index"]
  GETIMPORT R22 K34 [table.freeze]
  DUPTABLE R23 K41 [{"MinusZ", "PlusZ", "MinusY", "PlusY", "MinusX", "PlusX"}]
  DUPTABLE R24 K45 [{"Offset", "Color", "Opposite"}]
  GETIMPORT R25 K48 [CFrame.fromMatrix]
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K51 [Vector3.new]
  CALL R26 0 1
  LOADK R27 K52 [{1, 0, 0}]
  LOADK R28 K53 [{0, 1, 0}]
  CALL R25 3 1
  SETTABLEKS R25 R24 K42 ["Offset"]
  GETTABLEKS R25 R3 K54 ["Z_AXIS"]
  SETTABLEKS R25 R24 K43 ["Color"]
  LOADK R25 K36 ["PlusZ"]
  SETTABLEKS R25 R24 K44 ["Opposite"]
  SETTABLEKS R24 R23 K35 ["MinusZ"]
  DUPTABLE R24 K45 [{"Offset", "Color", "Opposite"}]
  GETIMPORT R25 K48 [CFrame.fromMatrix]
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K51 [Vector3.new]
  CALL R26 0 1
  LOADK R27 K52 [{1, 0, 0}]
  LOADK R28 K55 [{0, -1, 0}]
  CALL R25 3 1
  SETTABLEKS R25 R24 K42 ["Offset"]
  GETTABLEKS R25 R3 K54 ["Z_AXIS"]
  SETTABLEKS R25 R24 K43 ["Color"]
  LOADK R25 K35 ["MinusZ"]
  SETTABLEKS R25 R24 K44 ["Opposite"]
  SETTABLEKS R24 R23 K36 ["PlusZ"]
  DUPTABLE R24 K45 [{"Offset", "Color", "Opposite"}]
  GETIMPORT R25 K48 [CFrame.fromMatrix]
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K51 [Vector3.new]
  CALL R26 0 1
  LOADK R27 K56 [{0, 0, 1}]
  LOADK R28 K52 [{1, 0, 0}]
  CALL R25 3 1
  SETTABLEKS R25 R24 K42 ["Offset"]
  GETTABLEKS R25 R3 K57 ["Y_AXIS"]
  SETTABLEKS R25 R24 K43 ["Color"]
  LOADK R25 K38 ["PlusY"]
  SETTABLEKS R25 R24 K44 ["Opposite"]
  SETTABLEKS R24 R23 K37 ["MinusY"]
  DUPTABLE R24 K45 [{"Offset", "Color", "Opposite"}]
  GETIMPORT R25 K48 [CFrame.fromMatrix]
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K51 [Vector3.new]
  CALL R26 0 1
  LOADK R27 K56 [{0, 0, 1}]
  LOADK R28 K58 [{-1, 0, 0}]
  CALL R25 3 1
  SETTABLEKS R25 R24 K42 ["Offset"]
  GETTABLEKS R25 R3 K57 ["Y_AXIS"]
  SETTABLEKS R25 R24 K43 ["Color"]
  LOADK R25 K37 ["MinusY"]
  SETTABLEKS R25 R24 K44 ["Opposite"]
  SETTABLEKS R24 R23 K38 ["PlusY"]
  DUPTABLE R24 K45 [{"Offset", "Color", "Opposite"}]
  GETIMPORT R25 K48 [CFrame.fromMatrix]
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K51 [Vector3.new]
  CALL R26 0 1
  LOADK R27 K53 [{0, 1, 0}]
  LOADK R28 K56 [{0, 0, 1}]
  CALL R25 3 1
  SETTABLEKS R25 R24 K42 ["Offset"]
  GETTABLEKS R25 R3 K59 ["X_AXIS"]
  SETTABLEKS R25 R24 K43 ["Color"]
  LOADK R25 K40 ["PlusX"]
  SETTABLEKS R25 R24 K44 ["Opposite"]
  SETTABLEKS R24 R23 K39 ["MinusX"]
  DUPTABLE R24 K45 [{"Offset", "Color", "Opposite"}]
  GETIMPORT R25 K48 [CFrame.fromMatrix]
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K51 [Vector3.new]
  CALL R26 0 1
  LOADK R27 K53 [{0, 1, 0}]
  LOADK R28 K60 [{0, 0, -1}]
  CALL R25 3 1
  SETTABLEKS R25 R24 K42 ["Offset"]
  GETTABLEKS R25 R3 K59 ["X_AXIS"]
  SETTABLEKS R25 R24 K43 ["Color"]
  LOADK R25 K39 ["MinusX"]
  SETTABLEKS R25 R24 K44 ["Opposite"]
  SETTABLEKS R24 R23 K40 ["PlusX"]
  CALL R22 1 1
  DUPCLOSURE R23 K61 [PROTO_0]
  CAPTURE VAL R18
  CAPTURE VAL R10
  CAPTURE VAL R21
  SETTABLEKS R23 R21 K50 ["new"]
  DUPCLOSURE R23 K62 [PROTO_1]
  CAPTURE VAL R18
  SETTABLEKS R23 R21 K63 ["update"]
  DUPCLOSURE R23 K64 [PROTO_2]
  CAPTURE VAL R18
  SETTABLEKS R23 R21 K65 ["_summonHandles"]
  DUPCLOSURE R23 K66 [PROTO_3]
  CAPTURE VAL R18
  SETTABLEKS R23 R21 K67 ["_endSummon"]
  DUPCLOSURE R23 K68 [PROTO_4]
  CAPTURE VAL R18
  SETTABLEKS R23 R21 K69 ["beginSummon"]
  DUPCLOSURE R23 K70 [PROTO_5]
  CAPTURE VAL R18
  SETTABLEKS R23 R21 K71 ["endSummon"]
  DUPCLOSURE R23 K72 [PROTO_6]
  CAPTURE VAL R18
  SETTABLEKS R23 R21 K73 ["_getBasisOffset"]
  DUPCLOSURE R23 K74 [PROTO_7]
  SETTABLEKS R23 R21 K75 ["shouldBiasTowardsObjects"]
  DUPCLOSURE R23 K76 [PROTO_8]
  CAPTURE VAL R11
  SETTABLEKS R23 R21 K77 ["hitTest"]
  DUPCLOSURE R23 K78 [PROTO_9]
  SETTABLEKS R23 R21 K79 ["_doMeasuredMove"]
  DUPCLOSURE R23 K80 [PROTO_10]
  CAPTURE VAL R22
  SETTABLEKS R23 R21 K81 ["_doBump"]
  DUPCLOSURE R23 K82 [PROTO_11]
  CAPTURE VAL R18
  SETTABLEKS R23 R21 K83 ["_useBoundingBoxMoveHandles"]
  DUPCLOSURE R23 K84 [PROTO_12]
  SETTABLEKS R23 R21 K85 ["_hasSoftSnap"]
  DUPCLOSURE R23 K86 [PROTO_13]
  DUPCLOSURE R24 K87 [PROTO_14]
  SETTABLEKS R24 R21 K88 ["_getHandleIdClosestToCenterOfScreen"]
  DUPCLOSURE R24 K89 [PROTO_15]
  CAPTURE VAL R11
  CAPTURE VAL R19
  SETTABLEKS R24 R21 K90 ["_getMoveMeasurementArrowMetrics"]
  DUPCLOSURE R24 K91 [PROTO_17]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R24 R21 K92 ["_renderMoveMeasurementArrow"]
  DUPCLOSURE R24 K93 [PROTO_18]
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R6
  SETTABLEKS R24 R21 K94 ["_renderHotkeyHelp"]
  DUPCLOSURE R24 K95 [PROTO_19]
  SETTABLEKS R24 R21 K96 ["_lastTransformWasLinear"]
  DUPCLOSURE R24 K97 [PROTO_21]
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R24 R21 K98 ["_renderChosenAxisGuide"]
  DUPCLOSURE R24 K99 [PROTO_22]
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R3
  SETTABLEKS R24 R21 K100 ["_renderPassiveLaggingHandle"]
  DUPCLOSURE R24 K101 [PROTO_23]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R9
  SETTABLEKS R24 R21 K102 ["_renderActiveMoveMeasurement"]
  DUPCLOSURE R24 K103 [PROTO_24]
  SETTABLEKS R24 R21 K104 ["_updateLaggingHandleChoice"]
  DUPCLOSURE R24 K105 [PROTO_25]
  SETTABLEKS R24 R21 K106 ["_getLaggingHandleChoice"]
  DUPCLOSURE R24 K107 [PROTO_26]
  CAPTURE VAL R2
  CAPTURE VAL R11
  SETTABLEKS R24 R21 K108 ["_renderDraggingAxisHandles"]
  DUPCLOSURE R24 K109 [PROTO_27]
  CAPTURE VAL R18
  CAPTURE VAL R2
  SETTABLEKS R24 R21 K110 ["_renderDraggingAxis"]
  DUPCLOSURE R24 K111 [PROTO_28]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R11
  SETTABLEKS R24 R21 K112 ["_renderHoveringHandles"]
  DUPCLOSURE R24 K113 [PROTO_31]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R9
  SETTABLEKS R24 R21 K114 ["_renderMeasurementInputBox"]
  DUPCLOSURE R24 K115 [PROTO_32]
  CAPTURE VAL R2
  SETTABLEKS R24 R21 K116 ["_renderPassiveMoveMeasurement"]
  DUPCLOSURE R24 K117 [PROTO_33]
  CAPTURE VAL R2
  SETTABLEKS R24 R21 K118 ["_renderHovering"]
  DUPCLOSURE R24 K119 [PROTO_34]
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R24 R21 K120 ["_renderBoundingBox"]
  DUPCLOSURE R24 K121 [PROTO_35]
  CAPTURE VAL R2
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R12
  SETTABLEKS R24 R21 K122 ["_renderSummon"]
  DUPCLOSURE R24 K123 [PROTO_36]
  SETTABLEKS R24 R21 K124 ["_renderHoverOrDrag"]
  DUPCLOSURE R24 K125 [PROTO_37]
  CAPTURE VAL R2
  CAPTURE VAL R20
  SETTABLEKS R24 R21 K126 ["renderNEW"]
  DUPCLOSURE R24 K127 [PROTO_38]
  CAPTURE VAL R18
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R12
  SETTABLEKS R24 R21 K128 ["render"]
  DUPCLOSURE R24 K129 [PROTO_39]
  SETTABLEKS R24 R21 K130 ["selectionChanged"]
  DUPCLOSURE R24 K131 [PROTO_40]
  SETTABLEKS R24 R21 K132 ["_needsSoftSnaps"]
  DUPCLOSURE R24 K133 [PROTO_41]
  CAPTURE VAL R11
  CAPTURE VAL R18
  SETTABLEKS R24 R21 K134 ["mouseDown"]
  DUPCLOSURE R24 K135 [PROTO_42]
  CAPTURE VAL R22
  CAPTURE VAL R18
  SETTABLEKS R24 R21 K136 ["_setupMoveAtCurrentBoundingBox"]
  DUPCLOSURE R24 K137 [PROTO_43]
  SETTABLEKS R24 R21 K138 ["_setMidMoveBoundingBox"]
  DUPCLOSURE R24 K139 [PROTO_44]
  CAPTURE VAL R16
  SETTABLEKS R24 R21 K140 ["_getDistanceAlongAxis"]
  DUPCLOSURE R24 K141 [PROTO_48]
  CAPTURE VAL R18
  CAPTURE VAL R22
  CAPTURE VAL R11
  SETTABLEKS R24 R21 K142 ["_solveForAdjustedDistance"]
  DUPCLOSURE R24 K143 [PROTO_49]
  SETTABLEKS R24 R21 K144 ["_getSnappedDelta"]
  DUPCLOSURE R24 K145 [PROTO_50]
  CAPTURE VAL R17
  CAPTURE VAL R18
  SETTABLEKS R24 R21 K146 ["_mouseDragAxis"]
  MOVE R24 R18
  CALL R24 0 1
  JUMPIFNOT R24 [+4]
  DUPCLOSURE R24 K147 [PROTO_51]
  SETTABLEKS R24 R21 K148 ["mouseDrag"]
  JUMP [+3]
  DUPCLOSURE R24 K149 [PROTO_52]
  SETTABLEKS R24 R21 K148 ["mouseDrag"]
  DUPCLOSURE R24 K150 [PROTO_53]
  CAPTURE VAL R18
  SETTABLEKS R24 R21 K151 ["mouseUp"]
  DUPCLOSURE R24 K152 [PROTO_54]
  CAPTURE VAL R22
  SETTABLEKS R24 R21 K153 ["_updateHandles"]
  GETIMPORT R24 K34 [table.freeze]
  NEWTABLE R25 2 0
  GETIMPORT R26 K157 [Enum.KeyCode.RightShift]
  LOADB R27 1
  SETTABLE R27 R25 R26
  GETIMPORT R26 K159 [Enum.KeyCode.LeftShift]
  LOADB R27 1
  SETTABLE R27 R25 R26
  CALL R24 1 1
  GETIMPORT R25 K34 [table.freeze]
  NEWTABLE R26 8 0
  GETIMPORT R27 K161 [Enum.KeyCode.KeypadSeven]
  LOADK R28 K38 ["PlusY"]
  SETTABLE R28 R26 R27
  GETIMPORT R27 K163 [Enum.KeyCode.KeypadOne]
  LOADK R28 K37 ["MinusY"]
  SETTABLE R28 R26 R27
  GETIMPORT R27 K165 [Enum.KeyCode.KeypadFour]
  LOADK R28 K40 ["PlusX"]
  SETTABLE R28 R26 R27
  GETIMPORT R27 K167 [Enum.KeyCode.KeypadSix]
  LOADK R28 K39 ["MinusX"]
  SETTABLE R28 R26 R27
  GETIMPORT R27 K169 [Enum.KeyCode.KeypadEight]
  LOADK R28 K36 ["PlusZ"]
  SETTABLE R28 R26 R27
  GETIMPORT R27 K171 [Enum.KeyCode.KeypadTwo]
  LOADK R28 K35 ["MinusZ"]
  SETTABLE R28 R26 R27
  CALL R25 1 1
  DUPCLOSURE R26 K172 [PROTO_55]
  CAPTURE VAL R18
  CAPTURE VAL R24
  CAPTURE VAL R25
  SETTABLEKS R26 R21 K173 ["keyDown"]
  DUPCLOSURE R26 K174 [PROTO_56]
  CAPTURE VAL R18
  CAPTURE VAL R24
  SETTABLEKS R26 R21 K175 ["keyUp"]
  DUPCLOSURE R26 K176 [PROTO_57]
  SETTABLEKS R26 R21 K177 ["getPriority"]
  RETURN R21 1
