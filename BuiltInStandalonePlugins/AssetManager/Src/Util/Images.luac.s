PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["_Uris"]
        5 GETTABLE                         R2 R3 R0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K4 ["getThemeName"]
        9 CALL                             R3 0 -1
       10 CALL                             R1 -1 -1
       11 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.format]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["_Uris"]
        5 GETTABLE                         R2 R3 R0
        6 LOADK                            R3 K4 ["Light"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.format]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["_Uris"]
        5 GETTABLE                         R2 R3 R0
        6 LOADK                            R3 K4 ["Dark"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["enumerate"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Style"]
       23 GETTABLEKS                       R3 R3 K10 ["ThemeSwitcher"]
       25 NEWTABLE                         R4 8 0
       27 MOVE                             R5 R2
       28 LOADK                            R6 K11 ["AvailableImages"]
       29 DUPTABLE                         R7 K41 [{"Checkmark", "Placeholder", "Sort", "SidebarCollapse", "SidebarExpand", "DefaultThumbnail", "User", "UserLarge", "Group", "GroupLarge", "Search", "Universe", "ArrowDown", "ArrowRight", "ArrowUp", "Clear", "Filter", "Folder", "GroupFolder", "Import", "Notification", "PackageLink", "PlaceholderAsset", "PlacesFolder", "Refresh", "UniverseLarge", "UserFolder", "IndentGuide", "GameFolder"}]
       30 LOADN                            R8 1
       31 SETTABLEKS                       R8 R7 K12 ["Checkmark"]
       33 LOADN                            R8 2
       34 SETTABLEKS                       R8 R7 K13 ["Placeholder"]
       36 LOADN                            R8 3
       37 SETTABLEKS                       R8 R7 K14 ["Sort"]
       39 LOADN                            R8 4
       40 SETTABLEKS                       R8 R7 K15 ["SidebarCollapse"]
       42 LOADN                            R8 5
       43 SETTABLEKS                       R8 R7 K16 ["SidebarExpand"]
       45 LOADN                            R8 6
       46 SETTABLEKS                       R8 R7 K17 ["DefaultThumbnail"]
       48 LOADN                            R8 7
       49 SETTABLEKS                       R8 R7 K18 ["User"]
       51 LOADN                            R8 8
       52 SETTABLEKS                       R8 R7 K19 ["UserLarge"]
       54 LOADN                            R8 9
       55 SETTABLEKS                       R8 R7 K20 ["Group"]
       57 LOADN                            R8 10
       58 SETTABLEKS                       R8 R7 K21 ["GroupLarge"]
       60 LOADN                            R8 11
       61 SETTABLEKS                       R8 R7 K22 ["Search"]
       63 LOADN                            R8 12
       64 SETTABLEKS                       R8 R7 K23 ["Universe"]
       66 LOADN                            R8 13
       67 SETTABLEKS                       R8 R7 K24 ["ArrowDown"]
       69 LOADN                            R8 14
       70 SETTABLEKS                       R8 R7 K25 ["ArrowRight"]
       72 LOADN                            R8 15
       73 SETTABLEKS                       R8 R7 K26 ["ArrowUp"]
       75 LOADN                            R8 16
       76 SETTABLEKS                       R8 R7 K27 ["Clear"]
       78 LOADN                            R8 17
       79 SETTABLEKS                       R8 R7 K28 ["Filter"]
       81 LOADN                            R8 18
       82 SETTABLEKS                       R8 R7 K29 ["Folder"]
       84 LOADN                            R8 19
       85 SETTABLEKS                       R8 R7 K30 ["GroupFolder"]
       87 LOADN                            R8 20
       88 SETTABLEKS                       R8 R7 K31 ["Import"]
       90 LOADN                            R8 21
       91 SETTABLEKS                       R8 R7 K32 ["Notification"]
       93 LOADN                            R8 22
       94 SETTABLEKS                       R8 R7 K33 ["PackageLink"]
       96 LOADN                            R8 23
       97 SETTABLEKS                       R8 R7 K34 ["PlaceholderAsset"]
       99 LOADN                            R8 24
      100 SETTABLEKS                       R8 R7 K35 ["PlacesFolder"]
      102 LOADN                            R8 25
      103 SETTABLEKS                       R8 R7 K36 ["Refresh"]
      105 LOADN                            R8 26
      106 SETTABLEKS                       R8 R7 K37 ["UniverseLarge"]
      108 LOADN                            R8 27
      109 SETTABLEKS                       R8 R7 K38 ["UserFolder"]
      111 LOADN                            R8 28
      112 SETTABLEKS                       R8 R7 K39 ["IndentGuide"]
      114 LOADN                            R8 29
      115 SETTABLEKS                       R8 R7 K40 ["GameFolder"]
      117 CALL                             R5 2 1
      118 SETTABLEKS                       R5 R4 K11 ["AvailableImages"]
      120 NEWTABLE                         R6 32 0
      122 GETTABLEKS                       R7 R5 K24 ["ArrowDown"]
      124 LOADK                            R8 K42 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/ArrowDown.png"]
      125 SETTABLE                         R8 R6 R7
      126 GETTABLEKS                       R7 R5 K25 ["ArrowRight"]
      128 LOADK                            R8 K43 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/ArrowRight.png"]
      129 SETTABLE                         R8 R6 R7
      130 GETTABLEKS                       R7 R5 K26 ["ArrowUp"]
      132 LOADK                            R8 K44 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/ArrowUp.png"]
      133 SETTABLE                         R8 R6 R7
      134 GETTABLEKS                       R7 R5 K12 ["Checkmark"]
      136 LOADK                            R8 K45 ["rbxasset://studio_svg_textures/Lua/Tutorials/%s/Standard/Checkmark.png"]
      137 SETTABLE                         R8 R6 R7
      138 GETTABLEKS                       R7 R5 K27 ["Clear"]
      140 LOADK                            R8 K46 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Cleanup.png"]
      141 SETTABLE                         R8 R6 R7
      142 GETTABLEKS                       R7 R5 K17 ["DefaultThumbnail"]
      144 LOADK                            R8 K47 ["rbxasset://studio_svg_textures/Lua/StartPage/%s/SI-Standard/Placeholder.png"]
      145 SETTABLE                         R8 R6 R7
      146 GETTABLEKS                       R7 R5 K28 ["Filter"]
      148 LOADK                            R8 K48 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/Filter.png"]
      149 SETTABLE                         R8 R6 R7
      150 GETTABLEKS                       R7 R5 K29 ["Folder"]
      152 LOADK                            R8 K49 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Folder.png"]
      153 SETTABLE                         R8 R6 R7
      154 GETTABLEKS                       R7 R5 K40 ["GameFolder"]
      156 LOADK                            R8 K50 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/ExperienceFolder.png"]
      157 SETTABLE                         R8 R6 R7
      158 GETTABLEKS                       R7 R5 K20 ["Group"]
      160 LOADK                            R8 K51 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/Group.png"]
      161 SETTABLE                         R8 R6 R7
      162 GETTABLEKS                       R7 R5 K30 ["GroupFolder"]
      164 LOADK                            R8 K52 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Teams.png"]
      165 SETTABLE                         R8 R6 R7
      166 GETTABLEKS                       R7 R5 K21 ["GroupLarge"]
      168 LOADK                            R8 K53 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Large/Group.png"]
      169 SETTABLE                         R8 R6 R7
      170 GETTABLEKS                       R7 R5 K31 ["Import"]
      172 LOADK                            R8 K54 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Large/Import.png"]
      173 SETTABLE                         R8 R6 R7
      174 GETTABLEKS                       R7 R5 K32 ["Notification"]
      176 LOADK                            R8 K55 ["rbxasset://studio_svg_textures/Lua/Notifications/%s/Standard/NotificationBadgeUnread.png"]
      177 SETTABLE                         R8 R6 R7
      178 GETTABLEKS                       R7 R5 K33 ["PackageLink"]
      180 LOADK                            R8 K56 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/PackageLink.png"]
      181 SETTABLE                         R8 R6 R7
      182 GETTABLEKS                       R7 R5 K34 ["PlaceholderAsset"]
      184 LOADK                            R8 K57 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
      185 SETTABLE                         R8 R6 R7
      186 GETTABLEKS                       R7 R5 K13 ["Placeholder"]
      188 LOADK                            R8 K57 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
      189 SETTABLE                         R8 R6 R7
      190 GETTABLEKS                       R7 R5 K35 ["PlacesFolder"]
      192 LOADK                            R8 K58 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/PlacesFolder.png"]
      193 SETTABLE                         R8 R6 R7
      194 GETTABLEKS                       R7 R5 K36 ["Refresh"]
      196 LOADK                            R8 K59 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Standard/Refresh.png"]
      197 SETTABLE                         R8 R6 R7
      198 GETTABLEKS                       R7 R5 K22 ["Search"]
      200 LOADK                            R8 K60 ["rbxasset://studio_svg_textures/Lua/DeveloperFramework/%s/Standard/Search.png"]
      201 SETTABLE                         R8 R6 R7
      202 GETTABLEKS                       R7 R5 K15 ["SidebarCollapse"]
      204 LOADK                            R8 K61 ["rbxasset://studio_svg_textures/Lua/SystemArrows/%s/Standard/DoubleChevronLeft.png"]
      205 SETTABLE                         R8 R6 R7
      206 GETTABLEKS                       R7 R5 K16 ["SidebarExpand"]
      208 LOADK                            R8 K62 ["rbxasset://studio_svg_textures/Lua/SystemArrows/%s/Standard/DoubleChevronRight.png"]
      209 SETTABLE                         R8 R6 R7
      210 GETTABLEKS                       R7 R5 K14 ["Sort"]
      212 LOADK                            R8 K63 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/Sort.png"]
      213 SETTABLE                         R8 R6 R7
      214 GETTABLEKS                       R7 R5 K23 ["Universe"]
      216 LOADK                            R8 K57 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
      217 SETTABLE                         R8 R6 R7
      218 GETTABLEKS                       R7 R5 K37 ["UniverseLarge"]
      220 LOADK                            R8 K57 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
      221 SETTABLE                         R8 R6 R7
      222 GETTABLEKS                       R7 R5 K18 ["User"]
      224 LOADK                            R8 K64 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/User.png"]
      225 SETTABLE                         R8 R6 R7
      226 GETTABLEKS                       R7 R5 K38 ["UserFolder"]
      228 LOADK                            R8 K65 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/StarterPlayer.png"]
      229 SETTABLE                         R8 R6 R7
      230 GETTABLEKS                       R7 R5 K19 ["UserLarge"]
      232 LOADK                            R8 K66 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Large/User.png"]
      233 SETTABLE                         R8 R6 R7
      234 GETTABLEKS                       R7 R5 K39 ["IndentGuide"]
      236 LOADK                            R8 K67 ["rbxasset://studio_svg_textures/Lua/Explorer/%s/Standard/indentGuide.png"]
      237 SETTABLE                         R8 R6 R7
      238 SETTABLEKS                       R6 R4 K68 ["_Uris"]
      240 DUPCLOSURE                       R6 K69 [PROTO_0]
      241 CAPTURE                          VAL R4
      242 CAPTURE                          VAL R3
      243 SETTABLEKS                       R6 R4 K70 ["get"]
      245 DUPCLOSURE                       R6 K71 [PROTO_1]
      246 CAPTURE                          VAL R4
      247 SETTABLEKS                       R6 R4 K72 ["getLight"]
      249 DUPCLOSURE                       R6 K73 [PROTO_2]
      250 CAPTURE                          VAL R4
      251 SETTABLEKS                       R6 R4 K74 ["getDark"]
      253 RETURN                           R4 1
