PROTO_0:
  LOADK R2 K0 ["rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/%*.png"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
