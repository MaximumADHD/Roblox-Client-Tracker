MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Style"]
  GETTABLEKS R2 R3 K9 ["ThemeSwitcher"]
  GETTABLEKS R3 R2 K10 ["getThemeName"]
  CALL R3 0 1
  NEWTABLE R4 8 0
  LOADK R6 K11 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/Cleanup.png"]
  MOVE R8 R3
  NAMECALL R6 R6 K12 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLEKS R5 R4 K13 ["CLEAR_ICON"]
  LOADK R6 K14 ["rbxasset://studio_svg_textures/Shared/Utility/%*/Standard/User.png"]
  MOVE R8 R3
  NAMECALL R6 R6 K12 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLEKS R5 R4 K15 ["ICON_USER_DEFAULT"]
  LOADK R6 K16 ["rbxasset://studio_svg_textures/Shared/Utility/%*/Standard/Group.png"]
  MOVE R8 R3
  NAMECALL R6 R6 K12 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLEKS R5 R4 K17 ["ICON_GROUP_DEFAULT"]
  LOADK R6 K18 ["rbxasset://studio_svg_textures/Shared/Utility/%*/Large/User.png"]
  MOVE R8 R3
  NAMECALL R6 R6 K12 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLEKS R5 R4 K19 ["ICON_USER_LARGE_DEFAULT"]
  LOADK R6 K20 ["rbxasset://studio_svg_textures/Shared/Utility/%*/Large/Group.png"]
  MOVE R8 R3
  NAMECALL R6 R6 K12 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLEKS R5 R4 K21 ["ICON_GROUP_LARGE_DEFAULT"]
  LOADK R6 K22 ["rbxasset://studio_svg_textures/Shared/Placeholder/%*/Standard/Placeholder.png"]
  MOVE R8 R3
  NAMECALL R6 R6 K12 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLEKS R5 R4 K23 ["PLACEHOLDER_ASSET"]
  LOADK R6 K22 ["rbxasset://studio_svg_textures/Shared/Placeholder/%*/Standard/Placeholder.png"]
  MOVE R8 R3
  NAMECALL R6 R6 K12 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLEKS R5 R4 K24 ["PLACEHOLDER"]
  LOADK R6 K25 ["rbxasset://studio_svg_textures/Lua/FileSync/%*/Standard/Refresh.png"]
  MOVE R8 R3
  NAMECALL R6 R6 K12 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLEKS R5 R4 K26 ["REFRESH_ICON"]
  RETURN R4 1
