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
        9 DUPTABLE                         R6 K8 [{"Sizes", "OnSizesChange", "MinSizes", "PaneStyle", "BarStyle"}]
       10 GETTABLEKS                       R7 R2 K9 ["sizes"]
       12 SETTABLEKS                       R7 R6 K3 ["Sizes"]
       14 GETTABLEKS                       R7 R0 K10 ["onSizesChange"]
       16 SETTABLEKS                       R7 R6 K4 ["OnSizesChange"]
       18 GETTABLEKS                       R7 R1 K5 ["MinSizes"]
       20 SETTABLEKS                       R7 R6 K5 ["MinSizes"]
       22 LOADK                            R7 K11 ["BorderBox"]
       23 SETTABLEKS                       R7 R6 K6 ["PaneStyle"]
       25 LOADK                            R7 K11 ["BorderBox"]
       26 SETTABLEKS                       R7 R6 K7 ["BarStyle"]
       28 MOVE                             R7 R1
       29 CALL                             R5 2 -1
       30 CALL                             R3 -1 -1
       31 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K7 [{"UseScale", "ClampSize", "Size", "MinSizes", "MaxSizes", "InitialSizes"}]
        5 LOADB                            R3 1
        6 SETTABLEKS                       R3 R2 K1 ["UseScale"]
        8 LOADB                            R3 1
        9 SETTABLEKS                       R3 R2 K2 ["ClampSize"]
       11 GETIMPORT                        R3 K10 [UDim2.new]
       13 LOADN                            R4 1
       14 LOADN                            R5 0
       15 LOADN                            R6 0
       16 LOADN                            R7 44
       17 CALL                             R3 4 1
       18 SETTABLEKS                       R3 R2 K3 ["Size"]
       20 NEWTABLE                         R3 0 4
       22 GETIMPORT                        R4 K12 [UDim.new]
       24 LOADK                            R5 K13 [0.1]
       25 LOADN                            R6 0
       26 CALL                             R4 2 1
       27 GETIMPORT                        R5 K12 [UDim.new]
       29 LOADK                            R6 K13 [0.1]
       30 LOADN                            R7 0
       31 CALL                             R5 2 1
       32 GETIMPORT                        R6 K12 [UDim.new]
       34 LOADK                            R7 K13 [0.1]
       35 LOADN                            R8 0
       36 CALL                             R6 2 1
       37 GETIMPORT                        R7 K12 [UDim.new]
       39 LOADK                            R8 K13 [0.1]
       40 LOADN                            R9 0
       41 CALL                             R7 2 -1
       42 SETLIST                          R3 R4 -1 [1]
       44 SETTABLEKS                       R3 R2 K4 ["MinSizes"]
       46 NEWTABLE                         R3 0 4
       48 LOADNIL                          R4
       49 LOADNIL                          R5
       50 GETIMPORT                        R6 K12 [UDim.new]
       52 LOADK                            R7 K13 [0.1]
       53 LOADN                            R8 0
       54 CALL                             R6 2 1
       55 LOADNIL                          R7
       56 SETLIST                          R3 R4 4 [1]
       58 SETTABLEKS                       R3 R2 K5 ["MaxSizes"]
       60 NEWTABLE                         R3 0 4
       62 GETIMPORT                        R4 K12 [UDim.new]
       64 LOADK                            R5 K14 [0.25]
       65 LOADN                            R6 0
       66 CALL                             R4 2 1
       67 GETIMPORT                        R5 K12 [UDim.new]
       69 LOADK                            R6 K14 [0.25]
       70 LOADN                            R7 0
       71 CALL                             R5 2 1
       72 GETIMPORT                        R6 K12 [UDim.new]
       74 LOADK                            R7 K13 [0.1]
       75 LOADN                            R8 0
       76 CALL                             R6 2 1
       77 GETIMPORT                        R7 K12 [UDim.new]
       79 LOADK                            R8 K15 [0.4]
       80 LOADN                            R9 0
       81 CALL                             R7 2 -1
       82 SETLIST                          R3 R4 -1 [1]
       84 SETTABLEKS                       R3 R2 K6 ["InitialSizes"]
       86 NEWTABLE                         R3 0 4
       88 GETUPVAL                         R4 0
       89 GETTABLEKS                       R4 R4 K0 ["createElement"]
       91 GETUPVAL                         R5 2
       92 DUPTABLE                         R6 K19 [{"Text", "Size", "Position", "TextWrapped"}]
       93 LOADK                            R7 K20 ["This content appears in the first pane and will wrap based on the pane size"]
       94 SETTABLEKS                       R7 R6 K16 ["Text"]
       96 GETIMPORT                        R7 K10 [UDim2.new]
       98 LOADN                            R8 1
       99 LOADN                            R9 236
      100 LOADN                            R10 1
      101 LOADN                            R11 236
      102 CALL                             R7 4 1
      103 SETTABLEKS                       R7 R6 K3 ["Size"]
      105 GETIMPORT                        R7 K22 [UDim2.fromOffset]
      107 LOADN                            R8 10
      108 LOADN                            R9 10
      109 CALL                             R7 2 1
      110 SETTABLEKS                       R7 R6 K17 ["Position"]
      112 LOADB                            R7 1
      113 SETTABLEKS                       R7 R6 K18 ["TextWrapped"]
      115 CALL                             R4 2 1
      116 GETUPVAL                         R5 0
      117 GETTABLEKS                       R5 R5 K0 ["createElement"]
      119 GETUPVAL                         R6 2
      120 DUPTABLE                         R7 K19 [{"Text", "Size", "Position", "TextWrapped"}]
      121 LOADK                            R8 K23 ["This content appears in the second pane and will wrap based on the pane size"]
      122 SETTABLEKS                       R8 R7 K16 ["Text"]
      124 GETIMPORT                        R8 K10 [UDim2.new]
      126 LOADN                            R9 1
      127 LOADN                            R10 236
      128 LOADN                            R11 1
      129 LOADN                            R12 236
      130 CALL                             R8 4 1
      131 SETTABLEKS                       R8 R7 K3 ["Size"]
      133 GETIMPORT                        R8 K22 [UDim2.fromOffset]
      135 LOADN                            R9 10
      136 LOADN                            R10 10
      137 CALL                             R8 2 1
      138 SETTABLEKS                       R8 R7 K17 ["Position"]
      140 LOADB                            R8 1
      141 SETTABLEKS                       R8 R7 K18 ["TextWrapped"]
      143 CALL                             R5 2 1
      144 GETUPVAL                         R6 0
      145 GETTABLEKS                       R6 R6 K0 ["createElement"]
      147 GETUPVAL                         R7 2
      148 DUPTABLE                         R8 K19 [{"Text", "Size", "Position", "TextWrapped"}]
      149 LOADK                            R9 K24 ["Fixed Size Pane"]
      150 SETTABLEKS                       R9 R8 K16 ["Text"]
      152 GETIMPORT                        R9 K10 [UDim2.new]
      154 LOADN                            R10 1
      155 LOADN                            R11 236
      156 LOADN                            R12 1
      157 LOADN                            R13 236
      158 CALL                             R9 4 1
      159 SETTABLEKS                       R9 R8 K3 ["Size"]
      161 GETIMPORT                        R9 K22 [UDim2.fromOffset]
      163 LOADN                            R10 10
      164 LOADN                            R11 10
      165 CALL                             R9 2 1
      166 SETTABLEKS                       R9 R8 K17 ["Position"]
      168 LOADB                            R9 1
      169 SETTABLEKS                       R9 R8 K18 ["TextWrapped"]
      171 CALL                             R6 2 1
      172 GETUPVAL                         R7 0
      173 GETTABLEKS                       R7 R7 K0 ["createElement"]
      175 GETUPVAL                         R8 2
      176 DUPTABLE                         R9 K19 [{"Text", "Size", "Position", "TextWrapped"}]
      177 LOADK                            R10 K25 ["This content appears in the fourth pane and will wrap based on the pane size"]
      178 SETTABLEKS                       R10 R9 K16 ["Text"]
      180 GETIMPORT                        R10 K10 [UDim2.new]
      182 LOADN                            R11 1
      183 LOADN                            R12 236
      184 LOADN                            R13 1
      185 LOADN                            R14 236
      186 CALL                             R10 4 1
      187 SETTABLEKS                       R10 R9 K3 ["Size"]
      189 GETIMPORT                        R10 K22 [UDim2.fromOffset]
      191 LOADN                            R11 10
      192 LOADN                            R12 10
      193 CALL                             R10 2 1
      194 SETTABLEKS                       R10 R9 K17 ["Position"]
      196 LOADB                            R10 1
      197 SETTABLEKS                       R10 R9 K18 ["TextWrapped"]
      199 CALL                             R7 2 -1
      200 SETLIST                          R3 R4 -1 [1]
      202 CALL                             R0 3 -1
      203 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K8 [{"UseScale", "ClampSize", "HideBars", "Size", "MinSizes", "MaxSizes", "InitialSizes"}]
        5 LOADB                            R3 1
        6 SETTABLEKS                       R3 R2 K1 ["UseScale"]
        8 LOADB                            R3 1
        9 SETTABLEKS                       R3 R2 K2 ["ClampSize"]
       11 LOADB                            R3 1
       12 SETTABLEKS                       R3 R2 K3 ["HideBars"]
       14 GETIMPORT                        R3 K11 [UDim2.new]
       16 LOADN                            R4 1
       17 LOADN                            R5 0
       18 LOADN                            R6 0
       19 LOADN                            R7 40
       20 CALL                             R3 4 1
       21 SETTABLEKS                       R3 R2 K4 ["Size"]
       23 NEWTABLE                         R3 0 4
       25 GETIMPORT                        R4 K13 [UDim.new]
       27 LOADK                            R5 K14 [0.1]
       28 LOADN                            R6 0
       29 CALL                             R4 2 1
       30 GETIMPORT                        R5 K13 [UDim.new]
       32 LOADK                            R6 K14 [0.1]
       33 LOADN                            R7 0
       34 CALL                             R5 2 1
       35 GETIMPORT                        R6 K13 [UDim.new]
       37 LOADK                            R7 K14 [0.1]
       38 LOADN                            R8 0
       39 CALL                             R6 2 1
       40 GETIMPORT                        R7 K13 [UDim.new]
       42 LOADK                            R8 K14 [0.1]
       43 LOADN                            R9 0
       44 CALL                             R7 2 -1
       45 SETLIST                          R3 R4 -1 [1]
       47 SETTABLEKS                       R3 R2 K5 ["MinSizes"]
       49 NEWTABLE                         R3 0 4
       51 LOADNIL                          R4
       52 LOADNIL                          R5
       53 GETIMPORT                        R6 K13 [UDim.new]
       55 LOADK                            R7 K14 [0.1]
       56 LOADN                            R8 0
       57 CALL                             R6 2 1
       58 LOADNIL                          R7
       59 SETLIST                          R3 R4 4 [1]
       61 SETTABLEKS                       R3 R2 K6 ["MaxSizes"]
       63 NEWTABLE                         R3 0 4
       65 GETIMPORT                        R4 K13 [UDim.new]
       67 LOADK                            R5 K15 [0.25]
       68 LOADN                            R6 0
       69 CALL                             R4 2 1
       70 GETIMPORT                        R5 K13 [UDim.new]
       72 LOADK                            R6 K15 [0.25]
       73 LOADN                            R7 0
       74 CALL                             R5 2 1
       75 GETIMPORT                        R6 K13 [UDim.new]
       77 LOADK                            R7 K14 [0.1]
       78 LOADN                            R8 0
       79 CALL                             R6 2 1
       80 GETIMPORT                        R7 K13 [UDim.new]
       82 LOADK                            R8 K16 [0.4]
       83 LOADN                            R9 0
       84 CALL                             R7 2 -1
       85 SETLIST                          R3 R4 -1 [1]
       87 SETTABLEKS                       R3 R2 K7 ["InitialSizes"]
       89 NEWTABLE                         R3 0 4
       91 GETUPVAL                         R4 0
       92 GETTABLEKS                       R4 R4 K0 ["createElement"]
       94 GETUPVAL                         R5 2
       95 DUPTABLE                         R6 K18 [{"Style"}]
       96 LOADK                            R7 K19 ["SubtleBorderBox"]
       97 SETTABLEKS                       R7 R6 K17 ["Style"]
       99 DUPTABLE                         R7 K21 [{"Label"}]
      100 GETUPVAL                         R8 0
      101 GETTABLEKS                       R8 R8 K0 ["createElement"]
      103 GETUPVAL                         R9 3
      104 DUPTABLE                         R10 K23 [{"Text", "Size"}]
      105 LOADK                            R11 K24 ["Row A"]
      106 SETTABLEKS                       R11 R10 K22 ["Text"]
      108 GETIMPORT                        R11 K26 [UDim2.fromScale]
      110 LOADN                            R12 1
      111 LOADN                            R13 1
      112 CALL                             R11 2 1
      113 SETTABLEKS                       R11 R10 K4 ["Size"]
      115 CALL                             R8 2 1
      116 SETTABLEKS                       R8 R7 K20 ["Label"]
      118 CALL                             R4 3 1
      119 GETUPVAL                         R5 0
      120 GETTABLEKS                       R5 R5 K0 ["createElement"]
      122 GETUPVAL                         R6 2
      123 DUPTABLE                         R7 K18 [{"Style"}]
      124 LOADK                            R8 K19 ["SubtleBorderBox"]
      125 SETTABLEKS                       R8 R7 K17 ["Style"]
      127 DUPTABLE                         R8 K21 [{"Label"}]
      128 GETUPVAL                         R9 0
      129 GETTABLEKS                       R9 R9 K0 ["createElement"]
      131 GETUPVAL                         R10 3
      132 DUPTABLE                         R11 K23 [{"Text", "Size"}]
      133 LOADK                            R12 K27 ["Row B"]
      134 SETTABLEKS                       R12 R11 K22 ["Text"]
      136 GETIMPORT                        R12 K26 [UDim2.fromScale]
      138 LOADN                            R13 1
      139 LOADN                            R14 1
      140 CALL                             R12 2 1
      141 SETTABLEKS                       R12 R11 K4 ["Size"]
      143 CALL                             R9 2 1
      144 SETTABLEKS                       R9 R8 K20 ["Label"]
      146 CALL                             R5 3 1
      147 GETUPVAL                         R6 0
      148 GETTABLEKS                       R6 R6 K0 ["createElement"]
      150 GETUPVAL                         R7 2
      151 DUPTABLE                         R8 K18 [{"Style"}]
      152 LOADK                            R9 K19 ["SubtleBorderBox"]
      153 SETTABLEKS                       R9 R8 K17 ["Style"]
      155 DUPTABLE                         R9 K21 [{"Label"}]
      156 GETUPVAL                         R10 0
      157 GETTABLEKS                       R10 R10 K0 ["createElement"]
      159 GETUPVAL                         R11 3
      160 DUPTABLE                         R12 K23 [{"Text", "Size"}]
      161 LOADK                            R13 K28 ["Fixed"]
      162 SETTABLEKS                       R13 R12 K22 ["Text"]
      164 GETIMPORT                        R13 K26 [UDim2.fromScale]
      166 LOADN                            R14 1
      167 LOADN                            R15 1
      168 CALL                             R13 2 1
      169 SETTABLEKS                       R13 R12 K4 ["Size"]
      171 CALL                             R10 2 1
      172 SETTABLEKS                       R10 R9 K20 ["Label"]
      174 CALL                             R6 3 1
      175 GETUPVAL                         R7 0
      176 GETTABLEKS                       R7 R7 K0 ["createElement"]
      178 GETUPVAL                         R8 2
      179 DUPTABLE                         R9 K18 [{"Style"}]
      180 LOADK                            R10 K19 ["SubtleBorderBox"]
      181 SETTABLEKS                       R10 R9 K17 ["Style"]
      183 DUPTABLE                         R10 K21 [{"Label"}]
      184 GETUPVAL                         R11 0
      185 GETTABLEKS                       R11 R11 K0 ["createElement"]
      187 GETUPVAL                         R12 3
      188 DUPTABLE                         R13 K23 [{"Text", "Size"}]
      189 LOADK                            R14 K29 ["Row D"]
      190 SETTABLEKS                       R14 R13 K22 ["Text"]
      192 GETIMPORT                        R14 K26 [UDim2.fromScale]
      194 LOADN                            R15 1
      195 LOADN                            R16 1
      196 CALL                             R14 2 1
      197 SETTABLEKS                       R14 R13 K4 ["Size"]
      199 CALL                             R11 2 1
      200 SETTABLEKS                       R11 R10 K20 ["Label"]
      202 CALL                             R7 3 -1
      203 SETLIST                          R3 R4 -1 [1]
      205 CALL                             R0 3 -1
      206 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K7 [{"UseDeficit", "ClampSize", "Size", "MinSizes", "MaxSizes", "InitialSizes"}]
        5 LOADB                            R3 1
        6 SETTABLEKS                       R3 R2 K1 ["UseDeficit"]
        8 LOADB                            R3 1
        9 SETTABLEKS                       R3 R2 K2 ["ClampSize"]
       11 GETIMPORT                        R3 K10 [UDim2.new]
       13 LOADN                            R4 1
       14 LOADN                            R5 0
       15 LOADN                            R6 0
       16 LOADN                            R7 44
       17 CALL                             R3 4 1
       18 SETTABLEKS                       R3 R2 K3 ["Size"]
       20 NEWTABLE                         R3 0 4
       22 GETIMPORT                        R4 K12 [UDim.new]
       24 LOADN                            R5 0
       25 LOADN                            R6 100
       26 CALL                             R4 2 1
       27 GETIMPORT                        R5 K12 [UDim.new]
       29 LOADN                            R6 0
       30 LOADN                            R7 100
       31 CALL                             R5 2 1
       32 GETIMPORT                        R6 K12 [UDim.new]
       34 LOADN                            R7 0
       35 LOADN                            R8 100
       36 CALL                             R6 2 1
       37 GETIMPORT                        R7 K12 [UDim.new]
       39 LOADN                            R8 0
       40 LOADN                            R9 100
       41 CALL                             R7 2 -1
       42 SETLIST                          R3 R4 -1 [1]
       44 SETTABLEKS                       R3 R2 K4 ["MinSizes"]
       46 NEWTABLE                         R3 0 4
       48 LOADNIL                          R4
       49 LOADNIL                          R5
       50 GETIMPORT                        R6 K12 [UDim.new]
       52 LOADN                            R7 0
       53 LOADN                            R8 100
       54 CALL                             R6 2 1
       55 LOADNIL                          R7
       56 SETLIST                          R3 R4 4 [1]
       58 SETTABLEKS                       R3 R2 K5 ["MaxSizes"]
       60 NEWTABLE                         R3 0 4
       62 GETIMPORT                        R4 K12 [UDim.new]
       64 LOADN                            R5 0
       65 LOADN                            R6 100
       66 CALL                             R4 2 1
       67 GETIMPORT                        R5 K12 [UDim.new]
       69 LOADN                            R6 0
       70 LOADN                            R7 100
       71 CALL                             R5 2 1
       72 GETIMPORT                        R6 K12 [UDim.new]
       74 LOADN                            R7 0
       75 LOADN                            R8 100
       76 CALL                             R6 2 1
       77 GETIMPORT                        R7 K12 [UDim.new]
       79 LOADN                            R8 1
       80 LOADN                            R9 212
       81 CALL                             R7 2 -1
       82 SETLIST                          R3 R4 -1 [1]
       84 SETTABLEKS                       R3 R2 K6 ["InitialSizes"]
       86 NEWTABLE                         R3 0 4
       88 GETUPVAL                         R4 0
       89 GETTABLEKS                       R4 R4 K0 ["createElement"]
       91 GETUPVAL                         R5 2
       92 DUPTABLE                         R6 K16 [{"Text", "Size", "Position", "TextWrapped"}]
       93 LOADK                            R7 K17 ["This content appears in the first pane and will wrap based on the pane size"]
       94 SETTABLEKS                       R7 R6 K13 ["Text"]
       96 GETIMPORT                        R7 K10 [UDim2.new]
       98 LOADN                            R8 1
       99 LOADN                            R9 236
      100 LOADN                            R10 1
      101 LOADN                            R11 236
      102 CALL                             R7 4 1
      103 SETTABLEKS                       R7 R6 K3 ["Size"]
      105 GETIMPORT                        R7 K19 [UDim2.fromOffset]
      107 LOADN                            R8 10
      108 LOADN                            R9 10
      109 CALL                             R7 2 1
      110 SETTABLEKS                       R7 R6 K14 ["Position"]
      112 LOADB                            R7 1
      113 SETTABLEKS                       R7 R6 K15 ["TextWrapped"]
      115 CALL                             R4 2 1
      116 GETUPVAL                         R5 0
      117 GETTABLEKS                       R5 R5 K0 ["createElement"]
      119 GETUPVAL                         R6 2
      120 DUPTABLE                         R7 K16 [{"Text", "Size", "Position", "TextWrapped"}]
      121 LOADK                            R8 K20 ["This content appears in the second pane and will wrap based on the pane size"]
      122 SETTABLEKS                       R8 R7 K13 ["Text"]
      124 GETIMPORT                        R8 K10 [UDim2.new]
      126 LOADN                            R9 1
      127 LOADN                            R10 236
      128 LOADN                            R11 1
      129 LOADN                            R12 236
      130 CALL                             R8 4 1
      131 SETTABLEKS                       R8 R7 K3 ["Size"]
      133 GETIMPORT                        R8 K19 [UDim2.fromOffset]
      135 LOADN                            R9 10
      136 LOADN                            R10 10
      137 CALL                             R8 2 1
      138 SETTABLEKS                       R8 R7 K14 ["Position"]
      140 LOADB                            R8 1
      141 SETTABLEKS                       R8 R7 K15 ["TextWrapped"]
      143 CALL                             R5 2 1
      144 GETUPVAL                         R6 0
      145 GETTABLEKS                       R6 R6 K0 ["createElement"]
      147 GETUPVAL                         R7 2
      148 DUPTABLE                         R8 K16 [{"Text", "Size", "Position", "TextWrapped"}]
      149 LOADK                            R9 K21 ["Fixed Size Pane"]
      150 SETTABLEKS                       R9 R8 K13 ["Text"]
      152 GETIMPORT                        R9 K10 [UDim2.new]
      154 LOADN                            R10 1
      155 LOADN                            R11 236
      156 LOADN                            R12 1
      157 LOADN                            R13 236
      158 CALL                             R9 4 1
      159 SETTABLEKS                       R9 R8 K3 ["Size"]
      161 GETIMPORT                        R9 K19 [UDim2.fromOffset]
      163 LOADN                            R10 10
      164 LOADN                            R11 10
      165 CALL                             R9 2 1
      166 SETTABLEKS                       R9 R8 K14 ["Position"]
      168 LOADB                            R9 1
      169 SETTABLEKS                       R9 R8 K15 ["TextWrapped"]
      171 CALL                             R6 2 1
      172 GETUPVAL                         R7 0
      173 GETTABLEKS                       R7 R7 K0 ["createElement"]
      175 GETUPVAL                         R8 2
      176 DUPTABLE                         R9 K16 [{"Text", "Size", "Position", "TextWrapped"}]
      177 LOADK                            R10 K22 ["This content appears in the fourth pane and will wrap based on the pane size"]
      178 SETTABLEKS                       R10 R9 K13 ["Text"]
      180 GETIMPORT                        R10 K10 [UDim2.new]
      182 LOADN                            R11 1
      183 LOADN                            R12 236
      184 LOADN                            R13 1
      185 LOADN                            R14 236
      186 CALL                             R10 4 1
      187 SETTABLEKS                       R10 R9 K3 ["Size"]
      189 GETIMPORT                        R10 K19 [UDim2.fromOffset]
      191 LOADN                            R11 10
      192 LOADN                            R12 10
      193 CALL                             R10 2 1
      194 SETTABLEKS                       R10 R9 K14 ["Position"]
      196 LOADB                            R10 1
      197 SETTABLEKS                       R10 R9 K15 ["TextWrapped"]
      199 CALL                             R7 2 -1
      200 SETLIST                          R3 R4 -1 [1]
      202 CALL                             R0 3 -1
      203 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{"Style", "Size", "Padding"}]
        5 LOADK                            R3 K5 ["BorderBox"]
        6 SETTABLEKS                       R3 R2 K1 ["Style"]
        8 GETIMPORT                        R3 K8 [UDim2.fromOffset]
       10 LOADN                            R4 244
       11 LOADN                            R5 100
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R2 K2 ["Size"]
       15 LOADN                            R3 2
       16 SETTABLEKS                       R3 R2 K3 ["Padding"]
       18 DUPTABLE                         R3 K10 [{"Split"}]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K0 ["createElement"]
       22 GETUPVAL                         R5 2
       23 DUPTABLE                         R6 K15 [{"CanvasSize", "AutomaticCanvasSize", "ScrollingDirection", "ClipsDescendants"}]
       24 GETIMPORT                        R7 K17 [UDim2.fromScale]
       26 LOADN                            R8 0
       27 LOADN                            R9 0
       28 CALL                             R7 2 1
       29 SETTABLEKS                       R7 R6 K11 ["CanvasSize"]
       31 GETIMPORT                        R7 K21 [Enum.AutomaticSize.XY]
       33 SETTABLEKS                       R7 R6 K12 ["AutomaticCanvasSize"]
       35 GETIMPORT                        R7 K23 [Enum.ScrollingDirection.X]
       37 SETTABLEKS                       R7 R6 K13 ["ScrollingDirection"]
       39 LOADB                            R7 1
       40 SETTABLEKS                       R7 R6 K14 ["ClipsDescendants"]
       42 DUPTABLE                         R7 K25 [{"Child"}]
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K0 ["createElement"]
       46 GETUPVAL                         R9 3
       47 DUPTABLE                         R10 K29 [{"AutomaticSize", "PaneStyle", "Size", "MinSizes", "InitialSizes"}]
       48 GETIMPORT                        R11 K30 [Enum.AutomaticSize.X]
       50 SETTABLEKS                       R11 R10 K19 ["AutomaticSize"]
       52 LOADK                            R11 K31 ["Default"]
       53 SETTABLEKS                       R11 R10 K26 ["PaneStyle"]
       55 GETIMPORT                        R11 K8 [UDim2.fromOffset]
       57 LOADN                            R12 0
       58 LOADN                            R13 95
       59 CALL                             R11 2 1
       60 SETTABLEKS                       R11 R10 K2 ["Size"]
       62 NEWTABLE                         R11 0 4
       64 GETIMPORT                        R12 K34 [UDim.new]
       66 LOADN                            R13 0
       67 LOADN                            R14 50
       68 CALL                             R12 2 1
       69 GETIMPORT                        R13 K34 [UDim.new]
       71 LOADN                            R14 0
       72 LOADN                            R15 50
       73 CALL                             R13 2 1
       74 GETIMPORT                        R14 K34 [UDim.new]
       76 LOADN                            R15 0
       77 LOADN                            R16 50
       78 CALL                             R14 2 1
       79 GETIMPORT                        R15 K34 [UDim.new]
       81 LOADN                            R16 0
       82 LOADN                            R17 50
       83 CALL                             R15 2 -1
       84 SETLIST                          R11 R12 -1 [1]
       86 SETTABLEKS                       R11 R10 K27 ["MinSizes"]
       88 NEWTABLE                         R11 0 4
       90 GETIMPORT                        R12 K34 [UDim.new]
       92 LOADN                            R13 0
       93 LOADN                            R14 250
       94 CALL                             R12 2 1
       95 GETIMPORT                        R13 K34 [UDim.new]
       97 LOADN                            R14 0
       98 LOADN                            R15 44
       99 CALL                             R13 2 1
      100 GETIMPORT                        R14 K34 [UDim.new]
      102 LOADN                            R15 0
      103 LOADN                            R16 250
      104 CALL                             R14 2 1
      105 GETIMPORT                        R15 K34 [UDim.new]
      107 LOADN                            R16 0
      108 LOADN                            R17 100
      109 CALL                             R15 2 -1
      110 SETLIST                          R11 R12 -1 [1]
      112 SETTABLEKS                       R11 R10 K28 ["InitialSizes"]
      114 NEWTABLE                         R11 0 4
      116 GETUPVAL                         R12 0
      117 GETTABLEKS                       R12 R12 K0 ["createElement"]
      119 GETUPVAL                         R13 4
      120 DUPTABLE                         R14 K38 [{"Text", "Size", "Position", "TextWrapped"}]
      121 LOADK                            R15 K39 ["First"]
      122 SETTABLEKS                       R15 R14 K35 ["Text"]
      124 GETIMPORT                        R15 K40 [UDim2.new]
      126 LOADN                            R16 1
      127 LOADN                            R17 236
      128 LOADN                            R18 1
      129 LOADN                            R19 236
      130 CALL                             R15 4 1
      131 SETTABLEKS                       R15 R14 K2 ["Size"]
      133 GETIMPORT                        R15 K8 [UDim2.fromOffset]
      135 LOADN                            R16 10
      136 LOADN                            R17 10
      137 CALL                             R15 2 1
      138 SETTABLEKS                       R15 R14 K36 ["Position"]
      140 LOADB                            R15 1
      141 SETTABLEKS                       R15 R14 K37 ["TextWrapped"]
      143 CALL                             R12 2 1
      144 GETUPVAL                         R13 0
      145 GETTABLEKS                       R13 R13 K0 ["createElement"]
      147 GETUPVAL                         R14 4
      148 DUPTABLE                         R15 K38 [{"Text", "Size", "Position", "TextWrapped"}]
      149 LOADK                            R16 K41 ["Second"]
      150 SETTABLEKS                       R16 R15 K35 ["Text"]
      152 GETIMPORT                        R16 K40 [UDim2.new]
      154 LOADN                            R17 1
      155 LOADN                            R18 236
      156 LOADN                            R19 1
      157 LOADN                            R20 236
      158 CALL                             R16 4 1
      159 SETTABLEKS                       R16 R15 K2 ["Size"]
      161 GETIMPORT                        R16 K8 [UDim2.fromOffset]
      163 LOADN                            R17 10
      164 LOADN                            R18 10
      165 CALL                             R16 2 1
      166 SETTABLEKS                       R16 R15 K36 ["Position"]
      168 LOADB                            R16 1
      169 SETTABLEKS                       R16 R15 K37 ["TextWrapped"]
      171 CALL                             R13 2 1
      172 GETUPVAL                         R14 0
      173 GETTABLEKS                       R14 R14 K0 ["createElement"]
      175 GETUPVAL                         R15 4
      176 DUPTABLE                         R16 K38 [{"Text", "Size", "Position", "TextWrapped"}]
      177 LOADK                            R17 K42 ["Third"]
      178 SETTABLEKS                       R17 R16 K35 ["Text"]
      180 GETIMPORT                        R17 K40 [UDim2.new]
      182 LOADN                            R18 1
      183 LOADN                            R19 236
      184 LOADN                            R20 1
      185 LOADN                            R21 236
      186 CALL                             R17 4 1
      187 SETTABLEKS                       R17 R16 K2 ["Size"]
      189 GETIMPORT                        R17 K8 [UDim2.fromOffset]
      191 LOADN                            R18 10
      192 LOADN                            R19 10
      193 CALL                             R17 2 1
      194 SETTABLEKS                       R17 R16 K36 ["Position"]
      196 LOADB                            R17 1
      197 SETTABLEKS                       R17 R16 K37 ["TextWrapped"]
      199 CALL                             R14 2 1
      200 GETUPVAL                         R15 0
      201 GETTABLEKS                       R15 R15 K0 ["createElement"]
      203 GETUPVAL                         R16 4
      204 DUPTABLE                         R17 K38 [{"Text", "Size", "Position", "TextWrapped"}]
      205 LOADK                            R18 K43 ["Fourth"]
      206 SETTABLEKS                       R18 R17 K35 ["Text"]
      208 GETIMPORT                        R18 K40 [UDim2.new]
      210 LOADN                            R19 1
      211 LOADN                            R20 236
      212 LOADN                            R21 1
      213 LOADN                            R22 236
      214 CALL                             R18 4 1
      215 SETTABLEKS                       R18 R17 K2 ["Size"]
      217 GETIMPORT                        R18 K8 [UDim2.fromOffset]
      219 LOADN                            R19 10
      220 LOADN                            R20 10
      221 CALL                             R18 2 1
      222 SETTABLEKS                       R18 R17 K36 ["Position"]
      224 LOADB                            R18 1
      225 SETTABLEKS                       R18 R17 K37 ["TextWrapped"]
      227 CALL                             R15 2 -1
      228 SETLIST                          R11 R12 -1 [1]
      230 CALL                             R8 3 1
      231 SETTABLEKS                       R8 R7 K24 ["Child"]
      233 CALL                             R4 3 1
      234 SETTABLEKS                       R4 R3 K9 ["Split"]
      236 CALL                             R0 3 -1
      237 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K6 [{"ClampSize", "Layout", "Size", "MinSizes", "InitialSizes"}]
        5 LOADB                            R3 1
        6 SETTABLEKS                       R3 R2 K1 ["ClampSize"]
        8 GETIMPORT                        R3 K10 [Enum.FillDirection.Vertical]
       10 SETTABLEKS                       R3 R2 K2 ["Layout"]
       12 GETIMPORT                        R3 K13 [UDim2.fromOffset]
       14 LOADN                            R4 44
       15 LOADN                            R5 244
       16 CALL                             R3 2 1
       17 SETTABLEKS                       R3 R2 K3 ["Size"]
       19 NEWTABLE                         R3 0 3
       21 GETIMPORT                        R4 K16 [UDim.new]
       23 LOADN                            R5 0
       24 LOADN                            R6 100
       25 CALL                             R4 2 1
       26 GETIMPORT                        R5 K16 [UDim.new]
       28 LOADN                            R6 0
       29 LOADN                            R7 100
       30 CALL                             R5 2 1
       31 GETIMPORT                        R6 K16 [UDim.new]
       33 LOADN                            R7 0
       34 LOADN                            R8 100
       35 CALL                             R6 2 -1
       36 SETLIST                          R3 R4 -1 [1]
       38 SETTABLEKS                       R3 R2 K4 ["MinSizes"]
       40 NEWTABLE                         R3 0 3
       42 GETIMPORT                        R4 K16 [UDim.new]
       44 LOADN                            R5 0
       45 LOADN                            R6 100
       46 CALL                             R4 2 1
       47 GETIMPORT                        R5 K16 [UDim.new]
       49 LOADN                            R6 0
       50 LOADN                            R7 100
       51 CALL                             R5 2 1
       52 GETIMPORT                        R6 K16 [UDim.new]
       54 LOADN                            R7 0
       55 LOADN                            R8 100
       56 CALL                             R6 2 -1
       57 SETLIST                          R3 R4 -1 [1]
       59 SETTABLEKS                       R3 R2 K5 ["InitialSizes"]
       61 NEWTABLE                         R3 0 3
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R4 R4 K0 ["createElement"]
       66 GETUPVAL                         R5 2
       67 DUPTABLE                         R6 K20 [{"Text", "Size", "Position", "TextWrapped"}]
       68 LOADK                            R7 K21 ["First"]
       69 SETTABLEKS                       R7 R6 K17 ["Text"]
       71 GETIMPORT                        R7 K22 [UDim2.new]
       73 LOADN                            R8 1
       74 LOADN                            R9 236
       75 LOADN                            R10 1
       76 LOADN                            R11 236
       77 CALL                             R7 4 1
       78 SETTABLEKS                       R7 R6 K3 ["Size"]
       80 GETIMPORT                        R7 K13 [UDim2.fromOffset]
       82 LOADN                            R8 10
       83 LOADN                            R9 10
       84 CALL                             R7 2 1
       85 SETTABLEKS                       R7 R6 K18 ["Position"]
       87 LOADB                            R7 1
       88 SETTABLEKS                       R7 R6 K19 ["TextWrapped"]
       90 CALL                             R4 2 1
       91 GETUPVAL                         R5 0
       92 GETTABLEKS                       R5 R5 K0 ["createElement"]
       94 GETUPVAL                         R6 2
       95 DUPTABLE                         R7 K20 [{"Text", "Size", "Position", "TextWrapped"}]
       96 LOADK                            R8 K23 ["Second"]
       97 SETTABLEKS                       R8 R7 K17 ["Text"]
       99 GETIMPORT                        R8 K22 [UDim2.new]
      101 LOADN                            R9 1
      102 LOADN                            R10 236
      103 LOADN                            R11 1
      104 LOADN                            R12 236
      105 CALL                             R8 4 1
      106 SETTABLEKS                       R8 R7 K3 ["Size"]
      108 GETIMPORT                        R8 K13 [UDim2.fromOffset]
      110 LOADN                            R9 10
      111 LOADN                            R10 10
      112 CALL                             R8 2 1
      113 SETTABLEKS                       R8 R7 K18 ["Position"]
      115 LOADB                            R8 1
      116 SETTABLEKS                       R8 R7 K19 ["TextWrapped"]
      118 CALL                             R5 2 1
      119 GETUPVAL                         R6 0
      120 GETTABLEKS                       R6 R6 K0 ["createElement"]
      122 GETUPVAL                         R7 2
      123 DUPTABLE                         R8 K20 [{"Text", "Size", "Position", "TextWrapped"}]
      124 LOADK                            R9 K24 ["Third"]
      125 SETTABLEKS                       R9 R8 K17 ["Text"]
      127 GETIMPORT                        R9 K22 [UDim2.new]
      129 LOADN                            R10 1
      130 LOADN                            R11 236
      131 LOADN                            R12 1
      132 LOADN                            R13 236
      133 CALL                             R9 4 1
      134 SETTABLEKS                       R9 R8 K3 ["Size"]
      136 GETIMPORT                        R9 K13 [UDim2.fromOffset]
      138 LOADN                            R10 10
      139 LOADN                            R11 10
      140 CALL                             R9 2 1
      141 SETTABLEKS                       R9 R8 K18 ["Position"]
      143 LOADB                            R9 1
      144 SETTABLEKS                       R9 R8 K19 ["TextWrapped"]
      146 CALL                             R6 2 -1
      147 SETLIST                          R3 R4 -1 [1]
      149 CALL                             R0 3 -1
      150 RETURN                           R0 -1

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
       77 DUPTABLE                         R11 K26 [{"name", "summary", "story"}]
       78 LOADK                            R12 K27 ["Clamped and Scaled"]
       79 SETTABLEKS                       R12 R11 K23 ["name"]
       81 LOADK                            R12 K28 ["This component is clamped to the size of the container, and panes scale proportionally when resized"]
       82 SETTABLEKS                       R12 R11 K24 ["summary"]
       84 DUPCLOSURE                       R12 K29 [PROTO_3]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R5
       88 SETTABLEKS                       R12 R11 K25 ["story"]
       90 DUPTABLE                         R12 K26 [{"name", "summary", "story"}]
       91 LOADK                            R13 K30 ["Hidden Drag bars"]
       92 SETTABLEKS                       R13 R12 K23 ["name"]
       94 LOADK                            R13 K31 ["The drag bars can be hidden to allow style customization"]
       95 SETTABLEKS                       R13 R12 K24 ["summary"]
       97 DUPCLOSURE                       R13 K32 [PROTO_4]
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R5
      102 SETTABLEKS                       R13 R12 K25 ["story"]
      104 DUPTABLE                         R13 K26 [{"name", "summary", "story"}]
      105 LOADK                            R14 K33 ["Clamped with Deficit"]
      106 SETTABLEKS                       R14 R13 K23 ["name"]
      108 LOADK                            R14 K34 ["This component is clamped to the size of the container, with the last pane filling remaining space when resized"]
      109 SETTABLEKS                       R14 R13 K24 ["summary"]
      111 DUPCLOSURE                       R14 K35 [PROTO_5]
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R5
      115 SETTABLEKS                       R14 R13 K25 ["story"]
      117 DUPTABLE                         R14 K26 [{"name", "summary", "story"}]
      118 LOADK                            R15 K36 ["Unclamped"]
      119 SETTABLEKS                       R15 R14 K23 ["name"]
      121 LOADK                            R15 K37 ["When not clamped, the component can grow horizontally as children are resized"]
      122 SETTABLEKS                       R15 R14 K24 ["summary"]
      124 DUPCLOSURE                       R15 K38 [PROTO_6]
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R5
      130 SETTABLEKS                       R15 R14 K25 ["story"]
      132 DUPTABLE                         R15 K26 [{"name", "summary", "story"}]
      133 LOADK                            R16 K39 ["Vertical"]
      134 SETTABLEKS                       R16 R15 K23 ["name"]
      136 LOADK                            R16 K40 ["Split Pane will also display vertical layout"]
      137 SETTABLEKS                       R16 R15 K24 ["summary"]
      139 DUPCLOSURE                       R16 K41 [PROTO_7]
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R5
      143 SETTABLEKS                       R16 R15 K25 ["story"]
      145 SETLIST                          R10 R11 5 [1]
      147 SETTABLEKS                       R10 R9 K21 ["stories"]
      149 RETURN                           R9 1
