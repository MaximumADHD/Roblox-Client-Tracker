MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-TaggingDropdown"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 5
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["::UIStroke"]
       26 DUPTABLE                         R9 K13 [{"Thickness"}]
       27 LOADN                            R10 0
       28 SETTABLEKS                       R10 R9 K12 ["Thickness"]
       30 CALL                             R7 2 1
       31 MOVE                             R8 R2
       32 LOADK                            R9 K14 ["::UIPadding"]
       33 DUPTABLE                         R10 K17 [{"PaddingTop", "PaddingBottom"}]
       34 GETIMPORT                        R11 K20 [UDim.new]
       36 LOADN                            R12 0
       37 LOADN                            R13 0
       38 CALL                             R11 2 1
       39 SETTABLEKS                       R11 R10 K15 ["PaddingTop"]
       41 GETIMPORT                        R11 K20 [UDim.new]
       43 LOADN                            R12 0
       44 LOADN                            R13 0
       45 CALL                             R11 2 1
       46 SETTABLEKS                       R11 R10 K16 ["PaddingBottom"]
       48 CALL                             R8 2 1
       49 MOVE                             R9 R2
       50 LOADK                            R10 K21 ["::UICorner"]
       51 DUPTABLE                         R11 K23 [{"CornerRadius"}]
       52 GETIMPORT                        R12 K20 [UDim.new]
       54 LOADN                            R13 0
       55 LOADN                            R14 4
       56 CALL                             R12 2 1
       57 SETTABLEKS                       R12 R11 K22 ["CornerRadius"]
       59 CALL                             R9 2 1
       60 MOVE                             R10 R2
       61 LOADK                            R11 K24 ["> .Component-DropdownItem"]
       62 NEWTABLE                         R12 0 0
       64 NEWTABLE                         R13 0 2
       66 MOVE                             R14 R2
       67 LOADK                            R15 K25 ["::UIListLayout"]
       68 DUPTABLE                         R16 K30 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
       69 GETIMPORT                        R17 K33 [Enum.FillDirection.Horizontal]
       71 SETTABLEKS                       R17 R16 K26 ["FillDirection"]
       73 GETIMPORT                        R17 K35 [Enum.HorizontalAlignment.Left]
       75 SETTABLEKS                       R17 R16 K27 ["HorizontalAlignment"]
       77 GETIMPORT                        R17 K37 [Enum.VerticalAlignment.Center]
       79 SETTABLEKS                       R17 R16 K28 ["VerticalAlignment"]
       81 GETIMPORT                        R17 K39 [Enum.SortOrder.LayoutOrder]
       83 SETTABLEKS                       R17 R16 K29 ["SortOrder"]
       85 CALL                             R14 2 1
       86 MOVE                             R15 R2
       87 LOADK                            R16 K40 ["> #TextLabel"]
       88 DUPTABLE                         R17 K42 [{"BackgroundTransparency"}]
       89 LOADN                            R18 1
       90 SETTABLEKS                       R18 R17 K41 ["BackgroundTransparency"]
       92 NEWTABLE                         R18 0 1
       94 MOVE                             R19 R2
       95 LOADK                            R20 K14 ["::UIPadding"]
       96 DUPTABLE                         R21 K44 [{"PaddingLeft"}]
       97 GETIMPORT                        R22 K20 [UDim.new]
       99 LOADN                            R23 0
      100 LOADN                            R24 10
      101 CALL                             R22 2 1
      102 SETTABLEKS                       R22 R21 K43 ["PaddingLeft"]
      104 CALL                             R19 2 -1
      105 SETLIST                          R18 R19 -1 [1]
      107 CALL                             R15 3 -1
      108 SETLIST                          R13 R14 -1 [1]
      110 CALL                             R10 3 1
      111 MOVE                             R11 R2
      112 LOADK                            R12 K45 ["> .Hover"]
      113 DUPTABLE                         R13 K47 [{"BackgroundColor3"}]
      114 LOADK                            R14 K48 ["$SecondaryHoverBackground"]
      115 SETTABLEKS                       R14 R13 K46 ["BackgroundColor3"]
      117 CALL                             R11 2 -1
      118 SETLIST                          R6 R7 -1 [1]
      120 CALL                             R3 3 -1
      121 RETURN                           R3 -1
