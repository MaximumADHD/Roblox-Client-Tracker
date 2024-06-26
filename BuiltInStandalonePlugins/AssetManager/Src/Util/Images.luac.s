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
  NEWTABLE R4 2 0
  LOADK R6 K11 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/Cleanup.png"]
  MOVE R8 R3
  NAMECALL R6 R6 K12 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLEKS R5 R4 K13 ["CLEAR_ICON"]
  LOADK R5 K14 ["rbxasset://textures/ui/common/robux_color@2x.png"]
  SETTABLEKS R5 R4 K15 ["PLACEHOLDER"]
  RETURN R4 1
