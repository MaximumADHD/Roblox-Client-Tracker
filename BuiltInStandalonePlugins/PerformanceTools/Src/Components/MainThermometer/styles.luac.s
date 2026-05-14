MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-MainThermometer"]
       20 DUPTABLE                         R5 K13 [{"BackgroundColor3", "BorderSizePixel"}]
       21 LOADK                            R6 K14 ["$BackgroundPaper"]
       22 SETTABLEKS                       R6 R5 K11 ["BackgroundColor3"]
       24 LOADN                            R6 0
       25 SETTABLEKS                       R6 R5 K12 ["BorderSizePixel"]
       27 NEWTABLE                         R6 0 2
       29 MOVE                             R7 R2
       30 LOADK                            R8 K15 [">> TextLabel"]
       31 DUPTABLE                         R9 K20 [{"TextColor3", "BackgroundTransparency", "TextSize", "Font"}]
       32 LOADK                            R10 K21 ["$TextPrimary"]
       33 SETTABLEKS                       R10 R9 K16 ["TextColor3"]
       35 LOADN                            R10 1
       36 SETTABLEKS                       R10 R9 K17 ["BackgroundTransparency"]
       38 LOADN                            R10 16
       39 SETTABLEKS                       R10 R9 K18 ["TextSize"]
       41 GETIMPORT                        R10 K24 [Enum.Font.BuilderSans]
       43 SETTABLEKS                       R10 R9 K19 ["Font"]
       45 CALL                             R7 2 1
       46 MOVE                             R8 R2
       47 LOADK                            R9 K25 [">> .Heading"]
       48 DUPTABLE                         R10 K26 [{"TextSize"}]
       49 LOADK                            R11 K27 ["$FontSize_350"]
       50 SETTABLEKS                       R11 R10 K18 ["TextSize"]
       52 CALL                             R8 2 -1
       53 SETLIST                          R6 R7 -1 [1]
       55 CALL                             R3 3 -1
       56 RETURN                           R3 -1
