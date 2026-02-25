PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Active"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["ButtonClicked"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["Value"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["HorizontalAlignment"]
        4 GETTABLEKS                       R3 R1 K2 ["Buttons"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K3 ["Children"]
        9 GETTABLE                         R4 R1 R5
       10 DUPTABLE                         R5 K5 [{"Layout"}]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K6 ["createElement"]
       14 LOADK                            R7 K7 ["UIListLayout"]
       15 DUPTABLE                         R8 K11 [{"Padding", "HorizontalAlignment", "SortOrder", "FillDirection"}]
       16 GETIMPORT                        R9 K14 [UDim.new]
       18 LOADN                            R10 0
       19 LOADN                            R11 25
       20 CALL                             R9 2 1
       21 SETTABLEKS                       R9 R8 K8 ["Padding"]
       23 SETTABLEKS                       R2 R8 K1 ["HorizontalAlignment"]
       25 GETIMPORT                        R9 K17 [Enum.SortOrder.LayoutOrder]
       27 SETTABLEKS                       R9 R8 K9 ["SortOrder"]
       29 GETIMPORT                        R9 K19 [Enum.FillDirection.Horizontal]
       31 SETTABLEKS                       R9 R8 K10 ["FillDirection"]
       33 MOVE                             R9 R4
       34 CALL                             R6 3 1
       35 SETTABLEKS                       R6 R5 K4 ["Layout"]
       37 GETIMPORT                        R6 K21 [Enum.HorizontalAlignment.Center]
       39 JUMPIFEQ                         R2 R6 ; [+19]
       41 MOVE                             R7 R5
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R8 R9 K6 ["createElement"]
       45 LOADK                            R9 K22 ["UIPadding"]
       46 DUPTABLE                         R10 K24 [{"PaddingRight"}]
       47 GETIMPORT                        R11 K14 [UDim.new]
       49 LOADN                            R12 0
       50 LOADN                            R13 35
       51 CALL                             R11 2 1
       52 SETTABLEKS                       R11 R10 K23 ["PaddingRight"]
       54 CALL                             R8 2 -1
       55 FASTCALL                         TABLE_INSERT ; [+2]
       56 GETIMPORT                        R6 K27 [table.insert]
       58 CALL                             R6 -1 0
       59 GETIMPORT                        R6 K29 [ipairs]
       61 MOVE                             R7 R3
       62 CALL                             R6 1 3
       63 FORGPREP_INEXT                   R6
       64 MOVE                             R12 R5
       65 GETUPVAL                         R14 0
       66 GETTABLEKS                       R13 R14 K6 ["createElement"]
       68 GETUPVAL                         R14 1
       69 DUPTABLE                         R15 K35 [{"LayoutOrder", "Style", "Size", "StyleModifier", "Text", "OnClick"}]
       70 SETTABLEKS                       R9 R15 K16 ["LayoutOrder"]
       72 GETTABLEKS                       R17 R10 K36 ["Default"]
       74 JUMPIFNOT                        R17 ; [+2]
       75 LOADK                            R16 K37 ["GameSettingsPrimaryButton"]
       76 JUMP                             ; [+1]
       77 LOADK                            R16 K38 ["GameSettingsButton"]
       78 SETTABLEKS                       R16 R15 K30 ["Style"]
       80 GETIMPORT                        R16 K40 [UDim2.new]
       82 LOADN                            R17 0
       83 GETUPVAL                         R19 2
       84 GETTABLEKS                       R18 R19 K41 ["BUTTON_WIDTH"]
       86 LOADN                            R19 1
       87 LOADN                            R20 0
       88 CALL                             R16 4 1
       89 SETTABLEKS                       R16 R15 K31 ["Size"]
       91 GETTABLEKS                       R17 R10 K42 ["Active"]
       93 JUMPIFNOT                        R17 ; [+2]
       94 LOADNIL                          R16
       95 JUMP                             ; [+3]
       96 GETUPVAL                         R17 3
       97 GETTABLEKS                       R16 R17 K43 ["Disabled"]
       99 SETTABLEKS                       R16 R15 K32 ["StyleModifier"]
      101 GETTABLEKS                       R16 R10 K44 ["Name"]
      103 SETTABLEKS                       R16 R15 K33 ["Text"]
      105 NEWCLOSURE                       R16 P0
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R1
      108 SETTABLEKS                       R16 R15 K34 ["OnClick"]
      110 CALL                             R13 2 -1
      111 FASTCALL                         TABLE_INSERT ; [+2]
      112 GETIMPORT                        R11 K27 [table.insert]
      114 CALL                             R11 -1 0
      115 FORGLOOP                         R6 2 [inext] ; [-52]
      117 GETUPVAL                         R7 0
      118 GETTABLEKS                       R6 R7 K6 ["createElement"]
      120 LOADK                            R7 K45 ["Frame"]
      121 DUPTABLE                         R8 K49 [{"LayoutOrder", "Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
      122 GETTABLEKS                       R10 R1 K16 ["LayoutOrder"]
      124 ORK                              R9 R10 K50 [1]
      125 SETTABLEKS                       R9 R8 K16 ["LayoutOrder"]
      127 GETIMPORT                        R9 K40 [UDim2.new]
      129 LOADN                            R10 1
      130 LOADN                            R11 0
      131 LOADN                            R12 0
      132 GETUPVAL                         R14 2
      133 GETTABLEKS                       R13 R14 K51 ["BUTTON_HEIGHT"]
      135 CALL                             R9 4 1
      136 SETTABLEKS                       R9 R8 K31 ["Size"]
      138 GETTABLEKS                       R9 R1 K46 ["AnchorPoint"]
      140 JUMPIF                           R9 ; [+5]
      141 GETIMPORT                        R9 K53 [Vector2.new]
      143 LOADN                            R10 0
      144 LOADK                            R11 K54 [0.5]
      145 CALL                             R9 2 1
      146 SETTABLEKS                       R9 R8 K46 ["AnchorPoint"]
      148 GETTABLEKS                       R9 R1 K47 ["Position"]
      150 JUMPIF                           R9 ; [+7]
      151 GETIMPORT                        R9 K40 [UDim2.new]
      153 LOADN                            R10 0
      154 LOADN                            R11 0
      155 LOADK                            R12 K54 [0.5]
      156 LOADN                            R13 0
      157 CALL                             R9 4 1
      158 SETTABLEKS                       R9 R8 K47 ["Position"]
      160 LOADN                            R9 1
      161 SETTABLEKS                       R9 R8 K48 ["BackgroundTransparency"]
      163 MOVE                             R9 R5
      164 CALL                             R6 3 -1
      165 RETURN                           R6 -1

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
       23 GETTABLEKS                       R3 R2 K8 ["Util"]
       25 GETTABLEKS                       R4 R3 K9 ["StyleModifier"]
       27 GETTABLEKS                       R5 R2 K10 ["UI"]
       29 GETTABLEKS                       R6 R5 K11 ["Button"]
       31 GETTABLEKS                       R7 R2 K12 ["ContextServices"]
       33 GETTABLEKS                       R8 R7 K13 ["withContext"]
       35 GETIMPORT                        R9 K4 [require]
       37 GETTABLEKS                       R12 R0 K14 ["Src"]
       39 GETTABLEKS                       R11 R12 K8 ["Util"]
       41 GETTABLEKS                       R10 R11 K15 ["DEPRECATED_Constants"]
       43 CALL                             R9 1 1
       44 GETTABLEKS                       R10 R1 K16 ["PureComponent"]
       46 LOADK                            R12 K17 ["ButtonBar"]
       47 NAMECALL                         R10 R10 K18 ["extend"]
       49 CALL                             R10 2 1
       50 DUPCLOSURE                       R11 K19 [PROTO_1]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R4
       55 SETTABLEKS                       R11 R10 K20 ["render"]
       57 MOVE                             R11 R8
       58 DUPTABLE                         R12 K22 [{"Stylizer"}]
       59 GETTABLEKS                       R13 R7 K21 ["Stylizer"]
       61 SETTABLEKS                       R13 R12 K21 ["Stylizer"]
       63 CALL                             R11 1 1
       64 MOVE                             R12 R10
       65 CALL                             R11 1 1
       66 MOVE                             R10 R11
       67 RETURN                           R10 1
