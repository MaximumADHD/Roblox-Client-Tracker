MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["MaterialFramework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Enums"]
       16 GETTABLEKS                       R2 R2 K9 ["MaterialPreviewGeometryType"]
       18 DUPTABLE                         R3 K35 [{["TOOLBAR_HEIGHT"] = 32, ["PROMPT_HEIGHT"] = 102, ["SETTING_GEOMETRY_TYPE"] = "MaterialGenerator_GeometryType", ["SETTING_GEOMETRY_TYPE_DEFAULT"], ["EDITOR_WIDTH"] = 300, ["EDITOR_HEIGHT"] = 540, ["PLUGIN_SIZE"], ["PLUGIN_MIN_SIZE"], ["MATERIALS_FOLDER_NAME"] = "Material Generator", ["GENERATION_SAMPLES"] = 4, ["INSTANCE_NAME_MAX_LENGTH"] = 100, ["STUDS_PER_TILE_MAX"] = 20, ["STUDS_PER_TILE_MIN"] = 0.1, ["STUDS_PER_TILE_SNAP_INCREMENT"] = 0.1, ["SUPPORTED_MATERIALS"]}]
       19 GETTABLEKS                       R4 R2 K36 ["Plane"]
       21 GETTABLEKS                       R4 R4 K37 ["rawValue"]
       23 CALL                             R4 0 1
       24 SETTABLEKS                       R4 R3 K16 ["SETTING_GEOMETRY_TYPE_DEFAULT"]
       26 GETIMPORT                        R4 K40 [Vector2.new]
       28 LOADN                            R5 600
       29 LOADN                            R6 540
       30 CALL                             R4 2 1
       31 SETTABLEKS                       R4 R3 K21 ["PLUGIN_SIZE"]
       33 GETIMPORT                        R4 K40 [Vector2.new]
       35 LOADN                            R5 300
       36 LOADN                            R6 300
       37 CALL                             R4 2 1
       38 SETTABLEKS                       R4 R3 K22 ["PLUGIN_MIN_SIZE"]
       40 NEWTABLE                         R4 0 32
       42 GETIMPORT                        R5 K44 [Enum.Material.Asphalt]
       44 GETIMPORT                        R6 K46 [Enum.Material.Basalt]
       46 GETIMPORT                        R7 K48 [Enum.Material.Brick]
       48 GETIMPORT                        R8 K50 [Enum.Material.Cobblestone]
       50 GETIMPORT                        R9 K52 [Enum.Material.Concrete]
       52 GETIMPORT                        R10 K54 [Enum.Material.CorrodedMetal]
       54 GETIMPORT                        R11 K56 [Enum.Material.CrackedLava]
       56 GETIMPORT                        R12 K58 [Enum.Material.DiamondPlate]
       58 GETIMPORT                        R13 K60 [Enum.Material.Fabric]
       60 GETIMPORT                        R14 K62 [Enum.Material.Foil]
       62 GETIMPORT                        R15 K64 [Enum.Material.Glacier]
       64 GETIMPORT                        R16 K66 [Enum.Material.Granite]
       66 GETIMPORT                        R17 K68 [Enum.Material.Grass]
       68 GETIMPORT                        R18 K70 [Enum.Material.Ground]
       70 GETIMPORT                        R19 K72 [Enum.Material.Ice]
       72 GETIMPORT                        R20 K74 [Enum.Material.LeafyGrass]
       74 SETLIST                          R4 R5 16 [1]
       76 GETIMPORT                        R5 K76 [Enum.Material.Limestone]
       78 GETIMPORT                        R6 K78 [Enum.Material.Marble]
       80 GETIMPORT                        R7 K80 [Enum.Material.Metal]
       82 GETIMPORT                        R8 K82 [Enum.Material.Mud]
       84 GETIMPORT                        R9 K84 [Enum.Material.Pavement]
       86 GETIMPORT                        R10 K86 [Enum.Material.Pebble]
       88 GETIMPORT                        R11 K88 [Enum.Material.Plastic]
       90 GETIMPORT                        R12 K90 [Enum.Material.Rock]
       92 GETIMPORT                        R13 K92 [Enum.Material.Salt]
       94 GETIMPORT                        R14 K94 [Enum.Material.Sand]
       96 GETIMPORT                        R15 K96 [Enum.Material.Sandstone]
       98 GETIMPORT                        R16 K98 [Enum.Material.Slate]
      100 GETIMPORT                        R17 K100 [Enum.Material.SmoothPlastic]
      102 GETIMPORT                        R18 K102 [Enum.Material.Snow]
      104 GETIMPORT                        R19 K104 [Enum.Material.Wood]
      106 GETIMPORT                        R20 K106 [Enum.Material.WoodPlanks]
      108 SETLIST                          R4 R5 16 [17]
      110 SETTABLEKS                       R4 R3 K34 ["SUPPORTED_MATERIALS"]
      112 RETURN                           R3 1
