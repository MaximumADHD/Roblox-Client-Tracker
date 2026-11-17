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
       31 GETTABLEKS                       R4 R2 K12 ["deviceHeaderHeight"]
       33 MOVE                             R5 R3
       34 LOADK                            R6 K13 [".Component-DeviceDropdown"]
       35 DUPTABLE                         R7 K22 [{["Size"], ["Position"], ["BorderSizePixel"] = 1, ["BorderColor3"] = "$BackgroundDefault", ["BackgroundColor3"] = "$BackgroundPaper"}]
       36 GETIMPORT                        R8 K25 [UDim2.new]
       38 LOADN                            R9 0
       39 LOADN                            R10 200
       40 LOADN                            R11 0
       41 SUBK                             R12 R4 K26 [10]
       42 CALL                             R8 4 1
       43 SETTABLEKS                       R8 R7 K14 ["Size"]
       45 GETIMPORT                        R8 K25 [UDim2.new]
       47 LOADN                            R9 0
       48 LOADN                            R10 0
       49 LOADN                            R11 0
       50 LOADN                            R12 0
       51 CALL                             R8 4 1
       52 SETTABLEKS                       R8 R7 K15 ["Position"]
       54 NEWTABLE                         R8 0 6
       56 MOVE                             R9 R3
       57 LOADK                            R10 K27 ["::UICorner"]
       58 DUPTABLE                         R11 K29 [{"CornerRadius"}]
       59 GETIMPORT                        R12 K31 [UDim.new]
       61 LOADN                            R13 0
       62 GETTABLEKS                       R14 R2 K32 ["deviceSelectorCornerRadius"]
       64 CALL                             R12 2 1
       65 SETTABLEKS                       R12 R11 K28 ["CornerRadius"]
       67 CALL                             R9 2 1
       68 MOVE                             R10 R3
       69 LOADK                            R11 K33 [":hover"]
       70 DUPTABLE                         R12 K35 [{["BackgroundColor3"] = "$ActionHover"}]
       71 CALL                             R10 2 1
       72 MOVE                             R11 R3
       73 LOADK                            R12 K36 ["::UIPadding"]
       74 DUPTABLE                         R13 K38 [{"PaddingLeft"}]
       75 GETIMPORT                        R14 K31 [UDim.new]
       77 LOADN                            R15 0
       78 LOADN                            R16 8
       79 CALL                             R14 2 1
       80 SETTABLEKS                       R14 R13 K37 ["PaddingLeft"]
       82 CALL                             R11 2 1
       83 MOVE                             R12 R3
       84 LOADK                            R13 K39 ["> #Selected"]
       85 DUPTABLE                         R14 K44 [{["TextColor3"] = "$TextPrimary", ["TextSize"], ["TextXAlignment"]}]
       86 GETTABLEKS                       R15 R2 K45 ["normalFontSize"]
       88 SETTABLEKS                       R15 R14 K42 ["TextSize"]
       90 GETIMPORT                        R15 K48 [Enum.TextXAlignment.Left]
       92 SETTABLEKS                       R15 R14 K43 ["TextXAlignment"]
       94 CALL                             R12 2 1
       95 MOVE                             R13 R3
       96 LOADK                            R14 K49 ["> #Menu"]
       97 DUPTABLE                         R15 K50 [{["TextColor3"] = "$TextPrimary", ["TextSize"]}]
       98 GETTABLEKS                       R16 R2 K45 ["normalFontSize"]
      100 SETTABLEKS                       R16 R15 K42 ["TextSize"]
      102 CALL                             R13 2 1
      103 MOVE                             R14 R3
      104 LOADK                            R15 K51 ["> #ButtonContainer"]
      105 DUPTABLE                         R16 K52 [{"Position", "Size"}]
      106 GETIMPORT                        R17 K25 [UDim2.new]
      108 LOADN                            R18 1
      109 LOADN                            R19 -16
      110 LOADN                            R20 0
      111 LOADN                            R21 0
      112 CALL                             R17 4 1
      113 SETTABLEKS                       R17 R16 K15 ["Position"]
      115 GETIMPORT                        R17 K25 [UDim2.new]
      117 LOADN                            R18 0
      118 LOADN                            R19 16
      119 LOADN                            R20 1
      120 LOADN                            R21 0
      121 CALL                             R17 4 1
      122 SETTABLEKS                       R17 R16 K14 ["Size"]
      124 NEWTABLE                         R17 0 1
      126 MOVE                             R18 R3
      127 LOADK                            R19 K53 ["> #OpenSelectorButton"]
      128 DUPTABLE                         R20 K57 [{["Size"], ["AnchorPoint"], ["Position"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1}]
      129 GETIMPORT                        R21 K25 [UDim2.new]
      131 LOADN                            R22 0
      132 LOADN                            R23 16
      133 LOADN                            R24 0
      134 LOADN                            R25 16
      135 CALL                             R21 4 1
      136 SETTABLEKS                       R21 R20 K14 ["Size"]
      138 GETIMPORT                        R21 K59 [Vector2.new]
      140 LOADK                            R22 K60 [0.5]
      141 LOADK                            R23 K60 [0.5]
      142 CALL                             R21 2 1
      143 SETTABLEKS                       R21 R20 K54 ["AnchorPoint"]
      145 GETIMPORT                        R21 K25 [UDim2.new]
      147 LOADK                            R22 K60 [0.5]
      148 LOADN                            R23 0
      149 LOADK                            R24 K60 [0.5]
      150 LOADN                            R25 0
      151 CALL                             R21 4 1
      152 SETTABLEKS                       R21 R20 K15 ["Position"]
      154 NEWTABLE                         R21 0 2
      156 MOVE                             R22 R3
      157 LOADK                            R23 K61 [".Open"]
      158 DUPTABLE                         R24 K64 [{["Image"] = "$DownArrow"}]
      159 CALL                             R22 2 1
      160 MOVE                             R23 R3
      161 LOADK                            R24 K65 [".Close"]
      162 DUPTABLE                         R25 K67 [{["Image"] = "$RightArrow"}]
      163 CALL                             R23 2 -1
      164 SETLIST                          R21 R22 -1 [1]
      166 CALL                             R18 3 -1
      167 SETLIST                          R17 R18 -1 [1]
      169 CALL                             R14 3 -1
      170 SETLIST                          R8 R9 -1 [1]
      172 CALL                             R5 3 -1
      173 RETURN                           R5 -1
