PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K9 [{"LayoutOrder", "AnchorPoint", "AutomaticSize", "Size", "Padding", "OnClick", "Style", "Text"}]
  GETTABLEKS R4 R0 K1 ["LayoutOrder"]
  SETTABLEKS R4 R3 K1 ["LayoutOrder"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["Controls"]
  GETTABLEKS R4 R5 K11 ["ButtonAnchorPoint"]
  SETTABLEKS R4 R3 K2 ["AnchorPoint"]
  GETIMPORT R4 K14 [Enum.AutomaticSize.X]
  SETTABLEKS R4 R3 K3 ["AutomaticSize"]
  GETIMPORT R4 K17 [UDim2.fromOffset]
  LOADN R5 0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K10 ["Controls"]
  GETTABLEKS R6 R7 K18 ["ButtonHeight"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["Size"]
  GETTABLEKS R5 R0 K19 ["enableHorizontalPadding"]
  JUMPIFNOT R5 [+16]
  DUPTABLE R4 K22 [{"Left", "Right"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K10 ["Controls"]
  GETTABLEKS R5 R6 K23 ["ButtonPaddingHorizontal"]
  SETTABLEKS R5 R4 K20 ["Left"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K10 ["Controls"]
  GETTABLEKS R5 R6 K23 ["ButtonPaddingHorizontal"]
  SETTABLEKS R5 R4 K21 ["Right"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K5 ["Padding"]
  GETTABLEKS R4 R0 K24 ["callback"]
  SETTABLEKS R4 R3 K6 ["OnClick"]
  GETTABLEKS R4 R0 K25 ["style"]
  SETTABLEKS R4 R3 K7 ["Style"]
  GETTABLEKS R4 R0 K26 ["name"]
  SETTABLEKS R4 R3 K8 ["Text"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  LOADK R4 K1 ["AutoSetupScreen"]
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 2 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  DUPTABLE R4 K3 [{"Start"}]
  MOVE R5 R3
  DUPTABLE R6 K9 [{"name", "callback", "LayoutOrder", "style", "enableHorizontalPadding"}]
  LOADK R9 K10 ["AvatarScreen"]
  LOADK R10 K11 ["StartAutoSetup"]
  NAMECALL R7 R1 K12 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K4 ["name"]
  GETTABLEKS R7 R0 K13 ["startAutoSetup"]
  SETTABLEKS R7 R6 K5 ["callback"]
  LOADN R7 3
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  LOADK R7 K14 ["PrimaryBrand"]
  SETTABLEKS R7 R6 K7 ["style"]
  LOADB R7 1
  SETTABLEKS R7 R6 K8 ["enableHorizontalPadding"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K2 ["Start"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K15 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K17 [{"ZIndex"}]
  GETTABLEKS R8 R0 K16 ["ZIndex"]
  SETTABLEKS R8 R7 K16 ["ZIndex"]
  DUPTABLE R8 K19 [{"Controls"}]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K15 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K28 [{"AnchorPoint", "Size", "HorizontalAlignment", "Layout", "Position", "Padding", "Spacing", "Style"}]
  GETTABLEKS R13 R2 K18 ["Controls"]
  GETTABLEKS R12 R13 K20 ["AnchorPoint"]
  SETTABLEKS R12 R11 K20 ["AnchorPoint"]
  GETIMPORT R12 K31 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETTABLEKS R17 R2 K18 ["Controls"]
  GETTABLEKS R16 R17 K32 ["PaneHeight"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K21 ["Size"]
  GETIMPORT R12 K35 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R12 R11 K22 ["HorizontalAlignment"]
  GETIMPORT R12 K38 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K23 ["Layout"]
  GETTABLEKS R13 R2 K18 ["Controls"]
  GETTABLEKS R12 R13 K24 ["Position"]
  SETTABLEKS R12 R11 K24 ["Position"]
  LOADN R12 7
  SETTABLEKS R12 R11 K25 ["Padding"]
  LOADN R12 8
  SETTABLEKS R12 R11 K26 ["Spacing"]
  LOADK R12 K39 ["BorderBox"]
  SETTABLEKS R12 R11 K27 ["Style"]
  GETTABLEKS R13 R0 K40 ["stateType"]
  JUMPIFEQKS R13 K41 ["hasSelection"] [+5]
  GETTABLEKS R13 R0 K40 ["stateType"]
  JUMPIFNOTEQKS R13 K42 ["error"] [+3]
  MOVE R12 R4
  JUMP [+2]
  NEWTABLE R12 0 0
  CALL R9 3 1
  SETTABLEKS R9 R8 K18 ["Controls"]
  CALL R5 3 -1
  RETURN R5 -1

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
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Theme"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K13 ["UI"]
  GETTABLEKS R6 R5 K14 ["IconButton"]
  GETTABLEKS R7 R5 K15 ["Pane"]
  GETTABLEKS R9 R1 K16 ["ContextServices"]
  GETTABLEKS R8 R9 K17 ["Localization"]
  GETTABLEKS R10 R1 K16 ["ContextServices"]
  GETTABLEKS R9 R10 K18 ["Stylizer"]
  DUPCLOSURE R10 K19 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R10 1
