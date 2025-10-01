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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["Images"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K13 ["AvailableImages"]
  DUPTABLE R5 K41 [{"ArrowDownIcon", "ArrowRightIcon", "ArrowUpIcon", "CheckmarkIcon", "ClearIcon", "FilterIcon", "FolderIcon", "GroupDefaultIcon", "GroupFolderIcon", "GroupLargeDefaultIcon", "ImportIcon", "NotificationIcon", "PackageLinkIcon", "PlaceholderAssetIcon", "PlaceholderIcon", "PlacesFolderIcon", "RefreshIcon", "SearchIcon", "SidebarCollapseIcon", "SidebarExpandIcon", "SortIcon", "UniverseDefaultIcon", "UniverseLargeDefaultIcon", "UserDefaultIcon", "UserFolderIcon", "UserLargeDefaultIcon", "AmContentEmphasis"}]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K43 ["ArrowDown"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K14 ["ArrowDownIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K44 ["ArrowRight"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K15 ["ArrowRightIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K45 ["ArrowUp"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K16 ["ArrowUpIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K46 ["Checkmark"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K17 ["CheckmarkIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K47 ["Clear"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K18 ["ClearIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K48 ["Filter"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K19 ["FilterIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K49 ["Folder"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K20 ["FolderIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K50 ["Group"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K21 ["GroupDefaultIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K51 ["GroupFolder"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K22 ["GroupFolderIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K52 ["GroupLarge"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K23 ["GroupLargeDefaultIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K53 ["Import"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K24 ["ImportIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K54 ["Notification"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K25 ["NotificationIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K55 ["PackageLink"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K26 ["PackageLinkIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K56 ["PlaceholderAsset"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K27 ["PlaceholderAssetIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K57 ["Placeholder"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K28 ["PlaceholderIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K58 ["PlacesFolder"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K29 ["PlacesFolderIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K59 ["Refresh"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K30 ["RefreshIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K60 ["Search"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K31 ["SearchIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K61 ["SidebarCollapse"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K32 ["SidebarCollapseIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K62 ["SidebarExpand"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K33 ["SidebarExpandIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K63 ["Sort"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K34 ["SortIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K64 ["Universe"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K35 ["UniverseDefaultIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K65 ["UniverseLarge"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K36 ["UniverseLargeDefaultIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K66 ["User"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K37 ["UserDefaultIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K67 ["UserFolder"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K38 ["UserFolderIcon"]
  GETTABLEKS R6 R3 K42 ["getLight"]
  GETTABLEKS R7 R4 K68 ["UserLarge"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K39 ["UserLargeDefaultIcon"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K72 ["#202227"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K40 ["AmContentEmphasis"]
  MOVE R6 R2
  LOADK R7 K73 ["AssetManagerLightTheme"]
  NEWTABLE R8 0 0
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
