MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Style"]
       20 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       22 DUPTABLE                         R3 K18 [{"RowHeight", "HoverColor", "SelectedColor", "SelectedTextColor", "BackgroundColor", "HeadingColor", "BorderColor", "Indent", "Arrow"}]
       23 LOADN                            R4 24
       24 SETTABLEKS                       R4 R3 K9 ["RowHeight"]
       26 GETTABLEKS                       R4 R2 K19 ["ButtonHover"]
       28 SETTABLEKS                       R4 R3 K10 ["HoverColor"]
       30 GETTABLEKS                       R4 R2 K20 ["DialogMainButton"]
       32 SETTABLEKS                       R4 R3 K11 ["SelectedColor"]
       34 GETTABLEKS                       R4 R2 K21 ["DialogMainButtonText"]
       36 SETTABLEKS                       R4 R3 K12 ["SelectedTextColor"]
       38 GETTABLEKS                       R4 R2 K22 ["MainBackground"]
       40 SETTABLEKS                       R4 R3 K13 ["BackgroundColor"]
       42 GETTABLEKS                       R4 R2 K23 ["CategoryItem"]
       44 SETTABLEKS                       R4 R3 K14 ["HeadingColor"]
       46 GETTABLEKS                       R4 R2 K24 ["Border"]
       48 SETTABLEKS                       R4 R3 K15 ["BorderColor"]
       50 LOADN                            R4 20
       51 SETTABLEKS                       R4 R3 K16 ["Indent"]
       53 DUPTABLE                         R4 K30 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color"}]
       54 LOADK                            R5 K31 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
       55 SETTABLEKS                       R5 R4 K25 ["Image"]
       57 LOADN                            R5 12
       58 SETTABLEKS                       R5 R4 K26 ["Size"]
       60 GETIMPORT                        R5 K34 [Vector2.new]
       62 LOADN                            R6 24
       63 LOADN                            R7 0
       64 CALL                             R5 2 1
       65 SETTABLEKS                       R5 R4 K27 ["ExpandedOffset"]
       67 GETIMPORT                        R5 K34 [Vector2.new]
       69 LOADN                            R6 12
       70 LOADN                            R7 0
       71 CALL                             R5 2 1
       72 SETTABLEKS                       R5 R4 K28 ["CollapsedOffset"]
       74 GETTABLEKS                       R5 R2 K35 ["MainText"]
       76 SETTABLEKS                       R5 R4 K29 ["Color"]
       78 SETTABLEKS                       R4 R3 K17 ["Arrow"]
       80 RETURN                           R3 1
