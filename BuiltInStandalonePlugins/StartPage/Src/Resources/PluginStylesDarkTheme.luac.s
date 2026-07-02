MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleSheet"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K11 ["SharedFlags"]
       24 GETTABLEKS                       R4 R4 K12 ["getFFlagLuaStartPageNotFoundImageUpdate"]
       26 CALL                             R3 1 1
       27 CALL                             R3 0 1
       28 DUPTABLE                         R4 K37 [{["PageBackground"], ["PillBackground"], ["TileBackground"], ["ContextMenuBackground"], ["Selected"], ["TextColor"], ["Contrast"], ["Standard"], ["StandardDark"], ["Border"], ["SemanticColorContentMuted"], ["ShimmerBackground"], ["ShimmerBackgroundTransparency"] = 0.8, ["ShimmerForeground"], ["ShimmerGradientTransparency"], ["NoExperiences"], ["RightChevron"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/RightChevron.png", ["Cancel"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/CancelStandard.png", ["CancelWhite"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/CancelStandard.png", ["Kebab"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Kebab.png"}]
       29 GETIMPORT                        R5 K40 [Color3.fromHex]
       31 LOADK                            R6 K41 ["#1F2024"]
       32 CALL                             R5 1 1
       33 SETTABLEKS                       R5 R4 K13 ["PageBackground"]
       35 GETIMPORT                        R5 K40 [Color3.fromHex]
       37 LOADK                            R6 K42 ["#111216"]
       38 CALL                             R5 1 1
       39 SETTABLEKS                       R5 R4 K14 ["PillBackground"]
       41 GETIMPORT                        R5 K44 [Color3.fromRGB]
       43 LOADN                            R6 25
       44 LOADN                            R7 26
       45 LOADN                            R8 31
       46 CALL                             R5 3 1
       47 SETTABLEKS                       R5 R4 K15 ["TileBackground"]
       49 GETIMPORT                        R5 K40 [Color3.fromHex]
       51 LOADK                            R6 K45 ["#25262C"]
       52 CALL                             R5 1 1
       53 SETTABLEKS                       R5 R4 K16 ["ContextMenuBackground"]
       55 GETIMPORT                        R5 K40 [Color3.fromHex]
       57 LOADK                            R6 K46 ["#000000"]
       58 CALL                             R5 1 1
       59 SETTABLEKS                       R5 R4 K17 ["Selected"]
       61 GETIMPORT                        R5 K40 [Color3.fromHex]
       63 LOADK                            R6 K47 ["#E1E1E1"]
       64 CALL                             R5 1 1
       65 SETTABLEKS                       R5 R4 K18 ["TextColor"]
       67 GETIMPORT                        R5 K40 [Color3.fromHex]
       69 LOADK                            R6 K42 ["#111216"]
       70 CALL                             R5 1 1
       71 SETTABLEKS                       R5 R4 K19 ["Contrast"]
       73 GETIMPORT                        R5 K40 [Color3.fromHex]
       75 LOADK                            R6 K48 ["#FFFFFF"]
       76 CALL                             R5 1 1
       77 SETTABLEKS                       R5 R4 K20 ["Standard"]
       79 GETIMPORT                        R5 K40 [Color3.fromHex]
       81 LOADK                            R6 K42 ["#111216"]
       82 CALL                             R5 1 1
       83 SETTABLEKS                       R5 R4 K21 ["StandardDark"]
       85 GETIMPORT                        R5 K40 [Color3.fromHex]
       87 LOADK                            R6 K48 ["#FFFFFF"]
       88 CALL                             R5 1 1
       89 SETTABLEKS                       R5 R4 K22 ["Border"]
       91 GETIMPORT                        R5 K40 [Color3.fromHex]
       93 LOADK                            R6 K49 ["#BBBCBE"]
       94 CALL                             R5 1 1
       95 SETTABLEKS                       R5 R4 K23 ["SemanticColorContentMuted"]
       97 GETIMPORT                        R5 K40 [Color3.fromHex]
       99 LOADK                            R6 K50 ["#2B2D33"]
      100 CALL                             R5 1 1
      101 SETTABLEKS                       R5 R4 K24 ["ShimmerBackground"]
      103 GETIMPORT                        R5 K40 [Color3.fromHex]
      105 LOADK                            R6 K51 ["#EEEEEE"]
      106 CALL                             R5 1 1
      107 SETTABLEKS                       R5 R4 K27 ["ShimmerForeground"]
      109 GETIMPORT                        R5 K54 [NumberSequence.new]
      111 NEWTABLE                         R6 0 5
      113 GETIMPORT                        R7 K56 [NumberSequenceKeypoint.new]
      115 LOADN                            R8 0
      116 LOADN                            R9 1
      117 CALL                             R7 2 1
      118 GETIMPORT                        R8 K56 [NumberSequenceKeypoint.new]
      120 LOADK                            R9 K57 [0.05]
      121 LOADN                            R10 1
      122 CALL                             R8 2 1
      123 GETIMPORT                        R9 K56 [NumberSequenceKeypoint.new]
      125 LOADK                            R10 K58 [0.5]
      126 LOADK                            R11 K59 [0.85]
      127 CALL                             R9 2 1
      128 GETIMPORT                        R10 K56 [NumberSequenceKeypoint.new]
      130 LOADK                            R11 K60 [0.95]
      131 LOADN                            R12 1
      132 CALL                             R10 2 1
      133 GETIMPORT                        R11 K56 [NumberSequenceKeypoint.new]
      135 LOADN                            R12 1
      136 LOADN                            R13 1
      137 CALL                             R11 2 -1
      138 SETLIST                          R6 R7 -1 [1]
      140 CALL                             R5 1 1
      141 SETTABLEKS                       R5 R4 K28 ["ShimmerGradientTransparency"]
      143 JUMPIFNOT                        R3 ; [+2]
      144 LOADK                            R5 K61 ["rbxasset://textures/StartPage/videoGameExp_dark.png"]
      145 JUMP                             ; [+1]
      146 LOADK                            R5 K62 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/SI-Standard/NoExperiences.png"]
      147 SETTABLEKS                       R5 R4 K29 ["NoExperiences"]
      149 MOVE                             R5 R2
      150 LOADK                            R6 K63 ["StartPageDarkTheme"]
      151 NEWTABLE                         R7 0 0
      153 MOVE                             R8 R4
      154 CALL                             R5 3 -1
      155 RETURN                           R5 -1
