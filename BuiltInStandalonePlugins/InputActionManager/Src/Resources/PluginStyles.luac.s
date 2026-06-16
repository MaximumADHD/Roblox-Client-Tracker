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
       30 NEWTABLE                         R8 0 1
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
       49 CALL                             R9 2 -1
       50 SETLIST                          R8 R9 -1 [1]
       52 CALL                             R5 3 1
       53 MOVE                             R6 R2
       54 LOADK                            R7 K22 [".columns-fill"]
       55 DUPTABLE                         R8 K24 [{"AutomaticSize", "Size"}]
       56 GETIMPORT                        R9 K27 [Enum.AutomaticSize.X]
       58 SETTABLEKS                       R9 R8 K23 ["AutomaticSize"]
       60 LOADK                            R9 K28 ["$TableSize"]
       61 SETTABLEKS                       R9 R8 K12 ["Size"]
       63 CALL                             R6 2 1
       64 MOVE                             R7 R2
       65 LOADK                            R8 K29 [".columns-flex"]
       66 NEWTABLE                         R9 0 0
       68 NEWTABLE                         R10 0 1
       70 MOVE                             R11 R2
       71 LOADK                            R12 K30 ["::UIListLayout"]
       72 DUPTABLE                         R13 K33 [{"FillDirection", "SortOrder"}]
       73 GETIMPORT                        R14 K35 [Enum.FillDirection.Horizontal]
       75 SETTABLEKS                       R14 R13 K31 ["FillDirection"]
       77 GETIMPORT                        R14 K37 [Enum.SortOrder.LayoutOrder]
       79 SETTABLEKS                       R14 R13 K32 ["SortOrder"]
       81 CALL                             R11 2 -1
       82 SETLIST                          R10 R11 -1 [1]
       84 CALL                             R7 3 1
       85 MOVE                             R8 R2
       86 LOADK                            R9 K38 [".columns-input"]
       87 DUPTABLE                         R10 K13 [{"Size"}]
       88 GETIMPORT                        R11 K40 [UDim2.new]
       90 LOADK                            R12 K41 [0.25]
       91 LOADN                            R13 0
       92 LOADN                            R14 1
       93 LOADN                            R15 0
       94 CALL                             R11 4 1
       95 SETTABLEKS                       R11 R10 K12 ["Size"]
       97 NEWTABLE                         R11 0 2
       99 MOVE                             R12 R2
      100 LOADK                            R13 K15 ["::UISizeConstraint"]
      101 DUPTABLE                         R14 K42 [{"MinSize"}]
      102 GETIMPORT                        R15 K21 [Vector2.new]
      104 LOADN                            R16 150
      105 LOADN                            R17 0
      106 CALL                             R15 2 1
      107 SETTABLEKS                       R15 R14 K16 ["MinSize"]
      109 CALL                             R12 2 1
      110 MOVE                             R13 R2
      111 LOADK                            R14 K43 ["::UIFlexItem"]
      112 DUPTABLE                         R15 K45 [{"FlexMode"}]
      113 GETIMPORT                        R16 K48 [Enum.UIFlexMode.Fill]
      115 SETTABLEKS                       R16 R15 K44 ["FlexMode"]
      117 CALL                             R13 2 -1
      118 SETLIST                          R11 R12 -1 [1]
      120 CALL                             R8 3 1
      121 MOVE                             R9 R2
      122 LOADK                            R10 K49 [".tree-row"]
      123 DUPTABLE                         R11 K24 [{"AutomaticSize", "Size"}]
      124 GETIMPORT                        R12 K27 [Enum.AutomaticSize.X]
      126 SETTABLEKS                       R12 R11 K23 ["AutomaticSize"]
      128 LOADK                            R12 K50 ["$RowSize"]
      129 SETTABLEKS                       R12 R11 K12 ["Size"]
      131 NEWTABLE                         R12 0 3
      133 MOVE                             R13 R2
      134 LOADK                            R14 K51 [">> .label"]
      135 DUPTABLE                         R15 K53 [{"TextTruncate"}]
      136 GETIMPORT                        R16 K55 [Enum.TextTruncate.AtEnd]
      138 SETTABLEKS                       R16 R15 K52 ["TextTruncate"]
      140 CALL                             R13 2 1
      141 MOVE                             R14 R2
      142 LOADK                            R15 K56 [">> .spacer"]
      143 DUPTABLE                         R16 K13 [{"Size"}]
      144 LOADK                            R17 K57 ["$SpacerSize"]
      145 SETTABLEKS                       R17 R16 K12 ["Size"]
      147 CALL                             R14 2 1
      148 MOVE                             R15 R2
      149 LOADK                            R16 K58 [">> .icon"]
      150 DUPTABLE                         R17 K13 [{"Size"}]
      151 LOADK                            R18 K59 ["$IconSize"]
      152 SETTABLEKS                       R18 R17 K12 ["Size"]
      154 CALL                             R15 2 -1
      155 SETLIST                          R12 R13 -1 [1]
      157 CALL                             R9 3 1
      158 MOVE                             R10 R2
      159 LOADK                            R11 K60 [".size-full-divider"]
      160 DUPTABLE                         R12 K13 [{"Size"}]
      161 GETIMPORT                        R13 K40 [UDim2.new]
      163 LOADN                            R14 1
      164 LOADN                            R15 0
      165 LOADN                            R16 1
      166 LOADN                            R17 255
      167 CALL                             R13 4 1
      168 SETTABLEKS                       R13 R12 K12 ["Size"]
      170 CALL                             R10 2 -1
      171 SETLIST                          R4 R5 -1 [1]
      173 DUPTABLE                         R5 K66 [{"IconSize", "RowSize", "SpacerSize", "TreeSize", "TableSize"}]
      174 GETIMPORT                        R6 K68 [UDim2.fromOffset]
      176 LOADN                            R7 16
      177 LOADN                            R8 16
      178 CALL                             R6 2 1
      179 SETTABLEKS                       R6 R5 K61 ["IconSize"]
      181 GETIMPORT                        R6 K40 [UDim2.new]
      183 LOADN                            R7 0
      184 LOADN                            R8 0
      185 LOADN                            R9 0
      186 LOADN                            R10 40
      187 CALL                             R6 4 1
      188 SETTABLEKS                       R6 R5 K62 ["RowSize"]
      190 GETIMPORT                        R6 K40 [UDim2.new]
      192 LOADN                            R7 0
      193 LOADN                            R8 24
      194 LOADN                            R9 1
      195 LOADN                            R10 0
      196 CALL                             R6 4 1
      197 SETTABLEKS                       R6 R5 K63 ["SpacerSize"]
      199 GETIMPORT                        R6 K40 [UDim2.new]
      201 LOADN                            R7 0
      202 LOADN                            R8 220
      203 LOADN                            R9 1
      204 LOADN                            R10 0
      205 CALL                             R6 4 1
      206 SETTABLEKS                       R6 R5 K64 ["TreeSize"]
      208 GETIMPORT                        R6 K40 [UDim2.new]
      210 LOADN                            R7 1
      211 LOADN                            R8 0
      212 LOADN                            R9 1
      213 LOADN                            R10 0
      214 CALL                             R6 4 1
      215 SETTABLEKS                       R6 R5 K65 ["TableSize"]
      217 MOVE                             R6 R3
      218 LOADK                            R7 K2 ["InputActionManager"]
      219 MOVE                             R8 R4
      220 MOVE                             R9 R5
      221 CALL                             R6 3 -1
      222 RETURN                           R6 -1
