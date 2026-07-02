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
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R4 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R4 K10 ["Resources"]
       28 GETTABLEKS                       R4 R4 K11 ["StyleTips"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K12 ["defaultPadding"]
       33 GETTABLEKS                       R5 R3 K13 ["detailFontSize"]
       35 DIVRK                            R6 K14 [16] R5
       36 GETIMPORT                        R7 K16 [game]
       38 LOADK                            R9 K17 ["ActivityHistoryCompactUI"]
       39 NAMECALL                         R7 R7 K18 ["GetFastFlag"]
       41 CALL                             R7 2 1
       42 MOVE                             R8 R2
       43 LOADK                            R9 K19 [".Component-Tooltip"]
       44 DUPTABLE                         R10 K27 [{["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["Position"], ["Size"], ["AutomaticSize"]}]
       45 JUMPIFNOT                        R7 ; [+2]
       46 LOADK                            R11 K28 ["$FoundationColorsShift100"]
       47 JUMP                             ; [+1]
       48 LOADK                            R11 K29 ["$ForegroundContrast"]
       49 SETTABLEKS                       R11 R10 K20 ["BackgroundColor3"]
       51 JUMPIFNOT                        R7 ; [+2]
       52 LOADK                            R11 K30 ["$FoundationColorsShift300"]
       53 JUMP                             ; [+1]
       54 LOADK                            R11 K31 ["$Divider"]
       55 SETTABLEKS                       R11 R10 K23 ["BorderColor3"]
       57 GETIMPORT                        R11 K34 [UDim2.new]
       59 LOADN                            R12 0
       60 LOADN                            R13 0
       61 LOADN                            R14 1
       62 LOADN                            R15 0
       63 CALL                             R11 4 1
       64 SETTABLEKS                       R11 R10 K24 ["Position"]
       66 GETIMPORT                        R11 K34 [UDim2.new]
       68 LOADK                            R12 K35 [0.5]
       69 LOADN                            R13 0
       70 LOADN                            R14 0
       71 LOADN                            R15 0
       72 CALL                             R11 4 1
       73 SETTABLEKS                       R11 R10 K25 ["Size"]
       75 GETIMPORT                        R11 K38 [Enum.AutomaticSize.Y]
       77 SETTABLEKS                       R11 R10 K26 ["AutomaticSize"]
       79 NEWTABLE                         R11 0 3
       81 MOVE                             R12 R2
       82 LOADK                            R13 K39 ["::UIPadding"]
       83 DUPTABLE                         R14 K44 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       84 GETIMPORT                        R15 K46 [UDim.new]
       86 LOADN                            R16 0
       87 MOVE                             R17 R4
       88 CALL                             R15 2 1
       89 SETTABLEKS                       R15 R14 K40 ["PaddingTop"]
       91 GETIMPORT                        R15 K46 [UDim.new]
       93 LOADN                            R16 0
       94 MOVE                             R17 R4
       95 CALL                             R15 2 1
       96 SETTABLEKS                       R15 R14 K41 ["PaddingBottom"]
       98 GETIMPORT                        R15 K46 [UDim.new]
      100 LOADN                            R16 0
      101 MOVE                             R17 R4
      102 CALL                             R15 2 1
      103 SETTABLEKS                       R15 R14 K42 ["PaddingLeft"]
      105 GETIMPORT                        R15 K46 [UDim.new]
      107 LOADN                            R16 0
      108 MOVE                             R17 R4
      109 CALL                             R15 2 1
      110 SETTABLEKS                       R15 R14 K43 ["PaddingRight"]
      112 CALL                             R12 2 1
      113 MOVE                             R13 R2
      114 LOADK                            R14 K47 ["::UIListLayout"]
      115 DUPTABLE                         R15 K49 [{"Padding"}]
      116 GETIMPORT                        R16 K46 [UDim.new]
      118 LOADN                            R17 0
      119 MOVE                             R18 R4
      120 CALL                             R16 2 1
      121 SETTABLEKS                       R16 R15 K48 ["Padding"]
      123 CALL                             R13 2 1
      124 MOVE                             R14 R2
      125 LOADK                            R15 K50 ["> TextLabel"]
      126 DUPTABLE                         R16 K58 [{["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["TextWrapped"] = True, ["LineHeight"]}]
      127 JUMPIFNOT                        R7 ; [+2]
      128 LOADK                            R17 K59 ["$FoundationColorsContentEmphasis"]
      129 JUMP                             ; [+1]
      130 LOADK                            R17 K60 ["$TextPrimary"]
      131 SETTABLEKS                       R17 R16 K51 ["TextColor3"]
      133 GETIMPORT                        R17 K62 [Enum.TextXAlignment.Left]
      135 SETTABLEKS                       R17 R16 K52 ["TextXAlignment"]
      137 GETIMPORT                        R17 K64 [Enum.TextYAlignment.Center]
      139 SETTABLEKS                       R17 R16 K53 ["TextYAlignment"]
      141 SETTABLEKS                       R5 R16 K54 ["TextSize"]
      143 SETTABLEKS                       R6 R16 K57 ["LineHeight"]
      145 CALL                             R14 2 -1
      146 SETLIST                          R11 R12 -1 [1]
      148 CALL                             R8 3 -1
      149 RETURN                           R8 -1
