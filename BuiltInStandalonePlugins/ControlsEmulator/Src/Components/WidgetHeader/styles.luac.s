MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Resources"]
       24 GETTABLEKS                       R3 R3 K9 ["StyleConstants"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R1 K10 ["Styling"]
       29 GETTABLEKS                       R3 R3 K11 ["createStyleRule"]
       31 MOVE                             R4 R3
       32 LOADK                            R5 K12 [".Component-WidgetHeader"]
       33 DUPTABLE                         R6 K21 [{["Font"], ["TextColor3"] = "$TextPrimary", ["BackgroundColor3"] = "$HeaderBackgroundColor", ["BorderSizePixel"] = 0, ["Size"]}]
       34 GETTABLEKS                       R7 R2 K22 ["defaultFont"]
       36 SETTABLEKS                       R7 R6 K13 ["Font"]
       38 GETIMPORT                        R7 K25 [UDim2.new]
       40 LOADN                            R8 1
       41 LOADN                            R9 0
       42 LOADN                            R10 0
       43 GETTABLEKS                       R11 R2 K26 ["deviceHeaderHeight"]
       45 CALL                             R7 4 1
       46 SETTABLEKS                       R7 R6 K20 ["Size"]
       48 NEWTABLE                         R7 0 4
       50 MOVE                             R8 R3
       51 LOADK                            R9 K27 ["::UIPadding"]
       52 DUPTABLE                         R10 K30 [{"PaddingLeft", "PaddingRight"}]
       53 GETIMPORT                        R11 K32 [UDim.new]
       55 LOADN                            R12 0
       56 LOADN                            R13 8
       57 CALL                             R11 2 1
       58 SETTABLEKS                       R11 R10 K28 ["PaddingLeft"]
       60 GETIMPORT                        R11 K32 [UDim.new]
       62 LOADN                            R12 0
       63 LOADN                            R13 8
       64 CALL                             R11 2 1
       65 SETTABLEKS                       R11 R10 K29 ["PaddingRight"]
       67 CALL                             R8 2 1
       68 MOVE                             R9 R3
       69 LOADK                            R10 K33 ["::UISizeConstraint"]
       70 DUPTABLE                         R11 K35 [{"MinSize"}]
       71 GETIMPORT                        R12 K37 [Vector2.new]
       73 LOADN                            R13 260
       74 LOADN                            R14 0
       75 CALL                             R12 2 1
       76 SETTABLEKS                       R12 R11 K34 ["MinSize"]
       78 CALL                             R9 2 1
       79 MOVE                             R10 R3
       80 LOADK                            R11 K38 [">> .LeftContents"]
       81 DUPTABLE                         R12 K43 [{["BorderSizePixel"] = 0, ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["TextSize"]}]
       82 GETIMPORT                        R13 K25 [UDim2.new]
       84 LOADN                            R14 0
       85 LOADN                            R15 0
       86 LOADN                            R16 1
       87 LOADN                            R17 0
       88 CALL                             R13 4 1
       89 SETTABLEKS                       R13 R12 K20 ["Size"]
       91 GETIMPORT                        R13 K46 [Enum.AutomaticSize.X]
       93 SETTABLEKS                       R13 R12 K39 ["AutomaticSize"]
       95 GETTABLEKS                       R13 R2 K47 ["headerFontSize"]
       97 SETTABLEKS                       R13 R12 K42 ["TextSize"]
       99 NEWTABLE                         R13 0 1
      101 MOVE                             R14 R3
      102 LOADK                            R15 K48 ["::UIListLayout"]
      103 DUPTABLE                         R16 K55 [{["SortOrder"], ["HorizontalAlignment"], ["VerticalAlignment"], ["FillDirection"], ["Wraps"] = False}]
      104 GETIMPORT                        R17 K57 [Enum.SortOrder.LayoutOrder]
      106 SETTABLEKS                       R17 R16 K49 ["SortOrder"]
      108 GETIMPORT                        R17 K59 [Enum.HorizontalAlignment.Left]
      110 SETTABLEKS                       R17 R16 K50 ["HorizontalAlignment"]
      112 GETIMPORT                        R17 K61 [Enum.VerticalAlignment.Center]
      114 SETTABLEKS                       R17 R16 K51 ["VerticalAlignment"]
      116 GETIMPORT                        R17 K63 [Enum.FillDirection.Horizontal]
      118 SETTABLEKS                       R17 R16 K52 ["FillDirection"]
      120 CALL                             R14 2 -1
      121 SETLIST                          R13 R14 -1 [1]
      123 CALL                             R10 3 1
      124 MOVE                             R11 R3
      125 LOADK                            R12 K64 [">> .RightContents"]
      126 DUPTABLE                         R13 K66 [{["Position"], ["BorderSizePixel"] = 0, ["Size"], ["BackgroundTransparency"] = 1, ["TextSize"]}]
      127 GETIMPORT                        R14 K25 [UDim2.new]
      129 LOADN                            R15 0
      130 LOADN                            R16 0
      131 LOADN                            R17 0
      132 LOADN                            R18 0
      133 CALL                             R14 4 1
      134 SETTABLEKS                       R14 R13 K65 ["Position"]
      136 GETIMPORT                        R14 K25 [UDim2.new]
      138 LOADN                            R15 1
      139 LOADN                            R16 0
      140 LOADN                            R17 1
      141 LOADN                            R18 0
      142 CALL                             R14 4 1
      143 SETTABLEKS                       R14 R13 K20 ["Size"]
      145 GETTABLEKS                       R14 R2 K47 ["headerFontSize"]
      147 SETTABLEKS                       R14 R13 K42 ["TextSize"]
      149 NEWTABLE                         R14 0 1
      151 MOVE                             R15 R3
      152 LOADK                            R16 K48 ["::UIListLayout"]
      153 DUPTABLE                         R17 K68 [{["SortOrder"], ["HorizontalAlignment"], ["VerticalAlignment"], ["FillDirection"], ["Padding"], ["Wraps"] = False}]
      154 GETIMPORT                        R18 K57 [Enum.SortOrder.LayoutOrder]
      156 SETTABLEKS                       R18 R17 K49 ["SortOrder"]
      158 GETIMPORT                        R18 K70 [Enum.HorizontalAlignment.Right]
      160 SETTABLEKS                       R18 R17 K50 ["HorizontalAlignment"]
      162 GETIMPORT                        R18 K61 [Enum.VerticalAlignment.Center]
      164 SETTABLEKS                       R18 R17 K51 ["VerticalAlignment"]
      166 GETIMPORT                        R18 K63 [Enum.FillDirection.Horizontal]
      168 SETTABLEKS                       R18 R17 K52 ["FillDirection"]
      170 GETIMPORT                        R18 K32 [UDim.new]
      172 LOADN                            R19 0
      173 LOADN                            R20 4
      174 CALL                             R18 2 1
      175 SETTABLEKS                       R18 R17 K67 ["Padding"]
      177 CALL                             R15 2 -1
      178 SETLIST                          R14 R15 -1 [1]
      180 CALL                             R11 3 -1
      181 SETLIST                          R7 R8 -1 [1]
      183 CALL                             R4 3 -1
      184 RETURN                           R4 -1
