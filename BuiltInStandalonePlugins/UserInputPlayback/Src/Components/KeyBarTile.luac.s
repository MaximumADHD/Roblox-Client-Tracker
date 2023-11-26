PROTO_0:
  GETTABLEKS R4 R1 K0 ["KeyCode"]
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K2 [assert]
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["KeyCode"]
  LOADNIL R4
  GETUPVAL R5 0
  MOVE R7 R3
  NAMECALL R5 R5 K3 ["GetStringForKeyCode"]
  CALL R5 2 1
  GETUPVAL R6 1
  GETTABLE R4 R6 R3
  GETUPVAL R6 2
  JUMPIFNOTEQKNIL R4 [+3]
  GETUPVAL R7 3
  GETTABLE R4 R7 R5
  JUMPIFNOTEQKNIL R4 [+4]
  GETUPVAL R7 4
  GETTABLE R4 R7 R3
  GETUPVAL R6 5
  JUMPIFNOTEQKNIL R4 [+4]
  GETUPVAL R7 6
  GETTABLE R4 R7 R3
  GETUPVAL R6 7
  GETUPVAL R8 8
  GETTABLE R7 R8 R3
  JUMPIFNOT R7 [+1]
  MOVE R5 R7
  JUMPIFNOT R5 [+7]
  FASTCALL1 STRING_LEN R5 [+3]
  MOVE R9 R5
  GETIMPORT R8 K6 [string.len]
  CALL R8 1 1
  JUMPIFNOTEQKN R8 K7 [0] [+3]
  GETTABLEKS R5 R3 K8 ["Name"]
  JUMPIFNOT R4 [+56]
  GETUPVAL R9 9
  GETTABLEKS R8 R9 K9 ["createElement"]
  GETUPVAL R9 10
  DUPTABLE R10 K14 [{"Style", "Size", "BackgroundTransparency", "LayoutOrder"}]
  LOADK R11 K15 ["KeyTileBox"]
  SETTABLEKS R11 R10 K10 ["Style"]
  GETTABLEKS R11 R1 K11 ["Size"]
  SETTABLEKS R11 R10 K11 ["Size"]
  GETTABLEKS R11 R1 K12 ["BackgroundTransparency"]
  SETTABLEKS R11 R10 K12 ["BackgroundTransparency"]
  GETTABLEKS R11 R1 K13 ["LayoutOrder"]
  SETTABLEKS R11 R10 K13 ["LayoutOrder"]
  DUPTABLE R11 K17 [{"Image"}]
  GETUPVAL R13 9
  GETTABLEKS R12 R13 K9 ["createElement"]
  LOADK R13 K18 ["ImageLabel"]
  DUPTABLE R14 K22 [{"Image", "AnchorPoint", "Position", "BackgroundTransparency", "Size", "ImageTransparency"}]
  SETTABLEKS R4 R14 K16 ["Image"]
  GETIMPORT R15 K25 [Vector2.new]
  LOADK R16 K26 [0.5]
  LOADK R17 K26 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K19 ["AnchorPoint"]
  GETIMPORT R15 K29 [UDim2.fromScale]
  LOADK R16 K26 [0.5]
  LOADK R17 K26 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K20 ["Position"]
  LOADN R15 1
  SETTABLEKS R15 R14 K12 ["BackgroundTransparency"]
  SETTABLEKS R6 R14 K11 ["Size"]
  GETTABLEKS R15 R1 K30 ["ForegroundTransparency"]
  SETTABLEKS R15 R14 K21 ["ImageTransparency"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K16 ["Image"]
  CALL R8 3 -1
  RETURN R8 -1
  GETUPVAL R9 9
  GETTABLEKS R8 R9 K9 ["createElement"]
  GETUPVAL R9 10
  DUPTABLE R10 K14 [{"Style", "Size", "BackgroundTransparency", "LayoutOrder"}]
  LOADK R11 K15 ["KeyTileBox"]
  SETTABLEKS R11 R10 K10 ["Style"]
  GETTABLEKS R11 R1 K11 ["Size"]
  SETTABLEKS R11 R10 K11 ["Size"]
  GETTABLEKS R11 R1 K12 ["BackgroundTransparency"]
  SETTABLEKS R11 R10 K12 ["BackgroundTransparency"]
  GETTABLEKS R11 R1 K13 ["LayoutOrder"]
  SETTABLEKS R11 R10 K13 ["LayoutOrder"]
  DUPTABLE R11 K32 [{"TextLabel"}]
  GETUPVAL R13 9
  GETTABLEKS R12 R13 K9 ["createElement"]
  LOADK R13 K31 ["TextLabel"]
  DUPTABLE R14 K40 [{"Text", "Position", "Size", "TextScaled", "Font", "TextSize", "TextColor3", "BackgroundTransparency", "BorderSizePixel", "TextTransparency"}]
  SETTABLEKS R5 R14 K33 ["Text"]
  GETIMPORT R15 K29 [UDim2.fromScale]
  LOADN R16 0
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K20 ["Position"]
  GETIMPORT R15 K29 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K11 ["Size"]
  LOADB R15 1
  SETTABLEKS R15 R14 K34 ["TextScaled"]
  GETIMPORT R15 K43 [Enum.Font.SourceSansBold]
  SETTABLEKS R15 R14 K35 ["Font"]
  LOADN R15 25
  SETTABLEKS R15 R14 K36 ["TextSize"]
  GETTABLEKS R15 R2 K44 ["TextColor"]
  SETTABLEKS R15 R14 K37 ["TextColor3"]
  LOADN R15 1
  SETTABLEKS R15 R14 K12 ["BackgroundTransparency"]
  LOADN R15 0
  SETTABLEKS R15 R14 K38 ["BorderSizePixel"]
  GETTABLEKS R15 R1 K30 ["ForegroundTransparency"]
  SETTABLEKS R15 R14 K39 ["TextTransparency"]
  DUPTABLE R15 K46 [{"SizeConstraint"}]
  GETUPVAL R17 9
  GETTABLEKS R16 R17 K9 ["createElement"]
  LOADK R17 K47 ["UITextSizeConstraint"]
  DUPTABLE R18 K50 [{"MaxTextSize", "MinTextSize"}]
  LOADN R19 25
  SETTABLEKS R19 R18 K48 ["MaxTextSize"]
  LOADN R19 5
  SETTABLEKS R19 R18 K49 ["MinTextSize"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K45 ["SizeConstraint"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K31 ["TextLabel"]
  CALL R8 3 -1
  RETURN R8 -1

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
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R2 K9 ["UI"]
  GETTABLEKS R5 R4 K10 ["Pane"]
  GETIMPORT R6 K12 [game]
  LOADK R8 K13 ["UserInputService"]
  NAMECALL R6 R6 K14 ["GetService"]
  CALL R6 2 1
  NEWTABLE R7 8 0
  GETIMPORT R8 K18 [Enum.KeyCode.ButtonX]
  LOADK R9 K19 ["rbxasset://textures/ui/Controls/xboxX.png"]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K21 [Enum.KeyCode.ButtonY]
  LOADK R9 K22 ["rbxasset://textures/ui/Controls/xboxY.png"]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K24 [Enum.KeyCode.ButtonA]
  LOADK R9 K25 ["rbxasset://textures/ui/Controls/xboxA.png"]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K27 [Enum.KeyCode.ButtonB]
  LOADK R9 K28 ["rbxasset://textures/ui/Controls/xboxB.png"]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K30 [Enum.KeyCode.ButtonSelect]
  LOADK R9 K31 ["rbxasset://textures/ui/Controls/xboxmenu.png"]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K33 [Enum.KeyCode.ButtonL1]
  LOADK R9 K34 ["rbxasset://textures/ui/Controls/xboxLS.png"]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K36 [Enum.KeyCode.ButtonR1]
  LOADK R9 K37 ["rbxasset://textures/ui/Controls/xboxRS.png"]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K40 [UDim2.fromOffset]
  LOADN R9 28
  LOADN R10 28
  CALL R8 2 1
  NEWTABLE R9 4 0
  GETIMPORT R10 K42 [Enum.KeyCode.DPadLeft]
  LOADK R11 K43 ["rbxasset://textures/ui/Controls/dpadLeft.png"]
  SETTABLE R11 R9 R10
  GETIMPORT R10 K45 [Enum.KeyCode.DPadRight]
  LOADK R11 K46 ["rbxasset://textures/ui/Controls/dpadRight.png"]
  SETTABLE R11 R9 R10
  GETIMPORT R10 K48 [Enum.KeyCode.DPadUp]
  LOADK R11 K49 ["rbxasset://textures/ui/Controls/dpadUp.png"]
  SETTABLE R11 R9 R10
  GETIMPORT R10 K51 [Enum.KeyCode.DPadDown]
  LOADK R11 K52 ["rbxasset://textures/ui/Controls/dpadDown.png"]
  SETTABLE R11 R9 R10
  GETIMPORT R10 K40 [UDim2.fromOffset]
  LOADN R11 30
  LOADN R12 30
  CALL R10 2 1
  NEWTABLE R11 8 0
  GETIMPORT R12 K54 [Enum.KeyCode.Backspace]
  LOADK R13 K55 ["rbxasset://textures/ui/Controls/backspace.png"]
  SETTABLE R13 R11 R12
  GETIMPORT R12 K57 [Enum.KeyCode.Return]
  LOADK R13 K58 ["rbxasset://textures/ui/Controls/return.png"]
  SETTABLE R13 R11 R12
  GETIMPORT R12 K60 [Enum.KeyCode.LeftShift]
  LOADK R13 K61 ["rbxasset://textures/ui/Controls/shift.png"]
  SETTABLE R13 R11 R12
  GETIMPORT R12 K63 [Enum.KeyCode.RightShift]
  LOADK R13 K61 ["rbxasset://textures/ui/Controls/shift.png"]
  SETTABLE R13 R11 R12
  GETIMPORT R12 K65 [Enum.KeyCode.Tab]
  LOADK R13 K66 ["rbxasset://textures/ui/Controls/tab.png"]
  SETTABLE R13 R11 R12
  GETIMPORT R12 K40 [UDim2.fromOffset]
  LOADN R13 45
  LOADN R14 45
  CALL R12 2 1
  NEWTABLE R13 8 0
  LOADK R14 K67 ["rbxasset://textures/ui/Controls/apostrophe.png"]
  SETTABLEKS R14 R13 K68 ["'"]
  LOADK R14 K69 ["rbxasset://textures/ui/Controls/comma.png"]
  SETTABLEKS R14 R13 K70 [","]
  LOADK R14 K71 ["rbxasset://textures/ui/Controls/graveaccent.png"]
  SETTABLEKS R14 R13 K72 ["`"]
  LOADK R14 K73 ["rbxasset://textures/ui/Controls/period.png"]
  SETTABLEKS R14 R13 K74 ["."]
  LOADK R14 K75 ["rbxasset://textures/ui/Controls/spacebar.png"]
  SETTABLEKS R14 R13 K76 [" "]
  NEWTABLE R14 16 0
  GETIMPORT R15 K78 [Enum.KeyCode.LeftControl]
  LOADK R16 K79 ["Ctrl"]
  SETTABLE R16 R14 R15
  GETIMPORT R15 K81 [Enum.KeyCode.RightControl]
  LOADK R16 K79 ["Ctrl"]
  SETTABLE R16 R14 R15
  GETIMPORT R15 K83 [Enum.KeyCode.LeftAlt]
  LOADK R16 K84 ["Alt"]
  SETTABLE R16 R14 R15
  GETIMPORT R15 K86 [Enum.KeyCode.RightAlt]
  LOADK R16 K84 ["Alt"]
  SETTABLE R16 R14 R15
  GETIMPORT R15 K88 [Enum.KeyCode.F1]
  LOADK R16 K87 ["F1"]
  SETTABLE R16 R14 R15
  GETIMPORT R15 K90 [Enum.KeyCode.F2]
  LOADK R16 K89 ["F2"]
  SETTABLE R16 R14 R15
  GETIMPORT R15 K92 [Enum.KeyCode.F3]
  LOADK R16 K91 ["F3"]
  SETTABLE R16 R14 R15
  GETIMPORT R15 K94 [Enum.KeyCode.F4]
  LOADK R16 K93 ["F4"]
  SETTABLE R16 R14 R15
  GETIMPORT R15 K96 [Enum.KeyCode.F5]
  LOADK R16 K95 ["F5"]
  SETTABLE R16 R14 R15
  GETIMPORT R15 K98 [Enum.KeyCode.F6]
  LOADK R16 K97 ["F6"]
  SETTABLE R16 R14 R15
  GETIMPORT R15 K100 [Enum.KeyCode.F7]
  LOADK R16 K99 ["F7"]
  SETTABLE R16 R14 R15
  GETIMPORT R15 K102 [Enum.KeyCode.F8]
  LOADK R16 K101 ["F8"]
  SETTABLE R16 R14 R15
  GETIMPORT R15 K104 [Enum.KeyCode.F9]
  LOADK R16 K103 ["F9"]
  SETTABLE R16 R14 R15
  GETIMPORT R15 K106 [Enum.KeyCode.F10]
  LOADK R16 K105 ["F10"]
  SETTABLE R16 R14 R15
  GETIMPORT R15 K108 [Enum.KeyCode.F11]
  LOADK R16 K107 ["F11"]
  SETTABLE R16 R14 R15
  GETIMPORT R15 K110 [Enum.KeyCode.F12]
  LOADK R16 K109 ["F12"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R1 K111 ["PureComponent"]
  LOADK R17 K112 ["KeyBarTile"]
  NAMECALL R15 R15 K113 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K114 [PROTO_0]
  SETTABLEKS R16 R15 K115 ["init"]
  DUPCLOSURE R16 K116 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R14
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R16 R15 K117 ["render"]
  GETTABLEKS R16 R3 K118 ["withContext"]
  DUPTABLE R17 K120 [{"Stylizer"}]
  GETTABLEKS R18 R3 K119 ["Stylizer"]
  SETTABLEKS R18 R17 K119 ["Stylizer"]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 1
  MOVE R15 R16
  RETURN R15 1
