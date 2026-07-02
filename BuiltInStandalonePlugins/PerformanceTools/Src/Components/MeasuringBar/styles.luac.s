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
       19 LOADK                            R4 K10 [".Component-MeasuringBar"]
       20 DUPTABLE                         R5 K15 [{["BackgroundColor3"] = "$BackgroundPaper", ["BorderSizePixel"] = 0}]
       21 NEWTABLE                         R6 0 8
       23 MOVE                             R7 R2
       24 LOADK                            R8 K16 ["> TextLabel"]
       25 DUPTABLE                         R9 K20 [{["TextColor3"] = "$TextPrimary", ["TextXAlignment"]}]
       26 GETIMPORT                        R10 K23 [Enum.TextXAlignment.Left]
       28 SETTABLEKS                       R10 R9 K19 ["TextXAlignment"]
       30 CALL                             R7 2 1
       31 MOVE                             R8 R2
       32 LOADK                            R9 K24 [">> .Component-MeasuringBarPip"]
       33 DUPTABLE                         R10 K28 [{["BackgroundColor3"] = "$BackgroundPaper", ["Size"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 4}]
       34 GETIMPORT                        R11 K31 [UDim2.new]
       36 LOADN                            R12 0
       37 LOADN                            R13 2
       38 LOADN                            R14 1
       39 LOADN                            R15 0
       40 CALL                             R11 4 1
       41 SETTABLEKS                       R11 R10 K25 ["Size"]
       43 CALL                             R8 2 1
       44 MOVE                             R9 R2
       45 LOADK                            R10 K32 [">> .Component-MeasuringBarBackground"]
       46 DUPTABLE                         R11 K36 [{["BackgroundColor3"] = "$MeasuringBarBackground", ["BackgroundTransparency"] = 0.92}]
       47 CALL                             R9 2 1
       48 MOVE                             R10 R2
       49 LOADK                            R11 K37 [">> .Component-MeasurementBarFillLow"]
       50 DUPTABLE                         R12 K39 [{["BackgroundColor3"] = "$MeasuringBarFillLow"}]
       51 CALL                             R10 2 1
       52 MOVE                             R11 R2
       53 LOADK                            R12 K40 [">> .Component-MeasurementBarFillMedium"]
       54 DUPTABLE                         R13 K42 [{["BackgroundColor3"] = "$MeasuringBarFillMedium"}]
       55 CALL                             R11 2 1
       56 MOVE                             R12 R2
       57 LOADK                            R13 K43 [">> .Component-MeasurementBarFillHigh"]
       58 DUPTABLE                         R14 K45 [{["BackgroundColor3"] = "$MeasuringBarFillHigh"}]
       59 CALL                             R12 2 1
       60 MOVE                             R13 R2
       61 LOADK                            R14 K46 [">> .ChildRenderBar"]
       62 DUPTABLE                         R15 K49 [{["TextSize"] = "$FontSize_300"}]
       63 CALL                             R13 2 1
       64 MOVE                             R14 R2
       65 LOADK                            R15 K50 [">> .MainRenderBar"]
       66 DUPTABLE                         R16 K52 [{["TextSize"] = "$FontSize_350"}]
       67 CALL                             R14 2 -1
       68 SETLIST                          R6 R7 -1 [1]
       70 CALL                             R3 3 -1
       71 RETURN                           R3 -1
