PROTO_0:
        0 MULK                             R1 R0 K0 [100]
        1 FASTCALL1                        MATH_FLOOR R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K3 [math.floor]
        5 CALL                             R4 1 1
        6 SUB                              R3 R1 R4
        7 LOADK                            R4 K4 [0.5]
        8 JUMPIFLE                         R4 R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 JUMPIFNOT                        R2 ; [+6]
       13 FASTCALL1                        MATH_CEIL R1 ; [+3]
       14 MOVE                             R4 R1
       15 GETIMPORT                        R3 K6 [math.ceil]
       17 CALL                             R3 1 1
       18 JUMPIF                           R3 ; [+5]
       19 FASTCALL1                        MATH_FLOOR R1 ; [+3]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K3 [math.floor]
       23 CALL                             R3 1 1
       24 RETURN                           R3 1

PROTO_1:
        0 DIVK                             R0 R0 K0 [100]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K1 ["increment"]
        4 LOADK                            R2 K2 [0.001]
        5 JUMPIFNOTLT                      R2 R1 ; [+49]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["increment"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K1 ["increment"]
       13 DIV                              R5 R0 R6
       14 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       15 GETIMPORT                        R4 K5 [math.floor]
       17 CALL                             R4 1 1
       18 MUL                              R2 R3 R4
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K6 ["min"]
       22 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       24 GETIMPORT                        R1 K8 [math.max]
       26 CALL                             R1 2 1
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K1 ["increment"]
       30 ADD                              R3 R1 R4
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K7 ["max"]
       34 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       36 GETIMPORT                        R2 K9 [math.min]
       38 CALL                             R2 2 1
       39 SUB                              R5 R1 R0
       40 FASTCALL1                        MATH_ABS R5 ; [+2]
       41 GETIMPORT                        R4 K11 [math.abs]
       43 CALL                             R4 1 1
       44 SUB                              R6 R2 R0
       45 FASTCALL1                        MATH_ABS R6 ; [+2]
       46 GETIMPORT                        R5 K11 [math.abs]
       48 CALL                             R5 1 1
       49 JUMPIFNOTLT                      R4 R5 ; [+3]
       51 MOVE                             R3 R1
       52 JUMPIF                           R3 ; [+1]
       53 MOVE                             R3 R2
       54 RETURN                           R3 1
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R2 R2 K7 ["max"]
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R4 R4 K6 ["min"]
       61 FASTCALL2                        MATH_MAX R4 R0 ; [+4]
       63 MOVE                             R5 R0
       64 GETIMPORT                        R3 K8 [math.max]
       66 CALL                             R3 2 1
       67 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
       69 GETIMPORT                        R1 K9 [math.min]
       71 CALL                             R1 2 1
       72 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["makeCopy"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R4 1
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 3
        9 MOVE                             R5 R2
       10 GETUPVAL                         R8 4
       11 MOVE                             R9 R0
       12 CALL                             R8 1 1
       13 FASTCALL2                        MATH_MIN R3 R8 ; [+4]
       15 MOVE                             R7 R3
       16 GETIMPORT                        R6 K3 [math.min]
       18 CALL                             R6 2 1
       19 GETUPVAL                         R7 5
       20 CALL                             R4 3 0
       21 GETUPVAL                         R4 6
       22 GETUPVAL                         R5 1
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 7
       25 MOVE                             R6 R2
       26 GETUPVAL                         R9 4
       27 MOVE                             R10 R1
       28 CALL                             R9 1 1
       29 FASTCALL2                        MATH_MAX R4 R9 ; [+4]
       31 MOVE                             R8 R4
       32 GETIMPORT                        R7 K5 [math.max]
       34 CALL                             R7 2 1
       35 GETUPVAL                         R8 5
       36 CALL                             R5 3 0
       37 GETUPVAL                         R5 8
       38 GETTABLEKS                       R5 R5 K6 ["props"]
       40 GETTABLEKS                       R5 R5 K7 ["clobberTemplate"]
       42 GETUPVAL                         R6 8
       43 GETTABLEKS                       R6 R6 K6 ["props"]
       45 GETTABLEKS                       R6 R6 K8 ["template"]
       47 MOVE                             R7 R2
       48 CALL                             R5 2 0
       49 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["makeCopy"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["getStateModelTemplate"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K2 ["props"]
        9 CALL                             R2 1 -1
       10 CALL                             R1 -1 1
       11 GETUPVAL                         R2 3
       12 MOVE                             R3 R1
       13 GETUPVAL                         R5 4
       14 MOVE                             R6 R1
       15 CALL                             R5 1 1
       16 GETUPVAL                         R6 5
       17 MOVE                             R7 R0
       18 CALL                             R6 1 1
       19 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       21 GETIMPORT                        R4 K5 [math.max]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 6
       25 CALL                             R2 3 0
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R2 K2 ["props"]
       29 GETTABLEKS                       R2 R2 K6 ["clobberTemplate"]
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R3 R3 K2 ["props"]
       34 GETTABLEKS                       R3 R3 K7 ["template"]
       36 MOVE                             R4 R1
       37 CALL                             R2 2 0
       38 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R8 R8 K0 ["getStateModelTemplate"]
        3 GETTABLEKS                       R9 R0 K1 ["props"]
        5 CALL                             R8 1 1
        6 GETTABLEKS                       R9 R0 K1 ["props"]
        8 GETTABLEKS                       R9 R9 K2 ["StateSettings"]
       10 GETTABLEKS                       R9 R9 K3 ["scaleBoundaries"]
       12 GETTABLEKS                       R9 R9 K4 ["boundaries"]
       14 DUPCLOSURE                       R10 K5 [PROTO_0]
       15 NEWCLOSURE                       R11 P1
       16 CAPTURE                          VAL R3
       17 GETTABLEKS                       R13 R3 K6 ["min"]
       19 MULK                             R14 R13 K7 [100]
       20 FASTCALL1                        MATH_FLOOR R14 ; [+3]
       21 MOVE                             R18 R14
       22 GETIMPORT                        R17 K10 [math.floor]
       24 CALL                             R17 1 1
       25 SUB                              R16 R14 R17
       26 LOADK                            R17 K11 [0.5]
       27 JUMPIFLE                         R17 R16 ; [+2]
       29 LOADB                            R15 0 +1
       30 LOADB                            R15 1
       31 JUMPIFNOT                        R15 ; [+7]
       32 FASTCALL1                        MATH_CEIL R14 ; [+3]
       33 MOVE                             R17 R14
       34 GETIMPORT                        R16 K13 [math.ceil]
       36 CALL                             R16 1 1
       37 MOVE                             R12 R16
       38 JUMPIF                           R12 ; [+6]
       39 FASTCALL1                        MATH_FLOOR R14 ; [+3]
       40 MOVE                             R17 R14
       41 GETIMPORT                        R16 K10 [math.floor]
       43 CALL                             R16 1 1
       44 MOVE                             R12 R16
       45 GETTABLEKS                       R14 R3 K14 ["max"]
       47 MULK                             R15 R14 K7 [100]
       48 FASTCALL1                        MATH_FLOOR R15 ; [+3]
       49 MOVE                             R19 R15
       50 GETIMPORT                        R18 K10 [math.floor]
       52 CALL                             R18 1 1
       53 SUB                              R17 R15 R18
       54 LOADK                            R18 K11 [0.5]
       55 JUMPIFLE                         R18 R17 ; [+2]
       57 LOADB                            R16 0 +1
       58 LOADB                            R16 1
       59 JUMPIFNOT                        R16 ; [+7]
       60 FASTCALL1                        MATH_CEIL R15 ; [+3]
       61 MOVE                             R18 R15
       62 GETIMPORT                        R17 K13 [math.ceil]
       64 CALL                             R17 1 1
       65 MOVE                             R13 R17
       66 JUMPIF                           R13 ; [+6]
       67 FASTCALL1                        MATH_FLOOR R15 ; [+3]
       68 MOVE                             R18 R15
       69 GETIMPORT                        R17 K10 [math.floor]
       71 CALL                             R17 1 1
       72 MOVE                             R13 R17
       73 GETTABLEKS                       R14 R0 K1 ["props"]
       75 GETTABLEKS                       R15 R14 K15 ["Localization"]
       77 GETTABLEKS                       R16 R14 K16 ["Mouse"]
       79 GETUPVAL                         R17 1
       80 GETTABLEKS                       R17 R17 K17 ["createElement"]
       82 GETUPVAL                         R18 2
       83 DUPTABLE                         R19 K31 [{"LayoutOrder", "Title", "Enabled", "Min", "Max", "SnapIncrement", "LowerRangeValue", "UpperRangeValue", "Mouse", "MinLabelText", "MaxLabelText", "UnitsLabelText", "SetValues", "SetUpperRangeValue"}]
       84 SETTABLEKS                       R1 R19 K18 ["LayoutOrder"]
       86 SETTABLEKS                       R2 R19 K19 ["Title"]
       88 GETTABLEKS                       R20 R0 K1 ["props"]
       90 GETTABLEKS                       R20 R20 K32 ["IsEnabled"]
       92 SETTABLEKS                       R20 R19 K20 ["Enabled"]
       94 SETTABLEKS                       R12 R19 K21 ["Min"]
       96 SETTABLEKS                       R13 R19 K22 ["Max"]
       98 GETTABLEKS                       R21 R3 K33 ["increment"]
      100 MULK                             R22 R21 K7 [100]
      101 FASTCALL1                        MATH_FLOOR R22 ; [+3]
      102 MOVE                             R26 R22
      103 GETIMPORT                        R25 K10 [math.floor]
      105 CALL                             R25 1 1
      106 SUB                              R24 R22 R25
      107 LOADK                            R25 K11 [0.5]
      108 JUMPIFLE                         R25 R24 ; [+2]
      110 LOADB                            R23 0 +1
      111 LOADB                            R23 1
      112 JUMPIFNOT                        R23 ; [+7]
      113 FASTCALL1                        MATH_CEIL R22 ; [+3]
      114 MOVE                             R25 R22
      115 GETIMPORT                        R24 K13 [math.ceil]
      117 CALL                             R24 1 1
      118 MOVE                             R20 R24
      119 JUMPIF                           R20 ; [+6]
      120 FASTCALL1                        MATH_FLOOR R22 ; [+3]
      121 MOVE                             R25 R22
      122 GETIMPORT                        R24 K10 [math.floor]
      124 CALL                             R24 1 1
      125 MOVE                             R20 R24
      126 SETTABLEKS                       R20 R19 K23 ["SnapIncrement"]
      128 MOVE                             R21 R4
      129 MOVE                             R22 R8
      130 CALL                             R21 1 1
      131 MULK                             R22 R21 K7 [100]
      132 FASTCALL1                        MATH_FLOOR R22 ; [+3]
      133 MOVE                             R26 R22
      134 GETIMPORT                        R25 K10 [math.floor]
      136 CALL                             R25 1 1
      137 SUB                              R24 R22 R25
      138 LOADK                            R25 K11 [0.5]
      139 JUMPIFLE                         R25 R24 ; [+2]
      141 LOADB                            R23 0 +1
      142 LOADB                            R23 1
      143 JUMPIFNOT                        R23 ; [+7]
      144 FASTCALL1                        MATH_CEIL R22 ; [+3]
      145 MOVE                             R25 R22
      146 GETIMPORT                        R24 K13 [math.ceil]
      148 CALL                             R24 1 1
      149 MOVE                             R20 R24
      150 JUMPIF                           R20 ; [+6]
      151 FASTCALL1                        MATH_FLOOR R22 ; [+3]
      152 MOVE                             R25 R22
      153 GETIMPORT                        R24 K10 [math.floor]
      155 CALL                             R24 1 1
      156 MOVE                             R20 R24
      157 SETTABLEKS                       R20 R19 K24 ["LowerRangeValue"]
      159 MOVE                             R21 R5
      160 MOVE                             R22 R8
      161 CALL                             R21 1 1
      162 MULK                             R22 R21 K7 [100]
      163 FASTCALL1                        MATH_FLOOR R22 ; [+3]
      164 MOVE                             R26 R22
      165 GETIMPORT                        R25 K10 [math.floor]
      167 CALL                             R25 1 1
      168 SUB                              R24 R22 R25
      169 LOADK                            R25 K11 [0.5]
      170 JUMPIFLE                         R25 R24 ; [+2]
      172 LOADB                            R23 0 +1
      173 LOADB                            R23 1
      174 JUMPIFNOT                        R23 ; [+7]
      175 FASTCALL1                        MATH_CEIL R22 ; [+3]
      176 MOVE                             R25 R22
      177 GETIMPORT                        R24 K13 [math.ceil]
      179 CALL                             R24 1 1
      180 MOVE                             R20 R24
      181 JUMPIF                           R20 ; [+6]
      182 FASTCALL1                        MATH_FLOOR R22 ; [+3]
      183 MOVE                             R25 R22
      184 GETIMPORT                        R24 K10 [math.floor]
      186 CALL                             R24 1 1
      187 MOVE                             R20 R24
      188 SETTABLEKS                       R20 R19 K25 ["UpperRangeValue"]
      190 NAMECALL                         R20 R16 K34 ["get"]
      192 CALL                             R20 1 1
      193 SETTABLEKS                       R20 R19 K16 ["Mouse"]
      195 LOADK                            R22 K35 ["General"]
      196 LOADK                            R23 K36 ["ScaleSliderLabel"]
      197 DUPTABLE                         R24 K38 [{"number"}]
      198 FASTCALL1                        TOSTRING R12 ; [+3]
      199 MOVE                             R26 R12
      200 GETIMPORT                        R25 K40 [tostring]
      202 CALL                             R25 1 1
      203 SETTABLEKS                       R25 R24 K37 ["number"]
      205 NAMECALL                         R20 R15 K41 ["getText"]
      207 CALL                             R20 4 1
      208 SETTABLEKS                       R20 R19 K26 ["MinLabelText"]
      210 LOADK                            R22 K35 ["General"]
      211 LOADK                            R23 K36 ["ScaleSliderLabel"]
      212 DUPTABLE                         R24 K38 [{"number"}]
      213 FASTCALL1                        TOSTRING R13 ; [+3]
      214 MOVE                             R26 R13
      215 GETIMPORT                        R25 K40 [tostring]
      217 CALL                             R25 1 1
      218 SETTABLEKS                       R25 R24 K37 ["number"]
      220 NAMECALL                         R20 R15 K41 ["getText"]
      222 CALL                             R20 4 1
      223 SETTABLEKS                       R20 R19 K27 ["MaxLabelText"]
      225 LOADK                            R22 K35 ["General"]
      226 LOADK                            R23 K42 ["ScaleSliderUnits"]
      227 NAMECALL                         R20 R15 K41 ["getText"]
      229 CALL                             R20 3 1
      230 SETTABLEKS                       R20 R19 K28 ["UnitsLabelText"]
      232 NEWCLOSURE                       R20 P2
      233 CAPTURE                          UPVAL U3
      234 CAPTURE                          VAL R8
      235 CAPTURE                          VAL R5
      236 CAPTURE                          VAL R6
      237 CAPTURE                          VAL R11
      238 CAPTURE                          VAL R9
      239 CAPTURE                          VAL R4
      240 CAPTURE                          VAL R7
      241 CAPTURE                          VAL R0
      242 SETTABLEKS                       R20 R19 K29 ["SetValues"]
      244 NEWCLOSURE                       R20 P3
      245 CAPTURE                          UPVAL U3
      246 CAPTURE                          UPVAL U0
      247 CAPTURE                          VAL R0
      248 CAPTURE                          VAL R7
      249 CAPTURE                          VAL R4
      250 CAPTURE                          VAL R11
      251 CAPTURE                          VAL R9
      252 SETTABLEKS                       R20 R19 K30 ["SetUpperRangeValue"]
      254 CALL                             R17 2 -1
      255 RETURN                           R17 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["frameRef"]
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["frameRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 GETIMPORT                        R2 K4 [UDim2.new]
        7 LOADN                            R3 1
        8 LOADN                            R4 0
        9 LOADN                            R5 0
       10 GETTABLEKS                       R6 R0 K5 ["AbsoluteContentSize"]
       12 GETTABLEKS                       R6 R6 K6 ["y"]
       14 CALL                             R2 4 1
       15 SETTABLEKS                       R2 R1 K7 ["Size"]
       17 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["getStateModelTemplate"]
        7 GETTABLEKS                       R4 R0 K0 ["props"]
        9 CALL                             R3 1 1
       10 NAMECALL                         R3 R3 K3 ["isRigTypeR6"]
       12 CALL                             R3 1 1
       13 JUMPIFNOT                        R3 ; [+2]
       14 LOADNIL                          R3
       15 RETURN                           R3 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K4 ["new"]
       19 CALL                             R3 0 1
       20 DUPTABLE                         R4 K8 [{"UIListLayoutVertical", "ComponentDividerRowAboveScale", "ComponentTitleBar"}]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K9 ["createElement"]
       24 LOADK                            R6 K10 ["UIListLayout"]
       25 NEWTABLE                         R7 8 0
       27 GETIMPORT                        R8 K14 [Enum.SortOrder.LayoutOrder]
       29 SETTABLEKS                       R8 R7 K12 ["SortOrder"]
       31 GETIMPORT                        R8 K17 [Enum.HorizontalAlignment.Center]
       33 SETTABLEKS                       R8 R7 K15 ["HorizontalAlignment"]
       35 GETIMPORT                        R8 K20 [Enum.FillDirection.Vertical]
       37 SETTABLEKS                       R8 R7 K18 ["FillDirection"]
       39 GETUPVAL                         R8 3
       40 GETTABLEKS                       R8 R8 K21 ["VirticalPadding"]
       42 SETTABLEKS                       R8 R7 K22 ["Padding"]
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R8 R8 K23 ["Change"]
       47 GETTABLEKS                       R8 R8 K24 ["AbsoluteContentSize"]
       49 NEWCLOSURE                       R9 P0
       50 CAPTURE                          VAL R0
       51 SETTABLE                         R9 R7 R8
       52 CALL                             R5 2 1
       53 SETTABLEKS                       R5 R4 K5 ["UIListLayoutVertical"]
       55 GETUPVAL                         R5 2
       56 GETTABLEKS                       R5 R5 K9 ["createElement"]
       58 GETUPVAL                         R6 4
       59 DUPTABLE                         R7 K26 [{"ThemeData", "LayoutOrder"}]
       60 GETTABLEKS                       R8 R0 K0 ["props"]
       62 GETTABLEKS                       R8 R8 K25 ["ThemeData"]
       64 SETTABLEKS                       R8 R7 K25 ["ThemeData"]
       66 NAMECALL                         R8 R3 K27 ["getNextOrder"]
       68 CALL                             R8 1 1
       69 SETTABLEKS                       R8 R7 K13 ["LayoutOrder"]
       71 CALL                             R5 2 1
       72 SETTABLEKS                       R5 R4 K6 ["ComponentDividerRowAboveScale"]
       74 GETUPVAL                         R5 2
       75 GETTABLEKS                       R5 R5 K9 ["createElement"]
       77 GETUPVAL                         R6 5
       78 DUPTABLE                         R7 K32 [{["ThemeData"], ["LayoutOrder"], ["IsEnabled"], ["Text"], ["IsPlayerChoiceTitleStyle"] = False}]
       79 GETTABLEKS                       R8 R0 K0 ["props"]
       81 GETTABLEKS                       R8 R8 K25 ["ThemeData"]
       83 SETTABLEKS                       R8 R7 K25 ["ThemeData"]
       85 NAMECALL                         R8 R3 K27 ["getNextOrder"]
       87 CALL                             R8 1 1
       88 SETTABLEKS                       R8 R7 K13 ["LayoutOrder"]
       90 GETTABLEKS                       R8 R0 K0 ["props"]
       92 GETTABLEKS                       R8 R8 K28 ["IsEnabled"]
       94 SETTABLEKS                       R8 R7 K28 ["IsEnabled"]
       96 LOADK                            R10 K33 ["General"]
       97 LOADK                            R11 K34 ["TitleScale"]
       98 NAMECALL                         R8 R2 K35 ["getText"]
      100 CALL                             R8 3 1
      101 SETTABLEKS                       R8 R7 K29 ["Text"]
      103 CALL                             R5 2 1
      104 SETTABLEKS                       R5 R4 K7 ["ComponentTitleBar"]
      106 GETUPVAL                         R5 6
      107 NEWTABLE                         R6 0 5
      109 NEWTABLE                         R7 0 6
      111 LOADK                            R10 K33 ["General"]
      112 LOADK                            R11 K36 ["ScaleHeight"]
      113 NAMECALL                         R8 R2 K35 ["getText"]
      115 CALL                             R8 3 1
      116 GETUPVAL                         R9 7
      117 GETTABLEKS                       R9 R9 K37 ["getHeightBoundaries"]
      119 GETTABLEKS                       R10 R0 K0 ["props"]
      121 CALL                             R9 1 1
      122 GETTABLEKS                       R10 R5 K38 ["getScaleHeightMin"]
      124 GETTABLEKS                       R11 R5 K39 ["getScaleHeightMax"]
      126 GETTABLEKS                       R12 R5 K40 ["setScaleHeightMin"]
      128 GETTABLEKS                       R13 R5 K41 ["setScaleHeightMax"]
      130 SETLIST                          R7 R8 6 [1]
      132 NEWTABLE                         R8 0 6
      134 LOADK                            R11 K33 ["General"]
      135 LOADK                            R12 K42 ["ScaleWidth"]
      136 NAMECALL                         R9 R2 K35 ["getText"]
      138 CALL                             R9 3 1
      139 GETUPVAL                         R10 7
      140 GETTABLEKS                       R10 R10 K43 ["getWidthBoundaries"]
      142 GETTABLEKS                       R11 R0 K0 ["props"]
      144 CALL                             R10 1 1
      145 GETTABLEKS                       R11 R5 K44 ["getScaleWidthMin"]
      147 GETTABLEKS                       R12 R5 K45 ["getScaleWidthMax"]
      149 GETTABLEKS                       R13 R5 K46 ["setScaleWidthMin"]
      151 GETTABLEKS                       R14 R5 K47 ["setScaleWidthMax"]
      153 SETLIST                          R8 R9 6 [1]
      155 NEWTABLE                         R9 0 6
      157 LOADK                            R12 K33 ["General"]
      158 LOADK                            R13 K48 ["ScaleHead"]
      159 NAMECALL                         R10 R2 K35 ["getText"]
      161 CALL                             R10 3 1
      162 GETUPVAL                         R11 7
      163 GETTABLEKS                       R11 R11 K49 ["getHeadBoundaries"]
      165 GETTABLEKS                       R12 R0 K0 ["props"]
      167 CALL                             R11 1 1
      168 GETTABLEKS                       R12 R5 K50 ["getScaleHeadMin"]
      170 GETTABLEKS                       R13 R5 K51 ["getScaleHeadMax"]
      172 GETTABLEKS                       R14 R5 K52 ["setScaleHeadMin"]
      174 GETTABLEKS                       R15 R5 K53 ["setScaleHeadMax"]
      176 SETLIST                          R9 R10 6 [1]
      178 NEWTABLE                         R10 0 6
      180 LOADK                            R13 K33 ["General"]
      181 LOADK                            R14 K54 ["ScaleBodyType"]
      182 NAMECALL                         R11 R2 K35 ["getText"]
      184 CALL                             R11 3 1
      185 GETUPVAL                         R12 7
      186 GETTABLEKS                       R12 R12 K55 ["getBodyTypeBoundaries"]
      188 GETTABLEKS                       R13 R0 K0 ["props"]
      190 CALL                             R12 1 1
      191 GETTABLEKS                       R13 R5 K56 ["getScaleBodyTypeMin"]
      193 GETTABLEKS                       R14 R5 K57 ["getScaleBodyTypeMax"]
      195 GETTABLEKS                       R15 R5 K58 ["setScaleBodyTypeMin"]
      197 GETTABLEKS                       R16 R5 K59 ["setScaleBodyTypeMax"]
      199 SETLIST                          R10 R11 6 [1]
      201 NEWTABLE                         R11 0 6
      203 LOADK                            R14 K33 ["General"]
      204 LOADK                            R15 K60 ["ScaleProportions"]
      205 NAMECALL                         R12 R2 K35 ["getText"]
      207 CALL                             R12 3 1
      208 GETUPVAL                         R13 7
      209 GETTABLEKS                       R13 R13 K61 ["getProportionBoundaries"]
      211 GETTABLEKS                       R14 R0 K0 ["props"]
      213 CALL                             R13 1 1
      214 GETTABLEKS                       R14 R5 K62 ["getScaleProportionMin"]
      216 GETTABLEKS                       R15 R5 K63 ["getScaleProportionMax"]
      218 GETTABLEKS                       R16 R5 K64 ["setScaleProportionMin"]
      220 GETTABLEKS                       R17 R5 K65 ["setScaleProportionMax"]
      222 SETLIST                          R11 R12 6 [1]
      224 SETLIST                          R6 R7 5 [1]
      226 GETIMPORT                        R7 K67 [ipairs]
      228 MOVE                             R8 R6
      229 CALL                             R7 1 3
      230 FORGPREP_INEXT                   R7
      231 GETTABLEN                        R12 R11 1
      232 GETUPVAL                         R13 8
      233 MOVE                             R14 R0
      234 NAMECALL                         R15 R3 K27 ["getNextOrder"]
      236 CALL                             R15 1 1
      237 GETTABLEN                        R16 R11 1
      238 GETTABLEN                        R17 R11 2
      239 GETTABLEN                        R18 R11 3
      240 GETTABLEN                        R19 R11 4
      241 GETTABLEN                        R20 R11 5
      242 GETTABLEN                        R21 R11 6
      243 CALL                             R13 8 1
      244 SETTABLE                         R13 R4 R12
      245 FORGLOOP                         R7 2 [inext] ; [-15]
      247 GETUPVAL                         R7 2
      248 GETTABLEKS                       R7 R7 K9 ["createElement"]
      250 LOADK                            R8 K68 ["Frame"]
      251 NEWTABLE                         R9 8 0
      253 GETIMPORT                        R10 K70 [UDim2.new]
      255 LOADN                            R11 1
      256 LOADN                            R12 0
      257 LOADN                            R13 1
      258 LOADN                            R14 0
      259 CALL                             R10 4 1
      260 SETTABLEKS                       R10 R9 K71 ["Size"]
      262 LOADN                            R10 0
      263 SETTABLEKS                       R10 R9 K72 ["BorderSizePixel"]
      265 GETUPVAL                         R10 9
      266 GETTABLEKS                       R10 R10 K73 ["getBackgroundColor"]
      268 GETTABLEKS                       R11 R0 K0 ["props"]
      270 CALL                             R10 1 1
      271 SETTABLEKS                       R10 R9 K74 ["BackgroundColor3"]
      273 GETTABLEKS                       R10 R0 K0 ["props"]
      275 GETTABLEKS                       R10 R10 K13 ["LayoutOrder"]
      277 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
      279 GETUPVAL                         R10 2
      280 GETTABLEKS                       R10 R10 K75 ["Ref"]
      282 GETTABLEKS                       R11 R0 K76 ["frameRef"]
      284 SETTABLE                         R11 R9 R10
      285 MOVE                             R10 R4
      286 CALL                             R7 3 -1
      287 RETURN                           R7 -1

PROTO_8:
        0 DUPTABLE                         R2 K1 [{"StateSettings"}]
        1 GETTABLEKS                       R3 R0 K2 ["MorpherEditorRoot"]
        3 GETTABLEKS                       R3 R3 K3 ["StateMorpher"]
        5 GETTABLEKS                       R3 R3 K0 ["StateSettings"]
        7 SETTABLEKS                       R3 R2 K0 ["StateSettings"]
        9 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETTABLEKS                       R1 R1 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R3 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R3 K6 ["Roact"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R1 K5 ["Packages"]
       28 GETTABLEKS                       R4 R4 K7 ["RoactRodux"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R1 K8 ["RoactStudioWidgets"]
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R6 R1 K5 ["Packages"]
       37 GETTABLEKS                       R6 R6 K9 ["Framework"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R5 R5 K10 ["ContextServices"]
       42 GETTABLEKS                       R6 R5 K11 ["withContext"]
       44 GETIMPORT                        R7 K4 [require]
       46 GETTABLEKS                       R8 R1 K5 ["Packages"]
       48 GETTABLEKS                       R8 R8 K9 ["Framework"]
       50 CALL                             R7 1 1
       51 GETTABLEKS                       R7 R7 K12 ["Util"]
       53 GETTABLEKS                       R8 R7 K13 ["LayoutOrderIterator"]
       55 GETIMPORT                        R9 K4 [require]
       57 GETTABLEKS                       R10 R0 K12 ["Util"]
       59 GETTABLEKS                       R10 R10 K14 ["ConstantLayout"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K4 [require]
       64 GETTABLEKS                       R11 R0 K12 ["Util"]
       66 GETTABLEKS                       R11 R11 K15 ["StateInterfaceSettings"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K4 [require]
       71 GETTABLEKS                       R12 R0 K12 ["Util"]
       73 GETTABLEKS                       R12 R12 K16 ["StateInterfaceTemplates"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K4 [require]
       78 GETTABLEKS                       R13 R0 K12 ["Util"]
       80 GETTABLEKS                       R13 R13 K17 ["StateInterfaceTheme"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K4 [require]
       85 GETTABLEKS                       R14 R0 K12 ["Util"]
       87 GETTABLEKS                       R14 R14 K18 ["StateModelTemplate"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K4 [require]
       92 GETTABLEKS                       R15 R0 K19 ["Components"]
       94 GETTABLEKS                       R15 R15 K20 ["DividerRow"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K4 [require]
       99 GETTABLEKS                       R16 R4 K21 ["RangeSlider"]
      101 CALL                             R15 1 1
      102 GETIMPORT                        R16 K4 [require]
      104 GETTABLEKS                       R17 R0 K19 ["Components"]
      106 GETTABLEKS                       R17 R17 K22 ["TitleBar"]
      108 CALL                             R16 1 1
      109 GETTABLEKS                       R17 R2 K23 ["Component"]
      111 LOADK                            R19 K24 ["ComponentScalePanel"]
      112 NAMECALL                         R17 R17 K25 ["extend"]
      114 CALL                             R17 2 1
      115 DUPCLOSURE                       R18 K26 [PROTO_4]
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R13
      120 DUPCLOSURE                       R19 K27 [PROTO_5]
      121 CAPTURE                          VAL R2
      122 SETTABLEKS                       R19 R17 K28 ["init"]
      124 DUPCLOSURE                       R19 K29 [PROTO_7]
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R18
      134 CAPTURE                          VAL R12
      135 SETTABLEKS                       R19 R17 K30 ["render"]
      137 MOVE                             R19 R6
      138 DUPTABLE                         R20 K33 [{"Localization", "Mouse"}]
      139 GETTABLEKS                       R21 R5 K31 ["Localization"]
      141 SETTABLEKS                       R21 R20 K31 ["Localization"]
      143 GETTABLEKS                       R21 R5 K32 ["Mouse"]
      145 SETTABLEKS                       R21 R20 K32 ["Mouse"]
      147 CALL                             R19 1 1
      148 MOVE                             R20 R17
      149 CALL                             R19 1 1
      150 MOVE                             R17 R19
      151 GETTABLEKS                       R19 R3 K34 ["UNSTABLE_connect2"]
      153 DUPCLOSURE                       R20 K35 [PROTO_8]
      154 CALL                             R19 1 1
      155 MOVE                             R20 R17
      156 CALL                             R19 1 1
      157 MOVE                             R17 R19
      158 RETURN                           R17 1
