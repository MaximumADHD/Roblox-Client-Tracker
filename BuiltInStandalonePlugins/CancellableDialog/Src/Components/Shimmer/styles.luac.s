MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CancellableDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-Shimmer"]
       20 DUPTABLE                         R5 K12 [{"BackgroundTransparency"}]
       21 LOADK                            R6 K13 ["$Transparent"]
       22 SETTABLEKS                       R6 R5 K11 ["BackgroundTransparency"]
       24 NEWTABLE                         R6 0 3
       26 MOVE                             R7 R2
       27 LOADK                            R8 K14 [">> .ShimmerForeground"]
       28 DUPTABLE                         R9 K16 [{"BackgroundColor3", "BackgroundTransparency"}]
       29 LOADK                            R10 K17 ["$SemanticColorBackdrop"]
       30 SETTABLEKS                       R10 R9 K15 ["BackgroundColor3"]
       32 LOADK                            R10 K18 ["$NotTransparent"]
       33 SETTABLEKS                       R10 R9 K11 ["BackgroundTransparency"]
       35 CALL                             R7 2 1
       36 MOVE                             R8 R2
       37 LOADK                            R9 K19 [">> .RoundedCorner8 ::UICorner"]
       38 DUPTABLE                         R10 K21 [{"CornerRadius"}]
       39 LOADK                            R11 K22 ["$CornerSize8"]
       40 SETTABLEKS                       R11 R10 K20 ["CornerRadius"]
       42 CALL                             R8 2 1
       43 MOVE                             R9 R2
       44 LOADK                            R10 K23 [">> .NoBorder"]
       45 DUPTABLE                         R11 K25 [{"BorderSizePixel"}]
       46 LOADN                            R12 0
       47 SETTABLEKS                       R12 R11 K24 ["BorderSizePixel"]
       49 CALL                             R9 2 -1
       50 SETLIST                          R6 R7 -1 [1]
       52 CALL                             R3 3 -1
       53 RETURN                           R3 -1
