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
       18 GETTABLEKS                       R2 R1 K7 ["Styling"]
       20 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       22 MOVE                             R3 R2
       23 LOADK                            R4 K9 [".Component-NotificationText"]
       24 DUPTABLE                         R5 K15 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       25 GETIMPORT                        R6 K18 [Enum.AutomaticSize.Y]
       27 SETTABLEKS                       R6 R5 K10 ["AutomaticSize"]
       29 NEWTABLE                         R6 0 3
       31 MOVE                             R7 R2
       32 LOADK                            R8 K19 ["> #Subject"]
       33 DUPTABLE                         R9 K32 [{["RichText"] = True, ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["TextColor3"] = "$TextPrimary", ["TextSize"] = "$CardSubjectTextSize", ["Font"], ["TextWrapped"] = True, ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"]}]
       34 GETIMPORT                        R10 K35 [UDim2.new]
       36 LOADN                            R11 1
       37 LOADN                            R12 0
       38 LOADN                            R13 0
       39 LOADN                            R14 0
       40 CALL                             R10 4 1
       41 SETTABLEKS                       R10 R9 K22 ["Size"]
       43 GETIMPORT                        R10 K18 [Enum.AutomaticSize.Y]
       45 SETTABLEKS                       R10 R9 K10 ["AutomaticSize"]
       47 GETIMPORT                        R10 K37 [Enum.Font.SourceSans]
       49 SETTABLEKS                       R10 R9 K27 ["Font"]
       51 GETIMPORT                        R10 K39 [Enum.TextTruncate.AtEnd]
       53 SETTABLEKS                       R10 R9 K29 ["TextTruncate"]
       55 GETIMPORT                        R10 K41 [Enum.TextXAlignment.Left]
       57 SETTABLEKS                       R10 R9 K30 ["TextXAlignment"]
       59 GETIMPORT                        R10 K43 [Enum.TextYAlignment.Top]
       61 SETTABLEKS                       R10 R9 K31 ["TextYAlignment"]
       63 NEWTABLE                         R10 0 1
       65 MOVE                             R11 R2
       66 LOADK                            R12 K44 ["::UISizeConstraint"]
       67 DUPTABLE                         R13 K47 [{"MaxSize", "MinSize"}]
       68 GETIMPORT                        R14 K49 [Vector2.new]
       70 LOADK                            R15 K50 [∞]
       71 LOADN                            R16 36
       72 CALL                             R14 2 1
       73 SETTABLEKS                       R14 R13 K45 ["MaxSize"]
       75 GETIMPORT                        R14 K49 [Vector2.new]
       77 LOADN                            R15 0
       78 LOADN                            R16 18
       79 CALL                             R14 2 1
       80 SETTABLEKS                       R14 R13 K46 ["MinSize"]
       82 CALL                             R11 2 -1
       83 SETLIST                          R10 R11 -1 [1]
       85 CALL                             R7 3 1
       86 MOVE                             R8 R2
       87 LOADK                            R9 K51 ["> #Subline"]
       88 DUPTABLE                         R10 K54 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["TextColor3"] = "$TextSecondary", ["TextSize"] = 18, ["Font"], ["TextWrapped"] = True, ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"]}]
       89 GETIMPORT                        R11 K35 [UDim2.new]
       91 LOADN                            R12 1
       92 LOADN                            R13 0
       93 LOADN                            R14 0
       94 LOADN                            R15 0
       95 CALL                             R11 4 1
       96 SETTABLEKS                       R11 R10 K22 ["Size"]
       98 GETIMPORT                        R11 K18 [Enum.AutomaticSize.Y]
      100 SETTABLEKS                       R11 R10 K10 ["AutomaticSize"]
      102 GETIMPORT                        R11 K37 [Enum.Font.SourceSans]
      104 SETTABLEKS                       R11 R10 K27 ["Font"]
      106 GETIMPORT                        R11 K39 [Enum.TextTruncate.AtEnd]
      108 SETTABLEKS                       R11 R10 K29 ["TextTruncate"]
      110 GETIMPORT                        R11 K41 [Enum.TextXAlignment.Left]
      112 SETTABLEKS                       R11 R10 K30 ["TextXAlignment"]
      114 GETIMPORT                        R11 K43 [Enum.TextYAlignment.Top]
      116 SETTABLEKS                       R11 R10 K31 ["TextYAlignment"]
      118 NEWTABLE                         R11 0 1
      120 MOVE                             R12 R2
      121 LOADK                            R13 K44 ["::UISizeConstraint"]
      122 DUPTABLE                         R14 K47 [{"MaxSize", "MinSize"}]
      123 GETIMPORT                        R15 K49 [Vector2.new]
      125 LOADK                            R16 K50 [∞]
      126 LOADN                            R17 36
      127 CALL                             R15 2 1
      128 SETTABLEKS                       R15 R14 K45 ["MaxSize"]
      130 GETIMPORT                        R15 K49 [Vector2.new]
      132 LOADN                            R16 0
      133 LOADN                            R17 18
      134 CALL                             R15 2 1
      135 SETTABLEKS                       R15 R14 K46 ["MinSize"]
      137 CALL                             R12 2 -1
      138 SETLIST                          R11 R12 -1 [1]
      140 CALL                             R8 3 1
      141 MOVE                             R9 R2
      142 LOADK                            R10 K55 ["> #ElapsedTime"]
      143 DUPTABLE                         R11 K57 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["TextColor3"] = "$TextSecondary", ["TextSize"] = 15, ["Font"], ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"]}]
      144 GETIMPORT                        R12 K35 [UDim2.new]
      146 LOADN                            R13 1
      147 LOADN                            R14 0
      148 LOADN                            R15 0
      149 LOADN                            R16 0
      150 CALL                             R12 4 1
      151 SETTABLEKS                       R12 R11 K22 ["Size"]
      153 GETIMPORT                        R12 K18 [Enum.AutomaticSize.Y]
      155 SETTABLEKS                       R12 R11 K10 ["AutomaticSize"]
      157 GETIMPORT                        R12 K37 [Enum.Font.SourceSans]
      159 SETTABLEKS                       R12 R11 K27 ["Font"]
      161 GETIMPORT                        R12 K39 [Enum.TextTruncate.AtEnd]
      163 SETTABLEKS                       R12 R11 K29 ["TextTruncate"]
      165 GETIMPORT                        R12 K41 [Enum.TextXAlignment.Left]
      167 SETTABLEKS                       R12 R11 K30 ["TextXAlignment"]
      169 GETIMPORT                        R12 K43 [Enum.TextYAlignment.Top]
      171 SETTABLEKS                       R12 R11 K31 ["TextYAlignment"]
      173 CALL                             R9 2 -1
      174 SETLIST                          R6 R7 -1 [1]
      176 CALL                             R3 3 -1
      177 RETURN                           R3 -1
