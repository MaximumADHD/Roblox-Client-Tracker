PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["textInputRef"]
        6 GETTABLEKS                       R2 R0 K2 ["props"]
        8 GETTABLEKS                       R1 R2 K3 ["Value"]
       10 SETTABLEKS                       R1 R0 K4 ["lastValidValue"]
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["OnValueChanged"]
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["props"]
        9 GETTABLEKS                       R2 R3 K1 ["OnValueChanged"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["OnValueChanged"]
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["props"]
        9 GETTABLEKS                       R2 R3 K1 ["OnValueChanged"]
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
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["CustomValidation"]
       10 JUMPIFNOT                        R2 ; [+14]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K3 ["OnValueChanged"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K4 ["OnInputEnded"]
       19 JUMPIFNOT                        R2 ; [+36]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K4 ["OnInputEnded"]
       23 CALL                             R2 0 0
       24 JUMP                             ; [+31]
       25 JUMPIFEQKNIL                     R1 ; [+30]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K3 ["OnValueChanged"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K5 ["Max"]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K6 ["Min"]
       36 FASTCALL2                        MATH_MAX R6 R1 ; [+4]
       38 MOVE                             R7 R1
       39 GETIMPORT                        R5 K9 [math.max]
       41 CALL                             R5 2 1
       42 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       44 GETIMPORT                        R3 K11 [math.min]
       46 CALL                             R3 2 1
       47 CALL                             R2 1 0
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R2 R3 K4 ["OnInputEnded"]
       51 JUMPIFNOT                        R2 ; [+4]
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R2 R3 K4 ["OnInputEnded"]
       55 CALL                             R2 0 0
       56 GETUPVAL                         R2 1
       57 CALL                             R2 0 1
       58 JUMPIFNOT                        R2 ; [+18]
       59 GETUPVAL                         R4 2
       60 GETTABLEKS                       R3 R4 K12 ["textInputRef"]
       62 GETTABLEKS                       R2 R3 K13 ["current"]
       64 JUMPIFNOT                        R2 ; [+12]
       65 GETUPVAL                         R3 3
       66 MOVE                             R4 R1
       67 JUMPIF                           R4 ; [+3]
       68 GETUPVAL                         R5 2
       69 GETTABLEKS                       R4 R5 K14 ["lastValidValue"]
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R5 R6 K15 ["InputPrecision"]
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
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K7 ["lastValidValue"]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R4 R5 K8 ["InputPrecision"]
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 LOADNIL                          R2
        3 GETUPVAL                         R3 0
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+35]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["join"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K2 ["omit"]
       12 MOVE                             R5 R1
       13 NEWTABLE                         R6 0 4
       15 LOADK                            R7 K3 ["OnValueChanged"]
       16 LOADK                            R8 K4 ["InputPrecision"]
       17 LOADK                            R9 K5 ["ShowInput"]
       18 LOADK                            R10 K6 ["Value"]
       19 SETLIST                          R6 R7 4 [1]
       21 CALL                             R4 2 1
       22 DUPTABLE                         R5 K11 [{"HideLowerKnob", "LowerRangeValue", "UpperRangeValue", "OnValuesChanged"}]
       23 LOADB                            R6 1
       24 SETTABLEKS                       R6 R5 K7 ["HideLowerKnob"]
       26 GETTABLEKS                       R6 R1 K12 ["Min"]
       28 SETTABLEKS                       R6 R5 K8 ["LowerRangeValue"]
       30 GETTABLEKS                       R6 R1 K6 ["Value"]
       32 SETTABLEKS                       R6 R5 K9 ["UpperRangeValue"]
       34 NEWCLOSURE                       R6 P0
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R6 R5 K10 ["OnValuesChanged"]
       38 CALL                             R3 2 1
       39 MOVE                             R2 R3
       40 JUMP                             ; [+29]
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R3 R4 K13 ["JoinDictionaries"]
       44 GETUPVAL                         R5 2
       45 GETTABLEKS                       R4 R5 K14 ["RemoveFromDictionary"]
       47 MOVE                             R5 R1
       48 LOADK                            R6 K5 ["ShowInput"]
       49 LOADK                            R7 K6 ["Value"]
       50 LOADK                            R8 K3 ["OnValueChanged"]
       51 CALL                             R4 4 1
       52 DUPTABLE                         R5 K11 [{"HideLowerKnob", "LowerRangeValue", "UpperRangeValue", "OnValuesChanged"}]
       53 LOADB                            R6 1
       54 SETTABLEKS                       R6 R5 K7 ["HideLowerKnob"]
       56 GETTABLEKS                       R6 R1 K12 ["Min"]
       58 SETTABLEKS                       R6 R5 K8 ["LowerRangeValue"]
       60 GETTABLEKS                       R6 R1 K6 ["Value"]
       62 SETTABLEKS                       R6 R5 K9 ["UpperRangeValue"]
       64 NEWCLOSURE                       R6 P1
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R6 R5 K10 ["OnValuesChanged"]
       68 CALL                             R3 2 1
       69 MOVE                             R2 R3
       70 GETTABLEKS                       R3 R1 K5 ["ShowInput"]
       72 JUMPIFNOT                        R3 ; [+9]
       73 GETIMPORT                        R3 K17 [UDim2.new]
       75 LOADN                            R4 1
       76 LOADN                            R5 196
       77 LOADN                            R6 1
       78 LOADN                            R7 0
       79 CALL                             R3 4 1
       80 SETTABLEKS                       R3 R2 K18 ["Size"]
       82 GETUPVAL                         R4 3
       83 GETTABLEKS                       R3 R4 K19 ["createElement"]
       85 GETUPVAL                         R4 4
       86 MOVE                             R5 R2
       87 CALL                             R3 2 1
       88 GETTABLEKS                       R4 R1 K5 ["ShowInput"]
       90 JUMPIFNOT                        R4 ; [+103]
       91 GETUPVAL                         R4 5
       92 GETTABLEKS                       R5 R1 K6 ["Value"]
       94 GETUPVAL                         R7 0
       95 CALL                             R7 0 1
       96 JUMPIFNOT                        R7 ; [+3]
       97 GETTABLEKS                       R6 R1 K4 ["InputPrecision"]
       99 JUMP                             ; [+3]
      100 GETTABLEKS                       R7 R1 K4 ["InputPrecision"]
      102 ORK                              R6 R7 K20 [2]
      103 CALL                             R4 2 1
      104 GETUPVAL                         R5 0
      105 CALL                             R5 0 1
      106 JUMPIFNOT                        R5 ; [+4]
      107 GETTABLEKS                       R5 R1 K6 ["Value"]
      109 SETTABLEKS                       R5 R0 K21 ["lastValidInput"]
      111 GETUPVAL                         R6 3
      112 GETTABLEKS                       R5 R6 K19 ["createElement"]
      114 GETUPVAL                         R6 6
      115 DUPTABLE                         R7 K26 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Spacing", "Size"}]
      116 GETIMPORT                        R8 K29 [Enum.HorizontalAlignment.Left]
      118 SETTABLEKS                       R8 R7 K22 ["HorizontalAlignment"]
      120 GETIMPORT                        R8 K32 [Enum.FillDirection.Horizontal]
      122 SETTABLEKS                       R8 R7 K23 ["Layout"]
      124 GETUPVAL                         R9 7
      125 CALL                             R9 0 1
      126 JUMPIFNOT                        R9 ; [+3]
      127 GETTABLEKS                       R8 R1 K24 ["LayoutOrder"]
      129 JUMP                             ; [+1]
      130 LOADNIL                          R8
      131 SETTABLEKS                       R8 R7 K24 ["LayoutOrder"]
      133 LOADN                            R8 10
      134 SETTABLEKS                       R8 R7 K25 ["Spacing"]
      136 GETTABLEKS                       R8 R1 K18 ["Size"]
      138 SETTABLEKS                       R8 R7 K18 ["Size"]
      140 DUPTABLE                         R8 K35 [{"Input", "Slider"}]
      141 GETUPVAL                         R10 3
      142 GETTABLEKS                       R9 R10 K19 ["createElement"]
      144 GETUPVAL                         R10 8
      145 DUPTABLE                         R11 K42 [{"Disabled", "ForwardRef", "Size", "Text", "OnFocusLost", "OnFormatText", "StyleModifier"}]
      146 GETTABLEKS                       R12 R1 K36 ["Disabled"]
      148 SETTABLEKS                       R12 R11 K36 ["Disabled"]
      150 GETTABLEKS                       R12 R0 K43 ["textInputRef"]
      152 SETTABLEKS                       R12 R11 K37 ["ForwardRef"]
      154 GETIMPORT                        R12 K17 [UDim2.new]
      156 LOADN                            R13 0
      157 LOADN                            R14 50
      158 LOADN                            R15 1
      159 LOADN                            R16 0
      160 CALL                             R12 4 1
      161 SETTABLEKS                       R12 R11 K18 ["Size"]
      163 SETTABLEKS                       R4 R11 K38 ["Text"]
      165 NEWCLOSURE                       R12 P2
      166 CAPTURE                          VAL R1
      167 CAPTURE                          UPVAL U0
      168 CAPTURE                          VAL R0
      169 CAPTURE                          UPVAL U5
      170 SETTABLEKS                       R12 R11 K39 ["OnFocusLost"]
      172 GETUPVAL                         R13 0
      173 CALL                             R13 0 1
      174 JUMPIFNOT                        R13 ; [+5]
      175 NEWCLOSURE                       R12 P3
      176 CAPTURE                          VAL R0
      177 CAPTURE                          UPVAL U5
      178 CAPTURE                          VAL R1
      179 JUMP                             ; [+1]
      180 LOADNIL                          R12
      181 SETTABLEKS                       R12 R11 K40 ["OnFormatText"]
      183 GETTABLEKS                       R12 R1 K41 ["StyleModifier"]
      185 SETTABLEKS                       R12 R11 K41 ["StyleModifier"]
      187 CALL                             R9 2 1
      188 SETTABLEKS                       R9 R8 K33 ["Input"]
      190 SETTABLEKS                       R3 R8 K34 ["Slider"]
      192 CALL                             R5 3 -1
      193 RETURN                           R5 -1
      194 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Immutable"]
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Util"]
       27 GETTABLEKS                       R5 R6 K10 ["Typecheck"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Util"]
       34 GETTABLEKS                       R6 R7 K11 ["numberToString"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R8 R0 K4 ["Parent"]
       41 GETTABLEKS                       R7 R8 K12 ["Dash"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R0 K2 ["UI"]
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R10 R7 K13 ["Components"]
       50 GETTABLEKS                       R9 R10 K14 ["Pane"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R11 R7 K13 ["Components"]
       57 GETTABLEKS                       R10 R11 K15 ["RangeSlider"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R12 R7 K13 ["Components"]
       64 GETTABLEKS                       R11 R12 K16 ["TextInput"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K6 [require]
       69 GETTABLEKS                       R13 R0 K17 ["SharedFlags"]
       71 GETTABLEKS                       R12 R13 K18 ["getFFlagDevFrameworkSliderInputValidation"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K6 [require]
       76 GETTABLEKS                       R14 R0 K17 ["SharedFlags"]
       78 GETTABLEKS                       R13 R14 K19 ["getFFlagDevFrameworkSliderFixLayoutOrder"]
       80 CALL                             R12 1 1
       81 GETTABLEKS                       R13 R1 K20 ["PureComponent"]
       83 LOADK                            R15 K21 ["Slider"]
       84 NAMECALL                         R13 R13 K22 ["extend"]
       86 CALL                             R13 2 1
       87 GETTABLEKS                       R14 R4 K23 ["wrap"]
       89 MOVE                             R15 R13
       90 GETIMPORT                        R16 K1 [script]
       92 CALL                             R14 2 0
       93 MOVE                             R14 R11
       94 CALL                             R14 0 1
       95 JUMPIFNOT                        R14 ; [+10]
       96 DUPTABLE                         R14 K25 [{"InputPrecision"}]
       97 LOADN                            R15 3
       98 SETTABLEKS                       R15 R14 K24 ["InputPrecision"]
      100 SETTABLEKS                       R14 R13 K26 ["defaultProps"]
      102 DUPCLOSURE                       R14 K27 [PROTO_0]
      103 CAPTURE                          VAL R1
      104 SETTABLEKS                       R14 R13 K28 ["init"]
      106 DUPCLOSURE                       R14 K29 [PROTO_5]
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R10
      116 SETTABLEKS                       R14 R13 K30 ["render"]
      118 RETURN                           R13 1
