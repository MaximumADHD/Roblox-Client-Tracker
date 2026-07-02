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
       45 DUPTABLE                         R10 K28 [{["Size"], ["BackgroundTransparency"] = 1}]
       46 GETIMPORT                        R11 K30 [UDim2.new]
       48 LOADN                            R12 0
       49 LOADN                            R13 18
       50 LOADN                            R14 0
       51 LOADN                            R15 18
       52 CALL                             R11 4 1
       53 SETTABLEKS                       R11 R10 K25 ["Size"]
       55 CALL                             R8 2 1
       56 MOVE                             R9 R2
       57 LOADK                            R10 K31 [">> .Unchecked"]
       58 DUPTABLE                         R11 K36 [{["Image"] = "$CheckboxUncheckedImage", ["HoverImage"] = "$CheckboxHoveredImage"}]
       59 CALL                             R9 2 1
       60 MOVE                             R10 R2
       61 LOADK                            R11 K37 [">> .Checked"]
       62 DUPTABLE                         R12 K39 [{["Image"] = "$CheckboxCheckedImage"}]
       63 CALL                             R10 2 1
       64 MOVE                             R11 R2
       65 LOADK                            R12 K40 [">> TextButton"]
       66 DUPTABLE                         R13 K50 [{["Font"], ["TextColor3"] = "$TextPrimary", ["TextSize"] = 16, ["TextWrapped"] = True, ["RichText"] = True, ["TextXAlignment"], ["BackgroundTransparency"] = 1}]
       67 GETIMPORT                        R14 K52 [Enum.Font.SourceSans]
       69 SETTABLEKS                       R14 R13 K41 ["Font"]
       71 GETIMPORT                        R14 K54 [Enum.TextXAlignment.Left]
       73 SETTABLEKS                       R14 R13 K49 ["TextXAlignment"]
       75 CALL                             R11 2 -1
       76 SETLIST                          R6 R7 -1 [1]
       78 CALL                             R3 3 -1
       79 RETURN                           R3 -1
