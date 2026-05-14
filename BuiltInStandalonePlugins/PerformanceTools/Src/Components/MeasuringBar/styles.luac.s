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
       20 DUPTABLE                         R5 K13 [{"BackgroundColor3", "BorderSizePixel"}]
       21 LOADK                            R6 K14 ["$BackgroundPaper"]
       22 SETTABLEKS                       R6 R5 K11 ["BackgroundColor3"]
       24 LOADN                            R6 0
       25 SETTABLEKS                       R6 R5 K12 ["BorderSizePixel"]
       27 NEWTABLE                         R6 0 8
       29 MOVE                             R7 R2
       30 LOADK                            R8 K15 ["> TextLabel"]
       31 DUPTABLE                         R9 K18 [{"TextColor3", "TextXAlignment"}]
       32 LOADK                            R10 K19 ["$TextPrimary"]
       33 SETTABLEKS                       R10 R9 K16 ["TextColor3"]
       35 GETIMPORT                        R10 K22 [Enum.TextXAlignment.Left]
       37 SETTABLEKS                       R10 R9 K17 ["TextXAlignment"]
       39 CALL                             R7 2 1
       40 MOVE                             R8 R2
       41 LOADK                            R9 K23 [">> .Component-MeasuringBarPip"]
       42 DUPTABLE                         R10 K26 [{"BackgroundColor3", "Size", "BorderSizePixel", "LayoutOrder"}]
       43 LOADK                            R11 K14 ["$BackgroundPaper"]
       44 SETTABLEKS                       R11 R10 K11 ["BackgroundColor3"]
       46 GETIMPORT                        R11 K29 [UDim2.new]
       48 LOADN                            R12 0
       49 LOADN                            R13 2
       50 LOADN                            R14 1
       51 LOADN                            R15 0
       52 CALL                             R11 4 1
       53 SETTABLEKS                       R11 R10 K24 ["Size"]
       55 LOADN                            R11 0
       56 SETTABLEKS                       R11 R10 K12 ["BorderSizePixel"]
       58 LOADN                            R11 4
       59 SETTABLEKS                       R11 R10 K25 ["LayoutOrder"]
       61 CALL                             R8 2 1
       62 MOVE                             R9 R2
       63 LOADK                            R10 K30 [">> .Component-MeasuringBarBackground"]
       64 DUPTABLE                         R11 K32 [{"BackgroundColor3", "BackgroundTransparency"}]
       65 LOADK                            R12 K33 ["$MeasuringBarBackground"]
       66 SETTABLEKS                       R12 R11 K11 ["BackgroundColor3"]
       68 LOADK                            R12 K34 [0.92]
       69 SETTABLEKS                       R12 R11 K31 ["BackgroundTransparency"]
       71 CALL                             R9 2 1
       72 MOVE                             R10 R2
       73 LOADK                            R11 K35 [">> .Component-MeasurementBarFillLow"]
       74 DUPTABLE                         R12 K36 [{"BackgroundColor3"}]
       75 LOADK                            R13 K37 ["$MeasuringBarFillLow"]
       76 SETTABLEKS                       R13 R12 K11 ["BackgroundColor3"]
       78 CALL                             R10 2 1
       79 MOVE                             R11 R2
       80 LOADK                            R12 K38 [">> .Component-MeasurementBarFillMedium"]
       81 DUPTABLE                         R13 K36 [{"BackgroundColor3"}]
       82 LOADK                            R14 K39 ["$MeasuringBarFillMedium"]
       83 SETTABLEKS                       R14 R13 K11 ["BackgroundColor3"]
       85 CALL                             R11 2 1
       86 MOVE                             R12 R2
       87 LOADK                            R13 K40 [">> .Component-MeasurementBarFillHigh"]
       88 DUPTABLE                         R14 K36 [{"BackgroundColor3"}]
       89 LOADK                            R15 K41 ["$MeasuringBarFillHigh"]
       90 SETTABLEKS                       R15 R14 K11 ["BackgroundColor3"]
       92 CALL                             R12 2 1
       93 MOVE                             R13 R2
       94 LOADK                            R14 K42 [">> .ChildRenderBar"]
       95 DUPTABLE                         R15 K44 [{"TextSize"}]
       96 LOADK                            R16 K45 ["$FontSize_300"]
       97 SETTABLEKS                       R16 R15 K43 ["TextSize"]
       99 CALL                             R13 2 1
      100 MOVE                             R14 R2
      101 LOADK                            R15 K46 [">> .MainRenderBar"]
      102 DUPTABLE                         R16 K44 [{"TextSize"}]
      103 LOADK                            R17 K47 ["$FontSize_350"]
      104 SETTABLEKS                       R17 R16 K43 ["TextSize"]
      106 CALL                             R14 2 -1
      107 SETLIST                          R6 R7 -1 [1]
      109 CALL                             R3 3 -1
      110 RETURN                           R3 -1
