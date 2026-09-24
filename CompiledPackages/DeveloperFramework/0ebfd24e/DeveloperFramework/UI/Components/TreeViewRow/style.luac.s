MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleModifier"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Style"]
       20 GETTABLEKS                       R3 R3 K10 ["StyleKey"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 16 0
       25 DUPTABLE                         R4 K18 [{["Image"] = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", ["Size"] = 12, ["ExpandedOffset"], ["CollapsedOffset"], ["Color"]}]
       26 GETIMPORT                        R5 K21 [Vector2.new]
       28 LOADN                            R6 24
       29 LOADN                            R7 0
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K15 ["ExpandedOffset"]
       33 GETIMPORT                        R5 K21 [Vector2.new]
       35 LOADN                            R6 12
       36 LOADN                            R7 0
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R4 K16 ["CollapsedOffset"]
       40 GETTABLEKS                       R5 R2 K22 ["MainText"]
       42 SETTABLEKS                       R5 R4 K17 ["Color"]
       44 SETTABLEKS                       R4 R3 K23 ["Arrow"]
       46 GETTABLEKS                       R4 R2 K24 ["SubBackground"]
       48 SETTABLEKS                       R4 R3 K25 ["Border"]
       50 GETTABLEKS                       R4 R2 K26 ["MainBackground"]
       52 SETTABLEKS                       R4 R3 K27 ["Background"]
       54 LOADN                            R4 17
       55 SETTABLEKS                       R4 R3 K28 ["Indent"]
       57 GETTABLEKS                       R4 R1 K29 ["Hover"]
       59 DUPTABLE                         R5 K30 [{"Background"}]
       60 GETTABLEKS                       R6 R2 K31 ["ButtonHover"]
       62 SETTABLEKS                       R6 R5 K27 ["Background"]
       64 SETTABLE                         R5 R3 R4
       65 GETTABLEKS                       R4 R1 K32 ["Selected"]
       67 DUPTABLE                         R5 K30 [{"Background"}]
       68 GETTABLEKS                       R6 R2 K33 ["ActionSelected"]
       70 SETTABLEKS                       R6 R5 K27 ["Background"]
       72 SETTABLE                         R5 R3 R4
       73 DUPTABLE                         R4 K36 [{["MaxWidth"] = 1000}]
       74 SETTABLEKS                       R4 R3 K37 ["Tooltip"]
       76 LOADN                            R4 24
       77 SETTABLEKS                       R4 R3 K38 ["RowHeight"]
       79 LOADN                            R4 5
       80 SETTABLEKS                       R4 R3 K39 ["Spacing"]
       82 DUPTABLE                         R4 K47 [{["Top"] = 0, ["Bottom"] = 0, ["Left"] = 3, ["Right"] = 10}]
       83 SETTABLEKS                       R4 R3 K48 ["TailPadding"]
       85 DUPTABLE                         R4 K51 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 5, ["Right"] = 5}]
       86 SETTABLEKS                       R4 R3 K52 ["Padding"]
       88 RETURN                           R3 1
