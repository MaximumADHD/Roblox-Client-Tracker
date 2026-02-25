MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModerationDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-DialogContents"]
       20 DUPTABLE                         R5 K13 [{"BackgroundColor3", "BorderSizePixel"}]
       21 LOADK                            R6 K14 ["$ForegroundMain"]
       22 SETTABLEKS                       R6 R5 K11 ["BackgroundColor3"]
       24 LOADN                            R6 0
       25 SETTABLEKS                       R6 R5 K12 ["BorderSizePixel"]
       27 NEWTABLE                         R6 0 3
       29 MOVE                             R7 R2
       30 LOADK                            R8 K15 ["> UIListLayout"]
       31 DUPTABLE                         R9 K17 [{"Padding"}]
       32 GETIMPORT                        R10 K20 [UDim.new]
       34 LOADN                            R11 0
       35 LOADN                            R12 16
       36 CALL                             R10 2 1
       37 SETTABLEKS                       R10 R9 K16 ["Padding"]
       39 CALL                             R7 2 1
       40 MOVE                             R8 R2
       41 LOADK                            R9 K21 [">> Frame"]
       42 DUPTABLE                         R10 K23 [{"BackgroundTransparency"}]
       43 LOADN                            R11 1
       44 SETTABLEKS                       R11 R10 K22 ["BackgroundTransparency"]
       46 CALL                             R8 2 1
       47 MOVE                             R9 R2
       48 LOADK                            R10 K24 [">> .Separator"]
       49 DUPTABLE                         R11 K27 [{"Size", "BackgroundColor3", "AnchorPoint", "BorderSizePixel", "BackgroundTransparency"}]
       50 GETIMPORT                        R12 K29 [UDim2.new]
       52 LOADN                            R13 1
       53 LOADN                            R14 0
       54 LOADN                            R15 0
       55 LOADN                            R16 1
       56 CALL                             R12 4 1
       57 SETTABLEKS                       R12 R11 K25 ["Size"]
       59 LOADK                            R12 K30 ["$Divider"]
       60 SETTABLEKS                       R12 R11 K11 ["BackgroundColor3"]
       62 GETIMPORT                        R12 K32 [Vector2.new]
       64 LOADK                            R13 K33 [0.5]
       65 LOADK                            R14 K33 [0.5]
       66 CALL                             R12 2 1
       67 SETTABLEKS                       R12 R11 K26 ["AnchorPoint"]
       69 LOADN                            R12 0
       70 SETTABLEKS                       R12 R11 K12 ["BorderSizePixel"]
       72 LOADN                            R12 0
       73 SETTABLEKS                       R12 R11 K22 ["BackgroundTransparency"]
       75 CALL                             R9 2 -1
       76 SETLIST                          R6 R7 -1 [1]
       78 CALL                             R3 3 -1
       79 RETURN                           R3 -1
