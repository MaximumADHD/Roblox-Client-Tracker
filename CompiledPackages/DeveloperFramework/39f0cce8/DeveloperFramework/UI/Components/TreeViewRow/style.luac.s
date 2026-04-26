MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleModifier"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Style"]
       20 GETTABLEKS                       R3 R4 K10 ["StyleKey"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 16 0
       25 DUPTABLE                         R4 K16 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color"}]
       26 LOADK                            R5 K17 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
       27 SETTABLEKS                       R5 R4 K11 ["Image"]
       29 LOADN                            R5 12
       30 SETTABLEKS                       R5 R4 K12 ["Size"]
       32 GETIMPORT                        R5 K20 [Vector2.new]
       34 LOADN                            R6 24
       35 LOADN                            R7 0
       36 CALL                             R5 2 1
       37 SETTABLEKS                       R5 R4 K13 ["ExpandedOffset"]
       39 GETIMPORT                        R5 K20 [Vector2.new]
       41 LOADN                            R6 12
       42 LOADN                            R7 0
       43 CALL                             R5 2 1
       44 SETTABLEKS                       R5 R4 K14 ["CollapsedOffset"]
       46 GETTABLEKS                       R5 R2 K21 ["MainText"]
       48 SETTABLEKS                       R5 R4 K15 ["Color"]
       50 SETTABLEKS                       R4 R3 K22 ["Arrow"]
       52 GETTABLEKS                       R4 R2 K23 ["SubBackground"]
       54 SETTABLEKS                       R4 R3 K24 ["Border"]
       56 GETTABLEKS                       R4 R2 K25 ["MainBackground"]
       58 SETTABLEKS                       R4 R3 K26 ["Background"]
       60 LOADN                            R4 17
       61 SETTABLEKS                       R4 R3 K27 ["Indent"]
       63 GETTABLEKS                       R4 R1 K28 ["Hover"]
       65 DUPTABLE                         R5 K29 [{"Background"}]
       66 GETTABLEKS                       R6 R2 K30 ["ButtonHover"]
       68 SETTABLEKS                       R6 R5 K26 ["Background"]
       70 SETTABLE                         R5 R3 R4
       71 GETTABLEKS                       R4 R1 K31 ["Selected"]
       73 DUPTABLE                         R5 K29 [{"Background"}]
       74 GETTABLEKS                       R6 R2 K32 ["ActionSelected"]
       76 SETTABLEKS                       R6 R5 K26 ["Background"]
       78 SETTABLE                         R5 R3 R4
       79 DUPTABLE                         R4 K34 [{"MaxWidth"}]
       80 LOADN                            R5 232
       81 SETTABLEKS                       R5 R4 K33 ["MaxWidth"]
       83 SETTABLEKS                       R4 R3 K35 ["Tooltip"]
       85 LOADN                            R4 24
       86 SETTABLEKS                       R4 R3 K36 ["RowHeight"]
       88 LOADN                            R4 5
       89 SETTABLEKS                       R4 R3 K37 ["Spacing"]
       91 DUPTABLE                         R4 K42 [{"Top", "Bottom", "Left", "Right"}]
       92 LOADN                            R5 0
       93 SETTABLEKS                       R5 R4 K38 ["Top"]
       95 LOADN                            R5 0
       96 SETTABLEKS                       R5 R4 K39 ["Bottom"]
       98 LOADN                            R5 3
       99 SETTABLEKS                       R5 R4 K40 ["Left"]
      101 LOADN                            R5 10
      102 SETTABLEKS                       R5 R4 K41 ["Right"]
      104 SETTABLEKS                       R4 R3 K43 ["TailPadding"]
      106 DUPTABLE                         R4 K42 [{"Top", "Bottom", "Left", "Right"}]
      107 LOADN                            R5 1
      108 SETTABLEKS                       R5 R4 K38 ["Top"]
      110 LOADN                            R5 1
      111 SETTABLEKS                       R5 R4 K39 ["Bottom"]
      113 LOADN                            R5 5
      114 SETTABLEKS                       R5 R4 K40 ["Left"]
      116 LOADN                            R5 5
      117 SETTABLEKS                       R5 R4 K41 ["Right"]
      119 SETTABLEKS                       R4 R3 K44 ["Padding"]
      121 RETURN                           R3 1
