MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  NEWTABLE R3 0 0
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K13 ["#565656"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["ResolveIconBase"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K15 ["#989898"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["ResolveIconHovered"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K17 ["#2C2C2C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K18 ["ResolveIconSelected"]
  LOADK R4 K19 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Medium/RibbonBack.png"]
  SETTABLEKS R4 R3 K20 ["BackArrow"]
  LOADK R4 K21 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Medium/RibbonFwd.png"]
  SETTABLEKS R4 R3 K22 ["NextArrow"]
  LOADK R4 K23 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/More.png"]
  SETTABLEKS R4 R3 K24 ["MoreIcon"]
  LOADK R4 K25 ["rbxasset://studio_svg_textures/Lua/PlaceAnnotations/Dark/Standard/Resolve.png"]
  SETTABLEKS R4 R3 K26 ["ResolveIcon"]
  MOVE R4 R2
  LOADK R5 K27 ["PlaceAnnotationsDarkTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
