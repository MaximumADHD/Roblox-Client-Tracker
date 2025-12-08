MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K6 ["Style"]
  GETTABLEKS R2 R3 K7 ["StyleKey"]
  DUPTABLE R3 K19 [{"Color", "HoverColor", "SliceCenter", "SliceCenterFull", "BackgroundImageLeft", "BackgroundImageRight", "BackgroundImageFull", "ArrowSize", "ArrowIcon", "ButtonSpacing", "TextSize"}]
  GETTABLEKS R4 R2 K20 ["DialogMainButton"]
  SETTABLEKS R4 R3 K8 ["Color"]
  GETTABLEKS R4 R2 K21 ["DialogMainButtonHover"]
  SETTABLEKS R4 R3 K9 ["HoverColor"]
  GETIMPORT R4 K24 [Rect.new]
  LOADN R5 3
  LOADN R6 3
  LOADN R7 4
  LOADN R8 4
  CALL R4 4 1
  SETTABLEKS R4 R3 K10 ["SliceCenter"]
  GETIMPORT R4 K24 [Rect.new]
  LOADN R5 3
  LOADN R6 3
  LOADN R7 13
  LOADN R8 13
  CALL R4 4 1
  SETTABLEKS R4 R3 K11 ["SliceCenterFull"]
  LOADK R4 K25 ["rbxasset://textures/AvatarToolsShared/RoundedBackgroundLeft.png"]
  SETTABLEKS R4 R3 K12 ["BackgroundImageLeft"]
  LOADK R4 K26 ["rbxasset://textures/AvatarToolsShared/RoundedBackgroundRight.png"]
  SETTABLEKS R4 R3 K13 ["BackgroundImageRight"]
  LOADK R4 K27 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
  SETTABLEKS R4 R3 K14 ["BackgroundImageFull"]
  LOADN R4 8
  SETTABLEKS R4 R3 K15 ["ArrowSize"]
  LOADK R4 K28 ["rbxasset://textures/DeveloperFramework/button_arrow_down.png"]
  SETTABLEKS R4 R3 K16 ["ArrowIcon"]
  LOADN R4 10
  SETTABLEKS R4 R3 K17 ["ButtonSpacing"]
  LOADN R4 16
  SETTABLEKS R4 R3 K18 ["TextSize"]
  RETURN R3 1
