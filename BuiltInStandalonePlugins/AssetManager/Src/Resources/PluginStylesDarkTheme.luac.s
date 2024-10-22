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
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  DUPTABLE R3 K31 [{"ArrowDownIcon", "ArrowRightIcon", "ArrowUpIcon", "CheckmarkIcon", "ClearIcon", "FilterIcon", "GroupDefaultIcon", "GroupLargeDefaultIcon", "ImportIcon", "PlaceholderAssetIcon", "PlaceholderIcon", "RefreshIcon", "SearchIcon", "SidebarCollapseIcon", "SidebarExpandIcon", "SortIcon", "UniverseDefaultIcon", "UniverseLargeDefaultIcon", "UserDefaultIcon", "UserLargeDefaultIcon", "TestCol"}]
  LOADK R4 K32 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowDown.png"]
  SETTABLEKS R4 R3 K10 ["ArrowDownIcon"]
  LOADK R4 K33 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowRight.png"]
  SETTABLEKS R4 R3 K11 ["ArrowRightIcon"]
  LOADK R4 K34 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowUp.png"]
  SETTABLEKS R4 R3 K12 ["ArrowUpIcon"]
  LOADK R4 K35 ["rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/Checkmark.png"]
  SETTABLEKS R4 R3 K13 ["CheckmarkIcon"]
  LOADK R4 K36 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/Dark/Standard/Cleanup.png"]
  SETTABLEKS R4 R3 K14 ["ClearIcon"]
  LOADK R4 K37 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/Filter.png"]
  SETTABLEKS R4 R3 K15 ["FilterIcon"]
  LOADK R4 K38 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/Group.png"]
  SETTABLEKS R4 R3 K16 ["GroupDefaultIcon"]
  LOADK R4 K39 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Large/Group.png"]
  SETTABLEKS R4 R3 K17 ["GroupLargeDefaultIcon"]
  LOADK R4 K40 ["rbxasset://studio_svg_textures/Lua/FileSync/Dark/Large/Import.png"]
  SETTABLEKS R4 R3 K18 ["ImportIcon"]
  LOADK R4 K41 ["rbxasset://studio_svg_textures/Shared/Placeholder/Dark/Standard/Placeholder.png"]
  SETTABLEKS R4 R3 K19 ["PlaceholderAssetIcon"]
  LOADK R4 K41 ["rbxasset://studio_svg_textures/Shared/Placeholder/Dark/Standard/Placeholder.png"]
  SETTABLEKS R4 R3 K20 ["PlaceholderIcon"]
  LOADK R4 K42 ["rbxasset://studio_svg_textures/Lua/FileSync/Dark/Standard/Refresh.png"]
  SETTABLEKS R4 R3 K21 ["RefreshIcon"]
  LOADK R4 K43 ["rbxasset://studio_svg_textures/Lua/DeveloperFramework/Dark/Standard/Search.png"]
  SETTABLEKS R4 R3 K22 ["SearchIcon"]
  LOADK R4 K44 ["rbxasset://studio_svg_textures/Lua/SystemArrows/Dark/Standard/DoubleChevronLeft.png"]
  SETTABLEKS R4 R3 K23 ["SidebarCollapseIcon"]
  LOADK R4 K45 ["rbxasset://studio_svg_textures/Lua/SystemArrows/Dark/Standard/DoubleChevronRight.png"]
  SETTABLEKS R4 R3 K24 ["SidebarExpandIcon"]
  LOADK R4 K46 ["rbxasset://studio_svg_textures/Lua/AssetManager/Dark/Standard/Sort.png"]
  SETTABLEKS R4 R3 K25 ["SortIcon"]
  LOADK R4 K41 ["rbxasset://studio_svg_textures/Shared/Placeholder/Dark/Standard/Placeholder.png"]
  SETTABLEKS R4 R3 K26 ["UniverseDefaultIcon"]
  LOADK R4 K41 ["rbxasset://studio_svg_textures/Shared/Placeholder/Dark/Standard/Placeholder.png"]
  SETTABLEKS R4 R3 K27 ["UniverseLargeDefaultIcon"]
  LOADK R4 K47 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/User.png"]
  SETTABLEKS R4 R3 K28 ["UserDefaultIcon"]
  LOADK R4 K48 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Large/User.png"]
  SETTABLEKS R4 R3 K29 ["UserLargeDefaultIcon"]
  GETIMPORT R4 K51 [Color3.fromRGB]
  LOADN R5 255
  LOADN R6 0
  LOADN R7 0
  CALL R4 3 1
  SETTABLEKS R4 R3 K30 ["TestCol"]
  MOVE R4 R2
  LOADK R5 K52 ["AssetManagerDarkTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
