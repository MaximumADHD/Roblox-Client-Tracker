MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioCameraUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-CounterExample"]
       20 DUPTABLE                         R5 K15 [{["BackgroundColor3"] = "$BackgroundPaper", ["BorderSizePixel"] = 0}]
       21 NEWTABLE                         R6 0 4
       23 MOVE                             R7 R2
       24 LOADK                            R8 K16 ["::UICorner"]
       25 DUPTABLE                         R9 K18 [{"CornerRadius"}]
       26 GETIMPORT                        R10 K21 [UDim.new]
       28 LOADN                            R11 0
       29 LOADN                            R12 10
       30 CALL                             R10 2 1
       31 SETTABLEKS                       R10 R9 K17 ["CornerRadius"]
       33 CALL                             R7 2 1
       34 MOVE                             R8 R2
       35 LOADK                            R9 K22 [":hover"]
       36 DUPTABLE                         R10 K24 [{["BackgroundColor3"] = "$BackgroundHover"}]
       37 CALL                             R8 2 1
       38 MOVE                             R9 R2
       39 LOADK                            R10 K25 ["> TextLabel"]
       40 DUPTABLE                         R11 K36 [{["TextSize"] = 24, ["Font"], ["TextColor3"] = "$TextPrimary", ["Size"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextYAlignment"]}]
       41 GETIMPORT                        R12 K39 [Enum.Font.SourceSans]
       43 SETTABLEKS                       R12 R11 K28 ["Font"]
       45 GETIMPORT                        R12 K41 [UDim2.new]
       47 LOADN                            R13 1
       48 LOADN                            R14 0
       49 LOADN                            R15 0
       50 LOADN                            R16 50
       51 CALL                             R12 4 1
       52 SETTABLEKS                       R12 R11 K31 ["Size"]
       54 GETIMPORT                        R12 K43 [Enum.TextXAlignment.Center]
       56 SETTABLEKS                       R12 R11 K34 ["TextXAlignment"]
       58 GETIMPORT                        R12 K44 [Enum.TextYAlignment.Center]
       60 SETTABLEKS                       R12 R11 K35 ["TextYAlignment"]
       62 CALL                             R9 2 1
       63 MOVE                             R10 R2
       64 LOADK                            R11 K45 ["> TextButton"]
       65 DUPTABLE                         R12 K47 [{["TextSize"] = 50, ["Font"], ["TextColor3"] = "$TextPrimary", ["Size"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextYAlignment"]}]
       66 GETIMPORT                        R13 K39 [Enum.Font.SourceSans]
       68 SETTABLEKS                       R13 R12 K28 ["Font"]
       70 GETIMPORT                        R13 K41 [UDim2.new]
       72 LOADN                            R14 1
       73 LOADN                            R15 0
       74 LOADN                            R16 0
       75 LOADN                            R17 100
       76 CALL                             R13 4 1
       77 SETTABLEKS                       R13 R12 K31 ["Size"]
       79 GETIMPORT                        R13 K43 [Enum.TextXAlignment.Center]
       81 SETTABLEKS                       R13 R12 K34 ["TextXAlignment"]
       83 GETIMPORT                        R13 K44 [Enum.TextYAlignment.Center]
       85 SETTABLEKS                       R13 R12 K35 ["TextYAlignment"]
       87 CALL                             R10 2 -1
       88 SETLIST                          R6 R7 -1 [1]
       90 CALL                             R3 3 -1
       91 RETURN                           R3 -1
