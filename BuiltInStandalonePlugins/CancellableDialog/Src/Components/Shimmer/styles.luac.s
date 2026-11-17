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
       20 DUPTABLE                         R5 K13 [{["BackgroundTransparency"] = "$Transparent"}]
       21 NEWTABLE                         R6 0 3
       23 MOVE                             R7 R2
       24 LOADK                            R8 K14 [">> .ShimmerForeground"]
       25 DUPTABLE                         R9 K18 [{["BackgroundColor3"] = "$SemanticColorBackdrop", ["BackgroundTransparency"] = "$NotTransparent"}]
       26 CALL                             R7 2 1
       27 MOVE                             R8 R2
       28 LOADK                            R9 K19 [">> .RoundedCorner8 ::UICorner"]
       29 DUPTABLE                         R10 K22 [{["CornerRadius"] = "$CornerSize8"}]
       30 CALL                             R8 2 1
       31 MOVE                             R9 R2
       32 LOADK                            R10 K23 [">> .NoBorder"]
       33 DUPTABLE                         R11 K26 [{["BorderSizePixel"] = 0}]
       34 CALL                             R9 2 -1
       35 SETLIST                          R6 R7 -1 [1]
       37 CALL                             R3 3 -1
       38 RETURN                           R3 -1
