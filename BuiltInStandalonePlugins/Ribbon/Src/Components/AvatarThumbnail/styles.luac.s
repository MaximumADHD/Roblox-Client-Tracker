MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-AvatarThumbnail"]
       20 DUPTABLE                         R5 K13 [{"AutoButtonColor", "Text"}]
       21 LOADB                            R6 0
       22 SETTABLEKS                       R6 R5 K11 ["AutoButtonColor"]
       24 LOADK                            R6 K14 [""]
       25 SETTABLEKS                       R6 R5 K12 ["Text"]
       27 NEWTABLE                         R6 0 1
       29 MOVE                             R7 R2
       30 LOADK                            R8 K15 ["> ImageLabel"]
       31 DUPTABLE                         R9 K18 [{"BorderSizePixel", "BackgroundColor3"}]
       32 LOADK                            R10 K19 ["$BorderNone"]
       33 SETTABLEKS                       R10 R9 K16 ["BorderSizePixel"]
       35 LOADK                            R10 K20 ["$SemanticColorComponentMediaFill"]
       36 SETTABLEKS                       R10 R9 K17 ["BackgroundColor3"]
       38 NEWTABLE                         R10 0 2
       40 MOVE                             R11 R2
       41 LOADK                            R12 K21 ["::UICorner"]
       42 DUPTABLE                         R13 K23 [{"CornerRadius"}]
       43 LOADK                            R14 K24 ["$GlobalRadiusCircle"]
       44 SETTABLEKS                       R14 R13 K22 ["CornerRadius"]
       46 CALL                             R11 2 1
       47 MOVE                             R12 R2
       48 LOADK                            R13 K25 [".XSmall"]
       49 DUPTABLE                         R14 K27 [{"Size"}]
       50 LOADK                            R15 K28 ["$AvatarXS"]
       51 SETTABLEKS                       R15 R14 K26 ["Size"]
       53 CALL                             R12 2 -1
       54 SETLIST                          R10 R11 -1 [1]
       56 CALL                             R7 3 -1
       57 SETLIST                          R6 R7 -1 [1]
       59 CALL                             R3 3 -1
       60 RETURN                           R3 -1
