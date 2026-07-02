MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 GETTABLEKS                       R3 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R3 K10 ["createStyleSheet"]
       22 NEWTABLE                         R4 0 6
       24 MOVE                             R5 R2
       25 LOADK                            R6 K11 [".columns-tree"]
       26 DUPTABLE                         R7 K14 [{["Size"] = "$TreeSize"}]
       27 NEWTABLE                         R8 0 2
       29 MOVE                             R9 R2
       30 LOADK                            R10 K15 ["::UISizeConstraint"]
       31 DUPTABLE                         R11 K18 [{"MinSize", "MaxSize"}]
       32 GETIMPORT                        R12 K21 [Vector2.new]
       34 LOADN                            R13 220
       35 LOADN                            R14 40
       36 CALL                             R12 2 1
       37 SETTABLEKS                       R12 R11 K16 ["MinSize"]
       39 GETIMPORT                        R12 K21 [Vector2.new]
       41 LOADN                            R13 220
       42 LOADN                            R14 40
       43 CALL                             R12 2 1
       44 SETTABLEKS                       R12 R11 K17 ["MaxSize"]
       46 CALL                             R9 2 1
       47 MOVE                             R10 R2
       48 LOADK                            R11 K22 ["::UIFlexItem"]
       49 DUPTABLE                         R12 K24 [{"FlexMode"}]
       50 GETIMPORT                        R13 K28 [Enum.UIFlexMode.Fill]
       52 SETTABLEKS                       R13 R12 K23 ["FlexMode"]
       54 CALL                             R10 2 -1
       55 SETLIST                          R8 R9 -1 [1]
       57 CALL                             R5 3 1
       58 MOVE                             R6 R2
       59 LOADK                            R7 K29 [".columns-fill"]
       60 DUPTABLE                         R8 K32 [{["AutomaticSize"], ["Size"] = "$TableSize"}]
       61 GETIMPORT                        R9 K34 [Enum.AutomaticSize.X]
       63 SETTABLEKS                       R9 R8 K30 ["AutomaticSize"]
       65 CALL                             R6 2 1
       66 MOVE                             R7 R2
       67 LOADK                            R8 K35 [".columns-flex"]
       68 NEWTABLE                         R9 0 0
       70 NEWTABLE                         R10 0 1
       72 MOVE                             R11 R2
       73 LOADK                            R12 K36 ["::UIListLayout"]
       74 DUPTABLE                         R13 K39 [{"FillDirection", "SortOrder"}]
       75 GETIMPORT                        R14 K41 [Enum.FillDirection.Horizontal]
       77 SETTABLEKS                       R14 R13 K37 ["FillDirection"]
       79 GETIMPORT                        R14 K43 [Enum.SortOrder.LayoutOrder]
       81 SETTABLEKS                       R14 R13 K38 ["SortOrder"]
       83 CALL                             R11 2 -1
       84 SETLIST                          R10 R11 -1 [1]
       86 CALL                             R7 3 1
       87 MOVE                             R8 R2
       88 LOADK                            R9 K44 [".columns-input"]
       89 NEWTABLE                         R10 0 0
       91 NEWTABLE                         R11 0 2
       93 MOVE                             R12 R2
       94 LOADK                            R13 K15 ["::UISizeConstraint"]
       95 DUPTABLE                         R14 K45 [{"MinSize"}]
       96 GETIMPORT                        R15 K21 [Vector2.new]
       98 LOADN                            R16 150
       99 LOADN                            R17 0
      100 CALL                             R15 2 1
      101 SETTABLEKS                       R15 R14 K16 ["MinSize"]
      103 CALL                             R12 2 1
      104 MOVE                             R13 R2
      105 LOADK                            R14 K22 ["::UIFlexItem"]
      106 DUPTABLE                         R15 K24 [{"FlexMode"}]
      107 GETIMPORT                        R16 K28 [Enum.UIFlexMode.Fill]
      109 SETTABLEKS                       R16 R15 K23 ["FlexMode"]
      111 CALL                             R13 2 -1
      112 SETLIST                          R11 R12 -1 [1]
      114 CALL                             R8 3 1
      115 MOVE                             R9 R2
      116 LOADK                            R10 K46 [".tree-row"]
      117 DUPTABLE                         R11 K48 [{["Size"] = "$RowSize"}]
      118 NEWTABLE                         R12 0 3
      120 MOVE                             R13 R2
      121 LOADK                            R14 K49 [">> .label"]
      122 DUPTABLE                         R15 K51 [{"TextTruncate"}]
      123 GETIMPORT                        R16 K53 [Enum.TextTruncate.AtEnd]
      125 SETTABLEKS                       R16 R15 K50 ["TextTruncate"]
      127 CALL                             R13 2 1
      128 MOVE                             R14 R2
      129 LOADK                            R15 K54 [">> .spacer"]
      130 DUPTABLE                         R16 K56 [{["Size"] = "$SpacerSize"}]
      131 CALL                             R14 2 1
      132 MOVE                             R15 R2
      133 LOADK                            R16 K57 [">> .icon"]
      134 DUPTABLE                         R17 K59 [{["Size"] = "$IconSize"}]
      135 CALL                             R15 2 -1
      136 SETLIST                          R12 R13 -1 [1]
      138 CALL                             R9 3 1
      139 MOVE                             R10 R2
      140 LOADK                            R11 K60 [".size-full-divider"]
      141 DUPTABLE                         R12 K61 [{"Size"}]
      142 GETIMPORT                        R13 K63 [UDim2.new]
      144 LOADN                            R14 1
      145 LOADN                            R15 0
      146 LOADN                            R16 1
      147 LOADN                            R17 -1
      148 CALL                             R13 4 1
      149 SETTABLEKS                       R13 R12 K12 ["Size"]
      151 CALL                             R10 2 -1
      152 SETLIST                          R4 R5 -1 [1]
      154 DUPTABLE                         R5 K69 [{"IconSize", "RowSize", "SpacerSize", "TreeSize", "TableSize"}]
      155 GETIMPORT                        R6 K71 [UDim2.fromOffset]
      157 LOADN                            R7 16
      158 LOADN                            R8 16
      159 CALL                             R6 2 1
      160 SETTABLEKS                       R6 R5 K64 ["IconSize"]
      162 GETIMPORT                        R6 K63 [UDim2.new]
      164 LOADN                            R7 1
      165 LOADN                            R8 0
      166 LOADN                            R9 0
      167 LOADN                            R10 40
      168 CALL                             R6 4 1
      169 SETTABLEKS                       R6 R5 K65 ["RowSize"]
      171 GETIMPORT                        R6 K63 [UDim2.new]
      173 LOADN                            R7 0
      174 LOADN                            R8 24
      175 LOADN                            R9 1
      176 LOADN                            R10 0
      177 CALL                             R6 4 1
      178 SETTABLEKS                       R6 R5 K66 ["SpacerSize"]
      180 GETIMPORT                        R6 K63 [UDim2.new]
      182 LOADN                            R7 0
      183 LOADN                            R8 220
      184 LOADN                            R9 1
      185 LOADN                            R10 0
      186 CALL                             R6 4 1
      187 SETTABLEKS                       R6 R5 K67 ["TreeSize"]
      189 GETIMPORT                        R6 K63 [UDim2.new]
      191 LOADN                            R7 1
      192 LOADN                            R8 0
      193 LOADN                            R9 1
      194 LOADN                            R10 0
      195 CALL                             R6 4 1
      196 SETTABLEKS                       R6 R5 K68 ["TableSize"]
      198 MOVE                             R6 R3
      199 LOADK                            R7 K2 ["InputActionManager"]
      200 MOVE                             R8 R4
      201 MOVE                             R9 R5
      202 CALL                             R6 3 -1
      203 RETURN                           R6 -1
