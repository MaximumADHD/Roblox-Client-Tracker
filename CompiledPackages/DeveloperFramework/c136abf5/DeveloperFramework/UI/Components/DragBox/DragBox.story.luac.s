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
        0 DUPTABLE                         R1 K7 [{[1] = -1, ["MaxX"] = 1, ["MinY"] = -1, ["MaxY"] = 1, ["Value"]}]
        1 GETIMPORT                        R2 K10 [Vector2.new]
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R1 K6 ["Value"]
        8 SETTABLEKS                       R1 R0 K11 ["state"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K12 ["setValue"]
       15 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{["Layout"], ["AutomaticSize"], ["Padding"] = 10, ["Spacing"] = 15}]
        5 GETIMPORT                        R4 K11 [Enum.FillDirection.Vertical]
        7 SETTABLEKS                       R4 R3 K1 ["Layout"]
        9 GETIMPORT                        R4 K13 [Enum.AutomaticSize.Y]
       11 SETTABLEKS                       R4 R3 K2 ["AutomaticSize"]
       13 DUPTABLE                         R4 K17 [{"UIListLayout", "DragBox", "DisabledDragBox"}]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K0 ["createElement"]
       17 LOADK                            R6 K14 ["UIListLayout"]
       18 DUPTABLE                         R7 K20 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder"}]
       19 GETIMPORT                        R8 K11 [Enum.FillDirection.Vertical]
       21 SETTABLEKS                       R8 R7 K9 ["FillDirection"]
       23 GETIMPORT                        R8 K22 [Enum.HorizontalAlignment.Center]
       25 SETTABLEKS                       R8 R7 K18 ["HorizontalAlignment"]
       27 GETIMPORT                        R8 K25 [UDim.new]
       29 LOADN                            R9 0
       30 LOADN                            R10 10
       31 CALL                             R8 2 1
       32 SETTABLEKS                       R8 R7 K3 ["Padding"]
       34 GETIMPORT                        R8 K27 [Enum.SortOrder.LayoutOrder]
       36 SETTABLEKS                       R8 R7 K19 ["SortOrder"]
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K14 ["UIListLayout"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K0 ["createElement"]
       44 GETUPVAL                         R6 2
       45 DUPTABLE                         R7 K44 [{["AnchorPoint"], ["Disabled"] = False, ["MinX"] = -1, ["MaxX"] = 1, ["MinY"] = -1, ["MaxY"] = 1, ["Tooltip"], ["Value"], ["OnValueChanged"], ["Size"], ["Position"], ["VerticalDragTolerance"] = 300}]
       46 GETIMPORT                        R8 K46 [Vector2.new]
       48 LOADK                            R9 K47 [0.5]
       49 LOADK                            R10 K47 [0.5]
       50 CALL                             R8 2 1
       51 SETTABLEKS                       R8 R7 K28 ["AnchorPoint"]
       53 GETGLOBAL                        R8 K48 ["getTootipText"]
       55 GETUPVAL                         R9 3
       56 CALL                             R8 1 1
       57 SETTABLEKS                       R8 R7 K37 ["Tooltip"]
       59 GETIMPORT                        R8 K46 [Vector2.new]
       61 GETUPVAL                         R9 3
       62 GETTABLEKS                       R9 R9 K49 ["X"]
       64 GETUPVAL                         R10 3
       65 GETTABLEKS                       R10 R10 K12 ["Y"]
       67 CALL                             R8 2 1
       68 SETTABLEKS                       R8 R7 K38 ["Value"]
       70 GETTABLEKS                       R8 R0 K50 ["setValue"]
       72 SETTABLEKS                       R8 R7 K39 ["OnValueChanged"]
       74 GETIMPORT                        R8 K52 [UDim2.new]
       76 LOADN                            R9 0
       77 LOADN                            R10 200
       78 LOADN                            R11 0
       79 LOADN                            R12 60
       80 CALL                             R8 4 1
       81 SETTABLEKS                       R8 R7 K40 ["Size"]
       83 GETIMPORT                        R8 K52 [UDim2.new]
       85 LOADK                            R9 K47 [0.5]
       86 LOADN                            R10 0
       87 LOADK                            R11 K47 [0.5]
       88 LOADN                            R12 0
       89 CALL                             R8 4 1
       90 SETTABLEKS                       R8 R7 K41 ["Position"]
       92 CALL                             R5 2 1
       93 SETTABLEKS                       R5 R4 K15 ["DragBox"]
       95 GETUPVAL                         R5 0
       96 GETTABLEKS                       R5 R5 K0 ["createElement"]
       98 GETUPVAL                         R6 2
       99 DUPTABLE                         R7 K54 [{["Disabled"] = True, ["MinX"] = -1, ["MaxX"] = 1, ["MinY"] = -1, ["MaxY"] = 1, ["Value"], ["OnValueChanged"], ["Position"], ["Size"]}]
      100 GETIMPORT                        R8 K46 [Vector2.new]
      102 LOADN                            R9 0
      103 LOADN                            R10 0
      104 CALL                             R8 2 1
      105 SETTABLEKS                       R8 R7 K38 ["Value"]
      107 DUPCLOSURE                       R8 K55 [PROTO_4]
      108 SETTABLEKS                       R8 R7 K39 ["OnValueChanged"]
      110 GETIMPORT                        R8 K52 [UDim2.new]
      112 LOADK                            R9 K47 [0.5]
      113 LOADN                            R10 0
      114 LOADK                            R11 K47 [0.5]
      115 LOADN                            R12 0
      116 CALL                             R8 4 1
      117 SETTABLEKS                       R8 R7 K41 ["Position"]
      119 GETIMPORT                        R8 K52 [UDim2.new]
      121 LOADN                            R9 0
      122 LOADN                            R10 200
      123 LOADN                            R11 0
      124 LOADN                            R12 20
      125 CALL                             R8 4 1
      126 SETTABLEKS                       R8 R7 K40 ["Size"]
      128 CALL                             R5 2 1
      129 SETTABLEKS                       R5 R4 K16 ["DisabledDragBox"]
      131 CALL                             R1 3 -1
      132 RETURN                           R1 -1

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
