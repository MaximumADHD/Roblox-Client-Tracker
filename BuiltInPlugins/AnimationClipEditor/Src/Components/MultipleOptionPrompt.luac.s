PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 LOADNIL                          R2
        3 GETTABLEKS                       R3 R1 K1 ["SelectionGroupOptions"]
        5 JUMPIFNOT                        R3 ; [+26]
        6 GETTABLEKS                       R4 R1 K1 ["SelectionGroupOptions"]
        8 LENGTH                           R3 R4
        9 LOADN                            R4 0
       10 JUMPIFNOTLT                      R4 R3 ; [+21]
       12 GETIMPORT                        R3 K3 [ipairs]
       14 GETTABLEKS                       R4 R1 K1 ["SelectionGroupOptions"]
       16 CALL                             R3 1 3
       17 FORGPREP_INEXT                   R3
       18 GETTABLEKS                       R8 R7 K4 ["Default"]
       20 JUMPIFNOT                        R8 ; [+3]
       21 GETTABLEKS                       R2 R7 K5 ["Key"]
       23 JUMP                             ; [+2]
       24 FORGLOOP                         R3 2 [inext] ; [-7]
       26 JUMPIF                           R2 ; [+5]
       27 GETTABLEKS                       R4 R1 K1 ["SelectionGroupOptions"]
       29 GETTABLEN                        R3 R4 1
       30 GETTABLEKS                       R2 R3 K5 ["Key"]
       32 DUPTABLE                         R3 K7 [{"selectedValue"}]
       33 ORK                              R4 R2 K8 [""]
       34 SETTABLEKS                       R4 R3 K6 ["selectedValue"]
       36 GETUPVAL                         R4 0
       37 CALL                             R4 0 1
       38 JUMPIFNOT                        R4 ; [+6]
       39 LOADN                            R4 1
       40 SETTABLEKS                       R4 R3 K9 ["selectedScaleUnitIndex"]
       42 LOADK                            R4 K10 ["1.0"]
       43 SETTABLEKS                       R4 R3 K11 ["scaleFactorText"]
       45 MOVE                             R6 R3
       46 NAMECALL                         R4 R0 K12 ["setState"]
       48 CALL                             R4 2 0
       49 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"selectedValue"}]
        2 SETTABLEKS                       R0 R3 K0 ["selectedValue"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R5 R0 K1 ["state"]
        4 GETTABLEKS                       R6 R4 K2 ["SelectionGroupHeader"]
        6 GETTABLEKS                       R7 R4 K3 ["SelectionGroupOptions"]
        8 JUMPIFNOT                        R6 ; [+3]
        9 JUMPIFNOT                        R7 ; [+2]
       10 JUMPIFNOTEQKN                    R3 K4 [0] ; [+3]
       12 LOADNIL                          R8
       13 RETURN                           R8 1
       14 MULK                             R9 R3 K5 [20]
       15 LOADN                            R11 0
       16 JUMPIFNOTLT                      R11 R3 ; [+5]
       18 LOADN                            R11 5
       19 SUBK                             R12 R3 K6 [1]
       20 MUL                              R10 R11 R12
       21 JUMPIF                           R10 ; [+1]
       22 LOADN                            R10 0
       23 ADD                              R8 R9 R10
       24 GETTABLEKS                       R9 R2 K7 ["textColor"]
       26 NEWTABLE                         R10 0 0
       28 GETIMPORT                        R11 K9 [ipairs]
       30 MOVE                             R12 R7
       31 CALL                             R11 1 3
       32 FORGPREP_INEXT                   R11
       33 GETTABLEKS                       R17 R15 K11 ["Text"]
       35 ORK                              R16 R17 K10 ["(Missing Text)"]
       36 DUPTABLE                         R19 K13 [{"Key", "Text"}]
       37 GETTABLEKS                       R20 R15 K12 ["Key"]
       39 SETTABLEKS                       R20 R19 K12 ["Key"]
       41 SETTABLEKS                       R16 R19 K11 ["Text"]
       43 FASTCALL2                        TABLE_INSERT R10 R19 ; [+4]
       45 MOVE                             R18 R10
       46 GETIMPORT                        R17 K16 [table.insert]
       48 CALL                             R17 2 0
       49 FORGLOOP                         R11 2 [inext] ; [-17]
       51 GETUPVAL                         R11 0
       52 GETTABLEKS                       R11 R11 K17 ["createElement"]
       54 LOADK                            R12 K18 ["Frame"]
       55 DUPTABLE                         R13 K22 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
       56 GETIMPORT                        R14 K25 [UDim2.new]
       58 LOADN                            R15 1
       59 LOADN                            R16 0
       60 LOADN                            R17 0
       61 MOVE                             R18 R8
       62 CALL                             R14 4 1
       63 SETTABLEKS                       R14 R13 K19 ["Size"]
       65 LOADN                            R14 1
       66 SETTABLEKS                       R14 R13 K20 ["BackgroundTransparency"]
       68 LOADN                            R14 2
       69 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
       71 DUPTABLE                         R14 K27 [{"Content"}]
       72 GETUPVAL                         R15 0
       73 GETTABLEKS                       R15 R15 K17 ["createElement"]
       75 LOADK                            R16 K18 ["Frame"]
       76 DUPTABLE                         R17 K30 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
       77 GETIMPORT                        R18 K25 [UDim2.new]
       79 LOADN                            R19 0
       80 LOADN                            R20 54
       81 LOADN                            R21 1
       82 LOADN                            R22 0
       83 CALL                             R18 4 1
       84 SETTABLEKS                       R18 R17 K19 ["Size"]
       86 GETIMPORT                        R18 K32 [Vector2.new]
       88 LOADK                            R19 K33 [0.5]
       89 LOADK                            R20 K33 [0.5]
       90 CALL                             R18 2 1
       91 SETTABLEKS                       R18 R17 K28 ["AnchorPoint"]
       93 GETIMPORT                        R18 K35 [UDim2.fromScale]
       95 LOADK                            R19 K33 [0.5]
       96 LOADK                            R20 K33 [0.5]
       97 CALL                             R18 2 1
       98 SETTABLEKS                       R18 R17 K29 ["Position"]
      100 LOADN                            R18 1
      101 SETTABLEKS                       R18 R17 K20 ["BackgroundTransparency"]
      103 DUPTABLE                         R18 K39 [{"Layout", "Header", "RadioButtons"}]
      104 GETUPVAL                         R19 0
      105 GETTABLEKS                       R19 R19 K17 ["createElement"]
      107 LOADK                            R20 K40 ["UIListLayout"]
      108 DUPTABLE                         R21 K46 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
      109 GETIMPORT                        R22 K48 [Enum.SortOrder.LayoutOrder]
      111 SETTABLEKS                       R22 R21 K41 ["SortOrder"]
      113 GETIMPORT                        R22 K50 [Enum.FillDirection.Horizontal]
      115 SETTABLEKS                       R22 R21 K42 ["FillDirection"]
      117 GETIMPORT                        R22 K52 [UDim.new]
      119 LOADN                            R23 0
      120 LOADN                            R24 10
      121 CALL                             R22 2 1
      122 SETTABLEKS                       R22 R21 K43 ["Padding"]
      124 GETIMPORT                        R22 K54 [Enum.HorizontalAlignment.Center]
      126 SETTABLEKS                       R22 R21 K44 ["HorizontalAlignment"]
      128 GETIMPORT                        R22 K56 [Enum.VerticalAlignment.Top]
      130 SETTABLEKS                       R22 R21 K45 ["VerticalAlignment"]
      132 CALL                             R19 2 1
      133 SETTABLEKS                       R19 R18 K36 ["Layout"]
      135 GETUPVAL                         R19 0
      136 GETTABLEKS                       R19 R19 K17 ["createElement"]
      138 LOADK                            R20 K57 ["TextLabel"]
      139 DUPTABLE                         R21 K63 [{"Size", "BackgroundTransparency", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
      140 GETIMPORT                        R22 K25 [UDim2.new]
      142 LOADN                            R23 0
      143 LOADN                            R24 120
      144 LOADN                            R25 0
      145 LOADN                            R26 20
      146 CALL                             R22 4 1
      147 SETTABLEKS                       R22 R21 K19 ["Size"]
      149 LOADN                            R22 1
      150 SETTABLEKS                       R22 R21 K20 ["BackgroundTransparency"]
      152 SETTABLEKS                       R6 R21 K11 ["Text"]
      154 GETIMPORT                        R22 K65 [Enum.TextXAlignment.Left]
      156 SETTABLEKS                       R22 R21 K58 ["TextXAlignment"]
      158 GETIMPORT                        R22 K66 [Enum.TextYAlignment.Top]
      160 SETTABLEKS                       R22 R21 K59 ["TextYAlignment"]
      162 GETTABLEKS                       R22 R2 K67 ["textSize"]
      164 SETTABLEKS                       R22 R21 K60 ["TextSize"]
      166 SETTABLEKS                       R9 R21 K61 ["TextColor3"]
      168 GETTABLEKS                       R22 R1 K68 ["font"]
      170 SETTABLEKS                       R22 R21 K62 ["Font"]
      172 LOADN                            R22 1
      173 SETTABLEKS                       R22 R21 K21 ["LayoutOrder"]
      175 CALL                             R19 2 1
      176 SETTABLEKS                       R19 R18 K37 ["Header"]
      178 GETUPVAL                         R19 0
      179 GETTABLEKS                       R19 R19 K17 ["createElement"]
      181 GETUPVAL                         R20 1
      182 DUPTABLE                         R21 K72 [{"Buttons", "SelectedKey", "Size", "FillDirection", "LayoutOrder", "OnClick"}]
      183 SETTABLEKS                       R10 R21 K69 ["Buttons"]
      185 GETTABLEKS                       R22 R5 K73 ["selectedValue"]
      187 SETTABLEKS                       R22 R21 K70 ["SelectedKey"]
      189 GETIMPORT                        R22 K25 [UDim2.new]
      191 LOADN                            R23 0
      192 LOADN                            R24 180
      193 LOADN                            R25 0
      194 MOVE                             R26 R8
      195 CALL                             R22 4 1
      196 SETTABLEKS                       R22 R21 K19 ["Size"]
      198 GETIMPORT                        R22 K75 [Enum.FillDirection.Vertical]
      200 SETTABLEKS                       R22 R21 K42 ["FillDirection"]
      202 LOADN                            R22 2
      203 SETTABLEKS                       R22 R21 K21 ["LayoutOrder"]
      205 NEWCLOSURE                       R22 P0
      206 CAPTURE                          VAL R0
      207 SETTABLEKS                       R22 R21 K71 ["OnClick"]
      209 CALL                             R19 2 1
      210 SETTABLEKS                       R19 R18 K38 ["RadioButtons"]
      212 CALL                             R15 3 1
      213 SETTABLEKS                       R15 R14 K26 ["Content"]
      215 CALL                             R11 3 -1
      216 RETURN                           R11 -1

PROTO_3:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 GETTABLEKS                       R6 R5 K2 ["Text"]
        7 JUMPIFNOTEQ                      R6 R0 ; [+9]
        9 GETUPVAL                         R6 1
       10 DUPTABLE                         R8 K4 [{"selectedScaleUnitIndex"}]
       11 SETTABLEKS                       R4 R8 K3 ["selectedScaleUnitIndex"]
       13 NAMECALL                         R6 R6 K5 ["setState"]
       15 CALL                             R6 2 0
       16 RETURN                           R0 0
       17 FORGLOOP                         R1 2 [inext] ; [-13]
       19 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["Localization"]
        4 NEWTABLE                         R4 0 0
        6 GETIMPORT                        R5 K3 [ipairs]
        8 GETUPVAL                         R6 0
        9 CALL                             R5 1 3
       10 FORGPREP_INEXT                   R5
       11 GETTABLEKS                       R12 R9 K4 ["Text"]
       13 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       15 MOVE                             R11 R4
       16 GETIMPORT                        R10 K7 [table.insert]
       18 CALL                             R10 2 0
       19 FORGLOOP                         R5 2 [inext] ; [-9]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K8 ["createElement"]
       24 LOADK                            R6 K9 ["Frame"]
       25 DUPTABLE                         R7 K13 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
       26 GETIMPORT                        R8 K16 [UDim2.new]
       28 LOADN                            R9 1
       29 LOADN                            R10 0
       30 LOADN                            R11 0
       31 LOADN                            R12 24
       32 CALL                             R8 4 1
       33 SETTABLEKS                       R8 R7 K10 ["Size"]
       35 LOADN                            R8 1
       36 SETTABLEKS                       R8 R7 K11 ["BackgroundTransparency"]
       38 LOADN                            R8 3
       39 SETTABLEKS                       R8 R7 K12 ["LayoutOrder"]
       41 DUPTABLE                         R8 K18 [{"Content"}]
       42 GETUPVAL                         R9 1
       43 GETTABLEKS                       R9 R9 K8 ["createElement"]
       45 LOADK                            R10 K9 ["Frame"]
       46 DUPTABLE                         R11 K21 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
       47 GETIMPORT                        R12 K16 [UDim2.new]
       49 LOADN                            R13 0
       50 LOADN                            R14 54
       51 LOADN                            R15 1
       52 LOADN                            R16 0
       53 CALL                             R12 4 1
       54 SETTABLEKS                       R12 R11 K10 ["Size"]
       56 GETIMPORT                        R12 K23 [Vector2.new]
       58 LOADK                            R13 K24 [0.5]
       59 LOADK                            R14 K24 [0.5]
       60 CALL                             R12 2 1
       61 SETTABLEKS                       R12 R11 K19 ["AnchorPoint"]
       63 GETIMPORT                        R12 K26 [UDim2.fromScale]
       65 LOADK                            R13 K24 [0.5]
       66 LOADK                            R14 K24 [0.5]
       67 CALL                             R12 2 1
       68 SETTABLEKS                       R12 R11 K20 ["Position"]
       70 LOADN                            R12 1
       71 SETTABLEKS                       R12 R11 K11 ["BackgroundTransparency"]
       73 DUPTABLE                         R12 K30 [{"Layout", "Label", "Dropdown"}]
       74 GETUPVAL                         R13 1
       75 GETTABLEKS                       R13 R13 K8 ["createElement"]
       77 LOADK                            R14 K31 ["UIListLayout"]
       78 DUPTABLE                         R15 K37 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
       79 GETIMPORT                        R16 K39 [Enum.SortOrder.LayoutOrder]
       81 SETTABLEKS                       R16 R15 K32 ["SortOrder"]
       83 GETIMPORT                        R16 K41 [Enum.FillDirection.Horizontal]
       85 SETTABLEKS                       R16 R15 K33 ["FillDirection"]
       87 GETIMPORT                        R16 K43 [UDim.new]
       89 LOADN                            R17 0
       90 LOADN                            R18 10
       91 CALL                             R16 2 1
       92 SETTABLEKS                       R16 R15 K34 ["Padding"]
       94 GETIMPORT                        R16 K45 [Enum.HorizontalAlignment.Left]
       96 SETTABLEKS                       R16 R15 K35 ["HorizontalAlignment"]
       98 GETIMPORT                        R16 K47 [Enum.VerticalAlignment.Center]
      100 SETTABLEKS                       R16 R15 K36 ["VerticalAlignment"]
      102 CALL                             R13 2 1
      103 SETTABLEKS                       R13 R12 K27 ["Layout"]
      105 GETUPVAL                         R13 1
      106 GETTABLEKS                       R13 R13 K8 ["createElement"]
      108 LOADK                            R14 K48 ["TextLabel"]
      109 DUPTABLE                         R15 K53 [{"Size", "BackgroundTransparency", "Text", "TextXAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
      110 GETIMPORT                        R16 K16 [UDim2.new]
      112 LOADN                            R17 0
      113 LOADN                            R18 120
      114 LOADN                            R19 1
      115 LOADN                            R20 0
      116 CALL                             R16 4 1
      117 SETTABLEKS                       R16 R15 K10 ["Size"]
      119 LOADN                            R16 1
      120 SETTABLEKS                       R16 R15 K11 ["BackgroundTransparency"]
      122 LOADK                            R18 K54 ["Dialog"]
      123 LOADK                            R19 K55 ["ScaleUnit"]
      124 NAMECALL                         R16 R3 K56 ["getText"]
      126 CALL                             R16 3 1
      127 SETTABLEKS                       R16 R15 K4 ["Text"]
      129 GETIMPORT                        R16 K57 [Enum.TextXAlignment.Left]
      131 SETTABLEKS                       R16 R15 K49 ["TextXAlignment"]
      133 GETTABLEKS                       R16 R2 K58 ["textSize"]
      135 SETTABLEKS                       R16 R15 K50 ["TextSize"]
      137 GETTABLEKS                       R16 R2 K59 ["textColor"]
      139 SETTABLEKS                       R16 R15 K51 ["TextColor3"]
      141 GETTABLEKS                       R16 R1 K60 ["font"]
      143 SETTABLEKS                       R16 R15 K52 ["Font"]
      145 LOADN                            R16 1
      146 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
      148 CALL                             R13 2 1
      149 SETTABLEKS                       R13 R12 K28 ["Label"]
      151 GETUPVAL                         R13 1
      152 GETTABLEKS                       R13 R13 K8 ["createElement"]
      154 GETUPVAL                         R14 2
      155 DUPTABLE                         R15 K64 [{"Size", "Items", "SelectedIndex", "LayoutOrder", "OnItemActivated"}]
      156 GETIMPORT                        R16 K16 [UDim2.new]
      158 LOADN                            R17 0
      159 LOADN                            R18 180
      160 LOADN                            R19 1
      161 LOADN                            R20 0
      162 CALL                             R16 4 1
      163 SETTABLEKS                       R16 R15 K10 ["Size"]
      165 SETTABLEKS                       R4 R15 K61 ["Items"]
      167 GETTABLEKS                       R16 R0 K65 ["state"]
      169 GETTABLEKS                       R16 R16 K66 ["selectedScaleUnitIndex"]
      171 SETTABLEKS                       R16 R15 K62 ["SelectedIndex"]
      173 LOADN                            R16 2
      174 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
      176 NEWCLOSURE                       R16 P0
      177 CAPTURE                          UPVAL U0
      178 CAPTURE                          VAL R0
      179 SETTABLEKS                       R16 R15 K63 ["OnItemActivated"]
      181 CALL                             R13 2 1
      182 SETTABLEKS                       R13 R12 K29 ["Dropdown"]
      184 CALL                             R9 3 1
      185 SETTABLEKS                       R9 R8 K17 ["Content"]
      187 CALL                             R5 3 -1
      188 RETURN                           R5 -1

PROTO_5:
        0 ORK                              R2 R0 K0 [""]
        1 FASTCALL1                        TOSTRING R2 ; [+2]
        2 GETIMPORT                        R1 K2 [tostring]
        4 CALL                             R1 1 1
        5 LOADK                            R3 K3 ["^%s*(.-)%s*$"]
        6 NAMECALL                         R1 R1 K4 ["match"]
        8 CALL                             R1 2 1
        9 FASTCALL1                        TONUMBER R1 ; [+3]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K6 [tonumber]
       13 CALL                             R2 1 1
       14 JUMPIFNOT                        R2 ; [+16]
       15 LOADN                            R3 0
       16 JUMPIFNOTLT                      R3 R2 ; [+14]
       18 GETUPVAL                         R3 0
       19 DUPTABLE                         R5 K8 [{"scaleFactorText"}]
       20 GETIMPORT                        R6 K11 [string.format]
       22 LOADK                            R7 K12 ["%g"]
       23 MOVE                             R8 R2
       24 CALL                             R6 2 1
       25 SETTABLEKS                       R6 R5 K7 ["scaleFactorText"]
       27 NAMECALL                         R3 R3 K13 ["setState"]
       29 CALL                             R3 2 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R3 0
       32 DUPTABLE                         R5 K8 [{"scaleFactorText"}]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K14 ["state"]
       36 GETTABLEKS                       R6 R6 K7 ["scaleFactorText"]
       38 SETTABLEKS                       R6 R5 K7 ["scaleFactorText"]
       40 NAMECALL                         R3 R3 K13 ["setState"]
       42 CALL                             R3 2 0
       43 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["Localization"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["createElement"]
        7 LOADK                            R5 K3 ["Frame"]
        8 DUPTABLE                         R6 K7 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
        9 GETIMPORT                        R7 K10 [UDim2.new]
       11 LOADN                            R8 1
       12 LOADN                            R9 0
       13 LOADN                            R10 0
       14 LOADN                            R11 24
       15 CALL                             R7 4 1
       16 SETTABLEKS                       R7 R6 K4 ["Size"]
       18 LOADN                            R7 1
       19 SETTABLEKS                       R7 R6 K5 ["BackgroundTransparency"]
       21 LOADN                            R7 4
       22 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       24 DUPTABLE                         R7 K12 [{"Content"}]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K2 ["createElement"]
       28 LOADK                            R9 K3 ["Frame"]
       29 DUPTABLE                         R10 K15 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
       30 GETIMPORT                        R11 K10 [UDim2.new]
       32 LOADN                            R12 0
       33 LOADN                            R13 54
       34 LOADN                            R14 1
       35 LOADN                            R15 0
       36 CALL                             R11 4 1
       37 SETTABLEKS                       R11 R10 K4 ["Size"]
       39 GETIMPORT                        R11 K17 [Vector2.new]
       41 LOADK                            R12 K18 [0.5]
       42 LOADK                            R13 K18 [0.5]
       43 CALL                             R11 2 1
       44 SETTABLEKS                       R11 R10 K13 ["AnchorPoint"]
       46 GETIMPORT                        R11 K20 [UDim2.fromScale]
       48 LOADK                            R12 K18 [0.5]
       49 LOADK                            R13 K18 [0.5]
       50 CALL                             R11 2 1
       51 SETTABLEKS                       R11 R10 K14 ["Position"]
       53 LOADN                            R11 1
       54 SETTABLEKS                       R11 R10 K5 ["BackgroundTransparency"]
       56 DUPTABLE                         R11 K24 [{"Layout", "Label", "Input"}]
       57 GETUPVAL                         R12 0
       58 GETTABLEKS                       R12 R12 K2 ["createElement"]
       60 LOADK                            R13 K25 ["UIListLayout"]
       61 DUPTABLE                         R14 K31 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
       62 GETIMPORT                        R15 K33 [Enum.SortOrder.LayoutOrder]
       64 SETTABLEKS                       R15 R14 K26 ["SortOrder"]
       66 GETIMPORT                        R15 K35 [Enum.FillDirection.Horizontal]
       68 SETTABLEKS                       R15 R14 K27 ["FillDirection"]
       70 GETIMPORT                        R15 K37 [UDim.new]
       72 LOADN                            R16 0
       73 LOADN                            R17 10
       74 CALL                             R15 2 1
       75 SETTABLEKS                       R15 R14 K28 ["Padding"]
       77 GETIMPORT                        R15 K39 [Enum.HorizontalAlignment.Left]
       79 SETTABLEKS                       R15 R14 K29 ["HorizontalAlignment"]
       81 GETIMPORT                        R15 K41 [Enum.VerticalAlignment.Center]
       83 SETTABLEKS                       R15 R14 K30 ["VerticalAlignment"]
       85 CALL                             R12 2 1
       86 SETTABLEKS                       R12 R11 K21 ["Layout"]
       88 GETUPVAL                         R12 0
       89 GETTABLEKS                       R12 R12 K2 ["createElement"]
       91 LOADK                            R13 K42 ["TextLabel"]
       92 DUPTABLE                         R14 K48 [{"Size", "BackgroundTransparency", "Text", "TextXAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
       93 GETIMPORT                        R15 K10 [UDim2.new]
       95 LOADN                            R16 0
       96 LOADN                            R17 120
       97 LOADN                            R18 1
       98 LOADN                            R19 0
       99 CALL                             R15 4 1
      100 SETTABLEKS                       R15 R14 K4 ["Size"]
      102 LOADN                            R15 1
      103 SETTABLEKS                       R15 R14 K5 ["BackgroundTransparency"]
      105 LOADK                            R17 K49 ["Dialog"]
      106 LOADK                            R18 K50 ["ScaleFactor"]
      107 NAMECALL                         R15 R3 K51 ["getText"]
      109 CALL                             R15 3 1
      110 SETTABLEKS                       R15 R14 K43 ["Text"]
      112 GETIMPORT                        R15 K52 [Enum.TextXAlignment.Left]
      114 SETTABLEKS                       R15 R14 K44 ["TextXAlignment"]
      116 GETTABLEKS                       R15 R2 K53 ["textSize"]
      118 SETTABLEKS                       R15 R14 K45 ["TextSize"]
      120 GETTABLEKS                       R15 R2 K54 ["textColor"]
      122 SETTABLEKS                       R15 R14 K46 ["TextColor3"]
      124 GETTABLEKS                       R15 R1 K55 ["font"]
      126 SETTABLEKS                       R15 R14 K47 ["Font"]
      128 LOADN                            R15 1
      129 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      131 CALL                             R12 2 1
      132 SETTABLEKS                       R12 R11 K22 ["Label"]
      134 GETUPVAL                         R12 0
      135 GETTABLEKS                       R12 R12 K2 ["createElement"]
      137 GETUPVAL                         R13 1
      138 DUPTABLE                         R14 K57 [{"Size", "Text", "LayoutOrder", "OnFocusLost"}]
      139 GETIMPORT                        R15 K10 [UDim2.new]
      141 LOADN                            R16 0
      142 LOADN                            R17 180
      143 LOADN                            R18 1
      144 LOADN                            R19 0
      145 CALL                             R15 4 1
      146 SETTABLEKS                       R15 R14 K4 ["Size"]
      148 GETTABLEKS                       R15 R0 K58 ["state"]
      150 GETTABLEKS                       R15 R15 K59 ["scaleFactorText"]
      152 SETTABLEKS                       R15 R14 K43 ["Text"]
      154 LOADN                            R15 2
      155 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      157 NEWCLOSURE                       R15 P0
      158 CAPTURE                          VAL R0
      159 SETTABLEKS                       R15 R14 K56 ["OnFocusLost"]
      161 CALL                             R12 2 1
      162 SETTABLEKS                       R12 R11 K23 ["Input"]
      164 CALL                             R8 3 1
      165 SETTABLEKS                       R8 R7 K11 ["Content"]
      167 CALL                             R4 3 -1
      168 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+31]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["state"]
        7 GETTABLEKS                       R3 R3 K1 ["selectedScaleUnitIndex"]
        9 GETTABLE                         R1 R2 R3
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K0 ["state"]
       13 GETTABLEKS                       R4 R4 K3 ["scaleFactorText"]
       15 FASTCALL1                        TONUMBER R4 ; [+2]
       16 GETIMPORT                        R3 K5 [tonumber]
       18 CALL                             R3 1 1
       19 ORK                              R2 R3 K2 [1]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K6 ["OnButtonClicked"]
       23 MOVE                             R4 R0
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K0 ["state"]
       27 GETTABLEKS                       R5 R5 K7 ["selectedValue"]
       29 GETTABLEKS                       R7 R1 K8 ["Factor"]
       31 MUL                              R6 R7 R2
       32 CALL                             R3 3 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R1 3
       35 GETTABLEKS                       R1 R1 K6 ["OnButtonClicked"]
       37 MOVE                             R2 R0
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K0 ["state"]
       41 GETTABLEKS                       R3 R3 K7 ["selectedValue"]
       43 CALL                             R1 2 0
       44 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["dialogTheme"]
        6 GETTABLEKS                       R5 R1 K4 ["HeaderText"]
        8 ORK                              R4 R5 K3 [""]
        9 GETTABLEKS                       R5 R1 K5 ["SelectionGroupOptions"]
       11 JUMPIF                           R5 ; [+2]
       12 NEWTABLE                         R5 0 0
       14 LENGTH                           R6 R5
       15 GETUPVAL                         R7 0
       16 MOVE                             R9 R4
       17 GETTABLEKS                       R10 R3 K6 ["textSize"]
       19 GETTABLEKS                       R11 R2 K7 ["font"]
       21 GETUPVAL                         R12 1
       22 NAMECALL                         R7 R7 K8 ["GetTextSize"]
       24 CALL                             R7 5 1
       25 MULK                             R9 R6 K9 [20]
       26 LOADN                            R11 0
       27 JUMPIFNOTLT                      R11 R6 ; [+4]
       29 SUBK                             R11 R6 K11 [1]
       30 MULK                             R10 R11 K10 [5]
       31 JUMPIF                           R10 ; [+1]
       32 LOADN                            R10 0
       33 ADD                              R8 R9 R10
       34 LOADNIL                          R9
       35 GETUPVAL                         R10 2
       36 CALL                             R10 0 1
       37 JUMPIFNOT                        R10 ; [+21]
       38 GETTABLEKS                       R16 R7 K14 ["Y"]
       40 ADDK                             R15 R16 K13 [8]
       41 ADD                              R14 R15 R8
       42 ADDK                             R13 R14 K13 [8]
       43 ADDK                             R12 R13 K12 [24]
       44 ADDK                             R11 R12 K13 [8]
       45 ADDK                             R10 R11 K12 [24]
       46 GETUPVAL                         R14 3
       47 GETTABLEKS                       R14 R14 K17 ["PROMPT_VERTICAL_PADDING"]
       49 MULK                             R13 R14 K16 [2]
       50 ADDK                             R12 R13 K15 [16]
       51 ADD                              R11 R12 R10
       52 GETUPVAL                         R12 3
       53 GETTABLEKS                       R12 R12 K18 ["PROMPT_BUTTON_SIZE"]
       55 GETTABLEKS                       R12 R12 K14 ["Y"]
       57 ADD                              R9 R11 R12
       58 JUMP                             ; [+17]
       59 GETUPVAL                         R12 3
       60 GETTABLEKS                       R12 R12 K19 ["TRACK_HEIGHT"]
       62 ADDK                             R11 R12 K13 [8]
       63 ADD                              R10 R11 R8
       64 GETUPVAL                         R14 3
       65 GETTABLEKS                       R14 R14 K17 ["PROMPT_VERTICAL_PADDING"]
       67 MULK                             R13 R14 K16 [2]
       68 ADDK                             R12 R13 K15 [16]
       69 ADD                              R11 R12 R10
       70 GETUPVAL                         R12 3
       71 GETTABLEKS                       R12 R12 K18 ["PROMPT_BUTTON_SIZE"]
       73 GETTABLEKS                       R12 R12 K14 ["Y"]
       75 ADD                              R9 R11 R12
       76 MOVE                             R12 R2
       77 MOVE                             R13 R3
       78 MOVE                             R14 R6
       79 NAMECALL                         R10 R0 K20 ["renderRadioButtons"]
       81 CALL                             R10 4 1
       82 GETUPVAL                         R11 4
       83 GETTABLEKS                       R11 R11 K21 ["createElement"]
       85 GETUPVAL                         R12 5
       86 DUPTABLE                         R13 K25 [{"Size", "Buttons", "OnButtonClicked"}]
       87 GETIMPORT                        R14 K28 [UDim2.new]
       89 LOADN                            R15 0
       90 LOADN                            R16 124
       91 LOADN                            R17 0
       92 MOVE                             R18 R9
       93 CALL                             R14 4 1
       94 SETTABLEKS                       R14 R13 K22 ["Size"]
       96 GETTABLEKS                       R14 R0 K0 ["props"]
       98 GETTABLEKS                       R14 R14 K23 ["Buttons"]
      100 SETTABLEKS                       R14 R13 K23 ["Buttons"]
      102 NEWCLOSURE                       R14 P0
      103 CAPTURE                          UPVAL U2
      104 CAPTURE                          UPVAL U6
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R1
      107 SETTABLEKS                       R14 R13 K24 ["OnButtonClicked"]
      109 DUPTABLE                         R14 K30 [{"Content"}]
      110 GETUPVAL                         R15 4
      111 GETTABLEKS                       R15 R15 K21 ["createElement"]
      113 LOADK                            R16 K31 ["Frame"]
      114 DUPTABLE                         R17 K33 [{"Size", "BackgroundTransparency"}]
      115 GETIMPORT                        R18 K28 [UDim2.new]
      117 LOADN                            R19 1
      118 LOADN                            R20 0
      119 LOADN                            R21 1
      120 LOADN                            R22 0
      121 CALL                             R18 4 1
      122 SETTABLEKS                       R18 R17 K22 ["Size"]
      124 LOADN                            R18 1
      125 SETTABLEKS                       R18 R17 K32 ["BackgroundTransparency"]
      127 DUPTABLE                         R18 K40 [{"Padding", "Layout", "HeaderText", "RadioGroup", "ScaleUnitRow", "ScaleFactorRow", "BottomMargin"}]
      128 GETUPVAL                         R19 4
      129 GETTABLEKS                       R19 R19 K21 ["createElement"]
      131 LOADK                            R20 K41 ["UIPadding"]
      132 DUPTABLE                         R21 K44 [{"PaddingLeft", "PaddingRight"}]
      133 GETIMPORT                        R22 K46 [UDim.new]
      135 LOADN                            R23 0
      136 LOADN                            R24 8
      137 CALL                             R22 2 1
      138 SETTABLEKS                       R22 R21 K42 ["PaddingLeft"]
      140 GETIMPORT                        R22 K46 [UDim.new]
      142 LOADN                            R23 0
      143 LOADN                            R24 8
      144 CALL                             R22 2 1
      145 SETTABLEKS                       R22 R21 K43 ["PaddingRight"]
      147 CALL                             R19 2 1
      148 SETTABLEKS                       R19 R18 K34 ["Padding"]
      150 GETUPVAL                         R19 4
      151 GETTABLEKS                       R19 R19 K21 ["createElement"]
      153 LOADK                            R20 K47 ["UIListLayout"]
      154 DUPTABLE                         R21 K52 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
      155 GETIMPORT                        R22 K55 [Enum.SortOrder.LayoutOrder]
      157 SETTABLEKS                       R22 R21 K48 ["SortOrder"]
      159 GETIMPORT                        R22 K57 [Enum.FillDirection.Vertical]
      161 SETTABLEKS                       R22 R21 K49 ["FillDirection"]
      163 GETIMPORT                        R22 K46 [UDim.new]
      165 LOADN                            R23 0
      166 LOADN                            R24 8
      167 CALL                             R22 2 1
      168 SETTABLEKS                       R22 R21 K34 ["Padding"]
      170 GETIMPORT                        R22 K59 [Enum.HorizontalAlignment.Left]
      172 SETTABLEKS                       R22 R21 K50 ["HorizontalAlignment"]
      174 GETIMPORT                        R22 K61 [Enum.VerticalAlignment.Top]
      176 SETTABLEKS                       R22 R21 K51 ["VerticalAlignment"]
      178 CALL                             R19 2 1
      179 SETTABLEKS                       R19 R18 K35 ["Layout"]
      181 MOVE                             R19 R4
      182 JUMPIFNOT                        R19 ; [+47]
      183 GETUPVAL                         R19 4
      184 GETTABLEKS                       R19 R19 K21 ["createElement"]
      186 LOADK                            R20 K62 ["TextLabel"]
      187 DUPTABLE                         R21 K70 [{"Size", "BackgroundTransparency", "Text", "TextWrapped", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
      188 GETIMPORT                        R22 K28 [UDim2.new]
      190 LOADN                            R23 1
      191 LOADN                            R24 0
      192 LOADN                            R25 0
      193 GETTABLEKS                       R26 R7 K14 ["Y"]
      195 CALL                             R22 4 1
      196 SETTABLEKS                       R22 R21 K22 ["Size"]
      198 LOADN                            R22 1
      199 SETTABLEKS                       R22 R21 K32 ["BackgroundTransparency"]
      201 SETTABLEKS                       R4 R21 K63 ["Text"]
      203 LOADB                            R22 1
      204 SETTABLEKS                       R22 R21 K64 ["TextWrapped"]
      206 GETIMPORT                        R22 K71 [Enum.TextXAlignment.Left]
      208 SETTABLEKS                       R22 R21 K65 ["TextXAlignment"]
      210 GETIMPORT                        R22 K72 [Enum.TextYAlignment.Top]
      212 SETTABLEKS                       R22 R21 K66 ["TextYAlignment"]
      214 GETTABLEKS                       R22 R3 K73 ["headerTextSize"]
      216 SETTABLEKS                       R22 R21 K67 ["TextSize"]
      218 GETTABLEKS                       R22 R3 K74 ["textColor"]
      220 SETTABLEKS                       R22 R21 K68 ["TextColor3"]
      222 GETTABLEKS                       R22 R3 K75 ["headerFont"]
      224 SETTABLEKS                       R22 R21 K69 ["Font"]
      226 LOADN                            R22 1
      227 SETTABLEKS                       R22 R21 K54 ["LayoutOrder"]
      229 CALL                             R19 2 1
      230 SETTABLEKS                       R19 R18 K4 ["HeaderText"]
      232 SETTABLEKS                       R10 R18 K36 ["RadioGroup"]
      234 GETUPVAL                         R20 2
      235 CALL                             R20 0 1
      236 JUMPIFNOT                        R20 ; [+6]
      237 MOVE                             R21 R2
      238 MOVE                             R22 R3
      239 NAMECALL                         R19 R0 K76 ["renderScaleUnitRow"]
      241 CALL                             R19 3 1
      242 JUMP                             ; [+1]
      243 LOADNIL                          R19
      244 SETTABLEKS                       R19 R18 K37 ["ScaleUnitRow"]
      246 GETUPVAL                         R20 2
      247 CALL                             R20 0 1
      248 JUMPIFNOT                        R20 ; [+6]
      249 MOVE                             R21 R2
      250 MOVE                             R22 R3
      251 NAMECALL                         R19 R0 K77 ["renderScaleFactorRow"]
      253 CALL                             R19 3 1
      254 JUMP                             ; [+1]
      255 LOADNIL                          R19
      256 SETTABLEKS                       R19 R18 K38 ["ScaleFactorRow"]
      258 GETUPVAL                         R19 4
      259 GETTABLEKS                       R19 R19 K21 ["createElement"]
      261 LOADK                            R20 K31 ["Frame"]
      262 DUPTABLE                         R21 K78 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      263 GETIMPORT                        R22 K28 [UDim2.new]
      265 LOADN                            R23 1
      266 LOADN                            R24 0
      267 LOADN                            R25 0
      268 LOADN                            R26 8
      269 CALL                             R22 4 1
      270 SETTABLEKS                       R22 R21 K22 ["Size"]
      272 LOADN                            R22 1
      273 SETTABLEKS                       R22 R21 K32 ["BackgroundTransparency"]
      275 GETUPVAL                         R23 2
      276 CALL                             R23 0 1
      277 JUMPIFNOT                        R23 ; [+2]
      278 LOADN                            R22 5
      279 JUMP                             ; [+1]
      280 LOADN                            R22 3
      281 SETTABLEKS                       R22 R21 K54 ["LayoutOrder"]
      283 CALL                             R19 2 1
      284 SETTABLEKS                       R19 R18 K39 ["BottomMargin"]
      286 CALL                             R15 3 1
      287 SETTABLEKS                       R15 R14 K29 ["Content"]
      289 CALL                             R11 3 -1
      290 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [Vector2.new]
        3 LOADN                            R1 84
        4 LOADN                            R2 16
        5 CALL                             R0 2 1
        6 NEWTABLE                         R1 0 6
        8 DUPTABLE                         R2 K5 [{"Text", "Factor"}]
        9 LOADK                            R3 K6 ["Stud"]
       10 SETTABLEKS                       R3 R2 K3 ["Text"]
       12 LOADN                            R3 1
       13 SETTABLEKS                       R3 R2 K4 ["Factor"]
       15 DUPTABLE                         R3 K5 [{"Text", "Factor"}]
       16 LOADK                            R4 K7 ["Meter"]
       17 SETTABLEKS                       R4 R3 K3 ["Text"]
       19 LOADK                            R4 K8 [3.57142857142857]
       20 SETTABLEKS                       R4 R3 K4 ["Factor"]
       22 DUPTABLE                         R4 K5 [{"Text", "Factor"}]
       23 LOADK                            R5 K9 ["Centimeter"]
       24 SETTABLEKS                       R5 R4 K3 ["Text"]
       26 LOADK                            R5 K10 [0.0357142857142857]
       27 SETTABLEKS                       R5 R4 K4 ["Factor"]
       29 DUPTABLE                         R5 K5 [{"Text", "Factor"}]
       30 LOADK                            R6 K11 ["Millimeter"]
       31 SETTABLEKS                       R6 R5 K3 ["Text"]
       33 LOADK                            R6 K12 [0.00357142857142857]
       34 SETTABLEKS                       R6 R5 K4 ["Factor"]
       36 DUPTABLE                         R6 K5 [{"Text", "Factor"}]
       37 LOADK                            R7 K13 ["Foot"]
       38 SETTABLEKS                       R7 R6 K3 ["Text"]
       40 LOADK                            R7 K14 [1.08857142857143]
       41 SETTABLEKS                       R7 R6 K4 ["Factor"]
       43 DUPTABLE                         R7 K5 [{"Text", "Factor"}]
       44 LOADK                            R8 K15 ["Inch"]
       45 SETTABLEKS                       R8 R7 K3 ["Text"]
       47 LOADK                            R8 K16 [0.0907142857142857]
       48 SETTABLEKS                       R8 R7 K4 ["Factor"]
       50 SETLIST                          R1 R2 6 [1]
       52 GETIMPORT                        R2 K18 [game]
       54 LOADK                            R4 K19 ["TextService"]
       55 NAMECALL                         R2 R2 K20 ["GetService"]
       57 CALL                             R2 2 1
       58 GETIMPORT                        R3 K22 [script]
       60 LOADK                            R5 K23 ["AnimationClipEditor"]
       61 NAMECALL                         R3 R3 K24 ["FindFirstAncestor"]
       63 CALL                             R3 2 1
       64 GETIMPORT                        R4 K26 [require]
       66 GETTABLEKS                       R5 R3 K27 ["Packages"]
       68 GETTABLEKS                       R5 R5 K28 ["Roact"]
       70 CALL                             R4 1 1
       71 GETIMPORT                        R5 K26 [require]
       73 GETTABLEKS                       R6 R3 K29 ["Src"]
       75 GETTABLEKS                       R6 R6 K30 ["Util"]
       77 GETTABLEKS                       R6 R6 K31 ["Constants"]
       79 CALL                             R5 1 1
       80 GETIMPORT                        R6 K26 [require]
       82 GETTABLEKS                       R7 R3 K27 ["Packages"]
       84 GETTABLEKS                       R7 R7 K32 ["Framework"]
       86 CALL                             R6 1 1
       87 GETTABLEKS                       R7 R6 K33 ["UI"]
       89 GETTABLEKS                       R7 R7 K34 ["RadioButtonList"]
       91 GETTABLEKS                       R8 R6 K33 ["UI"]
       93 GETTABLEKS                       R8 R8 K35 ["SelectInput"]
       95 GETTABLEKS                       R9 R6 K33 ["UI"]
       97 GETTABLEKS                       R9 R9 K36 ["TextInput"]
       99 GETTABLEKS                       R10 R6 K37 ["ContextServices"]
      101 GETTABLEKS                       R11 R10 K38 ["withContext"]
      103 GETIMPORT                        R12 K26 [require]
      105 GETTABLEKS                       R13 R3 K29 ["Src"]
      107 GETTABLEKS                       R13 R13 K39 ["Components"]
      109 GETTABLEKS                       R13 R13 K40 ["EditEventsDialog"]
      111 GETTABLEKS                       R13 R13 K41 ["FocusedPrompt"]
      113 CALL                             R12 1 1
      114 GETIMPORT                        R13 K26 [require]
      116 GETTABLEKS                       R14 R3 K42 ["LuaFlags"]
      118 GETTABLEKS                       R14 R14 K43 ["GetFFlagACEImportScale"]
      120 CALL                             R13 1 1
      121 GETTABLEKS                       R14 R4 K44 ["PureComponent"]
      123 LOADK                            R16 K45 ["MultipleOptionPrompt"]
      124 NAMECALL                         R14 R14 K46 ["extend"]
      126 CALL                             R14 2 1
      127 DUPCLOSURE                       R15 K47 [PROTO_0]
      128 CAPTURE                          VAL R13
      129 SETTABLEKS                       R15 R14 K48 ["init"]
      131 DUPCLOSURE                       R15 K49 [PROTO_2]
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R7
      134 SETTABLEKS                       R15 R14 K50 ["renderRadioButtons"]
      136 DUPCLOSURE                       R15 K51 [PROTO_4]
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R8
      140 SETTABLEKS                       R15 R14 K52 ["renderScaleUnitRow"]
      142 DUPCLOSURE                       R15 K53 [PROTO_6]
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R9
      145 SETTABLEKS                       R15 R14 K54 ["renderScaleFactorRow"]
      147 DUPCLOSURE                       R15 K55 [PROTO_8]
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R0
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R1
      155 SETTABLEKS                       R15 R14 K56 ["render"]
      157 MOVE                             R15 R11
      158 DUPTABLE                         R16 K59 [{"Stylizer", "Localization"}]
      159 GETTABLEKS                       R17 R10 K57 ["Stylizer"]
      161 SETTABLEKS                       R17 R16 K57 ["Stylizer"]
      163 GETTABLEKS                       R17 R10 K58 ["Localization"]
      165 SETTABLEKS                       R17 R16 K58 ["Localization"]
      167 CALL                             R15 1 1
      168 MOVE                             R16 R14
      169 CALL                             R15 1 1
      170 MOVE                             R14 R15
      171 RETURN                           R14 1
