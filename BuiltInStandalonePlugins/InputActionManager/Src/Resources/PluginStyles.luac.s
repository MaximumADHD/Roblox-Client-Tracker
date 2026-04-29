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
       25 LOADK                            R6 K11 [".columns-tree"]
       26 DUPTABLE                         R7 K13 [{"Size"}]
       27 LOADK                            R8 K14 ["$TreeSize"]
       28 SETTABLEKS                       R8 R7 K12 ["Size"]
       30 CALL                             R5 2 1
       31 MOVE                             R6 R2
       32 LOADK                            R7 K15 [".columns-fill"]
       33 DUPTABLE                         R8 K13 [{"Size"}]
       34 LOADK                            R9 K16 ["$TableSize"]
       35 SETTABLEKS                       R9 R8 K12 ["Size"]
       37 CALL                             R6 2 1
       38 MOVE                             R7 R2
       39 LOADK                            R8 K17 [".columns-flex"]
       40 NEWTABLE                         R9 0 0
       42 NEWTABLE                         R10 0 1
       44 MOVE                             R11 R2
       45 LOADK                            R12 K18 ["::UIListLayout"]
       46 DUPTABLE                         R13 K22 [{"FillDirection", "HorizontalFlex", "SortOrder"}]
       47 GETIMPORT                        R14 K25 [Enum.FillDirection.Horizontal]
       49 SETTABLEKS                       R14 R13 K19 ["FillDirection"]
       51 GETIMPORT                        R14 K28 [Enum.UIFlexAlignment.Fill]
       53 SETTABLEKS                       R14 R13 K20 ["HorizontalFlex"]
       55 GETIMPORT                        R14 K30 [Enum.SortOrder.LayoutOrder]
       57 SETTABLEKS                       R14 R13 K21 ["SortOrder"]
       59 CALL                             R11 2 -1
       60 SETLIST                          R10 R11 -1 [1]
       62 CALL                             R7 3 1
       63 MOVE                             R8 R2
       64 LOADK                            R9 K31 [".columns-input"]
       65 NEWTABLE                         R10 0 0
       67 NEWTABLE                         R11 0 1
       69 MOVE                             R12 R2
       70 LOADK                            R13 K32 ["::UISizeConstraint"]
       71 DUPTABLE                         R14 K34 [{"MinSize"}]
       72 GETIMPORT                        R15 K37 [Vector2.new]
       74 LOADN                            R16 200
       75 LOADN                            R17 0
       76 CALL                             R15 2 1
       77 SETTABLEKS                       R15 R14 K33 ["MinSize"]
       79 CALL                             R12 2 -1
       80 SETLIST                          R11 R12 -1 [1]
       82 CALL                             R8 3 1
       83 MOVE                             R9 R2
       84 LOADK                            R10 K38 [".tree-row"]
       85 DUPTABLE                         R11 K13 [{"Size"}]
       86 LOADK                            R12 K39 ["$RowSize"]
       87 SETTABLEKS                       R12 R11 K12 ["Size"]
       89 NEWTABLE                         R12 0 3
       91 MOVE                             R13 R2
       92 LOADK                            R14 K40 [">> .label"]
       93 DUPTABLE                         R15 K42 [{"TextTruncate"}]
       94 GETIMPORT                        R16 K44 [Enum.TextTruncate.AtEnd]
       96 SETTABLEKS                       R16 R15 K41 ["TextTruncate"]
       98 CALL                             R13 2 1
       99 MOVE                             R14 R2
      100 LOADK                            R15 K45 [">> .spacer"]
      101 DUPTABLE                         R16 K13 [{"Size"}]
      102 LOADK                            R17 K46 ["$SpacerSize"]
      103 SETTABLEKS                       R17 R16 K12 ["Size"]
      105 CALL                             R14 2 1
      106 MOVE                             R15 R2
      107 LOADK                            R16 K47 [">> .icon"]
      108 DUPTABLE                         R17 K13 [{"Size"}]
      109 LOADK                            R18 K48 ["$IconSize"]
      110 SETTABLEKS                       R18 R17 K12 ["Size"]
      112 CALL                             R15 2 -1
      113 SETLIST                          R12 R13 -1 [1]
      115 CALL                             R9 3 1
      116 MOVE                             R10 R2
      117 LOADK                            R11 K49 [".size-full-divider"]
      118 DUPTABLE                         R12 K13 [{"Size"}]
      119 GETIMPORT                        R13 K51 [UDim2.new]
      121 LOADN                            R14 1
      122 LOADN                            R15 0
      123 LOADN                            R16 1
      124 LOADN                            R17 255
      125 CALL                             R13 4 1
      126 SETTABLEKS                       R13 R12 K12 ["Size"]
      128 CALL                             R10 2 -1
      129 SETLIST                          R4 R5 -1 [1]
      131 DUPTABLE                         R5 K57 [{"IconSize", "RowSize", "SpacerSize", "TreeSize", "TableSize"}]
      132 GETIMPORT                        R6 K59 [UDim2.fromOffset]
      134 LOADN                            R7 16
      135 LOADN                            R8 16
      136 CALL                             R6 2 1
      137 SETTABLEKS                       R6 R5 K52 ["IconSize"]
      139 GETIMPORT                        R6 K51 [UDim2.new]
      141 LOADN                            R7 1
      142 LOADN                            R8 0
      143 LOADN                            R9 0
      144 LOADN                            R10 40
      145 CALL                             R6 4 1
      146 SETTABLEKS                       R6 R5 K53 ["RowSize"]
      148 GETIMPORT                        R6 K51 [UDim2.new]
      150 LOADN                            R7 0
      151 LOADN                            R8 32
      152 LOADN                            R9 1
      153 LOADN                            R10 0
      154 CALL                             R6 4 1
      155 SETTABLEKS                       R6 R5 K54 ["SpacerSize"]
      157 GETIMPORT                        R6 K51 [UDim2.new]
      159 LOADN                            R7 0
      160 LOADN                            R8 240
      161 LOADN                            R9 1
      162 LOADN                            R10 0
      163 CALL                             R6 4 1
      164 SETTABLEKS                       R6 R5 K55 ["TreeSize"]
      166 GETIMPORT                        R6 K51 [UDim2.new]
      168 LOADN                            R7 1
      169 LOADN                            R8 16
      170 LOADN                            R9 1
      171 LOADN                            R10 0
      172 CALL                             R6 4 1
      173 SETTABLEKS                       R6 R5 K56 ["TableSize"]
      175 MOVE                             R6 R3
      176 LOADK                            R7 K2 ["InputActionManager"]
      177 MOVE                             R8 R4
      178 MOVE                             R9 R5
      179 CALL                             R6 3 -1
      180 RETURN                           R6 -1
