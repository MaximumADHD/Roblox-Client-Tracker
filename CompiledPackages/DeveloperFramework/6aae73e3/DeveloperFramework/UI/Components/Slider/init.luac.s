PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["textInputRef"]
        6 GETTABLEKS                       R1 R0 K2 ["props"]
        8 GETTABLEKS                       R1 R1 K3 ["Value"]
       10 SETTABLEKS                       R1 R0 K4 ["lastValidValue"]
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["OnValueChanged"]
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["props"]
        9 GETTABLEKS                       R2 R2 K1 ["OnValueChanged"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["OnValueChanged"]
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["props"]
        9 GETTABLEKS                       R2 R2 K1 ["OnValueChanged"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_3:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 FASTCALL1                        TONUMBER R0 ; [+3]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K1 [tonumber]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["CustomValidation"]
       10 JUMPIFNOT                        R2 ; [+14]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["OnValueChanged"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K4 ["OnInputEnded"]
       19 JUMPIFNOT                        R2 ; [+36]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K4 ["OnInputEnded"]
       23 CALL                             R2 0 0
       24 JUMP                             ; [+31]
       25 JUMPIFEQKNIL                     R1 ; [+30]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K3 ["OnValueChanged"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K5 ["Max"]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K6 ["Min"]
       36 FASTCALL2                        MATH_MAX R6 R1 ; [+4]
       38 MOVE                             R7 R1
       39 GETIMPORT                        R5 K9 [math.max]
       41 CALL                             R5 2 1
       42 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       44 GETIMPORT                        R3 K11 [math.min]
       46 CALL                             R3 2 1
       47 CALL                             R2 1 0
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R2 R2 K4 ["OnInputEnded"]
       51 JUMPIFNOT                        R2 ; [+4]
       52 GETUPVAL                         R2 0
       53 GETTABLEKS                       R2 R2 K4 ["OnInputEnded"]
       55 CALL                             R2 0 0
       56 GETUPVAL                         R2 1
       57 CALL                             R2 0 1
       58 JUMPIFNOT                        R2 ; [+18]
       59 GETUPVAL                         R2 2
       60 GETTABLEKS                       R2 R2 K12 ["textInputRef"]
       62 GETTABLEKS                       R2 R2 K13 ["current"]
       64 JUMPIFNOT                        R2 ; [+12]
       65 GETUPVAL                         R3 3
       66 MOVE                             R4 R1
       67 JUMPIF                           R4 ; [+3]
       68 GETUPVAL                         R4 2
       69 GETTABLEKS                       R4 R4 K14 ["lastValidValue"]
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R5 R5 K15 ["InputPrecision"]
       74 CALL                             R3 2 1
       75 SETTABLEKS                       R3 R2 K16 ["Text"]
       77 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^%s*[-]?[0-9]*[.]?[0-9]*%s*$"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+13]
        6 JUMPIFEQKS                       R1 K4 [""] ; [+11]
        8 FASTCALL1                        TONUMBER R1 ; [+3]
        9 MOVE                             R3 R1
       10 GETIMPORT                        R2 K6 [tonumber]
       12 CALL                             R2 1 1
       13 JUMPIFEQKNIL                     R2 ; [+4]
       15 GETUPVAL                         R3 0
       16 SETTABLEKS                       R2 R3 K7 ["lastValidValue"]
       18 RETURN                           R1 1
       19 GETUPVAL                         R2 1
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K7 ["lastValidValue"]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K8 ["InputPrecision"]
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 LOADNIL                          R2
        3 GETUPVAL                         R3 0
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+32]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["join"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["omit"]
       12 MOVE                             R5 R1
       13 NEWTABLE                         R6 0 4
       15 LOADK                            R7 K3 ["OnValueChanged"]
       16 LOADK                            R8 K4 ["InputPrecision"]
       17 LOADK                            R9 K5 ["ShowInput"]
       18 LOADK                            R10 K6 ["Value"]
       19 SETLIST                          R6 R7 4 [1]
       21 CALL                             R4 2 1
       22 DUPTABLE                         R5 K12 [{["HideLowerKnob"] = True, ["LowerRangeValue"], ["UpperRangeValue"], ["OnValuesChanged"]}]
       23 GETTABLEKS                       R6 R1 K13 ["Min"]
       25 SETTABLEKS                       R6 R5 K9 ["LowerRangeValue"]
       27 GETTABLEKS                       R6 R1 K6 ["Value"]
       29 SETTABLEKS                       R6 R5 K10 ["UpperRangeValue"]
       31 NEWCLOSURE                       R6 P0
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R6 R5 K11 ["OnValuesChanged"]
       35 CALL                             R3 2 1
       36 MOVE                             R2 R3
       37 JUMP                             ; [+26]
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K14 ["JoinDictionaries"]
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R4 R4 K15 ["RemoveFromDictionary"]
       44 MOVE                             R5 R1
       45 LOADK                            R6 K5 ["ShowInput"]
       46 LOADK                            R7 K6 ["Value"]
       47 LOADK                            R8 K3 ["OnValueChanged"]
       48 CALL                             R4 4 1
       49 DUPTABLE                         R5 K12 [{["HideLowerKnob"] = True, ["LowerRangeValue"], ["UpperRangeValue"], ["OnValuesChanged"]}]
       50 GETTABLEKS                       R6 R1 K13 ["Min"]
       52 SETTABLEKS                       R6 R5 K9 ["LowerRangeValue"]
       54 GETTABLEKS                       R6 R1 K6 ["Value"]
       56 SETTABLEKS                       R6 R5 K10 ["UpperRangeValue"]
       58 NEWCLOSURE                       R6 P1
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R6 R5 K11 ["OnValuesChanged"]
       62 CALL                             R3 2 1
       63 MOVE                             R2 R3
       64 GETTABLEKS                       R3 R1 K5 ["ShowInput"]
       66 JUMPIFNOT                        R3 ; [+9]
       67 GETIMPORT                        R3 K18 [UDim2.new]
       69 LOADN                            R4 1
       70 LOADN                            R5 -60
       71 LOADN                            R6 1
       72 LOADN                            R7 0
       73 CALL                             R3 4 1
       74 SETTABLEKS                       R3 R2 K19 ["Size"]
       76 GETUPVAL                         R3 3
       77 GETTABLEKS                       R3 R3 K20 ["createElement"]
       79 GETUPVAL                         R4 4
       80 MOVE                             R5 R2
       81 CALL                             R3 2 1
       82 GETTABLEKS                       R4 R1 K5 ["ShowInput"]
       84 JUMPIFNOT                        R4 ; [+95]
       85 GETUPVAL                         R4 5
       86 GETTABLEKS                       R5 R1 K6 ["Value"]
       88 GETUPVAL                         R7 0
       89 CALL                             R7 0 1
       90 JUMPIFNOT                        R7 ; [+3]
       91 GETTABLEKS                       R6 R1 K4 ["InputPrecision"]
       93 JUMP                             ; [+3]
       94 GETTABLEKS                       R7 R1 K4 ["InputPrecision"]
       96 ORK                              R6 R7 K21 [2]
       97 CALL                             R4 2 1
       98 GETUPVAL                         R5 0
       99 CALL                             R5 0 1
      100 JUMPIFNOT                        R5 ; [+4]
      101 GETTABLEKS                       R5 R1 K6 ["Value"]
      103 SETTABLEKS                       R5 R0 K22 ["lastValidInput"]
      105 GETUPVAL                         R5 3
      106 GETTABLEKS                       R5 R5 K20 ["createElement"]
      108 GETUPVAL                         R6 6
      109 DUPTABLE                         R7 K28 [{["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Spacing"] = 10, ["Size"]}]
      110 GETIMPORT                        R8 K31 [Enum.HorizontalAlignment.Left]
      112 SETTABLEKS                       R8 R7 K23 ["HorizontalAlignment"]
      114 GETIMPORT                        R8 K34 [Enum.FillDirection.Horizontal]
      116 SETTABLEKS                       R8 R7 K24 ["Layout"]
      118 GETTABLEKS                       R8 R1 K25 ["LayoutOrder"]
      120 SETTABLEKS                       R8 R7 K25 ["LayoutOrder"]
      122 GETTABLEKS                       R8 R1 K19 ["Size"]
      124 SETTABLEKS                       R8 R7 K19 ["Size"]
      126 DUPTABLE                         R8 K37 [{"Input", "Slider"}]
      127 GETUPVAL                         R9 3
      128 GETTABLEKS                       R9 R9 K20 ["createElement"]
      130 GETUPVAL                         R10 7
      131 DUPTABLE                         R11 K44 [{"Disabled", "ForwardRef", "Size", "Text", "OnFocusLost", "OnFormatText", "StyleModifier"}]
      132 GETTABLEKS                       R12 R1 K38 ["Disabled"]
      134 SETTABLEKS                       R12 R11 K38 ["Disabled"]
      136 GETTABLEKS                       R12 R0 K45 ["textInputRef"]
      138 SETTABLEKS                       R12 R11 K39 ["ForwardRef"]
      140 GETIMPORT                        R12 K18 [UDim2.new]
      142 LOADN                            R13 0
      143 LOADN                            R14 50
      144 LOADN                            R15 1
      145 LOADN                            R16 0
      146 CALL                             R12 4 1
      147 SETTABLEKS                       R12 R11 K19 ["Size"]
      149 SETTABLEKS                       R4 R11 K40 ["Text"]
      151 NEWCLOSURE                       R12 P2
      152 CAPTURE                          VAL R1
      153 CAPTURE                          UPVAL U0
      154 CAPTURE                          VAL R0
      155 CAPTURE                          UPVAL U5
      156 SETTABLEKS                       R12 R11 K41 ["OnFocusLost"]
      158 GETUPVAL                         R13 0
      159 CALL                             R13 0 1
      160 JUMPIFNOT                        R13 ; [+5]
      161 NEWCLOSURE                       R12 P3
      162 CAPTURE                          VAL R0
      163 CAPTURE                          UPVAL U5
      164 CAPTURE                          VAL R1
      165 JUMP                             ; [+1]
      166 LOADNIL                          R12
      167 SETTABLEKS                       R12 R11 K42 ["OnFormatText"]
      169 GETTABLEKS                       R12 R1 K43 ["StyleModifier"]
      171 SETTABLEKS                       R12 R11 K43 ["StyleModifier"]
      173 CALL                             R9 2 1
      174 SETTABLEKS                       R9 R8 K35 ["Input"]
      176 SETTABLEKS                       R3 R8 K36 ["Slider"]
      178 CALL                             R5 3 -1
      179 RETURN                           R5 -1
      180 RETURN                           R3 1

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
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Immutable"]
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Util"]
       27 GETTABLEKS                       R5 R5 K10 ["Typecheck"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Util"]
       34 GETTABLEKS                       R6 R6 K11 ["numberToString"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K4 ["Parent"]
       41 GETTABLEKS                       R7 R7 K12 ["Dash"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R0 K2 ["UI"]
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R7 K13 ["Components"]
       50 GETTABLEKS                       R9 R9 K14 ["Pane"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R10 R7 K13 ["Components"]
       57 GETTABLEKS                       R10 R10 K15 ["RangeSlider"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R11 R7 K13 ["Components"]
       64 GETTABLEKS                       R11 R11 K16 ["TextInput"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K6 [require]
       69 GETTABLEKS                       R12 R0 K17 ["SharedFlags"]
       71 GETTABLEKS                       R12 R12 K18 ["getFFlagDevFrameworkSliderInputValidation"]
       73 CALL                             R11 1 1
       74 GETTABLEKS                       R12 R1 K19 ["PureComponent"]
       76 LOADK                            R14 K20 ["Slider"]
       77 NAMECALL                         R12 R12 K21 ["extend"]
       79 CALL                             R12 2 1
       80 GETTABLEKS                       R13 R4 K22 ["wrap"]
       82 MOVE                             R14 R12
       83 GETIMPORT                        R15 K1 [script]
       85 CALL                             R13 2 0
       86 MOVE                             R13 R11
       87 CALL                             R13 0 1
       88 JUMPIFNOT                        R13 ; [+7]
       89 DUPTABLE                         R13 K25 [{["InputPrecision"] = 3}]
       90 SETTABLEKS                       R13 R12 K26 ["defaultProps"]
       92 DUPCLOSURE                       R13 K27 [PROTO_0]
       93 CAPTURE                          VAL R1
       94 SETTABLEKS                       R13 R12 K28 ["init"]
       96 DUPCLOSURE                       R13 K29 [PROTO_5]
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R10
      105 SETTABLEKS                       R13 R12 K30 ["render"]
      107 RETURN                           R12 1
