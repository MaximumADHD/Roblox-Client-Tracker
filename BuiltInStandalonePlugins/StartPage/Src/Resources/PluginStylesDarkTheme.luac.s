MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleSheet"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R6 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R6 K11 ["SharedFlags"]
       24 GETTABLEKS                       R4 R5 K12 ["getFFlagLuaStartPageNotFoundImageUpdate"]
       26 CALL                             R3 1 1
       27 CALL                             R3 0 1
       28 DUPTABLE                         R4 K33 [{"PageBackground", "PillBackground", "TileBackground", "ContextMenuBackground", "Selected", "TextColor", "Contrast", "Standard", "StandardDark", "Border", "SemanticColorContentMuted", "ShimmerBackground", "ShimmerBackgroundTransparency", "ShimmerForeground", "ShimmerGradientTransparency", "NoExperiences", "RightChevron", "Cancel", "CancelWhite", "Kebab"}]
       29 GETIMPORT                        R5 K36 [Color3.fromHex]
       31 LOADK                            R6 K37 ["#1F2024"]
       32 CALL                             R5 1 1
       33 SETTABLEKS                       R5 R4 K13 ["PageBackground"]
       35 GETIMPORT                        R5 K36 [Color3.fromHex]
       37 LOADK                            R6 K38 ["#111216"]
       38 CALL                             R5 1 1
       39 SETTABLEKS                       R5 R4 K14 ["PillBackground"]
       41 GETIMPORT                        R5 K40 [Color3.fromRGB]
       43 LOADN                            R6 25
       44 LOADN                            R7 26
       45 LOADN                            R8 31
       46 CALL                             R5 3 1
       47 SETTABLEKS                       R5 R4 K15 ["TileBackground"]
       49 GETIMPORT                        R5 K36 [Color3.fromHex]
       51 LOADK                            R6 K41 ["#25262C"]
       52 CALL                             R5 1 1
       53 SETTABLEKS                       R5 R4 K16 ["ContextMenuBackground"]
       55 GETIMPORT                        R5 K36 [Color3.fromHex]
       57 LOADK                            R6 K42 ["#000000"]
       58 CALL                             R5 1 1
       59 SETTABLEKS                       R5 R4 K17 ["Selected"]
       61 GETIMPORT                        R5 K36 [Color3.fromHex]
       63 LOADK                            R6 K43 ["#E1E1E1"]
       64 CALL                             R5 1 1
       65 SETTABLEKS                       R5 R4 K18 ["TextColor"]
       67 GETIMPORT                        R5 K36 [Color3.fromHex]
       69 LOADK                            R6 K38 ["#111216"]
       70 CALL                             R5 1 1
       71 SETTABLEKS                       R5 R4 K19 ["Contrast"]
       73 GETIMPORT                        R5 K36 [Color3.fromHex]
       75 LOADK                            R6 K44 ["#FFFFFF"]
       76 CALL                             R5 1 1
       77 SETTABLEKS                       R5 R4 K20 ["Standard"]
       79 GETIMPORT                        R5 K36 [Color3.fromHex]
       81 LOADK                            R6 K38 ["#111216"]
       82 CALL                             R5 1 1
       83 SETTABLEKS                       R5 R4 K21 ["StandardDark"]
       85 GETIMPORT                        R5 K36 [Color3.fromHex]
       87 LOADK                            R6 K44 ["#FFFFFF"]
       88 CALL                             R5 1 1
       89 SETTABLEKS                       R5 R4 K22 ["Border"]
       91 GETIMPORT                        R5 K36 [Color3.fromHex]
       93 LOADK                            R6 K45 ["#BBBCBE"]
       94 CALL                             R5 1 1
       95 SETTABLEKS                       R5 R4 K23 ["SemanticColorContentMuted"]
       97 GETIMPORT                        R5 K36 [Color3.fromHex]
       99 LOADK                            R6 K46 ["#2B2D33"]
      100 CALL                             R5 1 1
      101 SETTABLEKS                       R5 R4 K24 ["ShimmerBackground"]
      103 LOADK                            R5 K47 [0.8]
      104 SETTABLEKS                       R5 R4 K25 ["ShimmerBackgroundTransparency"]
      106 GETIMPORT                        R5 K36 [Color3.fromHex]
      108 LOADK                            R6 K48 ["#EEEEEE"]
      109 CALL                             R5 1 1
      110 SETTABLEKS                       R5 R4 K26 ["ShimmerForeground"]
      112 GETIMPORT                        R5 K51 [NumberSequence.new]
      114 NEWTABLE                         R6 0 5
      116 GETIMPORT                        R7 K53 [NumberSequenceKeypoint.new]
      118 LOADN                            R8 0
      119 LOADN                            R9 1
      120 CALL                             R7 2 1
      121 GETIMPORT                        R8 K53 [NumberSequenceKeypoint.new]
      123 LOADK                            R9 K54 [0.05]
      124 LOADN                            R10 1
      125 CALL                             R8 2 1
      126 GETIMPORT                        R9 K53 [NumberSequenceKeypoint.new]
      128 LOADK                            R10 K55 [0.5]
      129 LOADK                            R11 K56 [0.85]
      130 CALL                             R9 2 1
      131 GETIMPORT                        R10 K53 [NumberSequenceKeypoint.new]
      133 LOADK                            R11 K57 [0.95]
      134 LOADN                            R12 1
      135 CALL                             R10 2 1
      136 GETIMPORT                        R11 K53 [NumberSequenceKeypoint.new]
      138 LOADN                            R12 1
      139 LOADN                            R13 1
      140 CALL                             R11 2 -1
      141 SETLIST                          R6 R7 -1 [1]
      143 CALL                             R5 1 1
      144 SETTABLEKS                       R5 R4 K27 ["ShimmerGradientTransparency"]
      146 JUMPIFNOT                        R3 ; [+2]
      147 LOADK                            R5 K58 ["rbxasset://textures/StartPage/videoGameExp_dark.png"]
      148 JUMP                             ; [+1]
      149 LOADK                            R5 K59 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/SI-Standard/NoExperiences.png"]
      150 SETTABLEKS                       R5 R4 K28 ["NoExperiences"]
      152 LOADK                            R5 K60 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/RightChevron.png"]
      153 SETTABLEKS                       R5 R4 K29 ["RightChevron"]
      155 LOADK                            R5 K61 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/CancelStandard.png"]
      156 SETTABLEKS                       R5 R4 K30 ["Cancel"]
      158 LOADK                            R5 K61 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/CancelStandard.png"]
      159 SETTABLEKS                       R5 R4 K31 ["CancelWhite"]
      161 LOADK                            R5 K62 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Kebab.png"]
      162 SETTABLEKS                       R5 R4 K32 ["Kebab"]
      164 MOVE                             R5 R2
      165 LOADK                            R6 K63 ["StartPageDarkTheme"]
      166 NEWTABLE                         R7 0 0
      168 MOVE                             R8 R4
      169 CALL                             R5 3 -1
      170 RETURN                           R5 -1
