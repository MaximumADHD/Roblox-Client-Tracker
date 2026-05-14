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
       39 DUPTABLE                         R9 K16 [{"testId", "tag", "Position", "Size", "Rotation", "ref"}]
       40 LOADK                            R10 K17 ["FaceSliderView"]
       41 SETTABLEKS                       R10 R9 K10 ["testId"]
       43 LOADK                            R10 K18 ["bg-transparency-100"]
       44 SETTABLEKS                       R10 R9 K11 ["tag"]
       46 GETTABLEKS                       R10 R0 K0 ["mapping"]
       48 GETTABLEKS                       R10 R10 K19 ["position"]
       50 SETTABLEKS                       R10 R9 K12 ["Position"]
       52 GETIMPORT                        R10 K22 [UDim2.fromScale]
       54 MOVE                             R11 R3
       55 MOVE                             R12 R4
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K13 ["Size"]
       59 GETTABLEKS                       R10 R0 K0 ["mapping"]
       61 GETTABLEKS                       R10 R10 K23 ["rotation"]
       63 SETTABLEKS                       R10 R9 K14 ["Rotation"]
       65 GETTABLEKS                       R10 R2 K24 ["setFrame"]
       67 SETTABLEKS                       R10 R9 K15 ["ref"]
       69 DUPTABLE                         R10 K27 [{"UIAspectRatioConstraint", "Tooltip"}]
       70 GETUPVAL                         R11 3
       71 GETTABLEKS                       R11 R11 K8 ["createElement"]
       73 LOADK                            R12 K25 ["UIAspectRatioConstraint"]
       74 DUPTABLE                         R13 K30 [{"AspectRatio", "AspectType"}]
       75 DIV                              R14 R3 R4
       76 SETTABLEKS                       R14 R13 K28 ["AspectRatio"]
       78 GETIMPORT                        R14 K33 [Enum.AspectType.ScaleWithParentSize]
       80 SETTABLEKS                       R14 R13 K29 ["AspectType"]
       82 CALL                             R11 2 1
       83 SETTABLEKS                       R11 R10 K25 ["UIAspectRatioConstraint"]
       85 GETUPVAL                         R11 3
       86 GETTABLEKS                       R11 R11 K8 ["createElement"]
       88 GETUPVAL                         R12 4
       89 GETTABLEKS                       R12 R12 K26 ["Tooltip"]
       91 DUPTABLE                         R13 K37 [{"title", "side", "align"}]
       92 GETTABLEN                        R15 R5 1
       93 LOADK                            R16 K38 [" "]
       94 GETIMPORT                        R17 K41 [string.format]
       96 LOADK                            R18 K42 ["%.2f"]
       97 GETTABLEN                        R19 R6 1
       98 CALL                             R17 2 1
       99 CONCAT                           R14 R15 R17
      100 SETTABLEKS                       R14 R13 K34 ["title"]
      102 LOADK                            R14 K43 ["Top"]
      103 SETTABLEKS                       R14 R13 K35 ["side"]
      105 LOADK                            R14 K44 ["Start"]
      106 SETTABLEKS                       R14 R13 K36 ["align"]
      108 NEWTABLE                         R14 0 1
      110 GETUPVAL                         R15 3
      111 GETTABLEKS                       R15 R15 K8 ["createElement"]
      113 GETUPVAL                         R16 4
      114 GETTABLEKS                       R16 R16 K9 ["View"]
      116 DUPTABLE                         R17 K45 [{"Size"}]
      117 GETIMPORT                        R18 K47 [UDim2.fromOffset]
      119 GETTABLEKS                       R19 R2 K48 ["absoluteSize"]
      121 GETTABLEKS                       R19 R19 K49 ["X"]
      123 GETTABLEKS                       R20 R2 K48 ["absoluteSize"]
      125 GETTABLEKS                       R20 R20 K50 ["Y"]
      127 CALL                             R18 2 1
      128 SETTABLEKS                       R18 R17 K13 ["Size"]
      130 DUPTABLE                         R18 K52 [{"Slider"}]
      131 GETUPVAL                         R19 3
      132 GETTABLEKS                       R19 R19 K8 ["createElement"]
      134 GETUPVAL                         R20 4
      135 GETTABLEKS                       R20 R20 K51 ["Slider"]
      137 DUPTABLE                         R21 K62 [{"testId", "value", "range", "stepIncrement", "isDisabled", "knobVisibility", "variant", "size", "onValueChanged", "Size", "Position", "AnchorPoint"}]
      138 LOADK                            R22 K63 ["FaceSlider"]
      139 SETTABLEKS                       R22 R21 K10 ["testId"]
      141 GETTABLEKS                       R22 R0 K53 ["value"]
      143 SETTABLEKS                       R22 R21 K53 ["value"]
      145 GETIMPORT                        R22 K66 [NumberRange.new]
      147 LOADN                            R23 0
      148 LOADN                            R24 1
      149 CALL                             R22 2 1
      150 SETTABLEKS                       R22 R21 K54 ["range"]
      152 LOADK                            R22 K67 [0.01]
      153 SETTABLEKS                       R22 R21 K55 ["stepIncrement"]
      155 LOADB                            R22 0
      156 SETTABLEKS                       R22 R21 K56 ["isDisabled"]
      158 LOADK                            R22 K68 ["Always"]
      159 SETTABLEKS                       R22 R21 K57 ["knobVisibility"]
      161 LOADK                            R22 K69 ["Emphasis"]
      162 SETTABLEKS                       R22 R21 K58 ["variant"]
      164 LOADK                            R22 K70 ["XSmall"]
      165 SETTABLEKS                       R22 R21 K59 ["size"]
      167 SETTABLEKS                       R1 R21 K60 ["onValueChanged"]
      169 GETIMPORT                        R22 K22 [UDim2.fromScale]
      171 LOADN                            R23 1
      172 LOADN                            R24 1
      173 CALL                             R22 2 1
      174 SETTABLEKS                       R22 R21 K13 ["Size"]
      176 GETIMPORT                        R22 K22 [UDim2.fromScale]
      178 LOADK                            R23 K71 [0.5]
      179 LOADK                            R24 K71 [0.5]
      180 CALL                             R22 2 1
      181 SETTABLEKS                       R22 R21 K12 ["Position"]
      183 GETIMPORT                        R22 K73 [Vector2.new]
      185 LOADK                            R23 K71 [0.5]
      186 LOADK                            R24 K71 [0.5]
      187 CALL                             R22 2 1
      188 SETTABLEKS                       R22 R21 K61 ["AnchorPoint"]
      190 CALL                             R19 2 1
      191 SETTABLEKS                       R19 R18 K51 ["Slider"]
      193 CALL                             R15 3 -1
      194 SETLIST                          R14 R15 -1 [1]
      196 CALL                             R11 3 1
      197 SETTABLEKS                       R11 R10 K26 ["Tooltip"]
      199 CALL                             R7 3 -1
      200 RETURN                           R7 -1

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
