PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ToggleCollidesWith"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnColHovered"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["Name"]
        7 LOADB                            R5 1
        8 CALL                             R2 3 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["OnRowHovered"]
       12 MOVE                             R3 R0
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K1 ["Name"]
       16 LOADB                            R5 1
       17 CALL                             R2 3 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnColHovered"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["Name"]
        7 LOADB                            R5 0
        8 CALL                             R2 3 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["OnRowHovered"]
       12 MOVE                             R3 R0
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K1 ["Name"]
       16 LOADB                            R5 0
       17 CALL                             R2 3 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Style"]
        2 GETTABLEKS                       R2 R0 K0 ["Style"]
        4 GETTABLEKS                       R2 R2 K1 ["CollisionCheckbox"]
        6 GETTABLEKS                       R3 R0 K2 ["Group"]
        8 GETTABLEKS                       R4 R0 K3 ["OtherGroup"]
       10 GETTABLEKS                       R5 R3 K4 ["GetCollidesWith"]
       12 MOVE                             R6 R4
       13 CALL                             R5 1 1
       14 GETTABLEKS                       R8 R0 K6 ["RowIndex"]
       16 MODK                             R7 R8 K5 [2]
       17 JUMPIFNOTEQKN                    R7 K7 [1] ; [+4]
       19 GETTABLEKS                       R6 R2 K8 ["BackgroundOdd"]
       21 JUMP                             ; [+2]
       22 GETTABLEKS                       R6 R2 K9 ["BackgroundEven"]
       24 GETTABLEKS                       R7 R3 K10 ["Selected"]
       26 JUMPIFNOT                        R7 ; [+3]
       27 GETTABLEKS                       R6 R1 K11 ["TableEntrySelected"]
       29 JUMP                             ; [+8]
       30 GETTABLEKS                       R7 R0 K12 ["RowHovered"]
       32 GETTABLEKS                       R8 R3 K13 ["Name"]
       34 JUMPIFNOTEQ                      R7 R8 ; [+3]
       36 GETTABLEKS                       R6 R1 K14 ["TableEntryHover"]
       38 LOADNIL                          R7
       39 GETTABLEKS                       R8 R0 K15 ["ShouldShowCheckbox"]
       41 JUMPIFNOT                        R8 ; [+97]
       42 DUPTABLE                         R8 K18 [{"Padding", "Button"}]
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R9 R9 K19 ["createElement"]
       46 LOADK                            R10 K20 ["UIPadding"]
       47 DUPTABLE                         R11 K25 [{"PaddingBottom", "PaddingTop", "PaddingLeft", "PaddingRight"}]
       48 GETIMPORT                        R12 K28 [UDim.new]
       50 LOADN                            R13 0
       51 LOADN                            R14 8
       52 CALL                             R12 2 1
       53 SETTABLEKS                       R12 R11 K21 ["PaddingBottom"]
       55 GETIMPORT                        R12 K28 [UDim.new]
       57 LOADN                            R13 0
       58 LOADN                            R14 8
       59 CALL                             R12 2 1
       60 SETTABLEKS                       R12 R11 K22 ["PaddingTop"]
       62 GETIMPORT                        R12 K28 [UDim.new]
       64 LOADN                            R13 0
       65 LOADN                            R14 8
       66 CALL                             R12 2 1
       67 SETTABLEKS                       R12 R11 K23 ["PaddingLeft"]
       69 GETIMPORT                        R12 K28 [UDim.new]
       71 LOADN                            R13 0
       72 LOADN                            R14 8
       73 CALL                             R12 2 1
       74 SETTABLEKS                       R12 R11 K24 ["PaddingRight"]
       76 CALL                             R9 2 1
       77 SETTABLEKS                       R9 R8 K16 ["Padding"]
       79 GETUPVAL                         R9 0
       80 GETTABLEKS                       R9 R9 K19 ["createElement"]
       82 LOADK                            R10 K29 ["ImageButton"]
       83 NEWTABLE                         R11 8 0
       85 JUMPIFNOT                        R5 ; [+3]
       86 GETTABLEKS                       R12 R2 K30 ["CheckboxCheckedImage"]
       88 JUMP                             ; [+2]
       89 GETTABLEKS                       R12 R2 K31 ["CheckboxUncheckedImage"]
       91 SETTABLEKS                       R12 R11 K32 ["Image"]
       93 GETIMPORT                        R12 K34 [UDim2.new]
       95 LOADN                            R13 1
       96 LOADN                            R14 0
       97 LOADN                            R15 1
       98 LOADN                            R16 0
       99 CALL                             R12 4 1
      100 SETTABLEKS                       R12 R11 K35 ["Size"]
      102 GETIMPORT                        R12 K39 [Enum.SizeConstraint.RelativeYY]
      104 SETTABLEKS                       R12 R11 K37 ["SizeConstraint"]
      106 GETIMPORT                        R12 K41 [Vector2.new]
      108 LOADK                            R13 K42 [0.5]
      109 LOADK                            R14 K42 [0.5]
      110 CALL                             R12 2 1
      111 SETTABLEKS                       R12 R11 K43 ["AnchorPoint"]
      113 GETIMPORT                        R12 K34 [UDim2.new]
      115 LOADK                            R13 K42 [0.5]
      116 LOADN                            R14 0
      117 LOADK                            R15 K42 [0.5]
      118 LOADN                            R16 0
      119 CALL                             R12 4 1
      120 SETTABLEKS                       R12 R11 K44 ["Position"]
      122 LOADN                            R12 1
      123 SETTABLEKS                       R12 R11 K45 ["BackgroundTransparency"]
      125 GETUPVAL                         R12 0
      126 GETTABLEKS                       R12 R12 K46 ["Event"]
      128 GETTABLEKS                       R12 R12 K47 ["Activated"]
      130 NEWCLOSURE                       R13 P0
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R4
      133 SETTABLE                         R13 R11 R12
      134 CALL                             R9 2 1
      135 SETTABLEKS                       R9 R8 K17 ["Button"]
      137 MOVE                             R7 R8
      138 JUMP                             ; [+42]
      139 DUPTABLE                         R8 K49 [{"Dash"}]
      140 GETUPVAL                         R9 0
      141 GETTABLEKS                       R9 R9 K19 ["createElement"]
      143 LOADK                            R10 K50 ["Frame"]
      144 DUPTABLE                         R11 K53 [{"Size", "BorderSizePixel", "BackgroundColor3", "AnchorPoint", "Position"}]
      145 GETIMPORT                        R12 K34 [UDim2.new]
      147 LOADK                            R13 K54 [0.25]
      148 LOADN                            R14 0
      149 LOADN                            R15 0
      150 LOADN                            R16 2
      151 CALL                             R12 4 1
      152 SETTABLEKS                       R12 R11 K35 ["Size"]
      154 LOADN                            R12 0
      155 SETTABLEKS                       R12 R11 K51 ["BorderSizePixel"]
      157 GETTABLEKS                       R12 R2 K55 ["NoCheckboxPanelColor"]
      159 SETTABLEKS                       R12 R11 K52 ["BackgroundColor3"]
      161 GETIMPORT                        R12 K41 [Vector2.new]
      163 LOADK                            R13 K42 [0.5]
      164 LOADK                            R14 K42 [0.5]
      165 CALL                             R12 2 1
      166 SETTABLEKS                       R12 R11 K43 ["AnchorPoint"]
      168 GETIMPORT                        R12 K34 [UDim2.new]
      170 LOADK                            R13 K42 [0.5]
      171 LOADN                            R14 0
      172 LOADK                            R15 K42 [0.5]
      173 LOADN                            R16 0
      174 CALL                             R12 4 1
      175 SETTABLEKS                       R12 R11 K44 ["Position"]
      177 CALL                             R9 2 1
      178 SETTABLEKS                       R9 R8 K48 ["Dash"]
      180 MOVE                             R7 R8
      181 GETUPVAL                         R8 0
      182 GETTABLEKS                       R8 R8 K19 ["createElement"]
      184 LOADK                            R9 K50 ["Frame"]
      185 NEWTABLE                         R10 8 0
      187 GETTABLEKS                       R11 R0 K56 ["LayoutOrder"]
      189 SETTABLEKS                       R11 R10 K56 ["LayoutOrder"]
      191 GETUPVAL                         R11 1
      192 GETTABLEKS                       R11 R11 K57 ["GridCellSize"]
      194 SETTABLEKS                       R11 R10 K35 ["Size"]
      196 LOADN                            R11 1
      197 SETTABLEKS                       R11 R10 K51 ["BorderSizePixel"]
      199 GETTABLEKS                       R11 R2 K58 ["Border"]
      201 SETTABLEKS                       R11 R10 K59 ["BorderColor3"]
      203 SETTABLEKS                       R6 R10 K52 ["BackgroundColor3"]
      205 GETUPVAL                         R11 0
      206 GETTABLEKS                       R11 R11 K46 ["Event"]
      208 GETTABLEKS                       R11 R11 K60 ["MouseEnter"]
      210 NEWCLOSURE                       R12 P1
      211 CAPTURE                          VAL R0
      212 CAPTURE                          VAL R4
      213 CAPTURE                          VAL R3
      214 SETTABLE                         R12 R10 R11
      215 GETUPVAL                         R11 0
      216 GETTABLEKS                       R11 R11 K46 ["Event"]
      218 GETTABLEKS                       R11 R11 K61 ["MouseLeave"]
      220 NEWCLOSURE                       R12 P2
      221 CAPTURE                          VAL R0
      222 CAPTURE                          VAL R4
      223 CAPTURE                          VAL R3
      224 SETTABLE                         R12 R10 R11
      225 MOVE                             R11 R7
      226 CALL                             R8 3 -1
      227 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K2 ["Parent"]
       22 GETTABLEKS                       R3 R3 K2 ["Parent"]
       24 GETTABLEKS                       R3 R3 K7 ["Constants"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K8 [PROTO_3]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 SETGLOBAL                        R3 K9 ["CollisonCheckbox"]
       32 GETGLOBAL                        R3 K9 ["CollisonCheckbox"]
       34 RETURN                           R3 1
