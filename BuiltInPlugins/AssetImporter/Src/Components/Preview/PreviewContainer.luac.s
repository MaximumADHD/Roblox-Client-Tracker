PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PreviewInstance"]
  CALL R0 1 1
  NAMECALL R0 R0 K2 ["GetExtentsSize"]
  CALL R0 1 1
  GETTABLEKS R2 R0 K4 ["Magnitude"]
  MULK R1 R2 K3 [0.8]
  LOADK R3 K5 [{-1, 1, -1}]
  GETTABLEKS R2 R3 K6 ["Unit"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["camera"]
  GETIMPORT R4 K10 [CFrame.identity]
  SETTABLEKS R4 R3 K11 ["Focus"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["camera"]
  GETIMPORT R4 K13 [CFrame.new]
  MUL R5 R1 R2
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["camera"]
  GETTABLEKS R7 R8 K11 ["Focus"]
  GETTABLEKS R6 R7 K14 ["Position"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K8 ["CFrame"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showContext"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["state"]
  GETTABLEKS R4 R5 K0 ["showContext"]
  NOT R3 R4
  SETTABLEKS R3 R2 K0 ["showContext"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["ImportTree"]
  GETTABLEKS R4 R0 K1 ["ImportTree"]
  GETTABLEKS R3 R4 K2 ["RigVisualization"]
  NOT R2 R3
  SETTABLEKS R2 R1 K2 ["RigVisualization"]
  GETTABLEKS R1 R0 K3 ["SelectedImportItem"]
  JUMPIFNOT R1 [+9]
  GETTABLEKS R1 R0 K3 ["SelectedImportItem"]
  NAMECALL R1 R1 K4 ["GetPreview"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K5 ["UpdatePreviewInstance"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["SelectedImportItem"]
  LOADK R3 K2 ["JointImportData"]
  NAMECALL R1 R1 K3 ["IsA"]
  CALL R1 2 1
  GETTABLEKS R2 R0 K1 ["SelectedImportItem"]
  LOADK R4 K4 ["RootImportData"]
  NAMECALL R2 R2 K3 ["IsA"]
  CALL R2 2 1
  GETTABLEKS R5 R0 K6 ["ImportTree"]
  GETTABLEKS R4 R5 K5 ["RigVisualization"]
  JUMPIFNOT R4 [+2]
  MOVE R3 R2
  JUMPIF R3 [+1]
  MOVE R3 R1
  RETURN R3 1

PROTO_4:
  JUMPIFNOT R1 [+21]
  GETIMPORT R4 K1 [game]
  NAMECALL R2 R1 K2 ["IsDescendantOf"]
  CALL R2 2 1
  JUMPIFNOT R2 [+15]
  GETUPVAL R2 0
  NAMECALL R2 R2 K3 ["Disconnect"]
  CALL R2 1 0
  GETUPVAL R2 1
  LOADK R4 K4 ["KeyframeSequence"]
  LOADB R5 1
  NAMECALL R2 R2 K5 ["FindFirstChildWhichIsA"]
  CALL R2 3 1
  JUMPIFNOT R2 [+4]
  GETUPVAL R3 2
  GETUPVAL R4 1
  MOVE R5 R2
  CALL R3 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["SelectedImportItem"]
  LOADK R3 K2 ["AnimationImportData"]
  NAMECALL R1 R1 K3 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+12]
  LOADNIL R1
  GETTABLEKS R2 R0 K4 ["AncestryChanged"]
  NEWCLOSURE R4 P0
  CAPTURE REF R1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NAMECALL R2 R2 K5 ["connect"]
  CALL R2 2 1
  MOVE R1 R2
  CLOSEUPVALS R1
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  DUPTABLE R4 K2 [{"showContext"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K1 ["showContext"]
  NAMECALL R2 R0 K3 ["setState"]
  CALL R2 2 0
  LOADB R2 0
  SETTABLEKS R2 R0 K4 ["recenterCamera"]
  LOADB R2 1
  SETTABLEKS R2 R0 K5 ["recenterModel"]
  GETIMPORT R2 K8 [CFrame.identity]
  SETTABLEKS R2 R0 K9 ["lastCamCFrame"]
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K10 ["PreviewInstance"]
  GETTABLEKS R4 R1 K11 ["ImportTree"]
  GETTABLEKS R7 R1 K12 ["SelectedImportItem"]
  GETTABLEKS R6 R7 K13 ["Id"]
  JUMPIFEQKS R6 K14 ["0"] [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETTABLEKS R7 R0 K15 ["state"]
  GETTABLEKS R6 R7 K1 ["showContext"]
  CALL R2 4 1
  SETTABLEKS R2 R0 K16 ["previewProps"]
  GETIMPORT R2 K19 [Instance.new]
  LOADK R3 K20 ["Camera"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K21 ["camera"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K22 ["onClickCenterCamera"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K23 ["onClickToggleContext"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K24 ["onClickRigVisualization"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K25 ["isRigVisualized"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R0 K26 ["loadAnimationIntoViewport"]
  RETURN R0 0

PROTO_7:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["SelectedImportItem"]
  GETTABLEKS R4 R1 K1 ["SelectedImportItem"]
  LOADK R7 K2 ["RootImportData"]
  NAMECALL R5 R3 K3 ["IsA"]
  CALL R5 2 1
  JUMPIF R5 [+10]
  LOADK R7 K4 ["MeshImportData"]
  NAMECALL R5 R3 K3 ["IsA"]
  CALL R5 2 1
  JUMPIF R5 [+5]
  LOADK R7 K5 ["GroupImportData"]
  NAMECALL R5 R3 K3 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+6]
  GETTABLEKS R6 R0 K6 ["camera"]
  GETTABLEKS R5 R6 K7 ["CFrame"]
  SETTABLEKS R5 R0 K8 ["lastCamCFrame"]
  GETUPVAL R5 0
  GETTABLEKS R6 R1 K9 ["PreviewInstance"]
  GETTABLEKS R7 R1 K10 ["ImportTree"]
  GETTABLEKS R10 R1 K1 ["SelectedImportItem"]
  GETTABLEKS R9 R10 K11 ["Id"]
  JUMPIFEQKS R9 K12 ["0"] [+2]
  LOADB R8 0 +1
  LOADB R8 1
  GETTABLEKS R9 R2 K13 ["showContext"]
  CALL R5 4 1
  SETTABLEKS R5 R0 K14 ["previewProps"]
  LOADK R7 K2 ["RootImportData"]
  NAMECALL R5 R4 K3 ["IsA"]
  CALL R5 2 1
  JUMPIF R5 [+10]
  LOADK R7 K4 ["MeshImportData"]
  NAMECALL R5 R4 K3 ["IsA"]
  CALL R5 2 1
  JUMPIF R5 [+5]
  LOADK R7 K5 ["GroupImportData"]
  NAMECALL R5 R4 K3 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+10]
  GETTABLEKS R5 R0 K6 ["camera"]
  GETTABLEKS R6 R0 K8 ["lastCamCFrame"]
  SETTABLEKS R6 R5 K7 ["CFrame"]
  LOADB R5 0
  SETTABLEKS R5 R0 K15 ["recenterCamera"]
  RETURN R0 0
  LOADB R5 1
  SETTABLEKS R5 R0 K15 ["recenterCamera"]
  RETURN R0 0

PROTO_8:
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R0 K0 ["handleCameraTransition"]
  CALL R3 3 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R1 K0 ["SelectedImportItem"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K0 ["SelectedImportItem"]
  JUMPIFEQ R3 R2 [+4]
  GETTABLEKS R4 R0 K2 ["onClickCenterCamera"]
  CALL R4 0 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R2 K2 ["Sizes"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K6 [{"LayoutOrder", "Size"}]
  GETTABLEKS R7 R1 K4 ["LayoutOrder"]
  SETTABLEKS R7 R6 K4 ["LayoutOrder"]
  GETIMPORT R7 K9 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  GETTABLEKS R10 R3 K10 ["PreviewRatio"]
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K5 ["Size"]
  DUPTABLE R7 K16 [{"WorkspacePreviewContainer", "PreviewControls", "PreviewRenderContainer", "RigVisualization", "AxisIndicatorContainer"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K18 [{"ZIndex"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K17 ["ZIndex"]
  DUPTABLE R11 K20 [{"WorkspacePreview"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K24 [{"Model", "ReferenceCamera", "Offset"}]
  GETTABLEKS R16 R0 K25 ["previewProps"]
  GETTABLEKS R15 R16 K26 ["workspacePreview"]
  SETTABLEKS R15 R14 K21 ["Model"]
  GETTABLEKS R15 R0 K27 ["camera"]
  SETTABLEKS R15 R14 K22 ["ReferenceCamera"]
  GETTABLEKS R16 R0 K25 ["previewProps"]
  GETTABLEKS R15 R16 K28 ["insertContextOffset"]
  SETTABLEKS R15 R14 K23 ["Offset"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K19 ["WorkspacePreview"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K11 ["WorkspacePreviewContainer"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K34 [{"InsertContextCallback", "ResetCameraCallback", "ShouldShowWorkspaceToggle", "ShouldShowRigVisualizationToggle", "VisualizeRigCallback"}]
  GETTABLEKS R11 R0 K35 ["onClickToggleContext"]
  SETTABLEKS R11 R10 K29 ["InsertContextCallback"]
  GETTABLEKS R11 R0 K36 ["onClickCenterCamera"]
  SETTABLEKS R11 R10 K30 ["ResetCameraCallback"]
  GETTABLEKS R11 R1 K37 ["SelectedImportItem"]
  LOADK R13 K38 ["RootImportData"]
  NAMECALL R11 R11 K39 ["IsA"]
  CALL R11 2 1
  JUMPIFNOT R11 [+4]
  GETTABLEKS R12 R1 K37 ["SelectedImportItem"]
  GETTABLEKS R11 R12 K40 ["InsertInWorkspace"]
  SETTABLEKS R11 R10 K31 ["ShouldShowWorkspaceToggle"]
  GETTABLEKS R11 R1 K37 ["SelectedImportItem"]
  LOADK R13 K38 ["RootImportData"]
  NAMECALL R11 R11 K39 ["IsA"]
  CALL R11 2 1
  JUMPIFNOT R11 [+5]
  GETTABLEKS R11 R1 K41 ["AssetImportSession"]
  NAMECALL R11 R11 K42 ["isAvatar"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K32 ["ShouldShowRigVisualizationToggle"]
  GETTABLEKS R11 R0 K43 ["onClickRigVisualization"]
  SETTABLEKS R11 R10 K33 ["VisualizeRigCallback"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["PreviewControls"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K18 [{"ZIndex"}]
  LOADN R11 2
  SETTABLEKS R11 R10 K17 ["ZIndex"]
  DUPTABLE R11 K45 [{"PreviewRender"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K55 [{"Model", "InitialDistance", "Camera", "FocusDirection", "RecenterCameraOnUpdate", "RecenterModelOnUpdate", "OnViewModelLoaded", "Ambient", "LightColor", "LightDirection"}]
  GETTABLEKS R16 R0 K25 ["previewProps"]
  GETTABLEKS R15 R16 K56 ["model"]
  SETTABLEKS R15 R14 K21 ["Model"]
  GETTABLEKS R16 R0 K25 ["previewProps"]
  GETTABLEKS R15 R16 K57 ["initDist"]
  SETTABLEKS R15 R14 K46 ["InitialDistance"]
  GETTABLEKS R15 R0 K27 ["camera"]
  SETTABLEKS R15 R14 K47 ["Camera"]
  LOADK R15 K58 [{-1, 1, -1}]
  SETTABLEKS R15 R14 K48 ["FocusDirection"]
  GETTABLEKS R15 R0 K59 ["recenterCamera"]
  SETTABLEKS R15 R14 K49 ["RecenterCameraOnUpdate"]
  GETTABLEKS R15 R0 K60 ["recenterModel"]
  SETTABLEKS R15 R14 K50 ["RecenterModelOnUpdate"]
  GETTABLEKS R15 R0 K61 ["loadAnimationIntoViewport"]
  SETTABLEKS R15 R14 K51 ["OnViewModelLoaded"]
  GETTABLEKS R17 R2 K62 ["PreviewWindow"]
  GETTABLEKS R16 R17 K63 ["Lighting"]
  GETTABLEKS R15 R16 K52 ["Ambient"]
  SETTABLEKS R15 R14 K52 ["Ambient"]
  GETTABLEKS R17 R2 K62 ["PreviewWindow"]
  GETTABLEKS R16 R17 K63 ["Lighting"]
  GETTABLEKS R15 R16 K64 ["Color"]
  SETTABLEKS R15 R14 K53 ["LightColor"]
  GETTABLEKS R17 R2 K62 ["PreviewWindow"]
  GETTABLEKS R16 R17 K63 ["Lighting"]
  GETTABLEKS R15 R16 K65 ["Direction"]
  SETTABLEKS R15 R14 K54 ["LightDirection"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K44 ["PreviewRender"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K13 ["PreviewRenderContainer"]
  GETTABLEKS R9 R0 K66 ["isRigVisualized"]
  CALL R9 0 1
  JUMPIFNOT R9 [+36]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K18 [{"ZIndex"}]
  LOADN R11 3
  SETTABLEKS R11 R10 K17 ["ZIndex"]
  NEWTABLE R11 0 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K68 [{"PreviewInstance", "Camera", "AssetImportSession", "SelectedImportItem"}]
  GETTABLEKS R15 R1 K67 ["PreviewInstance"]
  SETTABLEKS R15 R14 K67 ["PreviewInstance"]
  GETTABLEKS R15 R0 K27 ["camera"]
  SETTABLEKS R15 R14 K47 ["Camera"]
  GETTABLEKS R15 R1 K41 ["AssetImportSession"]
  SETTABLEKS R15 R14 K41 ["AssetImportSession"]
  GETTABLEKS R15 R1 K37 ["SelectedImportItem"]
  SETTABLEKS R15 R14 K37 ["SelectedImportItem"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K14 ["RigVisualization"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K71 [{"Size", "Position", "AnchorPoint", "ZIndex"}]
  GETIMPORT R11 K9 [UDim2.new]
  LOADN R12 0
  GETTABLEKS R13 R3 K72 ["IndicatorSize"]
  LOADN R14 0
  GETTABLEKS R15 R3 K72 ["IndicatorSize"]
  CALL R11 4 1
  SETTABLEKS R11 R10 K5 ["Size"]
  GETIMPORT R11 K9 [UDim2.new]
  LOADN R12 1
  GETTABLEKS R13 R3 K73 ["IndicatorOffset"]
  LOADN R14 1
  GETTABLEKS R15 R3 K73 ["IndicatorOffset"]
  CALL R11 4 1
  SETTABLEKS R11 R10 K69 ["Position"]
  GETIMPORT R11 K75 [Vector2.new]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K70 ["AnchorPoint"]
  LOADN R11 4
  SETTABLEKS R11 R10 K17 ["ZIndex"]
  DUPTABLE R11 K77 [{"AxisIndicator"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 6
  DUPTABLE R14 K78 [{"ReferenceCamera"}]
  GETTABLEKS R15 R0 K27 ["camera"]
  SETTABLEKS R15 R14 K22 ["ReferenceCamera"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K76 ["AxisIndicator"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K15 ["AxisIndicatorContainer"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_11:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R1 K2 [{"SetSettingsChanged", "UpdatePreviewInstance"}]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+4]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["SetSettingsChanged"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K1 ["UpdatePreviewInstance"]
  RETURN R1 1

PROTO_14:
  DUPTABLE R1 K4 [{"AssetImportSession", "ImportTree", "PreviewInstance", "SelectedImportItem"}]
  GETTABLEKS R3 R0 K5 ["Preview"]
  GETTABLEKS R2 R3 K6 ["assetImportSession"]
  SETTABLEKS R2 R1 K0 ["AssetImportSession"]
  GETTABLEKS R3 R0 K5 ["Preview"]
  GETTABLEKS R2 R3 K7 ["importTree"]
  SETTABLEKS R2 R1 K1 ["ImportTree"]
  GETTABLEKS R3 R0 K5 ["Preview"]
  GETTABLEKS R2 R3 K8 ["previewInstance"]
  SETTABLEKS R2 R1 K2 ["PreviewInstance"]
  GETTABLEKS R3 R0 K5 ["Preview"]
  GETTABLEKS R2 R3 K9 ["selectedImportItem"]
  SETTABLEKS R2 R1 K3 ["SelectedImportItem"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R7 R3 K12 ["Style"]
  GETTABLEKS R6 R7 K13 ["Stylizer"]
  GETTABLEKS R7 R3 K14 ["UI"]
  GETTABLEKS R8 R7 K15 ["Pane"]
  GETTABLEKS R9 R7 K16 ["AssetRenderModel"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K17 ["Src"]
  GETTABLEKS R13 R14 K18 ["Components"]
  GETTABLEKS R12 R13 K19 ["Preview"]
  GETTABLEKS R11 R12 K20 ["WorkspacePreview"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R15 R0 K17 ["Src"]
  GETTABLEKS R14 R15 K18 ["Components"]
  GETTABLEKS R13 R14 K19 ["Preview"]
  GETTABLEKS R12 R13 K21 ["AxisIndicator"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R16 R0 K17 ["Src"]
  GETTABLEKS R15 R16 K18 ["Components"]
  GETTABLEKS R14 R15 K19 ["Preview"]
  GETTABLEKS R13 R14 K22 ["PreviewControls"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R17 R0 K17 ["Src"]
  GETTABLEKS R16 R17 K18 ["Components"]
  GETTABLEKS R15 R16 K19 ["Preview"]
  GETTABLEKS R14 R15 K23 ["RigVisualization"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K17 ["Src"]
  GETTABLEKS R16 R17 K24 ["Actions"]
  GETTABLEKS R15 R16 K25 ["SetSettingsChanged"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K17 ["Src"]
  GETTABLEKS R17 R18 K26 ["Thunks"]
  GETTABLEKS R16 R17 K27 ["UpdatePreviewInstance"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K17 ["Src"]
  GETTABLEKS R18 R19 K28 ["Utility"]
  GETTABLEKS R17 R18 K29 ["getAssetPreviewProps"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K17 ["Src"]
  GETTABLEKS R19 R20 K28 ["Utility"]
  GETTABLEKS R18 R19 K30 ["getAssetRenderModel"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K17 ["Src"]
  GETTABLEKS R20 R21 K28 ["Utility"]
  GETTABLEKS R19 R20 K31 ["loadAnimation"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K17 ["Src"]
  GETTABLEKS R21 R22 K32 ["Flags"]
  GETTABLEKS R20 R21 K33 ["getFFlagAssetImportUploadWidgetCleanup"]
  CALL R19 1 1
  GETTABLEKS R20 R1 K34 ["PureComponent"]
  LOADK R22 K35 ["PreviewContainer"]
  NAMECALL R20 R20 K36 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K37 [PROTO_6]
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R18
  SETTABLEKS R21 R20 K38 ["init"]
  DUPCLOSURE R21 K39 [PROTO_7]
  CAPTURE VAL R16
  SETTABLEKS R21 R20 K40 ["handleCameraTransition"]
  DUPCLOSURE R21 K41 [PROTO_8]
  SETTABLEKS R21 R20 K42 ["willUpdate"]
  DUPCLOSURE R21 K43 [PROTO_9]
  SETTABLEKS R21 R20 K44 ["didUpdate"]
  DUPCLOSURE R21 K45 [PROTO_10]
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R11
  SETTABLEKS R21 R20 K46 ["render"]
  MOVE R21 R5
  DUPTABLE R22 K47 [{"Stylizer"}]
  SETTABLEKS R6 R22 K13 ["Stylizer"]
  CALL R21 1 1
  MOVE R22 R20
  CALL R21 1 1
  MOVE R20 R21
  DUPCLOSURE R21 K48 [PROTO_13]
  CAPTURE VAL R19
  CAPTURE VAL R14
  CAPTURE VAL R15
  DUPCLOSURE R22 K49 [PROTO_14]
  GETTABLEKS R23 R2 K50 ["connect"]
  MOVE R24 R22
  MOVE R25 R21
  CALL R23 2 1
  MOVE R24 R20
  CALL R23 1 -1
  RETURN R23 -1
