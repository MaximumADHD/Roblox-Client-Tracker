MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["ResponsiveGrid"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K11 [{"stories"}]
       26 NEWTABLE                         R4 0 1
       28 DUPTABLE                         R5 K15 [{"name", "summary", "story"}]
       29 LOADK                            R6 K16 ["Default"]
       30 SETTABLEKS                       R6 R5 K12 ["name"]
       32 LOADK                            R6 K17 ["A flexible grid. Change the storybook plugin width to see changing columns."]
       33 SETTABLEKS                       R6 R5 K13 ["summary"]
       35 GETTABLEKS                       R6 R1 K18 ["createElement"]
       37 MOVE                             R7 R2
       38 DUPTABLE                         R8 K22 [{"AutomaticSize", "CutOffs", "ItemHeight"}]
       39 GETIMPORT                        R9 K25 [Enum.AutomaticSize.Y]
       41 SETTABLEKS                       R9 R8 K19 ["AutomaticSize"]
       43 NEWTABLE                         R9 0 4
       45 DUPTABLE                         R10 K28 [{"MinWidth", "ColumnCount"}]
       46 LOADN                            R11 0
       47 SETTABLEKS                       R11 R10 K26 ["MinWidth"]
       49 LOADN                            R11 1
       50 SETTABLEKS                       R11 R10 K27 ["ColumnCount"]
       52 DUPTABLE                         R11 K28 [{"MinWidth", "ColumnCount"}]
       53 LOADN                            R12 200
       54 SETTABLEKS                       R12 R11 K26 ["MinWidth"]
       56 LOADN                            R12 2
       57 SETTABLEKS                       R12 R11 K27 ["ColumnCount"]
       59 DUPTABLE                         R12 K28 [{"MinWidth", "ColumnCount"}]
       60 LOADN                            R13 144
       61 SETTABLEKS                       R13 R12 K26 ["MinWidth"]
       63 LOADN                            R13 3
       64 SETTABLEKS                       R13 R12 K27 ["ColumnCount"]
       66 DUPTABLE                         R13 K28 [{"MinWidth", "ColumnCount"}]
       67 LOADN                            R14 232
       68 SETTABLEKS                       R14 R13 K26 ["MinWidth"]
       70 LOADN                            R14 5
       71 SETTABLEKS                       R14 R13 K27 ["ColumnCount"]
       73 SETLIST                          R9 R10 4 [1]
       75 SETTABLEKS                       R9 R8 K20 ["CutOffs"]
       77 GETIMPORT                        R9 K31 [UDim.new]
       79 LOADN                            R10 0
       80 LOADN                            R11 100
       81 CALL                             R9 2 1
       82 SETTABLEKS                       R9 R8 K21 ["ItemHeight"]
       84 DUPTABLE                         R9 K37 [{"item1", "item2", "item3", "item4", "item5"}]
       85 GETTABLEKS                       R10 R1 K18 ["createElement"]
       87 LOADK                            R11 K38 ["TextLabel"]
       88 DUPTABLE                         R12 K41 [{"Text", "LayoutOrder"}]
       89 LOADK                            R13 K42 ["item 1"]
       90 SETTABLEKS                       R13 R12 K39 ["Text"]
       92 LOADN                            R13 1
       93 SETTABLEKS                       R13 R12 K40 ["LayoutOrder"]
       95 CALL                             R10 2 1
       96 SETTABLEKS                       R10 R9 K32 ["item1"]
       98 GETTABLEKS                       R10 R1 K18 ["createElement"]
      100 LOADK                            R11 K38 ["TextLabel"]
      101 DUPTABLE                         R12 K41 [{"Text", "LayoutOrder"}]
      102 LOADK                            R13 K43 ["item 2"]
      103 SETTABLEKS                       R13 R12 K39 ["Text"]
      105 LOADN                            R13 2
      106 SETTABLEKS                       R13 R12 K40 ["LayoutOrder"]
      108 CALL                             R10 2 1
      109 SETTABLEKS                       R10 R9 K33 ["item2"]
      111 GETTABLEKS                       R10 R1 K18 ["createElement"]
      113 LOADK                            R11 K38 ["TextLabel"]
      114 DUPTABLE                         R12 K41 [{"Text", "LayoutOrder"}]
      115 LOADK                            R13 K44 ["item 3"]
      116 SETTABLEKS                       R13 R12 K39 ["Text"]
      118 LOADN                            R13 3
      119 SETTABLEKS                       R13 R12 K40 ["LayoutOrder"]
      121 CALL                             R10 2 1
      122 SETTABLEKS                       R10 R9 K34 ["item3"]
      124 GETTABLEKS                       R10 R1 K18 ["createElement"]
      126 LOADK                            R11 K38 ["TextLabel"]
      127 DUPTABLE                         R12 K41 [{"Text", "LayoutOrder"}]
      128 LOADK                            R13 K45 ["item 4"]
      129 SETTABLEKS                       R13 R12 K39 ["Text"]
      131 LOADN                            R13 4
      132 SETTABLEKS                       R13 R12 K40 ["LayoutOrder"]
      134 CALL                             R10 2 1
      135 SETTABLEKS                       R10 R9 K35 ["item4"]
      137 GETTABLEKS                       R10 R1 K18 ["createElement"]
      139 LOADK                            R11 K38 ["TextLabel"]
      140 DUPTABLE                         R12 K41 [{"Text", "LayoutOrder"}]
      141 LOADK                            R13 K46 ["item 5"]
      142 SETTABLEKS                       R13 R12 K39 ["Text"]
      144 LOADN                            R13 5
      145 SETTABLEKS                       R13 R12 K40 ["LayoutOrder"]
      147 CALL                             R10 2 1
      148 SETTABLEKS                       R10 R9 K36 ["item5"]
      150 CALL                             R6 3 1
      151 SETTABLEKS                       R6 R5 K14 ["story"]
      153 SETLIST                          R4 R5 1 [1]
      155 SETTABLEKS                       R4 R3 K10 ["stories"]
      157 RETURN                           R3 1
