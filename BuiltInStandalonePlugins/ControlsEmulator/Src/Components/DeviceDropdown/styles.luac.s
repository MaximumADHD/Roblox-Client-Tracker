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
       31 GETTABLEKS                       R4 R2 K12 ["deviceHeaderHeight"]
       33 MOVE                             R5 R3
       34 LOADK                            R6 K13 [".Component-DeviceDropdown"]
       35 DUPTABLE                         R7 K19 [{"Size", "Position", "BorderSizePixel", "BorderColor3", "BackgroundColor3"}]
       36 GETIMPORT                        R8 K22 [UDim2.new]
       38 LOADN                            R9 0
       39 LOADN                            R10 200
       40 LOADN                            R11 0
       41 SUBK                             R12 R4 K23 [10]
       42 CALL                             R8 4 1
       43 SETTABLEKS                       R8 R7 K14 ["Size"]
       45 GETIMPORT                        R8 K22 [UDim2.new]
       47 LOADN                            R9 0
       48 LOADN                            R10 0
       49 LOADN                            R11 0
       50 LOADN                            R12 0
       51 CALL                             R8 4 1
       52 SETTABLEKS                       R8 R7 K15 ["Position"]
       54 LOADN                            R8 1
       55 SETTABLEKS                       R8 R7 K16 ["BorderSizePixel"]
       57 LOADK                            R8 K24 ["$BackgroundDefault"]
       58 SETTABLEKS                       R8 R7 K17 ["BorderColor3"]
       60 LOADK                            R8 K25 ["$BackgroundPaper"]
       61 SETTABLEKS                       R8 R7 K18 ["BackgroundColor3"]
       63 NEWTABLE                         R8 0 6
       65 MOVE                             R9 R3
       66 LOADK                            R10 K26 ["::UICorner"]
       67 DUPTABLE                         R11 K28 [{"CornerRadius"}]
       68 GETIMPORT                        R12 K30 [UDim.new]
       70 LOADN                            R13 0
       71 GETTABLEKS                       R14 R2 K31 ["deviceSelectorCornerRadius"]
       73 CALL                             R12 2 1
       74 SETTABLEKS                       R12 R11 K27 ["CornerRadius"]
       76 CALL                             R9 2 1
       77 MOVE                             R10 R3
       78 LOADK                            R11 K32 [":hover"]
       79 DUPTABLE                         R12 K33 [{"BackgroundColor3"}]
       80 LOADK                            R13 K34 ["$ActionHover"]
       81 SETTABLEKS                       R13 R12 K18 ["BackgroundColor3"]
       83 CALL                             R10 2 1
       84 MOVE                             R11 R3
       85 LOADK                            R12 K35 ["::UIPadding"]
       86 DUPTABLE                         R13 K37 [{"PaddingLeft"}]
       87 GETIMPORT                        R14 K30 [UDim.new]
       89 LOADN                            R15 0
       90 LOADN                            R16 8
       91 CALL                             R14 2 1
       92 SETTABLEKS                       R14 R13 K36 ["PaddingLeft"]
       94 CALL                             R11 2 1
       95 MOVE                             R12 R3
       96 LOADK                            R13 K38 ["> #Selected"]
       97 DUPTABLE                         R14 K42 [{"TextColor3", "TextSize", "TextXAlignment"}]
       98 LOADK                            R15 K43 ["$TextPrimary"]
       99 SETTABLEKS                       R15 R14 K39 ["TextColor3"]
      101 GETTABLEKS                       R15 R2 K44 ["normalFontSize"]
      103 SETTABLEKS                       R15 R14 K40 ["TextSize"]
      105 GETIMPORT                        R15 K47 [Enum.TextXAlignment.Left]
      107 SETTABLEKS                       R15 R14 K41 ["TextXAlignment"]
      109 CALL                             R12 2 1
      110 MOVE                             R13 R3
      111 LOADK                            R14 K48 ["> #Menu"]
      112 DUPTABLE                         R15 K49 [{"TextColor3", "TextSize"}]
      113 LOADK                            R16 K43 ["$TextPrimary"]
      114 SETTABLEKS                       R16 R15 K39 ["TextColor3"]
      116 GETTABLEKS                       R16 R2 K44 ["normalFontSize"]
      118 SETTABLEKS                       R16 R15 K40 ["TextSize"]
      120 CALL                             R13 2 1
      121 MOVE                             R14 R3
      122 LOADK                            R15 K50 ["> #ButtonContainer"]
      123 DUPTABLE                         R16 K51 [{"Position", "Size"}]
      124 GETIMPORT                        R17 K22 [UDim2.new]
      126 LOADN                            R18 1
      127 LOADN                            R19 240
      128 LOADN                            R20 0
      129 LOADN                            R21 0
      130 CALL                             R17 4 1
      131 SETTABLEKS                       R17 R16 K15 ["Position"]
      133 GETIMPORT                        R17 K22 [UDim2.new]
      135 LOADN                            R18 0
      136 LOADN                            R19 16
      137 LOADN                            R20 1
      138 LOADN                            R21 0
      139 CALL                             R17 4 1
      140 SETTABLEKS                       R17 R16 K14 ["Size"]
      142 NEWTABLE                         R17 0 1
      144 MOVE                             R18 R3
      145 LOADK                            R19 K52 ["> #OpenSelectorButton"]
      146 DUPTABLE                         R20 K55 [{"Size", "AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency"}]
      147 GETIMPORT                        R21 K22 [UDim2.new]
      149 LOADN                            R22 0
      150 LOADN                            R23 16
      151 LOADN                            R24 0
      152 LOADN                            R25 16
      153 CALL                             R21 4 1
      154 SETTABLEKS                       R21 R20 K14 ["Size"]
      156 GETIMPORT                        R21 K57 [Vector2.new]
      158 LOADK                            R22 K58 [0.5]
      159 LOADK                            R23 K58 [0.5]
      160 CALL                             R21 2 1
      161 SETTABLEKS                       R21 R20 K53 ["AnchorPoint"]
      163 GETIMPORT                        R21 K22 [UDim2.new]
      165 LOADK                            R22 K58 [0.5]
      166 LOADN                            R23 0
      167 LOADK                            R24 K58 [0.5]
      168 LOADN                            R25 0
      169 CALL                             R21 4 1
      170 SETTABLEKS                       R21 R20 K15 ["Position"]
      172 LOADN                            R21 0
      173 SETTABLEKS                       R21 R20 K16 ["BorderSizePixel"]
      175 LOADN                            R21 1
      176 SETTABLEKS                       R21 R20 K54 ["BackgroundTransparency"]
      178 NEWTABLE                         R21 0 2
      180 MOVE                             R22 R3
      181 LOADK                            R23 K59 [".Open"]
      182 DUPTABLE                         R24 K61 [{"Image"}]
      183 LOADK                            R25 K62 ["$DownArrow"]
      184 SETTABLEKS                       R25 R24 K60 ["Image"]
      186 CALL                             R22 2 1
      187 MOVE                             R23 R3
      188 LOADK                            R24 K63 [".Close"]
      189 DUPTABLE                         R25 K61 [{"Image"}]
      190 LOADK                            R26 K64 ["$RightArrow"]
      191 SETTABLEKS                       R26 R25 K60 ["Image"]
      193 CALL                             R23 2 -1
      194 SETLIST                          R21 R22 -1 [1]
      196 CALL                             R18 3 -1
      197 SETLIST                          R17 R18 -1 [1]
      199 CALL                             R14 3 -1
      200 SETLIST                          R8 R9 -1 [1]
      202 CALL                             R5 3 -1
      203 RETURN                           R5 -1
