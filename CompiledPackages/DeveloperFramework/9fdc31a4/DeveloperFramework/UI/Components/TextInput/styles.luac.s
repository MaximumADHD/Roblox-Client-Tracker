MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-TextInput"]
       18 NEWTABLE                         R4 0 0
       20 NEWTABLE                         R5 0 4
       22 MOVE                             R6 R1
       23 LOADK                            R7 K10 [".Input"]
       24 DUPTABLE                         R8 K13 [{["ClipsDescendants"] = True}]
       25 CALL                             R6 2 1
       26 MOVE                             R7 R1
       27 LOADK                            R8 K14 [">> TextBox"]
       28 DUPTABLE                         R9 K23 [{["Font"], ["TextXAlignment"], ["PlaceholderTextColor3"] = "$TextDisabled", ["TextColor3"] = "$TextPrimary", ["TextSize"] = "$InputTextSize"}]
       29 GETIMPORT                        R10 K26 [Enum.Font.SourceSans]
       31 SETTABLEKS                       R10 R9 K15 ["Font"]
       33 GETIMPORT                        R10 K28 [Enum.TextXAlignment.Left]
       35 SETTABLEKS                       R10 R9 K16 ["TextXAlignment"]
       37 CALL                             R7 2 1
       38 MOVE                             R8 R1
       39 LOADK                            R9 K29 [".Compact >> TextBox"]
       40 DUPTABLE                         R10 K31 [{["TextSize"] = "$CompactInputTextSize"}]
       41 CALL                             R8 2 1
       42 MOVE                             R9 R1
       43 LOADK                            R10 K32 [".PropertyCellError >> TextBox"]
       44 DUPTABLE                         R11 K34 [{["TextColor3"] = "$TextError"}]
       45 CALL                             R9 2 -1
       46 SETLIST                          R5 R6 -1 [1]
       48 DUPTABLE                         R6 K44 [{["Size"], ["InputTextSize"] = 18, ["CompactInputTextSize"] = 14, ["HorizontalComponentSpacing"] = 10, ["VerticalComponentSpacing"] = 5}]
       49 GETIMPORT                        R7 K47 [UDim2.new]
       51 LOADN                            R8 1
       52 LOADN                            R9 0
       53 LOADN                            R10 0
       54 LOADN                            R11 32
       55 CALL                             R7 4 1
       56 SETTABLEKS                       R7 R6 K35 ["Size"]
       58 CALL                             R2 4 -1
       59 RETURN                           R2 -1
