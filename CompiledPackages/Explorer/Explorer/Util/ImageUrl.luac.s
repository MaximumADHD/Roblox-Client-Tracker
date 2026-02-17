PROTO_0:
  LOADK R2 K0 ["rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/%*.png"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_1:
  LOADK R3 K0 ["rbxasset://studio_svg_textures/Lua/Explorer/%*/Standard/%*.png"]
  MOVE R5 R1
  MOVE R6 R0
  NAMECALL R3 R3 K1 ["format"]
  CALL R3 3 1
  MOVE R2 R3
  RETURN R2 1

PROTO_2:
  LOADK R3 K0 ["rbxasset://studio_svg_textures/Shared/Packages/%*/Standard/PackageLink_%*.png"]
  MOVE R5 R1
  MOVE R6 R0
  NAMECALL R3 R3 K1 ["format"]
  CALL R3 3 1
  MOVE R2 R3
  RETURN R2 1

PROTO_3:
  LOADK R3 K0 ["rbxasset://studio_svg_textures/Shared/Packages/%*/Standard/PackageStatus_%*.png"]
  MOVE R5 R1
  MOVE R6 R0
  NAMECALL R3 R3 K1 ["format"]
  CALL R3 3 1
  MOVE R2 R3
  RETURN R2 1

PROTO_4:
  LOADK R3 K0 ["rbxasset://studio_svg_textures/Shared/FileSync/%*/Standard/FileSyncStatus_%*.png"]
  MOVE R5 R1
  MOVE R6 R0
  NAMECALL R3 R3 K1 ["format"]
  CALL R3 3 1
  MOVE R2 R3
  RETURN R2 1

PROTO_5:
  LOADK R3 K0 ["rbxasset://studio_svg_textures/Shared/FileSync/%*/Standard/FileSyncStatus_%*.png"]
  MOVE R5 R1
  MOVE R6 R0
  NAMECALL R3 R3 K1 ["format"]
  CALL R3 3 1
  MOVE R2 R3
  RETURN R2 1

PROTO_6:
  LOADK R2 K0 ["rbxasset://studio_svg_textures/Shared/Alerts/%*/Standard/Warning.png"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_7:
  LOADK R2 K0 ["rbxasset://studio_svg_textures/Shared/Utility/%*/Large/CircleOutline.png"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Components"]
  GETTABLEKS R3 R4 K7 ["Contexts"]
  GETTABLEKS R2 R3 K8 ["ThemeContext"]
  CALL R1 1 1
  NEWTABLE R2 8 0
  DUPCLOSURE R3 K9 [PROTO_0]
  SETTABLEKS R3 R2 K10 ["standard"]
  DUPCLOSURE R3 K11 [PROTO_1]
  SETTABLEKS R3 R2 K12 ["themed"]
  DUPCLOSURE R3 K13 [PROTO_2]
  SETTABLEKS R3 R2 K14 ["packageLink"]
  DUPCLOSURE R3 K15 [PROTO_3]
  SETTABLEKS R3 R2 K16 ["packageStatus"]
  DUPCLOSURE R3 K17 [PROTO_4]
  SETTABLEKS R3 R2 K18 ["liveSyncStatus"]
  DUPCLOSURE R3 K19 [PROTO_5]
  SETTABLEKS R3 R2 K20 ["instanceFileSyncStatus"]
  DUPCLOSURE R3 K21 [PROTO_6]
  SETTABLEKS R3 R2 K22 ["alertIcons"]
  DUPCLOSURE R3 K23 [PROTO_7]
  SETTABLEKS R3 R2 K24 ["circleOutline"]
  RETURN R2 1
