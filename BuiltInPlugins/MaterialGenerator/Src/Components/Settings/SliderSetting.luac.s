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
        2 DUPTABLE                         R2 K6 [{["HorizontalSpacing"] = 16, ["Size"], ["ValueLabelWidth"] = 30}]
        3 GETIMPORT                        R3 K9 [UDim2.new]
        5 LOADN                            R4 1
        6 LOADN                            R5 0
        7 LOADN                            R6 0
        8 LOADN                            R7 30
        9 CALL                             R3 4 1
       10 SETTABLEKS                       R3 R2 K3 ["Size"]
       12 GETTABLEKS                       R3 R2 K1 ["HorizontalSpacing"]
       14 GETTABLEKS                       R5 R2 K4 ["ValueLabelWidth"]
       16 ORK                              R4 R5 K10 [0]
       17 GETTABLEKS                       R5 R1 K11 ["Disabled"]
       19 GETTABLEKS                       R7 R1 K12 ["LabelWidth"]
       21 ORK                              R6 R7 K10 [0]
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R8 R1 K3 ["Size"]
       25 GETTABLEKS                       R9 R2 K3 ["Size"]
       27 CALL                             R7 2 1
       28 JUMPIFNOT                        R5 ; [+4]
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K11 ["Disabled"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R8
       34 GETTABLEKS                       R9 R1 K13 ["Value"]
       36 GETTABLEKS                       R10 R0 K14 ["formatValue"]
       38 MOVE                             R11 R9
       39 CALL                             R10 1 1
       40 GETIMPORT                        R11 K9 [UDim2.new]
       42 LOADN                            R12 0
       43 MOVE                             R13 R6
       44 LOADN                            R14 1
       45 LOADN                            R15 0
       46 CALL                             R11 4 1
       47 ADD                              R12 R6 R3
       48 GETTABLEKS                       R13 R1 K15 ["ShowValueLabel"]
       50 JUMPIFNOT                        R13 ; [+2]
       51 ADD                              R13 R4 R3
       52 ADD                              R12 R12 R13
       53 GETIMPORT                        R13 K9 [UDim2.new]
       55 LOADN                            R14 1
       56 MINUS                            R15 R12
       57 LOADN                            R16 1
       58 LOADN                            R17 0
       59 CALL                             R13 4 1
       60 GETUPVAL                         R14 2
       61 GETTABLEKS                       R14 R14 K16 ["createElement"]
       63 GETUPVAL                         R15 3
       64 DUPTABLE                         R16 K22 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
       65 GETIMPORT                        R17 K25 [Enum.HorizontalAlignment.Left]
       67 SETTABLEKS                       R17 R16 K17 ["HorizontalAlignment"]
       69 GETIMPORT                        R17 K28 [Enum.FillDirection.Horizontal]
       71 SETTABLEKS                       R17 R16 K18 ["Layout"]
       73 GETTABLEKS                       R17 R1 K19 ["LayoutOrder"]
       75 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
       77 SETTABLEKS                       R7 R16 K3 ["Size"]
       79 SETTABLEKS                       R3 R16 K20 ["Spacing"]
       81 GETIMPORT                        R17 K30 [Enum.VerticalAlignment.Center]
       83 SETTABLEKS                       R17 R16 K21 ["VerticalAlignment"]
       85 DUPTABLE                         R17 K34 [{"Label", "ValueSlider", "ValueLabel"}]
       86 GETUPVAL                         R18 2
       87 GETTABLEKS                       R18 R18 K16 ["createElement"]
       89 GETUPVAL                         R19 4
       90 DUPTABLE                         R20 K39 [{["LayoutOrder"] = 1, ["Size"], ["StyleModifier"], ["Text"], ["TextXAlignment"]}]
       91 SETTABLEKS                       R11 R20 K3 ["Size"]
       93 SETTABLEKS                       R8 R20 K36 ["StyleModifier"]
       95 GETTABLEKS                       R21 R1 K37 ["Text"]
       97 SETTABLEKS                       R21 R20 K37 ["Text"]
       99 GETIMPORT                        R21 K40 [Enum.TextXAlignment.Left]
      101 SETTABLEKS                       R21 R20 K38 ["TextXAlignment"]
      103 CALL                             R18 2 1
      104 SETTABLEKS                       R18 R17 K31 ["Label"]
      106 GETUPVAL                         R18 2
      107 GETTABLEKS                       R18 R18 K16 ["createElement"]
      109 GETUPVAL                         R19 5
      110 DUPTABLE                         R20 K44 [{["Disabled"], ["LayoutOrder"] = 2, ["OnChanged"], ["Schema"], ["Size"], ["Value"]}]
      111 SETTABLEKS                       R5 R20 K11 ["Disabled"]
      113 GETTABLEKS                       R21 R0 K45 ["valueChanged"]
      115 SETTABLEKS                       R21 R20 K42 ["OnChanged"]
      117 DUPTABLE                         R21 K53 [{["Type"] = "Slider", ["Min"], ["Max"], ["SnapIncrement"], ["ShowInput"] = True}]
      118 GETTABLEKS                       R22 R1 K48 ["Min"]
      120 SETTABLEKS                       R22 R21 K48 ["Min"]
      122 GETTABLEKS                       R22 R1 K49 ["Max"]
      124 SETTABLEKS                       R22 R21 K49 ["Max"]
      126 GETTABLEKS                       R22 R1 K50 ["SnapIncrement"]
      128 SETTABLEKS                       R22 R21 K50 ["SnapIncrement"]
      130 SETTABLEKS                       R21 R20 K43 ["Schema"]
      132 SETTABLEKS                       R13 R20 K3 ["Size"]
      134 SETTABLEKS                       R9 R20 K13 ["Value"]
      136 CALL                             R18 2 1
      137 SETTABLEKS                       R18 R17 K32 ["ValueSlider"]
      139 GETTABLEKS                       R19 R1 K15 ["ShowValueLabel"]
      141 JUMPIFNOT                        R19 ; [+24]
      142 GETUPVAL                         R18 2
      143 GETTABLEKS                       R18 R18 K16 ["createElement"]
      145 GETUPVAL                         R19 4
      146 DUPTABLE                         R20 K57 [{["LayoutOrder"] = 3, ["Size"], ["StyleModifier"], ["Style"] = "SubText", ["Text"], ["TextXAlignment"]}]
      147 GETIMPORT                        R21 K9 [UDim2.new]
      149 LOADN                            R22 0
      150 MOVE                             R23 R4
      151 LOADN                            R24 1
      152 LOADN                            R25 0
      153 CALL                             R21 4 1
      154 SETTABLEKS                       R21 R20 K3 ["Size"]
      156 SETTABLEKS                       R8 R20 K36 ["StyleModifier"]
      158 SETTABLEKS                       R10 R20 K37 ["Text"]
      160 GETIMPORT                        R21 K40 [Enum.TextXAlignment.Left]
      162 SETTABLEKS                       R21 R20 K38 ["TextXAlignment"]
      164 CALL                             R18 2 1
      165 JUMP                             ; [+1]
      166 LOADNIL                          R18
      167 SETTABLEKS                       R18 R17 K33 ["ValueLabel"]
      169 CALL                             R14 3 -1
      170 RETURN                           R14 -1

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
       55 DUPTABLE                         R15 K29 [{["Disabled"] = False, ["ShowValueLabel"] = True, ["SnapIncrement"] = 1}]
       56 SETTABLEKS                       R15 R14 K30 ["defaultProps"]
       58 DUPCLOSURE                       R15 K31 [PROTO_2]
       59 SETTABLEKS                       R15 R14 K32 ["init"]
       61 DUPCLOSURE                       R15 K33 [PROTO_3]
       62 CAPTURE                          VAL R13
       63 CAPTURE                          VAL R12
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R8
       68 SETTABLEKS                       R15 R14 K34 ["render"]
       70 MOVE                             R15 R4
       71 DUPTABLE                         R16 K35 [{"Stylizer"}]
       72 SETTABLEKS                       R5 R16 K11 ["Stylizer"]
       74 CALL                             R15 1 1
       75 MOVE                             R16 R14
       76 CALL                             R15 1 -1
       77 RETURN                           R15 -1
