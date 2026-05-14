MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModerationDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-Checkbox"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 5
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["::UIListLayout"]
       26 DUPTABLE                         R9 K15 [{"FillDirection", "Padding", "SortOrder"}]
       27 GETIMPORT                        R10 K18 [Enum.FillDirection.Horizontal]
       29 SETTABLEKS                       R10 R9 K12 ["FillDirection"]
       31 GETIMPORT                        R10 K21 [UDim.new]
       33 LOADN                            R11 0
       34 LOADN                            R12 12
       35 CALL                             R10 2 1
       36 SETTABLEKS                       R10 R9 K13 ["Padding"]
       38 GETIMPORT                        R10 K23 [Enum.SortOrder.LayoutOrder]
       40 SETTABLEKS                       R10 R9 K14 ["SortOrder"]
       42 CALL                             R7 2 1
       43 MOVE                             R8 R2
       44 LOADK                            R9 K24 [">> ImageButton"]
       45 DUPTABLE                         R10 K27 [{"Size", "BackgroundTransparency"}]
       46 GETIMPORT                        R11 K29 [UDim2.new]
       48 LOADN                            R12 0
       49 LOADN                            R13 18
       50 LOADN                            R14 0
       51 LOADN                            R15 18
       52 CALL                             R11 4 1
       53 SETTABLEKS                       R11 R10 K25 ["Size"]
       55 LOADN                            R11 1
       56 SETTABLEKS                       R11 R10 K26 ["BackgroundTransparency"]
       58 CALL                             R8 2 1
       59 MOVE                             R9 R2
       60 LOADK                            R10 K30 [">> .Unchecked"]
       61 DUPTABLE                         R11 K33 [{"Image", "HoverImage"}]
       62 LOADK                            R12 K34 ["$CheckboxUncheckedImage"]
       63 SETTABLEKS                       R12 R11 K31 ["Image"]
       65 LOADK                            R12 K35 ["$CheckboxHoveredImage"]
       66 SETTABLEKS                       R12 R11 K32 ["HoverImage"]
       68 CALL                             R9 2 1
       69 MOVE                             R10 R2
       70 LOADK                            R11 K36 [">> .Checked"]
       71 DUPTABLE                         R12 K37 [{"Image"}]
       72 LOADK                            R13 K38 ["$CheckboxCheckedImage"]
       73 SETTABLEKS                       R13 R12 K31 ["Image"]
       75 CALL                             R10 2 1
       76 MOVE                             R11 R2
       77 LOADK                            R12 K39 [">> TextButton"]
       78 DUPTABLE                         R13 K46 [{"Font", "TextColor3", "TextSize", "TextWrapped", "RichText", "TextXAlignment", "BackgroundTransparency"}]
       79 GETIMPORT                        R14 K48 [Enum.Font.SourceSans]
       81 SETTABLEKS                       R14 R13 K40 ["Font"]
       83 LOADK                            R14 K49 ["$TextPrimary"]
       84 SETTABLEKS                       R14 R13 K41 ["TextColor3"]
       86 LOADN                            R14 16
       87 SETTABLEKS                       R14 R13 K42 ["TextSize"]
       89 LOADB                            R14 1
       90 SETTABLEKS                       R14 R13 K43 ["TextWrapped"]
       92 LOADB                            R14 1
       93 SETTABLEKS                       R14 R13 K44 ["RichText"]
       95 GETIMPORT                        R14 K51 [Enum.TextXAlignment.Left]
       97 SETTABLEKS                       R14 R13 K45 ["TextXAlignment"]
       99 LOADN                            R14 1
      100 SETTABLEKS                       R14 R13 K26 ["BackgroundTransparency"]
      102 CALL                             R11 2 -1
      103 SETLIST                          R6 R7 -1 [1]
      105 CALL                             R3 3 -1
      106 RETURN                           R3 -1
