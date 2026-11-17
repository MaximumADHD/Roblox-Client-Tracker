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
       20 DUPTABLE                         R5 K15 [{["BackgroundColor3"] = "$BackgroundPaper", ["BorderSizePixel"] = 0}]
       21 NEWTABLE                         R6 0 3
       23 MOVE                             R7 R2
       24 LOADK                            R8 K16 ["> TextLabel"]
       25 DUPTABLE                         R9 K26 [{["TextColor3"] = "$TextPrimary", ["BackgroundTransparency"] = 1, ["TextSize"] = 17, ["Font"], ["TextXAlignment"], ["TextYAlignment"]}]
       26 GETIMPORT                        R10 K29 [Enum.Font.BuilderSans]
       28 SETTABLEKS                       R10 R9 K23 ["Font"]
       30 GETIMPORT                        R10 K31 [Enum.TextXAlignment.Left]
       32 SETTABLEKS                       R10 R9 K24 ["TextXAlignment"]
       34 GETIMPORT                        R10 K33 [Enum.TextYAlignment.Top]
       36 SETTABLEKS                       R10 R9 K25 ["TextYAlignment"]
       38 CALL                             R7 2 1
       39 MOVE                             R8 R2
       40 LOADK                            R9 K34 ["> UIPadding"]
       41 DUPTABLE                         R10 K39 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       42 GETIMPORT                        R11 K42 [UDim.new]
       44 LOADN                            R12 0
       45 LOADN                            R13 20
       46 CALL                             R11 2 1
       47 SETTABLEKS                       R11 R10 K35 ["PaddingTop"]
       49 GETIMPORT                        R11 K42 [UDim.new]
       51 LOADN                            R12 0
       52 LOADN                            R13 10
       53 CALL                             R11 2 1
       54 SETTABLEKS                       R11 R10 K36 ["PaddingBottom"]
       56 GETIMPORT                        R11 K42 [UDim.new]
       58 LOADN                            R12 0
       59 LOADN                            R13 15
       60 CALL                             R11 2 1
       61 SETTABLEKS                       R11 R10 K37 ["PaddingLeft"]
       63 GETIMPORT                        R11 K42 [UDim.new]
       65 LOADN                            R12 0
       66 LOADN                            R13 15
       67 CALL                             R11 2 1
       68 SETTABLEKS                       R11 R10 K38 ["PaddingRight"]
       70 CALL                             R8 2 1
       71 MOVE                             R9 R2
       72 LOADK                            R10 K43 [">> .BudgetLabel"]
       73 DUPTABLE                         R11 K44 [{["BackgroundTransparency"] = 1, ["Font"], ["TextSize"] = 17, ["TextColor3"] = "$TextPrimary"}]
       74 GETIMPORT                        R12 K29 [Enum.Font.BuilderSans]
       76 SETTABLEKS                       R12 R11 K23 ["Font"]
       78 CALL                             R9 2 -1
       79 SETLIST                          R6 R7 -1 [1]
       81 CALL                             R3 3 -1
       82 RETURN                           R3 -1
