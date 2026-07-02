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
       29 DUPTABLE                         R7 K70 [{["Checkmark"] = 1, ["Placeholder"] = 2, ["Sort"] = 3, ["SidebarCollapse"] = 4, ["SidebarExpand"] = 5, ["DefaultThumbnail"] = 6, ["User"] = 7, ["UserLarge"] = 8, ["Group"] = 9, ["GroupLarge"] = 10, ["Search"] = 11, ["Universe"] = 12, ["ArrowDown"] = 13, ["ArrowRight"] = 14, ["ArrowUp"] = 15, ["Clear"] = 16, ["Filter"] = 17, ["Folder"] = 18, ["GroupFolder"] = 19, ["Import"] = 20, ["Notification"] = 21, ["PackageLink"] = 22, ["PlaceholderAsset"] = 23, ["PlacesFolder"] = 24, ["Refresh"] = 25, ["UniverseLarge"] = 26, ["UserFolder"] = 27, ["IndentGuide"] = 28, ["GameFolder"] = 29}]
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K11 ["AvailableImages"]
       33 NEWTABLE                         R6 32 0
       35 GETTABLEKS                       R7 R5 K36 ["ArrowDown"]
       37 LOADK                            R8 K71 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/ArrowDown.png"]
       38 SETTABLE                         R8 R6 R7
       39 GETTABLEKS                       R7 R5 K38 ["ArrowRight"]
       41 LOADK                            R8 K72 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/ArrowRight.png"]
       42 SETTABLE                         R8 R6 R7
       43 GETTABLEKS                       R7 R5 K40 ["ArrowUp"]
       45 LOADK                            R8 K73 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/ArrowUp.png"]
       46 SETTABLE                         R8 R6 R7
       47 GETTABLEKS                       R7 R5 K12 ["Checkmark"]
       49 LOADK                            R8 K74 ["rbxasset://studio_svg_textures/Lua/Tutorials/%s/Standard/Checkmark.png"]
       50 SETTABLE                         R8 R6 R7
       51 GETTABLEKS                       R7 R5 K42 ["Clear"]
       53 LOADK                            R8 K75 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Cleanup.png"]
       54 SETTABLE                         R8 R6 R7
       55 GETTABLEKS                       R7 R5 K22 ["DefaultThumbnail"]
       57 LOADK                            R8 K76 ["rbxasset://studio_svg_textures/Lua/StartPage/%s/SI-Standard/Placeholder.png"]
       58 SETTABLE                         R8 R6 R7
       59 GETTABLEKS                       R7 R5 K44 ["Filter"]
       61 LOADK                            R8 K77 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/Filter.png"]
       62 SETTABLE                         R8 R6 R7
       63 GETTABLEKS                       R7 R5 K46 ["Folder"]
       65 LOADK                            R8 K78 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Folder.png"]
       66 SETTABLE                         R8 R6 R7
       67 GETTABLEKS                       R7 R5 K68 ["GameFolder"]
       69 LOADK                            R8 K79 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/ExperienceFolder.png"]
       70 SETTABLE                         R8 R6 R7
       71 GETTABLEKS                       R7 R5 K28 ["Group"]
       73 LOADK                            R8 K80 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/Group.png"]
       74 SETTABLE                         R8 R6 R7
       75 GETTABLEKS                       R7 R5 K48 ["GroupFolder"]
       77 LOADK                            R8 K81 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Teams.png"]
       78 SETTABLE                         R8 R6 R7
       79 GETTABLEKS                       R7 R5 K30 ["GroupLarge"]
       81 LOADK                            R8 K82 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Large/Group.png"]
       82 SETTABLE                         R8 R6 R7
       83 GETTABLEKS                       R7 R5 K50 ["Import"]
       85 LOADK                            R8 K83 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Large/Import.png"]
       86 SETTABLE                         R8 R6 R7
       87 GETTABLEKS                       R7 R5 K52 ["Notification"]
       89 LOADK                            R8 K84 ["rbxasset://studio_svg_textures/Lua/Notifications/%s/Standard/NotificationBadgeUnread.png"]
       90 SETTABLE                         R8 R6 R7
       91 GETTABLEKS                       R7 R5 K54 ["PackageLink"]
       93 LOADK                            R8 K85 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/PackageLink.png"]
       94 SETTABLE                         R8 R6 R7
       95 GETTABLEKS                       R7 R5 K56 ["PlaceholderAsset"]
       97 LOADK                            R8 K86 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
       98 SETTABLE                         R8 R6 R7
       99 GETTABLEKS                       R7 R5 K14 ["Placeholder"]
      101 LOADK                            R8 K86 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
      102 SETTABLE                         R8 R6 R7
      103 GETTABLEKS                       R7 R5 K58 ["PlacesFolder"]
      105 LOADK                            R8 K87 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/PlacesFolder.png"]
      106 SETTABLE                         R8 R6 R7
      107 GETTABLEKS                       R7 R5 K60 ["Refresh"]
      109 LOADK                            R8 K88 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Standard/Refresh.png"]
      110 SETTABLE                         R8 R6 R7
      111 GETTABLEKS                       R7 R5 K32 ["Search"]
      113 LOADK                            R8 K89 ["rbxasset://studio_svg_textures/Lua/DeveloperFramework/%s/Standard/Search.png"]
      114 SETTABLE                         R8 R6 R7
      115 GETTABLEKS                       R7 R5 K18 ["SidebarCollapse"]
      117 LOADK                            R8 K90 ["rbxasset://studio_svg_textures/Lua/SystemArrows/%s/Standard/DoubleChevronLeft.png"]
      118 SETTABLE                         R8 R6 R7
      119 GETTABLEKS                       R7 R5 K20 ["SidebarExpand"]
      121 LOADK                            R8 K91 ["rbxasset://studio_svg_textures/Lua/SystemArrows/%s/Standard/DoubleChevronRight.png"]
      122 SETTABLE                         R8 R6 R7
      123 GETTABLEKS                       R7 R5 K16 ["Sort"]
      125 LOADK                            R8 K92 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/Sort.png"]
      126 SETTABLE                         R8 R6 R7
      127 GETTABLEKS                       R7 R5 K34 ["Universe"]
      129 LOADK                            R8 K86 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
      130 SETTABLE                         R8 R6 R7
      131 GETTABLEKS                       R7 R5 K62 ["UniverseLarge"]
      133 LOADK                            R8 K86 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
      134 SETTABLE                         R8 R6 R7
      135 GETTABLEKS                       R7 R5 K24 ["User"]
      137 LOADK                            R8 K93 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/User.png"]
      138 SETTABLE                         R8 R6 R7
      139 GETTABLEKS                       R7 R5 K64 ["UserFolder"]
      141 LOADK                            R8 K94 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/StarterPlayer.png"]
      142 SETTABLE                         R8 R6 R7
      143 GETTABLEKS                       R7 R5 K26 ["UserLarge"]
      145 LOADK                            R8 K95 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Large/User.png"]
      146 SETTABLE                         R8 R6 R7
      147 GETTABLEKS                       R7 R5 K66 ["IndentGuide"]
      149 LOADK                            R8 K96 ["rbxasset://studio_svg_textures/Lua/Explorer/%s/Standard/indentGuide.png"]
      150 SETTABLE                         R8 R6 R7
      151 SETTABLEKS                       R6 R4 K97 ["_Uris"]
      153 DUPCLOSURE                       R6 K98 [PROTO_0]
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R3
      156 SETTABLEKS                       R6 R4 K99 ["get"]
      158 DUPCLOSURE                       R6 K100 [PROTO_1]
      159 CAPTURE                          VAL R4
      160 SETTABLEKS                       R6 R4 K101 ["getLight"]
      162 DUPCLOSURE                       R6 K102 [PROTO_2]
      163 CAPTURE                          VAL R4
      164 SETTABLEKS                       R6 R4 K103 ["getDark"]
      166 RETURN                           R4 1
