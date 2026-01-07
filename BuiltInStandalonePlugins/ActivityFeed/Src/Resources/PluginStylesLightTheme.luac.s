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
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleSheet"]
  DUPTABLE R3 K17 [{"FoundationColorsBackgroundDefault", "FoundationColorsBackgroundPaper", "FoundationColorsShift100", "FoundationColorsShift200", "FoundationColorsShift300", "FoundationColorsShift400", "FoundationColorsContentEmphasis", "FoundationColorsContentMuted"}]
  GETIMPORT R4 K20 [Color3.fromHex]
  LOADK R5 K21 ["#F7F7F8"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K9 ["FoundationColorsBackgroundDefault"]
  GETIMPORT R4 K20 [Color3.fromHex]
  LOADK R5 K22 ["#EEEFF1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["FoundationColorsBackgroundPaper"]
  GETIMPORT R4 K20 [Color3.fromHex]
  LOADK R5 K23 ["#EEF0F1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["FoundationColorsShift100"]
  GETIMPORT R4 K20 [Color3.fromHex]
  LOADK R5 K24 ["#E5E6EA"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K12 ["FoundationColorsShift200"]
  GETIMPORT R4 K20 [Color3.fromHex]
  LOADK R5 K25 ["#DDDEE3"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K13 ["FoundationColorsShift300"]
  GETIMPORT R4 K20 [Color3.fromHex]
  LOADK R5 K26 ["#D4D5DC"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["FoundationColorsShift400"]
  GETIMPORT R4 K20 [Color3.fromHex]
  LOADK R5 K27 ["#202227"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K15 ["FoundationColorsContentEmphasis"]
  GETIMPORT R4 K20 [Color3.fromHex]
  LOADK R5 K28 ["#6A6F81"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["FoundationColorsContentMuted"]
  LOADK R4 K29 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/ArrowDown.png"]
  SETTABLEKS R4 R3 K30 ["arrowdownicon"]
  LOADK R4 K31 ["rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/Close.png"]
  SETTABLEKS R4 R3 K32 ["close"]
  LOADK R4 K33 ["rbxasset://studio_svg_textures/Lua/ActivityHistory/Light/Standard/Filter.png"]
  SETTABLEKS R4 R3 K34 ["filter"]
  LOADK R4 K35 ["rbxasset://studio_svg_textures/Lua/ActivityHistory/Light/Standard/FilterDisabled.png"]
  SETTABLEKS R4 R3 K36 ["filterdisabled"]
  LOADK R4 K37 ["rbxasset://studio_svg_textures/Lua/ActivityHistory/Light/Standard/MiniUser.png"]
  SETTABLEKS R4 R3 K38 ["miniuser"]
  LOADK R4 K39 ["rbxasset://studio_svg_textures/Lua/ActivityHistory/Light/Large/NoFilterResults.png"]
  SETTABLEKS R4 R3 K40 ["nofilterresults"]
  LOADK R4 K41 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/More.png"]
  SETTABLEKS R4 R3 K42 ["threedotsicon"]
  LOADK R4 K43 ["rbxasset://studio_svg_textures/Lua/ActivityHistory/Light/Large/UnsavedExperience.png"]
  SETTABLEKS R4 R3 K44 ["unsavedexperience"]
  LOADK R4 K45 ["rbxasset://studio_svg_textures/Lua/ActivityHistory/Light/Large/Script.png"]
  SETTABLEKS R4 R3 K46 ["scripticon"]
  MOVE R4 R2
  LOADK R5 K47 ["NotificationsPluginLightTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
