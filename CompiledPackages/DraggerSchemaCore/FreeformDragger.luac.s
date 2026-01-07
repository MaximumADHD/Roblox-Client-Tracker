PROTO_0:
  LOADK R1 K0 [0.5]
  JUMPIFNOTLT R0 R1 [+5]
  DIVK R3 R0 K0 [0.5]
  POWK R2 R3 K1 [4]
  MULK R1 R2 K0 [0.5]
  RETURN R1 1
  SUBRK R5 R2 K0 [0.5]
  DIVK R4 R5 K0 [0.5]
  POWK R3 R4 K1 [4]
  MULK R2 R3 K0 [0.5]
  SUBRK R1 R2 K2 [1]
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["_animationCallback"]
  CALL R2 3 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R3 K1 [tick]
  CALL R3 0 1
  DUPTABLE R5 K9 [{"_draggerContext", "_draggerToolModel", "_dragInfo", "_partMover", "_attachmentMover", "_tiltRotate", "_lastAppliedTransform"}]
  SETTABLEKS R0 R5 K2 ["_draggerContext"]
  SETTABLEKS R1 R5 K3 ["_draggerToolModel"]
  SETTABLEKS R2 R5 K4 ["_dragInfo"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["new"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K5 ["_partMover"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["new"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K6 ["_attachmentMover"]
  GETIMPORT R6 K12 [CFrame.new]
  CALL R6 0 1
  SETTABLEKS R6 R5 K7 ["_tiltRotate"]
  GETIMPORT R6 K12 [CFrame.new]
  CALL R6 0 1
  SETTABLEKS R6 R5 K8 ["_lastAppliedTransform"]
  GETUPVAL R6 2
  FASTCALL2 SETMETATABLE R5 R6 [+3]
  GETIMPORT R4 K14 [setmetatable]
  CALL R4 2 1
  GETUPVAL R5 3
  CALL R5 0 1
  JUMPIFNOT R5 [+8]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K10 ["new"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R4
  CALL R5 1 1
  SETTABLEKS R5 R4 K15 ["_animationTask"]
  NAMECALL R5 R4 K16 ["_init"]
  CALL R5 1 0
  GETIMPORT R6 K1 [tick]
  CALL R6 0 1
  SUB R5 R6 R3
  MOVE R8 R5
  NAMECALL R6 R4 K17 ["_analyticsRecordFreeformDragBegin"]
  CALL R6 2 0
  RETURN R4 1

PROTO_3:
  GETTABLEKS R4 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R3 R4 K1 ["_selectionInfo"]
  NAMECALL R3 R3 K2 ["getObjectsToTransform"]
  CALL R3 1 -1
  NAMECALL R1 R0 K3 ["_initIgnoreList"]
  CALL R1 -1 0
  NAMECALL R1 R0 K4 ["_initMovers"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R3 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K1 ["_draggerContext"]
  NAMECALL R2 R2 K2 ["areConstraintsEnabled"]
  CALL R2 1 1
  NOT R1 R2
  GETTABLEKS R3 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K3 ["_selectionInfo"]
  NAMECALL R2 R2 K4 ["getObjectsToTransform"]
  CALL R2 1 3
  GETTABLEKS R5 R0 K5 ["_partMover"]
  MOVE R7 R2
  GETTABLEKS R9 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R8 R9 K3 ["_selectionInfo"]
  NAMECALL R8 R8 K6 ["getOriginalCFrameMap"]
  CALL R8 1 1
  MOVE R9 R1
  GETTABLEKS R12 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R11 R12 K3 ["_selectionInfo"]
  NAMECALL R11 R11 K7 ["getBoundingBox"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K8 ["Position"]
  GETTABLEKS R11 R0 K0 ["_draggerToolModel"]
  NAMECALL R11 R11 K9 ["getSelectionWrapper"]
  CALL R11 1 1
  NAMECALL R11 R11 K10 ["get"]
  CALL R11 1 1
  MOVE R12 R4
  GETTABLEKS R14 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R13 R14 K3 ["_selectionInfo"]
  NAMECALL R13 R13 K11 ["getRootMapping"]
  CALL R13 1 -1
  NAMECALL R5 R5 K12 ["setDragged"]
  CALL R5 -1 0
  GETTABLEKS R5 R0 K13 ["_attachmentMover"]
  MOVE R7 R3
  NAMECALL R5 R5 K12 ["setDragged"]
  CALL R5 2 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R2 K2 [table.create]
  LENGTH R4 R1
  ADDK R3 R4 K3 [1]
  CALL R2 1 1
  GETIMPORT R3 K5 [ipairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_INEXT R3
  SETTABLE R7 R2 R6
  FORGLOOP R3 2 [inext] [-2]
  MOVE R4 R2
  GETTABLEKS R5 R0 K6 ["_partMover"]
  NAMECALL R5 R5 K7 ["getIgnorePart"]
  CALL R5 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K9 [table.insert]
  CALL R3 -1 0
  SETTABLEKS R2 R0 K10 ["_raycastFilter"]
  RETURN R0 0

PROTO_6:
  JUMPIFNOT R2 [+32]
  GETTABLEKS R3 R0 K0 ["_partMover"]
  GETTABLEKS R5 R0 K1 ["_lastAppliedTransform"]
  NAMECALL R3 R3 K2 ["transformTo"]
  CALL R3 2 0
  GETTABLEKS R3 R0 K3 ["_attachmentMover"]
  GETTABLEKS R5 R0 K1 ["_lastAppliedTransform"]
  NAMECALL R3 R3 K2 ["transformTo"]
  CALL R3 2 0
  GETTABLEKS R4 R0 K4 ["_draggerToolModel"]
  GETTABLEKS R3 R4 K5 ["_draggerContext"]
  NAMECALL R3 R3 K6 ["shouldJoinSurfaces"]
  CALL R3 1 1
  JUMPIFNOT R3 [+78]
  GETTABLEKS R3 R0 K0 ["_partMover"]
  GETTABLEKS R5 R0 K1 ["_lastAppliedTransform"]
  NAMECALL R3 R3 K7 ["computeJointPairs"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K8 ["_jointPairs"]
  RETURN R0 0
  LOADK R4 K9 [0.5]
  JUMPIFNOTLT R1 R4 [+5]
  DIVK R5 R1 K9 [0.5]
  POWK R4 R5 K10 [4]
  MULK R3 R4 K9 [0.5]
  JUMP [+6]
  SUBRK R7 R11 K1 ["_lastAppliedTransform"]
  DIVK R6 R7 K9 [0.5]
  POWK R5 R6 K10 [4]
  MULK R4 R5 K9 [0.5]
  SUBRK R3 R11 K4 ["_draggerToolModel"]
  JUMP [0]
  GETTABLEKS R4 R0 K12 ["_animateFrom"]
  GETTABLEKS R5 R4 K13 ["baseCFrame"]
  GETTABLEKS R8 R0 K14 ["_lastDragTarget"]
  GETTABLEKS R7 R8 K13 ["baseCFrame"]
  MOVE R8 R3
  NAMECALL R5 R5 K15 ["Lerp"]
  CALL R5 3 1
  GETTABLEKS R6 R4 K16 ["offsetCFrame"]
  GETTABLEKS R9 R0 K14 ["_lastDragTarget"]
  GETTABLEKS R8 R9 K16 ["offsetCFrame"]
  MOVE R9 R3
  NAMECALL R6 R6 K15 ["Lerp"]
  CALL R6 3 1
  GETTABLEKS R7 R4 K17 ["tiltRotate"]
  GETTABLEKS R9 R0 K18 ["_tiltRotate"]
  MOVE R10 R3
  NAMECALL R7 R7 K15 ["Lerp"]
  CALL R7 3 1
  MUL R9 R5 R7
  MUL R8 R9 R6
  GETTABLEKS R10 R0 K4 ["_draggerToolModel"]
  GETTABLEKS R9 R10 K19 ["_selectionInfo"]
  NAMECALL R9 R9 K20 ["getLocalBoundingBox"]
  CALL R9 1 1
  NAMECALL R11 R9 K21 ["Inverse"]
  CALL R11 1 1
  MUL R10 R8 R11
  GETTABLEKS R11 R0 K0 ["_partMover"]
  MOVE R13 R10
  NAMECALL R11 R11 K2 ["transformTo"]
  CALL R11 2 0
  GETTABLEKS R11 R0 K3 ["_attachmentMover"]
  MOVE R13 R10
  NAMECALL R11 R11 K2 ["transformTo"]
  CALL R11 2 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R2 K2 [table.freeze]
  DUPTABLE R3 K6 [{"tiltRotate", "baseCFrame", "offsetCFrame"}]
  GETTABLEKS R4 R0 K7 ["_tiltRotate"]
  SETTABLEKS R4 R3 K3 ["tiltRotate"]
  GETTABLEKS R5 R0 K8 ["_lastDragTarget"]
  GETTABLEKS R4 R5 K4 ["baseCFrame"]
  SETTABLEKS R4 R3 K4 ["baseCFrame"]
  GETTABLEKS R5 R0 K8 ["_lastDragTarget"]
  GETTABLEKS R4 R5 K5 ["offsetCFrame"]
  SETTABLEKS R4 R3 K5 ["offsetCFrame"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K9 ["_animateFrom"]
  SETTABLEKS R1 R0 K7 ["_tiltRotate"]
  GETTABLEKS R2 R0 K10 ["_animationTask"]
  GETTABLEKS R5 R0 K11 ["_draggerToolModel"]
  GETTABLEKS R4 R5 K12 ["_draggerContext"]
  NAMECALL R4 R4 K13 ["getTiltRotateDuration"]
  CALL R4 1 -1
  NAMECALL R2 R2 K14 ["animate"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_8:
  LOADB R1 1
  RETURN R1 1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_animationTask"]
  NAMECALL R1 R1 K1 ["inProgress"]
  CALL R1 1 1
  JUMPIFNOT R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETTABLEKS R1 R0 K2 ["_draggerToolModel"]
  GETTABLEKS R2 R1 K3 ["_draggerContext"]
  NAMECALL R2 R2 K4 ["shouldJoinSurfaces"]
  CALL R2 1 1
  JUMPIFNOT R2 [+21]
  GETTABLEKS R2 R0 K5 ["_jointPairs"]
  JUMPIFNOT R2 [+18]
  GETTABLEKS R2 R1 K6 ["_selectionInfo"]
  NAMECALL R2 R2 K7 ["getBoundingBox"]
  CALL R2 1 2
  MUL R4 R2 R3
  GETTABLEKS R5 R0 K5 ["_jointPairs"]
  GETTABLEKS R7 R1 K3 ["_draggerContext"]
  MOVE R9 R4
  NAMECALL R7 R7 K8 ["getHandleScale"]
  CALL R7 2 -1
  NAMECALL R5 R5 K9 ["renderJoints"]
  CALL R5 -1 -1
  RETURN R5 -1
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  GETTABLEKS R2 R0 K1 ["_lastDragTarget"]
  NAMECALL R3 R1 K2 ["shouldShowTargetGrids"]
  CALL R3 1 1
  JUMPIFNOT R3 [+73]
  GETTABLEKS R5 R2 K3 ["softSnaps"]
  LENGTH R4 R5
  LOADN R5 0
  JUMPIFLT R5 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+11]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K7 [{"DragTarget", "DraggerContext"}]
  SETTABLEKS R2 R6 K5 ["DragTarget"]
  SETTABLEKS R1 R6 K6 ["DraggerContext"]
  CALL R4 2 -1
  RETURN R4 -1
  NAMECALL R5 R1 K8 ["shouldGridSnap"]
  CALL R5 1 1
  JUMPIFNOT R5 [+4]
  NAMECALL R4 R1 K9 ["getGridSize"]
  CALL R4 1 1
  JUMP [+1]
  LOADNIL R4
  GETTABLEKS R6 R0 K10 ["_draggerToolModel"]
  GETTABLEKS R5 R6 K11 ["_selectionInfo"]
  NAMECALL R5 R5 K12 ["getLocalBoundingBox"]
  CALL R5 1 3
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K19 [{"DragTarget", "SourceSize", "Scale", "GridSize", "MajorStep", "Color", "PrimaryColor"}]
  SETTABLEKS R2 R10 K5 ["DragTarget"]
  SETTABLEKS R7 R10 K13 ["SourceSize"]
  GETTABLEKS R14 R2 K20 ["targetMatrix"]
  GETTABLEKS R13 R14 K21 ["Position"]
  NAMECALL R11 R1 K22 ["getHandleScale"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Scale"]
  SETTABLEKS R4 R10 K15 ["GridSize"]
  NAMECALL R11 R1 K23 ["getMajorGridIncrement"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K16 ["MajorStep"]
  NAMECALL R11 R1 K24 ["getGridColor"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K17 ["Color"]
  NAMECALL R11 R1 K25 ["getChosenColor"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K18 ["PrimaryColor"]
  CALL R8 2 -1
  RETURN R8 -1
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  GETTABLEKS R2 R0 K1 ["_lastDragTarget"]
  NAMECALL R3 R1 K2 ["shouldGridSnap"]
  CALL R3 1 1
  JUMPIFNOT R3 [+132]
  GETTABLEKS R4 R2 K3 ["softSnaps"]
  LENGTH R3 R4
  JUMPIFNOTEQKN R3 K4 [0] [+128]
  GETTABLEKS R3 R2 K5 ["mainCFrame"]
  GETTABLEKS R7 R0 K6 ["_dragInfo"]
  GETTABLEKS R6 R7 K7 ["draggedPoint"]
  NAMECALL R4 R3 K8 ["PointToWorldSpace"]
  CALL R4 2 1
  GETTABLEKS R5 R2 K9 ["targetMatrix"]
  GETTABLEKS R6 R5 K10 ["Position"]
  GETTABLEKS R7 R5 K11 ["YVector"]
  SUB R8 R4 R6
  MOVE R10 R7
  NAMECALL R8 R8 K12 ["Dot"]
  CALL R8 2 1
  MUL R10 R7 R8
  SUB R9 R4 R10
  MOVE R12 R4
  NAMECALL R10 R1 K13 ["getHandleScale"]
  CALL R10 2 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K14 ["createFragment"]
  DUPTABLE R12 K17 [{"SnapFrom", "SnapTo"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K18 ["createElement"]
  LOADK R14 K19 ["SphereHandleAdornment"]
  DUPTABLE R15 K27 [{"Radius", "CFrame", "Color3", "AlwaysOnTop", "AdornCullingMode", "Adornee", "ZIndex"}]
  MULK R16 R10 K28 [0.15]
  SETTABLEKS R16 R15 K20 ["Radius"]
  GETTABLEKS R17 R3 K29 ["Rotation"]
  ADD R16 R17 R4
  SETTABLEKS R16 R15 K21 ["CFrame"]
  NAMECALL R16 R1 K30 ["getChosenColor"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K22 ["Color3"]
  LOADB R16 1
  SETTABLEKS R16 R15 K23 ["AlwaysOnTop"]
  GETIMPORT R16 K33 [Enum.AdornCullingMode.Never]
  SETTABLEKS R16 R15 K24 ["AdornCullingMode"]
  GETIMPORT R17 K35 [workspace]
  GETTABLEKS R16 R17 K36 ["Terrain"]
  SETTABLEKS R16 R15 K25 ["Adornee"]
  LOADN R16 0
  SETTABLEKS R16 R15 K26 ["ZIndex"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K15 ["SnapFrom"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K18 ["createElement"]
  LOADK R14 K37 ["BoxHandleAdornment"]
  DUPTABLE R15 K39 [{"Size", "CFrame", "Color3", "AlwaysOnTop", "AdornCullingMode", "Adornee", "ZIndex"}]
  LOADK R18 K40 [0.05]
  MUL R17 R18 R10
  LOADK R20 K40 [0.05]
  MUL R19 R20 R10
  FASTCALL3 VECTOR R17 R8 R19
  MOVE R18 R8
  GETIMPORT R16 K43 [Vector3.new]
  CALL R16 3 1
  SETTABLEKS R16 R15 K38 ["Size"]
  GETIMPORT R16 K45 [CFrame.fromMatrix]
  LOADK R20 K46 [0.5]
  MUL R19 R20 R7
  MUL R18 R19 R8
  ADD R17 R9 R18
  GETTABLEKS R21 R5 K47 ["ZVector"]
  NAMECALL R19 R7 K48 ["Cross"]
  CALL R19 2 1
  GETTABLEKS R18 R19 K49 ["Unit"]
  MOVE R19 R7
  CALL R16 3 1
  SETTABLEKS R16 R15 K21 ["CFrame"]
  NAMECALL R16 R1 K30 ["getChosenColor"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K22 ["Color3"]
  LOADB R16 1
  SETTABLEKS R16 R15 K23 ["AlwaysOnTop"]
  GETIMPORT R16 K33 [Enum.AdornCullingMode.Never]
  SETTABLEKS R16 R15 K24 ["AdornCullingMode"]
  GETIMPORT R17 K35 [workspace]
  GETTABLEKS R16 R17 K36 ["Terrain"]
  SETTABLEKS R16 R15 K25 ["Adornee"]
  LOADN R16 0
  SETTABLEKS R16 R15 K26 ["ZIndex"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K16 ["SnapTo"]
  CALL R11 1 -1
  RETURN R11 -1
  RETURN R0 0

PROTO_12:
  GETTABLEKS R2 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R1 R2 K1 ["_draggerContext"]
  NAMECALL R2 R1 K2 ["areConstraintsEnabled"]
  CALL R2 1 1
  JUMPIF R2 [+19]
  GETTABLEKS R2 R0 K3 ["_lastDragTarget"]
  JUMPIFNOT R2 [+16]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["createFragment"]
  DUPTABLE R3 K7 [{"SnapConnection", "SnapTarget"}]
  NAMECALL R4 R0 K8 ["_renderSnapRelation"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K5 ["SnapConnection"]
  NAMECALL R4 R0 K9 ["_renderSnapTarget"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K6 ["SnapTarget"]
  CALL R2 1 -1
  RETURN R2 -1
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+16]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["createFragment"]
  DUPTABLE R2 K3 [{"SurfaceJoints", "Snap"}]
  NAMECALL R3 R0 K4 ["_renderSurfaceJoints"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["SurfaceJoints"]
  NAMECALL R3 R0 K5 ["_renderSnap"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["Snap"]
  CALL R1 1 -1
  RETURN R1 -1
  GETTABLEKS R2 R0 K6 ["_draggerToolModel"]
  GETTABLEKS R1 R2 K7 ["_draggerContext"]
  NAMECALL R1 R1 K8 ["shouldJoinSurfaces"]
  CALL R1 1 1
  JUMPIFNOT R1 [+25]
  GETTABLEKS R1 R0 K9 ["_jointPairs"]
  JUMPIFNOT R1 [+22]
  GETTABLEKS R2 R0 K6 ["_draggerToolModel"]
  GETTABLEKS R1 R2 K10 ["_selectionInfo"]
  NAMECALL R1 R1 K11 ["getBoundingBox"]
  CALL R1 1 2
  MUL R3 R1 R2
  GETTABLEKS R4 R0 K9 ["_jointPairs"]
  GETTABLEKS R7 R0 K6 ["_draggerToolModel"]
  GETTABLEKS R6 R7 K7 ["_draggerContext"]
  MOVE R8 R3
  NAMECALL R6 R6 K12 ["getHandleScale"]
  CALL R6 2 -1
  NAMECALL R4 R4 K13 ["renderJoints"]
  CALL R4 -1 -1
  RETURN R4 -1
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["_draggerToolModel"]
  NAMECALL R1 R1 K1 ["shouldAlignDraggedObjects"]
  CALL R1 1 1
  JUMPIFNOT R1 [+6]
  GETTABLEKS R2 R0 K2 ["_draggerContext"]
  NAMECALL R2 R2 K3 ["isAltKeyDown"]
  CALL R2 1 1
  NOT R1 R2
  RETURN R1 1

PROTO_15:
  GETTABLEKS R3 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K1 ["_draggerContext"]
  NAMECALL R2 R2 K2 ["areConstraintsEnabled"]
  CALL R2 1 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  LOADK R2 K3 [{0, 1, 0}]
  JUMPIFNOTEQ R1 R2 [+11]
  GETTABLEKS R2 R0 K4 ["_dragAnalytics"]
  GETTABLEKS R5 R0 K4 ["_dragAnalytics"]
  GETTABLEKS R4 R5 K6 ["dragRotates"]
  ADDK R3 R4 K5 [1]
  SETTABLEKS R3 R2 K6 ["dragRotates"]
  JUMP [+9]
  GETTABLEKS R2 R0 K4 ["_dragAnalytics"]
  GETTABLEKS R5 R0 K4 ["_dragAnalytics"]
  GETTABLEKS R4 R5 K7 ["dragTilts"]
  ADDK R3 R4 K5 [1]
  SETTABLEKS R3 R2 K7 ["dragTilts"]
  GETTABLEKS R3 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K8 ["_selectionInfo"]
  NAMECALL R2 R2 K9 ["getLocalBoundingBox"]
  CALL R2 1 1
  LOADNIL R3
  GETTABLEKS R4 R0 K10 ["_lastDragTarget"]
  JUMPIFNOT R4 [+4]
  GETTABLEKS R4 R0 K10 ["_lastDragTarget"]
  GETTABLEKS R3 R4 K11 ["targetMatrix"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K12 ["updateTiltRotate"]
  GETTABLEKS R6 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R5 R6 K1 ["_draggerContext"]
  NAMECALL R5 R5 K13 ["getCameraCFrame"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R6 R7 K1 ["_draggerContext"]
  NAMECALL R6 R6 K14 ["getMouseRay"]
  CALL R6 1 1
  GETTABLEKS R7 R0 K15 ["_raycastFilter"]
  MOVE R8 R2
  MOVE R9 R3
  GETTABLEKS R10 R0 K16 ["_tiltRotate"]
  MOVE R11 R1
  GETUPVAL R13 1
  CALL R13 0 1
  JUMPIFNOT R13 [+4]
  NAMECALL R12 R0 K17 ["_shouldAlignDraggedObjects"]
  CALL R12 1 1
  JUMP [+5]
  GETTABLEKS R12 R0 K0 ["_draggerToolModel"]
  NAMECALL R12 R12 K18 ["shouldAlignDraggedObjects"]
  CALL R12 1 1
  GETUPVAL R14 1
  CALL R14 0 1
  JUMPIFNOT R14 [+12]
  GETTABLEKS R14 R0 K1 ["_draggerContext"]
  NAMECALL R14 R14 K19 ["shouldGridSnap"]
  CALL R14 1 1
  JUMPIFNOT R14 [+6]
  GETTABLEKS R13 R0 K1 ["_draggerContext"]
  NAMECALL R13 R13 K20 ["getGridSize"]
  CALL R13 1 1
  JUMP [+1]
  LOADNIL R13
  CALL R4 9 1
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+11]
  GETTABLEKS R5 R0 K10 ["_lastDragTarget"]
  JUMPIFNOT R5 [+5]
  MOVE R7 R4
  NAMECALL R5 R0 K21 ["_beginAnimation"]
  CALL R5 2 0
  RETURN R0 0
  SETTABLEKS R4 R0 K16 ["_tiltRotate"]
  RETURN R0 0
  SETTABLEKS R4 R0 K16 ["_tiltRotate"]
  RETURN R0 0

PROTO_16:
  GETTABLEKS R2 R1 K0 ["XVector"]
  GETTABLEKS R3 R1 K1 ["YVector"]
  GETTABLEKS R4 R1 K2 ["ZVector"]
  MOVE R7 R2
  NAMECALL R5 R0 K3 ["FuzzyEq"]
  CALL R5 2 1
  JUMPIF R5 [+24]
  MOVE R7 R3
  NAMECALL R5 R0 K3 ["FuzzyEq"]
  CALL R5 2 1
  JUMPIF R5 [+19]
  MOVE R7 R4
  NAMECALL R5 R0 K3 ["FuzzyEq"]
  CALL R5 2 1
  JUMPIF R5 [+14]
  MINUS R7 R2
  NAMECALL R5 R0 K3 ["FuzzyEq"]
  CALL R5 2 1
  JUMPIF R5 [+9]
  MINUS R7 R3
  NAMECALL R5 R0 K3 ["FuzzyEq"]
  CALL R5 2 1
  JUMPIF R5 [+4]
  MINUS R7 R4
  NAMECALL R5 R0 K3 ["FuzzyEq"]
  CALL R5 2 1
  RETURN R5 1

PROTO_17:
  GETTABLEKS R3 R0 K0 ["targetMatrix"]
  GETTABLEKS R2 R3 K1 ["YVector"]
  GETUPVAL R3 0
  MOVE R4 R2
  NAMECALL R5 R1 K2 ["getLocalBoundingBox"]
  CALL R5 1 -1
  CALL R3 -1 1
  JUMPIFNOT R3 [+1]
  RETURN R0 1
  GETTABLEKS R5 R0 K3 ["offsetCFrame"]
  NAMECALL R5 R5 K4 ["Inverse"]
  CALL R5 1 1
  MOVE R6 R2
  NAMECALL R3 R1 K5 ["getBoundingBoxDiscrepancy"]
  CALL R3 3 1
  GETIMPORT R4 K8 [table.clone]
  MOVE R5 R0
  CALL R4 1 1
  GETTABLEKS R5 R4 K9 ["mainCFrame"]
  MUL R6 R2 R3
  SUB R5 R5 R6
  SETTABLEKS R5 R4 K9 ["mainCFrame"]
  GETTABLEKS R5 R4 K10 ["baseCFrame"]
  MUL R6 R2 R3
  SUB R5 R5 R6
  SETTABLEKS R5 R4 K10 ["baseCFrame"]
  GETIMPORT R5 K12 [table.freeze]
  MOVE R6 R4
  CALL R5 1 -1
  RETURN R5 -1

PROTO_18:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_draggerContext"]
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["snapToGridSize"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_19:
  LOADNIL R1
  GETTABLEKS R2 R0 K0 ["_lastDragTarget"]
  JUMPIFNOT R2 [+4]
  GETTABLEKS R2 R0 K0 ["_lastDragTarget"]
  GETTABLEKS R1 R2 K1 ["targetMatrix"]
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+142]
  GETTABLEKS R3 R0 K2 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K3 ["_draggerContext"]
  NAMECALL R2 R2 K4 ["getMouseRay"]
  CALL R2 1 1
  NAMECALL R3 R0 K5 ["_shouldAlignDraggedObjects"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K2 ["_draggerToolModel"]
  GETTABLEKS R4 R5 K6 ["_selectionInfo"]
  NAMECALL R4 R4 K7 ["getLocalBoundingBox"]
  CALL R4 1 3
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K8 ["getDragTarget"]
  GETTABLEKS R8 R0 K9 ["_raycastFilter"]
  MOVE R9 R4
  MOVE R10 R5
  MOVE R11 R6
  GETTABLEKS R13 R0 K10 ["_dragInfo"]
  GETTABLEKS R12 R13 K11 ["draggedPoint"]
  MOVE R13 R2
  GETTABLEKS R15 R0 K3 ["_draggerContext"]
  NAMECALL R15 R15 K12 ["shouldGridSnap"]
  CALL R15 1 1
  JUMPIFNOT R15 [+6]
  GETTABLEKS R14 R0 K3 ["_draggerContext"]
  NAMECALL R14 R14 K13 ["getGridSize"]
  CALL R14 1 1
  JUMP [+1]
  LOADNIL R14
  GETTABLEKS R15 R0 K14 ["_tiltRotate"]
  MOVE R16 R1
  MOVE R17 R3
  GETTABLEKS R20 R0 K10 ["_dragInfo"]
  GETTABLEKS R19 R20 K15 ["clickedMetadata"]
  GETTABLEKS R18 R19 K16 ["IsPivot"]
  GETTABLEKS R19 R0 K3 ["_draggerContext"]
  NAMECALL R19 R19 K17 ["getSoftSnapMarginFactor"]
  CALL R19 1 1
  GETTABLEKS R20 R0 K3 ["_draggerContext"]
  NAMECALL R20 R20 K18 ["shouldPartSnap"]
  CALL R20 1 -1
  CALL R7 -1 1
  GETUPVAL R8 2
  CALL R8 0 1
  JUMPIFNOT R8 [+17]
  JUMPIFNOT R7 [+16]
  JUMPIF R3 [+15]
  GETTABLEKS R10 R0 K10 ["_dragInfo"]
  GETTABLEKS R9 R10 K15 ["clickedMetadata"]
  GETTABLEKS R8 R9 K16 ["IsPivot"]
  JUMPIF R8 [+8]
  GETUPVAL R8 3
  MOVE R9 R7
  GETTABLEKS R11 R0 K2 ["_draggerToolModel"]
  GETTABLEKS R10 R11 K6 ["_selectionInfo"]
  CALL R8 2 1
  MOVE R7 R8
  MOVE R10 R7
  NAMECALL R8 R0 K19 ["_analyticsRecordFreeformDragUpdate"]
  CALL R8 2 0
  JUMPIFNOT R7 [+138]
  SETTABLEKS R7 R0 K0 ["_lastDragTarget"]
  GETTABLEKS R8 R7 K20 ["mainCFrame"]
  GETTABLEKS R10 R0 K2 ["_draggerToolModel"]
  GETTABLEKS R9 R10 K6 ["_selectionInfo"]
  NAMECALL R9 R9 K7 ["getLocalBoundingBox"]
  CALL R9 1 1
  NAMECALL R11 R9 K21 ["Inverse"]
  CALL R11 1 1
  MUL R10 R8 R11
  GETTABLEKS R11 R0 K22 ["_animationTask"]
  NAMECALL R11 R11 K23 ["inProgress"]
  CALL R11 1 1
  JUMPIFNOT R11 [+1]
  JUMP [+28]
  GETTABLEKS R11 R0 K24 ["_partMover"]
  MOVE R13 R10
  NAMECALL R11 R11 K25 ["transformTo"]
  CALL R11 2 0
  GETTABLEKS R11 R0 K26 ["_attachmentMover"]
  MOVE R13 R10
  NAMECALL R11 R11 K25 ["transformTo"]
  CALL R11 2 0
  GETTABLEKS R12 R0 K2 ["_draggerToolModel"]
  GETTABLEKS R11 R12 K3 ["_draggerContext"]
  NAMECALL R11 R11 K27 ["shouldJoinSurfaces"]
  CALL R11 1 1
  JUMPIFNOT R11 [+8]
  GETTABLEKS R11 R0 K24 ["_partMover"]
  MOVE R13 R10
  NAMECALL R11 R11 K28 ["computeJointPairs"]
  CALL R11 2 1
  SETTABLEKS R11 R0 K29 ["_jointPairs"]
  SETTABLEKS R10 R0 K30 ["_lastAppliedTransform"]
  RETURN R0 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  GETTABLEKS R4 R0 K2 ["_draggerToolModel"]
  GETTABLEKS R3 R4 K6 ["_selectionInfo"]
  NAMECALL R3 R3 K7 ["getLocalBoundingBox"]
  CALL R3 1 3
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["getDragTarget"]
  GETTABLEKS R8 R0 K2 ["_draggerToolModel"]
  GETTABLEKS R7 R8 K3 ["_draggerContext"]
  NAMECALL R7 R7 K4 ["getMouseRay"]
  CALL R7 1 1
  MOVE R8 R2
  GETTABLEKS R10 R0 K10 ["_dragInfo"]
  GETTABLEKS R9 R10 K31 ["clickPoint"]
  GETTABLEKS R10 R0 K9 ["_raycastFilter"]
  MOVE R11 R3
  GETTABLEKS R13 R0 K10 ["_dragInfo"]
  GETTABLEKS R12 R13 K32 ["basisPoint"]
  MOVE R13 R5
  MOVE R14 R4
  GETTABLEKS R15 R0 K14 ["_tiltRotate"]
  MOVE R16 R1
  GETTABLEKS R17 R0 K2 ["_draggerToolModel"]
  NAMECALL R17 R17 K33 ["shouldAlignDraggedObjects"]
  CALL R17 1 -1
  CALL R6 -1 1
  MOVE R9 R6
  NAMECALL R7 R0 K19 ["_analyticsRecordFreeformDragUpdate"]
  CALL R7 2 0
  JUMPIFNOT R6 [+38]
  SETTABLEKS R6 R0 K0 ["_lastDragTarget"]
  GETTABLEKS R7 R6 K20 ["mainCFrame"]
  NAMECALL R9 R3 K21 ["Inverse"]
  CALL R9 1 1
  MUL R8 R7 R9
  GETTABLEKS R9 R0 K24 ["_partMover"]
  MOVE R11 R8
  NAMECALL R9 R9 K25 ["transformTo"]
  CALL R9 2 0
  GETTABLEKS R9 R0 K26 ["_attachmentMover"]
  MOVE R11 R8
  NAMECALL R9 R9 K25 ["transformTo"]
  CALL R9 2 0
  SETTABLEKS R8 R0 K30 ["_lastAppliedTransform"]
  GETTABLEKS R10 R0 K2 ["_draggerToolModel"]
  GETTABLEKS R9 R10 K3 ["_draggerContext"]
  NAMECALL R9 R9 K27 ["shouldJoinSurfaces"]
  CALL R9 1 1
  JUMPIFNOT R9 [+8]
  GETTABLEKS R9 R0 K24 ["_partMover"]
  MOVE R11 R8
  NAMECALL R9 R9 K28 ["computeJointPairs"]
  CALL R9 2 1
  SETTABLEKS R9 R0 K29 ["_jointPairs"]
  RETURN R0 0

PROTO_20:
  GETTABLEKS R2 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R1 R2 K1 ["_selectionInfo"]
  NAMECALL R1 R1 K2 ["getLocalBoundingBox"]
  CALL R1 1 3
  LOADNIL R4
  GETUPVAL R5 0
  CALL R5 0 1
  JUMPIFNOT R5 [+35]
  GETTABLEKS R6 R0 K3 ["_dragInfo"]
  GETTABLEKS R5 R6 K4 ["draggedPoint"]
  JUMPIF R5 [+1]
  RETURN R0 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["getCameraPlaneDragTarget"]
  GETTABLEKS R7 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R6 R7 K6 ["_draggerContext"]
  NAMECALL R6 R6 K7 ["getMouseRay"]
  CALL R6 1 1
  GETTABLEKS R9 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R8 R9 K6 ["_draggerContext"]
  NAMECALL R8 R8 K8 ["getCameraCFrame"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K9 ["LookVector"]
  GETTABLEKS R11 R0 K3 ["_dragInfo"]
  GETTABLEKS R10 R11 K4 ["draggedPoint"]
  NAMECALL R8 R1 K10 ["pointToWorldSpace"]
  CALL R8 2 -1
  CALL R5 -1 1
  MOVE R4 R5
  JUMP [+34]
  GETTABLEKS R6 R0 K3 ["_dragInfo"]
  GETTABLEKS R5 R6 K11 ["clickPoint"]
  JUMPIF R5 [+1]
  RETURN R0 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["getCameraPlaneDragTarget"]
  GETTABLEKS R7 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R6 R7 K6 ["_draggerContext"]
  NAMECALL R6 R6 K7 ["getMouseRay"]
  CALL R6 1 1
  GETTABLEKS R9 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R8 R9 K6 ["_draggerContext"]
  NAMECALL R8 R8 K8 ["getCameraCFrame"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K9 ["LookVector"]
  GETTABLEKS R11 R0 K3 ["_dragInfo"]
  GETTABLEKS R10 R11 K11 ["clickPoint"]
  NAMECALL R8 R1 K10 ["pointToWorldSpace"]
  CALL R8 2 -1
  CALL R5 -1 1
  MOVE R4 R5
  MOVE R7 R4
  NAMECALL R5 R0 K12 ["_analyticsRecordFreeformDragUpdate"]
  CALL R5 2 0
  JUMPIFNOT R4 [+29]
  GETTABLEKS R7 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R6 R7 K6 ["_draggerContext"]
  NAMECALL R6 R6 K13 ["areCollisionsEnabled"]
  CALL R6 1 1
  JUMPIFNOT R6 [+3]
  GETIMPORT R5 K17 [Enum.IKCollisionsMode.IncludeContactedMechanisms]
  JUMPIF R5 [+2]
  GETIMPORT R5 K19 [Enum.IKCollisionsMode.NoCollisions]
  GETTABLEKS R6 R0 K20 ["_partMover"]
  GETTABLEKS R8 R4 K21 ["mainCFrame"]
  MOVE R9 R5
  NAMECALL R6 R6 K22 ["moveToWithIk"]
  CALL R6 3 1
  GETTABLEKS R7 R0 K23 ["_attachmentMover"]
  MOVE R9 R6
  NAMECALL R7 R7 K24 ["transformTo"]
  CALL R7 2 0
  SETTABLEKS R6 R0 K25 ["_lastAppliedTransform"]
  RETURN R0 0

PROTO_21:
  GETTABLEKS R2 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R1 R2 K1 ["_draggerContext"]
  NAMECALL R1 R1 K2 ["areConstraintsEnabled"]
  CALL R1 1 1
  JUMPIFNOT R1 [+4]
  NAMECALL R1 R0 K3 ["_updatePhysical"]
  CALL R1 1 0
  RETURN R0 0
  NAMECALL R1 R0 K4 ["_updateGeometric"]
  CALL R1 1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Position"]
  SETTABLEKS R1 R0 K1 ["Parent"]
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["_animationTask"]
  NAMECALL R1 R1 K1 ["commit"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K2 ["_dragInfo"]
  GETTABLEKS R1 R2 K3 ["attachmentBeingDragged"]
  JUMPIFNOT R1 [+51]
  GETTABLEKS R3 R0 K4 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K5 ["_draggerContext"]
  NAMECALL R2 R2 K6 ["getMouseRay"]
  CALL R2 1 1
  GETIMPORT R3 K9 [RaycastParams.new]
  CALL R3 0 1
  LOADB R4 1
  SETTABLEKS R4 R3 K10 ["BruteForceAllSlow"]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K11 ["CollisionGroup"]
  GETUPVAL R4 2
  GETTABLEKS R6 R2 K12 ["Origin"]
  GETTABLEKS R7 R2 K13 ["Direction"]
  MOVE R8 R3
  NAMECALL R4 R4 K14 ["Raycast"]
  CALL R4 4 1
  JUMPIFNOT R4 [+17]
  GETTABLEKS R5 R1 K15 ["WorldCFrame"]
  GETTABLEKS R6 R1 K16 ["Parent"]
  GETTABLEKS R7 R4 K17 ["Instance"]
  JUMPIFEQ R6 R7 [+18]
  GETIMPORT R6 K19 [pcall]
  NEWCLOSURE R7 P0
  CAPTURE VAL R1
  CAPTURE VAL R4
  CALL R6 1 0
  SETTABLEKS R5 R1 K15 ["WorldCFrame"]
  JUMP [+8]
  GETTABLEKS R5 R0 K20 ["_attachmentMover"]
  GETIMPORT R7 K22 [CFrame.new]
  CALL R7 0 -1
  NAMECALL R5 R5 K23 ["transformTo"]
  CALL R5 -1 0
  GETTABLEKS R3 R0 K4 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K5 ["_draggerContext"]
  NAMECALL R2 R2 K24 ["shouldJoinSurfaces"]
  CALL R2 1 1
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K25 ["_jointPairs"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K25 ["_jointPairs"]
  NAMECALL R2 R2 K26 ["createJoints"]
  CALL R2 1 0
  LOADNIL R2
  SETTABLEKS R2 R0 K25 ["_jointPairs"]
  GETTABLEKS R2 R0 K27 ["_partMover"]
  NAMECALL R2 R2 K1 ["commit"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K20 ["_attachmentMover"]
  NAMECALL R2 R2 K1 ["commit"]
  CALL R2 1 0
  NAMECALL R2 R0 K28 ["_analyticsSendFreeformDragged"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K5 ["_draggerContext"]
  NAMECALL R2 R2 K29 ["shouldUseLocalSpace"]
  CALL R2 1 1
  JUMPIFNOT R2 [+10]
  GETTABLEKS R3 R0 K4 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K30 ["_selectionInfo"]
  GETTABLEKS R4 R0 K31 ["_lastAppliedTransform"]
  NAMECALL R2 R2 K32 ["getTransformedCopy"]
  CALL R2 2 -1
  RETURN R2 -1
  GETTABLEKS R2 R0 K31 ["_lastAppliedTransform"]
  NAMECALL R2 R2 K33 ["ToOrientation"]
  CALL R2 1 3
  FASTCALL1 MATH_ABS R2 [+3]
  MOVE R6 R2
  GETIMPORT R5 K36 [math.abs]
  CALL R5 1 1
  LOADK R6 K37 [1E-05]
  JUMPIFLT R6 R5 [+17]
  FASTCALL1 MATH_ABS R3 [+3]
  MOVE R6 R3
  GETIMPORT R5 K36 [math.abs]
  CALL R5 1 1
  LOADK R6 K37 [1E-05]
  JUMPIFLT R6 R5 [+9]
  FASTCALL1 MATH_ABS R4 [+3]
  MOVE R6 R4
  GETIMPORT R5 K36 [math.abs]
  CALL R5 1 1
  LOADK R6 K37 [1E-05]
  JUMPIFNOTLT R6 R5 [+3]
  LOADNIL R5
  RETURN R5 1
  GETTABLEKS R6 R0 K4 ["_draggerToolModel"]
  GETTABLEKS R5 R6 K30 ["_selectionInfo"]
  GETTABLEKS R7 R0 K31 ["_lastAppliedTransform"]
  NAMECALL R5 R5 K32 ["getTransformedCopy"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_24:
  GETTABLEKS R3 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K1 ["_selectionInfo"]
  NAMECALL R2 R2 K2 ["getObjectsToTransform"]
  CALL R2 1 2
  DUPTABLE R4 K8 [{"dragTilts", "dragRotates", "partCount", "attachmentCount", "timeToStartDrag"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K3 ["dragTilts"]
  LOADN R5 0
  SETTABLEKS R5 R4 K4 ["dragRotates"]
  LENGTH R5 R2
  SETTABLEKS R5 R4 K5 ["partCount"]
  LENGTH R5 R3
  SETTABLEKS R5 R4 K6 ["attachmentCount"]
  SETTABLEKS R1 R4 K7 ["timeToStartDrag"]
  SETTABLEKS R4 R0 K9 ["_dragAnalytics"]
  LOADNIL R4
  SETTABLEKS R4 R0 K10 ["_dragStartLocation"]
  RETURN R0 0

PROTO_25:
  JUMPIFNOT R1 [+55]
  GETTABLEKS R2 R0 K0 ["_dragAnalytics"]
  GETTABLEKS R3 R1 K1 ["dragTargetType"]
  SETTABLEKS R3 R2 K1 ["dragTargetType"]
  GETTABLEKS R2 R0 K2 ["_dragStartLocation"]
  JUMPIFNOT R2 [+14]
  GETTABLEKS R2 R0 K0 ["_dragAnalytics"]
  GETTABLEKS R6 R1 K3 ["mainCFrame"]
  GETTABLEKS R5 R6 K4 ["Position"]
  GETTABLEKS R6 R0 K2 ["_dragStartLocation"]
  SUB R4 R5 R6
  GETTABLEKS R3 R4 K5 ["Magnitude"]
  SETTABLEKS R3 R2 K6 ["dragDistance"]
  JUMP [+11]
  GETTABLEKS R2 R0 K0 ["_dragAnalytics"]
  LOADN R3 0
  SETTABLEKS R3 R2 K6 ["dragDistance"]
  GETTABLEKS R3 R1 K3 ["mainCFrame"]
  GETTABLEKS R2 R3 K4 ["Position"]
  SETTABLEKS R2 R0 K2 ["_dragStartLocation"]
  GETTABLEKS R2 R0 K0 ["_dragAnalytics"]
  GETTABLEKS R7 R0 K7 ["_draggerToolModel"]
  GETTABLEKS R6 R7 K8 ["_draggerContext"]
  NAMECALL R6 R6 K9 ["getCameraCFrame"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K4 ["Position"]
  GETTABLEKS R7 R1 K3 ["mainCFrame"]
  GETTABLEKS R6 R7 K4 ["Position"]
  SUB R4 R5 R6
  GETTABLEKS R3 R4 K5 ["Magnitude"]
  SETTABLEKS R3 R2 K10 ["distanceToCamera"]
  RETURN R0 0
  GETTABLEKS R2 R0 K0 ["_dragAnalytics"]
  LOADK R3 K11 ["Failed"]
  SETTABLEKS R3 R2 K1 ["dragTargetType"]
  RETURN R0 0

PROTO_26:
  GETTABLEKS R1 R0 K0 ["_dragAnalytics"]
  GETTABLEKS R2 R0 K1 ["_draggerContext"]
  NAMECALL R2 R2 K2 ["getGridSize"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K3 ["gridSize"]
  GETTABLEKS R1 R0 K0 ["_dragAnalytics"]
  GETTABLEKS R2 R0 K4 ["_draggerToolModel"]
  NAMECALL R2 R2 K5 ["getAnalyticsName"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["toolName"]
  GETTABLEKS R1 R0 K0 ["_dragAnalytics"]
  GETTABLEKS R2 R0 K4 ["_draggerToolModel"]
  NAMECALL R2 R2 K7 ["wasAutoSelected"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K7 ["wasAutoSelected"]
  GETTABLEKS R1 R0 K0 ["_dragAnalytics"]
  GETTABLEKS R2 R0 K1 ["_draggerContext"]
  NAMECALL R2 R2 K8 ["shouldJoinSurfaces"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K9 ["joinSurfaces"]
  GETTABLEKS R1 R0 K0 ["_dragAnalytics"]
  GETTABLEKS R2 R0 K1 ["_draggerContext"]
  NAMECALL R2 R2 K10 ["areConstraintsEnabled"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K11 ["useConstraints"]
  GETTABLEKS R1 R0 K0 ["_dragAnalytics"]
  GETTABLEKS R2 R0 K1 ["_draggerContext"]
  NAMECALL R2 R2 K12 ["areCollisionsEnabled"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K13 ["haveCollisions"]
  GETTABLEKS R1 R0 K0 ["_dragAnalytics"]
  GETTABLEKS R2 R0 K4 ["_draggerToolModel"]
  NAMECALL R2 R2 K14 ["classifySelectionPivot"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K15 ["pivotType"]
  GETTABLEKS R2 R0 K4 ["_draggerToolModel"]
  GETTABLEKS R1 R2 K1 ["_draggerContext"]
  NAMECALL R1 R1 K16 ["getAnalytics"]
  CALL R1 1 1
  LOADK R3 K17 ["freeformDragged"]
  GETTABLEKS R4 R0 K0 ["_dragAnalytics"]
  NAMECALL R1 R1 K18 ["sendEvent"]
  CALL R1 3 0
  GETTABLEKS R1 R0 K1 ["_draggerContext"]
  NAMECALL R1 R1 K16 ["getAnalytics"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K4 ["_draggerToolModel"]
  NAMECALL R3 R3 K5 ["getAnalyticsName"]
  CALL R3 1 1
  GETUPVAL R4 0
  NAMECALL R1 R1 K19 ["logTelemetryCounter"]
  CALL R1 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Workspace"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R2 K5 [script]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R2 R1 K6 ["Parent"]
  GETTABLEKS R3 R2 K7 ["DraggerFramework"]
  GETIMPORT R4 K9 [require]
  GETTABLEKS R5 R2 K10 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R3 K11 ["Utility"]
  GETTABLEKS R6 R7 K12 ["DragHelper"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R3 K11 ["Utility"]
  GETTABLEKS R7 R8 K13 ["PartMover"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R3 K11 ["Utility"]
  GETTABLEKS R8 R9 K14 ["AttachmentMover"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R3 K15 ["Components"]
  GETTABLEKS R9 R10 K16 ["TargetGridView"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R3 K15 ["Components"]
  GETTABLEKS R10 R11 K17 ["TargetSoftSnapView"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R12 R3 K11 ["Utility"]
  GETTABLEKS R11 R12 K18 ["AnimationTask"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R13 R3 K11 ["Utility"]
  GETTABLEKS R12 R13 K19 ["Analytics"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R14 R3 K20 ["Flags"]
  GETTABLEKS R13 R14 K21 ["getFFlagDraggerImprovements"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R15 R3 K20 ["Flags"]
  GETTABLEKS R14 R15 K22 ["getFFlagDraggerBetterAlignOrientationFalse"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R16 R3 K11 ["Utility"]
  GETTABLEKS R15 R16 K23 ["CursorGroupName"]
  CALL R14 1 1
  DUPTABLE R15 K29 [{"eventName", "lastUpdated", "description", "links", "backends"}]
  LOADK R16 K30 ["SBT_DraggerFreeformDragCompleted"]
  SETTABLEKS R16 R15 K24 ["eventName"]
  NEWTABLE R16 0 3
  LOADN R17 232
  LOADN R18 10
  LOADN R19 14
  SETLIST R16 R17 3 [1]
  SETTABLEKS R16 R15 K25 ["lastUpdated"]
  LOADK R16 K31 ["The user successfully dragged the selection via freeform drag."]
  SETTABLEKS R16 R15 K26 ["description"]
  LOADK R16 K32 ["https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d"]
  SETTABLEKS R16 R15 K27 ["links"]
  NEWTABLE R16 0 1
  LOADK R17 K33 ["RobloxTelemetryCounter"]
  SETLIST R16 R17 1 [1]
  SETTABLEKS R16 R15 K28 ["backends"]
  NEWTABLE R16 32 0
  SETTABLEKS R16 R16 K34 ["__index"]
  DUPCLOSURE R17 K35 [PROTO_0]
  DUPCLOSURE R18 K36 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R16
  CAPTURE VAL R12
  CAPTURE VAL R10
  SETTABLEKS R18 R16 K37 ["new"]
  DUPCLOSURE R18 K38 [PROTO_3]
  SETTABLEKS R18 R16 K39 ["_init"]
  DUPCLOSURE R18 K40 [PROTO_4]
  SETTABLEKS R18 R16 K41 ["_initMovers"]
  DUPCLOSURE R18 K42 [PROTO_5]
  SETTABLEKS R18 R16 K43 ["_initIgnoreList"]
  DUPCLOSURE R18 K44 [PROTO_6]
  SETTABLEKS R18 R16 K45 ["_animationCallback"]
  DUPCLOSURE R18 K46 [PROTO_7]
  SETTABLEKS R18 R16 K47 ["_beginAnimation"]
  DUPCLOSURE R18 K48 [PROTO_8]
  SETTABLEKS R18 R16 K49 ["canHoldOrientation"]
  DUPCLOSURE R18 K50 [PROTO_9]
  SETTABLEKS R18 R16 K51 ["_renderSurfaceJoints"]
  DUPCLOSURE R18 K52 [PROTO_10]
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R18 R16 K53 ["_renderSnapTarget"]
  DUPCLOSURE R18 K54 [PROTO_11]
  CAPTURE VAL R4
  SETTABLEKS R18 R16 K55 ["_renderSnapRelation"]
  DUPCLOSURE R18 K56 [PROTO_12]
  CAPTURE VAL R4
  SETTABLEKS R18 R16 K57 ["_renderSnap"]
  DUPCLOSURE R18 K58 [PROTO_13]
  CAPTURE VAL R12
  CAPTURE VAL R4
  SETTABLEKS R18 R16 K59 ["render"]
  DUPCLOSURE R18 K60 [PROTO_14]
  SETTABLEKS R18 R16 K61 ["_shouldAlignDraggedObjects"]
  DUPCLOSURE R18 K62 [PROTO_15]
  CAPTURE VAL R5
  CAPTURE VAL R12
  SETTABLEKS R18 R16 K63 ["rotate"]
  DUPCLOSURE R18 K64 [PROTO_16]
  DUPCLOSURE R19 K65 [PROTO_17]
  CAPTURE VAL R18
  DUPCLOSURE R20 K66 [PROTO_19]
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R13
  CAPTURE VAL R19
  SETTABLEKS R20 R16 K67 ["_updateGeometric"]
  DUPCLOSURE R20 K68 [PROTO_20]
  CAPTURE VAL R12
  CAPTURE VAL R5
  SETTABLEKS R20 R16 K69 ["_updatePhysical"]
  DUPCLOSURE R20 K70 [PROTO_21]
  SETTABLEKS R20 R16 K71 ["update"]
  DUPCLOSURE R20 K72 [PROTO_23]
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R0
  SETTABLEKS R20 R16 K73 ["destroy"]
  DUPCLOSURE R20 K74 [PROTO_24]
  SETTABLEKS R20 R16 K75 ["_analyticsRecordFreeformDragBegin"]
  DUPCLOSURE R20 K76 [PROTO_25]
  SETTABLEKS R20 R16 K77 ["_analyticsRecordFreeformDragUpdate"]
  DUPCLOSURE R20 K78 [PROTO_26]
  CAPTURE VAL R15
  SETTABLEKS R20 R16 K79 ["_analyticsSendFreeformDragged"]
  RETURN R16 1
