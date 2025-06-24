PROTO_0:
  LOADK R3 K0 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/%*.png"]
  MOVE R5 R1
  MOVE R6 R0
  NAMECALL R3 R3 K1 ["format"]
  CALL R3 3 1
  MOVE R2 R3
  RETURN R2 1

PROTO_1:
  JUMPIFNOTEQKS R0 K0 ["Expanded"] [+8]
  LOADK R3 K1 ["rbxasset://studio_svg_textures/Shared/Navigation/%*/Standard/ArrowDown.png"]
  MOVE R5 R1
  NAMECALL R3 R3 K2 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  LOADK R3 K3 ["rbxasset://studio_svg_textures/Shared/Navigation/%*/Standard/ArrowRight.png"]
  MOVE R5 R1
  NAMECALL R3 R3 K2 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FindReplaceAll"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Contexts"]
  GETTABLEKS R2 R3 K8 ["ThemeContext"]
  CALL R1 1 1
  NEWTABLE R2 2 0
  DUPCLOSURE R3 K9 [PROTO_0]
  SETTABLEKS R3 R2 K10 ["scriptTypeIcons"]
  DUPCLOSURE R3 K11 [PROTO_1]
  SETTABLEKS R3 R2 K12 ["collapseExpandArrowIcon"]
  RETURN R2 1
