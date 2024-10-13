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
  NEWTABLE R3 0 0
  LOADK R4 K9 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowDown.png"]
  SETTABLEKS R4 R3 K10 ["arrowdownicon"]
  LOADK R4 K11 ["rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/Close.png"]
  SETTABLEKS R4 R3 K12 ["close"]
  LOADK R4 K13 ["rbxasset://studio_svg_textures/Lua/ActivityHistory/Dark/Standard/Filter.png"]
  SETTABLEKS R4 R3 K14 ["filter"]
  LOADK R4 K15 ["rbxasset://studio_svg_textures/Lua/ActivityHistory/Dark/Standard/FilterDisabled.png"]
  SETTABLEKS R4 R3 K16 ["filterdisabled"]
  LOADK R4 K17 ["rbxasset://studio_svg_textures/Lua/ActivityHistory/Dark/Large/NoFilterResults.png"]
  SETTABLEKS R4 R3 K18 ["nofilterresults"]
  LOADK R4 K19 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/More.png"]
  SETTABLEKS R4 R3 K20 ["threedotsicon"]
  LOADK R4 K21 ["rbxasset://studio_svg_textures/Lua/ActivityHistory/Dark/Large/UnsavedExperience.png"]
  SETTABLEKS R4 R3 K22 ["unsavedexperience"]
  MOVE R4 R2
  LOADK R5 K23 ["ActivityHistoryPluginDarkTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
