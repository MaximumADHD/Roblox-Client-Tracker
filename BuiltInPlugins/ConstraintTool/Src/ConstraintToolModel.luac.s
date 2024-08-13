PROTO_0:
  GETIMPORT R11 K1 [pairs]
  MOVE R12 R2
  CALL R11 1 3
  FORGPREP_NEXT R11
  GETUPVAL R17 0
  GETTABLE R16 R17 R14
  JUMPIFNOTEQKNIL R16 [+12]
  GETUPVAL R17 1
  GETTABLE R16 R17 R14
  JUMPIFNOTEQKNIL R16 [+8]
  GETIMPORT R16 K3 [error]
  LOADK R18 K4 ["Unexpected ConstraintToolModel prop `"]
  MOVE R19 R14
  LOADK R20 K5 ["`"]
  CONCAT R17 R18 R20
  CALL R16 1 0
  FORGLOOP R11 2 [-16]
  NEWTABLE R11 0 0
  GETIMPORT R12 K1 [pairs]
  GETUPVAL R13 1
  CALL R12 1 3
  FORGPREP_NEXT R12
  GETTABLE R17 R2 R15
  JUMPIFNOTEQKNIL R17 [+9]
  GETIMPORT R18 K3 [error]
  LOADK R20 K6 ["Required prop `"]
  MOVE R21 R15
  LOADK R22 K7 ["` missing from ConstraintToolModel props"]
  CONCAT R19 R20 R22
  CALL R18 1 0
  JUMP [+1]
  SETTABLE R17 R11 R15
  FORGLOOP R12 2 [-13]
  GETIMPORT R12 K1 [pairs]
  GETUPVAL R13 0
  CALL R12 1 3
  FORGPREP_NEXT R12
  GETTABLE R17 R2 R15
  JUMPIFEQKNIL R17 [+4]
  GETTABLE R17 R2 R15
  SETTABLE R17 R11 R15
  JUMP [+1]
  SETTABLE R16 R11 R15
  FORGLOOP R12 2 [-8]
  GETIMPORT R12 K10 [Instance.new]
  LOADK R13 K11 ["Folder"]
  CALL R12 1 1
  LOADK R13 K12 ["ConstraintTool"]
  SETTABLEKS R13 R12 K13 ["Name"]
  GETIMPORT R14 K15 [game]
  GETTABLEKS R13 R14 K16 ["CoreGui"]
  SETTABLEKS R13 R12 K17 ["Parent"]
  DUPTABLE R14 K39 [{"_draggerContext", "_draggerSchema", "_modelProps", "_closePluginCallback", "_requestRenderCallback", "_constraintToolVisualsFolder", "_markViewDirtyCallback", "_undoAttachmentStack", "_redoAttachmentStack", "_plugin", "_openedTimestamp", "_attachmentMover", "_attachmentArrowVisuals", "_ancestryChangedConnection", "_weldHoverHighlight", "_ghostAssembly", "_attachmentAdornment", "_initialInstanceAdornment", "_constraintType", "_tiltRotate", "_recordingIdentifier"}]
  SETTABLEKS R0 R14 K18 ["_draggerContext"]
  SETTABLEKS R1 R14 K19 ["_draggerSchema"]
  SETTABLEKS R11 R14 K20 ["_modelProps"]
  SETTABLEKS R3 R14 K21 ["_closePluginCallback"]
  SETTABLEKS R9 R14 K22 ["_requestRenderCallback"]
  SETTABLEKS R12 R14 K23 ["_constraintToolVisualsFolder"]
  SETTABLEKS R10 R14 K24 ["_markViewDirtyCallback"]
  SETTABLEKS R4 R14 K25 ["_undoAttachmentStack"]
  SETTABLEKS R5 R14 K26 ["_redoAttachmentStack"]
  SETTABLEKS R7 R14 K27 ["_plugin"]
  GETIMPORT R15 K42 [os.clock]
  CALL R15 0 1
  SETTABLEKS R15 R14 K28 ["_openedTimestamp"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K9 ["new"]
  CALL R15 0 1
  SETTABLEKS R15 R14 K29 ["_attachmentMover"]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K30 ["_attachmentArrowVisuals"]
  LOADNIL R15
  SETTABLEKS R15 R14 K31 ["_ancestryChangedConnection"]
  LOADNIL R15
  SETTABLEKS R15 R14 K32 ["_weldHoverHighlight"]
  LOADNIL R15
  SETTABLEKS R15 R14 K33 ["_ghostAssembly"]
  LOADNIL R15
  SETTABLEKS R15 R14 K34 ["_attachmentAdornment"]
  LOADNIL R15
  SETTABLEKS R15 R14 K35 ["_initialInstanceAdornment"]
  LOADNIL R15
  SETTABLEKS R15 R14 K36 ["_constraintType"]
  GETIMPORT R15 K44 [CFrame.new]
  CALL R15 0 1
  SETTABLEKS R15 R14 K37 ["_tiltRotate"]
  LOADNIL R15
  SETTABLEKS R15 R14 K38 ["_recordingIdentifier"]
  GETUPVAL R15 3
  FASTCALL2 SETMETATABLE R14 R15 [+3]
  GETIMPORT R13 K46 [setmetatable]
  CALL R13 2 1
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K9 ["new"]
  GETTABLEKS R15 R13 K18 ["_draggerContext"]
  GETTABLEKS R16 R13 K19 ["_draggerSchema"]
  MOVE R17 R13
  CALL R14 3 1
  SETTABLEKS R14 R13 K47 ["_attachmentToolRenderer"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K9 ["new"]
  MOVE R15 R13
  CALL R14 1 1
  SETTABLEKS R14 R13 K48 ["_attachmentToolAnimator"]
  SETUPVAL R6 6
  MOVE R14 R8
  MOVE R15 R13
  CALL R14 1 1
  GETTABLEKS R15 R14 K49 ["undo"]
  SETTABLEKS R15 R13 K50 ["_mainUndo"]
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
  SETTABLEKS R1 R0 K13 ["_weldHoverHighlight"]
  GETUPVAL R2 1
  NAMECALL R2 R2 K14 ["Get"]
  CALL R2 1 1
  LENGTH R3 R2
  JUMPIFNOTEQKN R3 K15 [1] [+11]
  GETTABLEN R3 R2 1
  LOADK R5 K16 ["BasePart"]
  NAMECALL R3 R3 K17 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+4]
  GETTABLEN R5 R2 1
  NAMECALL R3 R0 K18 ["_selectInitialInstance"]
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
  GETTABLEKS R1 R0 K0 ["_constraintType"]
  JUMPIFEQKS R1 K1 ["WeldConstraint"] [+5]
  GETTABLEKS R1 R0 K0 ["_constraintType"]
  JUMPIFNOTEQKS R1 K2 ["NoCollisionConstraint"] [+8]
  GETTABLEKS R1 R0 K3 ["_draggerContext"]
  LOADK R3 K4 ["rbxasset://textures/ConstraintCursor.png"]
  NAMECALL R1 R1 K5 ["setMouseIcon"]
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["createElement"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["Portal"]
  DUPTABLE R3 K9 [{"target"}]
  GETTABLEKS R4 R0 K3 ["_draggerContext"]
  NAMECALL R4 R4 K10 ["getGuiParent"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K8 ["target"]
  DUPTABLE R4 K12 [{"DraggerUI"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["createElement"]
  LOADK R6 K13 ["Folder"]
  NEWTABLE R7 0 0
  GETTABLEKS R8 R0 K14 ["_attachmentToolRenderer"]
  NAMECALL R8 R8 K15 ["render"]
  CALL R8 1 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K11 ["DraggerUI"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_9:
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

PROTO_10:
  GETTABLEKS R1 R0 K0 ["_draggerSchema"]
  RETURN R1 1

PROTO_11:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["AllowDragSelect"]
  RETURN R1 1

PROTO_12:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowDragSelect"]
  RETURN R1 1

PROTO_13:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowLocalSpaceIndicator"]
  RETURN R1 1

PROTO_14:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["ShowSelectionDot"]
  RETURN R1 1

PROTO_15:
  GETTABLEKS R2 R0 K0 ["_modelProps"]
  GETTABLEKS R1 R2 K1 ["UseCollisionsTransparency"]
  RETURN R1 1

PROTO_16:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["shouldAlignDraggedObjects"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_17:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["getMouseRay"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K2 ["_constraintType"]
  JUMPIFEQKS R2 K3 ["WeldConstraint"] [+5]
  GETTABLEKS R2 R0 K2 ["_constraintType"]
  JUMPIFNOTEQKS R2 K4 ["NoCollisionConstraint"] [+108]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["raycast"]
  MOVE R3 R1
  NEWTABLE R4 0 0
  CALL R2 2 1
  JUMPIFNOT R2 [+43]
  GETTABLEKS R3 R0 K6 ["_weldHoverHighlight"]
  GETTABLEKS R4 R2 K7 ["Instance"]
  SETTABLEKS R4 R3 K8 ["Adornee"]
  GETTABLEKS R3 R0 K9 ["_constraintConnectionVisual"]
  JUMPIFNOT R3 [+34]
  GETTABLEKS R5 R2 K10 ["Position"]
  GETTABLEKS R7 R0 K11 ["_initialInstance"]
  GETTABLEKS R6 R7 K10 ["Position"]
  SUB R4 R5 R6
  GETTABLEKS R3 R4 K12 ["Magnitude"]
  GETTABLEKS R4 R0 K9 ["_constraintConnectionVisual"]
  GETIMPORT R6 K15 [CFrame.new]
  GETTABLEKS R8 R0 K11 ["_initialInstance"]
  GETTABLEKS R7 R8 K10 ["Position"]
  GETTABLEKS R8 R2 K10 ["Position"]
  CALL R6 2 1
  GETIMPORT R7 K15 [CFrame.new]
  LOADN R8 0
  LOADN R9 0
  MINUS R11 R3
  DIVK R10 R11 K16 [2]
  CALL R7 3 1
  MUL R5 R6 R7
  SETTABLEKS R5 R4 K13 ["CFrame"]
  GETTABLEKS R4 R0 K9 ["_constraintConnectionVisual"]
  SETTABLEKS R3 R4 K17 ["Height"]
  GETTABLEKS R3 R0 K9 ["_constraintConnectionVisual"]
  JUMPIFNOT R3 [+38]
  GETUPVAL R3 1
  NAMECALL R4 R0 K18 ["_canMouseDown"]
  CALL R4 1 1
  JUMPIF R4 [+2]
  GETUPVAL R3 2
  JUMP [+27]
  GETTABLEKS R4 R0 K11 ["_initialInstance"]
  JUMPIFNOT R4 [+24]
  GETTABLEKS R4 R0 K19 ["_currentHoveringInstance"]
  JUMPIFNOT R4 [+21]
  GETTABLEKS R5 R0 K19 ["_currentHoveringInstance"]
  GETTABLEKS R4 R5 K20 ["AssemblyRootPart"]
  GETTABLEKS R6 R0 K11 ["_initialInstance"]
  GETTABLEKS R5 R6 K20 ["AssemblyRootPart"]
  JUMPIFEQ R4 R5 [+11]
  GETTABLEKS R5 R0 K19 ["_currentHoveringInstance"]
  GETTABLEKS R4 R5 K21 ["Anchored"]
  JUMPIFNOT R4 [+6]
  GETTABLEKS R5 R0 K11 ["_initialInstance"]
  GETTABLEKS R4 R5 K21 ["Anchored"]
  JUMPIFNOT R4 [+1]
  GETUPVAL R3 3
  GETTABLEKS R4 R0 K9 ["_constraintConnectionVisual"]
  SETTABLEKS R3 R4 K22 ["Color3"]
  GETTABLEKS R3 R0 K6 ["_weldHoverHighlight"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K23 ["Enabled"]
  MOVE R3 R2
  JUMPIFNOT R3 [+2]
  GETTABLEKS R3 R2 K7 ["Instance"]
  SETTABLEKS R3 R0 K19 ["_currentHoveringInstance"]
  RETURN R0 0
  LOADNIL R2
  GETTABLEKS R3 R0 K24 ["_lastDragTarget"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R3 R0 K24 ["_lastDragTarget"]
  GETTABLEKS R2 R3 K25 ["targetMatrix"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K26 ["getDragTarget"]
  NEWTABLE R4 0 1
  GETUPVAL R6 4
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R0 K27 ["_ghostAssembly"]
  JUMPIF R5 [+1]
  LOADNIL R5
  SETLIST R4 R5 1 [1]
  GETIMPORT R5 K15 [CFrame.new]
  CALL R5 0 1
  GETUPVAL R6 5
  GETUPVAL R7 5
  GETUPVAL R8 5
  MOVE R9 R1
  GETTABLEKS R11 R0 K0 ["_draggerContext"]
  NAMECALL R11 R11 K28 ["shouldGridSnap"]
  CALL R11 1 1
  JUMPIFNOT R11 [+6]
  GETTABLEKS R10 R0 K0 ["_draggerContext"]
  NAMECALL R10 R10 K29 ["getGridSize"]
  CALL R10 1 1
  JUMP [+1]
  LOADNIL R10
  GETTABLEKS R11 R0 K30 ["_tiltRotate"]
  MOVE R12 R2
  NAMECALL R13 R0 K31 ["shouldAlignDraggedObjects"]
  CALL R13 1 1
  JUMPIFNOT R13 [+6]
  GETTABLEKS R14 R0 K0 ["_draggerContext"]
  NAMECALL R14 R14 K32 ["isAltKeyDown"]
  CALL R14 1 1
  NOT R13 R14
  LOADB R14 0
  GETTABLEKS R15 R0 K0 ["_draggerContext"]
  NAMECALL R15 R15 K33 ["getSoftSnapMarginFactor"]
  CALL R15 1 1
  GETTABLEKS R16 R0 K0 ["_draggerContext"]
  NAMECALL R16 R16 K34 ["shouldPartSnap"]
  CALL R16 1 1
  LOADB R17 1
  CALL R3 14 1
  GETTABLEKS R4 R0 K0 ["_draggerContext"]
  GETTABLEKS R6 R1 K35 ["Origin"]
  GETTABLEKS R7 R1 K36 ["Direction"]
  GETIMPORT R8 K38 [RaycastParams.new]
  CALL R8 0 -1
  NAMECALL R4 R4 K39 ["gizmoRaycast"]
  CALL R4 -1 1
  LOADNIL R5
  LOADNIL R6
  JUMPIFNOT R4 [+15]
  GETTABLEKS R7 R4 K7 ["Instance"]
  JUMPIFNOT R7 [+12]
  GETTABLEKS R7 R4 K7 ["Instance"]
  LOADK R9 K40 ["Attachment"]
  NAMECALL R7 R7 K41 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+5]
  GETTABLEKS R6 R4 K7 ["Instance"]
  GETTABLEKS R5 R6 K42 ["WorldCFrame"]
  JUMP [+8]
  JUMPIFNOT R3 [+7]
  GETTABLEKS R7 R3 K43 ["targetPart"]
  JUMPIFNOT R7 [+4]
  GETTABLEKS R6 R3 K43 ["targetPart"]
  GETTABLEKS R5 R3 K44 ["mainCFrame"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R7 R3 K43 ["targetPart"]
  JUMPIFNOT R7 [+2]
  SETTABLEKS R3 R0 K24 ["_lastDragTarget"]
  SETTABLEKS R6 R0 K19 ["_currentHoveringInstance"]
  JUMPIFNOT R6 [+167]
  GETUPVAL R7 4
  JUMPIFNOT R7 [+71]
  GETTABLEKS R7 R0 K27 ["_ghostAssembly"]
  JUMPIFNOT R7 [+4]
  GETTABLEKS R7 R0 K45 ["_lastHoveringInstance"]
  JUMPIFEQ R7 R6 [+65]
  GETTABLEKS R7 R0 K27 ["_ghostAssembly"]
  JUMPIFNOT R7 [+8]
  GETTABLEKS R7 R0 K27 ["_ghostAssembly"]
  NAMECALL R7 R7 K46 ["Destroy"]
  CALL R7 1 0
  LOADNIL R7
  SETTABLEKS R7 R0 K27 ["_ghostAssembly"]
  GETTABLEKS R7 R0 K11 ["_initialInstance"]
  JUMPIFNOT R7 [+50]
  GETIMPORT R7 K47 [Instance.new]
  LOADK R8 K48 ["Model"]
  CALL R7 1 1
  SETTABLEKS R7 R0 K27 ["_ghostAssembly"]
  GETTABLEKS R7 R0 K27 ["_ghostAssembly"]
  GETIMPORT R9 K50 [workspace]
  GETTABLEKS R8 R9 K51 ["CurrentCamera"]
  SETTABLEKS R8 R7 K52 ["Parent"]
  GETTABLEKS R8 R0 K11 ["_initialInstance"]
  GETTABLEKS R7 R8 K52 ["Parent"]
  NAMECALL R7 R7 K53 ["Clone"]
  CALL R7 1 1
  GETTABLEKS R8 R0 K27 ["_ghostAssembly"]
  SETTABLEKS R8 R7 K52 ["Parent"]
  GETTABLEKS R8 R0 K27 ["_ghostAssembly"]
  SETTABLEKS R7 R8 K54 ["PrimaryPart"]
  GETIMPORT R8 K56 [pairs]
  GETTABLEKS R10 R0 K11 ["_initialInstance"]
  GETTABLEKS R9 R10 K52 ["Parent"]
  LOADB R11 1
  NAMECALL R9 R9 K57 ["GetConnectedParts"]
  CALL R9 2 -1
  CALL R8 -1 3
  FORGPREP_NEXT R8
  NAMECALL R13 R12 K53 ["Clone"]
  CALL R13 1 1
  GETTABLEKS R14 R0 K27 ["_ghostAssembly"]
  SETTABLEKS R14 R13 K52 ["Parent"]
  FORGLOOP R8 2 [-8]
  GETTABLEKS R7 R0 K58 ["_attachmentAdornment"]
  NAMECALL R9 R0 K18 ["_canMouseDown"]
  CALL R9 1 1
  JUMPIFNOT R9 [+2]
  GETUPVAL R8 6
  JUMPIF R8 [+1]
  GETUPVAL R8 7
  SETTABLEKS R8 R7 K22 ["Color3"]
  GETTABLEKS R7 R0 K59 ["_attachmentToolAnimator"]
  NAMECALL R7 R7 K60 ["inProgress"]
  CALL R7 1 1
  JUMPIF R7 [+6]
  GETTABLEKS R9 R0 K58 ["_attachmentAdornment"]
  MOVE R10 R5
  NAMECALL R7 R0 K61 ["_orientAttachmentAdornment"]
  CALL R7 3 0
  GETTABLEKS R7 R0 K11 ["_initialInstance"]
  JUMPIFNOT R7 [+68]
  GETTABLEKS R8 R0 K11 ["_initialInstance"]
  GETTABLEKS R7 R8 K42 ["WorldCFrame"]
  GETTABLEKS R11 R0 K11 ["_initialInstance"]
  GETTABLEKS R10 R11 K52 ["Parent"]
  GETTABLEKS R9 R10 K13 ["CFrame"]
  NAMECALL R7 R7 K62 ["ToObjectSpace"]
  CALL R7 2 1
  GETTABLEKS R10 R5 K63 ["p"]
  GETTABLEKS R13 R0 K11 ["_initialInstance"]
  GETTABLEKS R12 R13 K42 ["WorldCFrame"]
  GETTABLEKS R11 R12 K63 ["p"]
  SUB R9 R10 R11
  GETTABLEKS R8 R9 K12 ["Magnitude"]
  GETTABLEKS R9 R0 K9 ["_constraintConnectionVisual"]
  GETIMPORT R11 K15 [CFrame.new]
  GETTABLEKS R14 R0 K11 ["_initialInstance"]
  GETTABLEKS R13 R14 K42 ["WorldCFrame"]
  GETTABLEKS R12 R13 K63 ["p"]
  GETTABLEKS R13 R5 K63 ["p"]
  CALL R11 2 1
  GETIMPORT R12 K15 [CFrame.new]
  LOADN R13 0
  LOADN R14 0
  MINUS R16 R8
  DIVK R15 R16 K16 [2]
  CALL R12 3 1
  MUL R10 R11 R12
  SETTABLEKS R10 R9 K13 ["CFrame"]
  GETTABLEKS R9 R0 K9 ["_constraintConnectionVisual"]
  SETTABLEKS R8 R9 K17 ["Height"]
  GETTABLEKS R11 R0 K64 ["_initialInstanceAdornment"]
  GETTABLEKS R13 R0 K11 ["_initialInstance"]
  GETTABLEKS R12 R13 K42 ["WorldCFrame"]
  NAMECALL R9 R0 K61 ["_orientAttachmentAdornment"]
  CALL R9 3 0
  GETUPVAL R9 4
  JUMPIFNOT R9 [+6]
  GETTABLEKS R9 R0 K27 ["_ghostAssembly"]
  MUL R11 R5 R7
  NAMECALL R9 R9 K65 ["SetPrimaryPartCFrame"]
  CALL R9 2 0
  RETURN R0 0

PROTO_18:
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
  NEWTABLE R6 0 0
  GETIMPORT R7 K8 [CFrame.new]
  CALL R7 0 1
  MOVE R8 R2
  GETTABLEKS R9 R0 K9 ["_tiltRotate"]
  MOVE R10 R1
  NAMECALL R11 R0 K10 ["shouldAlignDraggedObjects"]
  CALL R11 1 1
  JUMPIFNOT R11 [+6]
  GETTABLEKS R12 R0 K3 ["_draggerContext"]
  NAMECALL R12 R12 K11 ["isAltKeyDown"]
  CALL R12 1 1
  NOT R11 R12
  GETTABLEKS R13 R0 K3 ["_draggerContext"]
  NAMECALL R13 R13 K12 ["shouldGridSnap"]
  CALL R13 1 1
  JUMPIFNOT R13 [+6]
  GETTABLEKS R12 R0 K3 ["_draggerContext"]
  NAMECALL R12 R12 K13 ["getGridSize"]
  CALL R12 1 1
  JUMP [+1]
  LOADNIL R12
  LOADB R13 1
  CALL R3 10 1
  GETTABLEKS R4 R0 K0 ["_lastDragTarget"]
  JUMPIFNOT R4 [+7]
  GETTABLEKS R4 R0 K14 ["_attachmentToolAnimator"]
  MOVE R6 R3
  NAMECALL R4 R4 K15 ["beginAnimation"]
  CALL R4 2 0
  JUMP [+2]
  SETTABLEKS R3 R0 K9 ["_tiltRotate"]
  NAMECALL R4 R0 K16 ["_updateAttachment"]
  CALL R4 1 0
  NAMECALL R4 R0 K17 ["_scheduleRender"]
  CALL R4 1 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R1 R0 K0 ["_initialInstance"]
  JUMPIFNOT R1 [+13]
  GETTABLEKS R1 R0 K1 ["_constraintType"]
  JUMPIFEQKS R1 K2 ["WeldConstraint"] [+10]
  GETTABLEKS R1 R0 K1 ["_constraintType"]
  JUMPIFEQKS R1 K3 ["NoCollisionConstraint"] [+6]
  GETTABLEKS R1 R0 K0 ["_initialInstance"]
  NAMECALL R1 R1 K4 ["Destroy"]
  CALL R1 1 0
  GETUPVAL R1 0
  JUMPIFNOT R1 [+11]
  GETTABLEKS R1 R0 K5 ["_ghostAssembly"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K5 ["_ghostAssembly"]
  NAMECALL R1 R1 K4 ["Destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["_ghostAssembly"]
  GETTABLEKS R2 R0 K6 ["_constraintToolVisualsFolder"]
  GETTABLEKS R1 R2 K7 ["Parent"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K6 ["_constraintToolVisualsFolder"]
  NAMECALL R1 R1 K4 ["Destroy"]
  CALL R1 1 0
  NAMECALL R1 R0 K8 ["_clearInitialInstance"]
  CALL R1 1 0
  NAMECALL R1 R0 K9 ["_removeConstraintVisuals"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K10 ["_closePluginCallback"]
  CALL R1 0 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_processSelectionChanged"]
  CALL R0 1 0
  RETURN R0 0

PROTO_21:
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
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["SelectionChanged"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K8 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K9 ["_selectionChangedConnection"]
  RETURN R0 0

PROTO_22:
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

PROTO_23:
  NAMECALL R1 R0 K0 ["_scheduleRender"]
  CALL R1 1 0
  RETURN R0 0

PROTO_24:
  SETTABLEKS R1 R0 K0 ["_constraintType"]
  RETURN R0 0

PROTO_25:
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["_constraintType"]
  GETTABLE R1 R2 R3
  RETURN R1 1

PROTO_26:
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

PROTO_27:
  GETTABLEKS R1 R0 K0 ["_constraintConnectionVisual"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_constraintConnectionVisual"]
  NAMECALL R1 R1 K1 ["Destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_constraintConnectionVisual"]
  RETURN R0 0

PROTO_28:
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

PROTO_29:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+6]
  NAMECALL R2 R0 K0 ["_updateAttachment"]
  CALL R2 1 0
  NAMECALL R2 R0 K1 ["_scheduleRender"]
  CALL R2 1 0
  RETURN R0 0

PROTO_30:
  GETTABLEKS R1 R0 K0 ["_ancestryChangedConnection"]
  JUMPIFNOT R1 [+48]
  GETTABLEKS R1 R0 K1 ["_constraintType"]
  JUMPIFEQKS R1 K2 ["WeldConstraint"] [+31]
  GETTABLEKS R1 R0 K1 ["_constraintType"]
  JUMPIFEQKS R1 K3 ["NoCollisionConstraint"] [+27]
  GETTABLEKS R2 R0 K4 ["_attachmentArrowVisuals"]
  GETTABLEKS R3 R0 K5 ["_initialInstanceAdornment"]
  GETTABLE R1 R2 R3
  GETIMPORT R2 K7 [pairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_NEXT R2
  NAMECALL R7 R6 K8 ["Destroy"]
  CALL R7 1 0
  FORGLOOP R2 2 [-4]
  GETTABLEKS R2 R0 K5 ["_initialInstanceAdornment"]
  NAMECALL R2 R2 K8 ["Destroy"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K4 ["_attachmentArrowVisuals"]
  GETTABLEKS R3 R0 K5 ["_initialInstanceAdornment"]
  LOADNIL R4
  SETTABLE R4 R2 R3
  GETTABLEKS R1 R0 K0 ["_ancestryChangedConnection"]
  NAMECALL R1 R1 K9 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_ancestryChangedConnection"]
  LOADNIL R1
  SETTABLEKS R1 R0 K10 ["_initialInstance"]
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["_initialInstanceAdornment"]
  RETURN R0 0

PROTO_31:
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

PROTO_32:
  SETTABLEKS R1 R0 K0 ["_initialInstance"]
  GETTABLEKS R2 R1 K1 ["AncestryChanged"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  NAMECALL R2 R2 K2 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K3 ["_ancestryChangedConnection"]
  GETTABLEKS R2 R0 K4 ["_constraintType"]
  JUMPIFEQKS R2 K5 ["WeldConstraint"] [+10]
  GETTABLEKS R2 R0 K4 ["_constraintType"]
  JUMPIFEQKS R2 K6 ["NoCollisionConstraint"] [+6]
  NAMECALL R2 R0 K7 ["_createAttachmentAdornment"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K8 ["_initialInstanceAdornment"]
  NAMECALL R2 R0 K9 ["_createConstraintVisuals"]
  CALL R2 1 0
  RETURN R0 0

PROTO_33:
  NAMECALL R1 R0 K0 ["_getConstraintData"]
  CALL R1 1 1
  LOADB R2 1
  GETTABLEKS R3 R0 K1 ["_constraintType"]
  JUMPIFEQKS R3 K2 ["WeldConstraint"] [+7]
  GETTABLEKS R3 R0 K1 ["_constraintType"]
  JUMPIFEQKS R3 K3 ["NoCollisionConstraint"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETTABLEKS R3 R0 K4 ["_currentHoveringInstance"]
  JUMPIF R3 [+2]
  LOADB R3 0
  RETURN R3 1
  JUMPIFNOT R1 [+37]
  GETTABLEKS R3 R1 K5 ["Attachments"]
  JUMPIFNOTEQKN R3 K6 [2] [+34]
  GETTABLEKS R3 R0 K7 ["_initialInstance"]
  JUMPIFNOT R3 [+30]
  GETTABLEKS R3 R1 K8 ["IgnoreSamePartCheck"]
  JUMPIF R3 [+27]
  GETTABLEKS R3 R0 K4 ["_currentHoveringInstance"]
  LOADK R6 K9 ["Attachment"]
  NAMECALL R4 R3 K10 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+2]
  GETTABLEKS R3 R3 K11 ["Parent"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R4 R0 K7 ["_initialInstance"]
  GETTABLEKS R5 R0 K4 ["_currentHoveringInstance"]
  JUMPIFNOTEQ R4 R5 [+3]
  LOADB R4 0
  RETURN R4 1
  JUMPIF R2 [+8]
  GETTABLEKS R5 R0 K7 ["_initialInstance"]
  GETTABLEKS R4 R5 K11 ["Parent"]
  JUMPIFNOTEQ R4 R3 [+3]
  LOADB R4 0
  RETURN R4 1
  LOADB R3 1
  RETURN R3 1

PROTO_34:
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
  GETTABLEKS R6 R0 K10 ["_constraintType"]
  JUMPIFEQKS R6 K11 ["WeldConstraint"] [+5]
  GETTABLEKS R6 R0 K10 ["_constraintType"]
  JUMPIFNOTEQKS R6 K12 ["NoCollisionConstraint"] [+44]
  GETTABLEKS R6 R0 K13 ["_initialInstance"]
  JUMPIFNOT R6 [+32]
  GETIMPORT R6 K16 [Instance.new]
  GETTABLEKS R7 R0 K10 ["_constraintType"]
  GETTABLEKS R8 R0 K13 ["_initialInstance"]
  CALL R6 2 1
  MOVE R1 R6
  GETTABLEKS R6 R0 K13 ["_initialInstance"]
  SETTABLEKS R6 R1 K17 ["Part0"]
  GETTABLEKS R6 R0 K18 ["_currentHoveringInstance"]
  SETTABLEKS R6 R1 K19 ["Part1"]
  GETUPVAL R6 2
  NEWTABLE R8 0 1
  MOVE R9 R1
  SETLIST R8 R9 1 [1]
  NAMECALL R6 R6 K20 ["Set"]
  CALL R6 2 0
  NAMECALL R6 R0 K21 ["_clearInitialInstance"]
  CALL R6 1 0
  NAMECALL R6 R0 K22 ["_removeConstraintVisuals"]
  CALL R6 1 0
  JUMP [+160]
  GETTABLEKS R8 R0 K18 ["_currentHoveringInstance"]
  NAMECALL R6 R0 K23 ["_selectInitialInstance"]
  CALL R6 2 0
  GETIMPORT R3 K25 [Enum.FinishRecordingOperation.Cancel]
  JUMP [+152]
  GETTABLEKS R6 R0 K18 ["_currentHoveringInstance"]
  LOADK R8 K26 ["Attachment"]
  NAMECALL R6 R6 K27 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R1 R0 K18 ["_currentHoveringInstance"]
  JUMP [+22]
  GETIMPORT R6 K16 [Instance.new]
  LOADK R7 K26 ["Attachment"]
  CALL R6 1 1
  MOVE R1 R6
  GETTABLEKS R7 R0 K18 ["_currentHoveringInstance"]
  GETTABLEKS R6 R7 K28 ["CFrame"]
  GETTABLEKS R9 R0 K29 ["_attachmentAdornment"]
  GETTABLEKS R8 R9 K28 ["CFrame"]
  NAMECALL R6 R6 K30 ["ToObjectSpace"]
  CALL R6 2 1
  SETTABLEKS R6 R1 K28 ["CFrame"]
  GETTABLEKS R6 R0 K18 ["_currentHoveringInstance"]
  SETTABLEKS R6 R1 K31 ["Parent"]
  LOADNIL R6
  GETTABLEKS R7 R4 K32 ["Attachments"]
  JUMPIFNOTEQKN R7 K33 [2] [+79]
  GETTABLEKS R7 R0 K13 ["_initialInstance"]
  JUMPIFNOT R7 [+66]
  LOADK R7 K34 ["Attachment1"]
  SETTABLEKS R7 R1 K35 ["Name"]
  GETIMPORT R7 K16 [Instance.new]
  GETTABLEKS R8 R0 K10 ["_constraintType"]
  GETTABLEKS R10 R0 K13 ["_initialInstance"]
  GETTABLEKS R9 R10 K31 ["Parent"]
  CALL R7 2 1
  MOVE R6 R7
  GETTABLEKS R7 R0 K13 ["_initialInstance"]
  SETTABLEKS R7 R6 K36 ["Attachment0"]
  SETTABLEKS R1 R6 K34 ["Attachment1"]
  GETTABLEKS R10 R1 K37 ["WorldCFrame"]
  GETTABLEKS R9 R10 K38 ["p"]
  GETTABLEKS R12 R0 K13 ["_initialInstance"]
  GETTABLEKS R11 R12 K37 ["WorldCFrame"]
  GETTABLEKS R10 R11 K38 ["p"]
  SUB R8 R9 R10
  GETTABLEKS R7 R8 K39 ["Magnitude"]
  GETTABLEKS R8 R0 K10 ["_constraintType"]
  JUMPIFEQKS R8 K40 ["RopeConstraint"] [+5]
  GETTABLEKS R8 R0 K10 ["_constraintType"]
  JUMPIFNOTEQKS R8 K41 ["RodConstraint"] [+4]
  SETTABLEKS R7 R6 K42 ["Length"]
  JUMP [+6]
  GETTABLEKS R8 R0 K10 ["_constraintType"]
  JUMPIFNOTEQKS R8 K43 ["SpringConstraint"] [+3]
  SETTABLEKS R7 R6 K44 ["FreeLength"]
  GETUPVAL R8 3
  JUMPIFNOT R8 [+8]
  GETTABLEKS R8 R0 K45 ["_ghostAssembly"]
  NAMECALL R8 R8 K46 ["Destroy"]
  CALL R8 1 0
  LOADNIL R8
  SETTABLEKS R8 R0 K45 ["_ghostAssembly"]
  NAMECALL R8 R0 K21 ["_clearInitialInstance"]
  CALL R8 1 0
  NAMECALL R8 R0 K22 ["_removeConstraintVisuals"]
  CALL R8 1 0
  JUMP [+33]
  LOADK R7 K36 ["Attachment0"]
  SETTABLEKS R7 R1 K35 ["Name"]
  LOADK R5 K47 ["initial"]
  MOVE R9 R1
  NAMECALL R7 R0 K23 ["_selectInitialInstance"]
  CALL R7 2 0
  JUMP [+24]
  GETTABLEKS R7 R4 K32 ["Attachments"]
  JUMPIFNOTEQKN R7 K48 [1] [+21]
  GETTABLEKS R7 R0 K10 ["_constraintType"]
  JUMPIFEQKS R7 K26 ["Attachment"] [+17]
  GETIMPORT R7 K16 [Instance.new]
  GETTABLEKS R8 R0 K10 ["_constraintType"]
  GETTABLEKS R9 R1 K31 ["Parent"]
  CALL R7 2 1
  MOVE R6 R7
  SETTABLEKS R1 R6 K36 ["Attachment0"]
  NAMECALL R7 R0 K21 ["_clearInitialInstance"]
  CALL R7 1 0
  NAMECALL R7 R0 K22 ["_removeConstraintVisuals"]
  CALL R7 1 0
  JUMPIFNOT R6 [+12]
  GETTABLEKS R7 R4 K49 ["Properties"]
  JUMPIFNOT R7 [+9]
  GETIMPORT R7 K51 [pairs]
  GETTABLEKS R8 R4 K49 ["Properties"]
  CALL R7 1 3
  FORGPREP_NEXT R7
  SETTABLE R11 R6 R10
  FORGLOOP R7 2 [-2]
  JUMPIFNOT R1 [+12]
  GETTABLEKS R7 R0 K52 ["_undoAttachmentStack"]
  LOADN R8 1
  DUPTABLE R9 K55 [{"attachment", "type"}]
  SETTABLEKS R1 R9 K53 ["attachment"]
  SETTABLEKS R5 R9 K54 ["type"]
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K58 [table.insert]
  CALL R6 3 0
  GETUPVAL R6 0
  MOVE R8 R2
  MOVE R9 R3
  NAMECALL R6 R6 K59 ["FinishRecording"]
  CALL R6 3 0
  NAMECALL R6 R0 K60 ["_updateAttachment"]
  CALL R6 1 0
  RETURN R0 0

PROTO_35:
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

PROTO_36:
  NAMECALL R1 R0 K0 ["_updateAttachment"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["_scheduleRender"]
  CALL R1 1 0
  RETURN R0 0

PROTO_37:
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
  NEWTABLE R11 64 0
  SETTABLEKS R11 R11 K25 ["__index"]
  FASTCALL VECTOR [+2]
  GETIMPORT R12 K28 [Vector3.new]
  CALL R12 0 1
  LOADNIL R13
  GETIMPORT R14 K31 [Color3.fromRGB]
  LOADN R15 255
  LOADN R16 255
  LOADN R17 0
  CALL R14 3 1
  GETIMPORT R15 K31 [Color3.fromRGB]
  LOADN R16 255
  LOADN R17 170
  LOADN R18 0
  CALL R15 3 1
  GETIMPORT R16 K31 [Color3.fromRGB]
  LOADN R17 0
  LOADN R18 255
  LOADN R19 0
  CALL R16 3 1
  GETIMPORT R17 K31 [Color3.fromRGB]
  LOADN R18 255
  LOADN R19 0
  LOADN R20 0
  CALL R17 3 1
  GETIMPORT R18 K31 [Color3.fromRGB]
  LOADN R19 121
  LOADN R20 172
  LOADN R21 255
  CALL R18 3 1
  GETIMPORT R19 K31 [Color3.fromRGB]
  LOADN R20 255
  LOADN R21 0
  LOADN R22 0
  CALL R19 3 1
  GETIMPORT R20 K31 [Color3.fromRGB]
  LOADN R21 108
  LOADN R22 107
  LOADN R23 107
  CALL R20 3 1
  DUPTABLE R21 K37 [{"AllowDragSelect", "ShowLocalSpaceIndicator", "WasAutoSelected", "ShowPivotIndicator", "ShowDragSelect"}]
  LOADB R22 1
  SETTABLEKS R22 R21 K32 ["AllowDragSelect"]
  LOADB R22 0
  SETTABLEKS R22 R21 K33 ["ShowLocalSpaceIndicator"]
  LOADB R22 0
  SETTABLEKS R22 R21 K34 ["WasAutoSelected"]
  LOADB R22 0
  SETTABLEKS R22 R21 K35 ["ShowPivotIndicator"]
  LOADB R22 1
  SETTABLEKS R22 R21 K36 ["ShowDragSelect"]
  DUPTABLE R22 K39 [{"AnalyticsName"}]
  LOADB R23 1
  SETTABLEKS R23 R22 K38 ["AnalyticsName"]
  NEWCLOSURE R23 P0
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE REF R13
  SETTABLEKS R23 R11 K27 ["new"]
  DUPCLOSURE R23 K40 [PROTO_1]
  SETTABLEKS R23 R11 K41 ["_onUndo"]
  DUPCLOSURE R23 K42 [PROTO_2]
  SETTABLEKS R23 R11 K43 ["_onRedo"]
  DUPCLOSURE R23 K44 [PROTO_3]
  CAPTURE VAL R16
  SETTABLEKS R23 R11 K45 ["_createAttachmentAdornment"]
  DUPCLOSURE R23 K46 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R23 R11 K47 ["_initAttachmentAdornment"]
  DUPCLOSURE R23 K48 [PROTO_5]
  CAPTURE VAL R18
  CAPTURE VAL R2
  SETTABLEKS R23 R11 K49 ["_initWeldHighlight"]
  DUPCLOSURE R23 K50 [PROTO_6]
  CAPTURE VAL R14
  CAPTURE VAL R15
  SETTABLEKS R23 R11 K51 ["_createAttachmentAdornmentArrows"]
  DUPCLOSURE R23 K52 [PROTO_7]
  SETTABLEKS R23 R11 K53 ["_orientAttachmentAdornment"]
  DUPCLOSURE R23 K54 [PROTO_8]
  CAPTURE VAL R4
  SETTABLEKS R23 R11 K55 ["render"]
  DUPCLOSURE R23 K56 [PROTO_9]
  SETTABLEKS R23 R11 K57 ["update"]
  DUPCLOSURE R23 K58 [PROTO_10]
  SETTABLEKS R23 R11 K59 ["getSchema"]
  DUPCLOSURE R23 K60 [PROTO_11]
  SETTABLEKS R23 R11 K61 ["doesAllowDragSelect"]
  DUPCLOSURE R23 K62 [PROTO_12]
  SETTABLEKS R23 R11 K63 ["shouldShowDragSelect"]
  DUPCLOSURE R23 K64 [PROTO_13]
  SETTABLEKS R23 R11 K65 ["shouldShowLocalSpaceIndicator"]
  DUPCLOSURE R23 K66 [PROTO_14]
  SETTABLEKS R23 R11 K67 ["shouldShowSelectionDot"]
  DUPCLOSURE R23 K68 [PROTO_15]
  SETTABLEKS R23 R11 K69 ["shouldUseCollisionTransparency"]
  DUPCLOSURE R23 K70 [PROTO_16]
  SETTABLEKS R23 R11 K71 ["shouldAlignDraggedObjects"]
  DUPCLOSURE R23 K72 [PROTO_17]
  CAPTURE VAL R7
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R17
  SETTABLEKS R23 R11 K73 ["_updateAttachment"]
  DUPCLOSURE R23 K74 [PROTO_18]
  CAPTURE VAL R7
  SETTABLEKS R23 R11 K75 ["_rotateAttachment"]
  DUPCLOSURE R23 K76 [PROTO_19]
  CAPTURE VAL R10
  SETTABLEKS R23 R11 K77 ["_closeTool"]
  DUPCLOSURE R23 K78 [PROTO_21]
  CAPTURE VAL R2
  SETTABLEKS R23 R11 K79 ["_processSelected"]
  DUPCLOSURE R23 K80 [PROTO_22]
  SETTABLEKS R23 R11 K81 ["_processDeselected"]
  DUPCLOSURE R23 K82 [PROTO_23]
  SETTABLEKS R23 R11 K83 ["_processSelectionChanged"]
  DUPCLOSURE R23 K84 [PROTO_24]
  SETTABLEKS R23 R11 K85 ["_setConstraintType"]
  DUPCLOSURE R23 K86 [PROTO_25]
  CAPTURE VAL R5
  SETTABLEKS R23 R11 K87 ["_getConstraintData"]
  DUPCLOSURE R23 K88 [PROTO_26]
  SETTABLEKS R23 R11 K89 ["_createConstraintVisuals"]
  DUPCLOSURE R23 K90 [PROTO_27]
  SETTABLEKS R23 R11 K91 ["_removeConstraintVisuals"]
  GETIMPORT R23 K94 [table.freeze]
  NEWTABLE R24 8 0
  GETIMPORT R25 K98 [Enum.KeyCode.RightShift]
  LOADB R26 1
  SETTABLE R26 R24 R25
  GETIMPORT R25 K100 [Enum.KeyCode.LeftShift]
  LOADB R26 1
  SETTABLE R26 R24 R25
  GETIMPORT R25 K102 [Enum.KeyCode.RightControl]
  LOADB R26 1
  SETTABLE R26 R24 R25
  GETIMPORT R25 K104 [Enum.KeyCode.LeftControl]
  LOADB R26 1
  SETTABLE R26 R24 R25
  GETIMPORT R25 K106 [Enum.KeyCode.RightAlt]
  LOADB R26 1
  SETTABLE R26 R24 R25
  GETIMPORT R25 K108 [Enum.KeyCode.LeftAlt]
  LOADB R26 1
  SETTABLE R26 R24 R25
  CALL R23 1 1
  DUPCLOSURE R24 K109 [PROTO_28]
  CAPTURE VAL R23
  SETTABLEKS R24 R11 K110 ["_processKeyDown"]
  DUPCLOSURE R24 K111 [PROTO_29]
  CAPTURE VAL R23
  SETTABLEKS R24 R11 K112 ["_processKeyUp"]
  DUPCLOSURE R24 K113 [PROTO_30]
  SETTABLEKS R24 R11 K114 ["_clearInitialInstance"]
  DUPCLOSURE R24 K115 [PROTO_32]
  SETTABLEKS R24 R11 K116 ["_selectInitialInstance"]
  DUPCLOSURE R24 K117 [PROTO_33]
  SETTABLEKS R24 R11 K118 ["_canMouseDown"]
  NEWCLOSURE R24 P32
  CAPTURE VAL R1
  CAPTURE REF R13
  CAPTURE VAL R2
  CAPTURE VAL R10
  SETTABLEKS R24 R11 K119 ["_processMouseDown"]
  DUPCLOSURE R24 K120 [PROTO_35]
  CAPTURE VAL R1
  SETTABLEKS R24 R11 K121 ["_processMouseUp"]
  DUPCLOSURE R24 K122 [PROTO_36]
  SETTABLEKS R24 R11 K123 ["_processViewChanged"]
  DUPCLOSURE R24 K124 [PROTO_37]
  SETTABLEKS R24 R11 K125 ["_scheduleRender"]
  CLOSEUPVALS R13
  RETURN R11 1
