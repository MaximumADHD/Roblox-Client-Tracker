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
       19 LOADK                            R4 K10 [".Component-ThermometerSettings"]
       20 DUPTABLE                         R5 K13 [{"BackgroundColor3", "BorderSizePixel"}]
       21 LOADK                            R6 K14 ["$BackgroundPaper"]
       22 SETTABLEKS                       R6 R5 K11 ["BackgroundColor3"]
       24 LOADN                            R6 0
       25 SETTABLEKS                       R6 R5 K12 ["BorderSizePixel"]
       27 NEWTABLE                         R6 0 3
       29 MOVE                             R7 R2
       30 LOADK                            R8 K15 ["> TextLabel"]
       31 DUPTABLE                         R9 K22 [{"TextColor3", "BackgroundTransparency", "TextSize", "Font", "TextXAlignment", "TextYAlignment"}]
       32 LOADK                            R10 K23 ["$TextPrimary"]
       33 SETTABLEKS                       R10 R9 K16 ["TextColor3"]
       35 LOADN                            R10 1
       36 SETTABLEKS                       R10 R9 K17 ["BackgroundTransparency"]
       38 LOADN                            R10 17
       39 SETTABLEKS                       R10 R9 K18 ["TextSize"]
       41 GETIMPORT                        R10 K26 [Enum.Font.BuilderSans]
       43 SETTABLEKS                       R10 R9 K19 ["Font"]
       45 GETIMPORT                        R10 K28 [Enum.TextXAlignment.Left]
       47 SETTABLEKS                       R10 R9 K20 ["TextXAlignment"]
       49 GETIMPORT                        R10 K30 [Enum.TextYAlignment.Top]
       51 SETTABLEKS                       R10 R9 K21 ["TextYAlignment"]
       53 CALL                             R7 2 1
       54 MOVE                             R8 R2
       55 LOADK                            R9 K31 ["> UIPadding"]
       56 DUPTABLE                         R10 K36 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       57 GETIMPORT                        R11 K39 [UDim.new]
       59 LOADN                            R12 0
       60 LOADN                            R13 20
       61 CALL                             R11 2 1
       62 SETTABLEKS                       R11 R10 K32 ["PaddingTop"]
       64 GETIMPORT                        R11 K39 [UDim.new]
       66 LOADN                            R12 0
       67 LOADN                            R13 10
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K33 ["PaddingBottom"]
       71 GETIMPORT                        R11 K39 [UDim.new]
       73 LOADN                            R12 0
       74 LOADN                            R13 15
       75 CALL                             R11 2 1
       76 SETTABLEKS                       R11 R10 K34 ["PaddingLeft"]
       78 GETIMPORT                        R11 K39 [UDim.new]
       80 LOADN                            R12 0
       81 LOADN                            R13 15
       82 CALL                             R11 2 1
       83 SETTABLEKS                       R11 R10 K35 ["PaddingRight"]
       85 CALL                             R8 2 1
       86 MOVE                             R9 R2
       87 LOADK                            R10 K40 [">> .BudgetLabel"]
       88 DUPTABLE                         R11 K41 [{"BackgroundTransparency", "Font", "TextSize", "TextColor3"}]
       89 LOADN                            R12 1
       90 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
       92 GETIMPORT                        R12 K26 [Enum.Font.BuilderSans]
       94 SETTABLEKS                       R12 R11 K19 ["Font"]
       96 LOADN                            R12 17
       97 SETTABLEKS                       R12 R11 K18 ["TextSize"]
       99 LOADK                            R12 K23 ["$TextPrimary"]
      100 SETTABLEKS                       R12 R11 K16 ["TextColor3"]
      102 CALL                             R9 2 -1
      103 SETLIST                          R6 R7 -1 [1]
      105 CALL                             R3 3 -1
      106 RETURN                           R3 -1
