MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["MaterialFramework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Enums"]
       16 GETTABLEKS                       R2 R3 K9 ["MaterialPreviewGeometryType"]
       18 DUPTABLE                         R3 K25 [{"TOOLBAR_HEIGHT", "PROMPT_HEIGHT", "SETTING_GEOMETRY_TYPE", "SETTING_GEOMETRY_TYPE_DEFAULT", "EDITOR_WIDTH", "EDITOR_HEIGHT", "PLUGIN_SIZE", "PLUGIN_MIN_SIZE", "MATERIALS_FOLDER_NAME", "GENERATION_SAMPLES", "INSTANCE_NAME_MAX_LENGTH", "STUDS_PER_TILE_MAX", "STUDS_PER_TILE_MIN", "STUDS_PER_TILE_SNAP_INCREMENT", "SUPPORTED_MATERIALS"}]
       19 LOADN                            R4 32
       20 SETTABLEKS                       R4 R3 K10 ["TOOLBAR_HEIGHT"]
       22 LOADN                            R4 102
       23 SETTABLEKS                       R4 R3 K11 ["PROMPT_HEIGHT"]
       25 LOADK                            R4 K26 ["MaterialGenerator_GeometryType"]
       26 SETTABLEKS                       R4 R3 K12 ["SETTING_GEOMETRY_TYPE"]
       28 GETTABLEKS                       R5 R2 K27 ["Plane"]
       30 GETTABLEKS                       R4 R5 K28 ["rawValue"]
       32 CALL                             R4 0 1
       33 SETTABLEKS                       R4 R3 K13 ["SETTING_GEOMETRY_TYPE_DEFAULT"]
       35 LOADN                            R4 44
       36 SETTABLEKS                       R4 R3 K14 ["EDITOR_WIDTH"]
       38 LOADN                            R4 28
       39 SETTABLEKS                       R4 R3 K15 ["EDITOR_HEIGHT"]
       41 GETIMPORT                        R4 K31 [Vector2.new]
       43 LOADN                            R5 88
       44 LOADN                            R6 28
       45 CALL                             R4 2 1
       46 SETTABLEKS                       R4 R3 K16 ["PLUGIN_SIZE"]
       48 GETIMPORT                        R4 K31 [Vector2.new]
       50 LOADN                            R5 44
       51 LOADN                            R6 44
       52 CALL                             R4 2 1
       53 SETTABLEKS                       R4 R3 K17 ["PLUGIN_MIN_SIZE"]
       55 LOADK                            R4 K32 ["Material Generator"]
       56 SETTABLEKS                       R4 R3 K18 ["MATERIALS_FOLDER_NAME"]
       58 LOADN                            R4 4
       59 SETTABLEKS                       R4 R3 K19 ["GENERATION_SAMPLES"]
       61 LOADN                            R4 100
       62 SETTABLEKS                       R4 R3 K20 ["INSTANCE_NAME_MAX_LENGTH"]
       64 LOADN                            R4 20
       65 SETTABLEKS                       R4 R3 K21 ["STUDS_PER_TILE_MAX"]
       67 LOADK                            R4 K33 [0.1]
       68 SETTABLEKS                       R4 R3 K22 ["STUDS_PER_TILE_MIN"]
       70 LOADK                            R4 K33 [0.1]
       71 SETTABLEKS                       R4 R3 K23 ["STUDS_PER_TILE_SNAP_INCREMENT"]
       73 NEWTABLE                         R4 0 32
       75 GETIMPORT                        R5 K37 [Enum.Material.Asphalt]
       77 GETIMPORT                        R6 K39 [Enum.Material.Basalt]
       79 GETIMPORT                        R7 K41 [Enum.Material.Brick]
       81 GETIMPORT                        R8 K43 [Enum.Material.Cobblestone]
       83 GETIMPORT                        R9 K45 [Enum.Material.Concrete]
       85 GETIMPORT                        R10 K47 [Enum.Material.CorrodedMetal]
       87 GETIMPORT                        R11 K49 [Enum.Material.CrackedLava]
       89 GETIMPORT                        R12 K51 [Enum.Material.DiamondPlate]
       91 GETIMPORT                        R13 K53 [Enum.Material.Fabric]
       93 GETIMPORT                        R14 K55 [Enum.Material.Foil]
       95 GETIMPORT                        R15 K57 [Enum.Material.Glacier]
       97 GETIMPORT                        R16 K59 [Enum.Material.Granite]
       99 GETIMPORT                        R17 K61 [Enum.Material.Grass]
      101 GETIMPORT                        R18 K63 [Enum.Material.Ground]
      103 GETIMPORT                        R19 K65 [Enum.Material.Ice]
      105 GETIMPORT                        R20 K67 [Enum.Material.LeafyGrass]
      107 SETLIST                          R4 R5 16 [1]
      109 GETIMPORT                        R5 K69 [Enum.Material.Limestone]
      111 GETIMPORT                        R6 K71 [Enum.Material.Marble]
      113 GETIMPORT                        R7 K73 [Enum.Material.Metal]
      115 GETIMPORT                        R8 K75 [Enum.Material.Mud]
      117 GETIMPORT                        R9 K77 [Enum.Material.Pavement]
      119 GETIMPORT                        R10 K79 [Enum.Material.Pebble]
      121 GETIMPORT                        R11 K81 [Enum.Material.Plastic]
      123 GETIMPORT                        R12 K83 [Enum.Material.Rock]
      125 GETIMPORT                        R13 K85 [Enum.Material.Salt]
      127 GETIMPORT                        R14 K87 [Enum.Material.Sand]
      129 GETIMPORT                        R15 K89 [Enum.Material.Sandstone]
      131 GETIMPORT                        R16 K91 [Enum.Material.Slate]
      133 GETIMPORT                        R17 K93 [Enum.Material.SmoothPlastic]
      135 GETIMPORT                        R18 K95 [Enum.Material.Snow]
      137 GETIMPORT                        R19 K97 [Enum.Material.Wood]
      139 GETIMPORT                        R20 K99 [Enum.Material.WoodPlanks]
      141 SETLIST                          R4 R5 16 [17]
      143 SETTABLEKS                       R4 R3 K24 ["SUPPORTED_MATERIALS"]
      145 RETURN                           R3 1
