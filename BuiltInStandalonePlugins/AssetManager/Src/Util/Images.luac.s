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
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Flags"]
       31 GETTABLEKS                       R5 R5 K13 ["getFFlagAmrGameFolderIconAvailable"]
       33 CALL                             R4 1 1
       34 NEWTABLE                         R5 8 0
       36 MOVE                             R6 R2
       37 LOADK                            R7 K14 ["AvailableImages"]
       38 DUPTABLE                         R8 K44 [{"Checkmark", "Placeholder", "Sort", "SidebarCollapse", "SidebarExpand", "DefaultThumbnail", "User", "UserLarge", "Group", "GroupLarge", "Search", "Universe", "ArrowDown", "ArrowRight", "ArrowUp", "Clear", "Filter", "Folder", "GroupFolder", "Import", "Notification", "PackageLink", "PlaceholderAsset", "PlacesFolder", "Refresh", "UniverseLarge", "UserFolder", "IndentGuide", "GameFolder"}]
       39 LOADN                            R9 1
       40 SETTABLEKS                       R9 R8 K15 ["Checkmark"]
       42 LOADN                            R9 2
       43 SETTABLEKS                       R9 R8 K16 ["Placeholder"]
       45 LOADN                            R9 3
       46 SETTABLEKS                       R9 R8 K17 ["Sort"]
       48 LOADN                            R9 4
       49 SETTABLEKS                       R9 R8 K18 ["SidebarCollapse"]
       51 LOADN                            R9 5
       52 SETTABLEKS                       R9 R8 K19 ["SidebarExpand"]
       54 LOADN                            R9 6
       55 SETTABLEKS                       R9 R8 K20 ["DefaultThumbnail"]
       57 LOADN                            R9 7
       58 SETTABLEKS                       R9 R8 K21 ["User"]
       60 LOADN                            R9 8
       61 SETTABLEKS                       R9 R8 K22 ["UserLarge"]
       63 LOADN                            R9 9
       64 SETTABLEKS                       R9 R8 K23 ["Group"]
       66 LOADN                            R9 10
       67 SETTABLEKS                       R9 R8 K24 ["GroupLarge"]
       69 LOADN                            R9 11
       70 SETTABLEKS                       R9 R8 K25 ["Search"]
       72 LOADN                            R9 12
       73 SETTABLEKS                       R9 R8 K26 ["Universe"]
       75 LOADN                            R9 13
       76 SETTABLEKS                       R9 R8 K27 ["ArrowDown"]
       78 LOADN                            R9 14
       79 SETTABLEKS                       R9 R8 K28 ["ArrowRight"]
       81 LOADN                            R9 15
       82 SETTABLEKS                       R9 R8 K29 ["ArrowUp"]
       84 LOADN                            R9 16
       85 SETTABLEKS                       R9 R8 K30 ["Clear"]
       87 LOADN                            R9 17
       88 SETTABLEKS                       R9 R8 K31 ["Filter"]
       90 LOADN                            R9 18
       91 SETTABLEKS                       R9 R8 K32 ["Folder"]
       93 LOADN                            R9 19
       94 SETTABLEKS                       R9 R8 K33 ["GroupFolder"]
       96 LOADN                            R9 20
       97 SETTABLEKS                       R9 R8 K34 ["Import"]
       99 LOADN                            R9 21
      100 SETTABLEKS                       R9 R8 K35 ["Notification"]
      102 LOADN                            R9 22
      103 SETTABLEKS                       R9 R8 K36 ["PackageLink"]
      105 LOADN                            R9 23
      106 SETTABLEKS                       R9 R8 K37 ["PlaceholderAsset"]
      108 LOADN                            R9 24
      109 SETTABLEKS                       R9 R8 K38 ["PlacesFolder"]
      111 LOADN                            R9 25
      112 SETTABLEKS                       R9 R8 K39 ["Refresh"]
      114 LOADN                            R9 26
      115 SETTABLEKS                       R9 R8 K40 ["UniverseLarge"]
      117 LOADN                            R9 27
      118 SETTABLEKS                       R9 R8 K41 ["UserFolder"]
      120 LOADN                            R9 28
      121 SETTABLEKS                       R9 R8 K42 ["IndentGuide"]
      123 LOADN                            R9 29
      124 SETTABLEKS                       R9 R8 K43 ["GameFolder"]
      126 CALL                             R6 2 1
      127 SETTABLEKS                       R6 R5 K14 ["AvailableImages"]
      129 NEWTABLE                         R7 32 0
      131 GETTABLEKS                       R8 R6 K27 ["ArrowDown"]
      133 LOADK                            R9 K45 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/ArrowDown.png"]
      134 SETTABLE                         R9 R7 R8
      135 GETTABLEKS                       R8 R6 K28 ["ArrowRight"]
      137 LOADK                            R9 K46 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/ArrowRight.png"]
      138 SETTABLE                         R9 R7 R8
      139 GETTABLEKS                       R8 R6 K29 ["ArrowUp"]
      141 LOADK                            R9 K47 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/ArrowUp.png"]
      142 SETTABLE                         R9 R7 R8
      143 GETTABLEKS                       R8 R6 K15 ["Checkmark"]
      145 LOADK                            R9 K48 ["rbxasset://studio_svg_textures/Lua/Tutorials/%s/Standard/Checkmark.png"]
      146 SETTABLE                         R9 R7 R8
      147 GETTABLEKS                       R8 R6 K30 ["Clear"]
      149 LOADK                            R9 K49 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Cleanup.png"]
      150 SETTABLE                         R9 R7 R8
      151 GETTABLEKS                       R8 R6 K20 ["DefaultThumbnail"]
      153 LOADK                            R9 K50 ["rbxasset://studio_svg_textures/Lua/StartPage/%s/SI-Standard/Placeholder.png"]
      154 SETTABLE                         R9 R7 R8
      155 GETTABLEKS                       R8 R6 K31 ["Filter"]
      157 LOADK                            R9 K51 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/Filter.png"]
      158 SETTABLE                         R9 R7 R8
      159 GETTABLEKS                       R8 R6 K32 ["Folder"]
      161 LOADK                            R9 K52 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Folder.png"]
      162 SETTABLE                         R9 R7 R8
      163 GETTABLEKS                       R8 R6 K43 ["GameFolder"]
      165 MOVE                             R10 R4
      166 CALL                             R10 0 1
      167 JUMPIFNOT                        R10 ; [+2]
      168 LOADK                            R9 K53 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/ExperienceFolder.png"]
      169 JUMP                             ; [+1]
      170 LOADK                            R9 K52 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Folder.png"]
      171 SETTABLE                         R9 R7 R8
      172 GETTABLEKS                       R8 R6 K23 ["Group"]
      174 LOADK                            R9 K54 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/Group.png"]
      175 SETTABLE                         R9 R7 R8
      176 GETTABLEKS                       R8 R6 K33 ["GroupFolder"]
      178 LOADK                            R9 K55 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Teams.png"]
      179 SETTABLE                         R9 R7 R8
      180 GETTABLEKS                       R8 R6 K24 ["GroupLarge"]
      182 LOADK                            R9 K56 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Large/Group.png"]
      183 SETTABLE                         R9 R7 R8
      184 GETTABLEKS                       R8 R6 K34 ["Import"]
      186 LOADK                            R9 K57 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Large/Import.png"]
      187 SETTABLE                         R9 R7 R8
      188 GETTABLEKS                       R8 R6 K35 ["Notification"]
      190 LOADK                            R9 K58 ["rbxasset://studio_svg_textures/Lua/Notifications/%s/Standard/NotificationBadgeUnread.png"]
      191 SETTABLE                         R9 R7 R8
      192 GETTABLEKS                       R8 R6 K36 ["PackageLink"]
      194 LOADK                            R9 K59 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/PackageLink.png"]
      195 SETTABLE                         R9 R7 R8
      196 GETTABLEKS                       R8 R6 K37 ["PlaceholderAsset"]
      198 LOADK                            R9 K60 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
      199 SETTABLE                         R9 R7 R8
      200 GETTABLEKS                       R8 R6 K16 ["Placeholder"]
      202 LOADK                            R9 K60 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
      203 SETTABLE                         R9 R7 R8
      204 GETTABLEKS                       R8 R6 K38 ["PlacesFolder"]
      206 LOADK                            R9 K61 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/PlacesFolder.png"]
      207 SETTABLE                         R9 R7 R8
      208 GETTABLEKS                       R8 R6 K39 ["Refresh"]
      210 LOADK                            R9 K62 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Standard/Refresh.png"]
      211 SETTABLE                         R9 R7 R8
      212 GETTABLEKS                       R8 R6 K25 ["Search"]
      214 LOADK                            R9 K63 ["rbxasset://studio_svg_textures/Lua/DeveloperFramework/%s/Standard/Search.png"]
      215 SETTABLE                         R9 R7 R8
      216 GETTABLEKS                       R8 R6 K18 ["SidebarCollapse"]
      218 LOADK                            R9 K64 ["rbxasset://studio_svg_textures/Lua/SystemArrows/%s/Standard/DoubleChevronLeft.png"]
      219 SETTABLE                         R9 R7 R8
      220 GETTABLEKS                       R8 R6 K19 ["SidebarExpand"]
      222 LOADK                            R9 K65 ["rbxasset://studio_svg_textures/Lua/SystemArrows/%s/Standard/DoubleChevronRight.png"]
      223 SETTABLE                         R9 R7 R8
      224 GETTABLEKS                       R8 R6 K17 ["Sort"]
      226 LOADK                            R9 K66 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/Sort.png"]
      227 SETTABLE                         R9 R7 R8
      228 GETTABLEKS                       R8 R6 K26 ["Universe"]
      230 LOADK                            R9 K60 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
      231 SETTABLE                         R9 R7 R8
      232 GETTABLEKS                       R8 R6 K40 ["UniverseLarge"]
      234 LOADK                            R9 K60 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
      235 SETTABLE                         R9 R7 R8
      236 GETTABLEKS                       R8 R6 K21 ["User"]
      238 LOADK                            R9 K67 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/User.png"]
      239 SETTABLE                         R9 R7 R8
      240 GETTABLEKS                       R8 R6 K41 ["UserFolder"]
      242 LOADK                            R9 K68 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/StarterPlayer.png"]
      243 SETTABLE                         R9 R7 R8
      244 GETTABLEKS                       R8 R6 K22 ["UserLarge"]
      246 LOADK                            R9 K69 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Large/User.png"]
      247 SETTABLE                         R9 R7 R8
      248 GETTABLEKS                       R8 R6 K42 ["IndentGuide"]
      250 LOADK                            R9 K70 ["rbxasset://studio_svg_textures/Lua/Explorer/%s/Standard/indentGuide.png"]
      251 SETTABLE                         R9 R7 R8
      252 SETTABLEKS                       R7 R5 K71 ["_Uris"]
      254 DUPCLOSURE                       R7 K72 [PROTO_0]
      255 CAPTURE                          VAL R5
      256 CAPTURE                          VAL R3
      257 SETTABLEKS                       R7 R5 K73 ["get"]
      259 DUPCLOSURE                       R7 K74 [PROTO_1]
      260 CAPTURE                          VAL R5
      261 SETTABLEKS                       R7 R5 K75 ["getLight"]
      263 DUPCLOSURE                       R7 K76 [PROTO_2]
      264 CAPTURE                          VAL R5
      265 SETTABLEKS                       R7 R5 K77 ["getDark"]
      267 RETURN                           R5 1
