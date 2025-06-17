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
  NEWTABLE R0 2 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["scriptTypeIcons"]
  DUPCLOSURE R1 K2 [PROTO_1]
  SETTABLEKS R1 R0 K3 ["collapseExpandArrowIcon"]
  RETURN R0 1
