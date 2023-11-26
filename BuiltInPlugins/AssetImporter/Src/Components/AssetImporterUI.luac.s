PROTO_0:
  JUMPIFNOT R0 [+7]
  JUMPIF R1 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["PresetController"]
  NAMECALL R2 R2 K1 ["initializePresets"]
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+9]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["ShowImportPrompt"]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U2
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["ShowImportPrompt"]
  CALL R0 0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K2 ["PresetController"]
  NAMECALL R0 R0 K3 ["initializePresets"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PreviewInstance"]
  CALL R0 1 1
  NAMECALL R0 R0 K2 ["GetExtentsSize"]
  CALL R0 1 1
  GETTABLEKS R2 R0 K4 ["Magnitude"]
  MULK R1 R2 K3 [0.8]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["Unit"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["camera"]
  GETIMPORT R4 K9 [CFrame.identity]
  SETTABLEKS R4 R3 K10 ["Focus"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["camera"]
  GETIMPORT R4 K12 [CFrame.new]
  MUL R5 R1 R2
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["camera"]
  GETTABLEKS R7 R8 K10 ["Focus"]
  GETTABLEKS R6 R7 K13 ["Position"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K7 ["CFrame"]
  RETURN R0 0

PROTO_3:
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

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["ImportTree"]
  GETTABLEKS R4 R0 K1 ["ImportTree"]
  GETTABLEKS R3 R4 K2 ["RigVisualization"]
  NOT R2 R3
  SETTABLEKS R2 R1 K2 ["RigVisualization"]
  GETTABLEKS R1 R0 K3 ["SelectedImportItem"]
  JUMPIFNOT R1 [+13]
  GETTABLEKS R1 R0 K4 ["AssetImportSession"]
  GETTABLEKS R4 R0 K3 ["SelectedImportItem"]
  GETTABLEKS R3 R4 K5 ["Id"]
  NAMECALL R1 R1 K6 ["GetInstance"]
  CALL R1 2 1
  GETTABLEKS R2 R0 K7 ["UpdatePreviewInstance"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  DUPTABLE R4 K2 [{"showContext"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K1 ["showContext"]
  NAMECALL R2 R0 K3 ["setState"]
  CALL R2 2 0
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+6]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K4 ["showImportPromptHandler"]
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIF R2 [+59]
  LOADB R2 0
  SETTABLEKS R2 R0 K5 ["recenterCamera"]
  LOADB R2 1
  SETTABLEKS R2 R0 K6 ["recenterModel"]
  GETIMPORT R2 K9 [CFrame.identity]
  SETTABLEKS R2 R0 K10 ["lastCamCFrame"]
  GETUPVAL R2 3
  GETTABLEKS R3 R1 K11 ["PreviewInstance"]
  GETTABLEKS R4 R1 K12 ["ImportTree"]
  GETTABLEKS R7 R1 K13 ["SelectedImportItem"]
  GETTABLEKS R6 R7 K14 ["Id"]
  JUMPIFEQKS R6 K15 ["0"] [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETTABLEKS R7 R0 K16 ["state"]
  GETTABLEKS R6 R7 K1 ["showContext"]
  CALL R2 4 1
  SETTABLEKS R2 R0 K17 ["previewProps"]
  GETIMPORT R2 K20 [Instance.new]
  LOADK R3 K21 ["Camera"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K22 ["camera"]
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R0 K23 ["onClickCenterCamera"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K24 ["onClickToggleContext"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K25 ["onClickRigVisualization"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K26 ["isRigVisualized"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R2 R0 K27 ["loadAnimationIntoViewport"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+73]
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
  GETUPVAL R5 1
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

PROTO_10:
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+5]
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R0 K0 ["handleCameraTransition"]
  CALL R3 3 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIF R2 [+11]
  GETTABLEKS R2 R1 K0 ["SelectedImportItem"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K0 ["SelectedImportItem"]
  JUMPIFEQ R3 R2 [+4]
  GETTABLEKS R4 R0 K2 ["onClickCenterCamera"]
  CALL R4 0 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R2 K3 ["Sizes"]
  GETTABLEKS R5 R1 K4 ["SelectedImportItem"]
  LOADK R7 K5 ["RootImportData"]
  NAMECALL R5 R5 K6 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+4]
  GETTABLEKS R6 R1 K4 ["SelectedImportItem"]
  GETTABLEKS R5 R6 K7 ["InsertInWorkspace"]
  GETTABLEKS R6 R1 K4 ["SelectedImportItem"]
  LOADK R8 K5 ["RootImportData"]
  NAMECALL R6 R6 K6 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+5]
  GETTABLEKS R6 R1 K8 ["AssetImportSession"]
  NAMECALL R6 R6 K9 ["isAvatar"]
  CALL R6 1 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K10 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K12 [{"Layout"}]
  GETIMPORT R10 K16 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K11 ["Layout"]
  DUPTABLE R10 K20 [{"TopBar", "TopSeparator", "BottomPanel"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K10 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K26 [{"LayoutOrder", "Padding", "Size", "FileName", "OnBrowse"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K21 ["LayoutOrder"]
  GETTABLEKS R14 R2 K27 ["TopBarPadding"]
  SETTABLEKS R14 R13 K22 ["Padding"]
  GETIMPORT R14 K30 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  GETTABLEKS R18 R4 K31 ["TopBarHeight"]
  CALL R14 4 1
  SETTABLEKS R14 R13 K23 ["Size"]
  GETTABLEKS R15 R1 K33 ["Filename"]
  ORK R14 R15 K32 [""]
  SETTABLEKS R14 R13 K24 ["FileName"]
  GETUPVAL R15 3
  CALL R15 0 1
  JUMPIFNOT R15 [+3]
  GETTABLEKS R14 R0 K34 ["showImportPromptHandler"]
  JUMP [+2]
  GETTABLEKS R14 R1 K35 ["ShowImportPrompt"]
  SETTABLEKS R14 R13 K25 ["OnBrowse"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K17 ["TopBar"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K10 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K37 [{"DominantAxis", "LayoutOrder"}]
  GETIMPORT R14 K39 [Enum.DominantAxis.Width]
  SETTABLEKS R14 R13 K36 ["DominantAxis"]
  LOADN R14 2
  SETTABLEKS R14 R13 K21 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K18 ["TopSeparator"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K10 ["createElement"]
  GETUPVAL R12 1
  DUPTABLE R13 K41 [{"Layout", "LayoutOrder", "Position", "Size"}]
  GETIMPORT R14 K43 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K11 ["Layout"]
  LOADN R14 3
  SETTABLEKS R14 R13 K21 ["LayoutOrder"]
  GETIMPORT R14 K30 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  GETTABLEKS R18 R4 K31 ["TopBarHeight"]
  CALL R14 4 1
  SETTABLEKS R14 R13 K40 ["Position"]
  GETIMPORT R14 K30 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  GETTABLEKS R20 R4 K31 ["TopBarHeight"]
  ADDK R19 R20 K44 [2]
  MINUS R18 R19
  CALL R14 4 1
  SETTABLEKS R14 R13 K23 ["Size"]
  DUPTABLE R14 K48 [{"LeftPanel", "Separator", "RightPanel"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K10 ["createElement"]
  GETUPVAL R16 1
  DUPTABLE R17 K49 [{"LayoutOrder", "Layout", "Size"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K21 ["LayoutOrder"]
  GETIMPORT R18 K16 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K11 ["Layout"]
  GETIMPORT R18 K30 [UDim2.new]
  LOADK R19 K50 [0.5]
  LOADN R20 0
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K23 ["Size"]
  DUPTABLE R18 K53 [{"PreviewContainer", "Separator", "TreeContainer"}]
  GETUPVAL R20 5
  CALL R20 0 1
  JUMPIFNOT R20 [+6]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K10 ["createElement"]
  GETUPVAL R20 6
  CALL R19 1 1
  JUMP [+513]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K10 ["createElement"]
  GETUPVAL R20 1
  DUPTABLE R21 K54 [{"LayoutOrder", "Size"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K21 ["LayoutOrder"]
  GETIMPORT R22 K30 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  GETTABLEKS R25 R4 K55 ["PreviewRatio"]
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K23 ["Size"]
  DUPTABLE R22 K61 [{"WorkspacePreviewContainer", "PreviewRenderContainer", "RigVisualization", "AxisIndicatorContainer", "PreviewButtonBarContainer"}]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K10 ["createElement"]
  GETUPVAL R24 1
  DUPTABLE R25 K63 [{"ZIndex"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K62 ["ZIndex"]
  DUPTABLE R26 K65 [{"WorkspacePreview"}]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K10 ["createElement"]
  GETUPVAL R28 7
  DUPTABLE R29 K69 [{"Model", "ReferenceCamera", "Offset"}]
  GETTABLEKS R31 R0 K70 ["previewProps"]
  GETTABLEKS R30 R31 K71 ["workspacePreview"]
  SETTABLEKS R30 R29 K66 ["Model"]
  GETTABLEKS R30 R0 K72 ["camera"]
  SETTABLEKS R30 R29 K67 ["ReferenceCamera"]
  GETTABLEKS R31 R0 K70 ["previewProps"]
  GETTABLEKS R30 R31 K73 ["insertContextOffset"]
  SETTABLEKS R30 R29 K68 ["Offset"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K64 ["WorkspacePreview"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K56 ["WorkspacePreviewContainer"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K10 ["createElement"]
  GETUPVAL R24 1
  DUPTABLE R25 K63 [{"ZIndex"}]
  LOADN R26 2
  SETTABLEKS R26 R25 K62 ["ZIndex"]
  DUPTABLE R26 K75 [{"PreviewRender"}]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K10 ["createElement"]
  GETUPVAL R28 8
  DUPTABLE R29 K85 [{"Model", "InitialDistance", "Camera", "FocusDirection", "RecenterCameraOnUpdate", "RecenterModelOnUpdate", "OnViewModelLoaded", "Ambient", "LightColor", "LightDirection"}]
  GETTABLEKS R31 R0 K70 ["previewProps"]
  GETTABLEKS R30 R31 K86 ["model"]
  SETTABLEKS R30 R29 K66 ["Model"]
  GETTABLEKS R31 R0 K70 ["previewProps"]
  GETTABLEKS R30 R31 K87 ["initDist"]
  SETTABLEKS R30 R29 K76 ["InitialDistance"]
  GETTABLEKS R30 R0 K72 ["camera"]
  SETTABLEKS R30 R29 K77 ["Camera"]
  GETUPVAL R30 9
  SETTABLEKS R30 R29 K78 ["FocusDirection"]
  GETTABLEKS R30 R0 K88 ["recenterCamera"]
  SETTABLEKS R30 R29 K79 ["RecenterCameraOnUpdate"]
  GETTABLEKS R30 R0 K89 ["recenterModel"]
  SETTABLEKS R30 R29 K80 ["RecenterModelOnUpdate"]
  GETUPVAL R31 10
  CALL R31 0 1
  JUMPIFNOT R31 [+3]
  GETTABLEKS R30 R0 K90 ["loadAnimationIntoViewport"]
  JUMP [+1]
  LOADNIL R30
  SETTABLEKS R30 R29 K81 ["OnViewModelLoaded"]
  GETTABLEKS R32 R2 K91 ["PreviewWindow"]
  GETTABLEKS R31 R32 K92 ["Lighting"]
  GETTABLEKS R30 R31 K82 ["Ambient"]
  SETTABLEKS R30 R29 K82 ["Ambient"]
  GETTABLEKS R32 R2 K91 ["PreviewWindow"]
  GETTABLEKS R31 R32 K92 ["Lighting"]
  GETTABLEKS R30 R31 K93 ["Color"]
  SETTABLEKS R30 R29 K83 ["LightColor"]
  GETTABLEKS R32 R2 K91 ["PreviewWindow"]
  GETTABLEKS R31 R32 K92 ["Lighting"]
  GETTABLEKS R30 R31 K94 ["Direction"]
  SETTABLEKS R30 R29 K84 ["LightDirection"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K74 ["PreviewRender"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K57 ["PreviewRenderContainer"]
  GETTABLEKS R24 R0 K95 ["isRigVisualized"]
  CALL R24 0 1
  JUMPIFNOT R24 [+32]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K10 ["createElement"]
  GETUPVAL R24 1
  DUPTABLE R25 K63 [{"ZIndex"}]
  LOADN R26 3
  SETTABLEKS R26 R25 K62 ["ZIndex"]
  NEWTABLE R26 0 1
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K10 ["createElement"]
  GETUPVAL R28 11
  DUPTABLE R29 K97 [{"PreviewInstance", "Camera", "AssetImportSession"}]
  GETTABLEKS R30 R1 K96 ["PreviewInstance"]
  SETTABLEKS R30 R29 K96 ["PreviewInstance"]
  GETTABLEKS R30 R0 K72 ["camera"]
  SETTABLEKS R30 R29 K77 ["Camera"]
  GETTABLEKS R30 R1 K8 ["AssetImportSession"]
  SETTABLEKS R30 R29 K8 ["AssetImportSession"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K58 ["RigVisualization"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K10 ["createElement"]
  GETUPVAL R24 1
  DUPTABLE R25 K99 [{"Size", "Position", "AnchorPoint", "ZIndex"}]
  GETIMPORT R26 K30 [UDim2.new]
  LOADN R27 0
  GETTABLEKS R28 R4 K100 ["IndicatorSize"]
  LOADN R29 0
  GETTABLEKS R30 R4 K100 ["IndicatorSize"]
  CALL R26 4 1
  SETTABLEKS R26 R25 K23 ["Size"]
  GETIMPORT R26 K30 [UDim2.new]
  LOADN R27 1
  GETTABLEKS R28 R4 K101 ["IndicatorOffset"]
  LOADN R29 1
  GETTABLEKS R30 R4 K101 ["IndicatorOffset"]
  CALL R26 4 1
  SETTABLEKS R26 R25 K40 ["Position"]
  GETIMPORT R26 K103 [Vector2.new]
  LOADN R27 1
  LOADN R28 1
  CALL R26 2 1
  SETTABLEKS R26 R25 K98 ["AnchorPoint"]
  LOADN R26 4
  SETTABLEKS R26 R25 K62 ["ZIndex"]
  DUPTABLE R26 K105 [{"AxisIndicator"}]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K10 ["createElement"]
  GETUPVAL R28 12
  DUPTABLE R29 K106 [{"ReferenceCamera"}]
  GETTABLEKS R30 R0 K72 ["camera"]
  SETTABLEKS R30 R29 K67 ["ReferenceCamera"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K104 ["AxisIndicator"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K59 ["AxisIndicatorContainer"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K10 ["createElement"]
  GETUPVAL R24 1
  DUPTABLE R25 K110 [{"HorizontalAlignment", "VerticalAlignment", "Layout", "Size", "Position", "Padding", "Spacing", "ZIndex"}]
  GETUPVAL R27 13
  CALL R27 0 1
  JUMPIFNOT R27 [+2]
  LOADNIL R26
  JUMP [+2]
  GETIMPORT R26 K112 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R26 R25 K107 ["HorizontalAlignment"]
  GETIMPORT R26 K114 [Enum.VerticalAlignment.Top]
  SETTABLEKS R26 R25 K108 ["VerticalAlignment"]
  GETIMPORT R26 K16 [Enum.FillDirection.Vertical]
  SETTABLEKS R26 R25 K11 ["Layout"]
  GETTABLEKS R28 R2 K91 ["PreviewWindow"]
  GETTABLEKS R27 R28 K115 ["PreviewButtonBar"]
  GETTABLEKS R26 R27 K23 ["Size"]
  SETTABLEKS R26 R25 K23 ["Size"]
  GETTABLEKS R28 R2 K91 ["PreviewWindow"]
  GETTABLEKS R27 R28 K115 ["PreviewButtonBar"]
  GETTABLEKS R26 R27 K40 ["Position"]
  SETTABLEKS R26 R25 K40 ["Position"]
  GETUPVAL R27 13
  CALL R27 0 1
  JUMPIFNOT R27 [+2]
  LOADNIL R26
  JUMP [+6]
  GETTABLEKS R28 R2 K91 ["PreviewWindow"]
  GETTABLEKS R27 R28 K115 ["PreviewButtonBar"]
  GETTABLEKS R26 R27 K22 ["Padding"]
  SETTABLEKS R26 R25 K22 ["Padding"]
  GETTABLEKS R28 R2 K91 ["PreviewWindow"]
  GETTABLEKS R27 R28 K115 ["PreviewButtonBar"]
  GETTABLEKS R26 R27 K109 ["Spacing"]
  SETTABLEKS R26 R25 K109 ["Spacing"]
  LOADN R26 4
  SETTABLEKS R26 R25 K62 ["ZIndex"]
  DUPTABLE R26 K119 [{"CameraResetButtonContainer", "InsertContextToggleButtonContainer", "RigVisualizationButtonContainer"}]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K10 ["createElement"]
  GETUPVAL R28 1
  DUPTABLE R29 K120 [{"LayoutOrder", "Size", "AnchorPoint"}]
  LOADN R30 1
  SETTABLEKS R30 R29 K21 ["LayoutOrder"]
  GETTABLEKS R31 R2 K91 ["PreviewWindow"]
  GETTABLEKS R30 R31 K121 ["OptionIconSize"]
  SETTABLEKS R30 R29 K23 ["Size"]
  GETIMPORT R30 K103 [Vector2.new]
  LOADN R31 1
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K98 ["AnchorPoint"]
  DUPTABLE R30 K123 [{"CameraResetButton"}]
  GETUPVAL R32 0
  GETTABLEKS R31 R32 K10 ["createElement"]
  GETUPVAL R32 14
  DUPTABLE R33 K126 [{"OnClick", "Style"}]
  GETTABLEKS R34 R0 K127 ["onClickCenterCamera"]
  SETTABLEKS R34 R33 K124 ["OnClick"]
  LOADK R34 K128 ["RoundSubtle"]
  SETTABLEKS R34 R33 K125 ["Style"]
  DUPTABLE R34 K130 [{"Icon"}]
  GETUPVAL R36 0
  GETTABLEKS R35 R36 K10 ["createElement"]
  GETUPVAL R36 15
  DUPTABLE R37 K132 [{"Image"}]
  GETTABLEKS R39 R2 K91 ["PreviewWindow"]
  GETTABLEKS R38 R39 K133 ["ResetCameraImage"]
  SETTABLEKS R38 R37 K131 ["Image"]
  DUPTABLE R38 K135 [{"Tooltip"}]
  GETUPVAL R40 0
  GETTABLEKS R39 R40 K10 ["createElement"]
  GETUPVAL R40 16
  DUPTABLE R41 K137 [{"Text"}]
  GETUPVAL R42 17
  MOVE R43 R3
  LOADK R44 K138 ["PreviewTooltip"]
  LOADK R45 K139 ["ResetCam"]
  CALL R42 3 1
  SETTABLEKS R42 R41 K136 ["Text"]
  CALL R39 2 1
  SETTABLEKS R39 R38 K134 ["Tooltip"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K129 ["Icon"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K122 ["CameraResetButton"]
  CALL R27 3 1
  SETTABLEKS R27 R26 K116 ["CameraResetButtonContainer"]
  JUMPIFNOT R5 [+70]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K10 ["createElement"]
  GETUPVAL R28 1
  DUPTABLE R29 K120 [{"LayoutOrder", "Size", "AnchorPoint"}]
  LOADN R30 2
  SETTABLEKS R30 R29 K21 ["LayoutOrder"]
  GETTABLEKS R31 R2 K91 ["PreviewWindow"]
  GETTABLEKS R30 R31 K121 ["OptionIconSize"]
  SETTABLEKS R30 R29 K23 ["Size"]
  GETIMPORT R30 K103 [Vector2.new]
  LOADN R31 1
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K98 ["AnchorPoint"]
  DUPTABLE R30 K141 [{"InsertContextToggleButton"}]
  GETUPVAL R32 0
  GETTABLEKS R31 R32 K10 ["createElement"]
  GETUPVAL R32 14
  DUPTABLE R33 K126 [{"OnClick", "Style"}]
  GETTABLEKS R34 R0 K142 ["onClickToggleContext"]
  SETTABLEKS R34 R33 K124 ["OnClick"]
  LOADK R34 K128 ["RoundSubtle"]
  SETTABLEKS R34 R33 K125 ["Style"]
  DUPTABLE R34 K130 [{"Icon"}]
  GETUPVAL R36 0
  GETTABLEKS R35 R36 K10 ["createElement"]
  GETUPVAL R36 15
  DUPTABLE R37 K132 [{"Image"}]
  GETTABLEKS R39 R2 K91 ["PreviewWindow"]
  GETTABLEKS R38 R39 K143 ["ShowWorkspaceImage"]
  SETTABLEKS R38 R37 K131 ["Image"]
  DUPTABLE R38 K135 [{"Tooltip"}]
  GETUPVAL R40 0
  GETTABLEKS R39 R40 K10 ["createElement"]
  GETUPVAL R40 16
  DUPTABLE R41 K137 [{"Text"}]
  GETUPVAL R42 17
  MOVE R43 R3
  LOADK R44 K138 ["PreviewTooltip"]
  LOADK R45 K144 ["ToggleInsertContext"]
  CALL R42 3 1
  SETTABLEKS R42 R41 K136 ["Text"]
  CALL R39 2 1
  SETTABLEKS R39 R38 K134 ["Tooltip"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K129 ["Icon"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K140 ["InsertContextToggleButton"]
  CALL R27 3 1
  JUMP [+1]
  LOADNIL R27
  SETTABLEKS R27 R26 K117 ["InsertContextToggleButtonContainer"]
  JUMPIFNOT R6 [+70]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K10 ["createElement"]
  GETUPVAL R28 1
  DUPTABLE R29 K120 [{"LayoutOrder", "Size", "AnchorPoint"}]
  LOADN R30 3
  SETTABLEKS R30 R29 K21 ["LayoutOrder"]
  GETTABLEKS R31 R2 K91 ["PreviewWindow"]
  GETTABLEKS R30 R31 K121 ["OptionIconSize"]
  SETTABLEKS R30 R29 K23 ["Size"]
  GETIMPORT R30 K103 [Vector2.new]
  LOADN R31 1
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K98 ["AnchorPoint"]
  DUPTABLE R30 K146 [{"RigVisualizationButton"}]
  GETUPVAL R32 0
  GETTABLEKS R31 R32 K10 ["createElement"]
  GETUPVAL R32 14
  DUPTABLE R33 K126 [{"OnClick", "Style"}]
  GETTABLEKS R34 R0 K147 ["onClickRigVisualization"]
  SETTABLEKS R34 R33 K124 ["OnClick"]
  LOADK R34 K128 ["RoundSubtle"]
  SETTABLEKS R34 R33 K125 ["Style"]
  DUPTABLE R34 K130 [{"Icon"}]
  GETUPVAL R36 0
  GETTABLEKS R35 R36 K10 ["createElement"]
  GETUPVAL R36 15
  DUPTABLE R37 K132 [{"Image"}]
  GETTABLEKS R39 R2 K91 ["PreviewWindow"]
  GETTABLEKS R38 R39 K148 ["ShowRigVisualizationImage"]
  SETTABLEKS R38 R37 K131 ["Image"]
  DUPTABLE R38 K135 [{"Tooltip"}]
  GETUPVAL R40 0
  GETTABLEKS R39 R40 K10 ["createElement"]
  GETUPVAL R40 16
  DUPTABLE R41 K137 [{"Text"}]
  GETUPVAL R42 17
  MOVE R43 R3
  LOADK R44 K138 ["PreviewTooltip"]
  LOADK R45 K58 ["RigVisualization"]
  CALL R42 3 1
  SETTABLEKS R42 R41 K136 ["Text"]
  CALL R39 2 1
  SETTABLEKS R39 R38 K134 ["Tooltip"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K129 ["Icon"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K145 ["RigVisualizationButton"]
  CALL R27 3 1
  JUMP [+1]
  LOADNIL R27
  SETTABLEKS R27 R26 K118 ["RigVisualizationButtonContainer"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K60 ["PreviewButtonBarContainer"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K51 ["PreviewContainer"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K10 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K37 [{"DominantAxis", "LayoutOrder"}]
  GETIMPORT R22 K39 [Enum.DominantAxis.Width]
  SETTABLEKS R22 R21 K36 ["DominantAxis"]
  LOADN R22 2
  SETTABLEKS R22 R21 K21 ["LayoutOrder"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K46 ["Separator"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K10 ["createElement"]
  GETUPVAL R20 1
  DUPTABLE R21 K54 [{"LayoutOrder", "Size"}]
  LOADN R22 3
  SETTABLEKS R22 R21 K21 ["LayoutOrder"]
  GETIMPORT R22 K30 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  GETTABLEKS R25 R4 K55 ["PreviewRatio"]
  LOADN R26 255
  CALL R22 4 1
  SETTABLEKS R22 R21 K23 ["Size"]
  DUPTABLE R22 K150 [{"TreeView"}]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K10 ["createElement"]
  GETUPVAL R24 18
  DUPTABLE R25 K152 [{"Instances", "FileName"}]
  NEWTABLE R26 0 1
  GETTABLEKS R27 R1 K153 ["ImportTree"]
  SETLIST R26 R27 1 [1]
  SETTABLEKS R26 R25 K151 ["Instances"]
  GETTABLEKS R27 R1 K33 ["Filename"]
  ORK R26 R27 K32 [""]
  SETTABLEKS R26 R25 K24 ["FileName"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K149 ["TreeView"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K52 ["TreeContainer"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K45 ["LeftPanel"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K10 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K37 [{"DominantAxis", "LayoutOrder"}]
  GETIMPORT R18 K155 [Enum.DominantAxis.Height]
  SETTABLEKS R18 R17 K36 ["DominantAxis"]
  LOADN R18 2
  SETTABLEKS R18 R17 K21 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K46 ["Separator"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K10 ["createElement"]
  GETUPVAL R16 1
  DUPTABLE R17 K54 [{"LayoutOrder", "Size"}]
  LOADN R18 3
  SETTABLEKS R18 R17 K21 ["LayoutOrder"]
  GETIMPORT R18 K30 [UDim2.new]
  LOADK R19 K50 [0.5]
  LOADN R20 255
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K23 ["Size"]
  DUPTABLE R18 K157 [{"ImportConfiguration"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K10 ["createElement"]
  GETUPVAL R20 19
  DUPTABLE R21 K159 [{"ImportItem", "AssetImportSession"}]
  GETTABLEKS R22 R1 K4 ["SelectedImportItem"]
  SETTABLEKS R22 R21 K158 ["ImportItem"]
  GETTABLEKS R22 R1 K8 ["AssetImportSession"]
  SETTABLEKS R22 R21 K8 ["AssetImportSession"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K156 ["ImportConfiguration"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K47 ["RightPanel"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K19 ["BottomPanel"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_13:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_16:
  DUPTABLE R1 K3 [{"SetSettingsChanged", "ShowImportPrompt", "UpdatePreviewInstance"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetSettingsChanged"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["ShowImportPrompt"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["UpdatePreviewInstance"]
  RETURN R1 1

PROTO_17:
  DUPTABLE R1 K5 [{"AssetImportSession", "ImportTree", "Filename", "PreviewInstance", "SelectedImportItem"}]
  GETTABLEKS R2 R0 K6 ["assetImportSession"]
  SETTABLEKS R2 R1 K0 ["AssetImportSession"]
  GETTABLEKS R2 R0 K7 ["importTree"]
  SETTABLEKS R2 R1 K1 ["ImportTree"]
  GETTABLEKS R2 R0 K8 ["filename"]
  SETTABLEKS R2 R1 K2 ["Filename"]
  GETTABLEKS R2 R0 K9 ["previewInstance"]
  SETTABLEKS R2 R1 K3 ["PreviewInstance"]
  GETTABLEKS R2 R0 K10 ["selectedImportItem"]
  SETTABLEKS R2 R1 K4 ["SelectedImportItem"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R6 R4 K11 ["Localization"]
  GETTABLEKS R8 R3 K12 ["Style"]
  GETTABLEKS R7 R8 K13 ["Stylizer"]
  GETTABLEKS R8 R3 K14 ["UI"]
  GETTABLEKS R9 R8 K15 ["Pane"]
  GETTABLEKS R10 R8 K16 ["Separator"]
  GETTABLEKS R11 R8 K17 ["Button"]
  GETTABLEKS R12 R8 K18 ["Image"]
  GETTABLEKS R13 R8 K19 ["Tooltip"]
  GETTABLEKS R14 R8 K20 ["AssetRenderModel"]
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K21 ["Src"]
  GETTABLEKS R17 R18 K22 ["Controllers"]
  GETTABLEKS R16 R17 K23 ["PresetController"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K21 ["Src"]
  GETTABLEKS R18 R19 K24 ["Components"]
  GETTABLEKS R17 R18 K25 ["AssetImportTree"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R21 R0 K21 ["Src"]
  GETTABLEKS R20 R21 K24 ["Components"]
  GETTABLEKS R19 R20 K26 ["Properties"]
  GETTABLEKS R18 R19 K27 ["ImportConfiguration"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R21 R0 K21 ["Src"]
  GETTABLEKS R20 R21 K24 ["Components"]
  GETTABLEKS R19 R20 K28 ["TopBar"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R23 R0 K21 ["Src"]
  GETTABLEKS R22 R23 K24 ["Components"]
  GETTABLEKS R21 R22 K29 ["Preview"]
  GETTABLEKS R20 R21 K30 ["WorkspacePreview"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R24 R0 K21 ["Src"]
  GETTABLEKS R23 R24 K24 ["Components"]
  GETTABLEKS R22 R23 K29 ["Preview"]
  GETTABLEKS R21 R22 K31 ["AxisIndicator"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R25 R0 K21 ["Src"]
  GETTABLEKS R24 R25 K24 ["Components"]
  GETTABLEKS R23 R24 K29 ["Preview"]
  GETTABLEKS R22 R23 K32 ["RigVisualization"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R26 R0 K21 ["Src"]
  GETTABLEKS R25 R26 K24 ["Components"]
  GETTABLEKS R24 R25 K29 ["Preview"]
  GETTABLEKS R23 R24 K33 ["PreviewContainer"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R26 R0 K21 ["Src"]
  GETTABLEKS R25 R26 K34 ["Thunks"]
  GETTABLEKS R24 R25 K35 ["ShowImportPrompt"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R27 R0 K21 ["Src"]
  GETTABLEKS R26 R27 K34 ["Thunks"]
  GETTABLEKS R25 R26 K36 ["UpdatePreviewInstance"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R28 R0 K21 ["Src"]
  GETTABLEKS R27 R28 K37 ["Utility"]
  GETTABLEKS R26 R27 K38 ["GetLocalizedString"]
  CALL R25 1 1
  GETIMPORT R26 K4 [require]
  GETTABLEKS R29 R0 K21 ["Src"]
  GETTABLEKS R28 R29 K39 ["Actions"]
  GETTABLEKS R27 R28 K40 ["SetSettingsChanged"]
  CALL R26 1 1
  GETIMPORT R27 K4 [require]
  GETTABLEKS R30 R0 K21 ["Src"]
  GETTABLEKS R29 R30 K41 ["Flags"]
  GETTABLEKS R28 R29 K42 ["getFFlagDevFrameworkRenderModelLoadedSignal"]
  CALL R27 1 1
  GETIMPORT R28 K4 [require]
  GETTABLEKS R31 R0 K21 ["Src"]
  GETTABLEKS R30 R31 K41 ["Flags"]
  GETTABLEKS R29 R30 K43 ["getFFlagRigVisualizationMetrics"]
  CALL R28 1 1
  GETIMPORT R29 K4 [require]
  GETTABLEKS R32 R0 K21 ["Src"]
  GETTABLEKS R31 R32 K41 ["Flags"]
  GETTABLEKS R30 R31 K44 ["getFFlagAssetImportRefactorUiComponents"]
  CALL R29 1 1
  GETIMPORT R30 K4 [require]
  GETTABLEKS R33 R0 K21 ["Src"]
  GETTABLEKS R32 R33 K41 ["Flags"]
  GETTABLEKS R31 R32 K45 ["getFFlagAssetImporterCustomPresets"]
  CALL R30 1 1
  GETIMPORT R31 K4 [require]
  GETTABLEKS R34 R0 K21 ["Src"]
  GETTABLEKS R33 R34 K41 ["Flags"]
  GETTABLEKS R32 R33 K46 ["getFFlagAssetImportFixErrorOnCorruptedFilesPlugin"]
  CALL R31 1 1
  GETIMPORT R32 K4 [require]
  GETTABLEKS R35 R0 K21 ["Src"]
  GETTABLEKS R34 R35 K37 ["Utility"]
  GETTABLEKS R33 R34 K47 ["loadAnimation"]
  CALL R32 1 1
  GETIMPORT R33 K4 [require]
  GETTABLEKS R36 R0 K21 ["Src"]
  GETTABLEKS R35 R36 K37 ["Utility"]
  GETTABLEKS R34 R35 K48 ["getAssetPreviewProps"]
  CALL R33 1 1
  GETIMPORT R34 K4 [require]
  GETTABLEKS R37 R0 K21 ["Src"]
  GETTABLEKS R36 R37 K37 ["Utility"]
  GETTABLEKS R35 R36 K49 ["getAssetRenderModel"]
  CALL R34 1 1
  LOADN R36 255
  LOADN R37 1
  LOADN R38 255
  FASTCALL VECTOR [+2]
  GETIMPORT R35 K52 [Vector3.new]
  CALL R35 3 1
  GETTABLEKS R36 R1 K53 ["PureComponent"]
  LOADK R38 K54 ["AssetImporterUI"]
  NAMECALL R36 R36 K55 ["extend"]
  CALL R36 2 1
  DUPCLOSURE R37 K56 [PROTO_8]
  CAPTURE VAL R30
  CAPTURE VAL R31
  CAPTURE VAL R29
  CAPTURE VAL R33
  CAPTURE VAL R34
  CAPTURE VAL R35
  CAPTURE VAL R32
  SETTABLEKS R37 R36 K57 ["init"]
  DUPCLOSURE R37 K58 [PROTO_9]
  CAPTURE VAL R29
  CAPTURE VAL R33
  SETTABLEKS R37 R36 K59 ["handleCameraTransition"]
  DUPCLOSURE R37 K60 [PROTO_10]
  CAPTURE VAL R29
  SETTABLEKS R37 R36 K61 ["willUpdate"]
  DUPCLOSURE R37 K62 [PROTO_11]
  CAPTURE VAL R29
  SETTABLEKS R37 R36 K63 ["didUpdate"]
  DUPCLOSURE R37 K64 [PROTO_12]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R18
  CAPTURE VAL R30
  CAPTURE VAL R10
  CAPTURE VAL R29
  CAPTURE VAL R22
  CAPTURE VAL R19
  CAPTURE VAL R14
  CAPTURE VAL R35
  CAPTURE VAL R27
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R28
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R25
  CAPTURE VAL R16
  CAPTURE VAL R17
  SETTABLEKS R37 R36 K65 ["render"]
  MOVE R37 R5
  DUPTABLE R38 K66 [{"Localization", "Stylizer", "PresetController"}]
  SETTABLEKS R6 R38 K11 ["Localization"]
  SETTABLEKS R7 R38 K13 ["Stylizer"]
  MOVE R40 R30
  CALL R40 0 1
  JUMPIFNOT R40 [+2]
  MOVE R39 R15
  JUMP [+1]
  LOADNIL R39
  SETTABLEKS R39 R38 K23 ["PresetController"]
  CALL R37 1 1
  MOVE R38 R36
  CALL R37 1 1
  MOVE R36 R37
  DUPCLOSURE R37 K67 [PROTO_16]
  CAPTURE VAL R26
  CAPTURE VAL R23
  CAPTURE VAL R24
  DUPCLOSURE R38 K68 [PROTO_17]
  GETTABLEKS R39 R2 K69 ["connect"]
  MOVE R40 R38
  MOVE R41 R37
  CALL R39 2 1
  MOVE R40 R36
  CALL R39 1 -1
  RETURN R39 -1
