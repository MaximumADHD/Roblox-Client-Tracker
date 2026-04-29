PROTO_0:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_0]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETIMPORT                        R2 K4 [Color3.fromHSV]
        3 GETTABLEN                        R3 R0 2
        4 GETTABLEN                        R4 R0 3
        5 LOADN                            R5 1
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K0 ["Color3"]
        9 GETTABLEN                        R2 R0 1
       10 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       12 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R4 R1 K0 ["Color"]
        4 GETTABLEKS                       R3 R4 K1 ["Surface"]
        6 GETTABLEKS                       R2 R3 K2 ["Surface_100"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K3 ["joinBindings"]
       11 NEWTABLE                         R4 0 3
       13 GETTABLEKS                       R5 R0 K4 ["transparency"]
       15 GETTABLEKS                       R6 R0 K5 ["hue"]
       17 GETTABLEKS                       R7 R0 K6 ["saturation"]
       19 SETLIST                          R4 R5 3 [1]
       21 CALL                             R3 1 1
       22 DUPCLOSURE                       R5 K7 [PROTO_2]
       23 NAMECALL                         R3 R3 K8 ["map"]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 2
       27 MOVE                             R5 R2
       28 MOVE                             R6 R3
       29 CALL                             R4 2 1
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R5 R6 K9 ["createElement"]
       33 GETUPVAL                         R6 3
       34 DUPTABLE                         R7 K13 [{"Size", "backgroundStyle", "tag"}]
       35 GETIMPORT                        R8 K16 [UDim2.fromOffset]
       37 LOADN                            R9 200
       38 LOADN                            R10 200
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K10 ["Size"]
       42 SETTABLEKS                       R2 R7 K11 ["backgroundStyle"]
       44 LOADK                            R8 K17 ["padding-large col align-x-center align-y-center"]
       45 SETTABLEKS                       R8 R7 K12 ["tag"]
       47 GETUPVAL                         R9 1
       48 GETTABLEKS                       R8 R9 K9 ["createElement"]
       50 GETUPVAL                         R9 3
       51 DUPTABLE                         R10 K18 [{"backgroundStyle", "tag"}]
       52 SETTABLEKS                       R3 R10 K11 ["backgroundStyle"]
       54 LOADK                            R11 K19 ["size-2000 col align-x-center align-y-center"]
       55 SETTABLEKS                       R11 R10 K12 ["tag"]
       57 GETUPVAL                         R12 1
       58 GETTABLEKS                       R11 R12 K9 ["createElement"]
       60 GETUPVAL                         R12 3
       61 DUPTABLE                         R13 K18 [{"backgroundStyle", "tag"}]
       62 GETUPVAL                         R15 4
       63 JUMPIFNOT                        R15 ; [+2]
       64 MOVE                             R14 R4
       65 JUMP                             ; [+1]
       66 MOVE                             R14 R3
       67 SETTABLEKS                       R14 R13 K11 ["backgroundStyle"]
       69 LOADK                            R14 K20 ["size-1000"]
       70 SETTABLEKS                       R14 R13 K12 ["tag"]
       72 DUPTABLE                         R14 K24 [{"Top", "Right", "Bottom"}]
       73 GETUPVAL                         R16 1
       74 GETTABLEKS                       R15 R16 K9 ["createElement"]
       76 GETUPVAL                         R16 3
       77 DUPTABLE                         R17 K26 [{"Size", "Position", "tag"}]
       78 GETIMPORT                        R18 K28 [UDim2.new]
       80 LOADN                            R19 1
       81 LOADN                            R20 0
       82 LOADN                            R21 0
       83 LOADN                            R22 1
       84 CALL                             R18 4 1
       85 SETTABLEKS                       R18 R17 K10 ["Size"]
       87 GETIMPORT                        R18 K16 [UDim2.fromOffset]
       89 LOADN                            R19 0
       90 LOADN                            R20 0
       91 CALL                             R18 2 1
       92 SETTABLEKS                       R18 R17 K25 ["Position"]
       94 LOADK                            R18 K29 ["bg-system-emphasis"]
       95 SETTABLEKS                       R18 R17 K12 ["tag"]
       97 CALL                             R15 2 1
       98 SETTABLEKS                       R15 R14 K21 ["Top"]
      100 GETUPVAL                         R16 1
      101 GETTABLEKS                       R15 R16 K9 ["createElement"]
      103 GETUPVAL                         R16 3
      104 DUPTABLE                         R17 K26 [{"Size", "Position", "tag"}]
      105 GETIMPORT                        R18 K28 [UDim2.new]
      107 LOADN                            R19 0
      108 LOADN                            R20 1
      109 LOADN                            R21 1
      110 LOADN                            R22 0
      111 CALL                             R18 4 1
      112 SETTABLEKS                       R18 R17 K10 ["Size"]
      114 GETIMPORT                        R18 K28 [UDim2.new]
      116 LOADN                            R19 1
      117 LOADN                            R20 255
      118 LOADN                            R21 0
      119 LOADN                            R22 0
      120 CALL                             R18 4 1
      121 SETTABLEKS                       R18 R17 K25 ["Position"]
      123 LOADK                            R18 K29 ["bg-system-emphasis"]
      124 SETTABLEKS                       R18 R17 K12 ["tag"]
      126 CALL                             R15 2 1
      127 SETTABLEKS                       R15 R14 K22 ["Right"]
      129 GETUPVAL                         R16 1
      130 GETTABLEKS                       R15 R16 K9 ["createElement"]
      132 GETUPVAL                         R16 3
      133 DUPTABLE                         R17 K26 [{"Size", "Position", "tag"}]
      134 GETIMPORT                        R18 K28 [UDim2.new]
      136 LOADN                            R19 1
      137 LOADN                            R20 0
      138 LOADN                            R21 0
      139 LOADN                            R22 1
      140 CALL                             R18 4 1
      141 SETTABLEKS                       R18 R17 K10 ["Size"]
      143 GETIMPORT                        R18 K28 [UDim2.new]
      145 LOADN                            R19 0
      146 LOADN                            R20 0
      147 LOADN                            R21 1
      148 LOADN                            R22 255
      149 CALL                             R18 4 1
      150 SETTABLEKS                       R18 R17 K25 ["Position"]
      152 LOADK                            R18 K29 ["bg-system-emphasis"]
      153 SETTABLEKS                       R18 R17 K12 ["tag"]
      155 CALL                             R15 2 1
      156 SETTABLEKS                       R15 R14 K23 ["Bottom"]
      158 CALL                             R11 3 -1
      159 CALL                             R8 -1 -1
      160 CALL                             R5 -1 -1
      161 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useBinding"]
        3 LOADK                            R1 K1 [0.5]
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useBinding"]
        8 LOADN                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K0 ["useBinding"]
       13 LOADN                            R5 0
       14 CALL                             R4 1 2
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K2 ["useState"]
       18 LOADB                            R7 1
       19 CALL                             R6 1 2
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R8 R9 K3 ["createElement"]
       23 GETUPVAL                         R9 1
       24 DUPTABLE                         R10 K5 [{"tag"}]
       25 LOADK                            R11 K6 ["auto-xy col gap-large"]
       26 SETTABLEKS                       R11 R10 K4 ["tag"]
       28 GETUPVAL                         R12 0
       29 GETTABLEKS                       R11 R12 K3 ["createElement"]
       31 GETUPVAL                         R12 2
       32 DUPTABLE                         R13 K11 [{"label", "isChecked", "onActivated", "size"}]
       33 LOADK                            R14 K12 ["Use cumulative background"]
       34 SETTABLEKS                       R14 R13 K7 ["label"]
       36 SETTABLEKS                       R6 R13 K8 ["isChecked"]
       38 NEWCLOSURE                       R14 P0
       39 CAPTURE                          VAL R7
       40 SETTABLEKS                       R14 R13 K9 ["onActivated"]
       42 GETUPVAL                         R15 3
       43 GETTABLEKS                       R14 R15 K13 ["XSmall"]
       45 SETTABLEKS                       R14 R13 K10 ["size"]
       47 CALL                             R11 2 1
       48 GETUPVAL                         R13 0
       49 GETTABLEKS                       R12 R13 K3 ["createElement"]
       51 GETUPVAL                         R13 1
       52 DUPTABLE                         R14 K5 [{"tag"}]
       53 LOADK                            R15 K14 ["auto-xy col gap-medium"]
       54 SETTABLEKS                       R15 R14 K4 ["tag"]
       56 GETUPVAL                         R16 0
       57 GETTABLEKS                       R15 R16 K3 ["createElement"]
       59 GETUPVAL                         R16 4
       60 DUPTABLE                         R17 K17 [{"LayoutOrder", "Text", "tag"}]
       61 LOADN                            R18 1
       62 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
       64 LOADK                            R18 K18 ["Semi-transparent element background"]
       65 SETTABLEKS                       R18 R17 K16 ["Text"]
       67 LOADK                            R18 K19 ["auto-xy"]
       68 SETTABLEKS                       R18 R17 K4 ["tag"]
       70 CALL                             R15 2 1
       71 GETUPVAL                         R17 0
       72 GETTABLEKS                       R16 R17 K3 ["createElement"]
       74 GETUPVAL                         R17 1
       75 DUPTABLE                         R18 K20 [{"LayoutOrder", "tag"}]
       76 LOADN                            R19 2
       77 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
       79 LOADK                            R19 K21 ["size-2600-0 auto-y row gap-large"]
       80 SETTABLEKS                       R19 R18 K4 ["tag"]
       82 GETUPVAL                         R20 0
       83 GETTABLEKS                       R19 R20 K3 ["createElement"]
       85 GETUPVAL                         R20 5
       86 DUPTABLE                         R21 K22 [{"Text", "size"}]
       87 LOADK                            R22 K23 ["Transparency"]
       88 SETTABLEKS                       R22 R21 K16 ["Text"]
       90 GETUPVAL                         R23 3
       91 GETTABLEKS                       R22 R23 K24 ["Medium"]
       93 SETTABLEKS                       R22 R21 K10 ["size"]
       95 CALL                             R19 2 1
       96 GETUPVAL                         R21 0
       97 GETTABLEKS                       R20 R21 K3 ["createElement"]
       99 GETUPVAL                         R21 6
      100 DUPTABLE                         R22 K28 [{"value", "onValueChanged", "size", "knobVisibility"}]
      101 SETTABLEKS                       R0 R22 K25 ["value"]
      103 SETTABLEKS                       R1 R22 K26 ["onValueChanged"]
      105 GETUPVAL                         R24 3
      106 GETTABLEKS                       R23 R24 K24 ["Medium"]
      108 SETTABLEKS                       R23 R22 K10 ["size"]
      110 GETUPVAL                         R24 7
      111 GETTABLEKS                       R23 R24 K29 ["Always"]
      113 SETTABLEKS                       R23 R22 K27 ["knobVisibility"]
      115 CALL                             R20 2 -1
      116 CALL                             R16 -1 1
      117 GETUPVAL                         R18 0
      118 GETTABLEKS                       R17 R18 K3 ["createElement"]
      120 GETUPVAL                         R18 1
      121 DUPTABLE                         R19 K20 [{"LayoutOrder", "tag"}]
      122 LOADN                            R20 3
      123 SETTABLEKS                       R20 R19 K15 ["LayoutOrder"]
      125 LOADK                            R20 K21 ["size-2600-0 auto-y row gap-large"]
      126 SETTABLEKS                       R20 R19 K4 ["tag"]
      128 GETUPVAL                         R21 0
      129 GETTABLEKS                       R20 R21 K3 ["createElement"]
      131 GETUPVAL                         R21 5
      132 DUPTABLE                         R22 K22 [{"Text", "size"}]
      133 LOADK                            R23 K30 ["Hue"]
      134 SETTABLEKS                       R23 R22 K16 ["Text"]
      136 GETUPVAL                         R24 3
      137 GETTABLEKS                       R23 R24 K24 ["Medium"]
      139 SETTABLEKS                       R23 R22 K10 ["size"]
      141 CALL                             R20 2 1
      142 GETUPVAL                         R22 0
      143 GETTABLEKS                       R21 R22 K3 ["createElement"]
      145 GETUPVAL                         R22 6
      146 DUPTABLE                         R23 K28 [{"value", "onValueChanged", "size", "knobVisibility"}]
      147 SETTABLEKS                       R2 R23 K25 ["value"]
      149 SETTABLEKS                       R3 R23 K26 ["onValueChanged"]
      151 GETUPVAL                         R25 3
      152 GETTABLEKS                       R24 R25 K24 ["Medium"]
      154 SETTABLEKS                       R24 R23 K10 ["size"]
      156 GETUPVAL                         R25 7
      157 GETTABLEKS                       R24 R25 K29 ["Always"]
      159 SETTABLEKS                       R24 R23 K27 ["knobVisibility"]
      161 CALL                             R21 2 -1
      162 CALL                             R17 -1 1
      163 GETUPVAL                         R19 0
      164 GETTABLEKS                       R18 R19 K3 ["createElement"]
      166 GETUPVAL                         R19 1
      167 DUPTABLE                         R20 K20 [{"LayoutOrder", "tag"}]
      168 LOADN                            R21 4
      169 SETTABLEKS                       R21 R20 K15 ["LayoutOrder"]
      171 LOADK                            R21 K21 ["size-2600-0 auto-y row gap-large"]
      172 SETTABLEKS                       R21 R20 K4 ["tag"]
      174 GETUPVAL                         R22 0
      175 GETTABLEKS                       R21 R22 K3 ["createElement"]
      177 GETUPVAL                         R22 5
      178 DUPTABLE                         R23 K22 [{"Text", "size"}]
      179 LOADK                            R24 K31 ["Saturation"]
      180 SETTABLEKS                       R24 R23 K16 ["Text"]
      182 GETUPVAL                         R25 3
      183 GETTABLEKS                       R24 R25 K24 ["Medium"]
      185 SETTABLEKS                       R24 R23 K10 ["size"]
      187 CALL                             R21 2 1
      188 GETUPVAL                         R23 0
      189 GETTABLEKS                       R22 R23 K3 ["createElement"]
      191 GETUPVAL                         R23 6
      192 DUPTABLE                         R24 K28 [{"value", "onValueChanged", "size", "knobVisibility"}]
      193 SETTABLEKS                       R4 R24 K25 ["value"]
      195 SETTABLEKS                       R5 R24 K26 ["onValueChanged"]
      197 GETUPVAL                         R26 3
      198 GETTABLEKS                       R25 R26 K24 ["Medium"]
      200 SETTABLEKS                       R25 R24 K10 ["size"]
      202 GETUPVAL                         R26 7
      203 GETTABLEKS                       R25 R26 K29 ["Always"]
      205 SETTABLEKS                       R25 R24 K27 ["knobVisibility"]
      207 CALL                             R22 2 -1
      208 CALL                             R18 -1 -1
      209 CALL                             R12 -1 1
      210 GETUPVAL                         R14 0
      211 GETTABLEKS                       R13 R14 K3 ["createElement"]
      213 NEWCLOSURE                       R14 P1
      214 CAPTURE                          UPVAL U8
      215 CAPTURE                          UPVAL U0
      216 CAPTURE                          UPVAL U9
      217 CAPTURE                          UPVAL U1
      218 CAPTURE                          VAL R6
      219 DUPTABLE                         R15 K36 [{"transparency", "hue", "saturation", "useCumulative"}]
      220 SETTABLEKS                       R0 R15 K32 ["transparency"]
      222 SETTABLEKS                       R2 R15 K33 ["hue"]
      224 SETTABLEKS                       R4 R15 K34 ["saturation"]
      226 SETTABLEKS                       R6 R15 K35 ["useCumulative"]
      228 CALL                             R13 2 -1
      229 CALL                             R8 -1 -1
      230 RETURN                           R8 -1

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
       18 GETTABLEKS                       R4 R5 K9 ["Checkbox"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["InputLabel"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K11 ["Enums"]
       32 GETTABLEKS                       R6 R7 K12 ["InputSize"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R8 K13 ["Slider"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R9 K14 ["Text"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K8 ["Components"]
       53 GETTABLEKS                       R9 R10 K15 ["View"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K11 ["Enums"]
       60 GETTABLEKS                       R10 R11 K16 ["Visibility"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETIMPORT                        R13 K1 [script]
       67 GETTABLEKS                       R12 R13 K4 ["Parent"]
       69 GETTABLEKS                       R11 R12 K17 ["useCumulativeBackground"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R14 R0 K18 ["Providers"]
       76 GETTABLEKS                       R13 R14 K19 ["Style"]
       78 GETTABLEKS                       R12 R13 K20 ["useTokens"]
       80 CALL                             R11 1 1
       81 DUPTABLE                         R12 K23 [{"summary", "stories"}]
       82 LOADK                            R13 K24 ["Sometimes we need to get a color matching that of the semi-transparent element on a solid background. useCumulativeBackground uses lerp magic to get it. Without cumulative background the element on top of the semi-transparent one has the same semi-transparent background, when you check the option the helper is used and the solid color is applied."]
       83 SETTABLEKS                       R13 R12 K21 ["summary"]
       85 NEWTABLE                         R13 0 1
       87 DUPTABLE                         R14 K27 [{"name", "story"}]
       88 LOADK                            R15 K28 ["Base"]
       89 SETTABLEKS                       R15 R14 K25 ["name"]
       91 DUPCLOSURE                       R15 K29 [PROTO_4]
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R10
      102 SETTABLEKS                       R15 R14 K26 ["story"]
      104 SETLIST                          R13 R14 1 [1]
      106 SETTABLEKS                       R13 R12 K22 ["stories"]
      108 RETURN                           R12 1
