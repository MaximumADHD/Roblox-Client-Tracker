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
       26 DUPTABLE                         R9 K14 [{["Thickness"] = 0}]
       27 CALL                             R7 2 1
       28 MOVE                             R8 R2
       29 LOADK                            R9 K15 ["::UIPadding"]
       30 DUPTABLE                         R10 K18 [{"PaddingTop", "PaddingBottom"}]
       31 GETIMPORT                        R11 K21 [UDim.new]
       33 LOADN                            R12 0
       34 LOADN                            R13 0
       35 CALL                             R11 2 1
       36 SETTABLEKS                       R11 R10 K16 ["PaddingTop"]
       38 GETIMPORT                        R11 K21 [UDim.new]
       40 LOADN                            R12 0
       41 LOADN                            R13 0
       42 CALL                             R11 2 1
       43 SETTABLEKS                       R11 R10 K17 ["PaddingBottom"]
       45 CALL                             R8 2 1
       46 MOVE                             R9 R2
       47 LOADK                            R10 K22 ["::UICorner"]
       48 DUPTABLE                         R11 K24 [{"CornerRadius"}]
       49 GETIMPORT                        R12 K21 [UDim.new]
       51 LOADN                            R13 0
       52 LOADN                            R14 4
       53 CALL                             R12 2 1
       54 SETTABLEKS                       R12 R11 K23 ["CornerRadius"]
       56 CALL                             R9 2 1
       57 MOVE                             R10 R2
       58 LOADK                            R11 K25 ["> .Component-DropdownItem"]
       59 NEWTABLE                         R12 0 0
       61 NEWTABLE                         R13 0 2
       63 MOVE                             R14 R2
       64 LOADK                            R15 K26 ["::UIListLayout"]
       65 DUPTABLE                         R16 K31 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
       66 GETIMPORT                        R17 K34 [Enum.FillDirection.Horizontal]
       68 SETTABLEKS                       R17 R16 K27 ["FillDirection"]
       70 GETIMPORT                        R17 K36 [Enum.HorizontalAlignment.Left]
       72 SETTABLEKS                       R17 R16 K28 ["HorizontalAlignment"]
       74 GETIMPORT                        R17 K38 [Enum.VerticalAlignment.Center]
       76 SETTABLEKS                       R17 R16 K29 ["VerticalAlignment"]
       78 GETIMPORT                        R17 K40 [Enum.SortOrder.LayoutOrder]
       80 SETTABLEKS                       R17 R16 K30 ["SortOrder"]
       82 CALL                             R14 2 1
       83 MOVE                             R15 R2
       84 LOADK                            R16 K41 ["> #TextLabel"]
       85 DUPTABLE                         R17 K44 [{["BackgroundTransparency"] = 1}]
       86 NEWTABLE                         R18 0 1
       88 MOVE                             R19 R2
       89 LOADK                            R20 K15 ["::UIPadding"]
       90 DUPTABLE                         R21 K46 [{"PaddingLeft"}]
       91 GETIMPORT                        R22 K21 [UDim.new]
       93 LOADN                            R23 0
       94 LOADN                            R24 10
       95 CALL                             R22 2 1
       96 SETTABLEKS                       R22 R21 K45 ["PaddingLeft"]
       98 CALL                             R19 2 -1
       99 SETLIST                          R18 R19 -1 [1]
      101 CALL                             R15 3 -1
      102 SETLIST                          R13 R14 -1 [1]
      104 CALL                             R10 3 1
      105 MOVE                             R11 R2
      106 LOADK                            R12 K47 ["> .Hover"]
      107 DUPTABLE                         R13 K50 [{["BackgroundColor3"] = "$SecondaryHoverBackground"}]
      108 CALL                             R11 2 -1
      109 SETLIST                          R6 R7 -1 [1]
      111 CALL                             R3 3 -1
      112 RETURN                           R3 -1
