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
       22 DUPTABLE                         R3 K21 [{["RowHeight"] = 24, ["HoverColor"], ["SelectedColor"], ["SelectedTextColor"], ["HeadingColor"], ["BorderColor"], ["Indent"] = 20, ["IconPadding"] = 5, ["Arrow"]}]
       23 GETTABLEKS                       R4 R2 K22 ["ButtonHover"]
       25 SETTABLEKS                       R4 R3 K11 ["HoverColor"]
       27 GETTABLEKS                       R4 R2 K23 ["DialogMainButton"]
       29 SETTABLEKS                       R4 R3 K12 ["SelectedColor"]
       31 GETTABLEKS                       R4 R2 K24 ["DialogMainButtonText"]
       33 SETTABLEKS                       R4 R3 K13 ["SelectedTextColor"]
       35 GETTABLEKS                       R4 R2 K25 ["CategoryItem"]
       37 SETTABLEKS                       R4 R3 K14 ["HeadingColor"]
       39 GETTABLEKS                       R4 R2 K26 ["Border"]
       41 SETTABLEKS                       R4 R3 K15 ["BorderColor"]
       43 DUPTABLE                         R4 K34 [{["Image"] = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", ["Size"] = 12, ["ExpandedOffset"], ["CollapsedOffset"], ["Color"]}]
       44 GETIMPORT                        R5 K37 [Vector2.new]
       46 LOADN                            R6 24
       47 LOADN                            R7 0
       48 CALL                             R5 2 1
       49 SETTABLEKS                       R5 R4 K31 ["ExpandedOffset"]
       51 GETIMPORT                        R5 K37 [Vector2.new]
       53 LOADN                            R6 12
       54 LOADN                            R7 0
       55 CALL                             R5 2 1
       56 SETTABLEKS                       R5 R4 K32 ["CollapsedOffset"]
       58 GETTABLEKS                       R5 R2 K38 ["MainText"]
       60 SETTABLEKS                       R5 R4 K33 ["Color"]
       62 SETTABLEKS                       R4 R3 K20 ["Arrow"]
       64 RETURN                           R3 1
