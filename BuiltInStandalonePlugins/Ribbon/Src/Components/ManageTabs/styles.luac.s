MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-TabRow"]
       20 DUPTABLE                         R5 K13 [{"AutoButtonColor", "Text"}]
       21 LOADB                            R6 0
       22 SETTABLEKS                       R6 R5 K11 ["AutoButtonColor"]
       24 LOADK                            R6 K14 [""]
       25 SETTABLEKS                       R6 R5 K12 ["Text"]
       27 NEWTABLE                         R6 0 3
       29 MOVE                             R7 R2
       30 LOADK                            R8 K15 [":hover"]
       31 DUPTABLE                         R9 K18 [{"BackgroundColor3", "BackgroundTransparency"}]
       32 LOADK                            R10 K19 ["$SemanticColorStatesHover"]
       33 SETTABLEKS                       R10 R9 K16 ["BackgroundColor3"]
       35 LOADK                            R10 K20 ["$SemanticColorStatesHoverTransparency"]
       36 SETTABLEKS                       R10 R9 K17 ["BackgroundTransparency"]
       38 CALL                             R7 2 1
       39 MOVE                             R8 R2
       40 LOADK                            R9 K21 [".Selected"]
       41 DUPTABLE                         R10 K22 [{"BackgroundTransparency", "BackgroundColor3"}]
       42 LOADK                            R11 K23 ["$SemanticColorStatesSelectedTransparency"]
       43 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
       45 LOADK                            R11 K24 ["$SemanticColorStatesSelected"]
       46 SETTABLEKS                       R11 R10 K16 ["BackgroundColor3"]
       48 CALL                             R8 2 1
       49 MOVE                             R9 R2
       50 LOADK                            R10 K25 ["::UIPadding"]
       51 DUPTABLE                         R11 K30 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
       52 LOADK                            R12 K31 ["$GlobalSpace100"]
       53 SETTABLEKS                       R12 R11 K26 ["PaddingLeft"]
       55 LOADK                            R12 K32 ["$GlobalSpace50"]
       56 SETTABLEKS                       R12 R11 K27 ["PaddingTop"]
       58 LOADK                            R12 K31 ["$GlobalSpace100"]
       59 SETTABLEKS                       R12 R11 K28 ["PaddingRight"]
       61 LOADK                            R12 K32 ["$GlobalSpace50"]
       62 SETTABLEKS                       R12 R11 K29 ["PaddingBottom"]
       64 CALL                             R9 2 -1
       65 SETLIST                          R6 R7 -1 [1]
       67 CALL                             R3 3 -1
       68 RETURN                           R3 -1
