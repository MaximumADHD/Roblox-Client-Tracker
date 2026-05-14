MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
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
       36 LOADK                            R1 K22 ["TposeAdjustment"]
       37 SETTABLEKS                       R1 R0 K23 ["TPOSE_ADJUSTMENT_SUFFIX"]
       39 LOADK                            R1 K24 ["Size"]
       40 SETTABLEKS                       R1 R0 K25 ["SIZE_SUFFIX"]
       42 LOADN                            R1 16
       43 SETTABLEKS                       R1 R0 K26 ["DISPLAY_ORDER_MANNEQUIN"]
       45 LOADN                            R1 21
       46 SETTABLEKS                       R1 R0 K27 ["DISPLAY_ORDER_TOOLBAR"]
       48 LOADK                            R1 K28 [0.1]
       49 SETTABLEKS                       R1 R0 K29 ["RADIUS_SCALE"]
       51 LOADN                            R1 6
       52 SETTABLEKS                       R1 R0 K30 ["RADIUS_REFERENCE_HEIGHT"]
       54 LOADK                            R1 K31 [0.005]
       55 SETTABLEKS                       R1 R0 K32 ["RADIUS_MIN"]
       57 LOADN                            R1 20
       58 SETTABLEKS                       R1 R0 K33 ["RADIUS_MAX"]
       60 LOADK                            R1 K34 [0.2]
       61 SETTABLEKS                       R1 R0 K35 ["BONE_RADIUS_FRACTION"]
       63 LOADK                            R1 K36 [1.025]
       64 SETTABLEKS                       R1 R0 K37 ["SPHERE_STROKE_PCT"]
       66 LOADB                            R1 0
       67 SETTABLEKS                       R1 R0 K38 ["SIZE_ENABLED"]
       69 LOADN                            R1 24
       70 SETTABLEKS                       R1 R0 K39 ["CIRCLE_SEGMENTS"]
       72 LOADK                            R1 K40 [0.7]
       73 SETTABLEKS                       R1 R0 K41 ["MESH_TRANSPARENCY"]
       75 LOADK                            R1 K42 [0.35]
       76 SETTABLEKS                       R1 R0 K43 ["ADORNMENT_TRANSPARENCY"]
       78 DUPTABLE                         R1 K52 [{"BONE_MAPPED", "BONE_UNMAPPED", "BONE_SELECTED", "BONE_MAPPED_HOVER", "BONE_UNMAPPED_HOVER", "BONE_UNMAPPED_DARK", "BONE_OTHER_MAPPED", "BONE_EDGE"}]
       79 GETIMPORT                        R2 K55 [Color3.fromRGB]
       81 LOADN                            R3 230
       82 LOADN                            R4 104
       83 LOADN                            R5 10
       84 CALL                             R2 3 1
       85 SETTABLEKS                       R2 R1 K44 ["BONE_MAPPED"]
       87 GETIMPORT                        R2 K55 [Color3.fromRGB]
       89 LOADN                            R3 128
       90 LOADN                            R4 137
       91 LOADN                            R5 172
       92 CALL                             R2 3 1
       93 SETTABLEKS                       R2 R1 K45 ["BONE_UNMAPPED"]
       95 GETIMPORT                        R2 K55 [Color3.fromRGB]
       97 LOADN                            R3 51
       98 LOADN                            R4 95
       99 LOADN                            R5 255
      100 CALL                             R2 3 1
      101 SETTABLEKS                       R2 R1 K46 ["BONE_SELECTED"]
      103 GETIMPORT                        R2 K55 [Color3.fromRGB]
      105 LOADN                            R3 239
      106 LOADN                            R4 209
      107 LOADN                            R5 184
      108 CALL                             R2 3 1
      109 SETTABLEKS                       R2 R1 K47 ["BONE_MAPPED_HOVER"]
      111 GETIMPORT                        R2 K55 [Color3.fromRGB]
      113 LOADN                            R3 196
      114 LOADN                            R4 201
      115 LOADN                            R5 217
      116 CALL                             R2 3 1
      117 SETTABLEKS                       R2 R1 K48 ["BONE_UNMAPPED_HOVER"]
      119 GETIMPORT                        R2 K55 [Color3.fromRGB]
      121 LOADN                            R3 100
      122 LOADN                            R4 100
      123 LOADN                            R5 100
      124 CALL                             R2 3 1
      125 SETTABLEKS                       R2 R1 K49 ["BONE_UNMAPPED_DARK"]
      127 GETIMPORT                        R2 K55 [Color3.fromRGB]
      129 LOADN                            R3 153
      130 LOADN                            R4 69
      131 LOADN                            R5 7
      132 CALL                             R2 3 1
      133 SETTABLEKS                       R2 R1 K50 ["BONE_OTHER_MAPPED"]
      135 GETIMPORT                        R2 K55 [Color3.fromRGB]
      137 LOADN                            R3 68
      138 LOADN                            R4 73
      139 LOADN                            R5 100
      140 CALL                             R2 3 1
      141 SETTABLEKS                       R2 R1 K51 ["BONE_EDGE"]
      143 SETTABLEKS                       R1 R0 K56 ["Colors"]
      145 RETURN                           R0 1
