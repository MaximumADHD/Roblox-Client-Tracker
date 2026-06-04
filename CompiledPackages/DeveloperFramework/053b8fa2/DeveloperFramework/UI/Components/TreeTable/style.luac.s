MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K15 [{"Arrow", "Indent", "CellSpacing", "CellPadding", "SchemaCellPadding", "IconSize"}]
       17 DUPTABLE                         R3 K21 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color"}]
       18 LOADK                            R4 K22 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
       19 SETTABLEKS                       R4 R3 K16 ["Image"]
       21 LOADN                            R4 12
       22 SETTABLEKS                       R4 R3 K17 ["Size"]
       24 GETIMPORT                        R4 K25 [Vector2.new]
       26 LOADN                            R5 24
       27 LOADN                            R6 0
       28 CALL                             R4 2 1
       29 SETTABLEKS                       R4 R3 K18 ["ExpandedOffset"]
       31 GETIMPORT                        R4 K25 [Vector2.new]
       33 LOADN                            R5 12
       34 LOADN                            R6 0
       35 CALL                             R4 2 1
       36 SETTABLEKS                       R4 R3 K19 ["CollapsedOffset"]
       38 GETTABLEKS                       R4 R1 K26 ["MainText"]
       40 SETTABLEKS                       R4 R3 K20 ["Color"]
       42 SETTABLEKS                       R3 R2 K9 ["Arrow"]
       44 LOADN                            R3 20
       45 SETTABLEKS                       R3 R2 K10 ["Indent"]
       47 LOADN                            R3 5
       48 SETTABLEKS                       R3 R2 K11 ["CellSpacing"]
       50 DUPTABLE                         R3 K31 [{"Top", "Bottom", "Left", "Right"}]
       51 LOADN                            R4 1
       52 SETTABLEKS                       R4 R3 K27 ["Top"]
       54 LOADN                            R4 1
       55 SETTABLEKS                       R4 R3 K28 ["Bottom"]
       57 LOADN                            R4 5
       58 SETTABLEKS                       R4 R3 K29 ["Left"]
       60 LOADN                            R4 5
       61 SETTABLEKS                       R4 R3 K30 ["Right"]
       63 SETTABLEKS                       R3 R2 K12 ["CellPadding"]
       65 DUPTABLE                         R3 K31 [{"Top", "Bottom", "Left", "Right"}]
       66 LOADN                            R4 1
       67 SETTABLEKS                       R4 R3 K27 ["Top"]
       69 LOADN                            R4 1
       70 SETTABLEKS                       R4 R3 K28 ["Bottom"]
       72 LOADN                            R4 1
       73 SETTABLEKS                       R4 R3 K29 ["Left"]
       75 LOADN                            R4 1
       76 SETTABLEKS                       R4 R3 K30 ["Right"]
       78 SETTABLEKS                       R3 R2 K13 ["SchemaCellPadding"]
       80 LOADN                            R3 24
       81 SETTABLEKS                       R3 R2 K14 ["IconSize"]
       83 RETURN                           R2 1
