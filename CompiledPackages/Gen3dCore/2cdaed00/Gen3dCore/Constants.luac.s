MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Gen3dTypes"]
        9 CALL                             R0 1 1
       10 DUPTABLE                         R1 K10 [{["RbxTexture1"] = "rbx-texture-1", ["RbxTexture2"] = "rbx-texture-2"}]
       11 DUPTABLE                         R2 K19 [{["Minimal"] = "minimal", ["Low"] = "low", ["Medium"] = "medium", ["High"] = "high"}]
       12 NEWTABLE                         R3 0 4
       14 GETTABLEKS                       R4 R2 K11 ["Minimal"]
       16 GETTABLEKS                       R5 R2 K13 ["Low"]
       18 GETTABLEKS                       R6 R2 K15 ["Medium"]
       20 GETTABLEKS                       R7 R2 K17 ["High"]
       22 SETLIST                          R3 R4 4 [1]
       24 NEWTABLE                         R4 4 0
       26 GETTABLEKS                       R5 R2 K11 ["Minimal"]
       28 GETTABLEKS                       R6 R2 K11 ["Minimal"]
       30 SETTABLE                         R6 R4 R5
       31 GETTABLEKS                       R5 R2 K13 ["Low"]
       33 GETTABLEKS                       R6 R2 K13 ["Low"]
       35 SETTABLE                         R6 R4 R5
       36 GETTABLEKS                       R5 R2 K15 ["Medium"]
       38 GETTABLEKS                       R6 R2 K15 ["Medium"]
       40 SETTABLE                         R6 R4 R5
       41 GETTABLEKS                       R5 R2 K17 ["High"]
       43 GETTABLEKS                       R6 R2 K17 ["High"]
       45 SETTABLE                         R6 R4 R5
       46 DUPTABLE                         R5 K57 [{["Enums"], ["POLL_INTERVAL_SEC"] = 3, ["MAX_POLL_ATTEMPTS"] = 120, ["ATTRIBUTE_AI_GENERATED"] = "RBX_AI_GENERATED", ["ATTRIBUTE_AI_GENERATION_TYPE"] = "RBX_AI_GENERATION_TYPE", ["ATTRIBUTE_AI_GENERATION_ID"] = "RBX_AI_GENERATION_ID", ["TAG_AI_GENERATED_ASSET"] = "RBXAIGeneratedAsset", ["STATUS_COMPLETED"] = "Completed", ["STATUS_FAILED"] = "Failed", ["STATUS_CANCELED"] = "Canceled", ["AI_GENERATION_TYPE_LAYOUT"] = "Layout", ["LAYOUT_MAX_POLL_ATTEMPTS"] = 240, ["SEED_IMAGE_PREVIEW_AZIMUTH"] = 45, ["SEED_IMAGE_PREVIEW_ELEVATION"] = 30, ["TEXTURE_CAMERA_CANVAS_PX"] = 1024, ["TEXTURE_CAMERA_SHIFT_SCALE"] = 0.5, ["DEFAULT_TEXTURE_GEN_MODEL"], ["DEFAULT_SCENE_QUALITY"], ["SCENE_QUALITY_OPTIONS"], ["SCENE_QUALITY_BY_VALUE"], ["DEFAULT_SCENE_SIZE"] = {2048, 32, 2048}}]
       47 DUPTABLE                         R6 K60 [{"TextureGenModel", "SceneQuality"}]
       48 SETTABLEKS                       R1 R6 K58 ["TextureGenModel"]
       50 SETTABLEKS                       R2 R6 K59 ["SceneQuality"]
       52 SETTABLEKS                       R6 R5 K20 ["Enums"]
       54 GETTABLEKS                       R6 R1 K6 ["RbxTexture1"]
       56 SETTABLEKS                       R6 R5 K51 ["DEFAULT_TEXTURE_GEN_MODEL"]
       58 GETTABLEKS                       R6 R2 K13 ["Low"]
       60 SETTABLEKS                       R6 R5 K52 ["DEFAULT_SCENE_QUALITY"]
       62 SETTABLEKS                       R3 R5 K53 ["SCENE_QUALITY_OPTIONS"]
       64 SETTABLEKS                       R4 R5 K54 ["SCENE_QUALITY_BY_VALUE"]
       66 RETURN                           R5 1
