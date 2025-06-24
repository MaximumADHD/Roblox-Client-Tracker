PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K10 [{"LayoutOrder", "AnchorPoint", "AutomaticSize", "Size", "Padding", "OnClick", "Style", "Text", "TooltipText"}]
  GETTABLEKS R4 R0 K1 ["LayoutOrder"]
  SETTABLEKS R4 R3 K1 ["LayoutOrder"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K11 ["Controls"]
  GETTABLEKS R4 R5 K12 ["ButtonAnchorPoint"]
  SETTABLEKS R4 R3 K2 ["AnchorPoint"]
  GETIMPORT R4 K15 [Enum.AutomaticSize.X]
  SETTABLEKS R4 R3 K3 ["AutomaticSize"]
  GETIMPORT R4 K18 [UDim2.fromOffset]
  LOADN R5 0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K11 ["Controls"]
  GETTABLEKS R6 R7 K19 ["ButtonHeight"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["Size"]
  GETTABLEKS R5 R0 K20 ["enableHorizontalPadding"]
  JUMPIFNOT R5 [+16]
  DUPTABLE R4 K23 [{"Left", "Right"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K11 ["Controls"]
  GETTABLEKS R5 R6 K24 ["ButtonPaddingHorizontal"]
  SETTABLEKS R5 R4 K21 ["Left"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K11 ["Controls"]
  GETTABLEKS R5 R6 K24 ["ButtonPaddingHorizontal"]
  SETTABLEKS R5 R4 K22 ["Right"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K5 ["Padding"]
  GETTABLEKS R4 R0 K25 ["callback"]
  SETTABLEKS R4 R3 K6 ["OnClick"]
  GETTABLEKS R4 R0 K26 ["style"]
  SETTABLEKS R4 R3 K7 ["Style"]
  GETTABLEKS R4 R0 K27 ["name"]
  SETTABLEKS R4 R3 K8 ["Text"]
  GETTABLEKS R4 R0 K28 ["tooltip"]
  SETTABLEKS R4 R3 K9 ["TooltipText"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Context"]
  CALL R1 1 1
  GETUPVAL R2 2
  NAMECALL R2 R2 K2 ["use"]
  CALL R2 1 1
  GETUPVAL R3 3
  LOADK R5 K3 ["AutoSetupScreen"]
  NAMECALL R3 R3 K2 ["use"]
  CALL R3 2 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  CAPTURE VAL R3
  DUPTABLE R5 K5 [{"Start"}]
  MOVE R6 R4
  DUPTABLE R7 K12 [{"name", "callback", "LayoutOrder", "style", "enableHorizontalPadding", "tooltip"}]
  LOADK R10 K13 ["AvatarScreen"]
  LOADK R11 K14 ["StartAutoSetup"]
  NAMECALL R8 R2 K15 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K6 ["name"]
  GETTABLEKS R8 R0 K16 ["startAutoSetup"]
  SETTABLEKS R8 R7 K7 ["callback"]
  LOADN R8 3
  SETTABLEKS R8 R7 K8 ["LayoutOrder"]
  LOADK R8 K17 ["PrimaryBrand"]
  SETTABLEKS R8 R7 K9 ["style"]
  LOADB R8 1
  SETTABLEKS R8 R7 K10 ["enableHorizontalPadding"]
  GETTABLEKS R8 R1 K18 ["explanationTooltip"]
  SETTABLEKS R8 R7 K11 ["tooltip"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K4 ["Start"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K19 ["createElement"]
  GETUPVAL R7 5
  NEWTABLE R8 0 0
  DUPTABLE R9 K21 [{"Controls"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K19 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K31 [{"AnchorPoint", "Size", "HorizontalAlignment", "Layout", "Position", "ZIndex", "Padding", "Spacing", "Style"}]
  GETTABLEKS R14 R3 K20 ["Controls"]
  GETTABLEKS R13 R14 K22 ["AnchorPoint"]
  SETTABLEKS R13 R12 K22 ["AnchorPoint"]
  GETIMPORT R13 K34 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  GETTABLEKS R18 R3 K20 ["Controls"]
  GETTABLEKS R17 R18 K35 ["PaneHeight"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K23 ["Size"]
  GETIMPORT R13 K38 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R13 R12 K24 ["HorizontalAlignment"]
  GETIMPORT R13 K41 [Enum.FillDirection.Horizontal]
  SETTABLEKS R13 R12 K25 ["Layout"]
  GETTABLEKS R14 R3 K20 ["Controls"]
  GETTABLEKS R13 R14 K26 ["Position"]
  SETTABLEKS R13 R12 K26 ["Position"]
  GETTABLEKS R13 R0 K27 ["ZIndex"]
  SETTABLEKS R13 R12 K27 ["ZIndex"]
  LOADN R13 7
  SETTABLEKS R13 R12 K28 ["Padding"]
  LOADN R13 8
  SETTABLEKS R13 R12 K29 ["Spacing"]
  LOADK R13 K42 ["BorderBox"]
  SETTABLEKS R13 R12 K30 ["Style"]
  GETTABLEKS R14 R0 K43 ["stateType"]
  JUMPIFEQKS R14 K44 ["hasSelection"] [+5]
  GETTABLEKS R14 R0 K43 ["stateType"]
  JUMPIFNOTEQKS R14 K45 ["error"] [+3]
  MOVE R13 R5
  JUMP [+2]
  NEWTABLE R13 0 0
  CALL R10 3 1
  SETTABLEKS R10 R9 K20 ["Controls"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Components"]
  GETTABLEKS R4 R5 K11 ["AssetClassificationContext"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K12 ["Resources"]
  GETTABLEKS R5 R6 K13 ["Theme"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K14 ["Types"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K15 ["UI"]
  GETTABLEKS R7 R6 K16 ["IconButton"]
  GETTABLEKS R8 R6 K17 ["Pane"]
  GETTABLEKS R10 R1 K18 ["ContextServices"]
  GETTABLEKS R9 R10 K19 ["Localization"]
  GETTABLEKS R11 R1 K18 ["ContextServices"]
  GETTABLEKS R10 R11 K20 ["Stylizer"]
  DUPCLOSURE R11 K21 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R8
  RETURN R11 1
