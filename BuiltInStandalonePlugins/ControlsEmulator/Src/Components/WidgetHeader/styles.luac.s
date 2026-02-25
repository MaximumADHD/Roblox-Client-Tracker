MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K7 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Resources"]
       24 GETTABLEKS                       R3 R4 K9 ["StyleConstants"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R4 R1 K10 ["Styling"]
       29 GETTABLEKS                       R3 R4 K11 ["createStyleRule"]
       31 MOVE                             R4 R3
       32 LOADK                            R5 K12 [".Component-WidgetHeader"]
       33 DUPTABLE                         R6 K18 [{"Font", "TextColor3", "BackgroundColor3", "BorderSizePixel", "Size"}]
       34 GETTABLEKS                       R7 R2 K19 ["defaultFont"]
       36 SETTABLEKS                       R7 R6 K13 ["Font"]
       38 LOADK                            R7 K20 ["$TextPrimary"]
       39 SETTABLEKS                       R7 R6 K14 ["TextColor3"]
       41 LOADK                            R7 K21 ["$HeaderBackgroundColor"]
       42 SETTABLEKS                       R7 R6 K15 ["BackgroundColor3"]
       44 LOADN                            R7 0
       45 SETTABLEKS                       R7 R6 K16 ["BorderSizePixel"]
       47 GETIMPORT                        R7 K24 [UDim2.new]
       49 LOADN                            R8 1
       50 LOADN                            R9 0
       51 LOADN                            R10 0
       52 GETTABLEKS                       R11 R2 K25 ["deviceHeaderHeight"]
       54 CALL                             R7 4 1
       55 SETTABLEKS                       R7 R6 K17 ["Size"]
       57 NEWTABLE                         R7 0 4
       59 MOVE                             R8 R3
       60 LOADK                            R9 K26 ["::UIPadding"]
       61 DUPTABLE                         R10 K29 [{"PaddingLeft", "PaddingRight"}]
       62 GETIMPORT                        R11 K31 [UDim.new]
       64 LOADN                            R12 0
       65 LOADN                            R13 8
       66 CALL                             R11 2 1
       67 SETTABLEKS                       R11 R10 K27 ["PaddingLeft"]
       69 GETIMPORT                        R11 K31 [UDim.new]
       71 LOADN                            R12 0
       72 LOADN                            R13 8
       73 CALL                             R11 2 1
       74 SETTABLEKS                       R11 R10 K28 ["PaddingRight"]
       76 CALL                             R8 2 1
       77 MOVE                             R9 R3
       78 LOADK                            R10 K32 ["::UISizeConstraint"]
       79 DUPTABLE                         R11 K34 [{"MinSize"}]
       80 GETIMPORT                        R12 K36 [Vector2.new]
       82 LOADN                            R13 4
       83 LOADN                            R14 0
       84 CALL                             R12 2 1
       85 SETTABLEKS                       R12 R11 K33 ["MinSize"]
       87 CALL                             R9 2 1
       88 MOVE                             R10 R3
       89 LOADK                            R11 K37 [">> .LeftContents"]
       90 DUPTABLE                         R12 K41 [{"BorderSizePixel", "Size", "AutomaticSize", "BackgroundTransparency", "TextSize"}]
       91 LOADN                            R13 0
       92 SETTABLEKS                       R13 R12 K16 ["BorderSizePixel"]
       94 GETIMPORT                        R13 K24 [UDim2.new]
       96 LOADN                            R14 0
       97 LOADN                            R15 0
       98 LOADN                            R16 1
       99 LOADN                            R17 0
      100 CALL                             R13 4 1
      101 SETTABLEKS                       R13 R12 K17 ["Size"]
      103 GETIMPORT                        R13 K44 [Enum.AutomaticSize.X]
      105 SETTABLEKS                       R13 R12 K38 ["AutomaticSize"]
      107 LOADN                            R13 1
      108 SETTABLEKS                       R13 R12 K39 ["BackgroundTransparency"]
      110 GETTABLEKS                       R13 R2 K45 ["headerFontSize"]
      112 SETTABLEKS                       R13 R12 K40 ["TextSize"]
      114 NEWTABLE                         R13 0 1
      116 MOVE                             R14 R3
      117 LOADK                            R15 K46 ["::UIListLayout"]
      118 DUPTABLE                         R16 K52 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection", "Wraps"}]
      119 GETIMPORT                        R17 K54 [Enum.SortOrder.LayoutOrder]
      121 SETTABLEKS                       R17 R16 K47 ["SortOrder"]
      123 GETIMPORT                        R17 K56 [Enum.HorizontalAlignment.Left]
      125 SETTABLEKS                       R17 R16 K48 ["HorizontalAlignment"]
      127 GETIMPORT                        R17 K58 [Enum.VerticalAlignment.Center]
      129 SETTABLEKS                       R17 R16 K49 ["VerticalAlignment"]
      131 GETIMPORT                        R17 K60 [Enum.FillDirection.Horizontal]
      133 SETTABLEKS                       R17 R16 K50 ["FillDirection"]
      135 LOADB                            R17 0
      136 SETTABLEKS                       R17 R16 K51 ["Wraps"]
      138 CALL                             R14 2 -1
      139 SETLIST                          R13 R14 -1 [1]
      141 CALL                             R10 3 1
      142 MOVE                             R11 R3
      143 LOADK                            R12 K61 [">> .RightContents"]
      144 DUPTABLE                         R13 K63 [{"Position", "BorderSizePixel", "Size", "BackgroundTransparency", "TextSize"}]
      145 GETIMPORT                        R14 K24 [UDim2.new]
      147 LOADN                            R15 0
      148 LOADN                            R16 0
      149 LOADN                            R17 0
      150 LOADN                            R18 0
      151 CALL                             R14 4 1
      152 SETTABLEKS                       R14 R13 K62 ["Position"]
      154 LOADN                            R14 0
      155 SETTABLEKS                       R14 R13 K16 ["BorderSizePixel"]
      157 GETIMPORT                        R14 K24 [UDim2.new]
      159 LOADN                            R15 1
      160 LOADN                            R16 0
      161 LOADN                            R17 1
      162 LOADN                            R18 0
      163 CALL                             R14 4 1
      164 SETTABLEKS                       R14 R13 K17 ["Size"]
      166 LOADN                            R14 1
      167 SETTABLEKS                       R14 R13 K39 ["BackgroundTransparency"]
      169 GETTABLEKS                       R14 R2 K45 ["headerFontSize"]
      171 SETTABLEKS                       R14 R13 K40 ["TextSize"]
      173 NEWTABLE                         R14 0 1
      175 MOVE                             R15 R3
      176 LOADK                            R16 K46 ["::UIListLayout"]
      177 DUPTABLE                         R17 K65 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection", "Padding", "Wraps"}]
      178 GETIMPORT                        R18 K54 [Enum.SortOrder.LayoutOrder]
      180 SETTABLEKS                       R18 R17 K47 ["SortOrder"]
      182 GETIMPORT                        R18 K67 [Enum.HorizontalAlignment.Right]
      184 SETTABLEKS                       R18 R17 K48 ["HorizontalAlignment"]
      186 GETIMPORT                        R18 K58 [Enum.VerticalAlignment.Center]
      188 SETTABLEKS                       R18 R17 K49 ["VerticalAlignment"]
      190 GETIMPORT                        R18 K60 [Enum.FillDirection.Horizontal]
      192 SETTABLEKS                       R18 R17 K50 ["FillDirection"]
      194 GETIMPORT                        R18 K31 [UDim.new]
      196 LOADN                            R19 0
      197 LOADN                            R20 4
      198 CALL                             R18 2 1
      199 SETTABLEKS                       R18 R17 K64 ["Padding"]
      201 LOADB                            R18 0
      202 SETTABLEKS                       R18 R17 K51 ["Wraps"]
      204 CALL                             R15 2 -1
      205 SETLIST                          R14 R15 -1 [1]
      207 CALL                             R11 3 -1
      208 SETLIST                          R7 R8 -1 [1]
      210 CALL                             R4 3 -1
      211 RETURN                           R4 -1
