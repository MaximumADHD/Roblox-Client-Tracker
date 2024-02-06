PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  CALL R2 0 1
  MOVE R1 R2
  JUMP [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R4 3
  NAMECALL R2 R1 K2 ["extend"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["Style"]
  GETTABLEKS R4 R2 K8 ["Themes"]
  GETTABLEKS R3 R4 K9 ["StudioTheme"]
  GETTABLEKS R4 R2 K10 ["StyleKey"]
  DUPTABLE R5 K25 [{"ContentHeight", "SelectedTopicTextColor", "TopicTextColor", "CircleColor", "CircleSize", "HintKeyBorder", "HintKeyBackground", "HintKeyBorderPressed", "HintKeyBackgroundPressed", "HintKeyTextColor", "HintKeyTextColorPressed", "IconSize", "Padding", "PaddingSmall"}]
  GETIMPORT R6 K28 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 1
  LOADN R10 126
  CALL R6 4 1
  SETTABLEKS R6 R5 K11 ["ContentHeight"]
  GETTABLEKS R6 R4 K29 ["MainText"]
  SETTABLEKS R6 R5 K12 ["SelectedTopicTextColor"]
  GETTABLEKS R6 R4 K30 ["SubText"]
  SETTABLEKS R6 R5 K13 ["TopicTextColor"]
  GETTABLEKS R6 R4 K31 ["ForegroundContrast"]
  SETTABLEKS R6 R5 K14 ["CircleColor"]
  LOADN R6 24
  SETTABLEKS R6 R5 K15 ["CircleSize"]
  GETTABLEKS R6 R4 K30 ["SubText"]
  SETTABLEKS R6 R5 K16 ["HintKeyBorder"]
  GETTABLEKS R6 R4 K31 ["ForegroundContrast"]
  SETTABLEKS R6 R5 K17 ["HintKeyBackground"]
  GETTABLEKS R6 R4 K29 ["MainText"]
  SETTABLEKS R6 R5 K18 ["HintKeyBorderPressed"]
  GETTABLEKS R6 R4 K30 ["SubText"]
  SETTABLEKS R6 R5 K19 ["HintKeyBackgroundPressed"]
  GETTABLEKS R6 R4 K29 ["MainText"]
  SETTABLEKS R6 R5 K20 ["HintKeyTextColor"]
  GETTABLEKS R6 R4 K32 ["TextContrast"]
  SETTABLEKS R6 R5 K21 ["HintKeyTextColorPressed"]
  GETIMPORT R6 K34 [UDim2.fromOffset]
  LOADN R7 16
  LOADN R8 16
  CALL R6 2 1
  SETTABLEKS R6 R5 K22 ["IconSize"]
  LOADN R6 15
  SETTABLEKS R6 R5 K23 ["Padding"]
  LOADN R6 5
  SETTABLEKS R6 R5 K24 ["PaddingSmall"]
  DUPTABLE R6 K39 [{"CheckmarkImage", "ListSelectedImage", "ListImage", "CloseImage"}]
  LOADK R7 K40 ["rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/Checkmark.png"]
  SETTABLEKS R7 R6 K35 ["CheckmarkImage"]
  LOADK R7 K41 ["rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/List-Selected.png"]
  SETTABLEKS R7 R6 K36 ["ListSelectedImage"]
  LOADK R7 K42 ["rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/List.png"]
  SETTABLEKS R7 R6 K37 ["ListImage"]
  LOADK R7 K43 ["rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/Close.png"]
  SETTABLEKS R7 R6 K38 ["CloseImage"]
  DUPTABLE R7 K39 [{"CheckmarkImage", "ListSelectedImage", "ListImage", "CloseImage"}]
  LOADK R8 K44 ["rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/Checkmark.png"]
  SETTABLEKS R8 R7 K35 ["CheckmarkImage"]
  LOADK R8 K45 ["rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/List-Selected.png"]
  SETTABLEKS R8 R7 K36 ["ListSelectedImage"]
  LOADK R8 K46 ["rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/List.png"]
  SETTABLEKS R8 R7 K37 ["ListImage"]
  LOADK R8 K47 ["rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/Close.png"]
  SETTABLEKS R8 R7 K38 ["CloseImage"]
  DUPCLOSURE R8 K48 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R5
  RETURN R8 1
