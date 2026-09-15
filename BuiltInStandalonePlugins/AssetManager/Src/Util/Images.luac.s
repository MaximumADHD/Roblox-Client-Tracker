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
       29 DUPTABLE                         R7 K58 [{["Checkmark"] = 1, ["Placeholder"] = 2, ["DefaultThumbnail"] = 3, ["User"] = 4, ["UserLarge"] = 5, ["Group"] = 6, ["GroupLarge"] = 7, ["Universe"] = 8, ["ArrowDown"] = 9, ["ArrowRight"] = 10, ["ArrowUp"] = 11, ["Clear"] = 12, ["Filter"] = 13, ["Folder"] = 14, ["GroupFolder"] = 15, ["Import"] = 16, ["Notification"] = 17, ["PlaceholderAsset"] = 18, ["PlacesFolder"] = 19, ["UniverseLarge"] = 20, ["UserFolder"] = 21, ["IndentGuide"] = 22, ["GameFolder"] = 23}]
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K11 ["AvailableImages"]
       33 NEWTABLE                         R6 32 0
       35 GETTABLEKS                       R7 R5 K28 ["ArrowDown"]
       37 LOADK                            R8 K59 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/ArrowDown.png"]
       38 SETTABLE                         R8 R6 R7
       39 GETTABLEKS                       R7 R5 K30 ["ArrowRight"]
       41 LOADK                            R8 K60 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/ArrowRight.png"]
       42 SETTABLE                         R8 R6 R7
       43 GETTABLEKS                       R7 R5 K32 ["ArrowUp"]
       45 LOADK                            R8 K61 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/ArrowUp.png"]
       46 SETTABLE                         R8 R6 R7
       47 GETTABLEKS                       R7 R5 K12 ["Checkmark"]
       49 LOADK                            R8 K62 ["rbxasset://studio_svg_textures/Lua/Tutorials/%s/Standard/Checkmark.png"]
       50 SETTABLE                         R8 R6 R7
       51 GETTABLEKS                       R7 R5 K34 ["Clear"]
       53 LOADK                            R8 K63 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Cleanup.png"]
       54 SETTABLE                         R8 R6 R7
       55 GETTABLEKS                       R7 R5 K16 ["DefaultThumbnail"]
       57 LOADK                            R8 K64 ["rbxasset://studio_svg_textures/Lua/StartPage/%s/SI-Standard/Placeholder.png"]
       58 SETTABLE                         R8 R6 R7
       59 GETTABLEKS                       R7 R5 K36 ["Filter"]
       61 LOADK                            R8 K65 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/Filter.png"]
       62 SETTABLE                         R8 R6 R7
       63 GETTABLEKS                       R7 R5 K38 ["Folder"]
       65 LOADK                            R8 K66 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Folder.png"]
       66 SETTABLE                         R8 R6 R7
       67 GETTABLEKS                       R7 R5 K56 ["GameFolder"]
       69 LOADK                            R8 K67 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/ExperienceFolder.png"]
       70 SETTABLE                         R8 R6 R7
       71 GETTABLEKS                       R7 R5 K22 ["Group"]
       73 LOADK                            R8 K68 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/Group.png"]
       74 SETTABLE                         R8 R6 R7
       75 GETTABLEKS                       R7 R5 K40 ["GroupFolder"]
       77 LOADK                            R8 K69 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Teams.png"]
       78 SETTABLE                         R8 R6 R7
       79 GETTABLEKS                       R7 R5 K24 ["GroupLarge"]
       81 LOADK                            R8 K70 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Large/Group.png"]
       82 SETTABLE                         R8 R6 R7
       83 GETTABLEKS                       R7 R5 K42 ["Import"]
       85 LOADK                            R8 K71 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Large/Import.png"]
       86 SETTABLE                         R8 R6 R7
       87 GETTABLEKS                       R7 R5 K44 ["Notification"]
       89 LOADK                            R8 K72 ["rbxasset://studio_svg_textures/Lua/Notifications/%s/Standard/NotificationBadgeUnread.png"]
       90 SETTABLE                         R8 R6 R7
       91 GETTABLEKS                       R7 R5 K46 ["PlaceholderAsset"]
       93 LOADK                            R8 K73 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
       94 SETTABLE                         R8 R6 R7
       95 GETTABLEKS                       R7 R5 K14 ["Placeholder"]
       97 LOADK                            R8 K73 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
       98 SETTABLE                         R8 R6 R7
       99 GETTABLEKS                       R7 R5 K48 ["PlacesFolder"]
      101 LOADK                            R8 K74 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/PlacesFolder.png"]
      102 SETTABLE                         R8 R6 R7
      103 GETTABLEKS                       R7 R5 K26 ["Universe"]
      105 LOADK                            R8 K73 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
      106 SETTABLE                         R8 R6 R7
      107 GETTABLEKS                       R7 R5 K50 ["UniverseLarge"]
      109 LOADK                            R8 K73 ["rbxasset://studio_svg_textures/Shared/Placeholder/%s/Standard/Placeholder.png"]
      110 SETTABLE                         R8 R6 R7
      111 GETTABLEKS                       R7 R5 K18 ["User"]
      113 LOADK                            R8 K75 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/User.png"]
      114 SETTABLE                         R8 R6 R7
      115 GETTABLEKS                       R7 R5 K52 ["UserFolder"]
      117 LOADK                            R8 K76 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/StarterPlayer.png"]
      118 SETTABLE                         R8 R6 R7
      119 GETTABLEKS                       R7 R5 K20 ["UserLarge"]
      121 LOADK                            R8 K77 ["rbxasset://studio_svg_textures/Shared/Utility/%s/Large/User.png"]
      122 SETTABLE                         R8 R6 R7
      123 GETTABLEKS                       R7 R5 K54 ["IndentGuide"]
      125 LOADK                            R8 K78 ["rbxasset://studio_svg_textures/Lua/Explorer/%s/Standard/indentGuide.png"]
      126 SETTABLE                         R8 R6 R7
      127 SETTABLEKS                       R6 R4 K79 ["_Uris"]
      129 DUPCLOSURE                       R6 K80 [PROTO_0]
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R3
      132 SETTABLEKS                       R6 R4 K81 ["get"]
      134 DUPCLOSURE                       R6 K82 [PROTO_1]
      135 CAPTURE                          VAL R4
      136 SETTABLEKS                       R6 R4 K83 ["getLight"]
      138 DUPCLOSURE                       R6 K84 [PROTO_2]
      139 CAPTURE                          VAL R4
      140 SETTABLEKS                       R6 R4 K85 ["getDark"]
      142 RETURN                           R4 1
