PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["h"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+11]
        5 GETTABLEKS                       R1 R0 K1 ["s"]
        7 GETUPVAL                         R2 1
        8 JUMPIFNOTEQ                      R1 R2 ; [+6]
       10 GETTABLEKS                       R1 R0 K2 ["v"]
       12 GETUPVAL                         R2 2
       13 JUMPIFEQ                         R1 R2 ; [+12]
       15 DUPTABLE                         R1 K3 [{"h", "s", "v"}]
       16 GETUPVAL                         R2 0
       17 SETTABLEKS                       R2 R1 K0 ["h"]
       19 GETUPVAL                         R2 1
       20 SETTABLEKS                       R2 R1 K1 ["s"]
       22 GETUPVAL                         R2 2
       23 SETTABLEKS                       R2 R1 K2 ["v"]
       25 RETURN                           R1 1
       26 LOADNIL                          R1
       27 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 NAMECALL                         R3 R3 K0 ["setState"]
        7 CALL                             R3 2 0
        8 GETIMPORT                        R3 K3 [Color3.fromHSV]
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 MOVE                             R6 R2
       13 CALL                             R3 3 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K4 ["props"]
       17 GETTABLEKS                       R4 R4 K5 ["OnColorChanged"]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["RGBFromHexString"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 3
        5 FASTCALL2K                       TONUMBER R1 K1 ; [+5]
        7 MOVE                             R5 R1
        8 LOADK                            R6 K1 [16]
        9 GETIMPORT                        R4 K3 [tonumber]
       11 CALL                             R4 2 1
       12 MOVE                             R1 R4
       13 FASTCALL2K                       TONUMBER R2 K1 ; [+5]
       15 MOVE                             R5 R2
       16 LOADK                            R6 K1 [16]
       17 GETIMPORT                        R4 K3 [tonumber]
       19 CALL                             R4 2 1
       20 MOVE                             R2 R4
       21 FASTCALL2K                       TONUMBER R3 K1 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K1 [16]
       25 GETIMPORT                        R4 K3 [tonumber]
       27 CALL                             R4 2 1
       28 MOVE                             R3 R4
       29 GETIMPORT                        R4 K6 [Color3.fromRGB]
       31 MOVE                             R5 R1
       32 MOVE                             R6 R2
       33 MOVE                             R7 R3
       34 CALL                             R4 3 1
       35 NAMECALL                         R5 R4 K7 ["ToHSV"]
       37 CALL                             R5 1 3
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K8 ["SetNewHSV"]
       41 MOVE                             R9 R5
       42 MOVE                             R10 R6
       43 MOVE                             R11 R7
       44 CALL                             R8 3 0
       45 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["RGBFromRGBString"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 3
        5 FASTCALL1                        TONUMBER R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K2 [tonumber]
        9 CALL                             R4 1 1
       10 MOVE                             R1 R4
       11 FASTCALL1                        TONUMBER R2 ; [+3]
       12 MOVE                             R5 R2
       13 GETIMPORT                        R4 K2 [tonumber]
       15 CALL                             R4 1 1
       16 MOVE                             R2 R4
       17 FASTCALL1                        TONUMBER R3 ; [+3]
       18 MOVE                             R5 R3
       19 GETIMPORT                        R4 K2 [tonumber]
       21 CALL                             R4 1 1
       22 MOVE                             R3 R4
       23 GETIMPORT                        R4 K5 [Color3.fromRGB]
       25 MOVE                             R5 R1
       26 MOVE                             R6 R2
       27 MOVE                             R7 R3
       28 CALL                             R4 3 1
       29 NAMECALL                         R5 R4 K6 ["ToHSV"]
       31 CALL                             R5 1 3
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R8 R8 K7 ["SetNewHSV"]
       35 MOVE                             R9 R5
       36 MOVE                             R10 R6
       37 MOVE                             R11 R7
       38 CALL                             R8 3 0
       39 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["HSVFromHSVString"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 3
        5 FASTCALL1                        TONUMBER R1 ; [+3]
        6 MOVE                             R7 R1
        7 GETIMPORT                        R6 K3 [tonumber]
        9 CALL                             R6 1 1
       10 ORK                              R5 R6 K1 [360]
       11 DIVK                             R4 R5 K1 [360]
       12 FASTCALL1                        TONUMBER R2 ; [+3]
       13 MOVE                             R8 R2
       14 GETIMPORT                        R7 K3 [tonumber]
       16 CALL                             R7 1 1
       17 ORK                              R6 R7 K4 [100]
       18 DIVK                             R5 R6 K4 [100]
       19 FASTCALL1                        TONUMBER R3 ; [+3]
       20 MOVE                             R9 R3
       21 GETIMPORT                        R8 K3 [tonumber]
       23 CALL                             R8 1 1
       24 ORK                              R7 R8 K4 [100]
       25 DIVK                             R6 R7 K4 [100]
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K5 ["SetNewHSV"]
       29 MOVE                             R8 R4
       30 MOVE                             R9 R5
       31 MOVE                             R10 R6
       32 CALL                             R7 3 0
       33 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SetNewHSV"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K1 ["state"]
        8 GETTABLEKS                       R5 R5 K2 ["v"]
       10 CALL                             R2 3 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetNewHSV"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["state"]
        6 GETTABLEKS                       R2 R2 K2 ["h"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K1 ["state"]
       11 GETTABLEKS                       R3 R3 K3 ["s"]
       13 MOVE                             R4 R0
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K3 [{"h", "s", "v"}]
        1 LOADN                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["h"]
        4 LOADN                            R2 1
        5 SETTABLEKS                       R2 R1 K1 ["s"]
        7 LOADN                            R2 1
        8 SETTABLEKS                       R2 R1 K2 ["v"]
       10 SETTABLEKS                       R1 R0 K4 ["state"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K5 ["SetNewHSV"]
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K6 ["onTextChangedHex"]
       21 NEWCLOSURE                       R1 P2
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K7 ["onTextChangedRGB"]
       26 NEWCLOSURE                       R1 P3
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K8 ["onTextChangedHSV"]
       31 NEWCLOSURE                       R1 P4
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R1 R0 K9 ["onHueSaturationChanged"]
       35 NEWCLOSURE                       R1 P5
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R1 R0 K10 ["onColorValueChanged"]
       39 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["Color"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+12]
        4 DUPTABLE                         R2 K4 [{"h", "s", "v"}]
        5 LOADN                            R3 1
        6 SETTABLEKS                       R3 R2 K1 ["h"]
        8 LOADN                            R3 1
        9 SETTABLEKS                       R3 R2 K2 ["s"]
       11 LOADN                            R3 1
       12 SETTABLEKS                       R3 R2 K3 ["v"]
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R1 K0 ["Color"]
       17 GETTABLEKS                       R3 R0 K0 ["Color"]
       19 JUMPIFEQ                         R2 R3 ; [+22]
       21 GETTABLEKS                       R2 R0 K0 ["Color"]
       23 SETTABLEKS                       R2 R1 K0 ["Color"]
       25 GETTABLEKS                       R2 R0 K0 ["Color"]
       27 NAMECALL                         R2 R2 K5 ["ToHSV"]
       29 CALL                             R2 1 3
       30 DUPTABLE                         R5 K6 [{"h", "s", "v", "Color"}]
       31 SETTABLEKS                       R2 R5 K1 ["h"]
       33 SETTABLEKS                       R3 R5 K2 ["s"]
       35 SETTABLEKS                       R4 R5 K3 ["v"]
       37 GETTABLEKS                       R6 R0 K0 ["Color"]
       39 SETTABLEKS                       R6 R5 K0 ["Color"]
       41 RETURN                           R5 1
       42 LOADNIL                          R2
       43 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["new"]
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["new"]
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K2 ["new"]
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R7 R1 K3 ["Size"]
       19 GETTABLEKS                       R8 R2 K3 ["Size"]
       21 CALL                             R6 2 1
       22 GETIMPORT                        R7 K6 [Color3.fromHSV]
       24 GETTABLEKS                       R8 R0 K7 ["state"]
       26 GETTABLEKS                       R8 R8 K8 ["h"]
       28 GETTABLEKS                       R9 R0 K7 ["state"]
       30 GETTABLEKS                       R9 R9 K9 ["s"]
       32 GETTABLEKS                       R10 R0 K7 ["state"]
       34 GETTABLEKS                       R10 R10 K10 ["v"]
       36 CALL                             R7 3 1
       37 GETTABLEKS                       R11 R1 K11 ["OnColorChanged"]
       39 FASTCALL1                        TYPEOF R11 ; [+2]
       40 GETIMPORT                        R10 K13 [typeof]
       42 CALL                             R10 1 1
       43 JUMPIFEQKS                       R10 K14 ["function"] ; [+2]
       45 LOADB                            R9 0 +1
       46 LOADB                            R9 1
       47 GETIMPORT                        R10 K17 [string.format]
       49 LOADK                            R11 K18 ["ColorPicker requires OnColorChanged to be of type function, not %s"]
       50 GETTABLEKS                       R13 R1 K11 ["OnColorChanged"]
       52 FASTCALL1                        TYPEOF R13 ; [+2]
       53 GETIMPORT                        R12 K13 [typeof]
       55 CALL                             R12 1 1
       56 CALL                             R10 2 -1
       57 FASTCALL                         ASSERT ; [+2]
       58 GETIMPORT                        R8 K20 [assert]
       60 CALL                             R8 -1 0
       61 GETUPVAL                         R8 2
       62 GETTABLEKS                       R8 R8 K21 ["createElement"]
       64 GETUPVAL                         R9 3
       65 DUPTABLE                         R10 K26 [{"Layout", "LayoutOrder", "Padding", "Spacing", "Size"}]
       66 GETIMPORT                        R11 K30 [Enum.FillDirection.Vertical]
       68 SETTABLEKS                       R11 R10 K22 ["Layout"]
       70 GETTABLEKS                       R11 R1 K23 ["LayoutOrder"]
       72 SETTABLEKS                       R11 R10 K23 ["LayoutOrder"]
       74 GETTABLEKS                       R11 R2 K24 ["Padding"]
       76 SETTABLEKS                       R11 R10 K24 ["Padding"]
       78 GETTABLEKS                       R11 R2 K25 ["Spacing"]
       80 SETTABLEKS                       R11 R10 K25 ["Spacing"]
       82 SETTABLEKS                       R6 R10 K3 ["Size"]
       84 DUPTABLE                         R11 K32 [{"Body"}]
       85 GETUPVAL                         R12 2
       86 GETTABLEKS                       R12 R12 K21 ["createElement"]
       88 GETUPVAL                         R13 3
       89 DUPTABLE                         R14 K34 [{"Size", "LayoutOrder", "Layout", "Spacing", "VerticalAlignment"}]
       90 GETTABLEKS                       R15 R2 K35 ["BodySize"]
       92 SETTABLEKS                       R15 R14 K3 ["Size"]
       94 NAMECALL                         R15 R3 K36 ["getNextOrder"]
       96 CALL                             R15 1 1
       97 SETTABLEKS                       R15 R14 K23 ["LayoutOrder"]
       99 GETIMPORT                        R15 K38 [Enum.FillDirection.Horizontal]
      101 SETTABLEKS                       R15 R14 K22 ["Layout"]
      103 GETTABLEKS                       R15 R2 K39 ["BodySpacing"]
      105 SETTABLEKS                       R15 R14 K25 ["Spacing"]
      107 GETIMPORT                        R15 K41 [Enum.VerticalAlignment.Top]
      109 SETTABLEKS                       R15 R14 K33 ["VerticalAlignment"]
      111 DUPTABLE                         R15 K44 [{"ColorPropertiesPanel", "Picker"}]
      112 GETUPVAL                         R16 2
      113 GETTABLEKS                       R16 R16 K21 ["createElement"]
      115 GETUPVAL                         R17 4
      116 DUPTABLE                         R18 K53 [{"LayoutOrder", "Hue", "Saturation", "Value", "Color", "OnTextChangedHex", "OnTextChangedRGB", "OnTextChangedHSV", "Style"}]
      117 NAMECALL                         R19 R4 K36 ["getNextOrder"]
      119 CALL                             R19 1 1
      120 SETTABLEKS                       R19 R18 K23 ["LayoutOrder"]
      122 GETTABLEKS                       R19 R0 K7 ["state"]
      124 GETTABLEKS                       R19 R19 K8 ["h"]
      126 SETTABLEKS                       R19 R18 K45 ["Hue"]
      128 GETTABLEKS                       R19 R0 K7 ["state"]
      130 GETTABLEKS                       R19 R19 K9 ["s"]
      132 SETTABLEKS                       R19 R18 K46 ["Saturation"]
      134 GETTABLEKS                       R19 R0 K7 ["state"]
      136 GETTABLEKS                       R19 R19 K10 ["v"]
      138 SETTABLEKS                       R19 R18 K47 ["Value"]
      140 SETTABLEKS                       R7 R18 K48 ["Color"]
      142 GETTABLEKS                       R19 R0 K54 ["onTextChangedHex"]
      144 SETTABLEKS                       R19 R18 K49 ["OnTextChangedHex"]
      146 GETTABLEKS                       R19 R0 K55 ["onTextChangedRGB"]
      148 SETTABLEKS                       R19 R18 K50 ["OnTextChangedRGB"]
      150 GETTABLEKS                       R19 R0 K56 ["onTextChangedHSV"]
      152 SETTABLEKS                       R19 R18 K51 ["OnTextChangedHSV"]
      154 SETTABLEKS                       R2 R18 K52 ["Style"]
      156 CALL                             R16 2 1
      157 SETTABLEKS                       R16 R15 K42 ["ColorPropertiesPanel"]
      159 GETUPVAL                         R16 2
      160 GETTABLEKS                       R16 R16 K21 ["createElement"]
      162 GETUPVAL                         R17 3
      163 DUPTABLE                         R18 K57 [{"Size", "Layout", "LayoutOrder", "VerticalAlignment"}]
      164 GETTABLEKS                       R19 R2 K58 ["PickerSize"]
      166 SETTABLEKS                       R19 R18 K3 ["Size"]
      168 GETIMPORT                        R19 K30 [Enum.FillDirection.Vertical]
      170 SETTABLEKS                       R19 R18 K22 ["Layout"]
      172 NAMECALL                         R19 R4 K36 ["getNextOrder"]
      174 CALL                             R19 1 1
      175 SETTABLEKS                       R19 R18 K23 ["LayoutOrder"]
      177 GETIMPORT                        R19 K41 [Enum.VerticalAlignment.Top]
      179 SETTABLEKS                       R19 R18 K33 ["VerticalAlignment"]
      181 DUPTABLE                         R19 K61 [{"HueSaturationPicker", "ColorValueSlider"}]
      182 GETUPVAL                         R20 2
      183 GETTABLEKS                       R20 R20 K21 ["createElement"]
      185 GETUPVAL                         R21 5
      186 DUPTABLE                         R22 K63 [{"LayoutOrder", "Hue", "Value", "Saturation", "OnHueSaturationChanged", "Style"}]
      187 NAMECALL                         R23 R5 K36 ["getNextOrder"]
      189 CALL                             R23 1 1
      190 SETTABLEKS                       R23 R22 K23 ["LayoutOrder"]
      192 GETTABLEKS                       R23 R0 K7 ["state"]
      194 GETTABLEKS                       R23 R23 K8 ["h"]
      196 SETTABLEKS                       R23 R22 K45 ["Hue"]
      198 GETTABLEKS                       R23 R0 K7 ["state"]
      200 GETTABLEKS                       R23 R23 K10 ["v"]
      202 SETTABLEKS                       R23 R22 K47 ["Value"]
      204 GETTABLEKS                       R23 R0 K7 ["state"]
      206 GETTABLEKS                       R23 R23 K9 ["s"]
      208 SETTABLEKS                       R23 R22 K46 ["Saturation"]
      210 GETTABLEKS                       R23 R0 K64 ["onHueSaturationChanged"]
      212 SETTABLEKS                       R23 R22 K62 ["OnHueSaturationChanged"]
      214 SETTABLEKS                       R2 R22 K52 ["Style"]
      216 CALL                             R20 2 1
      217 SETTABLEKS                       R20 R19 K59 ["HueSaturationPicker"]
      219 GETUPVAL                         R20 2
      220 GETTABLEKS                       R20 R20 K21 ["createElement"]
      222 GETUPVAL                         R21 6
      223 DUPTABLE                         R22 K66 [{"LayoutOrder", "Hue", "Saturation", "Value", "updatePosition", "Style"}]
      224 NAMECALL                         R23 R5 K36 ["getNextOrder"]
      226 CALL                             R23 1 1
      227 SETTABLEKS                       R23 R22 K23 ["LayoutOrder"]
      229 GETTABLEKS                       R23 R0 K7 ["state"]
      231 GETTABLEKS                       R23 R23 K8 ["h"]
      233 SETTABLEKS                       R23 R22 K45 ["Hue"]
      235 GETTABLEKS                       R23 R0 K7 ["state"]
      237 GETTABLEKS                       R23 R23 K9 ["s"]
      239 SETTABLEKS                       R23 R22 K46 ["Saturation"]
      241 GETTABLEKS                       R23 R0 K7 ["state"]
      243 GETTABLEKS                       R23 R23 K10 ["v"]
      245 SETTABLEKS                       R23 R22 K47 ["Value"]
      247 GETTABLEKS                       R23 R0 K67 ["onColorValueChanged"]
      249 SETTABLEKS                       R23 R22 K65 ["updatePosition"]
      251 SETTABLEKS                       R2 R22 K52 ["Style"]
      253 CALL                             R20 2 1
      254 SETTABLEKS                       R20 R19 K60 ["ColorValueSlider"]
      256 CALL                             R16 3 1
      257 SETTABLEKS                       R16 R15 K43 ["Picker"]
      259 CALL                             R12 3 1
      260 SETTABLEKS                       R12 R11 K31 ["Body"]
      262 CALL                             R8 3 -1
      263 RETURN                           R8 -1

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
       18 GETTABLEKS                       R3 R0 K8 ["ContextServices"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["withContext"]
       23 GETTABLEKS                       R4 R0 K2 ["UI"]
       25 GETIMPORT                        R5 K6 [require]
       27 GETTABLEKS                       R6 R4 K10 ["Components"]
       29 GETTABLEKS                       R6 R6 K11 ["Pane"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Util"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R7 R6 K13 ["LayoutOrderIterator"]
       39 GETTABLEKS                       R8 R6 K14 ["prioritize"]
       41 GETTABLEKS                       R9 R6 K15 ["ColorStringValidators"]
       43 GETIMPORT                        R10 K6 [require]
       45 GETIMPORT                        R11 K1 [script]
       47 GETTABLEKS                       R11 R11 K16 ["ColorPropertiesPanel"]
       49 CALL                             R10 1 1
       50 GETIMPORT                        R11 K6 [require]
       52 GETIMPORT                        R12 K1 [script]
       54 GETTABLEKS                       R12 R12 K17 ["ColorValueSlider"]
       56 CALL                             R11 1 1
       57 GETIMPORT                        R12 K6 [require]
       59 GETIMPORT                        R13 K1 [script]
       61 GETTABLEKS                       R13 R13 K18 ["HueSaturationPicker"]
       63 CALL                             R12 1 1
       64 GETTABLEKS                       R13 R1 K19 ["PureComponent"]
       66 LOADK                            R15 K20 ["ColorPicker"]
       67 NAMECALL                         R13 R13 K21 ["extend"]
       69 CALL                             R13 2 1
       70 DUPCLOSURE                       R14 K22 [PROTO_7]
       71 CAPTURE                          VAL R9
       72 SETTABLEKS                       R14 R13 K23 ["init"]
       74 DUPCLOSURE                       R14 K24 [PROTO_8]
       75 SETTABLEKS                       R14 R13 K25 ["getDerivedStateFromProps"]
       77 DUPCLOSURE                       R14 K26 [PROTO_9]
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R11
       85 SETTABLEKS                       R14 R13 K27 ["render"]
       87 MOVE                             R14 R3
       88 DUPTABLE                         R15 K29 [{"Stylizer"}]
       89 GETTABLEKS                       R16 R2 K28 ["Stylizer"]
       91 SETTABLEKS                       R16 R15 K28 ["Stylizer"]
       93 CALL                             R14 1 1
       94 MOVE                             R15 R13
       95 CALL                             R14 1 1
       96 MOVE                             R13 R14
       97 RETURN                           R13 1
