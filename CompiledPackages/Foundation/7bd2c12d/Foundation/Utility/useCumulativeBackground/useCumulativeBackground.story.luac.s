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
        2 GETTABLEKS                       R2 R1 K0 ["Color"]
        4 GETTABLEKS                       R2 R2 K1 ["Surface"]
        6 GETTABLEKS                       R2 R2 K2 ["Surface_100"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["joinBindings"]
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
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K9 ["createElement"]
       33 GETUPVAL                         R6 3
       34 DUPTABLE                         R7 K14 [{["Size"], ["backgroundStyle"], ["tag"] = "padding-large col align-x-center align-y-center"}]
       35 GETIMPORT                        R8 K17 [UDim2.fromOffset]
       37 LOADN                            R9 200
       38 LOADN                            R10 200
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K10 ["Size"]
       42 SETTABLEKS                       R2 R7 K11 ["backgroundStyle"]
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K9 ["createElement"]
       47 GETUPVAL                         R9 3
       48 DUPTABLE                         R10 K19 [{["backgroundStyle"], ["tag"] = "size-2000 col align-x-center align-y-center"}]
       49 SETTABLEKS                       R3 R10 K11 ["backgroundStyle"]
       51 GETUPVAL                         R11 1
       52 GETTABLEKS                       R11 R11 K9 ["createElement"]
       54 GETUPVAL                         R12 3
       55 DUPTABLE                         R13 K21 [{["backgroundStyle"], ["tag"] = "size-1000"}]
       56 GETUPVAL                         R15 4
       57 JUMPIFNOT                        R15 ; [+2]
       58 MOVE                             R14 R4
       59 JUMP                             ; [+1]
       60 MOVE                             R14 R3
       61 SETTABLEKS                       R14 R13 K11 ["backgroundStyle"]
       63 DUPTABLE                         R14 K25 [{"Top", "Right", "Bottom"}]
       64 GETUPVAL                         R15 1
       65 GETTABLEKS                       R15 R15 K9 ["createElement"]
       67 GETUPVAL                         R16 3
       68 DUPTABLE                         R17 K28 [{["Size"], ["Position"], ["tag"] = "bg-system-emphasis"}]
       69 GETIMPORT                        R18 K30 [UDim2.new]
       71 LOADN                            R19 1
       72 LOADN                            R20 0
       73 LOADN                            R21 0
       74 LOADN                            R22 1
       75 CALL                             R18 4 1
       76 SETTABLEKS                       R18 R17 K10 ["Size"]
       78 GETIMPORT                        R18 K17 [UDim2.fromOffset]
       80 LOADN                            R19 0
       81 LOADN                            R20 0
       82 CALL                             R18 2 1
       83 SETTABLEKS                       R18 R17 K26 ["Position"]
       85 CALL                             R15 2 1
       86 SETTABLEKS                       R15 R14 K22 ["Top"]
       88 GETUPVAL                         R15 1
       89 GETTABLEKS                       R15 R15 K9 ["createElement"]
       91 GETUPVAL                         R16 3
       92 DUPTABLE                         R17 K28 [{["Size"], ["Position"], ["tag"] = "bg-system-emphasis"}]
       93 GETIMPORT                        R18 K30 [UDim2.new]
       95 LOADN                            R19 0
       96 LOADN                            R20 1
       97 LOADN                            R21 1
       98 LOADN                            R22 0
       99 CALL                             R18 4 1
      100 SETTABLEKS                       R18 R17 K10 ["Size"]
      102 GETIMPORT                        R18 K30 [UDim2.new]
      104 LOADN                            R19 1
      105 LOADN                            R20 -1
      106 LOADN                            R21 0
      107 LOADN                            R22 0
      108 CALL                             R18 4 1
      109 SETTABLEKS                       R18 R17 K26 ["Position"]
      111 CALL                             R15 2 1
      112 SETTABLEKS                       R15 R14 K23 ["Right"]
      114 GETUPVAL                         R15 1
      115 GETTABLEKS                       R15 R15 K9 ["createElement"]
      117 GETUPVAL                         R16 3
      118 DUPTABLE                         R17 K28 [{["Size"], ["Position"], ["tag"] = "bg-system-emphasis"}]
      119 GETIMPORT                        R18 K30 [UDim2.new]
      121 LOADN                            R19 1
      122 LOADN                            R20 0
      123 LOADN                            R21 0
      124 LOADN                            R22 1
      125 CALL                             R18 4 1
      126 SETTABLEKS                       R18 R17 K10 ["Size"]
      128 GETIMPORT                        R18 K30 [UDim2.new]
      130 LOADN                            R19 0
      131 LOADN                            R20 0
      132 LOADN                            R21 1
      133 LOADN                            R22 -1
      134 CALL                             R18 4 1
      135 SETTABLEKS                       R18 R17 K26 ["Position"]
      137 CALL                             R15 2 1
      138 SETTABLEKS                       R15 R14 K24 ["Bottom"]
      140 CALL                             R11 3 -1
      141 CALL                             R8 -1 -1
      142 CALL                             R5 -1 -1
      143 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useBinding"]
        3 LOADK                            R1 K1 [0.5]
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useBinding"]
        8 LOADN                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["useBinding"]
       13 LOADN                            R5 0
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K2 ["useState"]
       18 LOADB                            R7 1
       19 CALL                             R6 1 2
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K3 ["createElement"]
       23 GETUPVAL                         R9 1
       24 DUPTABLE                         R10 K6 [{["tag"] = "auto-xy col gap-large"}]
       25 GETUPVAL                         R11 0
       26 GETTABLEKS                       R11 R11 K3 ["createElement"]
       28 GETUPVAL                         R12 2
       29 DUPTABLE                         R13 K12 [{["label"] = "Use cumulative background", ["isChecked"], ["onActivated"], ["size"]}]
       30 SETTABLEKS                       R6 R13 K9 ["isChecked"]
       32 NEWCLOSURE                       R14 P0
       33 CAPTURE                          VAL R7
       34 SETTABLEKS                       R14 R13 K10 ["onActivated"]
       36 GETUPVAL                         R14 3
       37 GETTABLEKS                       R14 R14 K13 ["XSmall"]
       39 SETTABLEKS                       R14 R13 K11 ["size"]
       41 CALL                             R11 2 1
       42 GETUPVAL                         R12 0
       43 GETTABLEKS                       R12 R12 K3 ["createElement"]
       45 GETUPVAL                         R13 1
       46 DUPTABLE                         R14 K15 [{["tag"] = "auto-xy col gap-medium"}]
       47 GETUPVAL                         R15 0
       48 GETTABLEKS                       R15 R15 K3 ["createElement"]
       50 GETUPVAL                         R16 4
       51 DUPTABLE                         R17 K21 [{["LayoutOrder"] = 1, ["Text"] = "Semi-transparent element background", ["tag"] = "auto-xy"}]
       52 CALL                             R15 2 1
       53 GETUPVAL                         R16 0
       54 GETTABLEKS                       R16 R16 K3 ["createElement"]
       56 GETUPVAL                         R17 1
       57 DUPTABLE                         R18 K24 [{["LayoutOrder"] = 2, ["tag"] = "size-2600-0 auto-y row gap-large"}]
       58 GETUPVAL                         R19 0
       59 GETTABLEKS                       R19 R19 K3 ["createElement"]
       61 GETUPVAL                         R20 5
       62 DUPTABLE                         R21 K26 [{["Text"] = "Transparency", ["size"]}]
       63 GETUPVAL                         R22 3
       64 GETTABLEKS                       R22 R22 K27 ["Medium"]
       66 SETTABLEKS                       R22 R21 K11 ["size"]
       68 CALL                             R19 2 1
       69 GETUPVAL                         R20 0
       70 GETTABLEKS                       R20 R20 K3 ["createElement"]
       72 GETUPVAL                         R21 6
       73 DUPTABLE                         R22 K31 [{"value", "onValueChanged", "size", "knobVisibility"}]
       74 SETTABLEKS                       R0 R22 K28 ["value"]
       76 SETTABLEKS                       R1 R22 K29 ["onValueChanged"]
       78 GETUPVAL                         R23 3
       79 GETTABLEKS                       R23 R23 K27 ["Medium"]
       81 SETTABLEKS                       R23 R22 K11 ["size"]
       83 GETUPVAL                         R23 7
       84 GETTABLEKS                       R23 R23 K32 ["Always"]
       86 SETTABLEKS                       R23 R22 K30 ["knobVisibility"]
       88 CALL                             R20 2 -1
       89 CALL                             R16 -1 1
       90 GETUPVAL                         R17 0
       91 GETTABLEKS                       R17 R17 K3 ["createElement"]
       93 GETUPVAL                         R18 1
       94 DUPTABLE                         R19 K34 [{["LayoutOrder"] = 3, ["tag"] = "size-2600-0 auto-y row gap-large"}]
       95 GETUPVAL                         R20 0
       96 GETTABLEKS                       R20 R20 K3 ["createElement"]
       98 GETUPVAL                         R21 5
       99 DUPTABLE                         R22 K36 [{["Text"] = "Hue", ["size"]}]
      100 GETUPVAL                         R23 3
      101 GETTABLEKS                       R23 R23 K27 ["Medium"]
      103 SETTABLEKS                       R23 R22 K11 ["size"]
      105 CALL                             R20 2 1
      106 GETUPVAL                         R21 0
      107 GETTABLEKS                       R21 R21 K3 ["createElement"]
      109 GETUPVAL                         R22 6
      110 DUPTABLE                         R23 K31 [{"value", "onValueChanged", "size", "knobVisibility"}]
      111 SETTABLEKS                       R2 R23 K28 ["value"]
      113 SETTABLEKS                       R3 R23 K29 ["onValueChanged"]
      115 GETUPVAL                         R24 3
      116 GETTABLEKS                       R24 R24 K27 ["Medium"]
      118 SETTABLEKS                       R24 R23 K11 ["size"]
      120 GETUPVAL                         R24 7
      121 GETTABLEKS                       R24 R24 K32 ["Always"]
      123 SETTABLEKS                       R24 R23 K30 ["knobVisibility"]
      125 CALL                             R21 2 -1
      126 CALL                             R17 -1 1
      127 GETUPVAL                         R18 0
      128 GETTABLEKS                       R18 R18 K3 ["createElement"]
      130 GETUPVAL                         R19 1
      131 DUPTABLE                         R20 K38 [{["LayoutOrder"] = 4, ["tag"] = "size-2600-0 auto-y row gap-large"}]
      132 GETUPVAL                         R21 0
      133 GETTABLEKS                       R21 R21 K3 ["createElement"]
      135 GETUPVAL                         R22 5
      136 DUPTABLE                         R23 K40 [{["Text"] = "Saturation", ["size"]}]
      137 GETUPVAL                         R24 3
      138 GETTABLEKS                       R24 R24 K27 ["Medium"]
      140 SETTABLEKS                       R24 R23 K11 ["size"]
      142 CALL                             R21 2 1
      143 GETUPVAL                         R22 0
      144 GETTABLEKS                       R22 R22 K3 ["createElement"]
      146 GETUPVAL                         R23 6
      147 DUPTABLE                         R24 K31 [{"value", "onValueChanged", "size", "knobVisibility"}]
      148 SETTABLEKS                       R4 R24 K28 ["value"]
      150 SETTABLEKS                       R5 R24 K29 ["onValueChanged"]
      152 GETUPVAL                         R25 3
      153 GETTABLEKS                       R25 R25 K27 ["Medium"]
      155 SETTABLEKS                       R25 R24 K11 ["size"]
      157 GETUPVAL                         R25 7
      158 GETTABLEKS                       R25 R25 K32 ["Always"]
      160 SETTABLEKS                       R25 R24 K30 ["knobVisibility"]
      162 CALL                             R22 2 -1
      163 CALL                             R18 -1 -1
      164 CALL                             R12 -1 1
      165 GETUPVAL                         R13 0
      166 GETTABLEKS                       R13 R13 K3 ["createElement"]
      168 NEWCLOSURE                       R14 P1
      169 CAPTURE                          UPVAL U8
      170 CAPTURE                          UPVAL U0
      171 CAPTURE                          UPVAL U9
      172 CAPTURE                          UPVAL U1
      173 CAPTURE                          VAL R6
      174 DUPTABLE                         R15 K45 [{"transparency", "hue", "saturation", "useCumulative"}]
      175 SETTABLEKS                       R0 R15 K41 ["transparency"]
      177 SETTABLEKS                       R2 R15 K42 ["hue"]
      179 SETTABLEKS                       R4 R15 K43 ["saturation"]
      181 SETTABLEKS                       R6 R15 K44 ["useCumulative"]
      183 CALL                             R13 2 -1
      184 CALL                             R8 -1 -1
      185 RETURN                           R8 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Checkbox"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["InputLabel"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Enums"]
       32 GETTABLEKS                       R6 R6 K12 ["InputSize"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R7 K13 ["Slider"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R8 K14 ["Text"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Components"]
       53 GETTABLEKS                       R9 R9 K15 ["View"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K11 ["Enums"]
       60 GETTABLEKS                       R10 R10 K16 ["Visibility"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETIMPORT                        R11 K1 [script]
       67 GETTABLEKS                       R11 R11 K4 ["Parent"]
       69 GETTABLEKS                       R11 R11 K17 ["useCumulativeBackground"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K18 ["Providers"]
       76 GETTABLEKS                       R12 R12 K19 ["Style"]
       78 GETTABLEKS                       R12 R12 K20 ["useTokens"]
       80 CALL                             R11 1 1
       81 DUPTABLE                         R12 K24 [{["summary"] = "Sometimes we need to get a color matching that of the semi-transparent element on a solid background. useCumulativeBackground uses lerp magic to get it. Without cumulative background the element on top of the semi-transparent one has the same semi-transparent background, when you check the option the helper is used and the solid color is applied.", ["stories"]}]
       82 NEWTABLE                         R13 0 1
       84 DUPTABLE                         R14 K28 [{["name"] = "Base", ["story"]}]
       85 DUPCLOSURE                       R15 K29 [PROTO_4]
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R10
       96 SETTABLEKS                       R15 R14 K27 ["story"]
       98 SETLIST                          R13 R14 1 [1]
      100 SETTABLEKS                       R13 R12 K23 ["stories"]
      102 RETURN                           R12 1
