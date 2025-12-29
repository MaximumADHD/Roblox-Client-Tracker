MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["SocialPresence"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Bin"]
  GETTABLEKS R4 R5 K11 ["defineLuaFlags"]
  CALL R3 1 1
  DUPTABLE R4 K14 [{"ActivityRingImage", "AddCollaboratorIcon"}]
  LOADK R5 K15 ["rbxasset://studio_svg_textures/Lua/SocialPresence/Dark/Large/ActivityRing.png"]
  SETTABLEKS R5 R4 K12 ["ActivityRingImage"]
  GETTABLEKS R6 R3 K16 ["getFFlagFixOldRibbonCollaborateIcon"]
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADK R5 K17 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/AddCollaborator.png"]
  JUMP [+1]
  LOADK R5 K18 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Dark/Standard/AddCollaborator.png"]
  SETTABLEKS R5 R4 K13 ["AddCollaboratorIcon"]
  MOVE R5 R2
  LOADK R6 K19 ["SocialPresenceDarkTheme"]
  NEWTABLE R7 0 0
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1
