PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["useToggleState"]
  LOADB R3 0
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["useState"]
  LOADNIL R4
  CALL R3 1 2
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["createNextOrder"]
  CALL R5 0 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K4 ["View"]
  DUPTABLE R8 K7 [{"tag", "ref"}]
  LOADK R9 K8 ["size-full-full"]
  SETTABLEKS R9 R8 K5 ["tag"]
  SETTABLEKS R4 R8 K6 ["ref"]
  NEWTABLE R9 0 1
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K3 ["createElement"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K9 ["ContextStack"]
  DUPTABLE R12 K11 [{"providers"}]
  NEWTABLE R13 0 1
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K3 ["createElement"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K12 ["FoundationProvider"]
  DUPTABLE R16 K16 [{"theme", "device", "overlayGui"}]
  SETTABLEKS R1 R16 K13 ["theme"]
  LOADK R17 K17 ["Desktop"]
  SETTABLEKS R17 R16 K14 ["device"]
  SETTABLEKS R3 R16 K15 ["overlayGui"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  SETTABLEKS R13 R12 K10 ["providers"]
  DUPTABLE R13 K19 [{"Container"}]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K3 ["createElement"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K4 ["View"]
  DUPTABLE R16 K21 [{"tag", "LayoutOrder"}]
  LOADK R17 K22 ["face-editor-container size-full-full"]
  SETTABLEKS R17 R16 K5 ["tag"]
  MOVE R17 R5
  CALL R17 0 1
  SETTABLEKS R17 R16 K20 ["LayoutOrder"]
  DUPTABLE R17 K26 [{"UIListLayout", "ControlBar", "ImageContainer"}]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K3 ["createElement"]
  LOADK R19 K23 ["UIListLayout"]
  DUPTABLE R20 K31 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R21 K33 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K27 ["SortOrder"]
  GETIMPORT R21 K35 [Enum.FillDirection.Vertical]
  SETTABLEKS R21 R20 K28 ["FillDirection"]
  GETIMPORT R21 K37 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R21 R20 K29 ["HorizontalAlignment"]
  GETIMPORT R21 K39 [Enum.VerticalAlignment.Top]
  SETTABLEKS R21 R20 K30 ["VerticalAlignment"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K23 ["UIListLayout"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K3 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K43 [{"isSymmetryEnabled", "setIsSymmetryEnabled", "localizationFunction", "LayoutOrder"}]
  GETTABLEKS R21 R2 K44 ["enabled"]
  SETTABLEKS R21 R20 K40 ["isSymmetryEnabled"]
  GETTABLEKS R21 R2 K45 ["toggle"]
  SETTABLEKS R21 R20 K41 ["setIsSymmetryEnabled"]
  GETTABLEKS R21 R0 K42 ["localizationFunction"]
  SETTABLEKS R21 R20 K42 ["localizationFunction"]
  MOVE R21 R5
  CALL R21 0 1
  SETTABLEKS R21 R20 K20 ["LayoutOrder"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K24 ["ControlBar"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K3 ["createElement"]
  GETUPVAL R19 5
  DUPTABLE R20 K46 [{"isSymmetryEnabled"}]
  GETTABLEKS R21 R2 K44 ["enabled"]
  SETTABLEKS R21 R20 K40 ["isSymmetryEnabled"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K25 ["ImageContainer"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K18 ["Container"]
  CALL R10 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FaceControlEditorComponent"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["ReactUtils"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R8 R0 K10 ["Components"]
  GETTABLEKS R7 R8 K11 ["FaceControlEditor"]
  GETTABLEKS R6 R7 K12 ["FaceControlControlBar"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R0 K10 ["Components"]
  GETTABLEKS R8 R9 K11 ["FaceControlEditor"]
  GETTABLEKS R7 R8 K13 ["FaceImageContainer"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K14 ["Hooks"]
  GETTABLEKS R8 R9 K15 ["useFoundationStudioTheme"]
  CALL R7 1 1
  DUPCLOSURE R8 K16 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R8 1
