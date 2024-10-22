PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getThemeName"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Checkmark"]
  JUMPIFNOTEQ R0 R2 [+8]
  LOADK R3 K2 ["rbxasset://studio_svg_textures/Lua/Tutorials/%*/Standard/Checkmark.png"]
  MOVE R5 R1
  NAMECALL R3 R3 K3 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["Placeholder"]
  JUMPIFNOTEQ R0 R2 [+8]
  LOADK R3 K5 ["rbxasset://studio_svg_textures/Shared/Placeholder/%*/Standard/Placeholder.png"]
  MOVE R5 R1
  NAMECALL R3 R3 K3 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["SortIcon"]
  JUMPIFNOTEQ R0 R2 [+8]
  LOADK R3 K7 ["rbxasset://studio_svg_textures/Lua/AssetManager/%*/Standard/Sort.png"]
  MOVE R5 R1
  NAMECALL R3 R3 K3 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K8 ["SidebarCollapseIcon"]
  JUMPIFNOTEQ R0 R2 [+8]
  LOADK R3 K9 ["rbxasset://studio_svg_textures/Lua/SystemArrows/%*/Standard/DoubleChevronLeft.png"]
  MOVE R5 R1
  NAMECALL R3 R3 K3 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K10 ["SidebarExpandIcon"]
  JUMPIFNOTEQ R0 R2 [+8]
  LOADK R3 K11 ["rbxasset://studio_svg_textures/Lua/SystemArrows/%*/Standard/DoubleChevronRight.png"]
  MOVE R5 R1
  NAMECALL R3 R3 K3 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  LOADK R2 K12 [""]
  RETURN R2 1

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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["enumerate"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K9 ["Style"]
  GETTABLEKS R3 R4 K10 ["ThemeSwitcher"]
  NEWTABLE R4 2 0
  MOVE R5 R2
  LOADK R6 K11 ["AvailableImages"]
  DUPTABLE R7 K17 [{"Checkmark", "Placeholder", "SortIcon", "SidebarCollapseIcon", "SidebarExpandIcon"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K12 ["Checkmark"]
  LOADN R8 2
  SETTABLEKS R8 R7 K13 ["Placeholder"]
  LOADN R8 3
  SETTABLEKS R8 R7 K14 ["SortIcon"]
  LOADN R8 4
  SETTABLEKS R8 R7 K15 ["SidebarCollapseIcon"]
  LOADN R8 5
  SETTABLEKS R8 R7 K16 ["SidebarExpandIcon"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["AvailableImages"]
  DUPCLOSURE R6 K18 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  SETTABLEKS R6 R4 K19 ["getImageHelper"]
  RETURN R4 1
