MAIN:
  PREPVARARGS 0
  NEWTABLE R0 16 0
  LOADK R1 K0 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/mirror_to_left@3x.png"]
  SETTABLEKS R1 R0 K1 ["MIRROR_TO_LEFT"]
  LOADK R1 K2 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/mirror_to_right@3x.png"]
  SETTABLEKS R1 R0 K3 ["MIRROR_TO_RIGHT"]
  LOADK R1 K4 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/symmetry@3x.png"]
  SETTABLEKS R1 R0 K5 ["SYMMETRY"]
  LOADK R1 K6 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/reset@3x.png"]
  SETTABLEKS R1 R0 K7 ["RESET"]
  LOADK R1 K8 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/magic@3x.png"]
  SETTABLEKS R1 R0 K9 ["MAGIC"]
  LOADK R1 K10 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/mapping@3x.png"]
  SETTABLEKS R1 R0 K11 ["MAPPING"]
  LOADK R1 K12 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/tpose@3x.png"]
  SETTABLEKS R1 R0 K13 ["TPOSE"]
  LOADK R1 K14 ["rbxasset://studio_svg_textures/Lua/AdaptiveAnimationSupport/Dark/Standard/size@3x.png"]
  SETTABLEKS R1 R0 K15 ["SIZE"]
  LOADK R1 K16 ["rbxasset://textures/AdaptiveAnimationSupport/mannequin.png"]
  SETTABLEKS R1 R0 K17 ["MANNEQUIN"]
  LOADK R1 K18 ["TposeAdjustment"]
  SETTABLEKS R1 R0 K19 ["TPOSE_ADJUSTMENT_SUFFIX"]
  LOADK R1 K20 ["Size"]
  SETTABLEKS R1 R0 K21 ["SIZE_SUFFIX"]
  LOADN R1 16
  SETTABLEKS R1 R0 K22 ["DISPLAY_ORDER_MANNEQUIN"]
  LOADB R1 0
  SETTABLEKS R1 R0 K23 ["SIZE_ENABLED"]
  DUPTABLE R1 K31 [{"BONE_MAPPED", "BONE_UNMAPPED", "BONE_SELECTED", "BONE_MAPPED_HOVER", "BONE_UNMAPPED_HOVER", "BONE_UNMAPPED_DARK", "BONE_EDGE"}]
  GETIMPORT R2 K34 [Color3.fromRGB]
  LOADN R3 230
  LOADN R4 104
  LOADN R5 10
  CALL R2 3 1
  SETTABLEKS R2 R1 K24 ["BONE_MAPPED"]
  GETIMPORT R2 K34 [Color3.fromRGB]
  LOADN R3 128
  LOADN R4 137
  LOADN R5 172
  CALL R2 3 1
  SETTABLEKS R2 R1 K25 ["BONE_UNMAPPED"]
  GETIMPORT R2 K34 [Color3.fromRGB]
  LOADN R3 51
  LOADN R4 95
  LOADN R5 255
  CALL R2 3 1
  SETTABLEKS R2 R1 K26 ["BONE_SELECTED"]
  GETIMPORT R2 K34 [Color3.fromRGB]
  LOADN R3 239
  LOADN R4 209
  LOADN R5 184
  CALL R2 3 1
  SETTABLEKS R2 R1 K27 ["BONE_MAPPED_HOVER"]
  GETIMPORT R2 K34 [Color3.fromRGB]
  LOADN R3 196
  LOADN R4 201
  LOADN R5 217
  CALL R2 3 1
  SETTABLEKS R2 R1 K28 ["BONE_UNMAPPED_HOVER"]
  GETIMPORT R2 K34 [Color3.fromRGB]
  LOADN R3 100
  LOADN R4 100
  LOADN R5 100
  CALL R2 3 1
  SETTABLEKS R2 R1 K29 ["BONE_UNMAPPED_DARK"]
  GETIMPORT R2 K34 [Color3.fromRGB]
  LOADN R3 68
  LOADN R4 73
  LOADN R5 100
  CALL R2 3 1
  SETTABLEKS R2 R1 K30 ["BONE_EDGE"]
  SETTABLEKS R1 R0 K35 ["Colors"]
  RETURN R0 1
