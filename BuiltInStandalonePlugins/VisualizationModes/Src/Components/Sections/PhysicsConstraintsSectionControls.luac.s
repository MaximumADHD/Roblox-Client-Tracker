PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Localization"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Plugin"]
        9 NAMECALL                         R2 R2 K1 ["use"]
       11 CALL                             R2 1 1
       12 NAMECALL                         R2 R2 K3 ["get"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K4 ["useContext"]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K5 ["Context"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R3 R3 K6 ["overlayFocused"]
       24 GETUPVAL                         R4 3
       25 MOVE                             R5 R2
       26 CALL                             R4 1 2
       27 GETUPVAL                         R6 4
       28 GETTABLEKS                       R6 R6 K7 ["new"]
       30 CALL                             R6 0 1
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R7 R7 K8 ["createElement"]
       34 GETUPVAL                         R8 5
       35 NEWTABLE                         R9 2 0
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R10 R10 K9 ["Tag"]
       40 LOADK                            R11 K10 ["X-Fill X-Column X-Top X-FitY"]
       41 SETTABLE                         R11 R9 R10
       42 GETTABLEKS                       R10 R0 K11 ["LayoutOrder"]
       44 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       46 DUPTABLE                         R10 K14 [{"UIPadding", "ConstraintScale"}]
       47 GETUPVAL                         R11 1
       48 GETTABLEKS                       R11 R11 K8 ["createElement"]
       50 LOADK                            R12 K12 ["UIPadding"]
       51 DUPTABLE                         R13 K17 [{"PaddingLeft", "PaddingRight"}]
       52 GETIMPORT                        R14 K19 [UDim.new]
       54 LOADN                            R15 0
       55 LOADN                            R16 22
       56 CALL                             R14 2 1
       57 SETTABLEKS                       R14 R13 K15 ["PaddingLeft"]
       59 GETIMPORT                        R14 K19 [UDim.new]
       61 LOADN                            R15 0
       62 LOADN                            R16 3
       63 CALL                             R14 2 1
       64 SETTABLEKS                       R14 R13 K16 ["PaddingRight"]
       66 CALL                             R11 2 1
       67 SETTABLEKS                       R11 R10 K12 ["UIPadding"]
       69 GETUPVAL                         R11 1
       70 GETTABLEKS                       R11 R11 K8 ["createElement"]
       72 GETUPVAL                         R12 5
       73 NEWTABLE                         R13 2 0
       75 GETUPVAL                         R14 1
       76 GETTABLEKS                       R14 R14 K9 ["Tag"]
       78 LOADK                            R15 K10 ["X-Fill X-Column X-Top X-FitY"]
       79 SETTABLE                         R15 R13 R14
       80 NAMECALL                         R14 R6 K20 ["getNextOrder"]
       82 CALL                             R14 1 1
       83 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
       85 DUPTABLE                         R14 K22 [{"Contents"}]
       86 GETUPVAL                         R15 1
       87 GETTABLEKS                       R15 R15 K8 ["createElement"]
       89 GETUPVAL                         R16 5
       90 NEWTABLE                         R17 2 0
       92 GETUPVAL                         R18 1
       93 GETTABLEKS                       R18 R18 K9 ["Tag"]
       95 LOADK                            R19 K23 ["X-RowM X-Left X-Middle"]
       96 SETTABLE                         R19 R17 R18
       97 GETIMPORT                        R18 K25 [UDim2.new]
       99 LOADN                            R19 1
      100 LOADN                            R20 0
      101 LOADN                            R21 0
      102 LOADN                            R22 26
      103 CALL                             R18 4 1
      104 SETTABLEKS                       R18 R17 K26 ["Size"]
      106 DUPTABLE                         R18 K29 [{"TextContainer", "Slider"}]
      107 GETUPVAL                         R19 1
      108 GETTABLEKS                       R19 R19 K8 ["createElement"]
      110 GETUPVAL                         R20 5
      111 DUPTABLE                         R21 K30 [{"Size"}]
      112 GETIMPORT                        R22 K25 [UDim2.new]
      114 LOADN                            R23 1
      115 LOADN                            R24 16
      116 LOADN                            R25 1
      117 LOADN                            R26 0
      118 CALL                             R22 4 1
      119 SETTABLEKS                       R22 R21 K26 ["Size"]
      121 DUPTABLE                         R22 K33 [{"VisualizationModeEntryTitle", "ToolTip"}]
      122 GETUPVAL                         R23 1
      123 GETTABLEKS                       R23 R23 K8 ["createElement"]
      125 GETUPVAL                         R24 6
      126 DUPTABLE                         R25 K35 [{"Text"}]
      127 LOADK                            R28 K36 ["PhysicsConstraintsSection"]
      128 LOADK                            R29 K13 ["ConstraintScale"]
      129 NAMECALL                         R26 R1 K37 ["getText"]
      131 CALL                             R26 3 1
      132 SETTABLEKS                       R26 R25 K34 ["Text"]
      134 CALL                             R23 2 1
      135 SETTABLEKS                       R23 R22 K31 ["VisualizationModeEntryTitle"]
      137 GETUPVAL                         R23 1
      138 GETTABLEKS                       R23 R23 K8 ["createElement"]
      140 GETUPVAL                         R24 7
      141 DUPTABLE                         R25 K39 [{"Text", "Enabled"}]
      142 LOADK                            R28 K36 ["PhysicsConstraintsSection"]
      143 LOADK                            R29 K40 ["ConstraintScaleToolTip"]
      144 NAMECALL                         R26 R1 K37 ["getText"]
      146 CALL                             R26 3 1
      147 SETTABLEKS                       R26 R25 K34 ["Text"]
      149 NOT                              R26 R3
      150 SETTABLEKS                       R26 R25 K38 ["Enabled"]
      152 CALL                             R23 2 1
      153 SETTABLEKS                       R23 R22 K32 ["ToolTip"]
      155 CALL                             R19 3 1
      156 SETTABLEKS                       R19 R18 K27 ["TextContainer"]
      158 GETUPVAL                         R19 1
      159 GETTABLEKS                       R19 R19 K8 ["createElement"]
      161 GETUPVAL                         R20 8
      162 DUPTABLE                         R21 K47 [{"Min", "Max", "SnapIncrement", "Value", "ShowInput", "OnValueChanged", "Size"}]
      163 LOADK                            R23 K48 [0.1]
      164 FASTCALL2                        MATH_MIN R23 R4 ; [+4]
      166 MOVE                             R24 R4
      167 GETIMPORT                        R22 K51 [math.min]
      169 CALL                             R22 2 1
      170 SETTABLEKS                       R22 R21 K41 ["Min"]
      172 LOADN                            R23 12
      173 FASTCALL2                        MATH_MAX R23 R4 ; [+4]
      175 MOVE                             R24 R4
      176 GETIMPORT                        R22 K53 [math.max]
      178 CALL                             R22 2 1
      179 SETTABLEKS                       R22 R21 K42 ["Max"]
      181 LOADK                            R22 K48 [0.1]
      182 SETTABLEKS                       R22 R21 K43 ["SnapIncrement"]
      184 SETTABLEKS                       R4 R21 K44 ["Value"]
      186 LOADB                            R22 1
      187 SETTABLEKS                       R22 R21 K45 ["ShowInput"]
      189 SETTABLEKS                       R5 R21 K46 ["OnValueChanged"]
      191 GETIMPORT                        R22 K55 [UDim2.fromOffset]
      193 LOADN                            R23 230
      194 LOADN                            R24 26
      195 CALL                             R22 2 1
      196 SETTABLEKS                       R22 R21 K26 ["Size"]
      198 CALL                             R19 2 1
      199 SETTABLEKS                       R19 R18 K28 ["Slider"]
      201 CALL                             R15 3 1
      202 SETTABLEKS                       R15 R14 K21 ["Contents"]
      204 CALL                             R11 3 1
      205 SETTABLEKS                       R11 R10 K13 ["ConstraintScale"]
      207 CALL                             R7 3 -1
      208 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["OverlayMenuFocusedContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Components"]
       29 GETTABLEKS                       R4 R4 K12 ["HighlightTextLabel"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Packages"]
       36 GETTABLEKS                       R5 R5 K13 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["Hooks"]
       45 GETTABLEKS                       R6 R6 K15 ["useConstraintScale"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R2 K16 ["UI"]
       50 GETTABLEKS                       R7 R2 K17 ["ContextServices"]
       52 GETTABLEKS                       R8 R6 K18 ["Pane"]
       54 GETTABLEKS                       R9 R6 K19 ["Slider"]
       56 GETTABLEKS                       R10 R2 K20 ["Util"]
       58 GETTABLEKS                       R10 R10 K21 ["LayoutOrderIterator"]
       60 GETTABLEKS                       R11 R6 K22 ["Tooltip"]
       62 DUPCLOSURE                       R12 K23 [PROTO_0]
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R9
       72 RETURN                           R12 1
