PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Groups"]
        4 LENGTH                           R2 R3
        5 GETTABLEKS                       R4 R1 K2 ["Stylizer"]
        7 GETTABLEKS                       R3 R4 K3 ["GroupCollisionMatrix"]
        9 DUPTABLE                         R4 K6 [{"Padding", "UIGridLayout"}]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K7 ["createElement"]
       13 LOADK                            R6 K8 ["UIPadding"]
       14 DUPTABLE                         R7 K13 [{"PaddingBottom", "PaddingTop", "PaddingLeft", "PaddingRight"}]
       15 GETIMPORT                        R8 K16 [UDim.new]
       17 LOADN                            R9 0
       18 LOADN                            R10 0
       19 CALL                             R8 2 1
       20 SETTABLEKS                       R8 R7 K9 ["PaddingBottom"]
       22 GETIMPORT                        R8 K16 [UDim.new]
       24 LOADN                            R9 0
       25 LOADN                            R10 1
       26 CALL                             R8 2 1
       27 SETTABLEKS                       R8 R7 K10 ["PaddingTop"]
       29 GETIMPORT                        R8 K16 [UDim.new]
       31 LOADN                            R9 0
       32 LOADN                            R10 1
       33 CALL                             R8 2 1
       34 SETTABLEKS                       R8 R7 K11 ["PaddingLeft"]
       36 GETIMPORT                        R8 K16 [UDim.new]
       38 LOADN                            R9 0
       39 LOADN                            R10 0
       40 CALL                             R8 2 1
       41 SETTABLEKS                       R8 R7 K12 ["PaddingRight"]
       43 CALL                             R5 2 1
       44 SETTABLEKS                       R5 R4 K4 ["Padding"]
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R5 R6 K7 ["createElement"]
       49 LOADK                            R6 K5 ["UIGridLayout"]
       50 DUPTABLE                         R7 K21 [{"CellPadding", "CellSize", "HorizontalAlignment", "SortOrder"}]
       51 GETIMPORT                        R8 K24 [UDim2.fromOffset]
       53 LOADN                            R9 1
       54 LOADN                            R10 1
       55 CALL                             R8 2 1
       56 SETTABLEKS                       R8 R7 K17 ["CellPadding"]
       58 GETUPVAL                         R9 1
       59 GETTABLEKS                       R8 R9 K25 ["GridCellSize"]
       61 SETTABLEKS                       R8 R7 K18 ["CellSize"]
       63 GETIMPORT                        R8 K28 [Enum.HorizontalAlignment.Left]
       65 SETTABLEKS                       R8 R7 K19 ["HorizontalAlignment"]
       67 GETIMPORT                        R8 K30 [Enum.SortOrder.LayoutOrder]
       69 SETTABLEKS                       R8 R7 K20 ["SortOrder"]
       71 CALL                             R5 2 1
       72 SETTABLEKS                       R5 R4 K5 ["UIGridLayout"]
       74 MOVE                             R5 R2
       75 GETIMPORT                        R6 K32 [ipairs]
       77 GETTABLEKS                       R7 R1 K1 ["Groups"]
       79 CALL                             R6 1 3
       80 FORGPREP_INEXT                   R6
       81 GETIMPORT                        R11 K32 [ipairs]
       83 GETTABLEKS                       R12 R1 K1 ["Groups"]
       85 CALL                             R11 1 3
       86 FORGPREP_INEXT                   R11
       87 MUL                              R17 R2 R9
       88 SUB                              R16 R17 R14
       89 GETUPVAL                         R17 2
       90 DUPTABLE                         R18 K41 [{"ShouldShowCheckbox", "Group", "OtherGroup", "Style", "RowHovered", "OnColHovered", "OnRowHovered", "LayoutOrder", "RowIndex"}]
       91 JUMPIFLE                         R9 R14 ; [+2]
       93 LOADB                            R19 0 +1
       94 LOADB                            R19 1
       95 SETTABLEKS                       R19 R18 K33 ["ShouldShowCheckbox"]
       97 SETTABLEKS                       R10 R18 K34 ["Group"]
       99 SETTABLEKS                       R15 R18 K35 ["OtherGroup"]
      101 GETTABLEKS                       R19 R1 K2 ["Stylizer"]
      103 SETTABLEKS                       R19 R18 K36 ["Style"]
      105 GETTABLEKS                       R19 R1 K37 ["RowHovered"]
      107 SETTABLEKS                       R19 R18 K37 ["RowHovered"]
      109 GETTABLEKS                       R19 R1 K38 ["OnColHovered"]
      111 SETTABLEKS                       R19 R18 K38 ["OnColHovered"]
      113 GETTABLEKS                       R19 R1 K39 ["OnRowHovered"]
      115 SETTABLEKS                       R19 R18 K39 ["OnRowHovered"]
      117 SETTABLEKS                       R16 R18 K29 ["LayoutOrder"]
      119 SETTABLEKS                       R5 R18 K40 ["RowIndex"]
      121 CALL                             R17 1 1
      122 SETTABLE                         R17 R4 R16
      123 FORGLOOP                         R11 2 [inext] ; [-37]
      125 SUBK                             R5 R5 K42 [1]
      126 FORGLOOP                         R6 2 [inext] ; [-46]
      128 GETUPVAL                         R7 0
      129 GETTABLEKS                       R6 R7 K7 ["createElement"]
      131 LOADK                            R7 K43 ["Frame"]
      132 DUPTABLE                         R8 K47 [{"Size", "BackgroundTransparency", "BorderSizePixel"}]
      133 GETUPVAL                         R10 1
      134 GETTABLEKS                       R9 R10 K48 ["CalculateTableSize"]
      136 MOVE                             R10 R2
      137 CALL                             R9 1 1
      138 SETTABLEKS                       R9 R8 K44 ["Size"]
      140 LOADN                            R9 1
      141 SETTABLEKS                       R9 R8 K45 ["BackgroundTransparency"]
      143 LOADN                            R9 0
      144 SETTABLEKS                       R9 R8 K46 ["BorderSizePixel"]
      146 MOVE                             R9 R4
      147 CALL                             R6 3 -1
      148 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETIMPORT                        R4 K4 [require]
       27 GETIMPORT                        R7 K1 [script]
       29 GETTABLEKS                       R6 R7 K2 ["Parent"]
       31 GETTABLEKS                       R5 R6 K9 ["CollisionCheckbox"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K4 [require]
       36 GETIMPORT                        R9 K1 [script]
       38 GETTABLEKS                       R8 R9 K2 ["Parent"]
       40 GETTABLEKS                       R7 R8 K2 ["Parent"]
       42 GETTABLEKS                       R6 R7 K10 ["Constants"]
       44 CALL                             R5 1 1
       45 GETTABLEKS                       R6 R1 K11 ["PureComponent"]
       47 LOADK                            R8 K12 ["GroupCollisionMatrix"]
       48 NAMECALL                         R6 R6 K13 ["extend"]
       50 CALL                             R6 2 1
       51 DUPCLOSURE                       R7 K14 [PROTO_0]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R4
       55 SETTABLEKS                       R7 R6 K15 ["render"]
       57 GETTABLEKS                       R7 R3 K16 ["withContext"]
       59 DUPTABLE                         R8 K18 [{"Stylizer"}]
       60 GETTABLEKS                       R9 R3 K17 ["Stylizer"]
       62 SETTABLEKS                       R9 R8 K17 ["Stylizer"]
       64 CALL                             R7 1 1
       65 MOVE                             R8 R6
       66 CALL                             R7 1 1
       67 MOVE                             R6 R7
       68 RETURN                           R6 1
