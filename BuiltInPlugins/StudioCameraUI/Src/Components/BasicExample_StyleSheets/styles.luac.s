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
       19 LOADK                            R4 K10 [".Component-BasicExample"]
       20 DUPTABLE                         R5 K13 [{"BackgroundColor3", "BorderSizePixel"}]
       21 LOADK                            R6 K14 ["$BackgroundPaper"]
       22 SETTABLEKS                       R6 R5 K11 ["BackgroundColor3"]
       24 LOADN                            R6 0
       25 SETTABLEKS                       R6 R5 K12 ["BorderSizePixel"]
       27 NEWTABLE                         R6 0 3
       29 MOVE                             R7 R2
       30 LOADK                            R8 K15 ["::UICorner"]
       31 DUPTABLE                         R9 K17 [{"CornerRadius"}]
       32 GETIMPORT                        R10 K20 [UDim.new]
       34 LOADN                            R11 0
       35 LOADN                            R12 10
       36 CALL                             R10 2 1
       37 SETTABLEKS                       R10 R9 K16 ["CornerRadius"]
       39 CALL                             R7 2 1
       40 MOVE                             R8 R2
       41 LOADK                            R9 K21 [":hover"]
       42 DUPTABLE                         R10 K22 [{"BackgroundColor3"}]
       43 LOADK                            R11 K23 ["$BackgroundHover"]
       44 SETTABLEKS                       R11 R10 K11 ["BackgroundColor3"]
       46 CALL                             R8 2 1
       47 MOVE                             R9 R2
       48 LOADK                            R10 K24 ["> #OptionalContent"]
       49 DUPTABLE                         R11 K32 [{"TextSize", "Font", "TextColor3", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment"}]
       50 LOADN                            R12 24
       51 SETTABLEKS                       R12 R11 K25 ["TextSize"]
       53 GETIMPORT                        R12 K35 [Enum.Font.SourceSans]
       55 SETTABLEKS                       R12 R11 K26 ["Font"]
       57 LOADK                            R12 K36 ["$TextPrimary"]
       58 SETTABLEKS                       R12 R11 K27 ["TextColor3"]
       60 GETIMPORT                        R12 K38 [UDim2.new]
       62 LOADN                            R13 1
       63 LOADN                            R14 0
       64 LOADN                            R15 0
       65 LOADN                            R16 50
       66 CALL                             R12 4 1
       67 SETTABLEKS                       R12 R11 K28 ["Size"]
       69 LOADN                            R12 1
       70 SETTABLEKS                       R12 R11 K29 ["BackgroundTransparency"]
       72 GETIMPORT                        R12 K40 [Enum.TextXAlignment.Center]
       74 SETTABLEKS                       R12 R11 K30 ["TextXAlignment"]
       76 GETIMPORT                        R12 K41 [Enum.TextYAlignment.Center]
       78 SETTABLEKS                       R12 R11 K31 ["TextYAlignment"]
       80 CALL                             R9 2 -1
       81 SETLIST                          R6 R7 -1 [1]
       83 CALL                             R3 3 -1
       84 RETURN                           R3 -1
