MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Styling"]
       18 GETTABLEKS                       R2 R2 K8 ["createStyleSheet"]
       20 DUPTABLE                         R3 K17 [{"FoundationColorsBackgroundDefault", "FoundationColorsBackgroundPaper", "FoundationColorsShift100", "FoundationColorsShift200", "FoundationColorsShift300", "FoundationColorsShift400", "FoundationColorsContentEmphasis", "FoundationColorsContentMuted"}]
       21 GETIMPORT                        R4 K20 [Color3.fromHex]
       23 LOADK                            R5 K21 ["#171717"]
       24 CALL                             R4 1 1
       25 SETTABLEKS                       R4 R3 K9 ["FoundationColorsBackgroundDefault"]
       27 GETIMPORT                        R4 K20 [Color3.fromHex]
       29 LOADK                            R5 K22 ["#222222"]
       30 CALL                             R4 1 1
       31 SETTABLEKS                       R4 R3 K10 ["FoundationColorsBackgroundPaper"]
       33 GETIMPORT                        R4 K20 [Color3.fromHex]
       35 LOADK                            R5 K23 ["#1E1F20"]
       36 CALL                             R4 1 1
       37 SETTABLEKS                       R4 R3 K11 ["FoundationColorsShift100"]
       39 GETIMPORT                        R4 K20 [Color3.fromHex]
       41 LOADK                            R5 K24 ["#262729"]
       42 CALL                             R4 1 1
       43 SETTABLEKS                       R4 R3 K12 ["FoundationColorsShift200"]
       45 GETIMPORT                        R4 K20 [Color3.fromHex]
       47 LOADK                            R5 K25 ["#2D2E32"]
       48 CALL                             R4 1 1
       49 SETTABLEKS                       R4 R3 K13 ["FoundationColorsShift300"]
       51 GETIMPORT                        R4 K20 [Color3.fromHex]
       53 LOADK                            R5 K26 ["#35363B"]
       54 CALL                             R4 1 1
       55 SETTABLEKS                       R4 R3 K14 ["FoundationColorsShift400"]
       57 GETIMPORT                        R4 K20 [Color3.fromHex]
       59 LOADK                            R5 K27 ["#F7F7F8"]
       60 CALL                             R4 1 1
       61 SETTABLEKS                       R4 R3 K15 ["FoundationColorsContentEmphasis"]
       63 GETIMPORT                        R4 K20 [Color3.fromHex]
       65 LOADK                            R5 K28 ["#BCBEC8"]
       66 CALL                             R4 1 1
       67 SETTABLEKS                       R4 R3 K16 ["FoundationColorsContentMuted"]
       69 LOADK                            R4 K29 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowDown.png"]
       70 SETTABLEKS                       R4 R3 K30 ["arrowdownicon"]
       72 LOADK                            R4 K31 ["rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/Close.png"]
       73 SETTABLEKS                       R4 R3 K32 ["close"]
       75 LOADK                            R4 K33 ["rbxasset://studio_svg_textures/Lua/ActivityHistory/Dark/Standard/Filter.png"]
       76 SETTABLEKS                       R4 R3 K34 ["filter"]
       78 LOADK                            R4 K35 ["rbxasset://studio_svg_textures/Lua/ActivityHistory/Dark/Standard/FilterDisabled.png"]
       79 SETTABLEKS                       R4 R3 K36 ["filterdisabled"]
       81 LOADK                            R4 K37 ["rbxasset://studio_svg_textures/Lua/ActivityHistory/Dark/Standard/MiniUser.png"]
       82 SETTABLEKS                       R4 R3 K38 ["miniuser"]
       84 LOADK                            R4 K39 ["rbxasset://studio_svg_textures/Lua/ActivityHistory/Dark/Large/NoFilterResults.png"]
       85 SETTABLEKS                       R4 R3 K40 ["nofilterresults"]
       87 LOADK                            R4 K41 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/More.png"]
       88 SETTABLEKS                       R4 R3 K42 ["threedotsicon"]
       90 LOADK                            R4 K43 ["rbxasset://studio_svg_textures/Lua/ActivityHistory/Dark/Large/UnsavedExperience.png"]
       91 SETTABLEKS                       R4 R3 K44 ["unsavedexperience"]
       93 LOADK                            R4 K45 ["rbxasset://studio_svg_textures/Lua/ActivityHistory/Dark/Large/Script.png"]
       94 SETTABLEKS                       R4 R3 K46 ["scripticon"]
       96 MOVE                             R4 R2
       97 LOADK                            R5 K47 ["ActivityHistoryPluginDarkTheme"]
       98 NEWTABLE                         R6 0 0
      100 MOVE                             R7 R3
      101 CALL                             R4 3 -1
      102 RETURN                           R4 -1
