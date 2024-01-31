PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  CALL R2 0 1
  MOVE R1 R2
  JUMP [+15]
  GETUPVAL R2 1
  JUMPIFNOT R2 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  GETUPVAL R3 2
  GETUPVAL R4 3
  CALL R2 2 1
  MOVE R1 R2
  JUMP [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  MOVE R1 R2
  GETUPVAL R4 4
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
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Flags"]
  GETTABLEKS R3 R4 K9 ["getFFlagTutorialsTourWidget"]
  CALL R2 1 1
  CALL R2 0 1
  GETTABLEKS R3 R1 K10 ["Style"]
  GETTABLEKS R5 R3 K11 ["Themes"]
  GETTABLEKS R4 R5 K12 ["StudioTheme"]
  GETTABLEKS R5 R3 K13 ["StyleKey"]
  DUPTABLE R6 K28 [{"ContentHeight", "SelectedTopicTextColor", "TopicTextColor", "CircleColor", "CircleSize", "HintKeyBorder", "HintKeyBackground", "HintKeyBorderPressed", "HintKeyBackgroundPressed", "HintKeyTextColor", "HintKeyTextColorPressed", "IconSize", "Padding", "PaddingSmall"}]
  GETIMPORT R7 K31 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 1
  LOADN R11 126
  CALL R7 4 1
  SETTABLEKS R7 R6 K14 ["ContentHeight"]
  GETTABLEKS R7 R5 K32 ["MainText"]
  SETTABLEKS R7 R6 K15 ["SelectedTopicTextColor"]
  GETTABLEKS R7 R5 K33 ["SubText"]
  SETTABLEKS R7 R6 K16 ["TopicTextColor"]
  GETTABLEKS R7 R5 K34 ["ForegroundContrast"]
  SETTABLEKS R7 R6 K17 ["CircleColor"]
  LOADN R7 24
  SETTABLEKS R7 R6 K18 ["CircleSize"]
  GETTABLEKS R7 R5 K33 ["SubText"]
  SETTABLEKS R7 R6 K19 ["HintKeyBorder"]
  GETTABLEKS R7 R5 K34 ["ForegroundContrast"]
  SETTABLEKS R7 R6 K20 ["HintKeyBackground"]
  GETTABLEKS R7 R5 K32 ["MainText"]
  SETTABLEKS R7 R6 K21 ["HintKeyBorderPressed"]
  GETTABLEKS R7 R5 K33 ["SubText"]
  SETTABLEKS R7 R6 K22 ["HintKeyBackgroundPressed"]
  GETTABLEKS R7 R5 K32 ["MainText"]
  SETTABLEKS R7 R6 K23 ["HintKeyTextColor"]
  GETTABLEKS R7 R5 K35 ["TextContrast"]
  SETTABLEKS R7 R6 K24 ["HintKeyTextColorPressed"]
  GETIMPORT R7 K37 [UDim2.fromOffset]
  LOADN R8 16
  LOADN R9 16
  CALL R7 2 1
  SETTABLEKS R7 R6 K25 ["IconSize"]
  LOADN R7 15
  SETTABLEKS R7 R6 K26 ["Padding"]
  LOADN R7 5
  SETTABLEKS R7 R6 K27 ["PaddingSmall"]
  DUPTABLE R7 K42 [{"CheckmarkImage", "ListSelectedImage", "ListImage", "CloseImage"}]
  LOADK R8 K43 ["rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/Checkmark.png"]
  SETTABLEKS R8 R7 K38 ["CheckmarkImage"]
  LOADK R8 K44 ["rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/List-Selected.png"]
  SETTABLEKS R8 R7 K39 ["ListSelectedImage"]
  LOADK R8 K45 ["rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/List.png"]
  SETTABLEKS R8 R7 K40 ["ListImage"]
  LOADK R8 K46 ["rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/Close.png"]
  SETTABLEKS R8 R7 K41 ["CloseImage"]
  DUPTABLE R8 K42 [{"CheckmarkImage", "ListSelectedImage", "ListImage", "CloseImage"}]
  LOADK R9 K47 ["rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/Checkmark.png"]
  SETTABLEKS R9 R8 K38 ["CheckmarkImage"]
  LOADK R9 K48 ["rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/List-Selected.png"]
  SETTABLEKS R9 R8 K39 ["ListSelectedImage"]
  LOADK R9 K49 ["rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/List.png"]
  SETTABLEKS R9 R8 K40 ["ListImage"]
  LOADK R9 K50 ["rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/Close.png"]
  SETTABLEKS R9 R8 K41 ["CloseImage"]
  DUPCLOSURE R9 K51 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R6
  RETURN R9 1
