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
  DUPTABLE R14 K38 [{"_draggerContext", "_draggerSchema", "_modelProps", "_closePluginCallback", "_requestRenderCallback", "_constraintToolVisualsFolder", "_markViewDirtyCallback", "_undoAttachmentStack", "_redoAttachmentStack", "_plugin", "_openedTimestamp", "_attachmentMover", "_attachmentArrowVisuals", "_partPassthroughEnabled", "_ancestryChangedConnection", "_selectionHighlight", "_ghostAssembly", "_attachmentAdornment", "_initialInstanceAdornment", "_constraintType", "_tiltRotate", "_recordingIdentifier"}]
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
  GETIMPORT R15 K41 [os.clock]
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
  LOADNIL R15
  SETTABLEKS R15 R14 K30 ["_ancestryChangedConnection"]
  LOADNIL R15
  SETTABLEKS R15 R14 K31 ["_selectionHighlight"]
  LOADNIL R15
  SETTABLEKS R15 R14 K32 ["_ghostAssembly"]
  LOADNIL R15
  SETTABLEKS R15 R14 K33 ["_attachmentAdornment"]
  LOADNIL R15
  SETTABLEKS R15 R14 K34 ["_initialInstanceAdornment"]
  LOADNIL R15
  SETTABLEKS R15 R14 K35 ["_constraintType"]
  GETIMPORT R15 K43 [CFrame.new]
  CALL R15 0 1
  SETTABLEKS R15 R14 K36 ["_tiltRotate"]
  LOADNIL R15
  SETTABLEKS R15 R14 K37 ["_recordingIdentifier"]
  GETUPVAL R15 3
  FASTCALL2 SETMETATABLE R14 R15 [+3]
  GETIMPORT R13 K45 [setmetatable]
  CALL R13 2 1
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K7 ["new"]
  GETTABLEKS R15 R13 K16 ["_draggerContext"]
  GETTABLEKS R16 R13 K17 ["_draggerSchema"]
  MOVE R17 R13
  CALL R14 3 1
  SETTABLEKS R14 R13 K46 ["_attachmentToolRenderer"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K7 ["new"]
  MOVE R15 R13
  CALL R14 1 1
  SETTABLEKS R14 R13 K47 ["_attachmentToolAnimator"]
  SETUPVAL R6 6
  MOVE R14 R8
  MOVE R15 R13
  CALL R14 1 1
  GETTABLEKS R15 R14 K48 ["undo"]
  SETTABLEKS R15 R13 K49 ["_mainUndo"]
  RETURN R13 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["_undoAttachmentStack"]
  GETTABLEN R1 R2 1
  JUMPIFNOT R1 [+17]
  GETTABLEKS R3 R1 K1 ["attachment"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  JUMPIFNOT R2 [+12]
  GETTABLEKS R2 R1 K3 ["type"]
  JUMPIFNOTEQKS R2 K4 ["initial"] [+9]
  GETTABLEKS R4 R1 K1 ["attachment"]
  NAMECALL R2 R0 K5 ["_selectInitialInstance"]
  CALL R2 2 0
  NAMECALL R2 R0 K6 ["_updateAttachment"]
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
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

PROTO_3:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["SphereHandleAdornment"]
  CALL R1 1 1
  LOADB R2 1
  SETTABLEKS R2 R1 K4 ["AlwaysOnTop"]
  LOADN R2 1
  SETTABLEKS R2 R1 K5 ["ZIndex"]
  LOADK R2 K6 [0.15]
  SETTABLEKS R2 R1 K7 ["Radius"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K8 ["Color3"]
  GETIMPORT R3 K10 [workspace]
  GETTABLEKS R2 R3 K11 ["Terrain"]
  SETTABLEKS R2 R1 K12 ["Adornee"]
  GETTABLEKS R2 R0 K13 ["_constraintToolVisualsFolder"]
  SETTABLEKS R2 R1 K14 ["Parent"]
  MOVE R4 R1
  NAMECALL R2 R0 K15 ["_createAttachmentAdornmentArrows"]
  CALL R2 2 0
  RETURN R1 1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["CylinderHandleAdornment"]
  CALL R2 1 1
  LOADN R3 1
  SETTABLEKS R3 R2 K4 ["Height"]
  LOADK R3 K5 [0.02]
  SETTABLEKS R3 R2 K6 ["Radius"]
  LOADN R3 0
  SETTABLEKS R3 R2 K7 ["Transparency"]
  LOADB R3 1
  SETTABLEKS R3 R2 K8 ["AlwaysOnTop"]
  LOADN R3 1
  SETTABLEKS R3 R2 K9 ["ZIndex"]
  GETIMPORT R4 K11 [workspace]
  GETTABLEKS R3 R4 K12 ["Terrain"]
  SETTABLEKS R3 R2 K13 ["Adornee"]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K14 ["Color3"]
  GETTABLEKS R3 R0 K15 ["_constraintToolVisualsFolder"]
  SETTABLEKS R3 R2 K16 ["Parent"]
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K3 ["CylinderHandleAdornment"]
  CALL R3 1 1
  LOADN R4 1
  SETTABLEKS R4 R3 K4 ["Height"]
  LOADK R4 K5 [0.02]
  SETTABLEKS R4 R3 K6 ["Radius"]
  LOADN R4 0
  SETTABLEKS R4 R3 K7 ["Transparency"]
  LOADB R4 1
  SETTABLEKS R4 R3 K8 ["AlwaysOnTop"]
  LOADN R4 1
  SETTABLEKS R4 R3 K9 ["ZIndex"]
  GETIMPORT R5 K11 [workspace]
  GETTABLEKS R4 R5 K12 ["Terrain"]
  SETTABLEKS R4 R3 K13 ["Adornee"]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K14 ["Color3"]
  GETTABLEKS R4 R0 K15 ["_constraintToolVisualsFolder"]
  SETTABLEKS R4 R3 K16 ["Parent"]
  GETIMPORT R4 K2 [Instance.new]
  LOADK R5 K17 ["ConeHandleAdornment"]
  CALL R4 1 1
  LOADK R5 K18 [0.2]
  SETTABLEKS R5 R4 K4 ["Height"]
  LOADK R5 K19 [0.05]
  SETTABLEKS R5 R4 K6 ["Radius"]
  LOADN R5 0
  SETTABLEKS R5 R4 K7 ["Transparency"]
  LOADB R5 1
  SETTABLEKS R5 R4 K8 ["AlwaysOnTop"]
  LOADN R5 1
  SETTABLEKS R5 R4 K9 ["ZIndex"]
  GETIMPORT R6 K11 [workspace]
  GETTABLEKS R5 R6 K12 ["Terrain"]
  SETTABLEKS R5 R4 K13 ["Adornee"]
  GETUPVAL R5 0
  SETTABLEKS R5 R4 K14 ["Color3"]
  GETTABLEKS R5 R0 K15 ["_constraintToolVisualsFolder"]
  SETTABLEKS R5 R4 K16 ["Parent"]
  GETIMPORT R5 K2 [Instance.new]
  LOADK R6 K17 ["ConeHandleAdornment"]
  CALL R5 1 1
  LOADK R6 K18 [0.2]
  SETTABLEKS R6 R5 K4 ["Height"]
  LOADK R6 K19 [0.05]
  SETTABLEKS R6 R5 K6 ["Radius"]
  LOADN R6 0
  SETTABLEKS R6 R5 K7 ["Transparency"]
  LOADB R6 1
  SETTABLEKS R6 R5 K8 ["AlwaysOnTop"]
  LOADN R6 1
  SETTABLEKS R6 R5 K9 ["ZIndex"]
  GETIMPORT R7 K11 [workspace]
  GETTABLEKS R6 R7 K12 ["Terrain"]
  SETTABLEKS R6 R5 K13 ["Adornee"]
  GETUPVAL R6 1
  SETTABLEKS R6 R5 K14 ["Color3"]
  GETTABLEKS R6 R0 K15 ["_constraintToolVisualsFolder"]
  SETTABLEKS R6 R5 K16 ["Parent"]
  LOADB R6 0
  SETTABLEKS R6 R1 K20 ["Visible"]
  LOADB R6 1
  SETTABLEKS R6 R1 K20 ["Visible"]
  GETTABLEKS R6 R0 K21 ["_attachmentArrowVisuals"]
  DUPTABLE R7 K26 [{"shaftRight", "shaftTop", "tipRight", "tipTop"}]
  SETTABLEKS R2 R7 K22 ["shaftRight"]
  SETTABLEKS R3 R7 K23 ["shaftTop"]
  SETTABLEKS R4 R7 K24 ["tipRight"]
  SETTABLEKS R5 R7 K25 ["tipTop"]
  SETTABLE R7 R6 R1
  MOVE R8 R1
  GETIMPORT R9 K28 [CFrame.new]
  LOADK R10 K29 [∞]
  LOADN R11 0
  LOADN R12 0
  CALL R9 3 -1
  NAMECALL R6 R0 K30 ["_orientAttachmentAdornment"]
  CALL R6 -1 0
  RETURN R0 0

PROTO_7:
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

PROTO_8:
  GETTABLEKS R2 R0 K0 ["_mouseCursor"]
  JUMPIFEQ R2 R1 [+9]
  SETTABLEKS R1 R0 K0 ["_mouseCursor"]
  GETTABLEKS R2 R0 K1 ["_draggerContext"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["setMouseIcon"]
  CALL R2 2 0
  RETURN R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
  GETTABLEKS R1 R0 K0 ["_draggerSchema"]
  RETURN R1 1

PROTO_12:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["AllowDragSelect"]
  RETURN R1 1

PROTO_13:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowDragSelect"]
  RETURN R1 1

PROTO_14:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowLocalSpaceIndicator"]
  RETURN R1 1

PROTO_15:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowSelectionDot"]
  RETURN R1 1

PROTO_16:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["UseCollisionsTransparency"]
  RETURN R1 1

PROTO_17:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["shouldAlignDraggedObjects"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_18:
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

PROTO_19:
  GETTABLEKS R3 R0 K0 ["_initialInstance"]
  GETTABLEKS R2 R3 K1 ["Parent"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K2 ["_constraintType"]
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETTABLEKS R3 R0 K0 ["_initialInstance"]
  GETTABLEKS R2 R3 K1 ["Parent"]
  SETTABLEKS R1 R2 K3 ["LocalTransparencyModifier"]
  GETTABLEKS R3 R0 K0 ["_initialInstance"]
  GETTABLEKS R2 R3 K1 ["Parent"]
  NAMECALL R2 R2 K4 ["GetChildren"]
  CALL R2 1 3
  FORGPREP R2
  LOADK R9 K5 ["Decal"]
  NAMECALL R7 R6 K6 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+2]
  SETTABLEKS R1 R6 K3 ["LocalTransparencyModifier"]
  FORGLOOP R2 2 [-8]
  RETURN R0 0

PROTO_20:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["getMouseRay"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K2 ["_constraintType"]
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+107]
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
  GETIMPORT R6 K13 [CFrame.new]
  GETTABLEKS R8 R0 K9 ["_initialInstance"]
  GETTABLEKS R7 R8 K8 ["Position"]
  GETTABLEKS R8 R2 K8 ["Position"]
  CALL R6 2 1
  GETIMPORT R7 K13 [CFrame.new]
  LOADN R8 0
  LOADN R9 0
  MINUS R11 R3
  DIVK R10 R11 K14 [2]
  CALL R7 3 1
  MUL R5 R6 R7
  SETTABLEKS R5 R4 K11 ["CFrame"]
  GETTABLEKS R4 R0 K7 ["_constraintConnectionVisual"]
  SETTABLEKS R3 R4 K15 ["Height"]
  GETTABLEKS R3 R0 K7 ["_constraintConnectionVisual"]
  JUMPIFNOT R3 [+38]
  GETUPVAL R3 2
  NAMECALL R4 R0 K16 ["_canMouseDown"]
  CALL R4 1 1
  JUMPIF R4 [+2]
  GETUPVAL R3 3
  JUMP [+27]
  GETTABLEKS R4 R0 K9 ["_initialInstance"]
  JUMPIFNOT R4 [+24]
  GETTABLEKS R4 R0 K17 ["_currentHoveringInstance"]
  JUMPIFNOT R4 [+21]
  GETTABLEKS R5 R0 K17 ["_currentHoveringInstance"]
  GETTABLEKS R4 R5 K18 ["AssemblyRootPart"]
  GETTABLEKS R6 R0 K9 ["_initialInstance"]
  GETTABLEKS R5 R6 K18 ["AssemblyRootPart"]
  JUMPIFEQ R4 R5 [+11]
  GETTABLEKS R5 R0 K17 ["_currentHoveringInstance"]
  GETTABLEKS R4 R5 K19 ["Anchored"]
  JUMPIFNOT R4 [+6]
  GETTABLEKS R5 R0 K9 ["_initialInstance"]
  GETTABLEKS R4 R5 K19 ["Anchored"]
  JUMPIFNOT R4 [+1]
  GETUPVAL R3 4
  GETTABLEKS R4 R0 K7 ["_constraintConnectionVisual"]
  SETTABLEKS R3 R4 K20 ["Color3"]
  GETTABLEKS R3 R0 K4 ["_selectionHighlight"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K21 ["Enabled"]
  MOVE R3 R2
  JUMPIFNOT R3 [+2]
  GETTABLEKS R3 R2 K5 ["Instance"]
  SETTABLEKS R3 R0 K17 ["_currentHoveringInstance"]
  RETURN R0 0
  LOADNIL R2
  GETTABLEKS R3 R0 K22 ["_lastDragTarget"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R3 R0 K22 ["_lastDragTarget"]
  GETTABLEKS R2 R3 K23 ["targetMatrix"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K24 ["getDragTarget"]
  NAMECALL R4 R0 K25 ["getRaycastIgnoreList"]
  CALL R4 1 1
  GETIMPORT R5 K13 [CFrame.new]
  CALL R5 0 1
  GETUPVAL R6 5
  GETUPVAL R7 5
  GETUPVAL R8 5
  MOVE R9 R1
  GETTABLEKS R11 R0 K0 ["_draggerContext"]
  NAMECALL R11 R11 K26 ["shouldGridSnap"]
  CALL R11 1 1
  JUMPIFNOT R11 [+6]
  GETTABLEKS R10 R0 K0 ["_draggerContext"]
  NAMECALL R10 R10 K27 ["getGridSize"]
  CALL R10 1 1
  JUMP [+1]
  LOADNIL R10
  GETTABLEKS R11 R0 K28 ["_tiltRotate"]
  MOVE R12 R2
  NAMECALL R13 R0 K29 ["shouldAlignDraggedObjects"]
  CALL R13 1 1
  JUMPIFNOT R13 [+6]
  GETTABLEKS R14 R0 K0 ["_draggerContext"]
  NAMECALL R14 R14 K30 ["isAltKeyDown"]
  CALL R14 1 1
  NOT R13 R14
  LOADB R14 0
  GETTABLEKS R15 R0 K0 ["_draggerContext"]
  NAMECALL R15 R15 K31 ["getSoftSnapMarginFactor"]
  CALL R15 1 1
  GETTABLEKS R16 R0 K0 ["_draggerContext"]
  NAMECALL R16 R16 K32 ["shouldPartSnap"]
  CALL R16 1 1
  LOADB R17 1
  CALL R3 14 1
  GETTABLEKS R4 R0 K0 ["_draggerContext"]
  GETTABLEKS R6 R1 K33 ["Origin"]
  GETTABLEKS R7 R1 K34 ["Direction"]
  GETIMPORT R8 K36 [RaycastParams.new]
  CALL R8 0 -1
  NAMECALL R4 R4 K37 ["gizmoRaycast"]
  CALL R4 -1 1
  LOADNIL R5
  LOADNIL R6
  JUMPIFNOT R4 [+15]
  GETTABLEKS R7 R4 K5 ["Instance"]
  JUMPIFNOT R7 [+12]
  GETTABLEKS R7 R4 K5 ["Instance"]
  LOADK R9 K38 ["Attachment"]
  NAMECALL R7 R7 K39 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+5]
  GETTABLEKS R6 R4 K5 ["Instance"]
  GETTABLEKS R5 R6 K40 ["WorldCFrame"]
  JUMP [+8]
  JUMPIFNOT R3 [+7]
  GETTABLEKS R7 R3 K41 ["targetPart"]
  JUMPIFNOT R7 [+4]
  GETTABLEKS R6 R3 K41 ["targetPart"]
  GETTABLEKS R5 R3 K42 ["mainCFrame"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R7 R3 K41 ["targetPart"]
  JUMPIFNOT R7 [+2]
  SETTABLEKS R3 R0 K22 ["_lastDragTarget"]
  SETTABLEKS R6 R0 K17 ["_currentHoveringInstance"]
  GETTABLEKS R7 R0 K4 ["_selectionHighlight"]
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K21 ["Enabled"]
  GETTABLEKS R7 R0 K4 ["_selectionHighlight"]
  SETTABLEKS R6 R7 K6 ["Adornee"]
  JUMPIFNOT R6 [+185]
  GETUPVAL R7 6
  JUMPIFNOT R7 [+78]
  GETTABLEKS R7 R0 K43 ["_ghostAssembly"]
  JUMPIFNOT R7 [+4]
  GETTABLEKS R7 R0 K44 ["_lastHoveringInstance"]
  JUMPIFEQ R7 R6 [+72]
  GETTABLEKS R7 R0 K43 ["_ghostAssembly"]
  JUMPIFNOT R7 [+8]
  GETTABLEKS R7 R0 K43 ["_ghostAssembly"]
  NAMECALL R7 R7 K45 ["Destroy"]
  CALL R7 1 0
  LOADNIL R7
  SETTABLEKS R7 R0 K43 ["_ghostAssembly"]
  GETTABLEKS R7 R0 K9 ["_initialInstance"]
  JUMPIFNOT R7 [+57]
  GETIMPORT R7 K46 [Instance.new]
  LOADK R8 K47 ["Model"]
  CALL R7 1 1
  SETTABLEKS R7 R0 K43 ["_ghostAssembly"]
  GETTABLEKS R7 R0 K43 ["_ghostAssembly"]
  LOADK R8 K48 ["GhostAssembly"]
  SETTABLEKS R8 R7 K49 ["Name"]
  GETTABLEKS R7 R0 K43 ["_ghostAssembly"]
  LOADB R8 0
  SETTABLEKS R8 R7 K50 ["Archivable"]
  GETTABLEKS R7 R0 K43 ["_ghostAssembly"]
  GETIMPORT R9 K52 [workspace]
  GETTABLEKS R8 R9 K53 ["CurrentCamera"]
  SETTABLEKS R8 R7 K54 ["Parent"]
  GETTABLEKS R8 R0 K9 ["_initialInstance"]
  GETTABLEKS R7 R8 K54 ["Parent"]
  NAMECALL R7 R7 K55 ["Clone"]
  CALL R7 1 1
  GETTABLEKS R8 R0 K43 ["_ghostAssembly"]
  SETTABLEKS R8 R7 K54 ["Parent"]
  GETTABLEKS R8 R0 K43 ["_ghostAssembly"]
  SETTABLEKS R7 R8 K56 ["PrimaryPart"]
  GETTABLEKS R9 R0 K9 ["_initialInstance"]
  GETTABLEKS R8 R9 K54 ["Parent"]
  LOADB R10 1
  NAMECALL R8 R8 K57 ["GetConnectedParts"]
  CALL R8 2 3
  FORGPREP R8
  NAMECALL R13 R12 K55 ["Clone"]
  CALL R13 1 1
  GETTABLEKS R14 R0 K43 ["_ghostAssembly"]
  SETTABLEKS R14 R13 K54 ["Parent"]
  FORGLOOP R8 2 [-8]
  GETTABLEKS R7 R0 K58 ["_attachmentAdornment"]
  NAMECALL R9 R0 K16 ["_canMouseDown"]
  CALL R9 1 1
  JUMPIFNOT R9 [+2]
  GETUPVAL R8 7
  JUMPIF R8 [+1]
  GETUPVAL R8 8
  SETTABLEKS R8 R7 K20 ["Color3"]
  GETTABLEKS R7 R0 K59 ["_attachmentToolAnimator"]
  NAMECALL R7 R7 K60 ["inProgress"]
  CALL R7 1 1
  JUMPIF R7 [+6]
  GETTABLEKS R9 R0 K58 ["_attachmentAdornment"]
  MOVE R10 R5
  NAMECALL R7 R0 K61 ["_orientAttachmentAdornment"]
  CALL R7 3 0
  GETTABLEKS R7 R0 K9 ["_initialInstance"]
  JUMPIFNOT R7 [+79]
  GETTABLEKS R8 R0 K9 ["_initialInstance"]
  GETTABLEKS R7 R8 K40 ["WorldCFrame"]
  GETTABLEKS R11 R0 K9 ["_initialInstance"]
  GETTABLEKS R10 R11 K54 ["Parent"]
  GETTABLEKS R9 R10 K11 ["CFrame"]
  NAMECALL R7 R7 K62 ["ToObjectSpace"]
  CALL R7 2 1
  GETTABLEKS R10 R5 K63 ["p"]
  GETTABLEKS R13 R0 K9 ["_initialInstance"]
  GETTABLEKS R12 R13 K40 ["WorldCFrame"]
  GETTABLEKS R11 R12 K63 ["p"]
  SUB R9 R10 R11
  GETTABLEKS R8 R9 K10 ["Magnitude"]
  GETTABLEKS R9 R0 K7 ["_constraintConnectionVisual"]
  GETIMPORT R11 K13 [CFrame.new]
  GETTABLEKS R14 R0 K9 ["_initialInstance"]
  GETTABLEKS R13 R14 K40 ["WorldCFrame"]
  GETTABLEKS R12 R13 K63 ["p"]
  GETTABLEKS R14 R3 K42 ["mainCFrame"]
  GETTABLEKS R13 R14 K63 ["p"]
  CALL R11 2 1
  GETIMPORT R12 K13 [CFrame.new]
  LOADN R13 0
  LOADN R14 0
  MINUS R16 R8
  DIVK R15 R16 K14 [2]
  CALL R12 3 1
  MUL R10 R11 R12
  SETTABLEKS R10 R9 K11 ["CFrame"]
  GETTABLEKS R9 R0 K7 ["_constraintConnectionVisual"]
  SETTABLEKS R8 R9 K15 ["Height"]
  GETTABLEKS R12 R0 K64 ["_partPassthroughEnabled"]
  JUMPIFNOT R12 [+2]
  LOADK R11 K65 [0.5]
  JUMP [+1]
  LOADN R11 0
  NAMECALL R9 R0 K66 ["_setInitialInstanceTransparency"]
  CALL R9 2 0
  GETTABLEKS R11 R0 K67 ["_initialInstanceAdornment"]
  GETTABLEKS R13 R0 K9 ["_initialInstance"]
  GETTABLEKS R12 R13 K40 ["WorldCFrame"]
  NAMECALL R9 R0 K61 ["_orientAttachmentAdornment"]
  CALL R9 3 0
  GETUPVAL R9 6
  JUMPIFNOT R9 [+6]
  GETTABLEKS R9 R0 K43 ["_ghostAssembly"]
  MUL R11 R5 R7
  NAMECALL R9 R9 K68 ["SetPrimaryPartCFrame"]
  CALL R9 2 0
  RETURN R0 0

PROTO_21:
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
  NAMECALL R6 R0 K6 ["getRaycastIgnoreList"]
  CALL R6 1 1
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
  LOADB R13 1
  CALL R3 10 1
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

PROTO_22:
  GETTABLEKS R1 R0 K0 ["_initialInstance"]
  NAMECALL R2 R0 K1 ["_clearInitialInstance"]
  CALL R2 1 0
  JUMPIFNOT R1 [+8]
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K2 ["_constraintType"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+3]
  NAMECALL R2 R1 K3 ["Destroy"]
  CALL R2 1 0
  GETUPVAL R2 1
  JUMPIFNOT R2 [+11]
  GETTABLEKS R2 R0 K4 ["_ghostAssembly"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K4 ["_ghostAssembly"]
  NAMECALL R2 R2 K3 ["Destroy"]
  CALL R2 1 0
  LOADNIL R2
  SETTABLEKS R2 R0 K4 ["_ghostAssembly"]
  GETTABLEKS R3 R0 K5 ["_constraintToolVisualsFolder"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K5 ["_constraintToolVisualsFolder"]
  NAMECALL R2 R2 K3 ["Destroy"]
  CALL R2 1 0
  NAMECALL R2 R0 K7 ["_removeAttachmentAdorns"]
  CALL R2 1 0
  NAMECALL R2 R0 K8 ["_removeConstraintVisuals"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K9 ["_closePluginCallback"]
  CALL R2 0 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_processSelectionChanged"]
  CALL R0 1 0
  RETURN R0 0

PROTO_24:
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

PROTO_25:
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

PROTO_26:
  NAMECALL R1 R0 K0 ["_scheduleRender"]
  CALL R1 1 0
  RETURN R0 0

PROTO_27:
  SETTABLEKS R1 R0 K0 ["_constraintType"]
  RETURN R0 0

PROTO_28:
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["_constraintType"]
  GETTABLE R1 R2 R3
  RETURN R1 1

PROTO_29:
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
  LOADK R2 K10 [0.05]
  SETTABLEKS R2 R1 K11 ["Radius"]
  GETTABLEKS R2 R0 K12 ["_constraintToolVisualsFolder"]
  SETTABLEKS R2 R1 K13 ["Parent"]
  SETTABLEKS R1 R0 K14 ["_constraintConnectionVisual"]
  RETURN R0 0

PROTO_30:
  GETTABLEKS R1 R0 K0 ["_constraintConnectionVisual"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_constraintConnectionVisual"]
  NAMECALL R1 R1 K1 ["Destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_constraintConnectionVisual"]
  RETURN R0 0

PROTO_31:
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

PROTO_32:
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
  GETIMPORT R2 K17 [Enum.KeyCode.F]
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
  GETUPVAL R3 1
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+6]
  NAMECALL R2 R0 K19 ["_updateAttachment"]
  CALL R2 1 0
  NAMECALL R2 R0 K15 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0

PROTO_33:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+6]
  NAMECALL R2 R0 K0 ["_updateAttachment"]
  CALL R2 1 0
  NAMECALL R2 R0 K1 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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
  GETUPVAL R7 2
  GETTABLEKS R8 R0 K10 ["_constraintType"]
  GETTABLE R6 R7 R8
  JUMPIFNOT R6 [+43]
  GETTABLEKS R6 R0 K11 ["_initialInstance"]
  JUMPIFNOT R6 [+32]
  GETIMPORT R6 K14 [Instance.new]
  GETTABLEKS R7 R0 K10 ["_constraintType"]
  GETTABLEKS R8 R0 K11 ["_initialInstance"]
  CALL R6 2 1
  MOVE R1 R6
  GETTABLEKS R6 R0 K11 ["_initialInstance"]
  SETTABLEKS R6 R1 K15 ["Part0"]
  GETTABLEKS R6 R0 K16 ["_currentHoveringInstance"]
  SETTABLEKS R6 R1 K17 ["Part1"]
  GETUPVAL R6 3
  NEWTABLE R8 0 1
  MOVE R9 R1
  SETLIST R8 R9 1 [1]
  NAMECALL R6 R6 K18 ["Set"]
  CALL R6 2 0
  NAMECALL R6 R0 K19 ["_clearInitialInstance"]
  CALL R6 1 0
  NAMECALL R6 R0 K20 ["_removeConstraintVisuals"]
  CALL R6 1 0
  JUMP [+159]
  GETTABLEKS R8 R0 K16 ["_currentHoveringInstance"]
  NAMECALL R6 R0 K21 ["_selectInitialInstance"]
  CALL R6 2 0
  GETIMPORT R3 K23 [Enum.FinishRecordingOperation.Cancel]
  JUMP [+151]
  GETTABLEKS R6 R0 K16 ["_currentHoveringInstance"]
  LOADK R8 K24 ["Attachment"]
  NAMECALL R6 R6 K25 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R1 R0 K16 ["_currentHoveringInstance"]
  JUMP [+22]
  GETIMPORT R6 K14 [Instance.new]
  LOADK R7 K24 ["Attachment"]
  CALL R6 1 1
  MOVE R1 R6
  GETTABLEKS R7 R0 K16 ["_currentHoveringInstance"]
  GETTABLEKS R6 R7 K26 ["CFrame"]
  GETTABLEKS R9 R0 K27 ["_attachmentAdornment"]
  GETTABLEKS R8 R9 K26 ["CFrame"]
  NAMECALL R6 R6 K28 ["ToObjectSpace"]
  CALL R6 2 1
  SETTABLEKS R6 R1 K26 ["CFrame"]
  GETTABLEKS R6 R0 K16 ["_currentHoveringInstance"]
  SETTABLEKS R6 R1 K29 ["Parent"]
  LOADNIL R6
  GETTABLEKS R7 R4 K30 ["Attachments"]
  JUMPIFNOTEQKN R7 K31 [2] [+79]
  GETTABLEKS R7 R0 K11 ["_initialInstance"]
  JUMPIFNOT R7 [+66]
  LOADK R7 K32 ["Attachment1"]
  SETTABLEKS R7 R1 K33 ["Name"]
  GETIMPORT R7 K14 [Instance.new]
  GETTABLEKS R8 R0 K10 ["_constraintType"]
  GETTABLEKS R10 R0 K11 ["_initialInstance"]
  GETTABLEKS R9 R10 K29 ["Parent"]
  CALL R7 2 1
  MOVE R6 R7
  GETTABLEKS R7 R0 K11 ["_initialInstance"]
  SETTABLEKS R7 R6 K34 ["Attachment0"]
  SETTABLEKS R1 R6 K32 ["Attachment1"]
  GETTABLEKS R10 R1 K35 ["WorldCFrame"]
  GETTABLEKS R9 R10 K36 ["p"]
  GETTABLEKS R12 R0 K11 ["_initialInstance"]
  GETTABLEKS R11 R12 K35 ["WorldCFrame"]
  GETTABLEKS R10 R11 K36 ["p"]
  SUB R8 R9 R10
  GETTABLEKS R7 R8 K37 ["Magnitude"]
  GETTABLEKS R8 R0 K10 ["_constraintType"]
  JUMPIFEQKS R8 K38 ["RopeConstraint"] [+5]
  GETTABLEKS R8 R0 K10 ["_constraintType"]
  JUMPIFNOTEQKS R8 K39 ["RodConstraint"] [+4]
  SETTABLEKS R7 R6 K40 ["Length"]
  JUMP [+6]
  GETTABLEKS R8 R0 K10 ["_constraintType"]
  JUMPIFNOTEQKS R8 K41 ["SpringConstraint"] [+3]
  SETTABLEKS R7 R6 K42 ["FreeLength"]
  GETUPVAL R8 4
  JUMPIFNOT R8 [+8]
  GETTABLEKS R8 R0 K43 ["_ghostAssembly"]
  NAMECALL R8 R8 K44 ["Destroy"]
  CALL R8 1 0
  LOADNIL R8
  SETTABLEKS R8 R0 K43 ["_ghostAssembly"]
  NAMECALL R8 R0 K19 ["_clearInitialInstance"]
  CALL R8 1 0
  NAMECALL R8 R0 K20 ["_removeConstraintVisuals"]
  CALL R8 1 0
  JUMP [+33]
  LOADK R7 K34 ["Attachment0"]
  SETTABLEKS R7 R1 K33 ["Name"]
  LOADK R5 K45 ["initial"]
  MOVE R9 R1
  NAMECALL R7 R0 K21 ["_selectInitialInstance"]
  CALL R7 2 0
  JUMP [+24]
  GETTABLEKS R7 R4 K30 ["Attachments"]
  JUMPIFNOTEQKN R7 K46 [1] [+21]
  GETTABLEKS R7 R0 K10 ["_constraintType"]
  JUMPIFEQKS R7 K24 ["Attachment"] [+17]
  GETIMPORT R7 K14 [Instance.new]
  GETTABLEKS R8 R0 K10 ["_constraintType"]
  GETTABLEKS R9 R1 K29 ["Parent"]
  CALL R7 2 1
  MOVE R6 R7
  SETTABLEKS R1 R6 K34 ["Attachment0"]
  NAMECALL R7 R0 K19 ["_clearInitialInstance"]
  CALL R7 1 0
  NAMECALL R7 R0 K20 ["_removeConstraintVisuals"]
  CALL R7 1 0
  JUMPIFNOT R6 [+11]
  GETTABLEKS R7 R4 K47 ["Properties"]
  JUMPIFNOT R7 [+8]
  GETTABLEKS R7 R4 K47 ["Properties"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  SETTABLE R11 R6 R10
  FORGLOOP R7 2 [-2]
  JUMPIFNOT R1 [+12]
  GETTABLEKS R7 R0 K48 ["_undoAttachmentStack"]
  LOADN R8 1
  DUPTABLE R9 K51 [{"attachment", "type"}]
  SETTABLEKS R1 R9 K49 ["attachment"]
  SETTABLEKS R5 R9 K50 ["type"]
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K54 [table.insert]
  CALL R6 3 0
  GETUPVAL R6 0
  MOVE R8 R2
  MOVE R9 R3
  NAMECALL R6 R6 K55 ["FinishRecording"]
  CALL R6 3 0
  NAMECALL R6 R0 K56 ["_updateAttachment"]
  CALL R6 1 0
  RETURN R0 0

PROTO_39:
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

PROTO_40:
  NAMECALL R1 R0 K0 ["_updateAttachment"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["_scheduleRender"]
  CALL R1 1 0
  RETURN R0 0

PROTO_41:
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
  GETIMPORT R2 K5 [game]
  LOADK R4 K8 ["Selection"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["DraggerFramework"]
  GETIMPORT R4 K12 [require]
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K12 [require]
  GETTABLEKS R8 R0 K14 ["Src"]
  GETTABLEKS R7 R8 K15 ["Resources"]
  GETTABLEKS R6 R7 K16 ["ConstraintData"]
  CALL R5 1 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R9 R0 K14 ["Src"]
  GETTABLEKS R8 R9 K17 ["Util"]
  GETTABLEKS R7 R8 K18 ["AttachmentMover"]
  CALL R6 1 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R9 R3 K19 ["Utility"]
  GETTABLEKS R8 R9 K20 ["DragHelper"]
  CALL R7 1 1
  GETIMPORT R8 K12 [require]
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K17 ["Util"]
  GETTABLEKS R9 R10 K21 ["AttachmentToolRenderer"]
  CALL R8 1 1
  GETIMPORT R9 K12 [require]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K17 ["Util"]
  GETTABLEKS R10 R11 K22 ["AttachmentToolAnimator"]
  CALL R9 1 1
  GETIMPORT R10 K5 [game]
  LOADK R12 K23 ["EnableConstraintToolGhostAssemblyFeature"]
  NAMECALL R10 R10 K24 ["GetFastFlag"]
  CALL R10 2 1
  GETIMPORT R11 K5 [game]
  LOADK R13 K25 ["EnableConstraintToolPartPassthroughFeature"]
  NAMECALL R11 R11 K24 ["GetFastFlag"]
  CALL R11 2 1
  NEWTABLE R12 64 0
  SETTABLEKS R12 R12 K26 ["__index"]
  FASTCALL VECTOR [+2]
  GETIMPORT R13 K29 [Vector3.new]
  CALL R13 0 1
  LOADNIL R14
  GETIMPORT R15 K32 [Color3.fromRGB]
  LOADN R16 255
  LOADN R17 255
  LOADN R18 0
  CALL R15 3 1
  GETIMPORT R16 K32 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 170
  LOADN R19 0
  CALL R16 3 1
  GETIMPORT R17 K32 [Color3.fromRGB]
  LOADN R18 0
  LOADN R19 255
  LOADN R20 0
  CALL R17 3 1
  GETIMPORT R18 K32 [Color3.fromRGB]
  LOADN R19 255
  LOADN R20 0
  LOADN R21 0
  CALL R18 3 1
  GETIMPORT R19 K32 [Color3.fromRGB]
  LOADN R20 121
  LOADN R21 172
  LOADN R22 255
  CALL R19 3 1
  GETIMPORT R20 K32 [Color3.fromRGB]
  LOADN R21 255
  LOADN R22 0
  LOADN R23 0
  CALL R20 3 1
  GETIMPORT R21 K32 [Color3.fromRGB]
  LOADN R22 108
  LOADN R23 107
  LOADN R24 107
  CALL R21 3 1
  DUPTABLE R22 K38 [{"AllowDragSelect", "ShowLocalSpaceIndicator", "WasAutoSelected", "ShowPivotIndicator", "ShowDragSelect"}]
  LOADB R23 1
  SETTABLEKS R23 R22 K33 ["AllowDragSelect"]
  LOADB R23 0
  SETTABLEKS R23 R22 K34 ["ShowLocalSpaceIndicator"]
  LOADB R23 0
  SETTABLEKS R23 R22 K35 ["WasAutoSelected"]
  LOADB R23 0
  SETTABLEKS R23 R22 K36 ["ShowPivotIndicator"]
  LOADB R23 1
  SETTABLEKS R23 R22 K37 ["ShowDragSelect"]
  DUPTABLE R23 K40 [{"AnalyticsName"}]
  LOADB R24 1
  SETTABLEKS R24 R23 K39 ["AnalyticsName"]
  DUPTABLE R24 K43 [{"WeldConstraint", "NoCollisionConstraint"}]
  LOADB R25 1
  SETTABLEKS R25 R24 K41 ["WeldConstraint"]
  LOADB R25 1
  SETTABLEKS R25 R24 K42 ["NoCollisionConstraint"]
  NEWCLOSURE R25 P0
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE REF R14
  SETTABLEKS R25 R12 K28 ["new"]
  DUPCLOSURE R25 K44 [PROTO_1]
  SETTABLEKS R25 R12 K45 ["_onUndo"]
  DUPCLOSURE R25 K46 [PROTO_2]
  SETTABLEKS R25 R12 K47 ["_onRedo"]
  DUPCLOSURE R25 K48 [PROTO_3]
  CAPTURE VAL R17
  SETTABLEKS R25 R12 K49 ["_createAttachmentAdornment"]
  DUPCLOSURE R25 K50 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R25 R12 K51 ["_initAttachmentAdornment"]
  DUPCLOSURE R25 K52 [PROTO_5]
  CAPTURE VAL R19
  CAPTURE VAL R24
  CAPTURE VAL R2
  SETTABLEKS R25 R12 K53 ["_initSelectionHighlight"]
  DUPCLOSURE R25 K54 [PROTO_6]
  CAPTURE VAL R15
  CAPTURE VAL R16
  SETTABLEKS R25 R12 K55 ["_createAttachmentAdornmentArrows"]
  DUPCLOSURE R25 K56 [PROTO_7]
  SETTABLEKS R25 R12 K57 ["_orientAttachmentAdornment"]
  DUPCLOSURE R25 K58 [PROTO_8]
  SETTABLEKS R25 R12 K59 ["setMouseCursor"]
  DUPCLOSURE R25 K60 [PROTO_9]
  CAPTURE VAL R24
  CAPTURE VAL R4
  SETTABLEKS R25 R12 K61 ["render"]
  DUPCLOSURE R25 K62 [PROTO_10]
  SETTABLEKS R25 R12 K63 ["update"]
  DUPCLOSURE R25 K64 [PROTO_11]
  SETTABLEKS R25 R12 K65 ["getSchema"]
  DUPCLOSURE R25 K66 [PROTO_12]
  SETTABLEKS R25 R12 K67 ["doesAllowDragSelect"]
  DUPCLOSURE R25 K68 [PROTO_13]
  SETTABLEKS R25 R12 K69 ["shouldShowDragSelect"]
  DUPCLOSURE R25 K70 [PROTO_14]
  SETTABLEKS R25 R12 K71 ["shouldShowLocalSpaceIndicator"]
  DUPCLOSURE R25 K72 [PROTO_15]
  SETTABLEKS R25 R12 K73 ["shouldShowSelectionDot"]
  DUPCLOSURE R25 K74 [PROTO_16]
  SETTABLEKS R25 R12 K75 ["shouldUseCollisionTransparency"]
  DUPCLOSURE R25 K76 [PROTO_17]
  SETTABLEKS R25 R12 K77 ["shouldAlignDraggedObjects"]
  DUPCLOSURE R25 K78 [PROTO_18]
  CAPTURE VAL R10
  SETTABLEKS R25 R12 K79 ["getRaycastIgnoreList"]
  DUPCLOSURE R25 K80 [PROTO_19]
  CAPTURE VAL R24
  SETTABLEKS R25 R12 K81 ["_setInitialInstanceTransparency"]
  DUPCLOSURE R25 K82 [PROTO_20]
  CAPTURE VAL R24
  CAPTURE VAL R7
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R17
  CAPTURE VAL R18
  SETTABLEKS R25 R12 K83 ["_updateAttachment"]
  DUPCLOSURE R25 K84 [PROTO_21]
  CAPTURE VAL R7
  SETTABLEKS R25 R12 K85 ["_rotateAttachment"]
  DUPCLOSURE R25 K86 [PROTO_22]
  CAPTURE VAL R24
  CAPTURE VAL R10
  SETTABLEKS R25 R12 K87 ["_closeTool"]
  DUPCLOSURE R25 K88 [PROTO_24]
  CAPTURE VAL R2
  SETTABLEKS R25 R12 K89 ["_processSelected"]
  DUPCLOSURE R25 K90 [PROTO_25]
  SETTABLEKS R25 R12 K91 ["_processDeselected"]
  DUPCLOSURE R25 K92 [PROTO_26]
  SETTABLEKS R25 R12 K93 ["_processSelectionChanged"]
  DUPCLOSURE R25 K94 [PROTO_27]
  SETTABLEKS R25 R12 K95 ["_setConstraintType"]
  DUPCLOSURE R25 K96 [PROTO_28]
  CAPTURE VAL R5
  SETTABLEKS R25 R12 K97 ["_getConstraintData"]
  DUPCLOSURE R25 K98 [PROTO_29]
  SETTABLEKS R25 R12 K99 ["_createConstraintVisuals"]
  DUPCLOSURE R25 K100 [PROTO_30]
  SETTABLEKS R25 R12 K101 ["_removeConstraintVisuals"]
  DUPCLOSURE R25 K102 [PROTO_31]
  SETTABLEKS R25 R12 K103 ["_removeAttachmentAdorns"]
  GETIMPORT R25 K106 [table.freeze]
  NEWTABLE R26 8 0
  GETIMPORT R27 K110 [Enum.KeyCode.RightShift]
  LOADB R28 1
  SETTABLE R28 R26 R27
  GETIMPORT R27 K112 [Enum.KeyCode.LeftShift]
  LOADB R28 1
  SETTABLE R28 R26 R27
  GETIMPORT R27 K114 [Enum.KeyCode.RightControl]
  LOADB R28 1
  SETTABLE R28 R26 R27
  GETIMPORT R27 K116 [Enum.KeyCode.LeftControl]
  LOADB R28 1
  SETTABLE R28 R26 R27
  GETIMPORT R27 K118 [Enum.KeyCode.RightAlt]
  LOADB R28 1
  SETTABLE R28 R26 R27
  GETIMPORT R27 K120 [Enum.KeyCode.LeftAlt]
  LOADB R28 1
  SETTABLE R28 R26 R27
  CALL R25 1 1
  DUPCLOSURE R26 K121 [PROTO_32]
  CAPTURE VAL R11
  CAPTURE VAL R25
  SETTABLEKS R26 R12 K122 ["_processKeyDown"]
  DUPCLOSURE R26 K123 [PROTO_33]
  CAPTURE VAL R25
  SETTABLEKS R26 R12 K124 ["_processKeyUp"]
  DUPCLOSURE R26 K125 [PROTO_34]
  CAPTURE VAL R24
  SETTABLEKS R26 R12 K126 ["_clearInitialInstance"]
  DUPCLOSURE R26 K127 [PROTO_36]
  CAPTURE VAL R24
  SETTABLEKS R26 R12 K128 ["_selectInitialInstance"]
  DUPCLOSURE R26 K129 [PROTO_37]
  CAPTURE VAL R24
  SETTABLEKS R26 R12 K130 ["_canMouseDown"]
  NEWCLOSURE R26 P36
  CAPTURE VAL R1
  CAPTURE REF R14
  CAPTURE VAL R24
  CAPTURE VAL R2
  CAPTURE VAL R10
  SETTABLEKS R26 R12 K131 ["_processMouseDown"]
  DUPCLOSURE R26 K132 [PROTO_39]
  CAPTURE VAL R1
  SETTABLEKS R26 R12 K133 ["_processMouseUp"]
  DUPCLOSURE R26 K134 [PROTO_40]
  SETTABLEKS R26 R12 K135 ["_processViewChanged"]
  DUPCLOSURE R26 K136 [PROTO_41]
  SETTABLEKS R26 R12 K137 ["_scheduleRender"]
  CLOSEUPVALS R14
  RETURN R12 1
