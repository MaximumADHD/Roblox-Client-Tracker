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
       20 DUPTABLE                         R5 K15 [{["BackgroundColor3"] = "$BackgroundPaper", ["BorderSizePixel"] = 0}]
       21 NEWTABLE                         R6 0 2
       23 MOVE                             R7 R2
       24 LOADK                            R8 K16 [">> TextLabel"]
       25 DUPTABLE                         R9 K24 [{["TextColor3"] = "$TextPrimary", ["BackgroundTransparency"] = 1, ["TextSize"] = 16, ["Font"]}]
       26 GETIMPORT                        R10 K27 [Enum.Font.BuilderSans]
       28 SETTABLEKS                       R10 R9 K23 ["Font"]
       30 CALL                             R7 2 1
       31 MOVE                             R8 R2
       32 LOADK                            R9 K28 [">> .Heading"]
       33 DUPTABLE                         R10 K30 [{["TextSize"] = "$FontSize_350"}]
       34 CALL                             R8 2 -1
       35 SETLIST                          R6 R7 -1 [1]
       37 CALL                             R3 3 -1
       38 RETURN                           R3 -1
