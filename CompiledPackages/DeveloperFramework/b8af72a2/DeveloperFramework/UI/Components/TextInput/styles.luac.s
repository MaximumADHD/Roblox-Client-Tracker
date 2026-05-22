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
       24 DUPTABLE                         R8 K12 [{"ClipsDescendants"}]
       25 LOADB                            R9 1
       26 SETTABLEKS                       R9 R8 K11 ["ClipsDescendants"]
       28 CALL                             R6 2 1
       29 MOVE                             R7 R1
       30 LOADK                            R8 K13 [">> TextBox"]
       31 DUPTABLE                         R9 K19 [{"Font", "TextXAlignment", "PlaceholderTextColor3", "TextColor3", "TextSize"}]
       32 GETIMPORT                        R10 K22 [Enum.Font.SourceSans]
       34 SETTABLEKS                       R10 R9 K14 ["Font"]
       36 GETIMPORT                        R10 K24 [Enum.TextXAlignment.Left]
       38 SETTABLEKS                       R10 R9 K15 ["TextXAlignment"]
       40 LOADK                            R10 K25 ["$TextDisabled"]
       41 SETTABLEKS                       R10 R9 K16 ["PlaceholderTextColor3"]
       43 LOADK                            R10 K26 ["$TextPrimary"]
       44 SETTABLEKS                       R10 R9 K17 ["TextColor3"]
       46 LOADK                            R10 K27 ["$InputTextSize"]
       47 SETTABLEKS                       R10 R9 K18 ["TextSize"]
       49 CALL                             R7 2 1
       50 MOVE                             R8 R1
       51 LOADK                            R9 K28 [".Compact >> TextBox"]
       52 DUPTABLE                         R10 K29 [{"TextSize"}]
       53 LOADK                            R11 K30 ["$CompactInputTextSize"]
       54 SETTABLEKS                       R11 R10 K18 ["TextSize"]
       56 CALL                             R8 2 1
       57 MOVE                             R9 R1
       58 LOADK                            R10 K31 [".PropertyCellError >> TextBox"]
       59 DUPTABLE                         R11 K32 [{"TextColor3"}]
       60 LOADK                            R12 K33 ["$TextError"]
       61 SETTABLEKS                       R12 R11 K17 ["TextColor3"]
       63 CALL                             R9 2 -1
       64 SETLIST                          R5 R6 -1 [1]
       66 DUPTABLE                         R6 K39 [{"Size", "InputTextSize", "CompactInputTextSize", "HorizontalComponentSpacing", "VerticalComponentSpacing"}]
       67 GETIMPORT                        R7 K42 [UDim2.new]
       69 LOADN                            R8 1
       70 LOADN                            R9 0
       71 LOADN                            R10 0
       72 LOADN                            R11 32
       73 CALL                             R7 4 1
       74 SETTABLEKS                       R7 R6 K34 ["Size"]
       76 LOADN                            R7 18
       77 SETTABLEKS                       R7 R6 K35 ["InputTextSize"]
       79 LOADN                            R7 14
       80 SETTABLEKS                       R7 R6 K36 ["CompactInputTextSize"]
       82 LOADN                            R7 10
       83 SETTABLEKS                       R7 R6 K37 ["HorizontalComponentSpacing"]
       85 LOADN                            R7 5
       86 SETTABLEKS                       R7 R6 K38 ["VerticalComponentSpacing"]
       88 CALL                             R2 4 -1
       89 RETURN                           R2 -1
