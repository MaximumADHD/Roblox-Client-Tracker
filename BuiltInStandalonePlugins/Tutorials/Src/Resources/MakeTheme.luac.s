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
  GETIMPORT R3 K11 [game]
  LOADK R5 K12 ["TutorialsStudioTour2LaunchFix"]
  NAMECALL R3 R3 K13 ["GetFastFlag"]
  CALL R3 2 1
  GETTABLEKS R4 R1 K14 ["Style"]
  GETTABLEKS R6 R4 K15 ["Themes"]
  GETTABLEKS R5 R6 K16 ["StudioTheme"]
  GETTABLEKS R6 R4 K17 ["StyleKey"]
  DUPTABLE R7 K32 [{"ContentHeight", "SelectedTopicTextColor", "TopicTextColor", "CircleColor", "CircleSize", "HintKeyBorder", "HintKeyBackground", "HintKeyBorderPressed", "HintKeyBackgroundPressed", "HintKeyTextColor", "HintKeyTextColorPressed", "IconSize", "Padding", "PaddingSmall"}]
  GETIMPORT R8 K35 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  JUMPIFNOT R3 [+2]
  LOADN R12 126
  JUMP [+1]
  LOADN R12 136
  CALL R8 4 1
  SETTABLEKS R8 R7 K18 ["ContentHeight"]
  GETTABLEKS R8 R6 K36 ["MainText"]
  SETTABLEKS R8 R7 K19 ["SelectedTopicTextColor"]
  GETTABLEKS R8 R6 K37 ["SubText"]
  SETTABLEKS R8 R7 K20 ["TopicTextColor"]
  GETTABLEKS R8 R6 K38 ["ForegroundContrast"]
  SETTABLEKS R8 R7 K21 ["CircleColor"]
  LOADN R8 24
  SETTABLEKS R8 R7 K22 ["CircleSize"]
  GETTABLEKS R8 R6 K37 ["SubText"]
  SETTABLEKS R8 R7 K23 ["HintKeyBorder"]
  GETTABLEKS R8 R6 K38 ["ForegroundContrast"]
  SETTABLEKS R8 R7 K24 ["HintKeyBackground"]
  GETTABLEKS R8 R6 K36 ["MainText"]
  SETTABLEKS R8 R7 K25 ["HintKeyBorderPressed"]
  GETTABLEKS R8 R6 K37 ["SubText"]
  SETTABLEKS R8 R7 K26 ["HintKeyBackgroundPressed"]
  GETTABLEKS R8 R6 K36 ["MainText"]
  SETTABLEKS R8 R7 K27 ["HintKeyTextColor"]
  GETTABLEKS R8 R6 K39 ["TextContrast"]
  SETTABLEKS R8 R7 K28 ["HintKeyTextColorPressed"]
  GETIMPORT R8 K41 [UDim2.fromOffset]
  LOADN R9 16
  LOADN R10 16
  CALL R8 2 1
  SETTABLEKS R8 R7 K29 ["IconSize"]
  LOADN R8 15
  SETTABLEKS R8 R7 K30 ["Padding"]
  LOADN R8 5
  SETTABLEKS R8 R7 K31 ["PaddingSmall"]
  DUPTABLE R8 K46 [{"CheckmarkImage", "ListSelectedImage", "ListImage", "CloseImage"}]
  LOADK R9 K47 ["rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/Checkmark.png"]
  SETTABLEKS R9 R8 K42 ["CheckmarkImage"]
  LOADK R9 K48 ["rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/List-Selected.png"]
  SETTABLEKS R9 R8 K43 ["ListSelectedImage"]
  LOADK R9 K49 ["rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/List.png"]
  SETTABLEKS R9 R8 K44 ["ListImage"]
  LOADK R9 K50 ["rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/Close.png"]
  SETTABLEKS R9 R8 K45 ["CloseImage"]
  DUPTABLE R9 K46 [{"CheckmarkImage", "ListSelectedImage", "ListImage", "CloseImage"}]
  LOADK R10 K51 ["rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/Checkmark.png"]
  SETTABLEKS R10 R9 K42 ["CheckmarkImage"]
  LOADK R10 K52 ["rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/List-Selected.png"]
  SETTABLEKS R10 R9 K43 ["ListSelectedImage"]
  LOADK R10 K53 ["rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/List.png"]
  SETTABLEKS R10 R9 K44 ["ListImage"]
  LOADK R10 K54 ["rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/Close.png"]
  SETTABLEKS R10 R9 K45 ["CloseImage"]
  DUPCLOSURE R10 K55 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R7
  RETURN R10 1
