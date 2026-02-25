MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R3 R1 K7 ["Style"]
       20 GETTABLEKS                       R2 R3 K8 ["StyleKey"]
       22 DUPTABLE                         R3 K18 [{"RowHeight", "HoverColor", "SelectedColor", "SelectedTextColor", "HeadingColor", "BorderColor", "Indent", "IconPadding", "Arrow"}]
       23 LOADN                            R4 24
       24 SETTABLEKS                       R4 R3 K9 ["RowHeight"]
       26 GETTABLEKS                       R4 R2 K19 ["ButtonHover"]
       28 SETTABLEKS                       R4 R3 K10 ["HoverColor"]
       30 GETTABLEKS                       R4 R2 K20 ["DialogMainButton"]
       32 SETTABLEKS                       R4 R3 K11 ["SelectedColor"]
       34 GETTABLEKS                       R4 R2 K21 ["DialogMainButtonText"]
       36 SETTABLEKS                       R4 R3 K12 ["SelectedTextColor"]
       38 GETTABLEKS                       R4 R2 K22 ["CategoryItem"]
       40 SETTABLEKS                       R4 R3 K13 ["HeadingColor"]
       42 GETTABLEKS                       R4 R2 K23 ["Border"]
       44 SETTABLEKS                       R4 R3 K14 ["BorderColor"]
       46 LOADN                            R4 20
       47 SETTABLEKS                       R4 R3 K15 ["Indent"]
       49 LOADN                            R4 5
       50 SETTABLEKS                       R4 R3 K16 ["IconPadding"]
       52 DUPTABLE                         R4 K29 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color"}]
       53 LOADK                            R5 K30 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
       54 SETTABLEKS                       R5 R4 K24 ["Image"]
       56 LOADN                            R5 12
       57 SETTABLEKS                       R5 R4 K25 ["Size"]
       59 GETIMPORT                        R5 K33 [Vector2.new]
       61 LOADN                            R6 24
       62 LOADN                            R7 0
       63 CALL                             R5 2 1
       64 SETTABLEKS                       R5 R4 K26 ["ExpandedOffset"]
       66 GETIMPORT                        R5 K33 [Vector2.new]
       68 LOADN                            R6 12
       69 LOADN                            R7 0
       70 CALL                             R5 2 1
       71 SETTABLEKS                       R5 R4 K27 ["CollapsedOffset"]
       73 GETTABLEKS                       R5 R2 K34 ["MainText"]
       75 SETTABLEKS                       R5 R4 K28 ["Color"]
       77 SETTABLEKS                       R4 R3 K17 ["Arrow"]
       79 RETURN                           R3 1
