PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnFormatValue"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["OnFormatValue"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 FASTCALL1                        TOSTRING R0 ; [+3]
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K3 [tostring]
       18 CALL                             R1 1 1
       19 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnValueChanged"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["formatValue"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["valueChanged"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 DUPTABLE                         R2 K4 [{"HorizontalSpacing", "Size", "ValueLabelWidth"}]
        3 LOADN                            R3 16
        4 SETTABLEKS                       R3 R2 K1 ["HorizontalSpacing"]
        6 GETIMPORT                        R3 K7 [UDim2.new]
        8 LOADN                            R4 1
        9 LOADN                            R5 0
       10 LOADN                            R6 0
       11 LOADN                            R7 30
       12 CALL                             R3 4 1
       13 SETTABLEKS                       R3 R2 K2 ["Size"]
       15 LOADN                            R3 30
       16 SETTABLEKS                       R3 R2 K3 ["ValueLabelWidth"]
       18 GETTABLEKS                       R3 R2 K1 ["HorizontalSpacing"]
       20 GETTABLEKS                       R5 R2 K3 ["ValueLabelWidth"]
       22 ORK                              R4 R5 K8 [0]
       23 GETTABLEKS                       R5 R1 K9 ["Disabled"]
       25 GETTABLEKS                       R7 R1 K10 ["LabelWidth"]
       27 ORK                              R6 R7 K8 [0]
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R8 R1 K2 ["Size"]
       31 GETTABLEKS                       R9 R2 K2 ["Size"]
       33 CALL                             R7 2 1
       34 JUMPIFNOT                        R5 ; [+4]
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R8 R8 K9 ["Disabled"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R8
       40 GETTABLEKS                       R9 R1 K11 ["Value"]
       42 GETTABLEKS                       R10 R0 K12 ["formatValue"]
       44 MOVE                             R11 R9
       45 CALL                             R10 1 1
       46 GETIMPORT                        R11 K7 [UDim2.new]
       48 LOADN                            R12 0
       49 MOVE                             R13 R6
       50 LOADN                            R14 1
       51 LOADN                            R15 0
       52 CALL                             R11 4 1
       53 ADD                              R12 R6 R3
       54 GETTABLEKS                       R13 R1 K13 ["ShowValueLabel"]
       56 JUMPIFNOT                        R13 ; [+2]
       57 ADD                              R13 R4 R3
       58 ADD                              R12 R12 R13
       59 GETIMPORT                        R13 K7 [UDim2.new]
       61 LOADN                            R14 1
       62 MINUS                            R15 R12
       63 LOADN                            R16 1
       64 LOADN                            R17 0
       65 CALL                             R13 4 1
       66 GETUPVAL                         R14 2
       67 GETTABLEKS                       R14 R14 K14 ["createElement"]
       69 GETUPVAL                         R15 3
       70 DUPTABLE                         R16 K20 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
       71 GETIMPORT                        R17 K23 [Enum.HorizontalAlignment.Left]
       73 SETTABLEKS                       R17 R16 K15 ["HorizontalAlignment"]
       75 GETIMPORT                        R17 K26 [Enum.FillDirection.Horizontal]
       77 SETTABLEKS                       R17 R16 K16 ["Layout"]
       79 GETTABLEKS                       R17 R1 K17 ["LayoutOrder"]
       81 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
       83 SETTABLEKS                       R7 R16 K2 ["Size"]
       85 SETTABLEKS                       R3 R16 K18 ["Spacing"]
       87 GETIMPORT                        R17 K28 [Enum.VerticalAlignment.Center]
       89 SETTABLEKS                       R17 R16 K19 ["VerticalAlignment"]
       91 DUPTABLE                         R17 K32 [{"Label", "ValueSlider", "ValueLabel"}]
       92 GETUPVAL                         R18 2
       93 GETTABLEKS                       R18 R18 K14 ["createElement"]
       95 GETUPVAL                         R19 4
       96 DUPTABLE                         R20 K36 [{"LayoutOrder", "Size", "StyleModifier", "Text", "TextXAlignment"}]
       97 LOADN                            R21 1
       98 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      100 SETTABLEKS                       R11 R20 K2 ["Size"]
      102 SETTABLEKS                       R8 R20 K33 ["StyleModifier"]
      104 GETTABLEKS                       R21 R1 K34 ["Text"]
      106 SETTABLEKS                       R21 R20 K34 ["Text"]
      108 GETIMPORT                        R21 K37 [Enum.TextXAlignment.Left]
      110 SETTABLEKS                       R21 R20 K35 ["TextXAlignment"]
      112 CALL                             R18 2 1
      113 SETTABLEKS                       R18 R17 K29 ["Label"]
      115 GETUPVAL                         R18 2
      116 GETTABLEKS                       R18 R18 K14 ["createElement"]
      118 GETUPVAL                         R19 5
      119 DUPTABLE                         R20 K40 [{"Disabled", "LayoutOrder", "OnChanged", "Schema", "Size", "Value"}]
      120 SETTABLEKS                       R5 R20 K9 ["Disabled"]
      122 LOADN                            R21 2
      123 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      125 GETTABLEKS                       R21 R0 K41 ["valueChanged"]
      127 SETTABLEKS                       R21 R20 K38 ["OnChanged"]
      129 DUPTABLE                         R21 K47 [{"Type", "Min", "Max", "SnapIncrement", "ShowInput"}]
      130 LOADK                            R22 K48 ["Slider"]
      131 SETTABLEKS                       R22 R21 K42 ["Type"]
      133 GETTABLEKS                       R22 R1 K43 ["Min"]
      135 SETTABLEKS                       R22 R21 K43 ["Min"]
      137 GETTABLEKS                       R22 R1 K44 ["Max"]
      139 SETTABLEKS                       R22 R21 K44 ["Max"]
      141 GETTABLEKS                       R22 R1 K45 ["SnapIncrement"]
      143 SETTABLEKS                       R22 R21 K45 ["SnapIncrement"]
      145 LOADB                            R22 1
      146 SETTABLEKS                       R22 R21 K46 ["ShowInput"]
      148 SETTABLEKS                       R21 R20 K39 ["Schema"]
      150 SETTABLEKS                       R13 R20 K2 ["Size"]
      152 SETTABLEKS                       R9 R20 K11 ["Value"]
      154 CALL                             R18 2 1
      155 SETTABLEKS                       R18 R17 K30 ["ValueSlider"]
      157 GETTABLEKS                       R19 R1 K13 ["ShowValueLabel"]
      159 JUMPIFNOT                        R19 ; [+30]
      160 GETUPVAL                         R18 2
      161 GETTABLEKS                       R18 R18 K14 ["createElement"]
      163 GETUPVAL                         R19 4
      164 DUPTABLE                         R20 K50 [{"LayoutOrder", "Size", "StyleModifier", "Style", "Text", "TextXAlignment"}]
      165 LOADN                            R21 3
      166 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      168 GETIMPORT                        R21 K7 [UDim2.new]
      170 LOADN                            R22 0
      171 MOVE                             R23 R4
      172 LOADN                            R24 1
      173 LOADN                            R25 0
      174 CALL                             R21 4 1
      175 SETTABLEKS                       R21 R20 K2 ["Size"]
      177 SETTABLEKS                       R8 R20 K33 ["StyleModifier"]
      179 LOADK                            R21 K51 ["SubText"]
      180 SETTABLEKS                       R21 R20 K49 ["Style"]
      182 SETTABLEKS                       R10 R20 K34 ["Text"]
      184 GETIMPORT                        R21 K37 [Enum.TextXAlignment.Left]
      186 SETTABLEKS                       R21 R20 K35 ["TextXAlignment"]
      188 CALL                             R18 2 1
      189 JUMP                             ; [+1]
      190 LOADNIL                          R18
      191 SETTABLEKS                       R18 R17 K31 ["ValueLabel"]
      193 CALL                             R14 3 -1
      194 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["React"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["withContext"]
       29 GETTABLEKS                       R5 R1 K10 ["Style"]
       31 GETTABLEKS                       R5 R5 K11 ["Stylizer"]
       33 GETTABLEKS                       R6 R1 K12 ["UI"]
       35 GETTABLEKS                       R7 R6 K13 ["Pane"]
       37 GETTABLEKS                       R8 R6 K14 ["PropertyCell"]
       39 GETTABLEKS                       R9 R6 K15 ["Slider"]
       41 GETTABLEKS                       R10 R6 K16 ["TextLabel"]
       43 GETTABLEKS                       R11 R1 K17 ["Util"]
       45 GETTABLEKS                       R12 R11 K18 ["StyleModifier"]
       47 GETTABLEKS                       R13 R11 K19 ["prioritize"]
       49 GETTABLEKS                       R14 R2 K20 ["PureComponent"]
       51 LOADK                            R16 K21 ["SliderSetting"]
       52 NAMECALL                         R14 R14 K22 ["extend"]
       54 CALL                             R14 2 1
       55 DUPTABLE                         R15 K26 [{"Disabled", "ShowValueLabel", "SnapIncrement"}]
       56 LOADB                            R16 0
       57 SETTABLEKS                       R16 R15 K23 ["Disabled"]
       59 LOADB                            R16 1
       60 SETTABLEKS                       R16 R15 K24 ["ShowValueLabel"]
       62 LOADN                            R16 1
       63 SETTABLEKS                       R16 R15 K25 ["SnapIncrement"]
       65 SETTABLEKS                       R15 R14 K27 ["defaultProps"]
       67 DUPCLOSURE                       R15 K28 [PROTO_2]
       68 SETTABLEKS                       R15 R14 K29 ["init"]
       70 DUPCLOSURE                       R15 K30 [PROTO_3]
       71 CAPTURE                          VAL R13
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R8
       77 SETTABLEKS                       R15 R14 K31 ["render"]
       79 MOVE                             R15 R4
       80 DUPTABLE                         R16 K32 [{"Stylizer"}]
       81 SETTABLEKS                       R5 R16 K11 ["Stylizer"]
       83 CALL                             R15 1 1
       84 MOVE                             R16 R14
       85 CALL                             R15 1 -1
       86 RETURN                           R15 -1
