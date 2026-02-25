MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
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
       30 LOADK                            R1 K18 ["TposeAdjustment"]
       31 SETTABLEKS                       R1 R0 K19 ["TPOSE_ADJUSTMENT_SUFFIX"]
       33 LOADK                            R1 K20 ["Size"]
       34 SETTABLEKS                       R1 R0 K21 ["SIZE_SUFFIX"]
       36 LOADN                            R1 16
       37 SETTABLEKS                       R1 R0 K22 ["DISPLAY_ORDER_MANNEQUIN"]
       39 LOADB                            R1 0
       40 SETTABLEKS                       R1 R0 K23 ["SIZE_ENABLED"]
       42 DUPTABLE                         R1 K31 [{"BONE_MAPPED", "BONE_UNMAPPED", "BONE_SELECTED", "BONE_MAPPED_HOVER", "BONE_UNMAPPED_HOVER", "BONE_UNMAPPED_DARK", "BONE_EDGE"}]
       43 GETIMPORT                        R2 K34 [Color3.fromRGB]
       45 LOADN                            R3 230
       46 LOADN                            R4 104
       47 LOADN                            R5 10
       48 CALL                             R2 3 1
       49 SETTABLEKS                       R2 R1 K24 ["BONE_MAPPED"]
       51 GETIMPORT                        R2 K34 [Color3.fromRGB]
       53 LOADN                            R3 128
       54 LOADN                            R4 137
       55 LOADN                            R5 172
       56 CALL                             R2 3 1
       57 SETTABLEKS                       R2 R1 K25 ["BONE_UNMAPPED"]
       59 GETIMPORT                        R2 K34 [Color3.fromRGB]
       61 LOADN                            R3 51
       62 LOADN                            R4 95
       63 LOADN                            R5 255
       64 CALL                             R2 3 1
       65 SETTABLEKS                       R2 R1 K26 ["BONE_SELECTED"]
       67 GETIMPORT                        R2 K34 [Color3.fromRGB]
       69 LOADN                            R3 239
       70 LOADN                            R4 209
       71 LOADN                            R5 184
       72 CALL                             R2 3 1
       73 SETTABLEKS                       R2 R1 K27 ["BONE_MAPPED_HOVER"]
       75 GETIMPORT                        R2 K34 [Color3.fromRGB]
       77 LOADN                            R3 196
       78 LOADN                            R4 201
       79 LOADN                            R5 217
       80 CALL                             R2 3 1
       81 SETTABLEKS                       R2 R1 K28 ["BONE_UNMAPPED_HOVER"]
       83 GETIMPORT                        R2 K34 [Color3.fromRGB]
       85 LOADN                            R3 100
       86 LOADN                            R4 100
       87 LOADN                            R5 100
       88 CALL                             R2 3 1
       89 SETTABLEKS                       R2 R1 K29 ["BONE_UNMAPPED_DARK"]
       91 GETIMPORT                        R2 K34 [Color3.fromRGB]
       93 LOADN                            R3 68
       94 LOADN                            R4 73
       95 LOADN                            R5 100
       96 CALL                             R2 3 1
       97 SETTABLEKS                       R2 R1 K30 ["BONE_EDGE"]
       99 SETTABLEKS                       R1 R0 K35 ["Colors"]
      101 RETURN                           R0 1
