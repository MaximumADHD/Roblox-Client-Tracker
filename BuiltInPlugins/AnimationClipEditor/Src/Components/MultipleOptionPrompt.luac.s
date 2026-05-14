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
       32 DUPTABLE                         R5 K7 [{"selectedValue"}]
       33 ORK                              R6 R2 K8 [""]
       34 SETTABLEKS                       R6 R5 K6 ["selectedValue"]
       36 NAMECALL                         R3 R0 K9 ["setState"]
       38 CALL                             R3 2 0
       39 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnButtonClicked"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["state"]
        7 GETTABLEKS                       R3 R3 K2 ["selectedValue"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_4:
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
       34 GETUPVAL                         R11 2
       35 GETTABLEKS                       R11 R11 K13 ["TRACK_HEIGHT"]
       37 ADDK                             R10 R11 K12 [8]
       38 ADD                              R9 R10 R8
       39 GETUPVAL                         R14 2
       40 GETTABLEKS                       R14 R14 K16 ["PROMPT_VERTICAL_PADDING"]
       42 MULK                             R13 R14 K15 [2]
       43 ADDK                             R12 R13 K14 [16]
       44 ADD                              R11 R12 R9
       45 GETUPVAL                         R12 2
       46 GETTABLEKS                       R12 R12 K17 ["PROMPT_BUTTON_SIZE"]
       48 GETTABLEKS                       R12 R12 K18 ["Y"]
       50 ADD                              R10 R11 R12
       51 MOVE                             R13 R2
       52 MOVE                             R14 R3
       53 MOVE                             R15 R6
       54 NAMECALL                         R11 R0 K19 ["renderRadioButtons"]
       56 CALL                             R11 4 1
       57 GETUPVAL                         R12 3
       58 GETTABLEKS                       R12 R12 K20 ["createElement"]
       60 GETUPVAL                         R13 4
       61 DUPTABLE                         R14 K24 [{"Size", "Buttons", "OnButtonClicked"}]
       62 GETIMPORT                        R15 K27 [UDim2.new]
       64 LOADN                            R16 0
       65 LOADN                            R17 124
       66 LOADN                            R18 0
       67 MOVE                             R19 R10
       68 CALL                             R15 4 1
       69 SETTABLEKS                       R15 R14 K21 ["Size"]
       71 GETTABLEKS                       R15 R0 K0 ["props"]
       73 GETTABLEKS                       R15 R15 K22 ["Buttons"]
       75 SETTABLEKS                       R15 R14 K22 ["Buttons"]
       77 NEWCLOSURE                       R15 P0
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R15 R14 K23 ["OnButtonClicked"]
       82 DUPTABLE                         R15 K29 [{"Content"}]
       83 GETUPVAL                         R16 3
       84 GETTABLEKS                       R16 R16 K20 ["createElement"]
       86 LOADK                            R17 K30 ["Frame"]
       87 DUPTABLE                         R18 K32 [{"Size", "BackgroundTransparency"}]
       88 GETIMPORT                        R19 K27 [UDim2.new]
       90 LOADN                            R20 1
       91 LOADN                            R21 0
       92 LOADN                            R22 1
       93 LOADN                            R23 0
       94 CALL                             R19 4 1
       95 SETTABLEKS                       R19 R18 K21 ["Size"]
       97 LOADN                            R19 1
       98 SETTABLEKS                       R19 R18 K31 ["BackgroundTransparency"]
      100 DUPTABLE                         R19 K37 [{"Padding", "Layout", "HeaderText", "RadioGroup", "BottomMargin"}]
      101 GETUPVAL                         R20 3
      102 GETTABLEKS                       R20 R20 K20 ["createElement"]
      104 LOADK                            R21 K38 ["UIPadding"]
      105 DUPTABLE                         R22 K41 [{"PaddingLeft", "PaddingRight"}]
      106 GETIMPORT                        R23 K43 [UDim.new]
      108 LOADN                            R24 0
      109 LOADN                            R25 8
      110 CALL                             R23 2 1
      111 SETTABLEKS                       R23 R22 K39 ["PaddingLeft"]
      113 GETIMPORT                        R23 K43 [UDim.new]
      115 LOADN                            R24 0
      116 LOADN                            R25 8
      117 CALL                             R23 2 1
      118 SETTABLEKS                       R23 R22 K40 ["PaddingRight"]
      120 CALL                             R20 2 1
      121 SETTABLEKS                       R20 R19 K33 ["Padding"]
      123 GETUPVAL                         R20 3
      124 GETTABLEKS                       R20 R20 K20 ["createElement"]
      126 LOADK                            R21 K44 ["UIListLayout"]
      127 DUPTABLE                         R22 K49 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
      128 GETIMPORT                        R23 K52 [Enum.SortOrder.LayoutOrder]
      130 SETTABLEKS                       R23 R22 K45 ["SortOrder"]
      132 GETIMPORT                        R23 K54 [Enum.FillDirection.Vertical]
      134 SETTABLEKS                       R23 R22 K46 ["FillDirection"]
      136 GETIMPORT                        R23 K43 [UDim.new]
      138 LOADN                            R24 0
      139 LOADN                            R25 8
      140 CALL                             R23 2 1
      141 SETTABLEKS                       R23 R22 K33 ["Padding"]
      143 GETIMPORT                        R23 K56 [Enum.HorizontalAlignment.Left]
      145 SETTABLEKS                       R23 R22 K47 ["HorizontalAlignment"]
      147 GETIMPORT                        R23 K58 [Enum.VerticalAlignment.Top]
      149 SETTABLEKS                       R23 R22 K48 ["VerticalAlignment"]
      151 CALL                             R20 2 1
      152 SETTABLEKS                       R20 R19 K34 ["Layout"]
      154 MOVE                             R20 R4
      155 JUMPIFNOT                        R20 ; [+47]
      156 GETUPVAL                         R20 3
      157 GETTABLEKS                       R20 R20 K20 ["createElement"]
      159 LOADK                            R21 K59 ["TextLabel"]
      160 DUPTABLE                         R22 K67 [{"Size", "BackgroundTransparency", "Text", "TextWrapped", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
      161 GETIMPORT                        R23 K27 [UDim2.new]
      163 LOADN                            R24 1
      164 LOADN                            R25 0
      165 LOADN                            R26 0
      166 GETTABLEKS                       R27 R7 K18 ["Y"]
      168 CALL                             R23 4 1
      169 SETTABLEKS                       R23 R22 K21 ["Size"]
      171 LOADN                            R23 1
      172 SETTABLEKS                       R23 R22 K31 ["BackgroundTransparency"]
      174 SETTABLEKS                       R4 R22 K60 ["Text"]
      176 LOADB                            R23 1
      177 SETTABLEKS                       R23 R22 K61 ["TextWrapped"]
      179 GETIMPORT                        R23 K68 [Enum.TextXAlignment.Left]
      181 SETTABLEKS                       R23 R22 K62 ["TextXAlignment"]
      183 GETIMPORT                        R23 K69 [Enum.TextYAlignment.Top]
      185 SETTABLEKS                       R23 R22 K63 ["TextYAlignment"]
      187 GETTABLEKS                       R23 R3 K70 ["headerTextSize"]
      189 SETTABLEKS                       R23 R22 K64 ["TextSize"]
      191 GETTABLEKS                       R23 R3 K71 ["textColor"]
      193 SETTABLEKS                       R23 R22 K65 ["TextColor3"]
      195 GETTABLEKS                       R23 R3 K72 ["headerFont"]
      197 SETTABLEKS                       R23 R22 K66 ["Font"]
      199 LOADN                            R23 1
      200 SETTABLEKS                       R23 R22 K51 ["LayoutOrder"]
      202 CALL                             R20 2 1
      203 SETTABLEKS                       R20 R19 K4 ["HeaderText"]
      205 SETTABLEKS                       R11 R19 K35 ["RadioGroup"]
      207 GETUPVAL                         R20 3
      208 GETTABLEKS                       R20 R20 K20 ["createElement"]
      210 LOADK                            R21 K30 ["Frame"]
      211 DUPTABLE                         R22 K73 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      212 GETIMPORT                        R23 K27 [UDim2.new]
      214 LOADN                            R24 1
      215 LOADN                            R25 0
      216 LOADN                            R26 0
      217 LOADN                            R27 8
      218 CALL                             R23 4 1
      219 SETTABLEKS                       R23 R22 K21 ["Size"]
      221 LOADN                            R23 1
      222 SETTABLEKS                       R23 R22 K31 ["BackgroundTransparency"]
      224 LOADN                            R23 3
      225 SETTABLEKS                       R23 R22 K51 ["LayoutOrder"]
      227 CALL                             R20 2 1
      228 SETTABLEKS                       R20 R19 K36 ["BottomMargin"]
      230 CALL                             R16 3 1
      231 SETTABLEKS                       R16 R15 K28 ["Content"]
      233 CALL                             R12 3 -1
      234 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [Vector2.new]
        3 LOADN                            R1 84
        4 LOADN                            R2 16
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K4 [game]
        8 LOADK                            R3 K5 ["TextService"]
        9 NAMECALL                         R1 R1 K6 ["GetService"]
       11 CALL                             R1 2 1
       12 GETIMPORT                        R2 K8 [script]
       14 LOADK                            R4 K9 ["AnimationClipEditor"]
       15 NAMECALL                         R2 R2 K10 ["FindFirstAncestor"]
       17 CALL                             R2 2 1
       18 GETIMPORT                        R3 K12 [require]
       20 GETTABLEKS                       R4 R2 K13 ["Packages"]
       22 GETTABLEKS                       R4 R4 K14 ["Roact"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K12 [require]
       27 GETTABLEKS                       R5 R2 K15 ["Src"]
       29 GETTABLEKS                       R5 R5 K16 ["Util"]
       31 GETTABLEKS                       R5 R5 K17 ["Constants"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K12 [require]
       36 GETTABLEKS                       R6 R2 K13 ["Packages"]
       38 GETTABLEKS                       R6 R6 K18 ["Framework"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K19 ["UI"]
       43 GETTABLEKS                       R6 R6 K20 ["RadioButtonList"]
       45 GETTABLEKS                       R7 R5 K21 ["ContextServices"]
       47 GETTABLEKS                       R8 R7 K22 ["withContext"]
       49 GETIMPORT                        R9 K12 [require]
       51 GETTABLEKS                       R10 R2 K15 ["Src"]
       53 GETTABLEKS                       R10 R10 K23 ["Components"]
       55 GETTABLEKS                       R10 R10 K24 ["EditEventsDialog"]
       57 GETTABLEKS                       R10 R10 K25 ["FocusedPrompt"]
       59 CALL                             R9 1 1
       60 GETTABLEKS                       R10 R3 K26 ["PureComponent"]
       62 LOADK                            R12 K27 ["MultipleOptionPrompt"]
       63 NAMECALL                         R10 R10 K28 ["extend"]
       65 CALL                             R10 2 1
       66 DUPCLOSURE                       R11 K29 [PROTO_0]
       67 SETTABLEKS                       R11 R10 K30 ["init"]
       69 DUPCLOSURE                       R11 K31 [PROTO_2]
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R6
       72 SETTABLEKS                       R11 R10 K32 ["renderRadioButtons"]
       74 DUPCLOSURE                       R11 K33 [PROTO_4]
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R9
       80 SETTABLEKS                       R11 R10 K34 ["render"]
       82 MOVE                             R11 R8
       83 DUPTABLE                         R12 K36 [{"Stylizer"}]
       84 GETTABLEKS                       R13 R7 K35 ["Stylizer"]
       86 SETTABLEKS                       R13 R12 K35 ["Stylizer"]
       88 CALL                             R11 1 1
       89 MOVE                             R12 R10
       90 CALL                             R11 1 1
       91 MOVE                             R10 R11
       92 RETURN                           R10 1
