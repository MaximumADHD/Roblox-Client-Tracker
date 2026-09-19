MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Gen3dTypes"]
        9 CALL                             R0 1 1
       10 DUPTABLE                         R1 K10 [{["RbxTexture1"] = "rbx-texture-1", ["RbxTexture2"] = "rbx-texture-2"}]
       11 DUPTABLE                         R2 K51 [{["Enums"], ["POLL_INTERVAL_SEC"] = 3, ["MAX_POLL_ATTEMPTS"] = 120, ["ATTRIBUTE_AI_GENERATED"] = "RBX_AI_GENERATED", ["ATTRIBUTE_AI_GENERATION_TYPE"] = "RBX_AI_GENERATION_TYPE", ["ATTRIBUTE_AI_GENERATION_ID"] = "RBX_AI_GENERATION_ID", ["TAG_AI_GENERATED_ASSET"] = "RBXAIGeneratedAsset", ["STATUS_COMPLETED"] = "Completed", ["STATUS_FAILED"] = "Failed", ["STATUS_CANCELED"] = "Canceled", ["AI_GENERATION_TYPE_LAYOUT"] = "Layout", ["LAYOUT_MAX_POLL_ATTEMPTS"] = 240, ["LAYOUT_GENERATION_MODEL"] = "quality", ["LAYOUT_MAP_MODEL"] = "cube-layout-image", ["LAYOUT_TOPDOWN_PROMPT_PREFIX"] = "Using the attached isometric image as the layout reference, create a true 90-degree top-down game-map view for: ", ["LAYOUT_MAP_PROMPT_PREFIX"] = "Create a stylized Roblox environment for: ", ["LAYOUT_MAP_PROMPT_SUFFIX"] = ".\nUse a true isometric elevated-orthographic view. Show the complete playable footprint, clear paths and zones, large readable landmarks, and sparse representative props. Square image, axis-aligned map footprint, bright blocky Roblox materials, no characters, UI, text, or watermark. If a reference image is attached, use it as a loose guide for layout and style.", ["LAYOUT_TOPDOWN_PROMPT_SUFFIX"] = ".\nPreserve the exact footprint, object positions, path shapes, sizes, and orientation. Show only top surfaces: no perspective, side faces, walls in elevation, UI, text, or watermark. Use clear flat color zones and strong walkable-versus-blocked contrast. Square image.", ["SEED_IMAGE_PREVIEW_AZIMUTH"] = 45, ["SEED_IMAGE_PREVIEW_ELEVATION"] = 30, ["DEFAULT_TEXTURE_GEN_MODEL"]}]
       12 DUPTABLE                         R3 K53 [{"TextureGenModel"}]
       13 SETTABLEKS                       R1 R3 K52 ["TextureGenModel"]
       15 SETTABLEKS                       R3 R2 K11 ["Enums"]
       17 GETTABLEKS                       R3 R1 K6 ["RbxTexture1"]
       19 SETTABLEKS                       R3 R2 K50 ["DEFAULT_TEXTURE_GEN_MODEL"]
       21 RETURN                           R2 1
