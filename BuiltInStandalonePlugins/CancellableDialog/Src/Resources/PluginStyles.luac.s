MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CancellableDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 GETTABLEKS                       R4 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R4 K10 ["createStyleSheet"]
       22 NEWTABLE                         R4 0 2
       24 MOVE                             R5 R2
       25 LOADK                            R6 K11 ["TextLabel"]
       26 DUPTABLE                         R7 K17 [{"Font", "TextSize", "TextColor3", "BackgroundTransparency", "TextXAlignment"}]
       27 GETIMPORT                        R8 K20 [Enum.Font.SourceSans]
       29 SETTABLEKS                       R8 R7 K12 ["Font"]
       31 LOADK                            R8 K21 ["$NormalTextSize"]
       32 SETTABLEKS                       R8 R7 K13 ["TextSize"]
       34 LOADK                            R8 K22 ["$TextContrast"]
       35 SETTABLEKS                       R8 R7 K14 ["TextColor3"]
       37 LOADK                            R8 K23 ["$Transparent"]
       38 SETTABLEKS                       R8 R7 K15 ["BackgroundTransparency"]
       40 GETIMPORT                        R8 K25 [Enum.TextXAlignment.Left]
       42 SETTABLEKS                       R8 R7 K16 ["TextXAlignment"]
       44 CALL                             R5 2 1
       45 MOVE                             R6 R2
       46 LOADK                            R7 K26 ["Frame"]
       47 DUPTABLE                         R8 K27 [{"BackgroundTransparency"}]
       48 LOADK                            R9 K23 ["$Transparent"]
       49 SETTABLEKS                       R9 R8 K15 ["BackgroundTransparency"]
       51 CALL                             R6 2 -1
       52 SETLIST                          R4 R5 -1 [1]
       54 DUPTABLE                         R5 K32 [{"NormalTextSize", "NotTransparent", "Transparent", "TextDisabledTransparency"}]
       55 LOADN                            R6 16
       56 SETTABLEKS                       R6 R5 K28 ["NormalTextSize"]
       58 LOADN                            R6 0
       59 SETTABLEKS                       R6 R5 K29 ["NotTransparent"]
       61 LOADN                            R6 1
       62 SETTABLEKS                       R6 R5 K30 ["Transparent"]
       64 LOADK                            R6 K33 [0.5]
       65 SETTABLEKS                       R6 R5 K31 ["TextDisabledTransparency"]
       67 MOVE                             R6 R3
       68 LOADK                            R7 K2 ["CancellableDialog"]
       69 MOVE                             R8 R4
       70 MOVE                             R9 R5
       71 CALL                             R6 3 -1
       72 RETURN                           R6 -1
