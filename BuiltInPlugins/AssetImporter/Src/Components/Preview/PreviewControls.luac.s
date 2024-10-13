PROTO_0:
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K10 [{"VerticalAlignment", "Layout", "Size", "Position", "Spacing", "ZIndex"}]
  GETIMPORT R7 K13 [Enum.VerticalAlignment.Top]
  SETTABLEKS R7 R6 K4 ["VerticalAlignment"]
  GETIMPORT R7 K16 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K5 ["Layout"]
  GETTABLEKS R9 R2 K17 ["PreviewWindow"]
  GETTABLEKS R8 R9 K18 ["PreviewButtonBar"]
  GETTABLEKS R7 R8 K6 ["Size"]
  SETTABLEKS R7 R6 K6 ["Size"]
  GETTABLEKS R9 R2 K17 ["PreviewWindow"]
  GETTABLEKS R8 R9 K18 ["PreviewButtonBar"]
  GETTABLEKS R7 R8 K7 ["Position"]
  SETTABLEKS R7 R6 K7 ["Position"]
  GETTABLEKS R9 R2 K17 ["PreviewWindow"]
  GETTABLEKS R8 R9 K18 ["PreviewButtonBar"]
  GETTABLEKS R7 R8 K8 ["Spacing"]
  SETTABLEKS R7 R6 K8 ["Spacing"]
  LOADN R7 4
  SETTABLEKS R7 R6 K9 ["ZIndex"]
  DUPTABLE R7 K22 [{"CameraResetButtonContainer", "InsertContextToggleButtonContainer", "RigVisualizationButtonContainer"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K25 [{"LayoutOrder", "Size", "AnchorPoint"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K23 ["LayoutOrder"]
  GETTABLEKS R12 R2 K17 ["PreviewWindow"]
  GETTABLEKS R11 R12 K26 ["OptionIconSize"]
  SETTABLEKS R11 R10 K6 ["Size"]
  GETIMPORT R11 K29 [Vector2.new]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["AnchorPoint"]
  DUPTABLE R11 K31 [{"CameraResetButton"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K34 [{"OnClick", "Style"}]
  GETTABLEKS R16 R0 K0 ["props"]
  GETTABLEKS R15 R16 K35 ["ResetCameraCallback"]
  SETTABLEKS R15 R14 K32 ["OnClick"]
  LOADK R15 K36 ["RoundSubtle"]
  SETTABLEKS R15 R14 K33 ["Style"]
  DUPTABLE R15 K38 [{"Icon"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K40 [{"Image"}]
  GETTABLEKS R20 R2 K17 ["PreviewWindow"]
  GETTABLEKS R19 R20 K41 ["ResetCameraImage"]
  SETTABLEKS R19 R18 K39 ["Image"]
  DUPTABLE R19 K43 [{"Tooltip"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K3 ["createElement"]
  GETUPVAL R21 4
  DUPTABLE R22 K45 [{"Text"}]
  GETUPVAL R23 5
  MOVE R24 R3
  LOADK R25 K46 ["PreviewTooltip"]
  LOADK R26 K47 ["ResetCam"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K44 ["Text"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K42 ["Tooltip"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K37 ["Icon"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K30 ["CameraResetButton"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K19 ["CameraResetButtonContainer"]
  GETTABLEKS R9 R1 K48 ["ShouldShowWorkspaceToggle"]
  JUMPIFNOT R9 [+72]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K25 [{"LayoutOrder", "Size", "AnchorPoint"}]
  LOADN R11 2
  SETTABLEKS R11 R10 K23 ["LayoutOrder"]
  GETTABLEKS R12 R2 K17 ["PreviewWindow"]
  GETTABLEKS R11 R12 K26 ["OptionIconSize"]
  SETTABLEKS R11 R10 K6 ["Size"]
  GETIMPORT R11 K29 [Vector2.new]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["AnchorPoint"]
  DUPTABLE R11 K50 [{"InsertContextToggleButton"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K34 [{"OnClick", "Style"}]
  GETTABLEKS R16 R0 K0 ["props"]
  GETTABLEKS R15 R16 K51 ["InsertContextCallback"]
  SETTABLEKS R15 R14 K32 ["OnClick"]
  LOADK R15 K36 ["RoundSubtle"]
  SETTABLEKS R15 R14 K33 ["Style"]
  DUPTABLE R15 K38 [{"Icon"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K40 [{"Image"}]
  GETTABLEKS R20 R2 K17 ["PreviewWindow"]
  GETTABLEKS R19 R20 K52 ["ShowWorkspaceImage"]
  SETTABLEKS R19 R18 K39 ["Image"]
  DUPTABLE R19 K43 [{"Tooltip"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K3 ["createElement"]
  GETUPVAL R21 4
  DUPTABLE R22 K45 [{"Text"}]
  GETUPVAL R23 5
  MOVE R24 R3
  LOADK R25 K46 ["PreviewTooltip"]
  LOADK R26 K53 ["ToggleInsertContext"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K44 ["Text"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K42 ["Tooltip"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K37 ["Icon"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K49 ["InsertContextToggleButton"]
  CALL R8 3 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K20 ["InsertContextToggleButtonContainer"]
  GETTABLEKS R9 R1 K54 ["ShouldShowRigVisualizationToggle"]
  JUMPIFNOT R9 [+72]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K25 [{"LayoutOrder", "Size", "AnchorPoint"}]
  LOADN R11 3
  SETTABLEKS R11 R10 K23 ["LayoutOrder"]
  GETTABLEKS R12 R2 K17 ["PreviewWindow"]
  GETTABLEKS R11 R12 K26 ["OptionIconSize"]
  SETTABLEKS R11 R10 K6 ["Size"]
  GETIMPORT R11 K29 [Vector2.new]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["AnchorPoint"]
  DUPTABLE R11 K56 [{"RigVisualizationButton"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K34 [{"OnClick", "Style"}]
  GETTABLEKS R16 R0 K0 ["props"]
  GETTABLEKS R15 R16 K57 ["VisualizeRigCallback"]
  SETTABLEKS R15 R14 K32 ["OnClick"]
  LOADK R15 K36 ["RoundSubtle"]
  SETTABLEKS R15 R14 K33 ["Style"]
  DUPTABLE R15 K38 [{"Icon"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K40 [{"Image"}]
  GETTABLEKS R20 R2 K17 ["PreviewWindow"]
  GETTABLEKS R19 R20 K58 ["ShowRigVisualizationImage"]
  SETTABLEKS R19 R18 K39 ["Image"]
  DUPTABLE R19 K43 [{"Tooltip"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K3 ["createElement"]
  GETUPVAL R21 4
  DUPTABLE R22 K45 [{"Text"}]
  GETUPVAL R23 5
  MOVE R24 R3
  LOADK R25 K46 ["PreviewTooltip"]
  LOADK R26 K59 ["RigVisualization"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K44 ["Text"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K42 ["Tooltip"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K37 ["Icon"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K55 ["RigVisualizationButton"]
  CALL R8 3 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K21 ["RigVisualizationButtonContainer"]
  CALL R4 3 -1
  RETURN R4 -1

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
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["withContext"]
  GETTABLEKS R5 R2 K11 ["UI"]
  GETTABLEKS R6 R5 K12 ["Pane"]
  GETTABLEKS R7 R5 K13 ["Button"]
  GETTABLEKS R8 R5 K14 ["Image"]
  GETTABLEKS R9 R5 K15 ["Tooltip"]
  GETTABLEKS R10 R3 K16 ["Localization"]
  GETTABLEKS R12 R2 K17 ["Style"]
  GETTABLEKS R11 R12 K18 ["Stylizer"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K19 ["Src"]
  GETTABLEKS R14 R15 K20 ["Utility"]
  GETTABLEKS R13 R14 K21 ["GetLocalizedString"]
  CALL R12 1 1
  GETTABLEKS R13 R1 K22 ["PureComponent"]
  LOADK R15 K23 ["PreviewControls"]
  NAMECALL R13 R13 K24 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K25 [PROTO_0]
  SETTABLEKS R14 R13 K26 ["init"]
  DUPCLOSURE R14 K27 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R12
  SETTABLEKS R14 R13 K28 ["render"]
  MOVE R14 R4
  DUPTABLE R15 K29 [{"Localization", "Stylizer"}]
  SETTABLEKS R10 R15 K16 ["Localization"]
  SETTABLEKS R11 R15 K18 ["Stylizer"]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  RETURN R13 1
