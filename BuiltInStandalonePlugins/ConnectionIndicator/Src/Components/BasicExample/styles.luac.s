MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ConnectionIndicator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-BasicExample"]
       20 DUPTABLE                         R5 K15 [{["BackgroundColor3"] = "$ForegroundMain", ["BorderSizePixel"] = 0}]
       21 NEWTABLE                         R6 0 6
       23 MOVE                             R7 R2
       24 LOADK                            R8 K16 ["> #InnerFrame"]
       25 DUPTABLE                         R9 K17 [{["BackgroundColor3"] = "$ForegroundMain"}]
       26 CALL                             R7 2 1
       27 MOVE                             R8 R2
       28 LOADK                            R9 K18 ["::UIPadding"]
       29 DUPTABLE                         R10 K23 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       30 GETIMPORT                        R11 K26 [UDim.new]
       32 LOADK                            R12 K27 [0.05]
       33 LOADN                            R13 0
       34 CALL                             R11 2 1
       35 SETTABLEKS                       R11 R10 K19 ["PaddingLeft"]
       37 GETIMPORT                        R11 K26 [UDim.new]
       39 LOADK                            R12 K27 [0.05]
       40 LOADN                            R13 0
       41 CALL                             R11 2 1
       42 SETTABLEKS                       R11 R10 K20 ["PaddingRight"]
       44 GETIMPORT                        R11 K26 [UDim.new]
       46 LOADK                            R12 K27 [0.05]
       47 LOADN                            R13 0
       48 CALL                             R11 2 1
       49 SETTABLEKS                       R11 R10 K21 ["PaddingTop"]
       51 GETIMPORT                        R11 K26 [UDim.new]
       53 LOADK                            R12 K27 [0.05]
       54 LOADN                            R13 0
       55 CALL                             R11 2 1
       56 SETTABLEKS                       R11 R10 K22 ["PaddingBottom"]
       58 CALL                             R8 2 1
       59 MOVE                             R9 R2
       60 LOADK                            R10 K28 [">> TextLabel"]
       61 DUPTABLE                         R11 K35 [{["TextColor3"] = "$TextPrimary", ["BackgroundTransparency"] = 1, ["TextSize"] = 12}]
       62 CALL                             R9 2 1
       63 MOVE                             R10 R2
       64 LOADK                            R11 K36 [">> #BodyFrame"]
       65 DUPTABLE                         R12 K38 [{["BackgroundColor3"] = "$ForegroundContrast"}]
       66 CALL                             R10 2 1
       67 MOVE                             R11 R2
       68 LOADK                            R12 K39 [">> #BodyFrame ::UIPadding"]
       69 DUPTABLE                         R13 K23 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       70 GETIMPORT                        R14 K26 [UDim.new]
       72 LOADK                            R15 K27 [0.05]
       73 LOADN                            R16 0
       74 CALL                             R14 2 1
       75 SETTABLEKS                       R14 R13 K19 ["PaddingLeft"]
       77 GETIMPORT                        R14 K26 [UDim.new]
       79 LOADK                            R15 K27 [0.05]
       80 LOADN                            R16 0
       81 CALL                             R14 2 1
       82 SETTABLEKS                       R14 R13 K20 ["PaddingRight"]
       84 GETIMPORT                        R14 K26 [UDim.new]
       86 LOADK                            R15 K27 [0.05]
       87 LOADN                            R16 0
       88 CALL                             R14 2 1
       89 SETTABLEKS                       R14 R13 K21 ["PaddingTop"]
       91 GETIMPORT                        R14 K26 [UDim.new]
       93 LOADK                            R15 K27 [0.05]
       94 LOADN                            R16 0
       95 CALL                             R14 2 1
       96 SETTABLEKS                       R14 R13 K22 ["PaddingBottom"]
       98 CALL                             R11 2 1
       99 MOVE                             R12 R2
      100 LOADK                            R13 K40 [":hover"]
      101 DUPTABLE                         R14 K42 [{["BackgroundColor3"] = "$BackgroundHover"}]
      102 CALL                             R12 2 -1
      103 SETLIST                          R6 R7 -1 [1]
      105 CALL                             R3 3 -1
      106 RETURN                           R3 -1
