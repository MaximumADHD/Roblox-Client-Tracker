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
       26 DUPTABLE                         R7 K13 [{"Size"}]
       27 LOADK                            R8 K14 ["$TreeSize"]
       28 SETTABLEKS                       R8 R7 K12 ["Size"]
       30 NEWTABLE                         R8 0 2
       32 MOVE                             R9 R2
       33 LOADK                            R10 K15 ["::UISizeConstraint"]
       34 DUPTABLE                         R11 K18 [{"MinSize", "MaxSize"}]
       35 GETIMPORT                        R12 K21 [Vector2.new]
       37 LOADN                            R13 220
       38 LOADN                            R14 40
       39 CALL                             R12 2 1
       40 SETTABLEKS                       R12 R11 K16 ["MinSize"]
       42 GETIMPORT                        R12 K21 [Vector2.new]
       44 LOADN                            R13 220
       45 LOADN                            R14 40
       46 CALL                             R12 2 1
       47 SETTABLEKS                       R12 R11 K17 ["MaxSize"]
       49 CALL                             R9 2 1
       50 MOVE                             R10 R2
       51 LOADK                            R11 K22 ["::UIFlexItem"]
       52 DUPTABLE                         R12 K24 [{"FlexMode"}]
       53 GETIMPORT                        R13 K28 [Enum.UIFlexMode.Fill]
       55 SETTABLEKS                       R13 R12 K23 ["FlexMode"]
       57 CALL                             R10 2 -1
       58 SETLIST                          R8 R9 -1 [1]
       60 CALL                             R5 3 1
       61 MOVE                             R6 R2
       62 LOADK                            R7 K29 [".columns-fill"]
       63 DUPTABLE                         R8 K31 [{"AutomaticSize", "Size"}]
       64 GETIMPORT                        R9 K33 [Enum.AutomaticSize.X]
       66 SETTABLEKS                       R9 R8 K30 ["AutomaticSize"]
       68 LOADK                            R9 K34 ["$TableSize"]
       69 SETTABLEKS                       R9 R8 K12 ["Size"]
       71 CALL                             R6 2 1
       72 MOVE                             R7 R2
       73 LOADK                            R8 K35 [".columns-flex"]
       74 NEWTABLE                         R9 0 0
       76 NEWTABLE                         R10 0 1
       78 MOVE                             R11 R2
       79 LOADK                            R12 K36 ["::UIListLayout"]
       80 DUPTABLE                         R13 K39 [{"FillDirection", "SortOrder"}]
       81 GETIMPORT                        R14 K41 [Enum.FillDirection.Horizontal]
       83 SETTABLEKS                       R14 R13 K37 ["FillDirection"]
       85 GETIMPORT                        R14 K43 [Enum.SortOrder.LayoutOrder]
       87 SETTABLEKS                       R14 R13 K38 ["SortOrder"]
       89 CALL                             R11 2 -1
       90 SETLIST                          R10 R11 -1 [1]
       92 CALL                             R7 3 1
       93 MOVE                             R8 R2
       94 LOADK                            R9 K44 [".columns-input"]
       95 NEWTABLE                         R10 0 0
       97 NEWTABLE                         R11 0 2
       99 MOVE                             R12 R2
      100 LOADK                            R13 K15 ["::UISizeConstraint"]
      101 DUPTABLE                         R14 K45 [{"MinSize"}]
      102 GETIMPORT                        R15 K21 [Vector2.new]
      104 LOADN                            R16 150
      105 LOADN                            R17 0
      106 CALL                             R15 2 1
      107 SETTABLEKS                       R15 R14 K16 ["MinSize"]
      109 CALL                             R12 2 1
      110 MOVE                             R13 R2
      111 LOADK                            R14 K22 ["::UIFlexItem"]
      112 DUPTABLE                         R15 K24 [{"FlexMode"}]
      113 GETIMPORT                        R16 K28 [Enum.UIFlexMode.Fill]
      115 SETTABLEKS                       R16 R15 K23 ["FlexMode"]
      117 CALL                             R13 2 -1
      118 SETLIST                          R11 R12 -1 [1]
      120 CALL                             R8 3 1
      121 MOVE                             R9 R2
      122 LOADK                            R10 K46 [".tree-row"]
      123 DUPTABLE                         R11 K13 [{"Size"}]
      124 LOADK                            R12 K47 ["$RowSize"]
      125 SETTABLEKS                       R12 R11 K12 ["Size"]
      127 NEWTABLE                         R12 0 3
      129 MOVE                             R13 R2
      130 LOADK                            R14 K48 [">> .label"]
      131 DUPTABLE                         R15 K50 [{"TextTruncate"}]
      132 GETIMPORT                        R16 K52 [Enum.TextTruncate.AtEnd]
      134 SETTABLEKS                       R16 R15 K49 ["TextTruncate"]
      136 CALL                             R13 2 1
      137 MOVE                             R14 R2
      138 LOADK                            R15 K53 [">> .spacer"]
      139 DUPTABLE                         R16 K13 [{"Size"}]
      140 LOADK                            R17 K54 ["$SpacerSize"]
      141 SETTABLEKS                       R17 R16 K12 ["Size"]
      143 CALL                             R14 2 1
      144 MOVE                             R15 R2
      145 LOADK                            R16 K55 [">> .icon"]
      146 DUPTABLE                         R17 K13 [{"Size"}]
      147 LOADK                            R18 K56 ["$IconSize"]
      148 SETTABLEKS                       R18 R17 K12 ["Size"]
      150 CALL                             R15 2 -1
      151 SETLIST                          R12 R13 -1 [1]
      153 CALL                             R9 3 1
      154 MOVE                             R10 R2
      155 LOADK                            R11 K57 [".size-full-divider"]
      156 DUPTABLE                         R12 K13 [{"Size"}]
      157 GETIMPORT                        R13 K59 [UDim2.new]
      159 LOADN                            R14 1
      160 LOADN                            R15 0
      161 LOADN                            R16 1
      162 LOADN                            R17 255
      163 CALL                             R13 4 1
      164 SETTABLEKS                       R13 R12 K12 ["Size"]
      166 CALL                             R10 2 -1
      167 SETLIST                          R4 R5 -1 [1]
      169 DUPTABLE                         R5 K65 [{"IconSize", "RowSize", "SpacerSize", "TreeSize", "TableSize"}]
      170 GETIMPORT                        R6 K67 [UDim2.fromOffset]
      172 LOADN                            R7 16
      173 LOADN                            R8 16
      174 CALL                             R6 2 1
      175 SETTABLEKS                       R6 R5 K60 ["IconSize"]
      177 GETIMPORT                        R6 K59 [UDim2.new]
      179 LOADN                            R7 1
      180 LOADN                            R8 0
      181 LOADN                            R9 0
      182 LOADN                            R10 40
      183 CALL                             R6 4 1
      184 SETTABLEKS                       R6 R5 K61 ["RowSize"]
      186 GETIMPORT                        R6 K59 [UDim2.new]
      188 LOADN                            R7 0
      189 LOADN                            R8 24
      190 LOADN                            R9 1
      191 LOADN                            R10 0
      192 CALL                             R6 4 1
      193 SETTABLEKS                       R6 R5 K62 ["SpacerSize"]
      195 GETIMPORT                        R6 K59 [UDim2.new]
      197 LOADN                            R7 0
      198 LOADN                            R8 220
      199 LOADN                            R9 1
      200 LOADN                            R10 0
      201 CALL                             R6 4 1
      202 SETTABLEKS                       R6 R5 K63 ["TreeSize"]
      204 GETIMPORT                        R6 K59 [UDim2.new]
      206 LOADN                            R7 1
      207 LOADN                            R8 0
      208 LOADN                            R9 1
      209 LOADN                            R10 0
      210 CALL                             R6 4 1
      211 SETTABLEKS                       R6 R5 K64 ["TableSize"]
      213 MOVE                             R6 R3
      214 LOADK                            R7 K2 ["InputActionManager"]
      215 MOVE                             R8 R4
      216 MOVE                             R9 R5
      217 CALL                             R6 3 -1
      218 RETURN                           R6 -1
