PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"sizes"}]
        2 SETTABLEKS                       R0 R3 K0 ["sizes"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"sizes"}]
        1 GETTABLEKS                       R2 R0 K2 ["props"]
        3 GETTABLEKS                       R2 R2 K3 ["InitialSizes"]
        5 SETTABLEKS                       R2 R1 K0 ["sizes"]
        7 SETTABLEKS                       R1 R0 K4 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K5 ["onSizesChange"]
       13 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 GETUPVAL                         R5 2
        9 DUPTABLE                         R6 K9 [{["Sizes"], ["OnSizesChange"], ["MinSizes"], ["PaneStyle"] = "BorderBox", ["BarStyle"] = "BorderBox"}]
       10 GETTABLEKS                       R7 R2 K10 ["sizes"]
       12 SETTABLEKS                       R7 R6 K3 ["Sizes"]
       14 GETTABLEKS                       R7 R0 K11 ["onSizesChange"]
       16 SETTABLEKS                       R7 R6 K4 ["OnSizesChange"]
       18 GETTABLEKS                       R7 R1 K5 ["MinSizes"]
       20 SETTABLEKS                       R7 R6 K5 ["MinSizes"]
       22 MOVE                             R7 R1
       23 CALL                             R5 2 -1
       24 CALL                             R3 -1 -1
       25 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K8 [{["UseScale"] = True, ["ClampSize"] = True, ["Size"], ["MinSizes"], ["MaxSizes"], ["InitialSizes"]}]
        5 GETIMPORT                        R3 K11 [UDim2.new]
        7 LOADN                            R4 1
        8 LOADN                            R5 0
        9 LOADN                            R6 0
       10 LOADN                            R7 300
       11 CALL                             R3 4 1
       12 SETTABLEKS                       R3 R2 K4 ["Size"]
       14 NEWTABLE                         R3 0 4
       16 GETIMPORT                        R4 K13 [UDim.new]
       18 LOADK                            R5 K14 [0.1]
       19 LOADN                            R6 0
       20 CALL                             R4 2 1
       21 GETIMPORT                        R5 K13 [UDim.new]
       23 LOADK                            R6 K14 [0.1]
       24 LOADN                            R7 0
       25 CALL                             R5 2 1
       26 GETIMPORT                        R6 K13 [UDim.new]
       28 LOADK                            R7 K14 [0.1]
       29 LOADN                            R8 0
       30 CALL                             R6 2 1
       31 GETIMPORT                        R7 K13 [UDim.new]
       33 LOADK                            R8 K14 [0.1]
       34 LOADN                            R9 0
       35 CALL                             R7 2 -1
       36 SETLIST                          R3 R4 -1 [1]
       38 SETTABLEKS                       R3 R2 K5 ["MinSizes"]
       40 NEWTABLE                         R3 0 4
       42 LOADNIL                          R4
       43 LOADNIL                          R5
       44 GETIMPORT                        R6 K13 [UDim.new]
       46 LOADK                            R7 K14 [0.1]
       47 LOADN                            R8 0
       48 CALL                             R6 2 1
       49 LOADNIL                          R7
       50 SETLIST                          R3 R4 4 [1]
       52 SETTABLEKS                       R3 R2 K6 ["MaxSizes"]
       54 NEWTABLE                         R3 0 4
       56 GETIMPORT                        R4 K13 [UDim.new]
       58 LOADK                            R5 K15 [0.25]
       59 LOADN                            R6 0
       60 CALL                             R4 2 1
       61 GETIMPORT                        R5 K13 [UDim.new]
       63 LOADK                            R6 K15 [0.25]
       64 LOADN                            R7 0
       65 CALL                             R5 2 1
       66 GETIMPORT                        R6 K13 [UDim.new]
       68 LOADK                            R7 K14 [0.1]
       69 LOADN                            R8 0
       70 CALL                             R6 2 1
       71 GETIMPORT                        R7 K13 [UDim.new]
       73 LOADK                            R8 K16 [0.4]
       74 LOADN                            R9 0
       75 CALL                             R7 2 -1
       76 SETLIST                          R3 R4 -1 [1]
       78 SETTABLEKS                       R3 R2 K7 ["InitialSizes"]
       80 NEWTABLE                         R3 0 4
       82 GETUPVAL                         R4 0
       83 GETTABLEKS                       R4 R4 K0 ["createElement"]
       85 GETUPVAL                         R5 2
       86 DUPTABLE                         R6 K21 [{["Text"] = "This content appears in the first pane and will wrap based on the pane size", ["Size"], ["Position"], ["TextWrapped"] = True}]
       87 GETIMPORT                        R7 K11 [UDim2.new]
       89 LOADN                            R8 1
       90 LOADN                            R9 -20
       91 LOADN                            R10 1
       92 LOADN                            R11 -20
       93 CALL                             R7 4 1
       94 SETTABLEKS                       R7 R6 K4 ["Size"]
       96 GETIMPORT                        R7 K23 [UDim2.fromOffset]
       98 LOADN                            R8 10
       99 LOADN                            R9 10
      100 CALL                             R7 2 1
      101 SETTABLEKS                       R7 R6 K19 ["Position"]
      103 CALL                             R4 2 1
      104 GETUPVAL                         R5 0
      105 GETTABLEKS                       R5 R5 K0 ["createElement"]
      107 GETUPVAL                         R6 2
      108 DUPTABLE                         R7 K25 [{["Text"] = "This content appears in the second pane and will wrap based on the pane size", ["Size"], ["Position"], ["TextWrapped"] = True}]
      109 GETIMPORT                        R8 K11 [UDim2.new]
      111 LOADN                            R9 1
      112 LOADN                            R10 -20
      113 LOADN                            R11 1
      114 LOADN                            R12 -20
      115 CALL                             R8 4 1
      116 SETTABLEKS                       R8 R7 K4 ["Size"]
      118 GETIMPORT                        R8 K23 [UDim2.fromOffset]
      120 LOADN                            R9 10
      121 LOADN                            R10 10
      122 CALL                             R8 2 1
      123 SETTABLEKS                       R8 R7 K19 ["Position"]
      125 CALL                             R5 2 1
      126 GETUPVAL                         R6 0
      127 GETTABLEKS                       R6 R6 K0 ["createElement"]
      129 GETUPVAL                         R7 2
      130 DUPTABLE                         R8 K27 [{["Text"] = "Fixed Size Pane", ["Size"], ["Position"], ["TextWrapped"] = True}]
      131 GETIMPORT                        R9 K11 [UDim2.new]
      133 LOADN                            R10 1
      134 LOADN                            R11 -20
      135 LOADN                            R12 1
      136 LOADN                            R13 -20
      137 CALL                             R9 4 1
      138 SETTABLEKS                       R9 R8 K4 ["Size"]
      140 GETIMPORT                        R9 K23 [UDim2.fromOffset]
      142 LOADN                            R10 10
      143 LOADN                            R11 10
      144 CALL                             R9 2 1
      145 SETTABLEKS                       R9 R8 K19 ["Position"]
      147 CALL                             R6 2 1
      148 GETUPVAL                         R7 0
      149 GETTABLEKS                       R7 R7 K0 ["createElement"]
      151 GETUPVAL                         R8 2
      152 DUPTABLE                         R9 K29 [{["Text"] = "This content appears in the fourth pane and will wrap based on the pane size", ["Size"], ["Position"], ["TextWrapped"] = True}]
      153 GETIMPORT                        R10 K11 [UDim2.new]
      155 LOADN                            R11 1
      156 LOADN                            R12 -20
      157 LOADN                            R13 1
      158 LOADN                            R14 -20
      159 CALL                             R10 4 1
      160 SETTABLEKS                       R10 R9 K4 ["Size"]
      162 GETIMPORT                        R10 K23 [UDim2.fromOffset]
      164 LOADN                            R11 10
      165 LOADN                            R12 10
      166 CALL                             R10 2 1
      167 SETTABLEKS                       R10 R9 K19 ["Position"]
      169 CALL                             R7 2 -1
      170 SETLIST                          R3 R4 -1 [1]
      172 CALL                             R0 3 -1
      173 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K9 [{["UseScale"] = True, ["ClampSize"] = True, ["HideBars"] = True, ["Size"], ["MinSizes"], ["MaxSizes"], ["InitialSizes"]}]
        5 GETIMPORT                        R3 K12 [UDim2.new]
        7 LOADN                            R4 1
        8 LOADN                            R5 0
        9 LOADN                            R6 0
       10 LOADN                            R7 40
       11 CALL                             R3 4 1
       12 SETTABLEKS                       R3 R2 K5 ["Size"]
       14 NEWTABLE                         R3 0 4
       16 GETIMPORT                        R4 K14 [UDim.new]
       18 LOADK                            R5 K15 [0.1]
       19 LOADN                            R6 0
       20 CALL                             R4 2 1
       21 GETIMPORT                        R5 K14 [UDim.new]
       23 LOADK                            R6 K15 [0.1]
       24 LOADN                            R7 0
       25 CALL                             R5 2 1
       26 GETIMPORT                        R6 K14 [UDim.new]
       28 LOADK                            R7 K15 [0.1]
       29 LOADN                            R8 0
       30 CALL                             R6 2 1
       31 GETIMPORT                        R7 K14 [UDim.new]
       33 LOADK                            R8 K15 [0.1]
       34 LOADN                            R9 0
       35 CALL                             R7 2 -1
       36 SETLIST                          R3 R4 -1 [1]
       38 SETTABLEKS                       R3 R2 K6 ["MinSizes"]
       40 NEWTABLE                         R3 0 4
       42 LOADNIL                          R4
       43 LOADNIL                          R5
       44 GETIMPORT                        R6 K14 [UDim.new]
       46 LOADK                            R7 K15 [0.1]
       47 LOADN                            R8 0
       48 CALL                             R6 2 1
       49 LOADNIL                          R7
       50 SETLIST                          R3 R4 4 [1]
       52 SETTABLEKS                       R3 R2 K7 ["MaxSizes"]
       54 NEWTABLE                         R3 0 4
       56 GETIMPORT                        R4 K14 [UDim.new]
       58 LOADK                            R5 K16 [0.25]
       59 LOADN                            R6 0
       60 CALL                             R4 2 1
       61 GETIMPORT                        R5 K14 [UDim.new]
       63 LOADK                            R6 K16 [0.25]
       64 LOADN                            R7 0
       65 CALL                             R5 2 1
       66 GETIMPORT                        R6 K14 [UDim.new]
       68 LOADK                            R7 K15 [0.1]
       69 LOADN                            R8 0
       70 CALL                             R6 2 1
       71 GETIMPORT                        R7 K14 [UDim.new]
       73 LOADK                            R8 K17 [0.4]
       74 LOADN                            R9 0
       75 CALL                             R7 2 -1
       76 SETLIST                          R3 R4 -1 [1]
       78 SETTABLEKS                       R3 R2 K8 ["InitialSizes"]
       80 NEWTABLE                         R3 0 4
       82 GETUPVAL                         R4 0
       83 GETTABLEKS                       R4 R4 K0 ["createElement"]
       85 GETUPVAL                         R5 2
       86 DUPTABLE                         R6 K20 [{["Style"] = "SubtleBorderBox"}]
       87 DUPTABLE                         R7 K22 [{"Label"}]
       88 GETUPVAL                         R8 0
       89 GETTABLEKS                       R8 R8 K0 ["createElement"]
       91 GETUPVAL                         R9 3
       92 DUPTABLE                         R10 K25 [{["Text"] = "Row A", ["Size"]}]
       93 GETIMPORT                        R11 K27 [UDim2.fromScale]
       95 LOADN                            R12 1
       96 LOADN                            R13 1
       97 CALL                             R11 2 1
       98 SETTABLEKS                       R11 R10 K5 ["Size"]
      100 CALL                             R8 2 1
      101 SETTABLEKS                       R8 R7 K21 ["Label"]
      103 CALL                             R4 3 1
      104 GETUPVAL                         R5 0
      105 GETTABLEKS                       R5 R5 K0 ["createElement"]
      107 GETUPVAL                         R6 2
      108 DUPTABLE                         R7 K20 [{["Style"] = "SubtleBorderBox"}]
      109 DUPTABLE                         R8 K22 [{"Label"}]
      110 GETUPVAL                         R9 0
      111 GETTABLEKS                       R9 R9 K0 ["createElement"]
      113 GETUPVAL                         R10 3
      114 DUPTABLE                         R11 K29 [{["Text"] = "Row B", ["Size"]}]
      115 GETIMPORT                        R12 K27 [UDim2.fromScale]
      117 LOADN                            R13 1
      118 LOADN                            R14 1
      119 CALL                             R12 2 1
      120 SETTABLEKS                       R12 R11 K5 ["Size"]
      122 CALL                             R9 2 1
      123 SETTABLEKS                       R9 R8 K21 ["Label"]
      125 CALL                             R5 3 1
      126 GETUPVAL                         R6 0
      127 GETTABLEKS                       R6 R6 K0 ["createElement"]
      129 GETUPVAL                         R7 2
      130 DUPTABLE                         R8 K20 [{["Style"] = "SubtleBorderBox"}]
      131 DUPTABLE                         R9 K22 [{"Label"}]
      132 GETUPVAL                         R10 0
      133 GETTABLEKS                       R10 R10 K0 ["createElement"]
      135 GETUPVAL                         R11 3
      136 DUPTABLE                         R12 K31 [{["Text"] = "Fixed", ["Size"]}]
      137 GETIMPORT                        R13 K27 [UDim2.fromScale]
      139 LOADN                            R14 1
      140 LOADN                            R15 1
      141 CALL                             R13 2 1
      142 SETTABLEKS                       R13 R12 K5 ["Size"]
      144 CALL                             R10 2 1
      145 SETTABLEKS                       R10 R9 K21 ["Label"]
      147 CALL                             R6 3 1
      148 GETUPVAL                         R7 0
      149 GETTABLEKS                       R7 R7 K0 ["createElement"]
      151 GETUPVAL                         R8 2
      152 DUPTABLE                         R9 K20 [{["Style"] = "SubtleBorderBox"}]
      153 DUPTABLE                         R10 K22 [{"Label"}]
      154 GETUPVAL                         R11 0
      155 GETTABLEKS                       R11 R11 K0 ["createElement"]
      157 GETUPVAL                         R12 3
      158 DUPTABLE                         R13 K33 [{["Text"] = "Row D", ["Size"]}]
      159 GETIMPORT                        R14 K27 [UDim2.fromScale]
      161 LOADN                            R15 1
      162 LOADN                            R16 1
      163 CALL                             R14 2 1
      164 SETTABLEKS                       R14 R13 K5 ["Size"]
      166 CALL                             R11 2 1
      167 SETTABLEKS                       R11 R10 K21 ["Label"]
      169 CALL                             R7 3 -1
      170 SETLIST                          R3 R4 -1 [1]
      172 CALL                             R0 3 -1
      173 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K8 [{["UseDeficit"] = True, ["ClampSize"] = True, ["Size"], ["MinSizes"], ["MaxSizes"], ["InitialSizes"]}]
        5 GETIMPORT                        R3 K11 [UDim2.new]
        7 LOADN                            R4 1
        8 LOADN                            R5 0
        9 LOADN                            R6 0
       10 LOADN                            R7 300
       11 CALL                             R3 4 1
       12 SETTABLEKS                       R3 R2 K4 ["Size"]
       14 NEWTABLE                         R3 0 4
       16 GETIMPORT                        R4 K13 [UDim.new]
       18 LOADN                            R5 0
       19 LOADN                            R6 100
       20 CALL                             R4 2 1
       21 GETIMPORT                        R5 K13 [UDim.new]
       23 LOADN                            R6 0
       24 LOADN                            R7 100
       25 CALL                             R5 2 1
       26 GETIMPORT                        R6 K13 [UDim.new]
       28 LOADN                            R7 0
       29 LOADN                            R8 100
       30 CALL                             R6 2 1
       31 GETIMPORT                        R7 K13 [UDim.new]
       33 LOADN                            R8 0
       34 LOADN                            R9 100
       35 CALL                             R7 2 -1
       36 SETLIST                          R3 R4 -1 [1]
       38 SETTABLEKS                       R3 R2 K5 ["MinSizes"]
       40 NEWTABLE                         R3 0 4
       42 LOADNIL                          R4
       43 LOADNIL                          R5
       44 GETIMPORT                        R6 K13 [UDim.new]
       46 LOADN                            R7 0
       47 LOADN                            R8 100
       48 CALL                             R6 2 1
       49 LOADNIL                          R7
       50 SETLIST                          R3 R4 4 [1]
       52 SETTABLEKS                       R3 R2 K6 ["MaxSizes"]
       54 NEWTABLE                         R3 0 4
       56 GETIMPORT                        R4 K13 [UDim.new]
       58 LOADN                            R5 0
       59 LOADN                            R6 100
       60 CALL                             R4 2 1
       61 GETIMPORT                        R5 K13 [UDim.new]
       63 LOADN                            R6 0
       64 LOADN                            R7 100
       65 CALL                             R5 2 1
       66 GETIMPORT                        R6 K13 [UDim.new]
       68 LOADN                            R7 0
       69 LOADN                            R8 100
       70 CALL                             R6 2 1
       71 GETIMPORT                        R7 K13 [UDim.new]
       73 LOADN                            R8 1
       74 LOADN                            R9 -300
       75 CALL                             R7 2 -1
       76 SETLIST                          R3 R4 -1 [1]
       78 SETTABLEKS                       R3 R2 K7 ["InitialSizes"]
       80 NEWTABLE                         R3 0 4
       82 GETUPVAL                         R4 0
       83 GETTABLEKS                       R4 R4 K0 ["createElement"]
       85 GETUPVAL                         R5 2
       86 DUPTABLE                         R6 K18 [{["Text"] = "This content appears in the first pane and will wrap based on the pane size", ["Size"], ["Position"], ["TextWrapped"] = True}]
       87 GETIMPORT                        R7 K11 [UDim2.new]
       89 LOADN                            R8 1
       90 LOADN                            R9 -20
       91 LOADN                            R10 1
       92 LOADN                            R11 -20
       93 CALL                             R7 4 1
       94 SETTABLEKS                       R7 R6 K4 ["Size"]
       96 GETIMPORT                        R7 K20 [UDim2.fromOffset]
       98 LOADN                            R8 10
       99 LOADN                            R9 10
      100 CALL                             R7 2 1
      101 SETTABLEKS                       R7 R6 K16 ["Position"]
      103 CALL                             R4 2 1
      104 GETUPVAL                         R5 0
      105 GETTABLEKS                       R5 R5 K0 ["createElement"]
      107 GETUPVAL                         R6 2
      108 DUPTABLE                         R7 K22 [{["Text"] = "This content appears in the second pane and will wrap based on the pane size", ["Size"], ["Position"], ["TextWrapped"] = True}]
      109 GETIMPORT                        R8 K11 [UDim2.new]
      111 LOADN                            R9 1
      112 LOADN                            R10 -20
      113 LOADN                            R11 1
      114 LOADN                            R12 -20
      115 CALL                             R8 4 1
      116 SETTABLEKS                       R8 R7 K4 ["Size"]
      118 GETIMPORT                        R8 K20 [UDim2.fromOffset]
      120 LOADN                            R9 10
      121 LOADN                            R10 10
      122 CALL                             R8 2 1
      123 SETTABLEKS                       R8 R7 K16 ["Position"]
      125 CALL                             R5 2 1
      126 GETUPVAL                         R6 0
      127 GETTABLEKS                       R6 R6 K0 ["createElement"]
      129 GETUPVAL                         R7 2
      130 DUPTABLE                         R8 K24 [{["Text"] = "Fixed Size Pane", ["Size"], ["Position"], ["TextWrapped"] = True}]
      131 GETIMPORT                        R9 K11 [UDim2.new]
      133 LOADN                            R10 1
      134 LOADN                            R11 -20
      135 LOADN                            R12 1
      136 LOADN                            R13 -20
      137 CALL                             R9 4 1
      138 SETTABLEKS                       R9 R8 K4 ["Size"]
      140 GETIMPORT                        R9 K20 [UDim2.fromOffset]
      142 LOADN                            R10 10
      143 LOADN                            R11 10
      144 CALL                             R9 2 1
      145 SETTABLEKS                       R9 R8 K16 ["Position"]
      147 CALL                             R6 2 1
      148 GETUPVAL                         R7 0
      149 GETTABLEKS                       R7 R7 K0 ["createElement"]
      151 GETUPVAL                         R8 2
      152 DUPTABLE                         R9 K26 [{["Text"] = "This content appears in the fourth pane and will wrap based on the pane size", ["Size"], ["Position"], ["TextWrapped"] = True}]
      153 GETIMPORT                        R10 K11 [UDim2.new]
      155 LOADN                            R11 1
      156 LOADN                            R12 -20
      157 LOADN                            R13 1
      158 LOADN                            R14 -20
      159 CALL                             R10 4 1
      160 SETTABLEKS                       R10 R9 K4 ["Size"]
      162 GETIMPORT                        R10 K20 [UDim2.fromOffset]
      164 LOADN                            R11 10
      165 LOADN                            R12 10
      166 CALL                             R10 2 1
      167 SETTABLEKS                       R10 R9 K16 ["Position"]
      169 CALL                             R7 2 -1
      170 SETLIST                          R3 R4 -1 [1]
      172 CALL                             R0 3 -1
      173 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K6 [{["Style"] = "BorderBox", ["Size"], ["Padding"] = 2}]
        5 GETIMPORT                        R3 K9 [UDim2.fromOffset]
        7 LOADN                            R4 500
        8 LOADN                            R5 100
        9 CALL                             R3 2 1
       10 SETTABLEKS                       R3 R2 K3 ["Size"]
       12 DUPTABLE                         R3 K11 [{"Split"}]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K0 ["createElement"]
       16 GETUPVAL                         R5 2
       17 DUPTABLE                         R6 K17 [{["CanvasSize"], ["AutomaticCanvasSize"], ["ScrollingDirection"], ["ClipsDescendants"] = True}]
       18 GETIMPORT                        R7 K19 [UDim2.fromScale]
       20 LOADN                            R8 0
       21 LOADN                            R9 0
       22 CALL                             R7 2 1
       23 SETTABLEKS                       R7 R6 K12 ["CanvasSize"]
       25 GETIMPORT                        R7 K23 [Enum.AutomaticSize.XY]
       27 SETTABLEKS                       R7 R6 K13 ["AutomaticCanvasSize"]
       29 GETIMPORT                        R7 K25 [Enum.ScrollingDirection.X]
       31 SETTABLEKS                       R7 R6 K14 ["ScrollingDirection"]
       33 DUPTABLE                         R7 K27 [{"Child"}]
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K0 ["createElement"]
       37 GETUPVAL                         R9 3
       38 DUPTABLE                         R10 K32 [{["AutomaticSize"], ["PaneStyle"] = "Default", ["Size"], ["MinSizes"], ["InitialSizes"]}]
       39 GETIMPORT                        R11 K33 [Enum.AutomaticSize.X]
       41 SETTABLEKS                       R11 R10 K21 ["AutomaticSize"]
       43 GETIMPORT                        R11 K9 [UDim2.fromOffset]
       45 LOADN                            R12 0
       46 LOADN                            R13 95
       47 CALL                             R11 2 1
       48 SETTABLEKS                       R11 R10 K3 ["Size"]
       50 NEWTABLE                         R11 0 4
       52 GETIMPORT                        R12 K36 [UDim.new]
       54 LOADN                            R13 0
       55 LOADN                            R14 50
       56 CALL                             R12 2 1
       57 GETIMPORT                        R13 K36 [UDim.new]
       59 LOADN                            R14 0
       60 LOADN                            R15 50
       61 CALL                             R13 2 1
       62 GETIMPORT                        R14 K36 [UDim.new]
       64 LOADN                            R15 0
       65 LOADN                            R16 50
       66 CALL                             R14 2 1
       67 GETIMPORT                        R15 K36 [UDim.new]
       69 LOADN                            R16 0
       70 LOADN                            R17 50
       71 CALL                             R15 2 -1
       72 SETLIST                          R11 R12 -1 [1]
       74 SETTABLEKS                       R11 R10 K30 ["MinSizes"]
       76 NEWTABLE                         R11 0 4
       78 GETIMPORT                        R12 K36 [UDim.new]
       80 LOADN                            R13 0
       81 LOADN                            R14 250
       82 CALL                             R12 2 1
       83 GETIMPORT                        R13 K36 [UDim.new]
       85 LOADN                            R14 0
       86 LOADN                            R15 300
       87 CALL                             R13 2 1
       88 GETIMPORT                        R14 K36 [UDim.new]
       90 LOADN                            R15 0
       91 LOADN                            R16 250
       92 CALL                             R14 2 1
       93 GETIMPORT                        R15 K36 [UDim.new]
       95 LOADN                            R16 0
       96 LOADN                            R17 100
       97 CALL                             R15 2 -1
       98 SETLIST                          R11 R12 -1 [1]
      100 SETTABLEKS                       R11 R10 K31 ["InitialSizes"]
      102 NEWTABLE                         R11 0 4
      104 GETUPVAL                         R12 0
      105 GETTABLEKS                       R12 R12 K0 ["createElement"]
      107 GETUPVAL                         R13 4
      108 DUPTABLE                         R14 K41 [{["Text"] = "First", ["Size"], ["Position"], ["TextWrapped"] = True}]
      109 GETIMPORT                        R15 K42 [UDim2.new]
      111 LOADN                            R16 1
      112 LOADN                            R17 -20
      113 LOADN                            R18 1
      114 LOADN                            R19 -20
      115 CALL                             R15 4 1
      116 SETTABLEKS                       R15 R14 K3 ["Size"]
      118 GETIMPORT                        R15 K9 [UDim2.fromOffset]
      120 LOADN                            R16 10
      121 LOADN                            R17 10
      122 CALL                             R15 2 1
      123 SETTABLEKS                       R15 R14 K39 ["Position"]
      125 CALL                             R12 2 1
      126 GETUPVAL                         R13 0
      127 GETTABLEKS                       R13 R13 K0 ["createElement"]
      129 GETUPVAL                         R14 4
      130 DUPTABLE                         R15 K44 [{["Text"] = "Second", ["Size"], ["Position"], ["TextWrapped"] = True}]
      131 GETIMPORT                        R16 K42 [UDim2.new]
      133 LOADN                            R17 1
      134 LOADN                            R18 -20
      135 LOADN                            R19 1
      136 LOADN                            R20 -20
      137 CALL                             R16 4 1
      138 SETTABLEKS                       R16 R15 K3 ["Size"]
      140 GETIMPORT                        R16 K9 [UDim2.fromOffset]
      142 LOADN                            R17 10
      143 LOADN                            R18 10
      144 CALL                             R16 2 1
      145 SETTABLEKS                       R16 R15 K39 ["Position"]
      147 CALL                             R13 2 1
      148 GETUPVAL                         R14 0
      149 GETTABLEKS                       R14 R14 K0 ["createElement"]
      151 GETUPVAL                         R15 4
      152 DUPTABLE                         R16 K46 [{["Text"] = "Third", ["Size"], ["Position"], ["TextWrapped"] = True}]
      153 GETIMPORT                        R17 K42 [UDim2.new]
      155 LOADN                            R18 1
      156 LOADN                            R19 -20
      157 LOADN                            R20 1
      158 LOADN                            R21 -20
      159 CALL                             R17 4 1
      160 SETTABLEKS                       R17 R16 K3 ["Size"]
      162 GETIMPORT                        R17 K9 [UDim2.fromOffset]
      164 LOADN                            R18 10
      165 LOADN                            R19 10
      166 CALL                             R17 2 1
      167 SETTABLEKS                       R17 R16 K39 ["Position"]
      169 CALL                             R14 2 1
      170 GETUPVAL                         R15 0
      171 GETTABLEKS                       R15 R15 K0 ["createElement"]
      173 GETUPVAL                         R16 4
      174 DUPTABLE                         R17 K48 [{["Text"] = "Fourth", ["Size"], ["Position"], ["TextWrapped"] = True}]
      175 GETIMPORT                        R18 K42 [UDim2.new]
      177 LOADN                            R19 1
      178 LOADN                            R20 -20
      179 LOADN                            R21 1
      180 LOADN                            R22 -20
      181 CALL                             R18 4 1
      182 SETTABLEKS                       R18 R17 K3 ["Size"]
      184 GETIMPORT                        R18 K9 [UDim2.fromOffset]
      186 LOADN                            R19 10
      187 LOADN                            R20 10
      188 CALL                             R18 2 1
      189 SETTABLEKS                       R18 R17 K39 ["Position"]
      191 CALL                             R15 2 -1
      192 SETLIST                          R11 R12 -1 [1]
      194 CALL                             R8 3 1
      195 SETTABLEKS                       R8 R7 K26 ["Child"]
      197 CALL                             R4 3 1
      198 SETTABLEKS                       R4 R3 K10 ["Split"]
      200 CALL                             R0 3 -1
      201 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K7 [{["ClampSize"] = True, ["Layout"], ["Size"], ["MinSizes"], ["InitialSizes"]}]
        5 GETIMPORT                        R3 K11 [Enum.FillDirection.Vertical]
        7 SETTABLEKS                       R3 R2 K3 ["Layout"]
        9 GETIMPORT                        R3 K14 [UDim2.fromOffset]
       11 LOADN                            R4 300
       12 LOADN                            R5 500
       13 CALL                             R3 2 1
       14 SETTABLEKS                       R3 R2 K4 ["Size"]
       16 NEWTABLE                         R3 0 3
       18 GETIMPORT                        R4 K17 [UDim.new]
       20 LOADN                            R5 0
       21 LOADN                            R6 100
       22 CALL                             R4 2 1
       23 GETIMPORT                        R5 K17 [UDim.new]
       25 LOADN                            R6 0
       26 LOADN                            R7 100
       27 CALL                             R5 2 1
       28 GETIMPORT                        R6 K17 [UDim.new]
       30 LOADN                            R7 0
       31 LOADN                            R8 100
       32 CALL                             R6 2 -1
       33 SETLIST                          R3 R4 -1 [1]
       35 SETTABLEKS                       R3 R2 K5 ["MinSizes"]
       37 NEWTABLE                         R3 0 3
       39 GETIMPORT                        R4 K17 [UDim.new]
       41 LOADN                            R5 0
       42 LOADN                            R6 100
       43 CALL                             R4 2 1
       44 GETIMPORT                        R5 K17 [UDim.new]
       46 LOADN                            R6 0
       47 LOADN                            R7 100
       48 CALL                             R5 2 1
       49 GETIMPORT                        R6 K17 [UDim.new]
       51 LOADN                            R7 0
       52 LOADN                            R8 100
       53 CALL                             R6 2 -1
       54 SETLIST                          R3 R4 -1 [1]
       56 SETTABLEKS                       R3 R2 K6 ["InitialSizes"]
       58 NEWTABLE                         R3 0 3
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R4 R4 K0 ["createElement"]
       63 GETUPVAL                         R5 2
       64 DUPTABLE                         R6 K22 [{["Text"] = "First", ["Size"], ["Position"], ["TextWrapped"] = True}]
       65 GETIMPORT                        R7 K23 [UDim2.new]
       67 LOADN                            R8 1
       68 LOADN                            R9 -20
       69 LOADN                            R10 1
       70 LOADN                            R11 -20
       71 CALL                             R7 4 1
       72 SETTABLEKS                       R7 R6 K4 ["Size"]
       74 GETIMPORT                        R7 K14 [UDim2.fromOffset]
       76 LOADN                            R8 10
       77 LOADN                            R9 10
       78 CALL                             R7 2 1
       79 SETTABLEKS                       R7 R6 K20 ["Position"]
       81 CALL                             R4 2 1
       82 GETUPVAL                         R5 0
       83 GETTABLEKS                       R5 R5 K0 ["createElement"]
       85 GETUPVAL                         R6 2
       86 DUPTABLE                         R7 K25 [{["Text"] = "Second", ["Size"], ["Position"], ["TextWrapped"] = True}]
       87 GETIMPORT                        R8 K23 [UDim2.new]
       89 LOADN                            R9 1
       90 LOADN                            R10 -20
       91 LOADN                            R11 1
       92 LOADN                            R12 -20
       93 CALL                             R8 4 1
       94 SETTABLEKS                       R8 R7 K4 ["Size"]
       96 GETIMPORT                        R8 K14 [UDim2.fromOffset]
       98 LOADN                            R9 10
       99 LOADN                            R10 10
      100 CALL                             R8 2 1
      101 SETTABLEKS                       R8 R7 K20 ["Position"]
      103 CALL                             R5 2 1
      104 GETUPVAL                         R6 0
      105 GETTABLEKS                       R6 R6 K0 ["createElement"]
      107 GETUPVAL                         R7 2
      108 DUPTABLE                         R8 K27 [{["Text"] = "Third", ["Size"], ["Position"], ["TextWrapped"] = True}]
      109 GETIMPORT                        R9 K23 [UDim2.new]
      111 LOADN                            R10 1
      112 LOADN                            R11 -20
      113 LOADN                            R12 1
      114 LOADN                            R13 -20
      115 CALL                             R9 4 1
      116 SETTABLEKS                       R9 R8 K4 ["Size"]
      118 GETIMPORT                        R9 K14 [UDim2.fromOffset]
      120 LOADN                            R10 10
      121 LOADN                            R11 10
      122 CALL                             R9 2 1
      123 SETTABLEKS                       R9 R8 K20 ["Position"]
      125 CALL                             R6 2 -1
      126 SETLIST                          R3 R4 -1 [1]
      128 CALL                             R0 3 -1
      129 RETURN                           R0 -1

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
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K4 ["Parent"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K8 ["Components"]
       29 GETTABLEKS                       R4 R4 K9 ["Pane"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K2 ["UI"]
       36 GETTABLEKS                       R5 R5 K8 ["Components"]
       38 GETTABLEKS                       R5 R5 K10 ["ScrollingFrame"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R6 R0 K2 ["UI"]
       45 GETTABLEKS                       R6 R6 K8 ["Components"]
       47 GETTABLEKS                       R6 R6 K11 ["TextLabel"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K6 [require]
       52 GETTABLEKS                       R7 R0 K4 ["Parent"]
       54 GETTABLEKS                       R7 R7 K12 ["Dash"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R6 K13 ["join"]
       59 GETTABLEKS                       R8 R1 K14 ["PureComponent"]
       61 LOADK                            R10 K15 ["ControlledSplitPane"]
       62 NAMECALL                         R8 R8 K16 ["extend"]
       64 CALL                             R8 2 1
       65 DUPCLOSURE                       R9 K17 [PROTO_1]
       66 SETTABLEKS                       R9 R8 K18 ["init"]
       68 DUPCLOSURE                       R9 K19 [PROTO_2]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R7
       72 SETTABLEKS                       R9 R8 K20 ["render"]
       74 DUPTABLE                         R9 K22 [{"stories"}]
       75 NEWTABLE                         R10 0 5
       77 DUPTABLE                         R11 K28 [{["name"] = "Clamped and Scaled", ["summary"] = "This component is clamped to the size of the container, and panes scale proportionally when resized", ["story"]}]
       78 DUPCLOSURE                       R12 K29 [PROTO_3]
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R5
       82 SETTABLEKS                       R12 R11 K27 ["story"]
       84 DUPTABLE                         R12 K32 [{["name"] = "Hidden Drag bars", ["summary"] = "The drag bars can be hidden to allow style customization", ["story"]}]
       85 DUPCLOSURE                       R13 K33 [PROTO_4]
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R5
       90 SETTABLEKS                       R13 R12 K27 ["story"]
       92 DUPTABLE                         R13 K36 [{["name"] = "Clamped with Deficit", ["summary"] = "This component is clamped to the size of the container, with the last pane filling remaining space when resized", ["story"]}]
       93 DUPCLOSURE                       R14 K37 [PROTO_5]
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R5
       97 SETTABLEKS                       R14 R13 K27 ["story"]
       99 DUPTABLE                         R14 K40 [{["name"] = "Unclamped", ["summary"] = "When not clamped, the component can grow horizontally as children are resized", ["story"]}]
      100 DUPCLOSURE                       R15 K41 [PROTO_6]
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R5
      106 SETTABLEKS                       R15 R14 K27 ["story"]
      108 DUPTABLE                         R15 K44 [{["name"] = "Vertical", ["summary"] = "Split Pane will also display vertical layout", ["story"]}]
      109 DUPCLOSURE                       R16 K45 [PROTO_7]
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R5
      113 SETTABLEKS                       R16 R15 K27 ["story"]
      115 SETLIST                          R10 R11 5 [1]
      117 SETTABLEKS                       R10 R9 K21 ["stories"]
      119 RETURN                           R9 1
