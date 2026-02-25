PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["mock"]
        5 GETUPVAL                         R3 1
        6 CALL                             R2 1 1
        7 MOVE                             R1 R2
        8 JUMP                             ; [+7]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K1 ["new"]
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R4 2
       14 CALL                             R2 2 1
       15 MOVE                             R1 R2
       16 GETUPVAL                         R4 3
       17 NAMECALL                         R2 R1 K2 ["extend"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Resources"]
       27 GETTABLEKS                       R4 R5 K11 ["Theme"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K12 ["Style"]
       32 GETTABLEKS                       R5 R4 K13 ["StyleKey"]
       34 GETTABLEKS                       R7 R4 K14 ["Themes"]
       36 GETTABLEKS                       R6 R7 K15 ["DarkTheme"]
       38 GETTABLEKS                       R8 R4 K14 ["Themes"]
       40 GETTABLEKS                       R7 R8 K16 ["LightTheme"]
       42 GETTABLEKS                       R9 R4 K14 ["Themes"]
       44 GETTABLEKS                       R8 R9 K17 ["StudioTheme"]
       46 GETTABLEKS                       R10 R1 K18 ["Dictionary"]
       48 GETTABLEKS                       R9 R10 K19 ["join"]
       50 MOVE                             R10 R6
       51 NEWTABLE                         R11 16 0
       53 GETTABLEKS                       R12 R5 K20 ["GeneralSettingsGamesFillImage"]
       55 LOADK                            R13 K21 ["rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/GamesFill-Dark.png"]
       56 SETTABLE                         R13 R11 R12
       57 GETTABLEKS                       R12 R5 K22 ["PresetTooltipCheckImage"]
       59 LOADK                            R13 K23 ["rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/Check-DarkMode.png"]
       60 SETTABLE                         R13 R11 R12
       61 GETTABLEKS                       R12 R5 K24 ["PresetTooltipXImage"]
       63 LOADK                            R13 K25 ["rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/X-DarkMode.png"]
       64 SETTABLE                         R13 R11 R12
       65 GETTABLEKS                       R12 R5 K26 ["PreviewTooltipSettingVisibleImage"]
       67 LOADK                            R13 K27 ["rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/eye-fill-dark.png"]
       68 SETTABLE                         R13 R11 R12
       69 GETTABLEKS                       R12 R5 K28 ["PreviewTooltipSettingInvisibleImage"]
       71 LOADK                            R13 K29 ["rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/eye-slash-dark.png"]
       72 SETTABLE                         R13 R11 R12
       73 GETTABLEKS                       R12 R5 K30 ["PreviewTooltipPlayImage"]
       75 LOADK                            R13 K31 ["rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/play-large-dark.png"]
       76 SETTABLE                         R13 R11 R12
       77 GETTABLEKS                       R12 R5 K32 ["PreviewTooltipPlayDisabledImage"]
       79 LOADK                            R13 K33 ["rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/play-large-disabled-dark.png"]
       80 SETTABLE                         R13 R11 R12
       81 GETTABLEKS                       R12 R5 K34 ["PreviewTooltipAddAvatarImage"]
       83 LOADK                            R13 K35 ["rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/plus-heavy-dark.png"]
       84 SETTABLE                         R13 R11 R12
       85 GETTABLEKS                       R12 R5 K36 ["PreviewTooltipResetAvatarsToCameraImage"]
       87 LOADK                            R13 K37 ["rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/reset-to-mannequin-dark.png"]
       88 SETTABLE                         R13 R11 R12
       89 CALL                             R9 2 1
       90 GETTABLEKS                       R11 R1 K18 ["Dictionary"]
       92 GETTABLEKS                       R10 R11 K19 ["join"]
       94 MOVE                             R11 R7
       95 NEWTABLE                         R12 16 0
       97 GETTABLEKS                       R13 R5 K20 ["GeneralSettingsGamesFillImage"]
       99 LOADK                            R14 K38 ["rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/GamesFill-Light.png"]
      100 SETTABLE                         R14 R12 R13
      101 GETTABLEKS                       R13 R5 K22 ["PresetTooltipCheckImage"]
      103 LOADK                            R14 K39 ["rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/Check-LightMode.png"]
      104 SETTABLE                         R14 R12 R13
      105 GETTABLEKS                       R13 R5 K24 ["PresetTooltipXImage"]
      107 LOADK                            R14 K40 ["rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/X-LightMode.png"]
      108 SETTABLE                         R14 R12 R13
      109 GETTABLEKS                       R13 R5 K26 ["PreviewTooltipSettingVisibleImage"]
      111 LOADK                            R14 K41 ["rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/eye-fill-light.png"]
      112 SETTABLE                         R14 R12 R13
      113 GETTABLEKS                       R13 R5 K28 ["PreviewTooltipSettingInvisibleImage"]
      115 LOADK                            R14 K42 ["rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/eye-slash-light.png"]
      116 SETTABLE                         R14 R12 R13
      117 GETTABLEKS                       R13 R5 K30 ["PreviewTooltipPlayImage"]
      119 LOADK                            R14 K43 ["rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/play-large-light.png"]
      120 SETTABLE                         R14 R12 R13
      121 GETTABLEKS                       R13 R5 K32 ["PreviewTooltipPlayDisabledImage"]
      123 LOADK                            R14 K44 ["rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/play-large-disabled-light.png"]
      124 SETTABLE                         R14 R12 R13
      125 GETTABLEKS                       R13 R5 K34 ["PreviewTooltipAddAvatarImage"]
      127 LOADK                            R14 K45 ["rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/plus-heavy-light.png"]
      128 SETTABLE                         R14 R12 R13
      129 GETTABLEKS                       R13 R5 K36 ["PreviewTooltipResetAvatarsToCameraImage"]
      131 LOADK                            R14 K46 ["rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/reset-to-mannequin-light.png"]
      132 SETTABLE                         R14 R12 R13
      133 CALL                             R10 2 1
      134 DUPCLOSURE                       R11 K47 [PROTO_0]
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R3
      139 RETURN                           R11 1
