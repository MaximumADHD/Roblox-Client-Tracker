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
       57 GETTABLEKS                       R2 R2 K12 ["textInputRef"]
       59 GETTABLEKS                       R2 R2 K13 ["current"]
       61 JUMPIFNOT                        R2 ; [+12]
       62 GETUPVAL                         R3 2
       63 MOVE                             R4 R1
       64 JUMPIF                           R4 ; [+3]
       65 GETUPVAL                         R4 1
       66 GETTABLEKS                       R4 R4 K14 ["lastValidValue"]
       68 GETUPVAL                         R5 0
       69 GETTABLEKS                       R5 R5 K15 ["InputPrecision"]
       71 CALL                             R3 2 1
       72 SETTABLEKS                       R3 R2 K16 ["Text"]
       74 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["omit"]
        8 MOVE                             R4 R1
        9 NEWTABLE                         R5 0 4
       11 LOADK                            R6 K3 ["OnValueChanged"]
       12 LOADK                            R7 K4 ["InputPrecision"]
       13 LOADK                            R8 K5 ["ShowInput"]
       14 LOADK                            R9 K6 ["Value"]
       15 SETLIST                          R5 R6 4 [1]
       17 CALL                             R3 2 1
       18 DUPTABLE                         R4 K12 [{["HideLowerKnob"] = True, ["LowerRangeValue"], ["UpperRangeValue"], ["OnValuesChanged"]}]
       19 GETTABLEKS                       R5 R1 K13 ["Min"]
       21 SETTABLEKS                       R5 R4 K9 ["LowerRangeValue"]
       23 GETTABLEKS                       R5 R1 K6 ["Value"]
       25 SETTABLEKS                       R5 R4 K10 ["UpperRangeValue"]
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R5 R4 K11 ["OnValuesChanged"]
       31 CALL                             R2 2 1
       32 GETTABLEKS                       R3 R1 K5 ["ShowInput"]
       34 JUMPIFNOT                        R3 ; [+9]
       35 GETIMPORT                        R3 K16 [UDim2.new]
       37 LOADN                            R4 1
       38 LOADN                            R5 -60
       39 LOADN                            R6 1
       40 LOADN                            R7 0
       41 CALL                             R3 4 1
       42 SETTABLEKS                       R3 R2 K17 ["Size"]
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R3 R3 K18 ["createElement"]
       47 GETUPVAL                         R4 2
       48 MOVE                             R5 R2
       49 CALL                             R3 2 1
       50 GETTABLEKS                       R4 R1 K5 ["ShowInput"]
       52 JUMPIFNOT                        R4 ; [+75]
       53 GETUPVAL                         R4 3
       54 GETTABLEKS                       R5 R1 K6 ["Value"]
       56 GETTABLEKS                       R6 R1 K4 ["InputPrecision"]
       58 CALL                             R4 2 1
       59 GETUPVAL                         R5 1
       60 GETTABLEKS                       R5 R5 K18 ["createElement"]
       62 GETUPVAL                         R6 4
       63 DUPTABLE                         R7 K24 [{["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Spacing"] = 10, ["Size"]}]
       64 GETIMPORT                        R8 K27 [Enum.HorizontalAlignment.Left]
       66 SETTABLEKS                       R8 R7 K19 ["HorizontalAlignment"]
       68 GETIMPORT                        R8 K30 [Enum.FillDirection.Horizontal]
       70 SETTABLEKS                       R8 R7 K20 ["Layout"]
       72 GETTABLEKS                       R8 R1 K21 ["LayoutOrder"]
       74 SETTABLEKS                       R8 R7 K21 ["LayoutOrder"]
       76 GETTABLEKS                       R8 R1 K17 ["Size"]
       78 SETTABLEKS                       R8 R7 K17 ["Size"]
       80 DUPTABLE                         R8 K33 [{"Input", "Slider"}]
       81 GETUPVAL                         R9 1
       82 GETTABLEKS                       R9 R9 K18 ["createElement"]
       84 GETUPVAL                         R10 5
       85 DUPTABLE                         R11 K40 [{"Disabled", "ForwardRef", "Size", "Text", "OnFocusLost", "OnFormatText", "StyleModifier"}]
       86 GETTABLEKS                       R12 R1 K34 ["Disabled"]
       88 SETTABLEKS                       R12 R11 K34 ["Disabled"]
       90 GETTABLEKS                       R12 R0 K41 ["textInputRef"]
       92 SETTABLEKS                       R12 R11 K35 ["ForwardRef"]
       94 GETIMPORT                        R12 K16 [UDim2.new]
       96 LOADN                            R13 0
       97 LOADN                            R14 50
       98 LOADN                            R15 1
       99 LOADN                            R16 0
      100 CALL                             R12 4 1
      101 SETTABLEKS                       R12 R11 K17 ["Size"]
      103 SETTABLEKS                       R4 R11 K36 ["Text"]
      105 NEWCLOSURE                       R12 P1
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U3
      109 SETTABLEKS                       R12 R11 K37 ["OnFocusLost"]
      111 NEWCLOSURE                       R12 P2
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U3
      114 CAPTURE                          VAL R1
      115 SETTABLEKS                       R12 R11 K38 ["OnFormatText"]
      117 GETTABLEKS                       R12 R1 K39 ["StyleModifier"]
      119 SETTABLEKS                       R12 R11 K39 ["StyleModifier"]
      121 CALL                             R9 2 1
      122 SETTABLEKS                       R9 R8 K31 ["Input"]
      124 SETTABLEKS                       R3 R8 K32 ["Slider"]
      126 CALL                             R5 3 -1
      127 RETURN                           R5 -1
      128 RETURN                           R3 1

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
       20 GETTABLEKS                       R3 R3 K9 ["Typecheck"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Util"]
       27 GETTABLEKS                       R4 R4 K10 ["numberToString"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K6 [require]
       32 GETTABLEKS                       R5 R0 K4 ["Parent"]
       34 GETTABLEKS                       R5 R5 K11 ["Dash"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R0 K2 ["UI"]
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R5 K12 ["Components"]
       43 GETTABLEKS                       R7 R7 K13 ["Pane"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R5 K12 ["Components"]
       50 GETTABLEKS                       R8 R8 K14 ["RangeSlider"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R5 K12 ["Components"]
       57 GETTABLEKS                       R9 R9 K15 ["TextInput"]
       59 CALL                             R8 1 1
       60 GETTABLEKS                       R9 R1 K16 ["PureComponent"]
       62 LOADK                            R11 K17 ["Slider"]
       63 NAMECALL                         R9 R9 K18 ["extend"]
       65 CALL                             R9 2 1
       66 GETTABLEKS                       R10 R2 K19 ["wrap"]
       68 MOVE                             R11 R9
       69 GETIMPORT                        R12 K1 [script]
       71 CALL                             R10 2 0
       72 DUPTABLE                         R10 K22 [{["InputPrecision"] = 3}]
       73 SETTABLEKS                       R10 R9 K23 ["defaultProps"]
       75 DUPCLOSURE                       R10 K24 [PROTO_0]
       76 CAPTURE                          VAL R1
       77 SETTABLEKS                       R10 R9 K25 ["init"]
       79 DUPCLOSURE                       R10 K26 [PROTO_4]
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R8
       86 SETTABLEKS                       R10 R9 K27 ["render"]
       88 RETURN                           R9 1
