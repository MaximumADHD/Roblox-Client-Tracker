PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["mock"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 CALL                             R2 2 1
        8 MOVE                             R1 R2
        9 JUMP                             ; [+7]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K1 ["new"]
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R4 2
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 GETUPVAL                         R4 3
       18 NAMECALL                         R2 R1 K2 ["extend"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
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
       21 GETTABLEKS                       R3 R2 K9 ["Style"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R7 R0 K10 ["Src"]
       27 GETTABLEKS                       R6 R7 K11 ["Resources"]
       29 GETTABLEKS                       R5 R6 K12 ["Theme"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R3 K13 ["StyleKey"]
       34 GETTABLEKS                       R7 R3 K14 ["Themes"]
       36 GETTABLEKS                       R6 R7 K15 ["DarkTheme"]
       38 GETTABLEKS                       R8 R3 K14 ["Themes"]
       40 GETTABLEKS                       R7 R8 K16 ["LightTheme"]
       42 GETTABLEKS                       R9 R3 K14 ["Themes"]
       44 GETTABLEKS                       R8 R9 K17 ["StudioTheme"]
       46 GETTABLEKS                       R10 R1 K18 ["Dictionary"]
       48 GETTABLEKS                       R9 R10 K19 ["join"]
       50 MOVE                             R10 R6
       51 NEWTABLE                         R11 8 0
       53 GETTABLEKS                       R12 R5 K20 ["Reroll"]
       55 LOADK                            R13 K21 ["rbxasset://studio_svg_textures/Lua/TextureGenerator/Dark/Standard/reroll.png"]
       56 SETTABLE                         R13 R11 R12
       57 GETTABLEKS                       R12 R5 K22 ["PreviewAreaNext"]
       59 LOADK                            R13 K23 ["rbxasset://studio_svg_textures/Lua/TextureGenerator/Dark/Standard/next.png"]
       60 SETTABLE                         R13 R11 R12
       61 GETTABLEKS                       R12 R5 K24 ["PreviewAreaPrevious"]
       63 LOADK                            R13 K25 ["rbxasset://studio_svg_textures/Lua/TextureGenerator/Dark/Standard/previous.png"]
       64 SETTABLE                         R13 R11 R12
       65 GETTABLEKS                       R12 R5 K26 ["ThumbsUp"]
       67 LOADK                            R13 K27 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsUp.png"]
       68 SETTABLE                         R13 R11 R12
       69 GETTABLEKS                       R12 R5 K28 ["ThumbsDown"]
       71 LOADK                            R13 K29 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsDown.png"]
       72 SETTABLE                         R13 R11 R12
       73 GETTABLEKS                       R12 R5 K30 ["ThumbsUpOutline"]
       75 LOADK                            R13 K31 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsUpOutline.png"]
       76 SETTABLE                         R13 R11 R12
       77 GETTABLEKS                       R12 R5 K32 ["ThumbsDownOutline"]
       79 LOADK                            R13 K33 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsDownOutline.png"]
       80 SETTABLE                         R13 R11 R12
       81 CALL                             R9 2 1
       82 GETTABLEKS                       R11 R1 K18 ["Dictionary"]
       84 GETTABLEKS                       R10 R11 K19 ["join"]
       86 MOVE                             R11 R7
       87 NEWTABLE                         R12 8 0
       89 GETTABLEKS                       R13 R5 K20 ["Reroll"]
       91 LOADK                            R14 K34 ["rbxasset://studio_svg_textures/Lua/TextureGenerator/Light/Standard/reroll.png"]
       92 SETTABLE                         R14 R12 R13
       93 GETTABLEKS                       R13 R5 K22 ["PreviewAreaNext"]
       95 LOADK                            R14 K35 ["rbxasset://studio_svg_textures/Lua/TextureGenerator/Light/Standard/next.png"]
       96 SETTABLE                         R14 R12 R13
       97 GETTABLEKS                       R13 R5 K24 ["PreviewAreaPrevious"]
       99 LOADK                            R14 K36 ["rbxasset://studio_svg_textures/Lua/TextureGenerator/Light/Standard/previous.png"]
      100 SETTABLE                         R14 R12 R13
      101 GETTABLEKS                       R13 R5 K26 ["ThumbsUp"]
      103 LOADK                            R14 K37 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsUp.png"]
      104 SETTABLE                         R14 R12 R13
      105 GETTABLEKS                       R13 R5 K28 ["ThumbsDown"]
      107 LOADK                            R14 K38 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsDown.png"]
      108 SETTABLE                         R14 R12 R13
      109 GETTABLEKS                       R13 R5 K30 ["ThumbsUpOutline"]
      111 LOADK                            R14 K39 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsUpOutline.png"]
      112 SETTABLE                         R14 R12 R13
      113 GETTABLEKS                       R13 R5 K32 ["ThumbsDownOutline"]
      115 LOADK                            R14 K40 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsDownOutline.png"]
      116 SETTABLE                         R14 R12 R13
      117 CALL                             R10 2 1
      118 DUPCLOSURE                       R11 K41 [PROTO_0]
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R4
      123 RETURN                           R11 1
