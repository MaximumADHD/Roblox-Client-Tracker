PROTO_0:
  JUMPIFNOTEQKS R0 K0 ["AttachmenToolDragging"] [+6]
  GETUPVAL R1 0
  NAMECALL R1 R1 K1 ["_onUndo"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["_attachment"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["_attachment"]
  GETTABLEKS R1 R2 K3 ["Parent"]
  JUMPIF R1 [+12]
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["_attachment"]
  GETUPVAL R1 0
  NAMECALL R1 R1 K4 ["_updateAttachment"]
  CALL R1 1 0
  GETUPVAL R1 0
  NAMECALL R1 R1 K5 ["_updateSelectionInfo"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  JUMPIFNOTEQKS R0 K0 ["AttachmenToolDragging"] [+6]
  GETUPVAL R1 0
  NAMECALL R1 R1 K1 ["_onRedo"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["_attachment"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["_attachment"]
  GETTABLEKS R1 R2 K3 ["Parent"]
  JUMPIF R1 [+12]
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["_attachment"]
  GETUPVAL R1 0
  NAMECALL R1 R1 K4 ["_updateAttachment"]
  CALL R1 1 0
  GETUPVAL R1 0
  NAMECALL R1 R1 K5 ["_updateSelectionInfo"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R7 K1 [pairs]
  MOVE R8 R2
  CALL R7 1 3
  FORGPREP_NEXT R7
  GETUPVAL R13 0
  GETTABLE R12 R13 R10
  JUMPIFNOTEQKNIL R12 [+12]
  GETUPVAL R13 1
  GETTABLE R12 R13 R10
  JUMPIFNOTEQKNIL R12 [+8]
  GETIMPORT R12 K3 [error]
  LOADK R14 K4 ["Unexpected ConstraintToolModel prop `"]
  MOVE R15 R10
  LOADK R16 K5 ["`"]
  CONCAT R13 R14 R16
  CALL R12 1 0
  FORGLOOP R7 2 [-16]
  NEWTABLE R7 0 0
  GETIMPORT R8 K1 [pairs]
  GETUPVAL R9 1
  CALL R8 1 3
  FORGPREP_NEXT R8
  GETTABLE R13 R2 R11
  JUMPIFNOTEQKNIL R13 [+9]
  GETIMPORT R14 K3 [error]
  LOADK R16 K6 ["Required prop `"]
  MOVE R17 R11
  LOADK R18 K7 ["` missing from ConstraintToolModel props"]
  CONCAT R15 R16 R18
  CALL R14 1 0
  JUMP [+1]
  SETTABLE R13 R7 R11
  FORGLOOP R8 2 [-13]
  GETIMPORT R8 K1 [pairs]
  GETUPVAL R9 0
  CALL R8 1 3
  FORGPREP_NEXT R8
  GETTABLE R13 R2 R11
  JUMPIFEQKNIL R13 [+4]
  GETTABLE R13 R2 R11
  SETTABLE R13 R7 R11
  JUMP [+1]
  SETTABLE R12 R7 R11
  FORGLOOP R8 2 [-8]
  DUPTABLE R9 K22 [{"_draggerContext", "_draggerSchema", "_modelProps", "_closePluginCallback", "_requestRenderCallback", "_markViewDirtyCallback", "_markSelectionDirtyCallback", "_selectionWrapper", "_attachmentMover", "_attachment", "_tiltRotate", "_recordingIdentifier", "_attachmentStack", "_redoAttachmentStack"}]
  SETTABLEKS R0 R9 K8 ["_draggerContext"]
  SETTABLEKS R1 R9 K9 ["_draggerSchema"]
  SETTABLEKS R7 R9 K10 ["_modelProps"]
  SETTABLEKS R3 R9 K11 ["_closePluginCallback"]
  SETTABLEKS R4 R9 K12 ["_requestRenderCallback"]
  SETTABLEKS R5 R9 K13 ["_markViewDirtyCallback"]
  SETTABLEKS R6 R9 K14 ["_markSelectionDirtyCallback"]
  LOADNIL R10
  SETTABLEKS R10 R9 K15 ["_selectionWrapper"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K23 ["new"]
  CALL R10 0 1
  SETTABLEKS R10 R9 K16 ["_attachmentMover"]
  LOADNIL R10
  SETTABLEKS R10 R9 K17 ["_attachment"]
  GETIMPORT R10 K25 [CFrame.new]
  CALL R10 0 1
  SETTABLEKS R10 R9 K18 ["_tiltRotate"]
  LOADNIL R10
  SETTABLEKS R10 R9 K19 ["_recordingIdentifier"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K20 ["_attachmentStack"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K21 ["_redoAttachmentStack"]
  GETUPVAL R10 3
  FASTCALL2 SETMETATABLE R9 R10 [+3]
  GETIMPORT R8 K27 [setmetatable]
  CALL R8 2 1
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K23 ["new"]
  GETTABLEKS R10 R8 K8 ["_draggerContext"]
  GETTABLEKS R11 R8 K9 ["_draggerSchema"]
  MOVE R12 R8
  CALL R9 3 1
  SETTABLEKS R9 R8 K28 ["_attachmentToolRenderer"]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K23 ["new"]
  MOVE R10 R8
  CALL R9 1 1
  SETTABLEKS R9 R8 K29 ["_attachmentToolAnimator"]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K30 ["OnUndo"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R8
  NAMECALL R9 R9 K31 ["Connect"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K32 ["_undoConnection"]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K33 ["OnRedo"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R8
  NAMECALL R9 R9 K31 ["Connect"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K34 ["_redoConnection"]
  RETURN R8 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Portal"]
  DUPTABLE R3 K3 [{"target"}]
  GETTABLEKS R4 R0 K4 ["_draggerContext"]
  NAMECALL R4 R4 K5 ["getGuiParent"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K2 ["target"]
  DUPTABLE R4 K7 [{"DraggerUI"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K8 ["Folder"]
  NEWTABLE R7 0 0
  GETTABLEKS R8 R0 K9 ["_attachmentToolRenderer"]
  NAMECALL R8 R8 K10 ["render"]
  CALL R8 1 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K6 ["DraggerUI"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["isSimulating"]
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K2 ["_markViewDirtyCallback"]
  CALL R1 0 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_selectionWrapper"]
  RETURN R1 1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_draggerSchema"]
  RETURN R1 1

PROTO_7:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["AllowDragSelect"]
  RETURN R1 1

PROTO_8:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowDragSelect"]
  RETURN R1 1

PROTO_9:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowLocalSpaceIndicator"]
  RETURN R1 1

PROTO_10:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowSelectionDot"]
  RETURN R1 1

PROTO_11:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["UseCollisionsTransparency"]
  RETURN R1 1

PROTO_12:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["shouldAlignDraggedObjects"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_13:
  GETTABLEKS R1 R0 K0 ["_attachment"]
  JUMPIFNOT R1 [+7]
  GETTABLEKS R1 R0 K1 ["_attachmentMover"]
  GETTABLEKS R3 R0 K0 ["_attachment"]
  NAMECALL R1 R1 K2 ["isMovingThisAttachment"]
  CALL R1 2 1
  RETURN R1 1

PROTO_14:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["getMouseRay"]
  CALL R1 1 1
  LOADNIL R2
  GETTABLEKS R3 R0 K2 ["_lastDragTarget"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R3 R0 K2 ["_lastDragTarget"]
  GETTABLEKS R2 R3 K3 ["targetMatrix"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["getDragTarget"]
  GETTABLEKS R5 R0 K5 ["_attachment"]
  JUMPIFNOT R5 [+7]
  NEWTABLE R4 0 1
  GETTABLEKS R5 R0 K5 ["_attachment"]
  SETLIST R4 R5 1 [1]
  JUMP [+2]
  NEWTABLE R4 0 0
  GETIMPORT R5 K8 [CFrame.new]
  CALL R5 0 1
  GETUPVAL R6 1
  GETUPVAL R7 1
  GETUPVAL R8 1
  MOVE R9 R1
  GETTABLEKS R11 R0 K0 ["_draggerContext"]
  NAMECALL R11 R11 K9 ["shouldGridSnap"]
  CALL R11 1 1
  JUMPIFNOT R11 [+6]
  GETTABLEKS R10 R0 K0 ["_draggerContext"]
  NAMECALL R10 R10 K10 ["getGridSize"]
  CALL R10 1 1
  JUMP [+1]
  LOADNIL R10
  GETTABLEKS R11 R0 K11 ["_tiltRotate"]
  MOVE R12 R2
  NAMECALL R13 R0 K12 ["shouldAlignDraggedObjects"]
  CALL R13 1 1
  JUMPIFNOT R13 [+6]
  GETTABLEKS R14 R0 K0 ["_draggerContext"]
  NAMECALL R14 R14 K13 ["isAltKeyDown"]
  CALL R14 1 1
  NOT R13 R14
  LOADB R14 0
  GETTABLEKS R15 R0 K0 ["_draggerContext"]
  NAMECALL R15 R15 K14 ["getSoftSnapMarginFactor"]
  CALL R15 1 1
  GETTABLEKS R16 R0 K0 ["_draggerContext"]
  NAMECALL R16 R16 K15 ["shouldPartSnap"]
  CALL R16 1 -1
  CALL R3 -1 1
  JUMPIFNOT R3 [+119]
  GETTABLEKS R4 R3 K16 ["targetPart"]
  JUMPIFNOT R4 [+116]
  SETTABLEKS R3 R0 K2 ["_lastDragTarget"]
  GETTABLEKS R4 R0 K17 ["_attachmentToolAnimator"]
  NAMECALL R4 R4 K18 ["inProgress"]
  CALL R4 1 1
  JUMPIF R4 [+108]
  NAMECALL R4 R0 K19 ["_isDraggingAttachment"]
  CALL R4 1 1
  JUMPIFNOT R4 [+10]
  GETTABLEKS R4 R0 K20 ["_attachmentMover"]
  GETTABLEKS R6 R3 K21 ["mainCFrame"]
  GETTABLEKS R7 R3 K16 ["targetPart"]
  NAMECALL R4 R4 K22 ["moveTo"]
  CALL R4 3 0
  RETURN R0 0
  GETTABLEKS R5 R0 K23 ["_selectionWrapper"]
  JUMPIFNOT R5 [+6]
  GETTABLEKS R4 R0 K23 ["_selectionWrapper"]
  NAMECALL R4 R4 K24 ["get"]
  CALL R4 1 1
  JUMP [+2]
  NEWTABLE R4 0 0
  GETTABLEKS R5 R0 K25 ["_recordingIdentifier"]
  JUMPIFNOT R5 [+7]
  GETUPVAL R5 2
  GETTABLEKS R7 R0 K25 ["_recordingIdentifier"]
  NAMECALL R5 R5 K26 ["IsRecordingInProgress"]
  CALL R5 2 1
  JUMPIF R5 [+8]
  GETUPVAL R5 2
  LOADK R7 K27 ["AttachmenToolDragging"]
  LOADK R8 K28 ["Placing Attachment"]
  NAMECALL R5 R5 K29 ["TryBeginRecording"]
  CALL R5 3 1
  SETTABLEKS R5 R0 K25 ["_recordingIdentifier"]
  GETIMPORT R5 K31 [Instance.new]
  LOADK R6 K32 ["Attachment"]
  GETTABLEKS R7 R3 K16 ["targetPart"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K5 ["_attachment"]
  GETTABLEKS R7 R0 K5 ["_attachment"]
  FASTCALL2 TABLE_INSERT R4 R7 [+4]
  MOVE R6 R4
  GETIMPORT R5 K35 [table.insert]
  CALL R5 2 0
  GETTABLEKS R5 R0 K23 ["_selectionWrapper"]
  JUMPIFNOT R5 [+7]
  GETTABLEKS R5 R0 K23 ["_selectionWrapper"]
  MOVE R7 R4
  NAMECALL R5 R5 K36 ["set"]
  CALL R5 2 0
  JUMP [+18]
  GETTABLEKS R7 R0 K37 ["_draggerSchema"]
  GETTABLEKS R6 R7 K38 ["Selection"]
  GETTABLEKS R5 R6 K7 ["new"]
  CALL R5 0 1
  MOVE R8 R4
  NAMECALL R6 R5 K39 ["Set"]
  CALL R6 2 0
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K7 ["new"]
  MOVE R7 R5
  CALL R6 1 1
  SETTABLEKS R6 R0 K23 ["_selectionWrapper"]
  GETTABLEKS R5 R0 K5 ["_attachment"]
  GETTABLEKS R6 R3 K21 ["mainCFrame"]
  SETTABLEKS R6 R5 K40 ["WorldCFrame"]
  GETIMPORT R5 K8 [CFrame.new]
  CALL R5 0 1
  SETTABLEKS R5 R0 K11 ["_tiltRotate"]
  NAMECALL R5 R0 K41 ["_updateSelectionInfo"]
  CALL R5 1 0
  GETTABLEKS R5 R0 K20 ["_attachmentMover"]
  GETTABLEKS R7 R0 K5 ["_attachment"]
  NAMECALL R5 R5 K42 ["setDragged"]
  CALL R5 2 0
  RETURN R0 0

PROTO_15:
  LOADNIL R2
  GETTABLEKS R3 R0 K0 ["_lastDragTarget"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R3 R0 K0 ["_lastDragTarget"]
  GETTABLEKS R2 R3 K1 ["targetMatrix"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["updateTiltRotate"]
  GETTABLEKS R4 R0 K3 ["_draggerContext"]
  NAMECALL R4 R4 K4 ["getCameraCFrame"]
  CALL R4 1 1
  GETTABLEKS R5 R0 K3 ["_draggerContext"]
  NAMECALL R5 R5 K5 ["getMouseRay"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K6 ["_attachment"]
  JUMPIFNOT R7 [+7]
  NEWTABLE R6 0 1
  GETTABLEKS R7 R0 K6 ["_attachment"]
  SETLIST R6 R7 1 [1]
  JUMP [+2]
  NEWTABLE R6 0 0
  GETIMPORT R7 K9 [CFrame.new]
  CALL R7 0 1
  MOVE R8 R2
  GETTABLEKS R9 R0 K10 ["_tiltRotate"]
  MOVE R10 R1
  NAMECALL R11 R0 K11 ["shouldAlignDraggedObjects"]
  CALL R11 1 1
  JUMPIFNOT R11 [+6]
  GETTABLEKS R12 R0 K3 ["_draggerContext"]
  NAMECALL R12 R12 K12 ["isAltKeyDown"]
  CALL R12 1 1
  NOT R11 R12
  GETTABLEKS R13 R0 K3 ["_draggerContext"]
  NAMECALL R13 R13 K13 ["shouldGridSnap"]
  CALL R13 1 1
  JUMPIFNOT R13 [+6]
  GETTABLEKS R12 R0 K3 ["_draggerContext"]
  NAMECALL R12 R12 K14 ["getGridSize"]
  CALL R12 1 1
  JUMP [+1]
  LOADNIL R12
  CALL R3 9 1
  GETTABLEKS R4 R0 K0 ["_lastDragTarget"]
  JUMPIFNOT R4 [+7]
  GETTABLEKS R4 R0 K15 ["_attachmentToolAnimator"]
  MOVE R6 R3
  NAMECALL R4 R4 K16 ["beginAnimation"]
  CALL R4 2 0
  JUMP [+2]
  SETTABLEKS R3 R0 K10 ["_tiltRotate"]
  NAMECALL R4 R0 K17 ["_updateAttachment"]
  CALL R4 1 0
  NAMECALL R4 R0 K18 ["_scheduleRender"]
  CALL R4 1 0
  RETURN R0 0

PROTO_16:
  GETTABLEKS R1 R0 K0 ["_attachment"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K1 ["_selectionWrapper"]
  JUMPIF R1 [+2]
  LOADB R1 1
  RETURN R1 1
  GETTABLEKS R1 R0 K1 ["_selectionWrapper"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETIMPORT R3 K5 [table.find]
  MOVE R4 R1
  GETTABLEKS R5 R0 K0 ["_attachment"]
  CALL R3 2 1
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_17:
  GETTABLEKS R1 R0 K0 ["_closePluginCallback"]
  CALL R1 0 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_markSelectionDirtyCallback"]
  CALL R1 0 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_processSelectionChanged"]
  CALL R0 1 0
  RETURN R0 0

PROTO_20:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowPivotIndicator"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["_draggerContext"]
  LOADB R3 1
  NAMECALL R1 R1 K3 ["setPivotIndicator"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["_oldShowPivot"]
  GETTABLEKS R1 R0 K2 ["_draggerContext"]
  LOADK R3 K5 [""]
  NAMECALL R1 R1 K6 ["setMouseIcon"]
  CALL R1 2 0
  GETTABLEKS R3 R0 K7 ["_draggerSchema"]
  GETTABLEKS R2 R3 K8 ["BoundsChangedTracker"]
  GETTABLEKS R1 R2 K9 ["new"]
  GETTABLEKS R2 R0 K2 ["_draggerContext"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R1 2 1
  SETTABLEKS R1 R0 K10 ["_boundsChangedTracker"]
  GETTABLEKS R1 R0 K10 ["_boundsChangedTracker"]
  NAMECALL R1 R1 K11 ["install"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_draggerContext"]
  NAMECALL R1 R1 K12 ["getSelection"]
  CALL R1 1 1
  NEWTABLE R3 0 0
  NAMECALL R1 R1 K13 ["Set"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K9 ["new"]
  GETTABLEKS R2 R0 K2 ["_draggerContext"]
  NAMECALL R2 R2 K12 ["getSelection"]
  CALL R2 1 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K14 ["_selectionWrapper"]
  GETTABLEKS R2 R0 K14 ["_selectionWrapper"]
  GETTABLEKS R1 R2 K15 ["onSelectionExternallyChanged"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  NAMECALL R1 R1 K16 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K17 ["_selectionChangedConnection"]
  NAMECALL R1 R0 K18 ["_updateSelectionInfo"]
  CALL R1 1 0
  RETURN R0 0

PROTO_21:
  GETTABLEKS R1 R0 K0 ["_attachmentToolAnimator"]
  NAMECALL R1 R1 K1 ["forceFinish"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_attachmentMover"]
  GETTABLEKS R3 R0 K3 ["_attachment"]
  NAMECALL R1 R1 K4 ["isMovingThisAttachment"]
  CALL R1 2 1
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K2 ["_attachmentMover"]
  NAMECALL R1 R1 K5 ["commit"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K6 ["_redoAttachmentStack"]
  GETTABLEKS R3 R0 K3 ["_attachment"]
  FASTCALL2 TABLE_INSERT R2 R3 [+3]
  GETIMPORT R1 K9 [table.insert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K10 ["_selectionWrapper"]
  NAMECALL R1 R1 K11 ["get"]
  CALL R1 1 1
  GETIMPORT R2 K13 [table.remove]
  GETTABLEKS R3 R0 K14 ["_attachmentStack"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K3 ["_attachment"]
  GETTABLEKS R2 R0 K3 ["_attachment"]
  JUMPIFNOT R2 [+17]
  GETTABLEKS R3 R0 K3 ["_attachment"]
  GETTABLEKS R2 R3 K15 ["Parent"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K2 ["_attachmentMover"]
  GETTABLEKS R4 R0 K3 ["_attachment"]
  NAMECALL R2 R2 K16 ["setDragged"]
  CALL R2 2 0
  JUMP [+27]
  LOADNIL R2
  SETTABLEKS R2 R0 K3 ["_attachment"]
  JUMP [+23]
  LENGTH R2 R1
  JUMPIFNOTEQKN R2 K17 [1] [+21]
  GETTABLEN R2 R1 1
  LOADK R4 K18 ["Attachment"]
  NAMECALL R2 R2 K19 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+14]
  GETTABLEN R3 R1 1
  GETTABLEKS R2 R3 K15 ["Parent"]
  JUMPIFNOT R2 [+10]
  GETTABLEN R2 R1 1
  SETTABLEKS R2 R0 K3 ["_attachment"]
  GETTABLEKS R2 R0 K2 ["_attachmentMover"]
  GETTABLEKS R4 R0 K3 ["_attachment"]
  NAMECALL R2 R2 K16 ["setDragged"]
  CALL R2 2 0
  GETTABLEKS R3 R0 K14 ["_attachmentStack"]
  LENGTH R2 R3
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+19]
  GETTABLEKS R5 R0 K14 ["_attachmentStack"]
  GETTABLEKS R7 R0 K14 ["_attachmentStack"]
  LENGTH R6 R7
  GETTABLE R4 R5 R6
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K9 [table.insert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K10 ["_selectionWrapper"]
  MOVE R4 R1
  NAMECALL R2 R2 K20 ["set"]
  CALL R2 2 0
  NAMECALL R2 R0 K21 ["_updateAttachment"]
  CALL R2 1 0
  NAMECALL R2 R0 K22 ["_updateSelectionInfo"]
  CALL R2 1 0
  RETURN R0 0

PROTO_22:
  GETTABLEKS R1 R0 K0 ["_attachmentToolAnimator"]
  NAMECALL R1 R1 K1 ["forceFinish"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_attachmentMover"]
  GETTABLEKS R3 R0 K3 ["_attachment"]
  NAMECALL R1 R1 K4 ["isMovingThisAttachment"]
  CALL R1 2 1
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K2 ["_attachmentMover"]
  NAMECALL R1 R1 K5 ["commit"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K6 ["_redoAttachmentStack"]
  LENGTH R1 R2
  JUMPIFNOTEQKN R1 K7 [0] [+2]
  RETURN R0 0
  GETTABLEKS R1 R0 K8 ["_selectionWrapper"]
  NAMECALL R1 R1 K9 ["get"]
  CALL R1 1 1
  GETIMPORT R2 K12 [table.find]
  MOVE R3 R1
  GETTABLEKS R5 R0 K13 ["_attachmentStack"]
  GETTABLEKS R7 R0 K13 ["_attachmentStack"]
  LENGTH R6 R7
  GETTABLE R4 R5 R6
  CALL R2 2 1
  JUMPIFNOT R2 [+5]
  GETIMPORT R3 K15 [table.remove]
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 0
  GETTABLEKS R4 R0 K13 ["_attachmentStack"]
  GETTABLEKS R5 R0 K3 ["_attachment"]
  FASTCALL2 TABLE_INSERT R4 R5 [+3]
  GETIMPORT R3 K17 [table.insert]
  CALL R3 2 0
  GETIMPORT R3 K15 [table.remove]
  GETTABLEKS R4 R0 K6 ["_redoAttachmentStack"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K3 ["_attachment"]
  GETTABLEKS R3 R0 K3 ["_attachment"]
  JUMPIFNOT R3 [+16]
  GETTABLEKS R4 R0 K3 ["_attachment"]
  GETTABLEKS R3 R4 K18 ["Parent"]
  JUMPIFNOT R3 [+8]
  GETTABLEKS R3 R0 K2 ["_attachmentMover"]
  GETTABLEKS R5 R0 K3 ["_attachment"]
  NAMECALL R3 R3 K19 ["setDragged"]
  CALL R3 2 0
  JUMP [+3]
  LOADNIL R3
  SETTABLEKS R3 R0 K3 ["_attachment"]
  NAMECALL R3 R0 K20 ["_updateAttachment"]
  CALL R3 1 0
  NAMECALL R3 R0 K21 ["_updateSelectionInfo"]
  CALL R3 1 0
  RETURN R0 0

PROTO_23:
  GETTABLEKS R1 R0 K0 ["_isMouseDown"]
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K1 ["_processMouseUp"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K2 ["_modelProps"]
  GETTABLEKS R1 R2 K3 ["ShowPivotIndicator"]
  JUMPIFNOT R1 [+7]
  GETTABLEKS R1 R0 K4 ["_draggerContext"]
  GETTABLEKS R3 R0 K5 ["_oldShowPivot"]
  NAMECALL R1 R1 K6 ["setPivotIndicator"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K7 ["_selectionWrapper"]
  NAMECALL R1 R1 K8 ["destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["_selectionWrapper"]
  GETTABLEKS R1 R0 K9 ["_boundsChangedTracker"]
  NAMECALL R1 R1 K10 ["uninstall"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K11 ["_selectionChangedConnection"]
  NAMECALL R1 R1 K12 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K11 ["_selectionChangedConnection"]
  GETTABLEKS R1 R0 K13 ["_attachment"]
  JUMPIFNOT R1 [+10]
  GETTABLEKS R2 R0 K13 ["_attachment"]
  GETTABLEKS R1 R2 K14 ["Parent"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K13 ["_attachment"]
  NAMECALL R1 R1 K15 ["Destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K13 ["_attachment"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K16 ["_redoAttachmentStack"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K17 ["_attachmentStack"]
  GETTABLEKS R1 R0 K18 ["_undoConnection"]
  NAMECALL R1 R1 K12 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K18 ["_undoConnection"]
  GETTABLEKS R1 R0 K19 ["_redoConnection"]
  NAMECALL R1 R1 K12 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K19 ["_redoConnection"]
  GETTABLEKS R1 R0 K20 ["_recordingIdentifier"]
  JUMPIFNOT R1 [+15]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K20 ["_recordingIdentifier"]
  NAMECALL R1 R1 K21 ["IsRecordingInProgress"]
  CALL R1 2 1
  JUMPIFNOT R1 [+8]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K20 ["_recordingIdentifier"]
  GETIMPORT R4 K25 [Enum.FinishRecordingOperation.Commit]
  NAMECALL R1 R1 K26 ["FinishRecording"]
  CALL R1 3 0
  LOADNIL R1
  SETTABLEKS R1 R0 K20 ["_recordingIdentifier"]
  RETURN R0 0

PROTO_24:
  NAMECALL R1 R0 K0 ["_updateSelectionInfo"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["_selectionWrapper"]
  JUMPIFNOT R1 [+35]
  NAMECALL R1 R0 K2 ["_isAttachmentInSelection"]
  CALL R1 1 1
  JUMPIF R1 [+31]
  GETTABLEKS R1 R0 K3 ["_isMouseDown"]
  JUMPIF R1 [+28]
  GETTABLEKS R2 R0 K4 ["_attachment"]
  GETTABLEKS R1 R2 K5 ["Parent"]
  JUMPIF R1 [+4]
  NAMECALL R1 R0 K6 ["_scheduleRender"]
  CALL R1 1 0
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["_selectionWrapper"]
  NAMECALL R1 R1 K7 ["get"]
  CALL R1 1 1
  GETTABLEKS R4 R0 K4 ["_attachment"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K10 [table.insert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K1 ["_selectionWrapper"]
  MOVE R4 R1
  NAMECALL R2 R2 K11 ["set"]
  CALL R2 2 0
  NAMECALL R1 R0 K6 ["_scheduleRender"]
  CALL R1 1 0
  RETURN R0 0

PROTO_25:
  GETIMPORT R2 K3 [Enum.KeyCode.R]
  JUMPIFNOTEQ R1 R2 [+12]
  LOADN R5 0
  LOADN R6 1
  LOADN R7 0
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K6 [Vector3.new]
  CALL R4 3 1
  NAMECALL R2 R0 K7 ["_rotateAttachment"]
  CALL R2 2 0
  RETURN R0 0
  GETIMPORT R2 K9 [Enum.KeyCode.T]
  JUMPIFNOTEQ R1 R2 [+12]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K6 [Vector3.new]
  CALL R4 3 1
  NAMECALL R2 R0 K7 ["_rotateAttachment"]
  CALL R2 2 0
  RETURN R0 0
  GETIMPORT R2 K11 [Enum.KeyCode.H]
  JUMPIFNOTEQ R1 R2 [+18]
  GETTABLEKS R2 R0 K12 ["_draggerContext"]
  LOADK R4 K13 ["HotkeyUsageHidden"]
  GETTABLEKS R6 R0 K12 ["_draggerContext"]
  LOADK R8 K13 ["HotkeyUsageHidden"]
  NAMECALL R6 R6 K14 ["getSetting"]
  CALL R6 2 1
  NOT R5 R6
  NAMECALL R2 R2 K15 ["setSetting"]
  CALL R2 3 0
  NAMECALL R2 R0 K16 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+6]
  NAMECALL R2 R0 K17 ["_updateAttachment"]
  CALL R2 1 0
  NAMECALL R2 R0 K16 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0

PROTO_26:
  GETIMPORT R2 K3 [Enum.KeyCode.Escape]
  JUMPIFNOTEQ R1 R2 [+5]
  NAMECALL R2 R0 K4 ["_closeTool"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+6]
  NAMECALL R2 R0 K5 ["_updateAttachment"]
  CALL R2 1 0
  NAMECALL R2 R0 K6 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0

PROTO_27:
  GETTABLEKS R1 R0 K0 ["_isMouseDown"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_isMouseDown"]
  GETTABLEKS R1 R0 K1 ["_attachmentMover"]
  NAMECALL R1 R1 K2 ["commit"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["_selectionWrapper"]
  NEWTABLE R3 0 1
  GETTABLEKS R4 R0 K4 ["_attachment"]
  SETLIST R3 R4 1 [1]
  NAMECALL R1 R1 K5 ["set"]
  CALL R1 2 0
  GETTABLEKS R2 R0 K6 ["_attachmentStack"]
  GETTABLEKS R3 R0 K4 ["_attachment"]
  FASTCALL2 TABLE_INSERT R2 R3 [+3]
  GETIMPORT R1 K9 [table.insert]
  CALL R1 2 0
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_attachment"]
  NAMECALL R1 R0 K10 ["_updateSelectionInfo"]
  CALL R1 1 0
  NAMECALL R1 R0 K11 ["_updateAttachment"]
  CALL R1 1 0
  NAMECALL R1 R0 K10 ["_updateSelectionInfo"]
  CALL R1 1 0
  RETURN R0 0

PROTO_28:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_isMouseDown"]
  GETTABLEKS R1 R0 K1 ["_recordingIdentifier"]
  JUMPIFNOT R1 [+22]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K1 ["_recordingIdentifier"]
  NAMECALL R1 R1 K2 ["IsRecordingInProgress"]
  CALL R1 2 1
  JUMPIFNOT R1 [+15]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K1 ["_recordingIdentifier"]
  GETIMPORT R4 K6 [Enum.FinishRecordingOperation.Commit]
  NAMECALL R1 R1 K7 ["FinishRecording"]
  CALL R1 3 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K8 ["_redoAttachmentStack"]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_recordingIdentifier"]
  RETURN R0 0

PROTO_29:
  NAMECALL R1 R0 K0 ["_updateAttachment"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["_scheduleRender"]
  CALL R1 1 0
  RETURN R0 0

PROTO_30:
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
  RETURN R0 0

PROTO_31:
  RETURN R0 0

PROTO_32:
  RETURN R0 0

PROTO_33:
  GETTABLEKS R1 R0 K0 ["_requestRenderCallback"]
  CALL R1 0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ConstraintTool"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["ChangeHistoryService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R3 R0 K8 ["Packages"]
  GETTABLEKS R2 R3 K9 ["DraggerFramework"]
  GETIMPORT R3 K11 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K11 [require]
  GETTABLEKS R6 R2 K13 ["Utility"]
  GETTABLEKS R5 R6 K14 ["SelectionWrapper"]
  CALL R4 1 1
  GETIMPORT R5 K11 [require]
  GETTABLEKS R8 R0 K15 ["Src"]
  GETTABLEKS R7 R8 K16 ["Util"]
  GETTABLEKS R6 R7 K17 ["AttachmentMover"]
  CALL R5 1 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R8 R2 K13 ["Utility"]
  GETTABLEKS R7 R8 K18 ["DragHelper"]
  CALL R6 1 1
  GETIMPORT R7 K11 [require]
  GETTABLEKS R10 R0 K15 ["Src"]
  GETTABLEKS R9 R10 K16 ["Util"]
  GETTABLEKS R8 R9 K19 ["AttachmentToolRenderer"]
  CALL R7 1 1
  GETIMPORT R8 K11 [require]
  GETTABLEKS R11 R0 K15 ["Src"]
  GETTABLEKS R10 R11 K16 ["Util"]
  GETTABLEKS R9 R10 K20 ["AttachmentToolAnimator"]
  CALL R8 1 1
  NEWTABLE R9 32 0
  SETTABLEKS R9 R9 K21 ["__index"]
  FASTCALL VECTOR [+2]
  GETIMPORT R10 K24 [Vector3.new]
  CALL R10 0 1
  DUPTABLE R11 K30 [{"AllowDragSelect", "ShowLocalSpaceIndicator", "WasAutoSelected", "ShowPivotIndicator", "ShowDragSelect"}]
  LOADB R12 1
  SETTABLEKS R12 R11 K25 ["AllowDragSelect"]
  LOADB R12 0
  SETTABLEKS R12 R11 K26 ["ShowLocalSpaceIndicator"]
  LOADB R12 0
  SETTABLEKS R12 R11 K27 ["WasAutoSelected"]
  LOADB R12 0
  SETTABLEKS R12 R11 K28 ["ShowPivotIndicator"]
  LOADB R12 1
  SETTABLEKS R12 R11 K29 ["ShowDragSelect"]
  DUPTABLE R12 K32 [{"AnalyticsName"}]
  LOADB R13 1
  SETTABLEKS R13 R12 K31 ["AnalyticsName"]
  DUPCLOSURE R13 K33 [PROTO_2]
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R1
  SETTABLEKS R13 R9 K23 ["new"]
  DUPCLOSURE R13 K34 [PROTO_3]
  CAPTURE VAL R3
  SETTABLEKS R13 R9 K35 ["render"]
  DUPCLOSURE R13 K36 [PROTO_4]
  SETTABLEKS R13 R9 K37 ["update"]
  DUPCLOSURE R13 K38 [PROTO_5]
  SETTABLEKS R13 R9 K39 ["getSelectionWrapper"]
  DUPCLOSURE R13 K40 [PROTO_6]
  SETTABLEKS R13 R9 K41 ["getSchema"]
  DUPCLOSURE R13 K42 [PROTO_7]
  SETTABLEKS R13 R9 K43 ["doesAllowDragSelect"]
  DUPCLOSURE R13 K44 [PROTO_8]
  SETTABLEKS R13 R9 K45 ["shouldShowDragSelect"]
  DUPCLOSURE R13 K46 [PROTO_9]
  SETTABLEKS R13 R9 K47 ["shouldShowLocalSpaceIndicator"]
  DUPCLOSURE R13 K48 [PROTO_10]
  SETTABLEKS R13 R9 K49 ["shouldShowSelectionDot"]
  DUPCLOSURE R13 K50 [PROTO_11]
  SETTABLEKS R13 R9 K51 ["shouldUseCollisionTransparency"]
  DUPCLOSURE R13 K52 [PROTO_12]
  SETTABLEKS R13 R9 K53 ["shouldAlignDraggedObjects"]
  DUPCLOSURE R13 K54 [PROTO_13]
  SETTABLEKS R13 R9 K55 ["_isDraggingAttachment"]
  DUPCLOSURE R13 K56 [PROTO_14]
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R13 R9 K57 ["_updateAttachment"]
  DUPCLOSURE R13 K58 [PROTO_15]
  CAPTURE VAL R6
  SETTABLEKS R13 R9 K59 ["_rotateAttachment"]
  DUPCLOSURE R13 K60 [PROTO_16]
  SETTABLEKS R13 R9 K61 ["_isAttachmentInSelection"]
  DUPCLOSURE R13 K62 [PROTO_17]
  SETTABLEKS R13 R9 K63 ["_closeTool"]
  DUPCLOSURE R13 K64 [PROTO_20]
  CAPTURE VAL R4
  SETTABLEKS R13 R9 K65 ["_processSelected"]
  DUPCLOSURE R13 K66 [PROTO_21]
  SETTABLEKS R13 R9 K67 ["_onUndo"]
  DUPCLOSURE R13 K68 [PROTO_22]
  SETTABLEKS R13 R9 K69 ["_onRedo"]
  DUPCLOSURE R13 K70 [PROTO_23]
  CAPTURE VAL R1
  SETTABLEKS R13 R9 K71 ["_processDeselected"]
  DUPCLOSURE R13 K72 [PROTO_24]
  SETTABLEKS R13 R9 K73 ["_processSelectionChanged"]
  GETIMPORT R13 K76 [table.freeze]
  NEWTABLE R14 8 0
  GETIMPORT R15 K80 [Enum.KeyCode.RightShift]
  LOADB R16 1
  SETTABLE R16 R14 R15
  GETIMPORT R15 K82 [Enum.KeyCode.LeftShift]
  LOADB R16 1
  SETTABLE R16 R14 R15
  GETIMPORT R15 K84 [Enum.KeyCode.RightControl]
  LOADB R16 1
  SETTABLE R16 R14 R15
  GETIMPORT R15 K86 [Enum.KeyCode.LeftControl]
  LOADB R16 1
  SETTABLE R16 R14 R15
  GETIMPORT R15 K88 [Enum.KeyCode.RightAlt]
  LOADB R16 1
  SETTABLE R16 R14 R15
  GETIMPORT R15 K90 [Enum.KeyCode.LeftAlt]
  LOADB R16 1
  SETTABLE R16 R14 R15
  CALL R13 1 1
  DUPCLOSURE R14 K91 [PROTO_25]
  CAPTURE VAL R13
  SETTABLEKS R14 R9 K92 ["_processKeyDown"]
  DUPCLOSURE R14 K93 [PROTO_26]
  CAPTURE VAL R13
  SETTABLEKS R14 R9 K94 ["_processKeyUp"]
  DUPCLOSURE R14 K95 [PROTO_27]
  SETTABLEKS R14 R9 K96 ["_processMouseDown"]
  DUPCLOSURE R14 K97 [PROTO_28]
  CAPTURE VAL R1
  SETTABLEKS R14 R9 K98 ["_processMouseUp"]
  DUPCLOSURE R14 K99 [PROTO_29]
  SETTABLEKS R14 R9 K100 ["_processViewChanged"]
  DUPCLOSURE R14 K101 [PROTO_30]
  SETTABLEKS R14 R9 K102 ["_updateSelectionInfo"]
  DUPCLOSURE R14 K103 [PROTO_31]
  SETTABLEKS R14 R9 K104 ["_processMouseEnter"]
  DUPCLOSURE R14 K105 [PROTO_32]
  SETTABLEKS R14 R9 K106 ["_processMouseLeave"]
  DUPCLOSURE R14 K107 [PROTO_33]
  SETTABLEKS R14 R9 K108 ["_scheduleRender"]
  RETURN R9 1
