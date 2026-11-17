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
       16 DUPTABLE                         R2 K18 [{["Arrow"], ["Indent"] = 20, ["CellSpacing"] = 5, ["CellPadding"], ["SchemaCellPadding"], ["IconSize"] = 24}]
       17 DUPTABLE                         R3 K26 [{["Image"] = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", ["Size"] = 12, ["ExpandedOffset"], ["CollapsedOffset"], ["Color"]}]
       18 GETIMPORT                        R4 K29 [Vector2.new]
       20 LOADN                            R5 24
       21 LOADN                            R6 0
       22 CALL                             R4 2 1
       23 SETTABLEKS                       R4 R3 K23 ["ExpandedOffset"]
       25 GETIMPORT                        R4 K29 [Vector2.new]
       27 LOADN                            R5 12
       28 LOADN                            R6 0
       29 CALL                             R4 2 1
       30 SETTABLEKS                       R4 R3 K24 ["CollapsedOffset"]
       32 GETTABLEKS                       R4 R1 K30 ["MainText"]
       34 SETTABLEKS                       R4 R3 K25 ["Color"]
       36 SETTABLEKS                       R3 R2 K9 ["Arrow"]
       38 DUPTABLE                         R3 K36 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 5, ["Right"] = 5}]
       39 SETTABLEKS                       R3 R2 K14 ["CellPadding"]
       41 DUPTABLE                         R3 K37 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 1, ["Right"] = 1}]
       42 SETTABLEKS                       R3 R2 K15 ["SchemaCellPadding"]
       44 RETURN                           R2 1
