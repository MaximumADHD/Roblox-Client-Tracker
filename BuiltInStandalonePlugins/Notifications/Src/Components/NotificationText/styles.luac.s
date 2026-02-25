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
       18 GETTABLEKS                       R3 R1 K7 ["Styling"]
       20 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
       22 MOVE                             R3 R2
       23 LOADK                            R4 K9 [".Component-NotificationText"]
       24 DUPTABLE                         R5 K13 [{"AutomaticSize", "BackgroundTransparency", "BorderSizePixel"}]
       25 GETIMPORT                        R6 K16 [Enum.AutomaticSize.Y]
       27 SETTABLEKS                       R6 R5 K10 ["AutomaticSize"]
       29 LOADN                            R6 1
       30 SETTABLEKS                       R6 R5 K11 ["BackgroundTransparency"]
       32 LOADN                            R6 0
       33 SETTABLEKS                       R6 R5 K12 ["BorderSizePixel"]
       35 NEWTABLE                         R6 0 3
       37 MOVE                             R7 R2
       38 LOADK                            R8 K17 ["> #Subject"]
       39 DUPTABLE                         R9 K27 [{"RichText", "Size", "AutomaticSize", "BackgroundTransparency", "TextColor3", "TextSize", "Font", "TextWrapped", "TextTruncate", "TextXAlignment", "TextYAlignment"}]
       40 LOADB                            R10 1
       41 SETTABLEKS                       R10 R9 K18 ["RichText"]
       43 GETIMPORT                        R10 K30 [UDim2.new]
       45 LOADN                            R11 1
       46 LOADN                            R12 0
       47 LOADN                            R13 0
       48 LOADN                            R14 0
       49 CALL                             R10 4 1
       50 SETTABLEKS                       R10 R9 K19 ["Size"]
       52 GETIMPORT                        R10 K16 [Enum.AutomaticSize.Y]
       54 SETTABLEKS                       R10 R9 K10 ["AutomaticSize"]
       56 LOADN                            R10 1
       57 SETTABLEKS                       R10 R9 K11 ["BackgroundTransparency"]
       59 LOADK                            R10 K31 ["$TextPrimary"]
       60 SETTABLEKS                       R10 R9 K20 ["TextColor3"]
       62 LOADK                            R10 K32 ["$CardSubjectTextSize"]
       63 SETTABLEKS                       R10 R9 K21 ["TextSize"]
       65 GETIMPORT                        R10 K34 [Enum.Font.SourceSans]
       67 SETTABLEKS                       R10 R9 K22 ["Font"]
       69 LOADB                            R10 1
       70 SETTABLEKS                       R10 R9 K23 ["TextWrapped"]
       72 GETIMPORT                        R10 K36 [Enum.TextTruncate.AtEnd]
       74 SETTABLEKS                       R10 R9 K24 ["TextTruncate"]
       76 GETIMPORT                        R10 K38 [Enum.TextXAlignment.Left]
       78 SETTABLEKS                       R10 R9 K25 ["TextXAlignment"]
       80 GETIMPORT                        R10 K40 [Enum.TextYAlignment.Top]
       82 SETTABLEKS                       R10 R9 K26 ["TextYAlignment"]
       84 NEWTABLE                         R10 0 1
       86 MOVE                             R11 R2
       87 LOADK                            R12 K41 ["::UISizeConstraint"]
       88 DUPTABLE                         R13 K44 [{"MaxSize", "MinSize"}]
       89 GETIMPORT                        R14 K46 [Vector2.new]
       91 LOADK                            R15 K47 [∞]
       92 LOADN                            R16 36
       93 CALL                             R14 2 1
       94 SETTABLEKS                       R14 R13 K42 ["MaxSize"]
       96 GETIMPORT                        R14 K46 [Vector2.new]
       98 LOADN                            R15 0
       99 LOADN                            R16 18
      100 CALL                             R14 2 1
      101 SETTABLEKS                       R14 R13 K43 ["MinSize"]
      103 CALL                             R11 2 -1
      104 SETLIST                          R10 R11 -1 [1]
      106 CALL                             R7 3 1
      107 MOVE                             R8 R2
      108 LOADK                            R9 K48 ["> #Subline"]
      109 DUPTABLE                         R10 K49 [{"Size", "AutomaticSize", "BackgroundTransparency", "TextColor3", "TextSize", "Font", "TextWrapped", "TextTruncate", "TextXAlignment", "TextYAlignment"}]
      110 GETIMPORT                        R11 K30 [UDim2.new]
      112 LOADN                            R12 1
      113 LOADN                            R13 0
      114 LOADN                            R14 0
      115 LOADN                            R15 0
      116 CALL                             R11 4 1
      117 SETTABLEKS                       R11 R10 K19 ["Size"]
      119 GETIMPORT                        R11 K16 [Enum.AutomaticSize.Y]
      121 SETTABLEKS                       R11 R10 K10 ["AutomaticSize"]
      123 LOADN                            R11 1
      124 SETTABLEKS                       R11 R10 K11 ["BackgroundTransparency"]
      126 LOADK                            R11 K50 ["$TextSecondary"]
      127 SETTABLEKS                       R11 R10 K20 ["TextColor3"]
      129 LOADN                            R11 18
      130 SETTABLEKS                       R11 R10 K21 ["TextSize"]
      132 GETIMPORT                        R11 K34 [Enum.Font.SourceSans]
      134 SETTABLEKS                       R11 R10 K22 ["Font"]
      136 LOADB                            R11 1
      137 SETTABLEKS                       R11 R10 K23 ["TextWrapped"]
      139 GETIMPORT                        R11 K36 [Enum.TextTruncate.AtEnd]
      141 SETTABLEKS                       R11 R10 K24 ["TextTruncate"]
      143 GETIMPORT                        R11 K38 [Enum.TextXAlignment.Left]
      145 SETTABLEKS                       R11 R10 K25 ["TextXAlignment"]
      147 GETIMPORT                        R11 K40 [Enum.TextYAlignment.Top]
      149 SETTABLEKS                       R11 R10 K26 ["TextYAlignment"]
      151 NEWTABLE                         R11 0 1
      153 MOVE                             R12 R2
      154 LOADK                            R13 K41 ["::UISizeConstraint"]
      155 DUPTABLE                         R14 K44 [{"MaxSize", "MinSize"}]
      156 GETIMPORT                        R15 K46 [Vector2.new]
      158 LOADK                            R16 K47 [∞]
      159 LOADN                            R17 36
      160 CALL                             R15 2 1
      161 SETTABLEKS                       R15 R14 K42 ["MaxSize"]
      163 GETIMPORT                        R15 K46 [Vector2.new]
      165 LOADN                            R16 0
      166 LOADN                            R17 18
      167 CALL                             R15 2 1
      168 SETTABLEKS                       R15 R14 K43 ["MinSize"]
      170 CALL                             R12 2 -1
      171 SETLIST                          R11 R12 -1 [1]
      173 CALL                             R8 3 1
      174 MOVE                             R9 R2
      175 LOADK                            R10 K51 ["> #ElapsedTime"]
      176 DUPTABLE                         R11 K52 [{"Size", "AutomaticSize", "BackgroundTransparency", "TextColor3", "TextSize", "Font", "TextTruncate", "TextXAlignment", "TextYAlignment"}]
      177 GETIMPORT                        R12 K30 [UDim2.new]
      179 LOADN                            R13 1
      180 LOADN                            R14 0
      181 LOADN                            R15 0
      182 LOADN                            R16 0
      183 CALL                             R12 4 1
      184 SETTABLEKS                       R12 R11 K19 ["Size"]
      186 GETIMPORT                        R12 K16 [Enum.AutomaticSize.Y]
      188 SETTABLEKS                       R12 R11 K10 ["AutomaticSize"]
      190 LOADN                            R12 1
      191 SETTABLEKS                       R12 R11 K11 ["BackgroundTransparency"]
      193 LOADK                            R12 K50 ["$TextSecondary"]
      194 SETTABLEKS                       R12 R11 K20 ["TextColor3"]
      196 LOADN                            R12 15
      197 SETTABLEKS                       R12 R11 K21 ["TextSize"]
      199 GETIMPORT                        R12 K34 [Enum.Font.SourceSans]
      201 SETTABLEKS                       R12 R11 K22 ["Font"]
      203 GETIMPORT                        R12 K36 [Enum.TextTruncate.AtEnd]
      205 SETTABLEKS                       R12 R11 K24 ["TextTruncate"]
      207 GETIMPORT                        R12 K38 [Enum.TextXAlignment.Left]
      209 SETTABLEKS                       R12 R11 K25 ["TextXAlignment"]
      211 GETIMPORT                        R12 K40 [Enum.TextYAlignment.Top]
      213 SETTABLEKS                       R12 R11 K26 ["TextYAlignment"]
      215 CALL                             R9 2 -1
      216 SETLIST                          R6 R7 -1 [1]
      218 CALL                             R3 3 -1
      219 RETURN                           R3 -1
