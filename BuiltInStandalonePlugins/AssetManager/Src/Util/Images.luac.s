PROTO_0:
  GETIMPORT R1 K2 [string.format]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["_Uris"]
  GETTABLE R2 R3 R0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["getThemeName"]
  CALL R3 0 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_1:
  GETIMPORT R1 K2 [string.format]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["_Uris"]
  GETTABLE R2 R3 R0
  LOADK R3 K4 ["Light"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETIMPORT R1 K2 [string.format]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["_Uris"]
  GETTABLE R2 R3 R0
  LOADK R3 K4 ["Dark"]
  CALL R1 2 -1
  RETURN R1 -1

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
  NEWTABLE R4 8 0
  MOVE R5 R2
  LOADK R6 K11 ["AvailableImages"]
  DUPTABLE R7 K40 [{"Checkmark", "Placeholder", "Sort", "SidebarCollapse", "SidebarExpand", "DefaultThumbnail", "User", "UserLarge", "Group", "GroupLarge", "Search", "Universe", "ArrowDown", "ArrowRight", "ArrowUp", "Clear", "Filter", "Folder", "GroupFolder", "Import", "Notification", "PackageLink", "PlaceholderAsset", "PlacesFolder", "Refresh", "UniverseLarge", "UserFolder", "IndentGuide"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K12 ["Checkmark"]
  LOADN R8 2
  SETTABLEKS R8 R7 K13 ["Placeholder"]
  LOADN R8 3
  SETTABLEKS R8 R7 K14 ["Sort"]
  LOADN R8 4
  SETTABLEKS R8 R7 K15 ["SidebarCollapse"]
  LOADN R8 5
  SETTABLEKS R8 R7 K16 ["SidebarExpand"]
  LOADN R8 6
  SETTABLEKS R8 R7 K17 ["DefaultThumbnail"]
  LOADN R8 7
  SETTABLEKS R8 R7 K18 ["User"]
  LOADN R8 8
  SETTABLEKS R8 R7 K19 ["UserLarge"]
  LOADN R8 9
  SETTABLEKS R8 R7 K20 ["Group"]
  LOADN R8 10
  SETTABLEKS R8 R7 K21 ["GroupLarge"]
  LOADN R8 11
  SETTABLEKS R8 R7 K22 ["Search"]
  LOADN R8 12
  SETTABLEKS R8 R7 K23 ["Universe"]
  LOADN R8 13
  SETTABLEKS R8 R7 K24 ["ArrowDown"]
  LOADN R8 14
  SETTABLEKS R8 R7 K25 ["ArrowRight"]
  LOADN R8 15
  SETTABLEKS R8 R7 K26 ["ArrowUp"]
  LOADN R8 16
  SETTABLEKS R8 R7 K27 ["Clear"]
  LOADN R8 17
  SETTABLEKS R8 R7 K28 ["Filter"]
  LOADN R8 18
  SETTABLEKS R8 R7 K29 ["Folder"]
  LOADN R8 19
  SETTABLEKS R8 R7 K30 ["GroupFolder"]
  LOADN R8 20
  SETTABLEKS R8 R7 K31 ["Import"]
  LOADN R8 21
  SETTABLEKS R8 R7 K32 ["Notification"]
  LOADN R8 22
  SETTABLEKS R8 R7 K33 ["PackageLink"]
  LOADN R8 23
  SETTABLEKS R8 R7 K34 ["PlaceholderAsset"]
  LOADN R8 24
  SETTABLEKS R8 R7 K35 ["PlacesFolder"]
  LOADN R8 25
  SETTABLEKS R8 R7 K36 ["Refresh"]
  LOADN R8 26
  SETTABLEKS R8 R7 K37 ["UniverseLarge"]
  LOADN R8 27
  SETTABLEKS R8 R7 K38 ["UserFolder"]
  LOADN R8 28
  SETTABLEKS R8 R7 K39 ["IndentGuide"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["AvailableImages"]
  NEWTABLE R6 32 0
  GETTABLEKS R7 R5 K24 ["ArrowDown"]
  LOADK R8 K41 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/ArrowDown.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K25 ["ArrowRight"]
  LOADK R8 K42 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/ArrowRight.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K26 ["ArrowUp"]
  LOADK R8 K43 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/ArrowUp.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K12 ["Checkmark"]
  LOADK R8 K44 ["rbxasset://studio_svg_textures/Lua/Tutorials/%s/Standard/Checkmark.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K27 ["Clear"]
  LOADK R8 K45 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Cleanup.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K17 ["DefaultThumbnail"]
  LOADK R8 K46 ["rbxasset://studio_svg_textures/Lua/StartPage/%s/SI-Standard/Placeholder.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K28 ["Filter"]
  LOADK R8 K47 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/Filter.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K29 ["Folder"]
  LOADK R8 K48 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Folder.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K20 ["Group"]
  LOADK R8 K49 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/Group.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K30 ["GroupFolder"]
  LOADK R8 K50 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Teams.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K21 ["GroupLarge"]
  LOADK R8 K51 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Large/Group.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K31 ["Import"]
  LOADK R8 K52 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Large/Import.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K32 ["Notification"]
  LOADK R8 K53 ["rbxasset://studio_svg_textures/Lua/Notifications/%s/Standard/NotificationBadgeUnread.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K33 ["PackageLink"]
  LOADK R8 K54 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/PackageLink.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K34 ["PlaceholderAsset"]
  LOADK R8 K55 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K13 ["Placeholder"]
  LOADK R8 K55 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K35 ["PlacesFolder"]
  LOADK R8 K56 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/PlacesFolder.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K36 ["Refresh"]
  LOADK R8 K57 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Standard/Refresh.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K22 ["Search"]
  LOADK R8 K58 ["rbxasset://studio_svg_textures/Lua/DeveloperFramework/%s/Standard/Search.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K15 ["SidebarCollapse"]
  LOADK R8 K59 ["rbxasset://studio_svg_textures/Lua/SystemArrows/%s/Standard/DoubleChevronLeft.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K16 ["SidebarExpand"]
  LOADK R8 K60 ["rbxasset://studio_svg_textures/Lua/SystemArrows/%s/Standard/DoubleChevronRight.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K14 ["Sort"]
  LOADK R8 K61 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/Sort.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K23 ["Universe"]
  LOADK R8 K55 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K37 ["UniverseLarge"]
  LOADK R8 K55 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K18 ["User"]
  LOADK R8 K62 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/User.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K38 ["UserFolder"]
  LOADK R8 K63 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/StarterPlayer.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K19 ["UserLarge"]
  LOADK R8 K64 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Large/User.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K39 ["IndentGuide"]
  LOADK R8 K65 ["rbxasset://studio_svg_textures/Lua/Explorer/%s/Standard/indentGuide.png"]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R4 K66 ["_Uris"]
  DUPCLOSURE R6 K67 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R6 R4 K68 ["get"]
  DUPCLOSURE R6 K69 [PROTO_1]
  CAPTURE VAL R4
  SETTABLEKS R6 R4 K70 ["getLight"]
  DUPCLOSURE R6 K71 [PROTO_2]
  CAPTURE VAL R4
  SETTABLEKS R6 R4 K72 ["getDark"]
  RETURN R4 1
