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
       22 DUPTABLE                         R3 K20 [{["RowHeight"] = 24, ["HoverColor"], ["SelectedColor"], ["SelectedTextColor"], ["BackgroundColor"], ["HeadingColor"], ["BorderColor"], ["Indent"] = 20, ["Arrow"]}]
       23 GETTABLEKS                       R4 R2 K21 ["ButtonHover"]
       25 SETTABLEKS                       R4 R3 K11 ["HoverColor"]
       27 GETTABLEKS                       R4 R2 K22 ["DialogMainButton"]
       29 SETTABLEKS                       R4 R3 K12 ["SelectedColor"]
       31 GETTABLEKS                       R4 R2 K23 ["DialogMainButtonText"]
       33 SETTABLEKS                       R4 R3 K13 ["SelectedTextColor"]
       35 GETTABLEKS                       R4 R2 K24 ["MainBackground"]
       37 SETTABLEKS                       R4 R3 K14 ["BackgroundColor"]
       39 GETTABLEKS                       R4 R2 K25 ["CategoryItem"]
       41 SETTABLEKS                       R4 R3 K15 ["HeadingColor"]
       43 GETTABLEKS                       R4 R2 K26 ["Border"]
       45 SETTABLEKS                       R4 R3 K16 ["BorderColor"]
       47 DUPTABLE                         R4 K34 [{["Image"] = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", ["Size"] = 12, ["ExpandedOffset"], ["CollapsedOffset"], ["Color"]}]
       48 GETIMPORT                        R5 K37 [Vector2.new]
       50 LOADN                            R6 24
       51 LOADN                            R7 0
       52 CALL                             R5 2 1
       53 SETTABLEKS                       R5 R4 K31 ["ExpandedOffset"]
       55 GETIMPORT                        R5 K37 [Vector2.new]
       57 LOADN                            R6 12
       58 LOADN                            R7 0
       59 CALL                             R5 2 1
       60 SETTABLEKS                       R5 R4 K32 ["CollapsedOffset"]
       62 GETTABLEKS                       R5 R2 K38 ["MainText"]
       64 SETTABLEKS                       R5 R4 K33 ["Color"]
       66 SETTABLEKS                       R4 R3 K19 ["Arrow"]
       68 RETURN                           R3 1
