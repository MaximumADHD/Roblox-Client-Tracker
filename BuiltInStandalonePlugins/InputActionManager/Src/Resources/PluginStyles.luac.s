MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 GETTABLEKS                       R4 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R4 K10 ["createStyleSheet"]
       22 NEWTABLE                         R4 0 6
       24 MOVE                             R5 R2
       25 LOADK                            R6 K11 [".search-root"]
       26 NEWTABLE                         R7 0 0
       28 NEWTABLE                         R8 0 1
       30 MOVE                             R9 R2
       31 LOADK                            R10 K12 [">> UICorner"]
       32 DUPTABLE                         R11 K14 [{"CornerRadius"}]
       33 GETIMPORT                        R12 K17 [UDim.new]
       35 LOADN                            R13 1
       36 LOADN                            R14 0
       37 CALL                             R12 2 1
       38 SETTABLEKS                       R12 R11 K13 ["CornerRadius"]
       40 CALL                             R9 2 -1
       41 SETLIST                          R8 R9 -1 [1]
       43 CALL                             R5 3 1
       44 MOVE                             R6 R2
       45 LOADK                            R7 K18 [".columns-tree"]
       46 DUPTABLE                         R8 K20 [{"Size"}]
       47 LOADK                            R9 K21 ["$TreeSize"]
       48 SETTABLEKS                       R9 R8 K19 ["Size"]
       50 CALL                             R6 2 1
       51 MOVE                             R7 R2
       52 LOADK                            R8 K22 [".columns-fill"]
       53 DUPTABLE                         R9 K20 [{"Size"}]
       54 LOADK                            R10 K23 ["$TableSize"]
       55 SETTABLEKS                       R10 R9 K19 ["Size"]
       57 CALL                             R7 2 1
       58 MOVE                             R8 R2
       59 LOADK                            R9 K24 [".columns-flex"]
       60 NEWTABLE                         R10 0 0
       62 NEWTABLE                         R11 0 1
       64 MOVE                             R12 R2
       65 LOADK                            R13 K25 ["::UIListLayout"]
       66 DUPTABLE                         R14 K29 [{"FillDirection", "HorizontalFlex", "SortOrder"}]
       67 GETIMPORT                        R15 K32 [Enum.FillDirection.Horizontal]
       69 SETTABLEKS                       R15 R14 K26 ["FillDirection"]
       71 GETIMPORT                        R15 K35 [Enum.UIFlexAlignment.Fill]
       73 SETTABLEKS                       R15 R14 K27 ["HorizontalFlex"]
       75 GETIMPORT                        R15 K37 [Enum.SortOrder.LayoutOrder]
       77 SETTABLEKS                       R15 R14 K28 ["SortOrder"]
       79 CALL                             R12 2 -1
       80 SETLIST                          R11 R12 -1 [1]
       82 CALL                             R8 3 1
       83 MOVE                             R9 R2
       84 LOADK                            R10 K38 [".columns-input"]
       85 NEWTABLE                         R11 0 0
       87 NEWTABLE                         R12 0 1
       89 MOVE                             R13 R2
       90 LOADK                            R14 K39 ["::UISizeConstraint"]
       91 DUPTABLE                         R15 K41 [{"MinSize"}]
       92 GETIMPORT                        R16 K43 [Vector2.new]
       94 LOADN                            R17 200
       95 LOADN                            R18 0
       96 CALL                             R16 2 1
       97 SETTABLEKS                       R16 R15 K40 ["MinSize"]
       99 CALL                             R13 2 -1
      100 SETLIST                          R12 R13 -1 [1]
      102 CALL                             R9 3 1
      103 MOVE                             R10 R2
      104 LOADK                            R11 K44 [".tree-row"]
      105 DUPTABLE                         R12 K20 [{"Size"}]
      106 LOADK                            R13 K45 ["$RowSize"]
      107 SETTABLEKS                       R13 R12 K19 ["Size"]
      109 NEWTABLE                         R13 0 3
      111 MOVE                             R14 R2
      112 LOADK                            R15 K46 [">> .label"]
      113 DUPTABLE                         R16 K48 [{"TextTruncate"}]
      114 GETIMPORT                        R17 K50 [Enum.TextTruncate.AtEnd]
      116 SETTABLEKS                       R17 R16 K47 ["TextTruncate"]
      118 CALL                             R14 2 1
      119 MOVE                             R15 R2
      120 LOADK                            R16 K51 [">> .spacer"]
      121 DUPTABLE                         R17 K20 [{"Size"}]
      122 LOADK                            R18 K52 ["$SpacerSize"]
      123 SETTABLEKS                       R18 R17 K19 ["Size"]
      125 CALL                             R15 2 1
      126 MOVE                             R16 R2
      127 LOADK                            R17 K53 [">> .icon"]
      128 DUPTABLE                         R18 K20 [{"Size"}]
      129 LOADK                            R19 K54 ["$IconSize"]
      130 SETTABLEKS                       R19 R18 K19 ["Size"]
      132 CALL                             R16 2 -1
      133 SETLIST                          R13 R14 -1 [1]
      135 CALL                             R10 3 -1
      136 SETLIST                          R4 R5 -1 [1]
      138 DUPTABLE                         R5 K60 [{"IconSize", "RowSize", "SpacerSize", "TreeSize", "TableSize"}]
      139 GETIMPORT                        R6 K63 [UDim2.fromOffset]
      141 LOADN                            R7 16
      142 LOADN                            R8 16
      143 CALL                             R6 2 1
      144 SETTABLEKS                       R6 R5 K55 ["IconSize"]
      146 GETIMPORT                        R6 K64 [UDim2.new]
      148 LOADN                            R7 1
      149 LOADN                            R8 0
      150 LOADN                            R9 0
      151 LOADN                            R10 40
      152 CALL                             R6 4 1
      153 SETTABLEKS                       R6 R5 K56 ["RowSize"]
      155 GETIMPORT                        R6 K64 [UDim2.new]
      157 LOADN                            R7 0
      158 LOADN                            R8 32
      159 LOADN                            R9 1
      160 LOADN                            R10 0
      161 CALL                             R6 4 1
      162 SETTABLEKS                       R6 R5 K57 ["SpacerSize"]
      164 GETIMPORT                        R6 K64 [UDim2.new]
      166 LOADN                            R7 0
      167 LOADN                            R8 200
      168 LOADN                            R9 1
      169 LOADN                            R10 0
      170 CALL                             R6 4 1
      171 SETTABLEKS                       R6 R5 K58 ["TreeSize"]
      173 GETIMPORT                        R6 K64 [UDim2.new]
      175 LOADN                            R7 1
      176 LOADN                            R8 56
      177 LOADN                            R9 1
      178 LOADN                            R10 0
      179 CALL                             R6 4 1
      180 SETTABLEKS                       R6 R5 K59 ["TableSize"]
      182 MOVE                             R6 R3
      183 LOADK                            R7 K2 ["InputActionManager"]
      184 MOVE                             R8 R4
      185 MOVE                             R9 R5
      186 CALL                             R6 3 -1
      187 RETURN                           R6 -1
