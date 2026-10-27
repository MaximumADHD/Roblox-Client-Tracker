PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateValue"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["updateValue"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["name"]
       10 MOVE                             R3 R0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K2 ["setSliderValues"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R4 R0 K0 ["mapping"]
        6 GETTABLEKS                       R4 R4 K1 ["customWidth"]
        8 JUMPIF                           R4 ; [+3]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["SLIDER_DEFAULT_WIDTH"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K3 ["ASPECT_RATIO_SCALE_WIDTH"]
       15 DIV                              R3 R4 R5
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K4 ["SLIDER_DEFAULT_HEIGHT"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K5 ["ASPECT_RATIO_SCALE_HEIGHT"]
       22 DIV                              R4 R5 R6
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K6 ["tooltipName"]
       26 MOVE                             R6 R0
       27 CALL                             R5 1 1
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K7 ["tooltipValue"]
       31 MOVE                             R7 R0
       32 CALL                             R6 1 1
       33 GETUPVAL                         R7 3
       34 GETTABLEKS                       R7 R7 K8 ["createElement"]
       36 GETUPVAL                         R8 4
       37 GETTABLEKS                       R8 R8 K9 ["View"]
       39 DUPTABLE                         R9 K18 [{["testId"] = "FaceSliderView", ["tag"] = "bg-transparency-100", ["Position"], ["Size"], ["Rotation"], ["ref"]}]
       40 GETTABLEKS                       R10 R0 K0 ["mapping"]
       42 GETTABLEKS                       R10 R10 K19 ["position"]
       44 SETTABLEKS                       R10 R9 K14 ["Position"]
       46 GETIMPORT                        R10 K22 [UDim2.fromScale]
       48 MOVE                             R11 R3
       49 MOVE                             R12 R4
       50 CALL                             R10 2 1
       51 SETTABLEKS                       R10 R9 K15 ["Size"]
       53 GETTABLEKS                       R10 R0 K0 ["mapping"]
       55 GETTABLEKS                       R10 R10 K23 ["rotation"]
       57 SETTABLEKS                       R10 R9 K16 ["Rotation"]
       59 GETTABLEKS                       R10 R2 K24 ["setFrame"]
       61 SETTABLEKS                       R10 R9 K17 ["ref"]
       63 DUPTABLE                         R10 K27 [{"UIAspectRatioConstraint", "Tooltip"}]
       64 GETUPVAL                         R11 3
       65 GETTABLEKS                       R11 R11 K8 ["createElement"]
       67 LOADK                            R12 K25 ["UIAspectRatioConstraint"]
       68 DUPTABLE                         R13 K30 [{"AspectRatio", "AspectType"}]
       69 DIV                              R14 R3 R4
       70 SETTABLEKS                       R14 R13 K28 ["AspectRatio"]
       72 GETIMPORT                        R14 K33 [Enum.AspectType.ScaleWithParentSize]
       74 SETTABLEKS                       R14 R13 K29 ["AspectType"]
       76 CALL                             R11 2 1
       77 SETTABLEKS                       R11 R10 K25 ["UIAspectRatioConstraint"]
       79 GETUPVAL                         R11 3
       80 GETTABLEKS                       R11 R11 K8 ["createElement"]
       82 GETUPVAL                         R12 4
       83 GETTABLEKS                       R12 R12 K26 ["Tooltip"]
       85 DUPTABLE                         R13 K39 [{["title"], ["side"] = "Top", ["align"] = "Start"}]
       86 GETTABLEN                        R15 R5 1
       87 LOADK                            R16 K40 [" "]
       88 GETIMPORT                        R17 K43 [string.format]
       90 LOADK                            R18 K44 ["%.2f"]
       91 GETTABLEN                        R19 R6 1
       92 CALL                             R17 2 1
       93 CONCAT                           R14 R15 R17
       94 SETTABLEKS                       R14 R13 K34 ["title"]
       96 NEWTABLE                         R14 0 1
       98 GETUPVAL                         R15 3
       99 GETTABLEKS                       R15 R15 K8 ["createElement"]
      101 GETUPVAL                         R16 4
      102 GETTABLEKS                       R16 R16 K9 ["View"]
      104 DUPTABLE                         R17 K45 [{"Size"}]
      105 GETIMPORT                        R18 K47 [UDim2.fromOffset]
      107 GETTABLEKS                       R19 R2 K48 ["absoluteSize"]
      109 GETTABLEKS                       R19 R19 K49 ["X"]
      111 GETTABLEKS                       R20 R2 K48 ["absoluteSize"]
      113 GETTABLEKS                       R20 R20 K50 ["Y"]
      115 CALL                             R18 2 1
      116 SETTABLEKS                       R18 R17 K15 ["Size"]
      118 DUPTABLE                         R18 K52 [{"Slider"}]
      119 GETUPVAL                         R19 3
      120 GETTABLEKS                       R19 R19 K8 ["createElement"]
      122 GETUPVAL                         R20 4
      123 GETTABLEKS                       R20 R20 K51 ["Slider"]
      125 DUPTABLE                         R21 K68 [{["testId"] = "FaceSlider", ["value"], ["range"], ["stepIncrement"] = 0.01, ["isDisabled"] = False, ["knobVisibility"] = "Always", ["variant"] = "Emphasis", ["size"] = "XSmall", ["onValueChanged"], ["Size"], ["Position"], ["AnchorPoint"]}]
      126 GETTABLEKS                       R22 R0 K54 ["value"]
      128 SETTABLEKS                       R22 R21 K54 ["value"]
      130 GETIMPORT                        R22 K71 [NumberRange.new]
      132 LOADN                            R23 0
      133 LOADN                            R24 1
      134 CALL                             R22 2 1
      135 SETTABLEKS                       R22 R21 K55 ["range"]
      137 SETTABLEKS                       R1 R21 K66 ["onValueChanged"]
      139 GETIMPORT                        R22 K22 [UDim2.fromScale]
      141 LOADN                            R23 1
      142 LOADN                            R24 1
      143 CALL                             R22 2 1
      144 SETTABLEKS                       R22 R21 K15 ["Size"]
      146 GETIMPORT                        R22 K22 [UDim2.fromScale]
      148 LOADK                            R23 K72 [0.5]
      149 LOADK                            R24 K72 [0.5]
      150 CALL                             R22 2 1
      151 SETTABLEKS                       R22 R21 K14 ["Position"]
      153 GETIMPORT                        R22 K74 [Vector2.new]
      155 LOADK                            R23 K72 [0.5]
      156 LOADK                            R24 K72 [0.5]
      157 CALL                             R22 2 1
      158 SETTABLEKS                       R22 R21 K67 ["AnchorPoint"]
      160 CALL                             R19 2 1
      161 SETTABLEKS                       R19 R18 K51 ["Slider"]
      163 CALL                             R15 3 -1
      164 SETLIST                          R14 R15 -1 [1]
      166 CALL                             R11 3 1
      167 SETTABLEKS                       R11 R10 K26 ["Tooltip"]
      169 CALL                             R7 3 -1
      170 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["FaceControlEditor"]
       25 GETTABLEKS                       R5 R5 K11 ["FaceControlEditorConstants"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Utils"]
       32 GETTABLEKS                       R6 R6 K13 ["FaceControlEditorUtils"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K14 ["Hooks"]
       39 GETTABLEKS                       R7 R7 K15 ["useAbsoluteSize"]
       41 CALL                             R6 1 1
       42 DUPCLOSURE                       R7 K16 [PROTO_1]
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R2
       48 RETURN                           R7 1
