PROTO_0:
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K12 [{"HorizontalAlignment", "VerticalAlignment", "Layout", "Size", "Position", "Padding", "Spacing", "ZIndex"}]
  GETUPVAL R8 2
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  LOADNIL R7
  JUMP [+2]
  GETIMPORT R7 K15 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R7 R6 K4 ["HorizontalAlignment"]
  GETIMPORT R7 K17 [Enum.VerticalAlignment.Top]
  SETTABLEKS R7 R6 K5 ["VerticalAlignment"]
  GETIMPORT R7 K20 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K6 ["Layout"]
  GETTABLEKS R9 R2 K21 ["PreviewWindow"]
  GETTABLEKS R8 R9 K22 ["PreviewButtonBar"]
  GETTABLEKS R7 R8 K7 ["Size"]
  SETTABLEKS R7 R6 K7 ["Size"]
  GETTABLEKS R9 R2 K21 ["PreviewWindow"]
  GETTABLEKS R8 R9 K22 ["PreviewButtonBar"]
  GETTABLEKS R7 R8 K8 ["Position"]
  SETTABLEKS R7 R6 K8 ["Position"]
  GETUPVAL R8 2
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  LOADNIL R7
  JUMP [+6]
  GETTABLEKS R9 R2 K21 ["PreviewWindow"]
  GETTABLEKS R8 R9 K22 ["PreviewButtonBar"]
  GETTABLEKS R7 R8 K9 ["Padding"]
  SETTABLEKS R7 R6 K9 ["Padding"]
  GETTABLEKS R9 R2 K21 ["PreviewWindow"]
  GETTABLEKS R8 R9 K22 ["PreviewButtonBar"]
  GETTABLEKS R7 R8 K10 ["Spacing"]
  SETTABLEKS R7 R6 K10 ["Spacing"]
  LOADN R7 4
  SETTABLEKS R7 R6 K11 ["ZIndex"]
  DUPTABLE R7 K26 [{"CameraResetButtonContainer", "InsertContextToggleButtonContainer", "RigVisualizationButtonContainer"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K29 [{"LayoutOrder", "Size", "AnchorPoint"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K27 ["LayoutOrder"]
  GETTABLEKS R12 R2 K21 ["PreviewWindow"]
  GETTABLEKS R11 R12 K30 ["OptionIconSize"]
  SETTABLEKS R11 R10 K7 ["Size"]
  GETIMPORT R11 K33 [Vector2.new]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K28 ["AnchorPoint"]
  DUPTABLE R11 K35 [{"CameraResetButton"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K38 [{"OnClick", "Style"}]
  GETTABLEKS R16 R0 K0 ["props"]
  GETTABLEKS R15 R16 K39 ["ResetCameraCallback"]
  SETTABLEKS R15 R14 K36 ["OnClick"]
  LOADK R15 K40 ["RoundSubtle"]
  SETTABLEKS R15 R14 K37 ["Style"]
  DUPTABLE R15 K42 [{"Icon"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K44 [{"Image"}]
  GETTABLEKS R20 R2 K21 ["PreviewWindow"]
  GETTABLEKS R19 R20 K45 ["ResetCameraImage"]
  SETTABLEKS R19 R18 K43 ["Image"]
  DUPTABLE R19 K47 [{"Tooltip"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K3 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K49 [{"Text"}]
  GETUPVAL R23 6
  MOVE R24 R3
  LOADK R25 K50 ["PreviewTooltip"]
  LOADK R26 K51 ["ResetCam"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K48 ["Text"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K46 ["Tooltip"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K41 ["Icon"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K34 ["CameraResetButton"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K23 ["CameraResetButtonContainer"]
  GETTABLEKS R9 R1 K52 ["ShouldShowWorkspaceToggle"]
  JUMPIFNOT R9 [+72]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K29 [{"LayoutOrder", "Size", "AnchorPoint"}]
  LOADN R11 2
  SETTABLEKS R11 R10 K27 ["LayoutOrder"]
  GETTABLEKS R12 R2 K21 ["PreviewWindow"]
  GETTABLEKS R11 R12 K30 ["OptionIconSize"]
  SETTABLEKS R11 R10 K7 ["Size"]
  GETIMPORT R11 K33 [Vector2.new]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K28 ["AnchorPoint"]
  DUPTABLE R11 K54 [{"InsertContextToggleButton"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K38 [{"OnClick", "Style"}]
  GETTABLEKS R16 R0 K0 ["props"]
  GETTABLEKS R15 R16 K55 ["InsertContextCallback"]
  SETTABLEKS R15 R14 K36 ["OnClick"]
  LOADK R15 K40 ["RoundSubtle"]
  SETTABLEKS R15 R14 K37 ["Style"]
  DUPTABLE R15 K42 [{"Icon"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K44 [{"Image"}]
  GETTABLEKS R20 R2 K21 ["PreviewWindow"]
  GETTABLEKS R19 R20 K56 ["ShowWorkspaceImage"]
  SETTABLEKS R19 R18 K43 ["Image"]
  DUPTABLE R19 K47 [{"Tooltip"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K3 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K49 [{"Text"}]
  GETUPVAL R23 6
  MOVE R24 R3
  LOADK R25 K50 ["PreviewTooltip"]
  LOADK R26 K57 ["ToggleInsertContext"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K48 ["Text"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K46 ["Tooltip"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K41 ["Icon"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K53 ["InsertContextToggleButton"]
  CALL R8 3 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K24 ["InsertContextToggleButtonContainer"]
  GETTABLEKS R9 R1 K58 ["ShouldShowRigVisualizationToggle"]
  JUMPIFNOT R9 [+72]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K29 [{"LayoutOrder", "Size", "AnchorPoint"}]
  LOADN R11 3
  SETTABLEKS R11 R10 K27 ["LayoutOrder"]
  GETTABLEKS R12 R2 K21 ["PreviewWindow"]
  GETTABLEKS R11 R12 K30 ["OptionIconSize"]
  SETTABLEKS R11 R10 K7 ["Size"]
  GETIMPORT R11 K33 [Vector2.new]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K28 ["AnchorPoint"]
  DUPTABLE R11 K60 [{"RigVisualizationButton"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K38 [{"OnClick", "Style"}]
  GETTABLEKS R16 R0 K0 ["props"]
  GETTABLEKS R15 R16 K61 ["VisualizeRigCallback"]
  SETTABLEKS R15 R14 K36 ["OnClick"]
  LOADK R15 K40 ["RoundSubtle"]
  SETTABLEKS R15 R14 K37 ["Style"]
  DUPTABLE R15 K42 [{"Icon"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K44 [{"Image"}]
  GETTABLEKS R20 R2 K21 ["PreviewWindow"]
  GETTABLEKS R19 R20 K62 ["ShowRigVisualizationImage"]
  SETTABLEKS R19 R18 K43 ["Image"]
  DUPTABLE R19 K47 [{"Tooltip"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K3 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K49 [{"Text"}]
  GETUPVAL R23 6
  MOVE R24 R3
  LOADK R25 K50 ["PreviewTooltip"]
  LOADK R26 K63 ["RigVisualization"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K48 ["Text"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K46 ["Tooltip"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K41 ["Icon"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K59 ["RigVisualizationButton"]
  CALL R8 3 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K25 ["RigVisualizationButtonContainer"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R2 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["Pane"]
  GETTABLEKS R7 R5 K12 ["Button"]
  GETTABLEKS R8 R5 K13 ["Image"]
  GETTABLEKS R9 R5 K14 ["Tooltip"]
  GETTABLEKS R10 R3 K15 ["Localization"]
  GETTABLEKS R12 R2 K16 ["Style"]
  GETTABLEKS R11 R12 K17 ["Stylizer"]
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K18 ["Src"]
  GETTABLEKS R14 R15 K19 ["Utility"]
  GETTABLEKS R13 R14 K20 ["GetLocalizedString"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K18 ["Src"]
  GETTABLEKS R15 R16 K21 ["Flags"]
  GETTABLEKS R14 R15 K22 ["getFFlagRigVisualizationMetrics"]
  CALL R13 1 1
  GETTABLEKS R14 R1 K23 ["PureComponent"]
  LOADK R16 K24 ["PreviewControls"]
  NAMECALL R14 R14 K25 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K26 [PROTO_0]
  SETTABLEKS R15 R14 K27 ["init"]
  DUPCLOSURE R15 K28 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R12
  SETTABLEKS R15 R14 K29 ["render"]
  MOVE R15 R4
  DUPTABLE R16 K30 [{"Localization", "Stylizer"}]
  SETTABLEKS R10 R16 K15 ["Localization"]
  SETTABLEKS R11 R16 K17 ["Stylizer"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  RETURN R14 1
