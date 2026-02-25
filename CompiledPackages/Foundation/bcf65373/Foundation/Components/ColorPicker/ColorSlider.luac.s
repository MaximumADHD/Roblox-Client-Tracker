PROTO_0:
        0 GETIMPORT                        R1 K2 [ColorSequence.new]
        2 NEWTABLE                         R2 0 2
        4 GETIMPORT                        R3 K4 [ColorSequenceKeypoint.new]
        6 LOADN                            R4 0
        7 MOVE                             R5 R0
        8 CALL                             R3 2 1
        9 GETIMPORT                        R4 K4 [ColorSequenceKeypoint.new]
       11 LOADN                            R5 1
       12 MOVE                             R6 R0
       13 CALL                             R4 2 -1
       14 SETLIST                          R2 R3 -1 [1]
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETIMPORT                        R2 K4 [Color3.fromHSV]
        3 MOVE                             R3 R0
        4 LOADN                            R4 1
        5 LOADN                            R5 1
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K0 ["Color3"]
        9 LOADN                            R2 0
       10 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       12 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETTABLEKS                       R2 R0 K3 ["baseColor"]
        3 SETTABLEKS                       R2 R1 K0 ["Color3"]
        5 GETTABLEKS                       R3 R0 K5 ["value"]
        7 SUBRK                            R2 R4 K3 ["baseColor"]
        8 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       10 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R1 K0 ["sliderType"]
        8 GETTABLEKS                       R4 R1 K1 ["value"]
       10 GETTABLEKS                       R5 R1 K2 ["onValueChanged"]
       12 GETUPVAL                         R8 3
       13 GETTABLEKS                       R7 R8 K3 ["Hue"]
       15 JUMPIFNOTEQ                      R3 R7 ; [+3]
       17 GETUPVAL                         R6 4
       18 JUMP                             ; [+6]
       19 GETTABLEKS                       R6 R1 K4 ["baseColor"]
       21 GETUPVAL                         R8 5
       22 NAMECALL                         R6 R6 K5 ["map"]
       24 CALL                             R6 2 1
       25 LOADNIL                          R7
       26 LOADNIL                          R8
       27 GETUPVAL                         R10 3
       28 GETTABLEKS                       R9 R10 K3 ["Hue"]
       30 JUMPIFNOTEQ                      R3 R9 ; [+7]
       32 DUPCLOSURE                       R11 K6 [PROTO_1]
       33 NAMECALL                         R9 R4 K5 ["map"]
       35 CALL                             R9 2 1
       36 MOVE                             R7 R9
       37 JUMP                             ; [+39]
       38 GETUPVAL                         R10 3
       39 GETTABLEKS                       R9 R10 K7 ["Alpha"]
       41 JUMPIFNOTEQ                      R3 R9 ; [+35]
       43 GETIMPORT                        R9 K10 [NumberSequence.new]
       45 NEWTABLE                         R10 0 2
       47 GETIMPORT                        R11 K12 [NumberSequenceKeypoint.new]
       49 LOADN                            R12 0
       50 LOADN                            R13 1
       51 CALL                             R11 2 1
       52 GETIMPORT                        R12 K12 [NumberSequenceKeypoint.new]
       54 LOADN                            R13 1
       55 LOADN                            R14 0
       56 CALL                             R12 2 -1
       57 SETLIST                          R10 R11 -1 [1]
       59 CALL                             R9 1 1
       60 MOVE                             R8 R9
       61 GETUPVAL                         R10 6
       62 GETTABLEKS                       R9 R10 K13 ["joinBindings"]
       64 DUPTABLE                         R10 K14 [{"baseColor", "value"}]
       65 GETTABLEKS                       R11 R1 K4 ["baseColor"]
       67 SETTABLEKS                       R11 R10 K4 ["baseColor"]
       69 SETTABLEKS                       R4 R10 K1 ["value"]
       71 CALL                             R9 1 1
       72 DUPCLOSURE                       R11 K15 [PROTO_2]
       73 NAMECALL                         R9 R9 K5 ["map"]
       75 CALL                             R9 2 1
       76 MOVE                             R7 R9
       77 GETUPVAL                         R10 6
       78 GETTABLEKS                       R9 R10 K16 ["createElement"]
       80 GETUPVAL                         R10 7
       81 GETUPVAL                         R11 8
       82 MOVE                             R12 R1
       83 DUPTABLE                         R13 K19 [{"tag", "backgroundStyle"}]
       84 LOADK                            R14 K20 ["auto-y size-full-0 radius-circle stroke-standard stroke-emphasis"]
       85 SETTABLEKS                       R14 R13 K17 ["tag"]
       87 GETTABLEKS                       R17 R2 K21 ["Color"]
       89 GETTABLEKS                       R16 R17 K22 ["Extended"]
       91 GETTABLEKS                       R15 R16 K23 ["White"]
       93 GETTABLEKS                       R14 R15 K24 ["White_100"]
       95 SETTABLEKS                       R14 R13 K18 ["backgroundStyle"]
       97 CALL                             R11 2 1
       98 DUPTABLE                         R12 K27 [{"Gradient", "Slider"}]
       99 GETUPVAL                         R14 6
      100 GETTABLEKS                       R13 R14 K16 ["createElement"]
      102 LOADK                            R14 K28 ["UIGradient"]
      103 DUPTABLE                         R15 K30 [{"Color", "Transparency"}]
      104 SETTABLEKS                       R6 R15 K21 ["Color"]
      106 SETTABLEKS                       R8 R15 K29 ["Transparency"]
      108 CALL                             R13 2 1
      109 SETTABLEKS                       R13 R12 K25 ["Gradient"]
      111 GETUPVAL                         R14 6
      112 GETTABLEKS                       R13 R14 K16 ["createElement"]
      114 GETUPVAL                         R14 9
      115 DUPTABLE                         R15 K37 [{"value", "onValueChanged", "size", "variant", "isContained", "width", "knobVisibility", "knob"}]
      116 SETTABLEKS                       R4 R15 K1 ["value"]
      118 SETTABLEKS                       R5 R15 K2 ["onValueChanged"]
      120 GETUPVAL                         R17 10
      121 GETTABLEKS                       R16 R17 K38 ["Medium"]
      123 SETTABLEKS                       R16 R15 K31 ["size"]
      125 GETUPVAL                         R17 11
      126 GETTABLEKS                       R16 R17 K39 ["Utility"]
      128 SETTABLEKS                       R16 R15 K32 ["variant"]
      130 LOADB                            R16 1
      131 SETTABLEKS                       R16 R15 K33 ["isContained"]
      133 GETIMPORT                        R16 K41 [UDim.new]
      135 LOADN                            R17 1
      136 LOADN                            R18 0
      137 CALL                             R16 2 1
      138 SETTABLEKS                       R16 R15 K34 ["width"]
      140 GETUPVAL                         R17 12
      141 GETTABLEKS                       R16 R17 K42 ["Always"]
      143 SETTABLEKS                       R16 R15 K35 ["knobVisibility"]
      145 GETUPVAL                         R17 6
      146 GETTABLEKS                       R16 R17 K16 ["createElement"]
      148 GETUPVAL                         R17 13
      149 DUPTABLE                         R18 K46 [{"size", "style", "stroke", "hasShadow"}]
      150 GETUPVAL                         R20 10
      151 GETTABLEKS                       R19 R20 K47 ["Large"]
      153 SETTABLEKS                       R19 R18 K31 ["size"]
      155 SETTABLEKS                       R7 R18 K43 ["style"]
      157 DUPTABLE                         R19 K49 [{"Color", "Thickness", "Transparency"}]
      158 GETTABLEKS                       R23 R2 K21 ["Color"]
      160 GETTABLEKS                       R22 R23 K50 ["System"]
      162 GETTABLEKS                       R21 R22 K51 ["Contrast"]
      164 GETTABLEKS                       R20 R21 K52 ["Color3"]
      166 SETTABLEKS                       R20 R19 K21 ["Color"]
      168 GETTABLEKS                       R21 R2 K53 ["Stroke"]
      170 GETTABLEKS                       R20 R21 K54 ["Thicker"]
      172 SETTABLEKS                       R20 R19 K48 ["Thickness"]
      174 GETTABLEKS                       R23 R2 K21 ["Color"]
      176 GETTABLEKS                       R22 R23 K50 ["System"]
      178 GETTABLEKS                       R21 R22 K51 ["Contrast"]
      180 GETTABLEKS                       R20 R21 K29 ["Transparency"]
      182 SETTABLEKS                       R20 R19 K29 ["Transparency"]
      184 SETTABLEKS                       R19 R18 K44 ["stroke"]
      186 LOADB                            R19 1
      187 SETTABLEKS                       R19 R18 K45 ["hasShadow"]
      189 CALL                             R16 2 1
      190 SETTABLEKS                       R16 R15 K36 ["knob"]
      192 CALL                             R13 2 1
      193 SETTABLEKS                       R13 R12 K26 ["Slider"]
      195 CALL                             R9 3 -1
      196 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Providers"]
       25 GETTABLEKS                       R6 R7 K11 ["Style"]
       27 GETTABLEKS                       R5 R6 K12 ["useTokens"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Components"]
       34 GETTABLEKS                       R6 R7 K13 ["View"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R8 R0 K8 ["Components"]
       41 GETTABLEKS                       R7 R8 K14 ["Slider"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R9 R0 K8 ["Components"]
       48 GETTABLEKS                       R8 R9 K15 ["Knob"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R10 R0 K16 ["Enums"]
       55 GETTABLEKS                       R9 R10 K17 ["SliderVariant"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R11 R0 K16 ["Enums"]
       62 GETTABLEKS                       R10 R11 K18 ["InputSize"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R12 R0 K16 ["Enums"]
       69 GETTABLEKS                       R11 R12 K19 ["Visibility"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R13 R0 K16 ["Enums"]
       76 GETTABLEKS                       R12 R13 K20 ["ColorSliderType"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R14 R0 K21 ["Utility"]
       83 GETTABLEKS                       R13 R14 K22 ["withCommonProps"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R15 R0 K21 ["Utility"]
       90 GETTABLEKS                       R14 R15 K23 ["withDefaults"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K26 [ColorSequence.new]
       95 NEWTABLE                         R15 0 7
       97 GETIMPORT                        R16 K28 [ColorSequenceKeypoint.new]
       99 LOADN                            R17 0
      100 GETIMPORT                        R18 K30 [Color3.new]
      102 LOADN                            R19 1
      103 LOADN                            R20 0
      104 LOADN                            R21 0
      105 CALL                             R18 3 -1
      106 CALL                             R16 -1 1
      107 GETIMPORT                        R17 K28 [ColorSequenceKeypoint.new]
      109 LOADK                            R18 K31 [0.166666666666667]
      110 GETIMPORT                        R19 K30 [Color3.new]
      112 LOADN                            R20 1
      113 LOADN                            R21 1
      114 LOADN                            R22 0
      115 CALL                             R19 3 -1
      116 CALL                             R17 -1 1
      117 GETIMPORT                        R18 K28 [ColorSequenceKeypoint.new]
      119 LOADK                            R19 K32 [0.333333333333333]
      120 GETIMPORT                        R20 K30 [Color3.new]
      122 LOADN                            R21 0
      123 LOADN                            R22 1
      124 LOADN                            R23 0
      125 CALL                             R20 3 -1
      126 CALL                             R18 -1 1
      127 GETIMPORT                        R19 K28 [ColorSequenceKeypoint.new]
      129 LOADK                            R20 K33 [0.5]
      130 GETIMPORT                        R21 K30 [Color3.new]
      132 LOADN                            R22 0
      133 LOADN                            R23 1
      134 LOADN                            R24 1
      135 CALL                             R21 3 -1
      136 CALL                             R19 -1 1
      137 GETIMPORT                        R20 K28 [ColorSequenceKeypoint.new]
      139 LOADK                            R21 K34 [0.666666666666667]
      140 GETIMPORT                        R22 K30 [Color3.new]
      142 LOADN                            R23 0
      143 LOADN                            R24 0
      144 LOADN                            R25 1
      145 CALL                             R22 3 -1
      146 CALL                             R20 -1 1
      147 GETIMPORT                        R21 K28 [ColorSequenceKeypoint.new]
      149 LOADK                            R22 K35 [0.833333333333333]
      150 GETIMPORT                        R23 K30 [Color3.new]
      152 LOADN                            R24 1
      153 LOADN                            R25 0
      154 LOADN                            R26 1
      155 CALL                             R23 3 -1
      156 CALL                             R21 -1 1
      157 GETIMPORT                        R22 K28 [ColorSequenceKeypoint.new]
      159 LOADN                            R23 1
      160 GETIMPORT                        R24 K30 [Color3.new]
      162 LOADN                            R25 1
      163 LOADN                            R26 0
      164 LOADN                            R27 0
      165 CALL                             R24 3 -1
      166 CALL                             R22 -1 -1
      167 SETLIST                          R15 R16 -1 [1]
      169 CALL                             R14 1 1
      170 DUPCLOSURE                       R15 K36 [PROTO_0]
      171 DUPTABLE                         R16 K39 [{"sliderType", "baseColor"}]
      172 GETTABLEKS                       R17 R11 K40 ["Hue"]
      174 SETTABLEKS                       R17 R16 K37 ["sliderType"]
      176 GETTABLEKS                       R17 R2 K41 ["createBinding"]
      178 GETIMPORT                        R18 K30 [Color3.new]
      180 LOADN                            R19 1
      181 LOADN                            R20 1
      182 LOADN                            R21 1
      183 CALL                             R18 3 -1
      184 CALL                             R17 -1 1
      185 SETTABLEKS                       R17 R16 K38 ["baseColor"]
      187 DUPCLOSURE                       R17 K42 [PROTO_3]
      188 CAPTURE                          VAL R13
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R4
      191 CAPTURE                          VAL R11
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R15
      194 CAPTURE                          VAL R2
      195 CAPTURE                          VAL R5
      196 CAPTURE                          VAL R12
      197 CAPTURE                          VAL R6
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R8
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R7
      202 RETURN                           R17 1
