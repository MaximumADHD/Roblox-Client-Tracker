PROTO_0:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 JUMPIFEQKNIL                     R1 ; [+7]
        7 FASTCALL1                        MATH_FLOOR R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K4 [math.floor]
       11 CALL                             R2 1 1
       12 RETURN                           R2 1
       13 LOADNIL                          R2
       14 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["xValue"]
        3 JUMPIFEQKNIL                     R0 ; [+31]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["yValue"]
        8 JUMPIFEQKNIL                     R0 ; [+26]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K2 ["zValue"]
       13 JUMPIFEQKNIL                     R0 ; [+21]
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K3 ["props"]
       18 GETTABLEKS                       R0 R0 K4 ["OnVectorValueChanged"]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K0 ["xValue"]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K1 ["yValue"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K2 ["zValue"]
       29 FASTCALL                         VECTOR ; [+2]
       30 GETIMPORT                        R1 K7 [Vector3.new]
       32 CALL                             R1 3 1
       33 CALL                             R0 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R0 0
       36 GETTABLEKS                       R0 R0 K3 ["props"]
       38 GETTABLEKS                       R0 R0 K4 ["OnVectorValueChanged"]
       40 LOADNIL                          R1
       41 CALL                             R0 1 0
       42 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TONUMBER R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [tonumber]
        5 CALL                             R3 1 1
        6 JUMPIFEQKNIL                     R3 ; [+8]
        8 FASTCALL1                        MATH_FLOOR R3 ; [+3]
        9 MOVE                             R5 R3
       10 GETIMPORT                        R4 K4 [math.floor]
       12 CALL                             R4 1 1
       13 MOVE                             R2 R4
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R1 K5 ["xValue"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K6 ["onValueChanged"]
       21 CALL                             R1 0 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TONUMBER R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [tonumber]
        5 CALL                             R3 1 1
        6 JUMPIFEQKNIL                     R3 ; [+8]
        8 FASTCALL1                        MATH_FLOOR R3 ; [+3]
        9 MOVE                             R5 R3
       10 GETIMPORT                        R4 K4 [math.floor]
       12 CALL                             R4 1 1
       13 MOVE                             R2 R4
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R1 K5 ["yValue"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K6 ["onValueChanged"]
       21 CALL                             R1 0 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TONUMBER R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [tonumber]
        5 CALL                             R3 1 1
        6 JUMPIFEQKNIL                     R3 ; [+8]
        8 FASTCALL1                        MATH_FLOOR R3 ; [+3]
        9 MOVE                             R5 R3
       10 GETIMPORT                        R4 K4 [math.floor]
       12 CALL                             R4 1 1
       13 MOVE                             R2 R4
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R1 K5 ["zValue"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K6 ["onValueChanged"]
       21 CALL                             R1 0 0
       22 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onValueChanged"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["onXChanged"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K2 ["onYChanged"]
       12 NEWCLOSURE                       R1 P3
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K3 ["onZChanged"]
       16 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["VectorValue"]
        4 GETTABLEKS                       R3 R1 K1 ["VectorValue"]
        6 JUMPIFEQ                         R2 R3 ; [+26]
        8 GETTABLEKS                       R2 R1 K1 ["VectorValue"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["None"]
       13 JUMPIFEQ                         R2 R3 ; [+19]
       15 GETTABLEKS                       R2 R1 K1 ["VectorValue"]
       17 GETTABLEKS                       R2 R2 K3 ["X"]
       19 SETTABLEKS                       R2 R0 K4 ["xValue"]
       21 GETTABLEKS                       R2 R1 K1 ["VectorValue"]
       23 GETTABLEKS                       R2 R2 K5 ["Y"]
       25 SETTABLEKS                       R2 R0 K6 ["yValue"]
       27 GETTABLEKS                       R2 R1 K1 ["VectorValue"]
       29 GETTABLEKS                       R2 R2 K7 ["Z"]
       31 SETTABLEKS                       R2 R0 K8 ["zValue"]
       33 RETURN                           R0 0

PROTO_7:
        0 JUMPIF                           R2 ; [+2]
        1 LOADK                            R3 K0 [""]
        2 RETURN                           R3 1
        3 JUMPIF                           R0 ; [+9]
        4 JUMPIFNOT                        R1 ; [+6]
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R4 R1
        7 GETIMPORT                        R3 K2 [tostring]
        9 CALL                             R3 1 1
       10 RETURN                           R3 1
       11 LOADK                            R3 K0 [""]
       12 RETURN                           R3 1
       13 FASTCALL1                        TOSTRING R0 ; [+3]
       14 MOVE                             R4 R0
       15 GETIMPORT                        R3 K2 [tostring]
       17 CALL                             R3 1 1
       18 RETURN                           R3 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Size"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["Title"]
        8 GETTABLEKS                       R5 R1 K4 ["Enabled"]
       10 GETTABLEKS                       R6 R1 K5 ["VectorValue"]
       12 GETTABLEKS                       R7 R1 K6 ["Stylizer"]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K7 ["new"]
       17 CALL                             R8 0 1
       18 JUMPIFNOTEQKNIL                  R6 ; [+2]
       20 LOADB                            R9 0 +1
       21 LOADB                            R9 1
       22 GETTABLEKS                       R11 R0 K8 ["xValue"]
       24 MOVE                             R12 R9
       25 JUMPIFNOT                        R12 ; [+2]
       26 GETTABLEKS                       R12 R6 K9 ["X"]
       28 JUMPIF                           R5 ; [+2]
       29 LOADK                            R10 K10 [""]
       30 JUMP                             ; [+17]
       31 JUMPIF                           R11 ; [+10]
       32 JUMPIFNOT                        R12 ; [+7]
       33 FASTCALL1                        TOSTRING R12 ; [+3]
       34 MOVE                             R14 R12
       35 GETIMPORT                        R13 K12 [tostring]
       37 CALL                             R13 1 1
       38 MOVE                             R10 R13
       39 JUMP                             ; [+8]
       40 LOADK                            R10 K10 [""]
       41 JUMP                             ; [+6]
       42 FASTCALL1                        TOSTRING R11 ; [+3]
       43 MOVE                             R14 R11
       44 GETIMPORT                        R13 K12 [tostring]
       46 CALL                             R13 1 1
       47 MOVE                             R10 R13
       48 GETTABLEKS                       R12 R0 K13 ["yValue"]
       50 MOVE                             R13 R9
       51 JUMPIFNOT                        R13 ; [+2]
       52 GETTABLEKS                       R13 R6 K14 ["Y"]
       54 JUMPIF                           R5 ; [+2]
       55 LOADK                            R11 K10 [""]
       56 JUMP                             ; [+17]
       57 JUMPIF                           R12 ; [+10]
       58 JUMPIFNOT                        R13 ; [+7]
       59 FASTCALL1                        TOSTRING R13 ; [+3]
       60 MOVE                             R15 R13
       61 GETIMPORT                        R14 K12 [tostring]
       63 CALL                             R14 1 1
       64 MOVE                             R11 R14
       65 JUMP                             ; [+8]
       66 LOADK                            R11 K10 [""]
       67 JUMP                             ; [+6]
       68 FASTCALL1                        TOSTRING R12 ; [+3]
       69 MOVE                             R15 R12
       70 GETIMPORT                        R14 K12 [tostring]
       72 CALL                             R14 1 1
       73 MOVE                             R11 R14
       74 GETTABLEKS                       R13 R0 K15 ["zValue"]
       76 MOVE                             R14 R9
       77 JUMPIFNOT                        R14 ; [+2]
       78 GETTABLEKS                       R14 R6 K16 ["Z"]
       80 JUMPIF                           R5 ; [+2]
       81 LOADK                            R12 K10 [""]
       82 JUMP                             ; [+17]
       83 JUMPIF                           R13 ; [+10]
       84 JUMPIFNOT                        R14 ; [+7]
       85 FASTCALL1                        TOSTRING R14 ; [+3]
       86 MOVE                             R16 R14
       87 GETIMPORT                        R15 K12 [tostring]
       89 CALL                             R15 1 1
       90 MOVE                             R12 R15
       91 JUMP                             ; [+8]
       92 LOADK                            R12 K10 [""]
       93 JUMP                             ; [+6]
       94 FASTCALL1                        TOSTRING R13 ; [+3]
       95 MOVE                             R16 R13
       96 GETIMPORT                        R15 K12 [tostring]
       98 CALL                             R15 1 1
       99 MOVE                             R12 R15
      100 GETUPVAL                         R13 1
      101 GETTABLEKS                       R13 R13 K17 ["createElement"]
      103 GETUPVAL                         R14 2
      104 DUPTABLE                         R15 K21 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment", "Spacing"}]
      105 SETTABLEKS                       R2 R15 K1 ["Size"]
      107 SETTABLEKS                       R3 R15 K2 ["LayoutOrder"]
      109 GETIMPORT                        R16 K25 [Enum.FillDirection.Horizontal]
      111 SETTABLEKS                       R16 R15 K18 ["Layout"]
      113 GETIMPORT                        R16 K27 [Enum.HorizontalAlignment.Left]
      115 SETTABLEKS                       R16 R15 K19 ["HorizontalAlignment"]
      117 GETTABLEKS                       R16 R7 K28 ["FramePadding"]
      119 SETTABLEKS                       R16 R15 K20 ["Spacing"]
      121 DUPTABLE                         R16 K31 [{"Label", "InputBoxes"}]
      122 GETUPVAL                         R17 1
      123 GETTABLEKS                       R17 R17 K17 ["createElement"]
      125 GETUPVAL                         R18 3
      126 DUPTABLE                         R19 K35 [{"Text", "AutomaticSize", "LayoutOrder", "TextXAlignment"}]
      127 SETTABLEKS                       R4 R19 K32 ["Text"]
      129 GETIMPORT                        R20 K37 [Enum.AutomaticSize.XY]
      131 SETTABLEKS                       R20 R19 K33 ["AutomaticSize"]
      133 NAMECALL                         R20 R8 K38 ["getNextOrder"]
      135 CALL                             R20 1 1
      136 SETTABLEKS                       R20 R19 K2 ["LayoutOrder"]
      138 GETIMPORT                        R20 K39 [Enum.TextXAlignment.Left]
      140 SETTABLEKS                       R20 R19 K34 ["TextXAlignment"]
      142 CALL                             R17 2 1
      143 SETTABLEKS                       R17 R16 K29 ["Label"]
      145 GETUPVAL                         R17 1
      146 GETTABLEKS                       R17 R17 K17 ["createElement"]
      148 GETUPVAL                         R18 2
      149 DUPTABLE                         R19 K41 [{"AutomaticSize", "LayoutOrder", "Layout", "HorizontalAlignment", "Spacing", "Padding"}]
      150 GETIMPORT                        R20 K37 [Enum.AutomaticSize.XY]
      152 SETTABLEKS                       R20 R19 K33 ["AutomaticSize"]
      154 NAMECALL                         R20 R8 K38 ["getNextOrder"]
      156 CALL                             R20 1 1
      157 SETTABLEKS                       R20 R19 K2 ["LayoutOrder"]
      159 GETIMPORT                        R20 K25 [Enum.FillDirection.Horizontal]
      161 SETTABLEKS                       R20 R19 K18 ["Layout"]
      163 GETIMPORT                        R20 K43 [Enum.HorizontalAlignment.Right]
      165 SETTABLEKS                       R20 R19 K19 ["HorizontalAlignment"]
      167 GETTABLEKS                       R20 R7 K44 ["ValueTextBoxPadding"]
      169 SETTABLEKS                       R20 R19 K20 ["Spacing"]
      171 DUPTABLE                         R20 K45 [{"Right"}]
      172 GETTABLEKS                       R21 R7 K28 ["FramePadding"]
      174 SETTABLEKS                       R21 R20 K42 ["Right"]
      176 SETTABLEKS                       R20 R19 K40 ["Padding"]
      178 DUPTABLE                         R20 K49 [{"XInput", "YInput", "ZInput"}]
      179 GETUPVAL                         R21 1
      180 GETTABLEKS                       R21 R21 K17 ["createElement"]
      182 GETUPVAL                         R22 4
      183 DUPTABLE                         R23 K53 [{"Enabled", "Style", "PlaceholderText", "Text", "Size", "OnTextChanged", "LayoutOrder"}]
      184 SETTABLEKS                       R5 R23 K4 ["Enabled"]
      186 LOADK                            R24 K54 ["FilledRoundedBorder"]
      187 SETTABLEKS                       R24 R23 K50 ["Style"]
      189 LOADK                            R24 K9 ["X"]
      190 SETTABLEKS                       R24 R23 K51 ["PlaceholderText"]
      192 SETTABLEKS                       R10 R23 K32 ["Text"]
      194 GETIMPORT                        R24 K56 [UDim2.new]
      196 LOADN                            R25 0
      197 GETTABLEKS                       R26 R7 K57 ["ValueTextBoxWidth"]
      199 LOADN                            R27 1
      200 LOADN                            R28 0
      201 CALL                             R24 4 1
      202 SETTABLEKS                       R24 R23 K1 ["Size"]
      204 GETTABLEKS                       R24 R0 K58 ["onXChanged"]
      206 SETTABLEKS                       R24 R23 K52 ["OnTextChanged"]
      208 NAMECALL                         R24 R8 K38 ["getNextOrder"]
      210 CALL                             R24 1 1
      211 SETTABLEKS                       R24 R23 K2 ["LayoutOrder"]
      213 CALL                             R21 2 1
      214 SETTABLEKS                       R21 R20 K46 ["XInput"]
      216 GETUPVAL                         R21 1
      217 GETTABLEKS                       R21 R21 K17 ["createElement"]
      219 GETUPVAL                         R22 4
      220 DUPTABLE                         R23 K53 [{"Enabled", "Style", "PlaceholderText", "Text", "Size", "OnTextChanged", "LayoutOrder"}]
      221 SETTABLEKS                       R5 R23 K4 ["Enabled"]
      223 LOADK                            R24 K54 ["FilledRoundedBorder"]
      224 SETTABLEKS                       R24 R23 K50 ["Style"]
      226 LOADK                            R24 K14 ["Y"]
      227 SETTABLEKS                       R24 R23 K51 ["PlaceholderText"]
      229 SETTABLEKS                       R11 R23 K32 ["Text"]
      231 GETIMPORT                        R24 K56 [UDim2.new]
      233 LOADN                            R25 0
      234 GETTABLEKS                       R26 R7 K57 ["ValueTextBoxWidth"]
      236 LOADN                            R27 1
      237 LOADN                            R28 0
      238 CALL                             R24 4 1
      239 SETTABLEKS                       R24 R23 K1 ["Size"]
      241 GETTABLEKS                       R24 R0 K59 ["onYChanged"]
      243 SETTABLEKS                       R24 R23 K52 ["OnTextChanged"]
      245 NAMECALL                         R24 R8 K38 ["getNextOrder"]
      247 CALL                             R24 1 1
      248 SETTABLEKS                       R24 R23 K2 ["LayoutOrder"]
      250 CALL                             R21 2 1
      251 SETTABLEKS                       R21 R20 K47 ["YInput"]
      253 GETUPVAL                         R21 1
      254 GETTABLEKS                       R21 R21 K17 ["createElement"]
      256 GETUPVAL                         R22 4
      257 DUPTABLE                         R23 K53 [{"Enabled", "Style", "PlaceholderText", "Text", "Size", "OnTextChanged", "LayoutOrder"}]
      258 SETTABLEKS                       R5 R23 K4 ["Enabled"]
      260 LOADK                            R24 K54 ["FilledRoundedBorder"]
      261 SETTABLEKS                       R24 R23 K50 ["Style"]
      263 LOADK                            R24 K16 ["Z"]
      264 SETTABLEKS                       R24 R23 K51 ["PlaceholderText"]
      266 SETTABLEKS                       R12 R23 K32 ["Text"]
      268 GETIMPORT                        R24 K56 [UDim2.new]
      270 LOADN                            R25 0
      271 GETTABLEKS                       R26 R7 K57 ["ValueTextBoxWidth"]
      273 LOADN                            R27 1
      274 LOADN                            R28 0
      275 CALL                             R24 4 1
      276 SETTABLEKS                       R24 R23 K1 ["Size"]
      278 GETTABLEKS                       R24 R0 K60 ["onZChanged"]
      280 SETTABLEKS                       R24 R23 K52 ["OnTextChanged"]
      282 NAMECALL                         R24 R8 K38 ["getNextOrder"]
      284 CALL                             R24 1 1
      285 SETTABLEKS                       R24 R23 K2 ["LayoutOrder"]
      287 CALL                             R21 2 1
      288 SETTABLEKS                       R21 R20 K48 ["ZInput"]
      290 CALL                             R17 3 1
      291 SETTABLEKS                       R17 R16 K30 ["InputBoxes"]
      293 CALL                             R13 3 -1
      294 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Framework"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K7 ["ContextServices"]
       21 GETTABLEKS                       R4 R3 K8 ["withContext"]
       23 GETTABLEKS                       R5 R2 K9 ["UI"]
       25 GETTABLEKS                       R6 R5 K10 ["DEPRECATED_TextInput"]
       27 GETTABLEKS                       R7 R5 K11 ["TextLabel"]
       29 GETTABLEKS                       R8 R5 K12 ["Pane"]
       31 GETTABLEKS                       R9 R2 K13 ["Util"]
       33 GETTABLEKS                       R10 R9 K14 ["LayoutOrderIterator"]
       35 GETTABLEKS                       R11 R9 K15 ["Typecheck"]
       37 GETTABLEKS                       R12 R1 K16 ["PureComponent"]
       39 LOADK                            R14 K17 ["Vector3Entry"]
       40 NAMECALL                         R12 R12 K18 ["extend"]
       42 CALL                             R12 2 1
       43 GETTABLEKS                       R13 R11 K19 ["wrap"]
       45 MOVE                             R14 R12
       46 GETIMPORT                        R15 K1 [script]
       48 CALL                             R13 2 0
       49 DUPCLOSURE                       R13 K20 [PROTO_0]
       50 DUPCLOSURE                       R14 K21 [PROTO_5]
       51 SETTABLEKS                       R14 R12 K22 ["init"]
       53 DUPCLOSURE                       R14 K23 [PROTO_6]
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R14 R12 K24 ["willUpdate"]
       57 DUPCLOSURE                       R14 K25 [PROTO_7]
       58 DUPCLOSURE                       R15 K26 [PROTO_8]
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R6
       64 SETTABLEKS                       R15 R12 K27 ["render"]
       66 MOVE                             R15 R4
       67 DUPTABLE                         R16 K29 [{"Stylizer"}]
       68 GETTABLEKS                       R17 R3 K28 ["Stylizer"]
       70 SETTABLEKS                       R17 R16 K28 ["Stylizer"]
       72 CALL                             R15 1 1
       73 MOVE                             R16 R12
       74 CALL                             R15 1 1
       75 MOVE                             R12 R15
       76 RETURN                           R12 1
