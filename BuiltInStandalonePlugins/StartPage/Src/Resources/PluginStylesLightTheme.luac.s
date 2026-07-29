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
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["SharedFlags"]
       34 GETTABLEKS                       R5 R5 K13 ["getFFlagLuaStartPageNewListView"]
       36 CALL                             R4 1 1
       37 CALL                             R4 0 1
       38 DUPTABLE                         R5 K40 [{["PageBackground"], ["PillBackground"], ["TileBackground"], ["ContextMenuBackground"], ["Selected"], ["TextColor"], ["Contrast"], ["Standard"], ["StandardDark"], ["Border"], ["SemanticColorContentMuted"], ["ShimmerBackground"], ["ShimmerBackgroundTransparency"] = 0.95, ["ShimmerForeground"], ["ShimmerGradientTransparency"], ["NoExperiences"], ["Placeholder"], ["RightChevron"] = "rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/RightChevron.png", ["Cancel"] = "rbxasset://studio_svg_textures/Lua/StartPage/Light/Standard/CancelStandard.png", ["CancelWhite"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/CancelStandard.png", ["Kebab"] = "rbxasset://studio_svg_textures/Lua/StartPage/Light/Large/Kebab.png"}]
       39 GETIMPORT                        R6 K43 [Color3.fromHex]
       41 LOADK                            R7 K44 ["#F2F2F3"]
       42 CALL                             R6 1 1
       43 SETTABLEKS                       R6 R5 K14 ["PageBackground"]
       45 GETIMPORT                        R6 K43 [Color3.fromHex]
       47 LOADK                            R7 K45 ["#696A6D"]
       48 CALL                             R6 1 1
       49 SETTABLEKS                       R6 R5 K15 ["PillBackground"]
       51 GETIMPORT                        R6 K47 [Color3.fromRGB]
       53 LOADN                            R7 247
       54 LOADN                            R8 247
       55 LOADN                            R9 248
       56 CALL                             R6 3 1
       57 SETTABLEKS                       R6 R5 K16 ["TileBackground"]
       59 GETIMPORT                        R6 K43 [Color3.fromHex]
       61 LOADK                            R7 K48 ["#F3F3F4"]
       62 CALL                             R6 1 1
       63 SETTABLEKS                       R6 R5 K17 ["ContextMenuBackground"]
       65 GETIMPORT                        R6 K43 [Color3.fromHex]
       67 LOADK                            R7 K49 ["#D3D4D8"]
       68 CALL                             R6 1 1
       69 SETTABLEKS                       R6 R5 K18 ["Selected"]
       71 GETIMPORT                        R6 K43 [Color3.fromHex]
       73 LOADK                            R7 K50 ["#111216"]
       74 CALL                             R6 1 1
       75 SETTABLEKS                       R6 R5 K19 ["TextColor"]
       77 GETIMPORT                        R6 K43 [Color3.fromHex]
       79 LOADK                            R7 K51 ["#FFFFFF"]
       80 CALL                             R6 1 1
       81 SETTABLEKS                       R6 R5 K20 ["Contrast"]
       83 GETIMPORT                        R6 K43 [Color3.fromHex]
       85 LOADK                            R7 K51 ["#FFFFFF"]
       86 CALL                             R6 1 1
       87 SETTABLEKS                       R6 R5 K21 ["Standard"]
       89 GETIMPORT                        R6 K43 [Color3.fromHex]
       91 LOADK                            R7 K52 ["#000000"]
       92 CALL                             R6 1 1
       93 SETTABLEKS                       R6 R5 K22 ["StandardDark"]
       95 GETIMPORT                        R6 K43 [Color3.fromHex]
       97 LOADK                            R7 K52 ["#000000"]
       98 CALL                             R6 1 1
       99 SETTABLEKS                       R6 R5 K23 ["Border"]
      101 GETIMPORT                        R6 K43 [Color3.fromHex]
      103 LOADK                            R7 K45 ["#696A6D"]
      104 CALL                             R6 1 1
      105 SETTABLEKS                       R6 R5 K24 ["SemanticColorContentMuted"]
      107 GETIMPORT                        R6 K43 [Color3.fromHex]
      109 LOADK                            R7 K52 ["#000000"]
      110 CALL                             R6 1 1
      111 SETTABLEKS                       R6 R5 K25 ["ShimmerBackground"]
      113 GETIMPORT                        R6 K43 [Color3.fromHex]
      115 LOADK                            R7 K53 ["#2B2B2B"]
      116 CALL                             R6 1 1
      117 SETTABLEKS                       R6 R5 K28 ["ShimmerForeground"]
      119 GETIMPORT                        R6 K56 [NumberSequence.new]
      121 NEWTABLE                         R7 0 5
      123 GETIMPORT                        R8 K58 [NumberSequenceKeypoint.new]
      125 LOADN                            R9 0
      126 LOADN                            R10 1
      127 CALL                             R8 2 1
      128 GETIMPORT                        R9 K58 [NumberSequenceKeypoint.new]
      130 LOADK                            R10 K59 [0.05]
      131 LOADN                            R11 1
      132 CALL                             R9 2 1
      133 GETIMPORT                        R10 K58 [NumberSequenceKeypoint.new]
      135 LOADK                            R11 K60 [0.5]
      136 LOADK                            R12 K61 [0.7]
      137 CALL                             R10 2 1
      138 GETIMPORT                        R11 K58 [NumberSequenceKeypoint.new]
      140 LOADK                            R12 K27 [0.95]
      141 LOADN                            R13 1
      142 CALL                             R11 2 1
      143 GETIMPORT                        R12 K58 [NumberSequenceKeypoint.new]
      145 LOADN                            R13 1
      146 LOADN                            R14 1
      147 CALL                             R12 2 -1
      148 SETLIST                          R7 R8 -1 [1]
      150 CALL                             R6 1 1
      151 SETTABLEKS                       R6 R5 K29 ["ShimmerGradientTransparency"]
      153 JUMPIFNOT                        R3 ; [+2]
      154 LOADK                            R6 K62 ["rbxasset://textures/StartPage/videoGameExp_leight.png"]
      155 JUMP                             ; [+1]
      156 LOADK                            R6 K63 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/NoExperiences.png"]
      157 SETTABLEKS                       R6 R5 K30 ["NoExperiences"]
      159 JUMPIFNOT                        R4 ; [+2]
      160 LOADK                            R6 K64 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png"]
      161 JUMP                             ; [+1]
      162 LOADNIL                          R6
      163 SETTABLEKS                       R6 R5 K31 ["Placeholder"]
      165 MOVE                             R6 R2
      166 LOADK                            R7 K65 ["StartPageLightTheme"]
      167 NEWTABLE                         R8 0 0
      169 MOVE                             R9 R5
      170 CALL                             R6 3 -1
      171 RETURN                           R6 -1
