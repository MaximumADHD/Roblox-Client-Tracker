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
  LOADK R4 K9 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/DropdownArrow.png"]
  SETTABLEKS R4 R3 K10 ["arrowdownicon"]
  LOADK R4 K11 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/More.png"]
  SETTABLEKS R4 R3 K12 ["threedotsicon"]
  LOADK R4 K9 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/DropdownArrow.png"]
  SETTABLEKS R4 R3 K13 ["toggleicon"]
  LOADK R4 K14 ["rbxasset://studio_svg_textures/Lua/DeveloperFramework/Dark/Standard/Search.png"]
  SETTABLEKS R4 R3 K15 ["search"]
  MOVE R4 R2
  LOADK R5 K16 ["ActivityHistoryPluginDarkTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
