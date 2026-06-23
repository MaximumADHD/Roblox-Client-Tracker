MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 LOADK                            R1 K0 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/mirror_to_left@3x.png"]
        4 SETTABLEKS                       R1 R0 K1 ["MIRROR_TO_LEFT"]
        6 LOADK                            R1 K2 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/mirror_to_right@3x.png"]
        7 SETTABLEKS                       R1 R0 K3 ["MIRROR_TO_RIGHT"]
        9 LOADK                            R1 K4 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/symmetry@3x.png"]
       10 SETTABLEKS                       R1 R0 K5 ["SYMMETRY"]
       12 LOADK                            R1 K6 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/reset@3x.png"]
       13 SETTABLEKS                       R1 R0 K7 ["RESET"]
       15 LOADK                            R1 K8 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/magic@3x.png"]
       16 SETTABLEKS                       R1 R0 K9 ["MAGIC"]
       18 LOADK                            R1 K10 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/mapping@3x.png"]
       19 SETTABLEKS                       R1 R0 K11 ["MAPPING"]
       21 LOADK                            R1 K12 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/tpose@3x.png"]
       22 SETTABLEKS                       R1 R0 K13 ["TPOSE"]
       24 LOADK                            R1 K14 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/size@3x.png"]
       25 SETTABLEKS                       R1 R0 K15 ["SIZE"]
       27 LOADK                            R1 K16 ["rbxasset://textures/AdaptiveAnimationSupport/mannequin.png"]
       28 SETTABLEKS                       R1 R0 K17 ["MANNEQUIN"]
       30 LOADK                            R1 K18 ["rbxasset://textures/AdaptiveAnimationSupport/hand.png"]
       31 SETTABLEKS                       R1 R0 K19 ["HAND"]
       33 LOADK                            R1 K20 ["rbxasset://textures/AdaptiveAnimationSupport/hand_r.png"]
       34 SETTABLEKS                       R1 R0 K21 ["HAND_R"]
       36 LOADK                            R1 K22 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/add@3x.png"]
       37 SETTABLEKS                       R1 R0 K23 ["ADD"]
       39 LOADK                            R1 K24 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/drd_empty@3x.png"]
       40 SETTABLEKS                       R1 R0 K25 ["DRD_EMPTY"]
       42 LOADK                            R1 K26 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/drd_half_full@3x.png"]
       43 SETTABLEKS                       R1 R0 K27 ["DRD_HALF_FULL"]
       45 LOADK                            R1 K28 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/drd_full@3x.png"]
       46 SETTABLEKS                       R1 R0 K29 ["DRD_FULL"]
       48 LOADK                            R1 K30 ["rbxasset://textures/AdaptiveAnimationSupport/Dark/animation_rig.png"]
       49 SETTABLEKS                       R1 R0 K31 ["EMPTY_IMAGE_DARK"]
       51 LOADK                            R1 K32 ["rbxasset://textures/AdaptiveAnimationSupport/Light/animation_rig.png"]
       52 SETTABLEKS                       R1 R0 K33 ["EMPTY_IMAGE_LIGHT"]
       54 LOADK                            R1 K34 ["https://create.roblox.com/docs/characters/adaptive-animation"]
       55 SETTABLEKS                       R1 R0 K35 ["DOCS_URL"]
       57 LOADK                            R1 K36 ["TposeAdjustment"]
       58 SETTABLEKS                       R1 R0 K37 ["TPOSE_ADJUSTMENT_SUFFIX"]
       60 LOADK                            R1 K38 ["Size"]
       61 SETTABLEKS                       R1 R0 K39 ["SIZE_SUFFIX"]
       63 LOADN                            R1 16
       64 SETTABLEKS                       R1 R0 K40 ["DISPLAY_ORDER_MANNEQUIN"]
       66 LOADN                            R1 21
       67 SETTABLEKS                       R1 R0 K41 ["DISPLAY_ORDER_TOOLBAR"]
       69 LOADK                            R1 K42 [0.1]
       70 SETTABLEKS                       R1 R0 K43 ["RADIUS_SCALE"]
       72 LOADN                            R1 6
       73 SETTABLEKS                       R1 R0 K44 ["RADIUS_REFERENCE_HEIGHT"]
       75 LOADK                            R1 K45 [0.005]
       76 SETTABLEKS                       R1 R0 K46 ["RADIUS_MIN"]
       78 LOADN                            R1 20
       79 SETTABLEKS                       R1 R0 K47 ["RADIUS_MAX"]
       81 LOADK                            R1 K48 [0.2]
       82 SETTABLEKS                       R1 R0 K49 ["BONE_RADIUS_FRACTION"]
       84 LOADK                            R1 K50 [1.025]
       85 SETTABLEKS                       R1 R0 K51 ["SPHERE_STROKE_PCT"]
       87 LOADB                            R1 0
       88 SETTABLEKS                       R1 R0 K52 ["SIZE_ENABLED"]
       90 LOADN                            R1 24
       91 SETTABLEKS                       R1 R0 K53 ["CIRCLE_SEGMENTS"]
       93 LOADK                            R1 K48 [0.2]
       94 SETTABLEKS                       R1 R0 K54 ["WIRE_TRANSPARENCY"]
       96 LOADK                            R1 K55 [0.7]
       97 SETTABLEKS                       R1 R0 K56 ["MESH_TRANSPARENCY"]
       99 LOADK                            R1 K57 [0.35]
      100 SETTABLEKS                       R1 R0 K58 ["ADORNMENT_TRANSPARENCY"]
      102 DUPTABLE                         R1 K67 [{"BONE_MAPPED", "BONE_UNMAPPED", "BONE_SELECTED", "BONE_MAPPED_HOVER", "BONE_UNMAPPED_HOVER", "BONE_UNMAPPED_DARK", "BONE_OTHER_MAPPED", "BONE_EDGE"}]
      103 GETIMPORT                        R2 K70 [Color3.fromRGB]
      105 LOADN                            R3 230
      106 LOADN                            R4 104
      107 LOADN                            R5 10
      108 CALL                             R2 3 1
      109 SETTABLEKS                       R2 R1 K59 ["BONE_MAPPED"]
      111 GETIMPORT                        R2 K70 [Color3.fromRGB]
      113 LOADN                            R3 128
      114 LOADN                            R4 137
      115 LOADN                            R5 172
      116 CALL                             R2 3 1
      117 SETTABLEKS                       R2 R1 K60 ["BONE_UNMAPPED"]
      119 GETIMPORT                        R2 K70 [Color3.fromRGB]
      121 LOADN                            R3 51
      122 LOADN                            R4 95
      123 LOADN                            R5 255
      124 CALL                             R2 3 1
      125 SETTABLEKS                       R2 R1 K61 ["BONE_SELECTED"]
      127 GETIMPORT                        R2 K70 [Color3.fromRGB]
      129 LOADN                            R3 239
      130 LOADN                            R4 209
      131 LOADN                            R5 184
      132 CALL                             R2 3 1
      133 SETTABLEKS                       R2 R1 K62 ["BONE_MAPPED_HOVER"]
      135 GETIMPORT                        R2 K70 [Color3.fromRGB]
      137 LOADN                            R3 196
      138 LOADN                            R4 201
      139 LOADN                            R5 217
      140 CALL                             R2 3 1
      141 SETTABLEKS                       R2 R1 K63 ["BONE_UNMAPPED_HOVER"]
      143 GETIMPORT                        R2 K70 [Color3.fromRGB]
      145 LOADN                            R3 100
      146 LOADN                            R4 100
      147 LOADN                            R5 100
      148 CALL                             R2 3 1
      149 SETTABLEKS                       R2 R1 K64 ["BONE_UNMAPPED_DARK"]
      151 GETIMPORT                        R2 K70 [Color3.fromRGB]
      153 LOADN                            R3 153
      154 LOADN                            R4 69
      155 LOADN                            R5 7
      156 CALL                             R2 3 1
      157 SETTABLEKS                       R2 R1 K65 ["BONE_OTHER_MAPPED"]
      159 GETIMPORT                        R2 K70 [Color3.fromRGB]
      161 LOADN                            R3 68
      162 LOADN                            R4 73
      163 LOADN                            R5 100
      164 CALL                             R2 3 1
      165 SETTABLEKS                       R2 R1 K66 ["BONE_EDGE"]
      167 SETTABLEKS                       R1 R0 K71 ["Colors"]
      169 RETURN                           R0 1
