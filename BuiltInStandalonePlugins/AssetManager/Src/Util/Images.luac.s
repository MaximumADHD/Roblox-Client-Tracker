PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K3 ["_Uris"]
        5 GETTABLE                         R2 R3 R0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K4 ["getThemeName"]
        9 CALL                             R3 0 -1
       10 CALL                             R1 -1 -1
       11 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.format]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K3 ["_Uris"]
        5 GETTABLE                         R2 R3 R0
        6 LOADK                            R3 K4 ["Light"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.format]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K3 ["_Uris"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["enumerate"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R1 K9 ["Style"]
       23 GETTABLEKS                       R3 R4 K10 ["ThemeSwitcher"]
       25 NEWTABLE                         R4 8 0
       27 MOVE                             R5 R2
       28 LOADK                            R6 K11 ["AvailableImages"]
       29 DUPTABLE                         R7 K40 [{"Checkmark", "Placeholder", "Sort", "SidebarCollapse", "SidebarExpand", "DefaultThumbnail", "User", "UserLarge", "Group", "GroupLarge", "Search", "Universe", "ArrowDown", "ArrowRight", "ArrowUp", "Clear", "Filter", "Folder", "GroupFolder", "Import", "Notification", "PackageLink", "PlaceholderAsset", "PlacesFolder", "Refresh", "UniverseLarge", "UserFolder", "IndentGuide"}]
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
      114 CALL                             R5 2 1
      115 SETTABLEKS                       R5 R4 K11 ["AvailableImages"]
      117 NEWTABLE                         R6 32 0
      119 GETTABLEKS                       R7 R5 K24 ["ArrowDown"]
      121 LOADK                            R8 K41 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/ArrowDown.png"]
      122 SETTABLE                         R8 R6 R7
      123 GETTABLEKS                       R7 R5 K25 ["ArrowRight"]
      125 LOADK                            R8 K42 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/ArrowRight.png"]
      126 SETTABLE                         R8 R6 R7
      127 GETTABLEKS                       R7 R5 K26 ["ArrowUp"]
      129 LOADK                            R8 K43 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/ArrowUp.png"]
      130 SETTABLE                         R8 R6 R7
      131 GETTABLEKS                       R7 R5 K12 ["Checkmark"]
      133 LOADK                            R8 K44 ["rbxasset://studio_svg_textures/Lua/Tutorials/%s/Standard/Checkmark.png"]
      134 SETTABLE                         R8 R6 R7
      135 GETTABLEKS                       R7 R5 K27 ["Clear"]
      137 LOADK                            R8 K45 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Cleanup.png"]
      138 SETTABLE                         R8 R6 R7
      139 GETTABLEKS                       R7 R5 K17 ["DefaultThumbnail"]
      141 LOADK                            R8 K46 ["rbxasset://studio_svg_textures/Lua/StartPage/%s/SI-Standard/Placeholder.png"]
      142 SETTABLE                         R8 R6 R7
      143 GETTABLEKS                       R7 R5 K28 ["Filter"]
      145 LOADK                            R8 K47 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/Filter.png"]
      146 SETTABLE                         R8 R6 R7
      147 GETTABLEKS                       R7 R5 K29 ["Folder"]
      149 LOADK                            R8 K48 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Folder.png"]
      150 SETTABLE                         R8 R6 R7
      151 GETTABLEKS                       R7 R5 K20 ["Group"]
      153 LOADK                            R8 K49 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/Group.png"]
      154 SETTABLE                         R8 R6 R7
      155 GETTABLEKS                       R7 R5 K30 ["GroupFolder"]
      157 LOADK                            R8 K50 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Teams.png"]
      158 SETTABLE                         R8 R6 R7
      159 GETTABLEKS                       R7 R5 K21 ["GroupLarge"]
      161 LOADK                            R8 K51 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Large/Group.png"]
      162 SETTABLE                         R8 R6 R7
      163 GETTABLEKS                       R7 R5 K31 ["Import"]
      165 LOADK                            R8 K52 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Large/Import.png"]
      166 SETTABLE                         R8 R6 R7
      167 GETTABLEKS                       R7 R5 K32 ["Notification"]
      169 LOADK                            R8 K53 ["rbxasset://studio_svg_textures/Lua/Notifications/%s/Standard/NotificationBadgeUnread.png"]
      170 SETTABLE                         R8 R6 R7
      171 GETTABLEKS                       R7 R5 K33 ["PackageLink"]
      173 LOADK                            R8 K54 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/PackageLink.png"]
      174 SETTABLE                         R8 R6 R7
      175 GETTABLEKS                       R7 R5 K34 ["PlaceholderAsset"]
      177 LOADK                            R8 K55 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
      178 SETTABLE                         R8 R6 R7
      179 GETTABLEKS                       R7 R5 K13 ["Placeholder"]
      181 LOADK                            R8 K55 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
      182 SETTABLE                         R8 R6 R7
      183 GETTABLEKS                       R7 R5 K35 ["PlacesFolder"]
      185 LOADK                            R8 K56 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/PlacesFolder.png"]
      186 SETTABLE                         R8 R6 R7
      187 GETTABLEKS                       R7 R5 K36 ["Refresh"]
      189 LOADK                            R8 K57 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Standard/Refresh.png"]
      190 SETTABLE                         R8 R6 R7
      191 GETTABLEKS                       R7 R5 K22 ["Search"]
      193 LOADK                            R8 K58 ["rbxasset://studio_svg_textures/Lua/DeveloperFramework/%s/Standard/Search.png"]
      194 SETTABLE                         R8 R6 R7
      195 GETTABLEKS                       R7 R5 K15 ["SidebarCollapse"]
      197 LOADK                            R8 K59 ["rbxasset://studio_svg_textures/Lua/SystemArrows/%s/Standard/DoubleChevronLeft.png"]
      198 SETTABLE                         R8 R6 R7
      199 GETTABLEKS                       R7 R5 K16 ["SidebarExpand"]
      201 LOADK                            R8 K60 ["rbxasset://studio_svg_textures/Lua/SystemArrows/%s/Standard/DoubleChevronRight.png"]
      202 SETTABLE                         R8 R6 R7
      203 GETTABLEKS                       R7 R5 K14 ["Sort"]
      205 LOADK                            R8 K61 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/Sort.png"]
      206 SETTABLE                         R8 R6 R7
      207 GETTABLEKS                       R7 R5 K23 ["Universe"]
      209 LOADK                            R8 K55 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
      210 SETTABLE                         R8 R6 R7
      211 GETTABLEKS                       R7 R5 K37 ["UniverseLarge"]
      213 LOADK                            R8 K55 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
      214 SETTABLE                         R8 R6 R7
      215 GETTABLEKS                       R7 R5 K18 ["User"]
      217 LOADK                            R8 K62 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/User.png"]
      218 SETTABLE                         R8 R6 R7
      219 GETTABLEKS                       R7 R5 K38 ["UserFolder"]
      221 LOADK                            R8 K63 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/StarterPlayer.png"]
      222 SETTABLE                         R8 R6 R7
      223 GETTABLEKS                       R7 R5 K19 ["UserLarge"]
      225 LOADK                            R8 K64 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Large/User.png"]
      226 SETTABLE                         R8 R6 R7
      227 GETTABLEKS                       R7 R5 K39 ["IndentGuide"]
      229 LOADK                            R8 K65 ["rbxasset://studio_svg_textures/Lua/Explorer/%s/Standard/indentGuide.png"]
      230 SETTABLE                         R8 R6 R7
      231 SETTABLEKS                       R6 R4 K66 ["_Uris"]
      233 DUPCLOSURE                       R6 K67 [PROTO_0]
      234 CAPTURE                          VAL R4
      235 CAPTURE                          VAL R3
      236 SETTABLEKS                       R6 R4 K68 ["get"]
      238 DUPCLOSURE                       R6 K69 [PROTO_1]
      239 CAPTURE                          VAL R4
      240 SETTABLEKS                       R6 R4 K70 ["getLight"]
      242 DUPCLOSURE                       R6 K71 [PROTO_2]
      243 CAPTURE                          VAL R4
      244 SETTABLEKS                       R6 R4 K72 ["getDark"]
      246 RETURN                           R4 1
