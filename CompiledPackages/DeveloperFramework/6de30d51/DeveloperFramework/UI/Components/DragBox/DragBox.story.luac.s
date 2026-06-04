PROTO_0:
        0 LOADK                            R5 K1 [0.5]
        1 MULK                             R6 R0 K0 [100]
        2 ADD                              R4 R5 R6
        3 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        4 GETIMPORT                        R3 K4 [math.floor]
        6 CALL                             R3 1 1
        7 DIVK                             R2 R3 K0 [100]
        8 FASTCALL1                        TOSTRING R2 ; [+2]
        9 GETIMPORT                        R1 K6 [tostring]
       11 CALL                             R1 1 1
       12 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R2 K0 ["test dragbox: X: "]
        1 GETGLOBAL                        R6 K1 ["formatNumber"]
        3 GETTABLEKS                       R7 R0 K2 ["X"]
        5 CALL                             R6 1 1
        6 MOVE                             R3 R6
        7 LOADK                            R4 K3 [",Y: "]
        8 GETGLOBAL                        R5 K1 ["formatNumber"]
       10 GETTABLEKS                       R6 R0 K4 ["Y"]
       12 CALL                             R5 1 1
       13 CONCAT                           R1 R2 R5
       14 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 1
        7 SETUPVAL                         R1 0
        8 GETUPVAL                         R1 1
        9 DUPTABLE                         R3 K7 [{"Tooltip", "Value"}]
       10 GETGLOBAL                        R4 K8 ["getTootipText"]
       12 GETUPVAL                         R5 0
       13 CALL                             R4 1 1
       14 SETTABLEKS                       R4 R3 K5 ["Tooltip"]
       16 SETTABLEKS                       R0 R3 K6 ["Value"]
       18 NAMECALL                         R1 R1 K9 ["setState"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K5 [{"MinX", "MaxX", "MinY", "MaxY", "Value"}]
        1 LOADN                            R2 255
        2 SETTABLEKS                       R2 R1 K0 ["MinX"]
        4 LOADN                            R2 1
        5 SETTABLEKS                       R2 R1 K1 ["MaxX"]
        7 LOADN                            R2 255
        8 SETTABLEKS                       R2 R1 K2 ["MinY"]
       10 LOADN                            R2 1
       11 SETTABLEKS                       R2 R1 K3 ["MaxY"]
       13 GETIMPORT                        R2 K8 [Vector2.new]
       15 LOADN                            R3 0
       16 LOADN                            R4 0
       17 CALL                             R2 2 1
       18 SETTABLEKS                       R2 R1 K4 ["Value"]
       20 SETTABLEKS                       R1 R0 K9 ["state"]
       22 NEWCLOSURE                       R1 P0
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K10 ["setValue"]
       27 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"Layout", "AutomaticSize", "Padding", "Spacing"}]
        5 GETIMPORT                        R4 K9 [Enum.FillDirection.Vertical]
        7 SETTABLEKS                       R4 R3 K1 ["Layout"]
        9 GETIMPORT                        R4 K11 [Enum.AutomaticSize.Y]
       11 SETTABLEKS                       R4 R3 K2 ["AutomaticSize"]
       13 LOADN                            R4 10
       14 SETTABLEKS                       R4 R3 K3 ["Padding"]
       16 LOADN                            R4 15
       17 SETTABLEKS                       R4 R3 K4 ["Spacing"]
       19 DUPTABLE                         R4 K15 [{"UIListLayout", "DragBox", "DisabledDragBox"}]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["createElement"]
       23 LOADK                            R6 K12 ["UIListLayout"]
       24 DUPTABLE                         R7 K18 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder"}]
       25 GETIMPORT                        R8 K9 [Enum.FillDirection.Vertical]
       27 SETTABLEKS                       R8 R7 K7 ["FillDirection"]
       29 GETIMPORT                        R8 K20 [Enum.HorizontalAlignment.Center]
       31 SETTABLEKS                       R8 R7 K16 ["HorizontalAlignment"]
       33 GETIMPORT                        R8 K23 [UDim.new]
       35 LOADN                            R9 0
       36 LOADN                            R10 10
       37 CALL                             R8 2 1
       38 SETTABLEKS                       R8 R7 K3 ["Padding"]
       40 GETIMPORT                        R8 K25 [Enum.SortOrder.LayoutOrder]
       42 SETTABLEKS                       R8 R7 K17 ["SortOrder"]
       44 CALL                             R5 2 1
       45 SETTABLEKS                       R5 R4 K12 ["UIListLayout"]
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K0 ["createElement"]
       50 GETUPVAL                         R6 2
       51 DUPTABLE                         R7 K38 [{"AnchorPoint", "Disabled", "MinX", "MaxX", "MinY", "MaxY", "Tooltip", "Value", "OnValueChanged", "Size", "Position", "VerticalDragTolerance"}]
       52 GETIMPORT                        R8 K40 [Vector2.new]
       54 LOADK                            R9 K41 [0.5]
       55 LOADK                            R10 K41 [0.5]
       56 CALL                             R8 2 1
       57 SETTABLEKS                       R8 R7 K26 ["AnchorPoint"]
       59 LOADB                            R8 0
       60 SETTABLEKS                       R8 R7 K27 ["Disabled"]
       62 LOADN                            R8 255
       63 SETTABLEKS                       R8 R7 K28 ["MinX"]
       65 LOADN                            R8 1
       66 SETTABLEKS                       R8 R7 K29 ["MaxX"]
       68 LOADN                            R8 255
       69 SETTABLEKS                       R8 R7 K30 ["MinY"]
       71 LOADN                            R8 1
       72 SETTABLEKS                       R8 R7 K31 ["MaxY"]
       74 GETGLOBAL                        R8 K42 ["getTootipText"]
       76 GETUPVAL                         R9 3
       77 CALL                             R8 1 1
       78 SETTABLEKS                       R8 R7 K32 ["Tooltip"]
       80 GETIMPORT                        R8 K40 [Vector2.new]
       82 GETUPVAL                         R9 3
       83 GETTABLEKS                       R9 R9 K43 ["X"]
       85 GETUPVAL                         R10 3
       86 GETTABLEKS                       R10 R10 K10 ["Y"]
       88 CALL                             R8 2 1
       89 SETTABLEKS                       R8 R7 K33 ["Value"]
       91 GETTABLEKS                       R8 R0 K44 ["setValue"]
       93 SETTABLEKS                       R8 R7 K34 ["OnValueChanged"]
       95 GETIMPORT                        R8 K46 [UDim2.new]
       97 LOADN                            R9 0
       98 LOADN                            R10 200
       99 LOADN                            R11 0
      100 LOADN                            R12 60
      101 CALL                             R8 4 1
      102 SETTABLEKS                       R8 R7 K35 ["Size"]
      104 GETIMPORT                        R8 K46 [UDim2.new]
      106 LOADK                            R9 K41 [0.5]
      107 LOADN                            R10 0
      108 LOADK                            R11 K41 [0.5]
      109 LOADN                            R12 0
      110 CALL                             R8 4 1
      111 SETTABLEKS                       R8 R7 K36 ["Position"]
      113 LOADN                            R8 44
      114 SETTABLEKS                       R8 R7 K37 ["VerticalDragTolerance"]
      116 CALL                             R5 2 1
      117 SETTABLEKS                       R5 R4 K13 ["DragBox"]
      119 GETUPVAL                         R5 0
      120 GETTABLEKS                       R5 R5 K0 ["createElement"]
      122 GETUPVAL                         R6 2
      123 DUPTABLE                         R7 K47 [{"Disabled", "MinX", "MaxX", "MinY", "MaxY", "Value", "OnValueChanged", "Position", "Size"}]
      124 LOADB                            R8 1
      125 SETTABLEKS                       R8 R7 K27 ["Disabled"]
      127 LOADN                            R8 255
      128 SETTABLEKS                       R8 R7 K28 ["MinX"]
      130 LOADN                            R8 1
      131 SETTABLEKS                       R8 R7 K29 ["MaxX"]
      133 LOADN                            R8 255
      134 SETTABLEKS                       R8 R7 K30 ["MinY"]
      136 LOADN                            R8 1
      137 SETTABLEKS                       R8 R7 K31 ["MaxY"]
      139 GETIMPORT                        R8 K40 [Vector2.new]
      141 LOADN                            R9 0
      142 LOADN                            R10 0
      143 CALL                             R8 2 1
      144 SETTABLEKS                       R8 R7 K33 ["Value"]
      146 DUPCLOSURE                       R8 K48 [PROTO_4]
      147 SETTABLEKS                       R8 R7 K34 ["OnValueChanged"]
      149 GETIMPORT                        R8 K46 [UDim2.new]
      151 LOADK                            R9 K41 [0.5]
      152 LOADN                            R10 0
      153 LOADK                            R11 K41 [0.5]
      154 LOADN                            R12 0
      155 CALL                             R8 4 1
      156 SETTABLEKS                       R8 R7 K36 ["Position"]
      158 GETIMPORT                        R8 K46 [UDim2.new]
      160 LOADN                            R9 0
      161 LOADN                            R10 200
      162 LOADN                            R11 0
      163 LOADN                            R12 20
      164 CALL                             R8 4 1
      165 SETTABLEKS                       R8 R7 K35 ["Size"]
      167 CALL                             R5 2 1
      168 SETTABLEKS                       R5 R4 K14 ["DisabledDragBox"]
      170 CALL                             R1 3 -1
      171 RETURN                           R1 -1

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
       22 GETTABLEKS                       R3 R3 K9 ["DragBox"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["Pane"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["PureComponent"]
       36 LOADK                            R6 K12 ["ExampleDragBox"]
       37 NAMECALL                         R4 R4 K13 ["extend"]
       39 CALL                             R4 2 1
       40 GETIMPORT                        R5 K16 [Vector2.new]
       42 LOADN                            R6 0
       43 LOADN                            R7 0
       44 CALL                             R5 2 1
       45 DUPCLOSURE                       R6 K17 [PROTO_0]
       46 SETGLOBAL                        R6 K18 ["formatNumber"]
       48 DUPCLOSURE                       R6 K19 [PROTO_1]
       49 SETGLOBAL                        R6 K20 ["getTootipText"]
       51 NEWCLOSURE                       R6 P2
       52 CAPTURE                          REF R5
       53 SETTABLEKS                       R6 R4 K21 ["init"]
       55 NEWCLOSURE                       R6 P3
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R2
       59 CAPTURE                          REF R5
       60 SETTABLEKS                       R6 R4 K22 ["render"]
       62 CLOSEUPVALS                      R5
       63 RETURN                           R4 1
