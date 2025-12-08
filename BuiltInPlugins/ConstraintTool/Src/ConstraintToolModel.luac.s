PROTO_0:
  MOVE R11 R2
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  GETUPVAL R17 0
  GETTABLE R16 R17 R14
  JUMPIFNOTEQKNIL R16 [+12]
  GETUPVAL R17 1
  GETTABLE R16 R17 R14
  JUMPIFNOTEQKNIL R16 [+8]
  GETIMPORT R16 K1 [error]
  LOADK R18 K2 ["Unexpected ConstraintToolModel prop `"]
  MOVE R19 R14
  LOADK R20 K3 ["`"]
  CONCAT R17 R18 R20
  CALL R16 1 0
  FORGLOOP R11 2 [-16]
  NEWTABLE R11 0 0
  GETUPVAL R12 1
  LOADNIL R13
  LOADNIL R14
  FORGPREP R12
  GETTABLE R17 R2 R15
  JUMPIFNOTEQKNIL R17 [+9]
  GETIMPORT R18 K1 [error]
  LOADK R20 K4 ["Required prop `"]
  MOVE R21 R15
  LOADK R22 K5 ["` missing from ConstraintToolModel props"]
  CONCAT R19 R20 R22
  CALL R18 1 0
  JUMP [+1]
  SETTABLE R17 R11 R15
  FORGLOOP R12 2 [-13]
  GETUPVAL R12 0
  LOADNIL R13
  LOADNIL R14
  FORGPREP R12
  GETTABLE R17 R2 R15
  JUMPIFEQKNIL R17 [+4]
  GETTABLE R17 R2 R15
  SETTABLE R17 R11 R15
  JUMP [+1]
  SETTABLE R16 R11 R15
  FORGLOOP R12 2 [-8]
  GETIMPORT R12 K8 [Instance.new]
  LOADK R13 K9 ["Folder"]
  CALL R12 1 1
  LOADK R13 K10 ["ConstraintTool"]
  SETTABLEKS R13 R12 K11 ["Name"]
  GETIMPORT R14 K13 [game]
  GETTABLEKS R13 R14 K14 ["CoreGui"]
  SETTABLEKS R13 R12 K15 ["Parent"]
  DUPTABLE R14 K41 [{"_draggerContext", "_draggerSchema", "_modelProps", "_closePluginCallback", "_requestRenderCallback", "_constraintToolVisualsFolder", "_markViewDirtyCallback", "_undoAttachmentStack", "_redoAttachmentStack", "_plugin", "_openedTimestamp", "_attachmentMover", "_attachmentArrowVisuals", "_partPassthroughEnabled", "_addMultipleConstraintsEnabled", "_ancestryChangedConnection", "_selectionHighlight", "_ghostAssembly", "_attachmentAdornment", "_initialInstanceAdornment", "_constraintType", "_tiltRotate", "_recordingIdentifier", "_lastDraggedInstanceDefaultOrientation", "_existingInitialAttachment"}]
  SETTABLEKS R0 R14 K16 ["_draggerContext"]
  SETTABLEKS R1 R14 K17 ["_draggerSchema"]
  SETTABLEKS R11 R14 K18 ["_modelProps"]
  SETTABLEKS R3 R14 K19 ["_closePluginCallback"]
  SETTABLEKS R9 R14 K20 ["_requestRenderCallback"]
  SETTABLEKS R12 R14 K21 ["_constraintToolVisualsFolder"]
  SETTABLEKS R10 R14 K22 ["_markViewDirtyCallback"]
  SETTABLEKS R4 R14 K23 ["_undoAttachmentStack"]
  SETTABLEKS R5 R14 K24 ["_redoAttachmentStack"]
  SETTABLEKS R7 R14 K25 ["_plugin"]
  GETIMPORT R15 K44 [os.clock]
  CALL R15 0 1
  SETTABLEKS R15 R14 K26 ["_openedTimestamp"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K7 ["new"]
  CALL R15 0 1
  SETTABLEKS R15 R14 K27 ["_attachmentMover"]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K28 ["_attachmentArrowVisuals"]
  LOADB R15 0
  SETTABLEKS R15 R14 K29 ["_partPassthroughEnabled"]
  LOADB R15 0
  SETTABLEKS R15 R14 K30 ["_addMultipleConstraintsEnabled"]
  LOADNIL R15
  SETTABLEKS R15 R14 K31 ["_ancestryChangedConnection"]
  LOADNIL R15
  SETTABLEKS R15 R14 K32 ["_selectionHighlight"]
  LOADNIL R15
  SETTABLEKS R15 R14 K33 ["_ghostAssembly"]
  LOADNIL R15
  SETTABLEKS R15 R14 K34 ["_attachmentAdornment"]
  LOADNIL R15
  SETTABLEKS R15 R14 K35 ["_initialInstanceAdornment"]
  LOADNIL R15
  SETTABLEKS R15 R14 K36 ["_constraintType"]
  GETUPVAL R15 3
  SETTABLEKS R15 R14 K37 ["_tiltRotate"]
  LOADNIL R15
  SETTABLEKS R15 R14 K38 ["_recordingIdentifier"]
  LOADNIL R15
  SETTABLEKS R15 R14 K39 ["_lastDraggedInstanceDefaultOrientation"]
  LOADB R15 0
  SETTABLEKS R15 R14 K40 ["_existingInitialAttachment"]
  GETUPVAL R15 4
  FASTCALL2 SETMETATABLE R14 R15 [+3]
  GETIMPORT R13 K46 [setmetatable]
  CALL R13 2 1
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K7 ["new"]
  GETTABLEKS R15 R13 K16 ["_draggerContext"]
  GETTABLEKS R16 R13 K17 ["_draggerSchema"]
  MOVE R17 R13
  CALL R14 3 1
  SETTABLEKS R14 R13 K47 ["_attachmentToolRenderer"]
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K7 ["new"]
  MOVE R15 R13
  CALL R14 1 1
  SETTABLEKS R14 R13 K48 ["_attachmentToolAnimator"]
  SETUPVAL R6 7
  GETTABLEKS R15 R13 K16 ["_draggerContext"]
  LOADK R17 K49 ["MultipleConstraintMode"]
  NAMECALL R15 R15 K50 ["getSetting"]
  CALL R15 2 1
  JUMPIFNOT R15 [+2]
  LOADB R14 1
  JUMP [+1]
  LOADB R14 0
  SETTABLEKS R14 R13 K30 ["_addMultipleConstraintsEnabled"]
  LOADN R14 1
  SETTABLEKS R14 R13 K51 ["_adornScale"]
  MOVE R16 R7
  NAMECALL R14 R13 K52 ["_connectGizmoScale"]
  CALL R14 2 0
  MOVE R14 R8
  MOVE R15 R13
  CALL R14 1 1
  GETTABLEKS R15 R14 K53 ["undo"]
  SETTABLEKS R15 R13 K54 ["_mainUndo"]
  RETURN R13 1

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetConstraintGizmoScaleAsync"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["_adornScale"]
  GETUPVAL R1 0
  NAMECALL R1 R1 K1 ["_resizeAttachmentAdorns"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  LOADK R4 K0 ["ConstraintGizmoManager"]
  NAMECALL R2 R1 K1 ["GetPluginComponent"]
  CALL R2 2 1
  GETIMPORT R3 K3 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CALL R3 1 2
  JUMPIF R3 [+1]
  RETURN R0 0
  SETTABLEKS R4 R0 K4 ["_adornScale"]
  GETTABLEKS R7 R0 K5 ["_gizmoConnection"]
  JUMPIFEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL1 ASSERT R6 [+2]
  GETIMPORT R5 K7 [assert]
  CALL R5 1 0
  GETTABLEKS R5 R2 K8 ["OnConstraintGizmoScaleChanged"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  NAMECALL R5 R5 K9 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K5 ["_gizmoConnection"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R3 R0 K0 ["_undoAttachmentStack"]
  GETTABLEN R2 R3 1
  JUMPIFNOT R2 [+18]
  GETTABLEKS R4 R2 K1 ["attachment"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  JUMPIFNOT R3 [+13]
  GETTABLEKS R3 R2 K3 ["type"]
  JUMPIFNOTEQKS R3 K4 ["initial"] [+10]
  GETTABLEKS R5 R2 K1 ["attachment"]
  NAMECALL R3 R0 K5 ["_selectInitialInstance"]
  CALL R3 2 0
  NAMECALL R3 R0 K6 ["_updateAttachment"]
  CALL R3 1 0
  RETURN R0 0
  JUMPIFNOT R1 [+9]
  GETTABLEKS R3 R1 K7 ["attachmentParent"]
  JUMPIFNOT R3 [+6]
  LOADN R5 0
  GETTABLEKS R6 R1 K7 ["attachmentParent"]
  NAMECALL R3 R0 K8 ["_setInitialInstanceTransparency"]
  CALL R3 3 0
  RETURN R0 0

PROTO_5:
  JUMPIFNOT R1 [+19]
  GETTABLEKS R2 R1 K0 ["type"]
  JUMPIFNOTEQKS R2 K1 ["initial"] [+10]
  GETTABLEKS R4 R1 K2 ["attachment"]
  NAMECALL R2 R0 K3 ["_selectInitialInstance"]
  CALL R2 2 0
  NAMECALL R2 R0 K4 ["_updateAttachment"]
  CALL R2 1 0
  RETURN R0 0
  NAMECALL R2 R0 K5 ["_clearInitialInstance"]
  CALL R2 1 0
  NAMECALL R2 R0 K6 ["_removeConstraintVisuals"]
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_attachmentArrowVisuals"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  LOADK R7 K1 [0.14]
  GETTABLEKS R8 R0 K2 ["_adornScale"]
  MUL R6 R7 R8
  SETTABLEKS R6 R4 K3 ["Radius"]
  GETTABLEKS R6 R5 K4 ["shaftRight"]
  LOADN R8 1
  GETTABLEKS R9 R0 K2 ["_adornScale"]
  MUL R7 R8 R9
  SETTABLEKS R7 R6 K5 ["Height"]
  GETTABLEKS R6 R5 K4 ["shaftRight"]
  LOADK R8 K6 [0.02]
  GETTABLEKS R9 R0 K2 ["_adornScale"]
  MUL R7 R8 R9
  SETTABLEKS R7 R6 K3 ["Radius"]
  GETTABLEKS R6 R5 K7 ["shaftTop"]
  LOADN R8 1
  GETTABLEKS R9 R0 K2 ["_adornScale"]
  MUL R7 R8 R9
  SETTABLEKS R7 R6 K5 ["Height"]
  GETTABLEKS R6 R5 K7 ["shaftTop"]
  LOADK R8 K6 [0.02]
  GETTABLEKS R9 R0 K2 ["_adornScale"]
  MUL R7 R8 R9
  SETTABLEKS R7 R6 K3 ["Radius"]
  GETTABLEKS R6 R5 K8 ["tipRight"]
  LOADK R8 K9 [0.2]
  GETTABLEKS R9 R0 K2 ["_adornScale"]
  MUL R7 R8 R9
  SETTABLEKS R7 R6 K5 ["Height"]
  GETTABLEKS R6 R5 K8 ["tipRight"]
  LOADK R8 K10 [0.05]
  GETTABLEKS R9 R0 K2 ["_adornScale"]
  MUL R7 R8 R9
  SETTABLEKS R7 R6 K3 ["Radius"]
  GETTABLEKS R6 R5 K11 ["tipTop"]
  LOADK R8 K9 [0.2]
  GETTABLEKS R9 R0 K2 ["_adornScale"]
  MUL R7 R8 R9
  SETTABLEKS R7 R6 K5 ["Height"]
  GETTABLEKS R6 R5 K11 ["tipTop"]
  LOADK R8 K10 [0.05]
  GETTABLEKS R9 R0 K2 ["_adornScale"]
  MUL R7 R8 R9
  SETTABLEKS R7 R6 K3 ["Radius"]
  MOVE R8 R4
  NAMECALL R6 R0 K12 ["_orientAttachmentAdornment"]
  CALL R6 2 0
  FORGLOOP R1 2 [-75]
  GETTABLEKS R1 R0 K13 ["_constraintConnectionVisual"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K13 ["_constraintConnectionVisual"]
  LOADK R3 K10 [0.05]
  GETTABLEKS R4 R0 K2 ["_adornScale"]
  MUL R2 R3 R4
  SETTABLEKS R2 R1 K3 ["Radius"]
  RETURN R0 0

PROTO_7:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["SphereHandleAdornment"]
  CALL R1 1 1
  LOADB R2 1
  SETTABLEKS R2 R1 K4 ["AlwaysOnTop"]
  LOADN R2 1
  SETTABLEKS R2 R1 K5 ["ZIndex"]
  LOADK R3 K6 [0.14]
  GETTABLEKS R4 R0 K7 ["_adornScale"]
  MUL R2 R3 R4
  SETTABLEKS R2 R1 K8 ["Radius"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K9 ["Color3"]
  GETIMPORT R3 K11 [workspace]
  GETTABLEKS R2 R3 K12 ["Terrain"]
  SETTABLEKS R2 R1 K13 ["Adornee"]
  GETTABLEKS R2 R0 K14 ["_constraintToolVisualsFolder"]
  SETTABLEKS R2 R1 K15 ["Parent"]
  MOVE R4 R1
  NAMECALL R2 R0 K16 ["_createAttachmentAdornmentArrows"]
  CALL R2 2 0
  RETURN R1 1

PROTO_8:
  NAMECALL R1 R0 K0 ["_createAttachmentAdornment"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["_attachmentAdornment"]
  GETUPVAL R2 0
  NAMECALL R2 R2 K2 ["Get"]
  CALL R2 1 1
  LENGTH R3 R2
  JUMPIFNOTEQKN R3 K3 [1] [+11]
  GETTABLEN R3 R2 1
  LOADK R5 K4 ["Attachment"]
  NAMECALL R3 R3 K5 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+4]
  GETTABLEN R5 R2 1
  NAMECALL R3 R0 K6 ["_selectInitialInstance"]
  CALL R3 2 0
  RETURN R0 0

PROTO_9:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["Highlight"]
  CALL R1 1 1
  LOADN R2 1
  SETTABLEKS R2 R1 K4 ["FillTransparency"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K5 ["OutlineColor"]
  GETIMPORT R2 K9 [Enum.HighlightDepthMode.AlwaysOnTop]
  SETTABLEKS R2 R1 K10 ["DepthMode"]
  GETTABLEKS R2 R0 K11 ["_constraintToolVisualsFolder"]
  SETTABLEKS R2 R1 K12 ["Parent"]
  SETTABLEKS R1 R0 K13 ["_selectionHighlight"]
  GETUPVAL R3 1
  GETTABLEKS R4 R0 K14 ["_constraintType"]
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+17]
  GETUPVAL R2 2
  NAMECALL R2 R2 K15 ["Get"]
  CALL R2 1 1
  LENGTH R3 R2
  JUMPIFNOTEQKN R3 K16 [1] [+11]
  GETTABLEN R3 R2 1
  LOADK R5 K17 ["BasePart"]
  NAMECALL R3 R3 K18 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+4]
  GETTABLEN R5 R2 1
  NAMECALL R3 R0 K19 ["_selectInitialInstance"]
  CALL R3 2 0
  RETURN R0 0

PROTO_10:
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["CylinderHandleAdornment"]
  CALL R2 1 1
  LOADN R4 1
  GETTABLEKS R5 R0 K4 ["_adornScale"]
  MUL R3 R4 R5
  SETTABLEKS R3 R2 K5 ["Height"]
  LOADK R4 K6 [0.02]
  GETTABLEKS R5 R0 K4 ["_adornScale"]
  MUL R3 R4 R5
  SETTABLEKS R3 R2 K7 ["Radius"]
  LOADN R3 0
  SETTABLEKS R3 R2 K8 ["Transparency"]
  LOADB R3 1
  SETTABLEKS R3 R2 K9 ["AlwaysOnTop"]
  LOADN R3 1
  SETTABLEKS R3 R2 K10 ["ZIndex"]
  GETIMPORT R4 K12 [workspace]
  GETTABLEKS R3 R4 K13 ["Terrain"]
  SETTABLEKS R3 R2 K14 ["Adornee"]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K15 ["Color3"]
  GETTABLEKS R3 R0 K16 ["_constraintToolVisualsFolder"]
  SETTABLEKS R3 R2 K17 ["Parent"]
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K3 ["CylinderHandleAdornment"]
  CALL R3 1 1
  LOADN R5 1
  GETTABLEKS R6 R0 K4 ["_adornScale"]
  MUL R4 R5 R6
  SETTABLEKS R4 R3 K5 ["Height"]
  LOADK R5 K6 [0.02]
  GETTABLEKS R6 R0 K4 ["_adornScale"]
  MUL R4 R5 R6
  SETTABLEKS R4 R3 K7 ["Radius"]
  LOADN R4 0
  SETTABLEKS R4 R3 K8 ["Transparency"]
  LOADB R4 1
  SETTABLEKS R4 R3 K9 ["AlwaysOnTop"]
  LOADN R4 1
  SETTABLEKS R4 R3 K10 ["ZIndex"]
  GETIMPORT R5 K12 [workspace]
  GETTABLEKS R4 R5 K13 ["Terrain"]
  SETTABLEKS R4 R3 K14 ["Adornee"]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K15 ["Color3"]
  GETTABLEKS R4 R0 K16 ["_constraintToolVisualsFolder"]
  SETTABLEKS R4 R3 K17 ["Parent"]
  GETIMPORT R4 K2 [Instance.new]
  LOADK R5 K18 ["ConeHandleAdornment"]
  CALL R4 1 1
  LOADK R6 K19 [0.2]
  GETTABLEKS R7 R0 K4 ["_adornScale"]
  MUL R5 R6 R7
  SETTABLEKS R5 R4 K5 ["Height"]
  LOADK R6 K20 [0.05]
  GETTABLEKS R7 R0 K4 ["_adornScale"]
  MUL R5 R6 R7
  SETTABLEKS R5 R4 K7 ["Radius"]
  LOADN R5 0
  SETTABLEKS R5 R4 K8 ["Transparency"]
  LOADB R5 1
  SETTABLEKS R5 R4 K9 ["AlwaysOnTop"]
  LOADN R5 1
  SETTABLEKS R5 R4 K10 ["ZIndex"]
  GETIMPORT R6 K12 [workspace]
  GETTABLEKS R5 R6 K13 ["Terrain"]
  SETTABLEKS R5 R4 K14 ["Adornee"]
  GETUPVAL R5 0
  SETTABLEKS R5 R4 K15 ["Color3"]
  GETTABLEKS R5 R0 K16 ["_constraintToolVisualsFolder"]
  SETTABLEKS R5 R4 K17 ["Parent"]
  GETIMPORT R5 K2 [Instance.new]
  LOADK R6 K18 ["ConeHandleAdornment"]
  CALL R5 1 1
  LOADK R7 K19 [0.2]
  GETTABLEKS R8 R0 K4 ["_adornScale"]
  MUL R6 R7 R8
  SETTABLEKS R6 R5 K5 ["Height"]
  LOADK R7 K20 [0.05]
  GETTABLEKS R8 R0 K4 ["_adornScale"]
  MUL R6 R7 R8
  SETTABLEKS R6 R5 K7 ["Radius"]
  LOADN R6 0
  SETTABLEKS R6 R5 K8 ["Transparency"]
  LOADB R6 1
  SETTABLEKS R6 R5 K9 ["AlwaysOnTop"]
  LOADN R6 1
  SETTABLEKS R6 R5 K10 ["ZIndex"]
  GETIMPORT R7 K12 [workspace]
  GETTABLEKS R6 R7 K13 ["Terrain"]
  SETTABLEKS R6 R5 K14 ["Adornee"]
  GETUPVAL R6 1
  SETTABLEKS R6 R5 K15 ["Color3"]
  GETTABLEKS R6 R0 K16 ["_constraintToolVisualsFolder"]
  SETTABLEKS R6 R5 K17 ["Parent"]
  LOADB R6 0
  SETTABLEKS R6 R1 K21 ["Visible"]
  LOADB R6 1
  SETTABLEKS R6 R1 K21 ["Visible"]
  GETTABLEKS R6 R0 K22 ["_attachmentArrowVisuals"]
  DUPTABLE R7 K27 [{"shaftRight", "shaftTop", "tipRight", "tipTop"}]
  SETTABLEKS R2 R7 K23 ["shaftRight"]
  SETTABLEKS R3 R7 K24 ["shaftTop"]
  SETTABLEKS R4 R7 K25 ["tipRight"]
  SETTABLEKS R5 R7 K26 ["tipTop"]
  SETTABLE R7 R6 R1
  MOVE R8 R1
  GETIMPORT R9 K29 [CFrame.new]
  LOADK R10 K30 [∞]
  LOADN R11 0
  LOADN R12 0
  CALL R9 3 -1
  NAMECALL R6 R0 K31 ["_orientAttachmentAdornment"]
  CALL R6 -1 0
  RETURN R0 0

PROTO_11:
  JUMPIF R2 [+11]
  LOADK R6 K0 ["Attachment"]
  NAMECALL R4 R1 K1 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+3]
  GETTABLEKS R3 R1 K2 ["WorldCFrame"]
  JUMPIF R3 [+2]
  GETTABLEKS R3 R1 K3 ["CFrame"]
  MOVE R2 R3
  GETTABLEKS R4 R0 K4 ["_attachmentArrowVisuals"]
  GETTABLE R3 R4 R1
  GETTABLEKS R4 R3 K5 ["shaftRight"]
  GETIMPORT R7 K7 [CFrame.Angles]
  LOADN R8 0
  LOADK R9 K8 [-1.5707963267949]
  LOADN R10 0
  CALL R7 3 1
  MUL R6 R2 R7
  GETIMPORT R7 K10 [CFrame.new]
  LOADN R8 0
  LOADN R9 0
  GETTABLEKS R13 R3 K5 ["shaftRight"]
  GETTABLEKS R12 R13 K12 ["Height"]
  MINUS R11 R12
  MULK R10 R11 K11 [0.15]
  CALL R7 3 1
  MUL R5 R6 R7
  SETTABLEKS R5 R4 K3 ["CFrame"]
  GETTABLEKS R4 R3 K13 ["shaftTop"]
  GETIMPORT R7 K7 [CFrame.Angles]
  LOADK R8 K14 [1.5707963267949]
  LOADN R9 0
  LOADN R10 0
  CALL R7 3 1
  MUL R6 R2 R7
  GETIMPORT R7 K10 [CFrame.new]
  LOADN R8 0
  LOADN R9 0
  GETTABLEKS R13 R3 K5 ["shaftRight"]
  GETTABLEKS R12 R13 K12 ["Height"]
  MINUS R11 R12
  MULK R10 R11 K11 [0.15]
  CALL R7 3 1
  MUL R5 R6 R7
  SETTABLEKS R5 R4 K3 ["CFrame"]
  GETTABLEKS R4 R3 K15 ["tipRight"]
  GETTABLEKS R7 R3 K5 ["shaftRight"]
  GETTABLEKS R6 R7 K3 ["CFrame"]
  GETIMPORT R7 K10 [CFrame.new]
  LOADN R8 0
  LOADN R9 0
  GETTABLEKS R13 R3 K5 ["shaftRight"]
  GETTABLEKS R12 R13 K12 ["Height"]
  MINUS R11 R12
  DIVK R10 R11 K16 [2]
  CALL R7 3 1
  MUL R5 R6 R7
  SETTABLEKS R5 R4 K3 ["CFrame"]
  GETTABLEKS R4 R3 K17 ["tipTop"]
  GETTABLEKS R7 R3 K13 ["shaftTop"]
  GETTABLEKS R6 R7 K3 ["CFrame"]
  GETIMPORT R7 K10 [CFrame.new]
  LOADN R8 0
  LOADN R9 0
  GETTABLEKS R13 R3 K13 ["shaftTop"]
  GETTABLEKS R12 R13 K12 ["Height"]
  MINUS R11 R12
  DIVK R10 R11 K16 [2]
  CALL R7 3 1
  MUL R5 R6 R7
  SETTABLEKS R5 R4 K3 ["CFrame"]
  LOADK R6 K0 ["Attachment"]
  NAMECALL R4 R1 K1 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+3]
  SETTABLEKS R2 R1 K2 ["WorldCFrame"]
  RETURN R0 0
  SETTABLEKS R2 R1 K3 ["CFrame"]
  RETURN R0 0

PROTO_12:
  GETTABLEKS R2 R0 K0 ["_mouseCursor"]
  JUMPIFEQ R2 R1 [+9]
  SETTABLEKS R1 R0 K0 ["_mouseCursor"]
  GETTABLEKS R2 R0 K1 ["_draggerContext"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["setMouseIcon"]
  CALL R2 2 0
  RETURN R0 0

PROTO_13:
  LOADK R3 K0 ["rbxasset://textures/ConstraintCursor.png"]
  NAMECALL R1 R0 K1 ["setMouseCursor"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K2 ["_constraintType"]
  GETTABLE R1 R2 R3
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["Portal"]
  DUPTABLE R3 K6 [{"target"}]
  GETTABLEKS R4 R0 K7 ["_draggerContext"]
  NAMECALL R4 R4 K8 ["getGuiParent"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K5 ["target"]
  DUPTABLE R4 K10 [{"DraggerUI"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["createElement"]
  LOADK R6 K11 ["Folder"]
  NEWTABLE R7 0 0
  GETTABLEKS R8 R0 K12 ["_attachmentToolRenderer"]
  NAMECALL R8 R8 K13 ["render"]
  CALL R8 1 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K9 ["DraggerUI"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_14:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["isSimulating"]
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K2 ["_markViewDirtyCallback"]
  CALL R1 0 0
  GETTABLEKS R1 R0 K3 ["_plugin"]
  NAMECALL R1 R1 K4 ["GetSelectedRibbonTool"]
  CALL R1 1 1
  GETIMPORT R2 K8 [Enum.RibbonTool.None]
  JUMPIFEQ R1 R2 [+13]
  GETIMPORT R2 K11 [os.clock]
  CALL R2 0 1
  GETTABLEKS R3 R0 K12 ["_openedTimestamp"]
  SUB R1 R2 R3
  LOADK R2 K13 [0.0166666666666667]
  JUMPIFNOTLT R2 R1 [+4]
  NAMECALL R1 R0 K14 ["_processDeselected"]
  CALL R1 1 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["_draggerSchema"]
  RETURN R1 1

PROTO_16:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["AllowDragSelect"]
  RETURN R1 1

PROTO_17:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowDragSelect"]
  RETURN R1 1

PROTO_18:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowLocalSpaceIndicator"]
  RETURN R1 1

PROTO_19:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowSelectionDot"]
  RETURN R1 1

PROTO_20:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["UseCollisionsTransparency"]
  RETURN R1 1

PROTO_21:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["shouldAlignDraggedObjects"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_22:
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K0 ["_partPassthroughEnabled"]
  JUMPIFNOT R2 [+13]
  GETTABLEKS R2 R0 K1 ["_initialInstance"]
  JUMPIFNOT R2 [+10]
  GETTABLEKS R5 R0 K1 ["_initialInstance"]
  GETTABLEKS R4 R5 K2 ["Parent"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K5 [table.insert]
  CALL R2 2 0
  GETUPVAL R2 0
  JUMPIFNOT R2 [+11]
  GETTABLEKS R2 R0 K6 ["_ghostAssembly"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R4 R0 K6 ["_ghostAssembly"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K5 [table.insert]
  CALL R2 2 0
  RETURN R1 1

PROTO_23:
  MOVE R3 R2
  JUMPIF R3 [+4]
  GETTABLEKS R4 R0 K0 ["_initialInstance"]
  GETTABLEKS R3 R4 K1 ["Parent"]
  JUMPIFNOT R3 [+5]
  GETUPVAL R5 0
  GETTABLEKS R6 R0 K2 ["_constraintType"]
  GETTABLE R4 R5 R6
  JUMPIFNOT R4 [+1]
  RETURN R0 0
  LOADK R6 K3 ["BasePart"]
  NAMECALL R4 R3 K4 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+2]
  SETTABLEKS R1 R3 K5 ["LocalTransparencyModifier"]
  NAMECALL R4 R3 K6 ["GetChildren"]
  CALL R4 1 3
  FORGPREP R4
  LOADK R11 K7 ["Decal"]
  NAMECALL R9 R8 K4 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+2]
  SETTABLEKS R1 R8 K5 ["LocalTransparencyModifier"]
  FORGLOOP R4 2 [-8]
  RETURN R0 0

PROTO_24:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["getMouseRay"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K2 ["_constraintType"]
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+114]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["raycast"]
  MOVE R3 R1
  NEWTABLE R4 0 0
  CALL R2 2 1
  JUMPIFNOT R2 [+43]
  GETTABLEKS R3 R0 K4 ["_selectionHighlight"]
  GETTABLEKS R4 R2 K5 ["Instance"]
  SETTABLEKS R4 R3 K6 ["Adornee"]
  GETTABLEKS R3 R0 K7 ["_constraintConnectionVisual"]
  JUMPIFNOT R3 [+34]
  GETTABLEKS R5 R2 K8 ["Position"]
  GETTABLEKS R7 R0 K9 ["_initialInstance"]
  GETTABLEKS R6 R7 K8 ["Position"]
  SUB R4 R5 R6
  GETTABLEKS R3 R4 K10 ["Magnitude"]
  GETTABLEKS R4 R0 K7 ["_constraintConnectionVisual"]
  GETIMPORT R6 K13 [CFrame.lookAt]
  GETTABLEKS R8 R0 K9 ["_initialInstance"]
  GETTABLEKS R7 R8 K8 ["Position"]
  GETTABLEKS R8 R2 K8 ["Position"]
  CALL R6 2 1
  GETIMPORT R7 K15 [CFrame.new]
  LOADN R8 0
  LOADN R9 0
  MINUS R11 R3
  MULK R10 R11 K16 [0.5]
  CALL R7 3 1
  MUL R5 R6 R7
  SETTABLEKS R5 R4 K11 ["CFrame"]
  GETTABLEKS R4 R0 K7 ["_constraintConnectionVisual"]
  SETTABLEKS R3 R4 K17 ["Height"]
  GETTABLEKS R3 R0 K7 ["_constraintConnectionVisual"]
  JUMPIFNOT R3 [+45]
  GETUPVAL R3 2
  NAMECALL R4 R0 K18 ["_canMouseDown"]
  CALL R4 1 1
  JUMPIF R4 [+2]
  GETUPVAL R3 3
  JUMP [+34]
  GETTABLEKS R4 R0 K9 ["_initialInstance"]
  JUMPIFNOT R4 [+31]
  GETTABLEKS R4 R0 K19 ["_currentHoveringInstance"]
  JUMPIFNOT R4 [+28]
  GETTABLEKS R4 R0 K19 ["_currentHoveringInstance"]
  LOADK R6 K20 ["BasePart"]
  NAMECALL R4 R4 K21 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+21]
  GETTABLEKS R5 R0 K19 ["_currentHoveringInstance"]
  GETTABLEKS R4 R5 K22 ["AssemblyRootPart"]
  GETTABLEKS R6 R0 K9 ["_initialInstance"]
  GETTABLEKS R5 R6 K22 ["AssemblyRootPart"]
  JUMPIFEQ R4 R5 [+11]
  GETTABLEKS R5 R0 K19 ["_currentHoveringInstance"]
  GETTABLEKS R4 R5 K23 ["Anchored"]
  JUMPIFNOT R4 [+6]
  GETTABLEKS R5 R0 K9 ["_initialInstance"]
  GETTABLEKS R4 R5 K23 ["Anchored"]
  JUMPIFNOT R4 [+1]
  GETUPVAL R3 4
  GETTABLEKS R4 R0 K7 ["_constraintConnectionVisual"]
  SETTABLEKS R3 R4 K24 ["Color3"]
  GETTABLEKS R3 R0 K4 ["_selectionHighlight"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K25 ["Enabled"]
  MOVE R3 R2
  JUMPIFNOT R3 [+2]
  GETTABLEKS R3 R2 K5 ["Instance"]
  SETTABLEKS R3 R0 K19 ["_currentHoveringInstance"]
  RETURN R0 0
  LOADNIL R2
  GETTABLEKS R3 R0 K26 ["_lastDragTarget"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R3 R0 K26 ["_lastDragTarget"]
  GETTABLEKS R2 R3 K27 ["targetMatrix"]
  GETTABLEKS R3 R0 K28 ["_tiltRotate"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K29 ["getDragTarget"]
  NAMECALL R5 R0 K30 ["getRaycastIgnoreList"]
  CALL R5 1 1
  GETIMPORT R6 K32 [CFrame.identity]
  LOADK R7 K33 [{0, 0, 0}]
  LOADK R8 K33 [{0, 0, 0}]
  LOADK R9 K33 [{0, 0, 0}]
  MOVE R10 R1
  GETTABLEKS R12 R0 K0 ["_draggerContext"]
  NAMECALL R12 R12 K34 ["shouldGridSnap"]
  CALL R12 1 1
  JUMPIFNOT R12 [+6]
  GETTABLEKS R11 R0 K0 ["_draggerContext"]
  NAMECALL R11 R11 K35 ["getGridSize"]
  CALL R11 1 1
  JUMP [+1]
  LOADNIL R11
  MOVE R12 R3
  MOVE R13 R2
  NAMECALL R14 R0 K36 ["shouldAlignDraggedObjects"]
  CALL R14 1 1
  JUMPIFNOT R14 [+6]
  GETTABLEKS R15 R0 K0 ["_draggerContext"]
  NAMECALL R15 R15 K37 ["isAltKeyDown"]
  CALL R15 1 1
  NOT R14 R15
  LOADB R15 0
  GETTABLEKS R16 R0 K0 ["_draggerContext"]
  NAMECALL R16 R16 K38 ["getSoftSnapMarginFactor"]
  CALL R16 1 1
  GETTABLEKS R17 R0 K0 ["_draggerContext"]
  NAMECALL R17 R17 K39 ["shouldPartSnap"]
  CALL R17 1 1
  LOADB R18 1
  CALL R4 14 1
  GETTABLEKS R5 R0 K0 ["_draggerContext"]
  GETTABLEKS R7 R1 K40 ["Origin"]
  GETTABLEKS R8 R1 K41 ["Direction"]
  GETIMPORT R9 K43 [RaycastParams.new]
  CALL R9 0 -1
  NAMECALL R5 R5 K44 ["gizmoRaycast"]
  CALL R5 -1 1
  LOADNIL R6
  LOADNIL R7
  JUMPIFNOT R5 [+25]
  GETTABLEKS R8 R5 K5 ["Instance"]
  JUMPIFNOT R8 [+22]
  GETTABLEKS R8 R5 K5 ["Instance"]
  LOADK R10 K45 ["Attachment"]
  NAMECALL R8 R8 K21 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+15]
  GETTABLEKS R8 R5 K5 ["Instance"]
  GETTABLEKS R9 R0 K9 ["_initialInstance"]
  JUMPIFEQ R8 R9 [+10]
  GETTABLEKS R8 R0 K2 ["_constraintType"]
  JUMPIFEQKS R8 K45 ["Attachment"] [+6]
  GETTABLEKS R7 R5 K5 ["Instance"]
  GETTABLEKS R6 R7 K46 ["WorldCFrame"]
  JUMP [+8]
  JUMPIFNOT R4 [+7]
  GETTABLEKS R8 R4 K47 ["targetPart"]
  JUMPIFNOT R8 [+4]
  GETTABLEKS R7 R4 K47 ["targetPart"]
  GETTABLEKS R6 R4 K48 ["mainCFrame"]
  GETTABLEKS R8 R0 K9 ["_initialInstance"]
  JUMPIF R8 [+24]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K3 ["raycast"]
  MOVE R9 R1
  NEWTABLE R10 0 0
  CALL R8 2 1
  JUMPIFNOT R8 [+16]
  GETTABLEKS R9 R0 K49 ["_lastNormal"]
  GETTABLEKS R10 R8 K50 ["Normal"]
  JUMPIFEQ R9 R10 [+7]
  GETTABLEKS R10 R4 K51 ["baseCFrame"]
  GETTABLEKS R9 R10 K52 ["Rotation"]
  SETTABLEKS R9 R0 K53 ["_lastDraggedInstanceDefaultOrientation"]
  GETTABLEKS R9 R8 K50 ["Normal"]
  SETTABLEKS R9 R0 K49 ["_lastNormal"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R8 R4 K47 ["targetPart"]
  JUMPIFNOT R8 [+2]
  SETTABLEKS R4 R0 K26 ["_lastDragTarget"]
  GETTABLEKS R8 R0 K9 ["_initialInstance"]
  JUMPIFNOT R8 [+6]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R8 R4 K51 ["baseCFrame"]
  GETTABLEKS R9 R0 K28 ["_tiltRotate"]
  MUL R6 R8 R9
  SETTABLEKS R7 R0 K19 ["_currentHoveringInstance"]
  GETTABLEKS R8 R0 K4 ["_selectionHighlight"]
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K25 ["Enabled"]
  GETTABLEKS R8 R0 K4 ["_selectionHighlight"]
  SETTABLEKS R7 R8 K6 ["Adornee"]
  JUMPIFNOT R7 [+197]
  GETUPVAL R8 5
  JUMPIFNOT R8 [+78]
  GETTABLEKS R8 R0 K54 ["_ghostAssembly"]
  JUMPIFNOT R8 [+4]
  GETTABLEKS R8 R0 K55 ["_lastHoveringInstance"]
  JUMPIFEQ R8 R7 [+72]
  GETTABLEKS R8 R0 K54 ["_ghostAssembly"]
  JUMPIFNOT R8 [+8]
  GETTABLEKS R8 R0 K54 ["_ghostAssembly"]
  NAMECALL R8 R8 K56 ["Destroy"]
  CALL R8 1 0
  LOADNIL R8
  SETTABLEKS R8 R0 K54 ["_ghostAssembly"]
  GETTABLEKS R8 R0 K9 ["_initialInstance"]
  JUMPIFNOT R8 [+57]
  GETIMPORT R8 K57 [Instance.new]
  LOADK R9 K58 ["Model"]
  CALL R8 1 1
  SETTABLEKS R8 R0 K54 ["_ghostAssembly"]
  GETTABLEKS R8 R0 K54 ["_ghostAssembly"]
  LOADK R9 K59 ["GhostAssembly"]
  SETTABLEKS R9 R8 K60 ["Name"]
  GETTABLEKS R8 R0 K54 ["_ghostAssembly"]
  LOADB R9 0
  SETTABLEKS R9 R8 K61 ["Archivable"]
  GETTABLEKS R8 R0 K54 ["_ghostAssembly"]
  GETIMPORT R10 K63 [workspace]
  GETTABLEKS R9 R10 K64 ["CurrentCamera"]
  SETTABLEKS R9 R8 K65 ["Parent"]
  GETTABLEKS R9 R0 K9 ["_initialInstance"]
  GETTABLEKS R8 R9 K65 ["Parent"]
  NAMECALL R8 R8 K66 ["Clone"]
  CALL R8 1 1
  GETTABLEKS R9 R0 K54 ["_ghostAssembly"]
  SETTABLEKS R9 R8 K65 ["Parent"]
  GETTABLEKS R9 R0 K54 ["_ghostAssembly"]
  SETTABLEKS R8 R9 K67 ["PrimaryPart"]
  GETTABLEKS R10 R0 K9 ["_initialInstance"]
  GETTABLEKS R9 R10 K65 ["Parent"]
  LOADB R11 1
  NAMECALL R9 R9 K68 ["GetConnectedParts"]
  CALL R9 2 3
  FORGPREP R9
  NAMECALL R14 R13 K66 ["Clone"]
  CALL R14 1 1
  GETTABLEKS R15 R0 K54 ["_ghostAssembly"]
  SETTABLEKS R15 R14 K65 ["Parent"]
  FORGLOOP R9 2 [-8]
  GETTABLEKS R8 R0 K69 ["_attachmentAdornment"]
  NAMECALL R10 R0 K18 ["_canMouseDown"]
  CALL R10 1 1
  JUMPIFNOT R10 [+2]
  GETUPVAL R9 6
  JUMPIF R9 [+1]
  GETUPVAL R9 7
  SETTABLEKS R9 R8 K24 ["Color3"]
  GETTABLEKS R8 R0 K53 ["_lastDraggedInstanceDefaultOrientation"]
  JUMPIFNOT R8 [+11]
  GETIMPORT R9 K15 [CFrame.new]
  GETTABLEKS R10 R6 K8 ["Position"]
  CALL R9 1 1
  GETTABLEKS R10 R0 K53 ["_lastDraggedInstanceDefaultOrientation"]
  MUL R8 R9 R10
  GETTABLEKS R9 R0 K28 ["_tiltRotate"]
  MUL R6 R8 R9
  GETTABLEKS R8 R0 K70 ["_attachmentToolAnimator"]
  NAMECALL R8 R8 K71 ["inProgress"]
  CALL R8 1 1
  JUMPIF R8 [+6]
  GETTABLEKS R10 R0 K69 ["_attachmentAdornment"]
  MOVE R11 R6
  NAMECALL R8 R0 K72 ["_orientAttachmentAdornment"]
  CALL R8 3 0
  GETTABLEKS R8 R0 K9 ["_initialInstance"]
  JUMPIFNOT R8 [+77]
  GETTABLEKS R9 R0 K9 ["_initialInstance"]
  GETTABLEKS R8 R9 K46 ["WorldCFrame"]
  GETTABLEKS R12 R0 K9 ["_initialInstance"]
  GETTABLEKS R11 R12 K65 ["Parent"]
  GETTABLEKS R10 R11 K11 ["CFrame"]
  NAMECALL R8 R8 K73 ["ToObjectSpace"]
  CALL R8 2 1
  GETTABLEKS R11 R6 K74 ["p"]
  GETTABLEKS R14 R0 K9 ["_initialInstance"]
  GETTABLEKS R13 R14 K46 ["WorldCFrame"]
  GETTABLEKS R12 R13 K74 ["p"]
  SUB R10 R11 R12
  GETTABLEKS R9 R10 K10 ["Magnitude"]
  GETTABLEKS R10 R0 K7 ["_constraintConnectionVisual"]
  GETIMPORT R12 K13 [CFrame.lookAt]
  GETTABLEKS R15 R0 K9 ["_initialInstance"]
  GETTABLEKS R14 R15 K46 ["WorldCFrame"]
  GETTABLEKS R13 R14 K74 ["p"]
  GETTABLEKS R14 R6 K74 ["p"]
  CALL R12 2 1
  GETIMPORT R13 K15 [CFrame.new]
  LOADN R14 0
  LOADN R15 0
  MINUS R17 R9
  MULK R16 R17 K16 [0.5]
  CALL R13 3 1
  MUL R11 R12 R13
  SETTABLEKS R11 R10 K11 ["CFrame"]
  GETTABLEKS R10 R0 K7 ["_constraintConnectionVisual"]
  SETTABLEKS R9 R10 K17 ["Height"]
  GETTABLEKS R13 R0 K75 ["_partPassthroughEnabled"]
  JUMPIFNOT R13 [+2]
  LOADK R12 K16 [0.5]
  JUMP [+1]
  LOADN R12 0
  NAMECALL R10 R0 K76 ["_setInitialInstanceTransparency"]
  CALL R10 2 0
  GETTABLEKS R12 R0 K77 ["_initialInstanceAdornment"]
  GETTABLEKS R14 R0 K9 ["_initialInstance"]
  GETTABLEKS R13 R14 K46 ["WorldCFrame"]
  NAMECALL R10 R0 K72 ["_orientAttachmentAdornment"]
  CALL R10 3 0
  GETUPVAL R10 5
  JUMPIFNOT R10 [+6]
  GETTABLEKS R10 R0 K54 ["_ghostAssembly"]
  MUL R12 R6 R8
  NAMECALL R10 R10 K78 ["SetPrimaryPartCFrame"]
  CALL R10 2 0
  RETURN R0 0

PROTO_25:
  LOADNIL R2
  LOADNIL R3
  GETTABLEKS R4 R0 K0 ["_lastDraggedInstanceDefaultOrientation"]
  JUMPIFNOT R4 [+36]
  LOADK R4 K1 [{0, 1, 0}]
  JUMPIFEQ R1 R4 [+34]
  GETTABLEKS R4 R0 K2 ["_draggerContext"]
  NAMECALL R4 R4 K3 ["getCameraCFrame"]
  CALL R4 1 1
  MOVE R6 R1
  NAMECALL R4 R4 K4 ["VectorToWorldSpace"]
  CALL R4 2 1
  LOADK R5 K5 [-∞]
  GETIMPORT R6 K7 [ipairs]
  GETUPVAL R7 0
  CALL R6 1 3
  FORGPREP_INEXT R6
  GETTABLEKS R11 R0 K0 ["_lastDraggedInstanceDefaultOrientation"]
  MOVE R13 R10
  NAMECALL R11 R11 K4 ["VectorToWorldSpace"]
  CALL R11 2 1
  MOVE R13 R4
  NAMECALL R11 R11 K8 ["Dot"]
  CALL R11 2 1
  JUMPIFNOTLT R5 R11 [+3]
  MOVE R3 R10
  MOVE R5 R11
  FORGLOOP R6 2 [inext] [-15]
  ORK R3 R3 K1 [{0, 1, 0}]
  JUMP [+1]
  MOVE R3 R1
  GETUPVAL R4 1
  GETIMPORT R5 K11 [CFrame.fromAxisAngle]
  MOVE R6 R3
  LOADK R7 K12 [1.5707963267949]
  CALL R5 2 -1
  CALL R4 -1 1
  GETTABLEKS R5 R0 K13 ["_tiltRotate"]
  MUL R2 R4 R5
  GETTABLEKS R5 R0 K14 ["_lastDragTarget"]
  JUMPIFNOT R5 [+26]
  GETTABLEKS R5 R0 K0 ["_lastDraggedInstanceDefaultOrientation"]
  JUMPIFNOT R5 [+16]
  GETTABLEKS R5 R0 K15 ["_attachmentToolAnimator"]
  GETIMPORT R7 K17 [CFrame.new]
  GETTABLEKS R10 R0 K14 ["_lastDragTarget"]
  GETTABLEKS R9 R10 K18 ["baseCFrame"]
  GETTABLEKS R8 R9 K19 ["Position"]
  CALL R7 1 1
  GETTABLEKS R8 R0 K0 ["_lastDraggedInstanceDefaultOrientation"]
  MUL R6 R7 R8
  SETTABLEKS R6 R5 K20 ["_overrideBaseRotation"]
  GETTABLEKS R5 R0 K15 ["_attachmentToolAnimator"]
  MOVE R7 R2
  NAMECALL R5 R5 K21 ["beginAnimation"]
  CALL R5 2 0
  JUMP [+2]
  SETTABLEKS R2 R0 K13 ["_tiltRotate"]
  NAMECALL R5 R0 K22 ["_updateAttachment"]
  CALL R5 1 0
  NAMECALL R5 R0 K23 ["_scheduleRender"]
  CALL R5 1 0
  RETURN R0 0

PROTO_26:
  GETTABLEKS R1 R0 K0 ["_initialInstance"]
  NAMECALL R2 R0 K1 ["_clearInitialInstance"]
  CALL R2 1 0
  JUMPIFNOT R1 [+13]
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K2 ["_constraintType"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+8]
  GETTABLEKS R2 R0 K3 ["_existingInitialAttachment"]
  JUMPIF R2 [+5]
  GETUPVAL R2 1
  NAMECALL R2 R2 K4 ["Undo"]
  CALL R2 1 0
  LOADNIL R1
  GETUPVAL R2 2
  JUMPIFNOT R2 [+11]
  GETTABLEKS R2 R0 K5 ["_ghostAssembly"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K5 ["_ghostAssembly"]
  NAMECALL R2 R2 K6 ["Destroy"]
  CALL R2 1 0
  LOADNIL R2
  SETTABLEKS R2 R0 K5 ["_ghostAssembly"]
  GETTABLEKS R3 R0 K7 ["_constraintToolVisualsFolder"]
  GETTABLEKS R2 R3 K8 ["Parent"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K7 ["_constraintToolVisualsFolder"]
  NAMECALL R2 R2 K6 ["Destroy"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K9 ["_gizmoConnection"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K9 ["_gizmoConnection"]
  NAMECALL R2 R2 K10 ["Disconnect"]
  CALL R2 1 0
  NAMECALL R2 R0 K11 ["_removeAttachmentAdorns"]
  CALL R2 1 0
  NAMECALL R2 R0 K12 ["_removeConstraintVisuals"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K13 ["_closePluginCallback"]
  CALL R2 0 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_processSelectionChanged"]
  CALL R0 1 0
  RETURN R0 0

PROTO_28:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowPivotIndicator"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["_draggerContext"]
  LOADB R3 1
  NAMECALL R1 R1 K3 ["setPivotIndicator"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["_oldShowPivot"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["SelectionChanged"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K6 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K7 ["_selectionChangedConnection"]
  RETURN R0 0

PROTO_29:
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
  GETTABLEKS R1 R0 K7 ["_selectionChangedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K7 ["_selectionChangedConnection"]
  NAMECALL R1 R1 K8 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["_selectionChangedConnection"]
  LOADNIL R1
  SETTABLEKS R1 R0 K9 ["_recordingIdentifier"]
  NAMECALL R1 R0 K10 ["_closeTool"]
  CALL R1 1 0
  RETURN R0 0

PROTO_30:
  NAMECALL R1 R0 K0 ["_scheduleRender"]
  CALL R1 1 0
  RETURN R0 0

PROTO_31:
  SETTABLEKS R1 R0 K0 ["_constraintType"]
  RETURN R0 0

PROTO_32:
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["_constraintType"]
  GETTABLE R1 R2 R3
  RETURN R1 1

PROTO_33:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["CylinderHandleAdornment"]
  CALL R1 1 1
  LOADB R2 1
  SETTABLEKS R2 R1 K4 ["AlwaysOnTop"]
  GETIMPORT R3 K6 [workspace]
  GETTABLEKS R2 R3 K7 ["Terrain"]
  SETTABLEKS R2 R1 K8 ["Adornee"]
  LOADN R2 0
  SETTABLEKS R2 R1 K9 ["ZIndex"]
  LOADK R3 K10 [0.05]
  GETTABLEKS R4 R0 K11 ["_adornScale"]
  MUL R2 R3 R4
  SETTABLEKS R2 R1 K12 ["Radius"]
  GETTABLEKS R2 R0 K13 ["_constraintToolVisualsFolder"]
  SETTABLEKS R2 R1 K14 ["Parent"]
  SETTABLEKS R1 R0 K15 ["_constraintConnectionVisual"]
  RETURN R0 0

PROTO_34:
  GETTABLEKS R1 R0 K0 ["_constraintConnectionVisual"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_constraintConnectionVisual"]
  NAMECALL R1 R1 K1 ["Destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_constraintConnectionVisual"]
  RETURN R0 0

PROTO_35:
  GETTABLEKS R1 R0 K0 ["_attachmentArrowVisuals"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  NAMECALL R6 R4 K1 ["Destroy"]
  CALL R6 1 0
  MOVE R6 R5
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  NAMECALL R11 R10 K1 ["Destroy"]
  CALL R11 1 0
  FORGLOOP R6 2 [-4]
  FORGLOOP R1 2 [-13]
  GETIMPORT R1 K4 [table.clear]
  GETTABLEKS R2 R0 K0 ["_attachmentArrowVisuals"]
  CALL R1 1 0
  RETURN R0 0

PROTO_36:
  GETIMPORT R2 K3 [Enum.KeyCode.R]
  JUMPIFNOTEQ R1 R2 [+6]
  LOADK R4 K4 [{0, 1, 0}]
  NAMECALL R2 R0 K5 ["_rotateAttachment"]
  CALL R2 2 0
  RETURN R0 0
  GETIMPORT R2 K7 [Enum.KeyCode.T]
  JUMPIFNOTEQ R1 R2 [+6]
  LOADK R4 K8 [{1, 0, 0}]
  NAMECALL R2 R0 K5 ["_rotateAttachment"]
  CALL R2 2 0
  RETURN R0 0
  GETIMPORT R2 K10 [Enum.KeyCode.H]
  JUMPIFNOTEQ R1 R2 [+18]
  GETTABLEKS R2 R0 K11 ["_draggerContext"]
  LOADK R4 K12 ["HotkeyUsageHidden"]
  GETTABLEKS R6 R0 K11 ["_draggerContext"]
  LOADK R8 K12 ["HotkeyUsageHidden"]
  NAMECALL R6 R6 K13 ["getSetting"]
  CALL R6 2 1
  NOT R5 R6
  NAMECALL R2 R2 K14 ["setSetting"]
  CALL R2 3 0
  NAMECALL R2 R0 K15 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0
  GETIMPORT R2 K17 [Enum.KeyCode.G]
  JUMPIFNOTEQ R1 R2 [+15]
  GETUPVAL R2 0
  JUMPIFNOT R2 [+12]
  GETTABLEKS R3 R0 K18 ["_partPassthroughEnabled"]
  NOT R2 R3
  SETTABLEKS R2 R0 K18 ["_partPassthroughEnabled"]
  NAMECALL R2 R0 K19 ["_updateAttachment"]
  CALL R2 1 0
  NAMECALL R2 R0 K15 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0
  GETIMPORT R2 K21 [Enum.KeyCode.M]
  JUMPIFNOTEQ R1 R2 [+21]
  GETTABLEKS R3 R0 K22 ["_addMultipleConstraintsEnabled"]
  NOT R2 R3
  SETTABLEKS R2 R0 K22 ["_addMultipleConstraintsEnabled"]
  GETTABLEKS R2 R0 K11 ["_draggerContext"]
  LOADK R4 K23 ["MultipleConstraintMode"]
  GETTABLEKS R5 R0 K22 ["_addMultipleConstraintsEnabled"]
  NAMECALL R2 R2 K14 ["setSetting"]
  CALL R2 3 0
  NAMECALL R2 R0 K19 ["_updateAttachment"]
  CALL R2 1 0
  NAMECALL R2 R0 K15 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 1
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+6]
  NAMECALL R2 R0 K19 ["_updateAttachment"]
  CALL R2 1 0
  NAMECALL R2 R0 K15 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0

PROTO_37:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+6]
  NAMECALL R2 R0 K0 ["_updateAttachment"]
  CALL R2 1 0
  NAMECALL R2 R0 K1 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0

PROTO_38:
  GETTABLEKS R1 R0 K0 ["_ancestryChangedConnection"]
  JUMPIFNOT R1 [+48]
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K1 ["_constraintType"]
  GETTABLE R1 R2 R3
  JUMPIF R1 [+25]
  GETTABLEKS R2 R0 K2 ["_attachmentArrowVisuals"]
  GETTABLEKS R3 R0 K3 ["_initialInstanceAdornment"]
  GETTABLE R1 R2 R3
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  NAMECALL R7 R6 K4 ["Destroy"]
  CALL R7 1 0
  FORGLOOP R2 2 [-4]
  GETTABLEKS R2 R0 K3 ["_initialInstanceAdornment"]
  NAMECALL R2 R2 K4 ["Destroy"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K2 ["_attachmentArrowVisuals"]
  GETTABLEKS R3 R0 K3 ["_initialInstanceAdornment"]
  LOADNIL R4
  SETTABLE R4 R2 R3
  LOADN R3 0
  NAMECALL R1 R0 K5 ["_setInitialInstanceTransparency"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K0 ["_ancestryChangedConnection"]
  NAMECALL R1 R1 K6 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_ancestryChangedConnection"]
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["_initialInstance"]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_initialInstanceAdornment"]
  RETURN R0 0

PROTO_39:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Parent"]
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 0
  GETIMPORT R2 K2 [workspace]
  NAMECALL R0 R0 K3 ["IsDescendantOf"]
  CALL R0 2 1
  JUMPIF R0 [+8]
  GETUPVAL R0 1
  NAMECALL R0 R0 K4 ["_clearInitialInstance"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K5 ["_removeConstraintVisuals"]
  CALL R0 1 0
  RETURN R0 0

PROTO_40:
  NAMECALL R2 R0 K0 ["_clearInitialInstance"]
  CALL R2 1 0
  SETTABLEKS R1 R0 K1 ["_initialInstance"]
  GETTABLEKS R2 R1 K2 ["AncestryChanged"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  NAMECALL R2 R2 K3 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K4 ["_ancestryChangedConnection"]
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K5 ["_constraintType"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+5]
  NAMECALL R2 R0 K6 ["_createAttachmentAdornment"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K7 ["_initialInstanceAdornment"]
  NAMECALL R2 R0 K8 ["_createConstraintVisuals"]
  CALL R2 1 0
  RETURN R0 0

PROTO_41:
  NAMECALL R1 R0 K0 ["_getConstraintData"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K1 ["_constraintType"]
  GETTABLE R2 R3 R4
  GETTABLEKS R3 R0 K2 ["_currentHoveringInstance"]
  JUMPIF R3 [+2]
  LOADB R3 0
  RETURN R3 1
  JUMPIFNOT R1 [+37]
  GETTABLEKS R3 R1 K3 ["Attachments"]
  JUMPIFNOTEQKN R3 K4 [2] [+34]
  GETTABLEKS R3 R0 K5 ["_initialInstance"]
  JUMPIFNOT R3 [+30]
  GETTABLEKS R3 R1 K6 ["IgnoreSamePartCheck"]
  JUMPIF R3 [+27]
  GETTABLEKS R3 R0 K2 ["_currentHoveringInstance"]
  LOADK R6 K7 ["Attachment"]
  NAMECALL R4 R3 K8 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+2]
  GETTABLEKS R3 R3 K9 ["Parent"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R4 R0 K5 ["_initialInstance"]
  GETTABLEKS R5 R0 K2 ["_currentHoveringInstance"]
  JUMPIFNOTEQ R4 R5 [+3]
  LOADB R4 0
  RETURN R4 1
  JUMPIF R2 [+8]
  GETTABLEKS R5 R0 K5 ["_initialInstance"]
  GETTABLEKS R4 R5 K9 ["Parent"]
  JUMPIFNOTEQ R4 R3 [+3]
  LOADB R4 0
  RETURN R4 1
  LOADB R3 1
  RETURN R3 1

PROTO_42:
  GETTABLEKS R1 R0 K0 ["_isMouseDown"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_isMouseDown"]
  NAMECALL R1 R0 K1 ["_canMouseDown"]
  CALL R1 1 1
  JUMPIF R1 [+1]
  RETURN R0 0
  LOADNIL R1
  GETUPVAL R2 0
  GETUPVAL R4 1
  LOADK R5 K2 ["Placing Constraint"]
  NAMECALL R2 R2 K3 ["TryBeginRecording"]
  CALL R2 3 1
  GETIMPORT R3 K7 [Enum.FinishRecordingOperation.Commit]
  NAMECALL R4 R0 K8 ["_getConstraintData"]
  CALL R4 1 1
  LOADK R5 K9 ["default"]
  LOADB R6 0
  LOADB R7 1
  LOADB R8 0
  SETTABLEKS R8 R0 K10 ["_existingInitialAttachment"]
  LOADB R8 0
  GETUPVAL R10 2
  GETTABLEKS R11 R0 K11 ["_constraintType"]
  GETTABLE R9 R10 R11
  JUMPIFNOT R9 [+38]
  GETTABLEKS R9 R0 K12 ["_initialInstance"]
  JUMPIFNOT R9 [+27]
  GETIMPORT R9 K15 [Instance.new]
  GETTABLEKS R10 R0 K11 ["_constraintType"]
  GETTABLEKS R11 R0 K12 ["_initialInstance"]
  CALL R9 2 1
  MOVE R1 R9
  GETTABLEKS R9 R0 K12 ["_initialInstance"]
  SETTABLEKS R9 R1 K16 ["Part0"]
  GETTABLEKS R9 R0 K17 ["_currentHoveringInstance"]
  SETTABLEKS R9 R1 K18 ["Part1"]
  GETUPVAL R9 3
  NEWTABLE R11 0 1
  MOVE R12 R1
  SETLIST R11 R12 1 [1]
  NAMECALL R9 R9 K19 ["Set"]
  CALL R9 2 0
  LOADB R8 1
  JUMP [+241]
  GETTABLEKS R11 R0 K17 ["_currentHoveringInstance"]
  NAMECALL R9 R0 K20 ["_selectInitialInstance"]
  CALL R9 2 0
  GETIMPORT R3 K22 [Enum.FinishRecordingOperation.Cancel]
  JUMP [+233]
  GETTABLEKS R10 R0 K11 ["_constraintType"]
  JUMPIFNOTEQKS R10 K23 ["Bone"] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  GETTABLEKS R10 R0 K11 ["_constraintType"]
  JUMPIFNOTEQKS R10 K23 ["Bone"] [+33]
  GETIMPORT R10 K15 [Instance.new]
  LOADK R11 K23 ["Bone"]
  CALL R10 1 1
  MOVE R1 R10
  GETTABLEKS R11 R0 K17 ["_currentHoveringInstance"]
  GETTABLEKS R10 R11 K24 ["CFrame"]
  GETTABLEKS R13 R0 K25 ["_attachmentAdornment"]
  GETTABLEKS R12 R13 K24 ["CFrame"]
  NAMECALL R10 R10 K26 ["ToObjectSpace"]
  CALL R10 2 1
  SETTABLEKS R10 R1 K24 ["CFrame"]
  GETTABLEKS R10 R0 K17 ["_currentHoveringInstance"]
  SETTABLEKS R10 R1 K27 ["Parent"]
  GETUPVAL R10 3
  NEWTABLE R12 0 1
  MOVE R13 R1
  SETLIST R12 R13 1 [1]
  NAMECALL R10 R10 K19 ["Set"]
  CALL R10 2 0
  JUMP [+42]
  GETTABLEKS R10 R0 K17 ["_currentHoveringInstance"]
  LOADK R12 K28 ["Attachment"]
  NAMECALL R10 R10 K29 ["IsA"]
  CALL R10 2 1
  JUMPIFNOT R10 [+4]
  GETTABLEKS R1 R0 K17 ["_currentHoveringInstance"]
  LOADB R7 0
  JUMP [+31]
  GETIMPORT R10 K15 [Instance.new]
  LOADK R11 K28 ["Attachment"]
  CALL R10 1 1
  MOVE R1 R10
  GETTABLEKS R11 R0 K17 ["_currentHoveringInstance"]
  GETTABLEKS R10 R11 K24 ["CFrame"]
  GETTABLEKS R13 R0 K25 ["_attachmentAdornment"]
  GETTABLEKS R12 R13 K24 ["CFrame"]
  NAMECALL R10 R10 K26 ["ToObjectSpace"]
  CALL R10 2 1
  SETTABLEKS R10 R1 K24 ["CFrame"]
  GETTABLEKS R10 R0 K17 ["_currentHoveringInstance"]
  SETTABLEKS R10 R1 K27 ["Parent"]
  GETUPVAL R10 3
  NEWTABLE R12 0 1
  MOVE R13 R1
  SETLIST R12 R13 1 [1]
  NAMECALL R10 R10 K19 ["Set"]
  CALL R10 2 0
  LOADNIL R10
  GETTABLEKS R11 R4 K30 ["Attachments"]
  JUMPIFNOTEQKN R11 K31 [2] [+102]
  GETTABLEKS R11 R0 K12 ["_initialInstance"]
  JUMPIFNOT R11 [+71]
  JUMPIFNOT R7 [+3]
  LOADK R11 K32 ["Attachment1"]
  SETTABLEKS R11 R1 K33 ["Name"]
  GETIMPORT R11 K15 [Instance.new]
  GETTABLEKS R12 R0 K11 ["_constraintType"]
  GETTABLEKS R14 R0 K12 ["_initialInstance"]
  GETTABLEKS R13 R14 K27 ["Parent"]
  CALL R11 2 1
  MOVE R10 R11
  GETTABLEKS R11 R0 K12 ["_initialInstance"]
  SETTABLEKS R11 R10 K34 ["Attachment0"]
  SETTABLEKS R1 R10 K32 ["Attachment1"]
  GETTABLEKS R14 R1 K35 ["WorldCFrame"]
  GETTABLEKS R13 R14 K36 ["p"]
  GETTABLEKS R16 R0 K12 ["_initialInstance"]
  GETTABLEKS R15 R16 K35 ["WorldCFrame"]
  GETTABLEKS R14 R15 K36 ["p"]
  SUB R12 R13 R14
  GETTABLEKS R11 R12 K37 ["Magnitude"]
  GETTABLEKS R12 R0 K11 ["_constraintType"]
  JUMPIFEQKS R12 K38 ["RopeConstraint"] [+5]
  GETTABLEKS R12 R0 K11 ["_constraintType"]
  JUMPIFNOTEQKS R12 K39 ["RodConstraint"] [+4]
  SETTABLEKS R11 R10 K40 ["Length"]
  JUMP [+6]
  GETTABLEKS R12 R0 K11 ["_constraintType"]
  JUMPIFNOTEQKS R12 K41 ["SpringConstraint"] [+3]
  SETTABLEKS R11 R10 K42 ["FreeLength"]
  GETUPVAL R12 4
  MOVE R13 R10
  GETTABLEKS R14 R0 K11 ["_constraintType"]
  CALL R12 2 0
  GETUPVAL R12 5
  JUMPIFNOT R12 [+8]
  GETTABLEKS R12 R0 K43 ["_ghostAssembly"]
  NAMECALL R12 R12 K44 ["Destroy"]
  CALL R12 1 0
  LOADNIL R12
  SETTABLEKS R12 R0 K43 ["_ghostAssembly"]
  GETIMPORT R12 K46 [CFrame.identity]
  SETTABLEKS R12 R0 K47 ["_tiltRotate"]
  LOADB R8 1
  JUMP [+47]
  JUMPIFNOT R7 [+4]
  LOADK R11 K34 ["Attachment0"]
  SETTABLEKS R11 R1 K33 ["Name"]
  JUMP [+5]
  LOADB R11 1
  SETTABLEKS R11 R0 K10 ["_existingInitialAttachment"]
  GETIMPORT R3 K22 [Enum.FinishRecordingOperation.Cancel]
  LOADK R5 K48 ["initial"]
  MOVE R13 R1
  NAMECALL R11 R0 K20 ["_selectInitialInstance"]
  CALL R11 2 0
  GETTABLEKS R12 R0 K49 ["_lastDraggedInstanceDefaultOrientation"]
  GETTABLEKS R13 R0 K47 ["_tiltRotate"]
  MUL R11 R12 R13
  SETTABLEKS R11 R0 K49 ["_lastDraggedInstanceDefaultOrientation"]
  GETIMPORT R11 K46 [CFrame.identity]
  SETTABLEKS R11 R0 K47 ["_tiltRotate"]
  JUMP [+20]
  GETTABLEKS R11 R4 K30 ["Attachments"]
  JUMPIFNOTEQKN R11 K50 [1] [+17]
  GETTABLEKS R11 R0 K11 ["_constraintType"]
  JUMPIFEQKS R11 K28 ["Attachment"] [+13]
  JUMPIFNOT R9 [+11]
  GETIMPORT R11 K15 [Instance.new]
  GETTABLEKS R12 R0 K11 ["_constraintType"]
  GETTABLEKS R13 R1 K27 ["Parent"]
  CALL R11 2 1
  MOVE R10 R11
  SETTABLEKS R1 R10 K34 ["Attachment0"]
  LOADB R8 1
  JUMPIFNOT R10 [+10]
  LOADB R6 1
  GETUPVAL R11 3
  NEWTABLE R13 0 1
  MOVE R14 R10
  SETLIST R13 R14 1 [1]
  NAMECALL R11 R11 K19 ["Set"]
  CALL R11 2 0
  JUMPIFNOT R10 [+11]
  GETTABLEKS R11 R4 K51 ["Properties"]
  JUMPIFNOT R11 [+8]
  GETTABLEKS R11 R4 K51 ["Properties"]
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  SETTABLE R15 R10 R14
  FORGLOOP R11 2 [-2]
  JUMPIFNOT R1 [+19]
  GETTABLEKS R9 R0 K10 ["_existingInitialAttachment"]
  JUMPIF R9 [+16]
  GETTABLEKS R10 R0 K52 ["_undoAttachmentStack"]
  LOADN R11 1
  DUPTABLE R12 K56 [{"attachment", "attachmentParent", "type"}]
  SETTABLEKS R1 R12 K53 ["attachment"]
  GETTABLEKS R13 R1 K27 ["Parent"]
  SETTABLEKS R13 R12 K54 ["attachmentParent"]
  SETTABLEKS R5 R12 K55 ["type"]
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R9 K59 [table.insert]
  CALL R9 3 0
  JUMPIFNOT R2 [+6]
  GETUPVAL R9 0
  MOVE R11 R2
  MOVE R12 R3
  NAMECALL R9 R9 K60 ["FinishRecording"]
  CALL R9 3 0
  JUMPIFNOT R8 [+6]
  NAMECALL R9 R0 K61 ["_clearInitialInstance"]
  CALL R9 1 0
  NAMECALL R9 R0 K62 ["_removeConstraintVisuals"]
  CALL R9 1 0
  NAMECALL R9 R0 K63 ["_updateAttachment"]
  CALL R9 1 0
  JUMPIFNOT R6 [+6]
  GETTABLEKS R9 R0 K64 ["_addMultipleConstraintsEnabled"]
  JUMPIF R9 [+3]
  NAMECALL R9 R0 K65 ["_processDeselected"]
  CALL R9 1 0
  RETURN R0 0

PROTO_43:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_isMouseDown"]
  GETTABLEKS R1 R0 K1 ["_recordingIdentifier"]
  JUMPIFNOT R1 [+10]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K1 ["_recordingIdentifier"]
  NAMECALL R1 R1 K2 ["IsRecordingInProgress"]
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_recordingIdentifier"]
  RETURN R0 0

PROTO_44:
  NAMECALL R1 R0 K0 ["_updateAttachment"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["_scheduleRender"]
  CALL R1 1 0
  RETURN R0 0

PROTO_45:
  GETTABLEKS R1 R0 K0 ["_requestRenderCallback"]
  CALL R1 0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ChangeHistoryService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Selection"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [script]
  LOADK R4 K7 ["ConstraintTool"]
  NAMECALL R2 R2 K8 ["FindFirstAncestor"]
  CALL R2 2 1
  GETTABLEKS R4 R2 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["DraggerFramework"]
  GETIMPORT R4 K12 [require]
  GETTABLEKS R6 R2 K9 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K12 [require]
  GETTABLEKS R8 R2 K14 ["Src"]
  GETTABLEKS R7 R8 K15 ["Resources"]
  GETTABLEKS R6 R7 K16 ["ConstraintData"]
  CALL R5 1 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R9 R2 K14 ["Src"]
  GETTABLEKS R8 R9 K17 ["Util"]
  GETTABLEKS R7 R8 K18 ["AttachmentMover"]
  CALL R6 1 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R9 R3 K19 ["Utility"]
  GETTABLEKS R8 R9 K20 ["DragHelper"]
  CALL R7 1 1
  GETIMPORT R8 K12 [require]
  GETTABLEKS R10 R3 K19 ["Utility"]
  GETTABLEKS R9 R10 K21 ["roundRotation"]
  CALL R8 1 1
  GETIMPORT R9 K12 [require]
  GETTABLEKS R12 R2 K14 ["Src"]
  GETTABLEKS R11 R12 K22 ["Components"]
  GETTABLEKS R10 R11 K23 ["setVisible"]
  CALL R9 1 1
  GETIMPORT R10 K12 [require]
  GETTABLEKS R13 R2 K14 ["Src"]
  GETTABLEKS R12 R13 K17 ["Util"]
  GETTABLEKS R11 R12 K24 ["AttachmentToolRenderer"]
  CALL R10 1 1
  GETIMPORT R11 K12 [require]
  GETTABLEKS R14 R2 K14 ["Src"]
  GETTABLEKS R13 R14 K17 ["Util"]
  GETTABLEKS R12 R13 K25 ["AttachmentToolAnimator"]
  CALL R11 1 1
  GETIMPORT R12 K1 [game]
  LOADK R14 K26 ["EnableConstraintToolGhostAssemblyFeature"]
  NAMECALL R12 R12 K27 ["GetFastFlag"]
  CALL R12 2 1
  GETIMPORT R13 K1 [game]
  LOADK R15 K28 ["EnableConstraintToolPartPassthroughFeature"]
  NAMECALL R13 R13 K27 ["GetFastFlag"]
  CALL R13 2 1
  NEWTABLE R14 64 0
  SETTABLEKS R14 R14 K29 ["__index"]
  LOADK R15 K30 [""]
  GETIMPORT R16 K33 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 255
  LOADN R19 0
  CALL R16 3 1
  GETIMPORT R17 K33 [Color3.fromRGB]
  LOADN R18 255
  LOADN R19 170
  LOADN R20 0
  CALL R17 3 1
  GETIMPORT R18 K33 [Color3.fromRGB]
  LOADN R19 0
  LOADN R20 255
  LOADN R21 0
  CALL R18 3 1
  GETIMPORT R19 K33 [Color3.fromRGB]
  LOADN R20 255
  LOADN R21 0
  LOADN R22 0
  CALL R19 3 1
  GETIMPORT R20 K33 [Color3.fromRGB]
  LOADN R21 121
  LOADN R22 172
  LOADN R23 255
  CALL R20 3 1
  GETIMPORT R21 K33 [Color3.fromRGB]
  LOADN R22 255
  LOADN R23 0
  LOADN R24 0
  CALL R21 3 1
  GETIMPORT R22 K33 [Color3.fromRGB]
  LOADN R23 108
  LOADN R24 107
  LOADN R25 107
  CALL R22 3 1
  GETIMPORT R23 K36 [table.freeze]
  DUPTABLE R24 K42 [{"AllowDragSelect", "ShowLocalSpaceIndicator", "WasAutoSelected", "ShowPivotIndicator", "ShowDragSelect"}]
  LOADB R25 1
  SETTABLEKS R25 R24 K37 ["AllowDragSelect"]
  LOADB R25 0
  SETTABLEKS R25 R24 K38 ["ShowLocalSpaceIndicator"]
  LOADB R25 0
  SETTABLEKS R25 R24 K39 ["WasAutoSelected"]
  LOADB R25 0
  SETTABLEKS R25 R24 K40 ["ShowPivotIndicator"]
  LOADB R25 1
  SETTABLEKS R25 R24 K41 ["ShowDragSelect"]
  CALL R23 1 1
  GETIMPORT R24 K36 [table.freeze]
  DUPTABLE R25 K44 [{"AnalyticsName"}]
  LOADB R26 1
  SETTABLEKS R26 R25 K43 ["AnalyticsName"]
  CALL R24 1 1
  GETIMPORT R25 K36 [table.freeze]
  DUPTABLE R26 K47 [{"WeldConstraint", "NoCollisionConstraint"}]
  LOADB R27 1
  SETTABLEKS R27 R26 K45 ["WeldConstraint"]
  LOADB R27 1
  SETTABLEKS R27 R26 K46 ["NoCollisionConstraint"]
  CALL R25 1 1
  GETIMPORT R26 K36 [table.freeze]
  NEWTABLE R27 0 6
  LOADK R28 K48 [{1, 0, 0}]
  LOADK R29 K49 [{-1, 0, 0}]
  LOADK R30 K50 [{0, 1, 0}]
  LOADK R31 K51 [{0, -1, 0}]
  LOADK R32 K52 [{0, 0, 1}]
  LOADK R33 K53 [{0, 0, -1}]
  SETLIST R27 R28 6 [1]
  CALL R26 1 1
  GETIMPORT R27 K56 [CFrame.new]
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  LOADN R32 1
  LOADN R33 0
  LOADN R34 1
  LOADN R35 0
  LOADN R36 0
  LOADN R37 0
  LOADN R38 0
  LOADN R39 255
  CALL R27 12 1
  NEWCLOSURE R28 P0
  CAPTURE VAL R23
  CAPTURE VAL R24
  CAPTURE VAL R6
  CAPTURE VAL R27
  CAPTURE VAL R14
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE REF R15
  SETTABLEKS R28 R14 K55 ["new"]
  DUPCLOSURE R28 K57 [PROTO_3]
  SETTABLEKS R28 R14 K58 ["_connectGizmoScale"]
  DUPCLOSURE R28 K59 [PROTO_4]
  SETTABLEKS R28 R14 K60 ["_onUndo"]
  DUPCLOSURE R28 K61 [PROTO_5]
  SETTABLEKS R28 R14 K62 ["_onRedo"]
  DUPCLOSURE R28 K63 [PROTO_6]
  SETTABLEKS R28 R14 K64 ["_resizeAttachmentAdorns"]
  DUPCLOSURE R28 K65 [PROTO_7]
  CAPTURE VAL R18
  SETTABLEKS R28 R14 K66 ["_createAttachmentAdornment"]
  DUPCLOSURE R28 K67 [PROTO_8]
  CAPTURE VAL R1
  SETTABLEKS R28 R14 K68 ["_initAttachmentAdornment"]
  DUPCLOSURE R28 K69 [PROTO_9]
  CAPTURE VAL R20
  CAPTURE VAL R25
  CAPTURE VAL R1
  SETTABLEKS R28 R14 K70 ["_initSelectionHighlight"]
  DUPCLOSURE R28 K71 [PROTO_10]
  CAPTURE VAL R16
  CAPTURE VAL R17
  SETTABLEKS R28 R14 K72 ["_createAttachmentAdornmentArrows"]
  DUPCLOSURE R28 K73 [PROTO_11]
  SETTABLEKS R28 R14 K74 ["_orientAttachmentAdornment"]
  DUPCLOSURE R28 K75 [PROTO_12]
  SETTABLEKS R28 R14 K76 ["setMouseCursor"]
  DUPCLOSURE R28 K77 [PROTO_13]
  CAPTURE VAL R25
  CAPTURE VAL R4
  SETTABLEKS R28 R14 K78 ["render"]
  DUPCLOSURE R28 K79 [PROTO_14]
  SETTABLEKS R28 R14 K80 ["update"]
  DUPCLOSURE R28 K81 [PROTO_15]
  SETTABLEKS R28 R14 K82 ["getSchema"]
  DUPCLOSURE R28 K83 [PROTO_16]
  SETTABLEKS R28 R14 K84 ["doesAllowDragSelect"]
  DUPCLOSURE R28 K85 [PROTO_17]
  SETTABLEKS R28 R14 K86 ["shouldShowDragSelect"]
  DUPCLOSURE R28 K87 [PROTO_18]
  SETTABLEKS R28 R14 K88 ["shouldShowLocalSpaceIndicator"]
  DUPCLOSURE R28 K89 [PROTO_19]
  SETTABLEKS R28 R14 K90 ["shouldShowSelectionDot"]
  DUPCLOSURE R28 K91 [PROTO_20]
  SETTABLEKS R28 R14 K92 ["shouldUseCollisionTransparency"]
  DUPCLOSURE R28 K93 [PROTO_21]
  SETTABLEKS R28 R14 K94 ["shouldAlignDraggedObjects"]
  DUPCLOSURE R28 K95 [PROTO_22]
  CAPTURE VAL R12
  SETTABLEKS R28 R14 K96 ["getRaycastIgnoreList"]
  DUPCLOSURE R28 K97 [PROTO_23]
  CAPTURE VAL R25
  SETTABLEKS R28 R14 K98 ["_setInitialInstanceTransparency"]
  DUPCLOSURE R28 K99 [PROTO_24]
  CAPTURE VAL R25
  CAPTURE VAL R7
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R12
  CAPTURE VAL R18
  CAPTURE VAL R19
  SETTABLEKS R28 R14 K100 ["_updateAttachment"]
  DUPCLOSURE R28 K101 [PROTO_25]
  CAPTURE VAL R26
  CAPTURE VAL R8
  SETTABLEKS R28 R14 K102 ["_rotateAttachment"]
  DUPCLOSURE R28 K103 [PROTO_26]
  CAPTURE VAL R25
  CAPTURE VAL R0
  CAPTURE VAL R12
  SETTABLEKS R28 R14 K104 ["_closeTool"]
  DUPCLOSURE R28 K105 [PROTO_28]
  CAPTURE VAL R1
  SETTABLEKS R28 R14 K106 ["_processSelected"]
  DUPCLOSURE R28 K107 [PROTO_29]
  SETTABLEKS R28 R14 K108 ["_processDeselected"]
  DUPCLOSURE R28 K109 [PROTO_30]
  SETTABLEKS R28 R14 K110 ["_processSelectionChanged"]
  DUPCLOSURE R28 K111 [PROTO_31]
  SETTABLEKS R28 R14 K112 ["_setConstraintType"]
  DUPCLOSURE R28 K113 [PROTO_32]
  CAPTURE VAL R5
  SETTABLEKS R28 R14 K114 ["_getConstraintData"]
  DUPCLOSURE R28 K115 [PROTO_33]
  SETTABLEKS R28 R14 K116 ["_createConstraintVisuals"]
  DUPCLOSURE R28 K117 [PROTO_34]
  SETTABLEKS R28 R14 K118 ["_removeConstraintVisuals"]
  DUPCLOSURE R28 K119 [PROTO_35]
  SETTABLEKS R28 R14 K120 ["_removeAttachmentAdorns"]
  GETIMPORT R28 K36 [table.freeze]
  NEWTABLE R29 8 0
  GETIMPORT R30 K124 [Enum.KeyCode.RightShift]
  LOADB R31 1
  SETTABLE R31 R29 R30
  GETIMPORT R30 K126 [Enum.KeyCode.LeftShift]
  LOADB R31 1
  SETTABLE R31 R29 R30
  GETIMPORT R30 K128 [Enum.KeyCode.RightControl]
  LOADB R31 1
  SETTABLE R31 R29 R30
  GETIMPORT R30 K130 [Enum.KeyCode.LeftControl]
  LOADB R31 1
  SETTABLE R31 R29 R30
  GETIMPORT R30 K132 [Enum.KeyCode.RightAlt]
  LOADB R31 1
  SETTABLE R31 R29 R30
  GETIMPORT R30 K134 [Enum.KeyCode.LeftAlt]
  LOADB R31 1
  SETTABLE R31 R29 R30
  CALL R28 1 1
  DUPCLOSURE R29 K135 [PROTO_36]
  CAPTURE VAL R13
  CAPTURE VAL R28
  SETTABLEKS R29 R14 K136 ["_processKeyDown"]
  DUPCLOSURE R29 K137 [PROTO_37]
  CAPTURE VAL R28
  SETTABLEKS R29 R14 K138 ["_processKeyUp"]
  DUPCLOSURE R29 K139 [PROTO_38]
  CAPTURE VAL R25
  SETTABLEKS R29 R14 K140 ["_clearInitialInstance"]
  DUPCLOSURE R29 K141 [PROTO_40]
  CAPTURE VAL R25
  SETTABLEKS R29 R14 K142 ["_selectInitialInstance"]
  DUPCLOSURE R29 K143 [PROTO_41]
  CAPTURE VAL R25
  SETTABLEKS R29 R14 K144 ["_canMouseDown"]
  NEWCLOSURE R29 P38
  CAPTURE VAL R0
  CAPTURE REF R15
  CAPTURE VAL R25
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R12
  SETTABLEKS R29 R14 K145 ["_processMouseDown"]
  DUPCLOSURE R29 K146 [PROTO_43]
  CAPTURE VAL R0
  SETTABLEKS R29 R14 K147 ["_processMouseUp"]
  DUPCLOSURE R29 K148 [PROTO_44]
  SETTABLEKS R29 R14 K149 ["_processViewChanged"]
  DUPCLOSURE R29 K150 [PROTO_45]
  SETTABLEKS R29 R14 K151 ["_scheduleRender"]
  CLOSEUPVALS R15
  RETURN R14 1
