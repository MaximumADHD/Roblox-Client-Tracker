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
       23 LOADK                            R4 K9 [".Component-ErrorAlert"]
       24 DUPTABLE                         R5 K13 [{"BackgroundTransparency", "Size", "AutomaticSize"}]
       25 LOADN                            R6 1
       26 SETTABLEKS                       R6 R5 K10 ["BackgroundTransparency"]
       28 GETIMPORT                        R6 K16 [UDim2.fromScale]
       30 LOADN                            R7 1
       31 LOADN                            R8 0
       32 CALL                             R6 2 1
       33 SETTABLEKS                       R6 R5 K11 ["Size"]
       35 GETIMPORT                        R6 K19 [Enum.AutomaticSize.Y]
       37 SETTABLEKS                       R6 R5 K12 ["AutomaticSize"]
       39 NEWTABLE                         R6 0 5
       41 MOVE                             R7 R2
       42 LOADK                            R8 K20 ["::UIListLayout"]
       43 DUPTABLE                         R9 K27 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding", "Wraps", "SortOrder"}]
       44 GETIMPORT                        R10 K29 [Enum.FillDirection.Horizontal]
       46 SETTABLEKS                       R10 R9 K21 ["FillDirection"]
       48 GETIMPORT                        R10 K31 [Enum.HorizontalAlignment.Left]
       50 SETTABLEKS                       R10 R9 K22 ["HorizontalAlignment"]
       52 GETIMPORT                        R10 K33 [Enum.VerticalAlignment.Center]
       54 SETTABLEKS                       R10 R9 K23 ["VerticalAlignment"]
       56 GETIMPORT                        R10 K36 [UDim.new]
       58 LOADN                            R11 0
       59 LOADN                            R12 8
       60 CALL                             R10 2 1
       61 SETTABLEKS                       R10 R9 K24 ["Padding"]
       63 LOADB                            R10 1
       64 SETTABLEKS                       R10 R9 K25 ["Wraps"]
       66 GETIMPORT                        R10 K38 [Enum.SortOrder.LayoutOrder]
       68 SETTABLEKS                       R10 R9 K26 ["SortOrder"]
       70 CALL                             R7 2 1
       71 MOVE                             R8 R2
       72 LOADK                            R9 K39 [">> #Icon"]
       73 DUPTABLE                         R10 K40 [{"BackgroundTransparency"}]
       74 LOADN                            R11 1
       75 SETTABLEKS                       R11 R10 K10 ["BackgroundTransparency"]
       77 CALL                             R8 2 1
       78 MOVE                             R9 R2
       79 LOADK                            R10 K41 [">> ImageButton"]
       80 DUPTABLE                         R11 K40 [{"BackgroundTransparency"}]
       81 LOADN                            R12 1
       82 SETTABLEKS                       R12 R11 K10 ["BackgroundTransparency"]
       84 CALL                             R9 2 1
       85 MOVE                             R10 R2
       86 LOADK                            R11 K42 [">> #Text"]
       87 DUPTABLE                         R12 K48 [{"BackgroundTransparency", "AutomaticSize", "TextSize", "TextWrapped", "TextXAlignment", "RichText", "TextColor3"}]
       88 LOADN                            R13 1
       89 SETTABLEKS                       R13 R12 K10 ["BackgroundTransparency"]
       91 GETIMPORT                        R13 K50 [Enum.AutomaticSize.XY]
       93 SETTABLEKS                       R13 R12 K12 ["AutomaticSize"]
       95 LOADK                            R13 K51 ["$FontSizeS"]
       96 SETTABLEKS                       R13 R12 K43 ["TextSize"]
       98 LOADB                            R13 1
       99 SETTABLEKS                       R13 R12 K44 ["TextWrapped"]
      101 GETIMPORT                        R13 K52 [Enum.TextXAlignment.Left]
      103 SETTABLEKS                       R13 R12 K45 ["TextXAlignment"]
      105 LOADB                            R13 1
      106 SETTABLEKS                       R13 R12 K46 ["RichText"]
      108 LOADK                            R13 K53 ["$TextError"]
      109 SETTABLEKS                       R13 R12 K47 ["TextColor3"]
      111 NEWTABLE                         R13 0 1
      113 MOVE                             R14 R2
      114 LOADK                            R15 K54 ["::UIFlexItem"]
      115 DUPTABLE                         R16 K56 [{"FlexMode"}]
      116 GETIMPORT                        R17 K59 [Enum.UIFlexMode.Shrink]
      118 SETTABLEKS                       R17 R16 K55 ["FlexMode"]
      120 CALL                             R14 2 -1
      121 SETLIST                          R13 R14 -1 [1]
      123 CALL                             R10 3 1
      124 MOVE                             R11 R2
      125 LOADK                            R12 K60 [".Popup"]
      126 DUPTABLE                         R13 K63 [{"AutomaticSize", "ZIndex", "Size", "BackgroundTransparency", "BackgroundColor3"}]
      127 GETIMPORT                        R14 K50 [Enum.AutomaticSize.XY]
      129 SETTABLEKS                       R14 R13 K12 ["AutomaticSize"]
      131 LOADN                            R14 100
      132 SETTABLEKS                       R14 R13 K61 ["ZIndex"]
      134 GETIMPORT                        R14 K65 [UDim2.fromOffset]
      136 LOADN                            R15 1
      137 LOADN                            R16 0
      138 CALL                             R14 2 1
      139 SETTABLEKS                       R14 R13 K11 ["Size"]
      141 LOADN                            R14 0
      142 SETTABLEKS                       R14 R13 K10 ["BackgroundTransparency"]
      144 LOADK                            R14 K66 ["$FilledInputBackground"]
      145 SETTABLEKS                       R14 R13 K62 ["BackgroundColor3"]
      147 NEWTABLE                         R14 0 3
      149 MOVE                             R15 R2
      150 LOADK                            R16 K67 ["::UIPadding"]
      151 DUPTABLE                         R17 K72 [{"PaddingLeft", "PaddingTop", "PaddingBottom", "PaddingRight"}]
      152 GETIMPORT                        R18 K36 [UDim.new]
      154 LOADN                            R19 0
      155 LOADN                            R20 12
      156 CALL                             R18 2 1
      157 SETTABLEKS                       R18 R17 K68 ["PaddingLeft"]
      159 GETIMPORT                        R18 K36 [UDim.new]
      161 LOADN                            R19 0
      162 LOADN                            R20 8
      163 CALL                             R18 2 1
      164 SETTABLEKS                       R18 R17 K69 ["PaddingTop"]
      166 GETIMPORT                        R18 K36 [UDim.new]
      168 LOADN                            R19 0
      169 LOADN                            R20 8
      170 CALL                             R18 2 1
      171 SETTABLEKS                       R18 R17 K70 ["PaddingBottom"]
      173 GETIMPORT                        R18 K36 [UDim.new]
      175 LOADN                            R19 0
      176 LOADN                            R20 8
      177 CALL                             R18 2 1
      178 SETTABLEKS                       R18 R17 K71 ["PaddingRight"]
      180 CALL                             R15 2 1
      181 MOVE                             R16 R2
      182 LOADK                            R17 K73 ["::UICorner"]
      183 DUPTABLE                         R18 K75 [{"CornerRadius"}]
      184 GETIMPORT                        R19 K36 [UDim.new]
      186 LOADN                            R20 0
      187 LOADN                            R21 4
      188 CALL                             R19 2 1
      189 SETTABLEKS                       R19 R18 K74 ["CornerRadius"]
      191 CALL                             R16 2 1
      192 MOVE                             R17 R2
      193 LOADK                            R18 K76 ["> TextLabel"]
      194 DUPTABLE                         R19 K77 [{"AutomaticSize"}]
      195 GETIMPORT                        R20 K50 [Enum.AutomaticSize.XY]
      197 SETTABLEKS                       R20 R19 K12 ["AutomaticSize"]
      199 CALL                             R17 2 -1
      200 SETLIST                          R14 R15 -1 [1]
      202 CALL                             R11 3 -1
      203 SETLIST                          R6 R7 -1 [1]
      205 CALL                             R3 3 -1
      206 RETURN                           R3 -1
