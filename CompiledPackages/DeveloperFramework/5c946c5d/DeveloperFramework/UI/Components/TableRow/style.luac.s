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
       23 NEWTABLE                         R3 8 0
       25 GETTABLEKS                       R4 R2 K11 ["MainText"]
       27 SETTABLEKS                       R4 R3 K12 ["Text"]
       29 GETTABLEKS                       R4 R2 K13 ["SubBackground"]
       31 SETTABLEKS                       R4 R3 K14 ["Border"]
       33 GETTABLEKS                       R4 R2 K15 ["MainBackground"]
       35 SETTABLEKS                       R4 R3 K16 ["BackgroundOdd"]
       37 GETTABLEKS                       R4 R2 K17 ["SubBackground2"]
       39 SETTABLEKS                       R4 R3 K18 ["BackgroundEven"]
       41 GETTABLEKS                       R4 R1 K19 ["Hover"]
       43 DUPTABLE                         R5 K22 [{"Text", "BackgroundOdd", "BackgroundEven", "Border", "Tooltip", "RowHeight"}]
       44 GETTABLEKS                       R6 R2 K23 ["BrightText"]
       46 SETTABLEKS                       R6 R5 K12 ["Text"]
       48 GETTABLEKS                       R6 R2 K24 ["ActionHover"]
       50 SETTABLEKS                       R6 R5 K16 ["BackgroundOdd"]
       52 GETTABLEKS                       R6 R2 K24 ["ActionHover"]
       54 SETTABLEKS                       R6 R5 K18 ["BackgroundEven"]
       56 GETTABLEKS                       R6 R2 K13 ["SubBackground"]
       58 SETTABLEKS                       R6 R5 K14 ["Border"]
       60 DUPTABLE                         R6 K26 [{"MaxWidth"}]
       61 LOADN                            R7 232
       62 SETTABLEKS                       R7 R6 K25 ["MaxWidth"]
       64 SETTABLEKS                       R6 R5 K20 ["Tooltip"]
       66 LOADN                            R6 24
       67 SETTABLEKS                       R6 R5 K21 ["RowHeight"]
       69 SETTABLE                         R5 R3 R4
       70 GETTABLEKS                       R4 R1 K27 ["Selected"]
       72 DUPTABLE                         R5 K22 [{"Text", "BackgroundOdd", "BackgroundEven", "Border", "Tooltip", "RowHeight"}]
       73 GETTABLEKS                       R6 R2 K23 ["BrightText"]
       75 SETTABLEKS                       R6 R5 K12 ["Text"]
       77 GETTABLEKS                       R6 R2 K28 ["ActionSelected"]
       79 SETTABLEKS                       R6 R5 K16 ["BackgroundOdd"]
       81 GETTABLEKS                       R6 R2 K28 ["ActionSelected"]
       83 SETTABLEKS                       R6 R5 K18 ["BackgroundEven"]
       85 GETTABLEKS                       R6 R2 K13 ["SubBackground"]
       87 SETTABLEKS                       R6 R5 K14 ["Border"]
       89 DUPTABLE                         R6 K26 [{"MaxWidth"}]
       90 LOADN                            R7 232
       91 SETTABLEKS                       R7 R6 K25 ["MaxWidth"]
       93 SETTABLEKS                       R6 R5 K20 ["Tooltip"]
       95 LOADN                            R6 24
       96 SETTABLEKS                       R6 R5 K21 ["RowHeight"]
       98 SETTABLE                         R5 R3 R4
       99 DUPTABLE                         R4 K26 [{"MaxWidth"}]
      100 LOADN                            R5 232
      101 SETTABLEKS                       R5 R4 K25 ["MaxWidth"]
      103 SETTABLEKS                       R4 R3 K20 ["Tooltip"]
      105 LOADN                            R4 24
      106 SETTABLEKS                       R4 R3 K21 ["RowHeight"]
      108 RETURN                           R3 1
