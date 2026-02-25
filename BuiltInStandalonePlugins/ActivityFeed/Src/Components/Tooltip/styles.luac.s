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
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R6 R0 K9 ["Src"]
       26 GETTABLEKS                       R5 R6 K10 ["Resources"]
       28 GETTABLEKS                       R4 R5 K11 ["StyleTips"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K12 ["defaultPadding"]
       33 GETTABLEKS                       R5 R3 K13 ["detailFontSize"]
       35 DIVRK                            R6 R14 K5 ["Packages"]
       36 GETIMPORT                        R7 K16 [game]
       38 LOADK                            R9 K17 ["ActivityHistoryCompactUI"]
       39 NAMECALL                         R7 R7 K18 ["GetFastFlag"]
       41 CALL                             R7 2 1
       42 MOVE                             R8 R2
       43 LOADK                            R9 K19 [".Component-Tooltip"]
       44 DUPTABLE                         R10 K26 [{"BackgroundColor3", "BorderSizePixel", "BorderColor3", "Position", "Size", "AutomaticSize"}]
       45 JUMPIFNOT                        R7 ; [+2]
       46 LOADK                            R11 K27 ["$FoundationColorsShift100"]
       47 JUMP                             ; [+1]
       48 LOADK                            R11 K28 ["$ForegroundContrast"]
       49 SETTABLEKS                       R11 R10 K20 ["BackgroundColor3"]
       51 LOADN                            R11 1
       52 SETTABLEKS                       R11 R10 K21 ["BorderSizePixel"]
       54 JUMPIFNOT                        R7 ; [+2]
       55 LOADK                            R11 K29 ["$FoundationColorsShift300"]
       56 JUMP                             ; [+1]
       57 LOADK                            R11 K30 ["$Divider"]
       58 SETTABLEKS                       R11 R10 K22 ["BorderColor3"]
       60 GETIMPORT                        R11 K33 [UDim2.new]
       62 LOADN                            R12 0
       63 LOADN                            R13 0
       64 LOADN                            R14 1
       65 LOADN                            R15 0
       66 CALL                             R11 4 1
       67 SETTABLEKS                       R11 R10 K23 ["Position"]
       69 GETIMPORT                        R11 K33 [UDim2.new]
       71 LOADK                            R12 K34 [0.5]
       72 LOADN                            R13 0
       73 LOADN                            R14 0
       74 LOADN                            R15 0
       75 CALL                             R11 4 1
       76 SETTABLEKS                       R11 R10 K24 ["Size"]
       78 GETIMPORT                        R11 K37 [Enum.AutomaticSize.Y]
       80 SETTABLEKS                       R11 R10 K25 ["AutomaticSize"]
       82 NEWTABLE                         R11 0 3
       84 MOVE                             R12 R2
       85 LOADK                            R13 K38 ["::UIPadding"]
       86 DUPTABLE                         R14 K43 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       87 GETIMPORT                        R15 K45 [UDim.new]
       89 LOADN                            R16 0
       90 MOVE                             R17 R4
       91 CALL                             R15 2 1
       92 SETTABLEKS                       R15 R14 K39 ["PaddingTop"]
       94 GETIMPORT                        R15 K45 [UDim.new]
       96 LOADN                            R16 0
       97 MOVE                             R17 R4
       98 CALL                             R15 2 1
       99 SETTABLEKS                       R15 R14 K40 ["PaddingBottom"]
      101 GETIMPORT                        R15 K45 [UDim.new]
      103 LOADN                            R16 0
      104 MOVE                             R17 R4
      105 CALL                             R15 2 1
      106 SETTABLEKS                       R15 R14 K41 ["PaddingLeft"]
      108 GETIMPORT                        R15 K45 [UDim.new]
      110 LOADN                            R16 0
      111 MOVE                             R17 R4
      112 CALL                             R15 2 1
      113 SETTABLEKS                       R15 R14 K42 ["PaddingRight"]
      115 CALL                             R12 2 1
      116 MOVE                             R13 R2
      117 LOADK                            R14 K46 ["::UIListLayout"]
      118 DUPTABLE                         R15 K48 [{"Padding"}]
      119 GETIMPORT                        R16 K45 [UDim.new]
      121 LOADN                            R17 0
      122 MOVE                             R18 R4
      123 CALL                             R16 2 1
      124 SETTABLEKS                       R16 R15 K47 ["Padding"]
      126 CALL                             R13 2 1
      127 MOVE                             R14 R2
      128 LOADK                            R15 K49 ["> TextLabel"]
      129 DUPTABLE                         R16 K56 [{"TextColor3", "TextXAlignment", "TextYAlignment", "TextSize", "TextWrapped", "LineHeight"}]
      130 JUMPIFNOT                        R7 ; [+2]
      131 LOADK                            R17 K57 ["$FoundationColorsContentEmphasis"]
      132 JUMP                             ; [+1]
      133 LOADK                            R17 K58 ["$TextPrimary"]
      134 SETTABLEKS                       R17 R16 K50 ["TextColor3"]
      136 GETIMPORT                        R17 K60 [Enum.TextXAlignment.Left]
      138 SETTABLEKS                       R17 R16 K51 ["TextXAlignment"]
      140 GETIMPORT                        R17 K62 [Enum.TextYAlignment.Center]
      142 SETTABLEKS                       R17 R16 K52 ["TextYAlignment"]
      144 SETTABLEKS                       R5 R16 K53 ["TextSize"]
      146 LOADB                            R17 1
      147 SETTABLEKS                       R17 R16 K54 ["TextWrapped"]
      149 SETTABLEKS                       R6 R16 K55 ["LineHeight"]
      151 CALL                             R14 2 -1
      152 SETLIST                          R11 R12 -1 [1]
      154 CALL                             R8 3 -1
      155 RETURN                           R8 -1
