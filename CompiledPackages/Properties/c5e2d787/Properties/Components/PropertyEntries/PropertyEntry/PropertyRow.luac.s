PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enums"]
        3 GETTABLEKS                       R1 R1 K1 ["ControlState"]
        5 GETTABLEKS                       R1 R1 K2 ["Pressed"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["current"]
       12 NAMECALL                         R1 R1 K4 ["Fire"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 0
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K3 ["IndentWidth"]
        6 SUB                              R5 R0 R6
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K4 ["isSubRow"]
       10 JUMPIFNOT                        R7 ; [+2]
       11 LOADN                            R6 12
       12 JUMP                             ; [+1]
       13 LOADN                            R6 0
       14 SUB                              R4 R5 R6
       15 FASTCALL2K                       MATH_MAX R4 K5 ; [+4]
       17 LOADK                            R5 K5 [0]
       18 GETIMPORT                        R3 K8 [math.max]
       20 CALL                             R3 2 1
       21 LOADN                            R4 1
       22 LOADN                            R5 0
       23 CALL                             R1 4 -1
       24 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["new"]
        6 CALL                             R2 0 -1
        7 CALL                             R1 -1 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["useCallback"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 NEWTABLE                         R4 0 0
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K3 ["useContext"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K4 ["Context"]
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 4
       25 GETTABLEKS                       R4 R4 K5 ["createNextOrder"]
       27 CALL                             R4 0 1
       28 GETUPVAL                         R5 5
       29 CALL                             R5 0 1
       30 GETTABLEKS                       R6 R5 K6 ["PropertyRow"]
       32 GETTABLEKS                       R6 R6 K7 ["Label"]
       34 GETUPVAL                         R7 6
       35 GETUPVAL                         R8 7
       36 DUPTABLE                         R9 K14 [{["tag"] = "row size-full-0 auto-y padding-y-xxsmall", ["onSecondaryActivated"], ["stateLayer"], ["LayoutOrder"], ["Visible"]}]
       37 GETTABLEKS                       R10 R0 K10 ["onSecondaryActivated"]
       39 SETTABLEKS                       R10 R9 K10 ["onSecondaryActivated"]
       41 DUPTABLE                         R10 K16 [{"affordance"}]
       42 GETUPVAL                         R11 8
       43 GETTABLEKS                       R11 R11 K17 ["None"]
       45 SETTABLEKS                       R11 R10 K15 ["affordance"]
       47 SETTABLEKS                       R10 R9 K11 ["stateLayer"]
       49 GETTABLEKS                       R10 R0 K12 ["LayoutOrder"]
       51 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       53 GETTABLEKS                       R10 R0 K13 ["Visible"]
       55 SETTABLEKS                       R10 R9 K13 ["Visible"]
       57 DUPTABLE                         R10 K21 [{"PropertyName", "PropertyValue", "SizeConstraint"}]
       58 GETUPVAL                         R11 6
       59 GETUPVAL                         R12 7
       60 DUPTABLE                         R13 K25 [{["tag"] = "auto-x", ["stateLayer"], ["onStateChanged"], ["LayoutOrder"], ["Size"]}]
       61 DUPTABLE                         R14 K16 [{"affordance"}]
       62 GETUPVAL                         R15 2
       63 GETTABLEKS                       R15 R15 K26 ["Enums"]
       65 GETTABLEKS                       R15 R15 K27 ["StateLayerAffordance"]
       67 GETTABLEKS                       R15 R15 K17 ["None"]
       69 SETTABLEKS                       R15 R14 K15 ["affordance"]
       71 SETTABLEKS                       R14 R13 K11 ["stateLayer"]
       73 SETTABLEKS                       R2 R13 K23 ["onStateChanged"]
       75 MOVE                             R14 R4
       76 CALL                             R14 0 1
       77 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
       79 GETIMPORT                        R14 K29 [UDim2.new]
       81 LOADN                            R15 0
       82 LOADN                            R16 0
       83 LOADN                            R17 0
       84 GETTABLEKS                       R18 R5 K6 ["PropertyRow"]
       86 GETTABLEKS                       R18 R18 K30 ["MinHeight"]
       88 CALL                             R14 4 1
       89 SETTABLEKS                       R14 R13 K24 ["Size"]
       91 DUPTABLE                         R14 K32 [{"Text"}]
       92 GETUPVAL                         R15 6
       93 GETUPVAL                         R16 9
       94 DUPTABLE                         R17 K36 [{["tag"] = "text-body-small text-no-wrap text-align-x-left text-align-y-center clip", ["LayoutOrder"], ["Text"], ["Position"], ["Size"], ["textStyle"]}]
       95 MOVE                             R18 R4
       96 CALL                             R18 0 1
       97 SETTABLEKS                       R18 R17 K12 ["LayoutOrder"]
       99 GETTABLEKS                       R18 R0 K37 ["label"]
      101 SETTABLEKS                       R18 R17 K31 ["Text"]
      103 GETIMPORT                        R18 K39 [UDim2.fromOffset]
      105 GETTABLEKS                       R21 R0 K40 ["isSubRow"]
      107 JUMPIFNOT                        R21 ; [+2]
      108 LOADN                            R20 12
      109 JUMP                             ; [+1]
      110 LOADN                            R20 0
      111 GETTABLEKS                       R21 R5 K6 ["PropertyRow"]
      113 GETTABLEKS                       R21 R21 K7 ["Label"]
      115 GETTABLEKS                       R21 R21 K41 ["IndentWidth"]
      117 ADD                              R19 R20 R21
      118 LOADN                            R20 0
      119 CALL                             R18 2 1
      120 SETTABLEKS                       R18 R17 K34 ["Position"]
      122 GETTABLEKS                       R18 R0 K42 ["labelWidthBinding"]
      124 NEWCLOSURE                       R20 P1
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R0
      127 NAMECALL                         R18 R18 K43 ["map"]
      129 CALL                             R18 2 1
      130 SETTABLEKS                       R18 R17 K24 ["Size"]
      132 DUPTABLE                         R18 K46 [{"Color3", "Transparency"}]
      133 GETTABLEKS                       R20 R0 K47 ["isUnimplemented"]
      135 JUMPIFNOT                        R20 ; [+5]
      136 GETTABLEKS                       R19 R6 K48 ["Unimplemented"]
      138 GETTABLEKS                       R19 R19 K49 ["Color"]
      140 JUMP                             ; [+2]
      141 GETTABLEKS                       R19 R6 K49 ["Color"]
      143 SETTABLEKS                       R19 R18 K44 ["Color3"]
      145 GETTABLEKS                       R20 R0 K50 ["isReadonly"]
      147 JUMPIFNOT                        R20 ; [+5]
      148 GETTABLEKS                       R19 R6 K51 ["ReadOnly"]
      150 GETTABLEKS                       R19 R19 K45 ["Transparency"]
      152 JUMP                             ; [+2]
      153 GETTABLEKS                       R19 R6 K45 ["Transparency"]
      155 SETTABLEKS                       R19 R18 K45 ["Transparency"]
      157 SETTABLEKS                       R18 R17 K35 ["textStyle"]
      159 DUPTABLE                         R18 K53 [{"CoolFade"}]
      160 GETUPVAL                         R19 6
      161 GETUPVAL                         R20 7
      162 DUPTABLE                         R21 K56 [{["tag"] = "position-center-right anchor-center-right", ["Size"], ["backgroundStyle"]}]
      163 GETIMPORT                        R22 K29 [UDim2.new]
      165 LOADN                            R23 0
      166 GETTABLEKS                       R24 R6 K57 ["Fade"]
      168 GETTABLEKS                       R24 R24 K58 ["Width"]
      170 LOADN                            R25 1
      171 LOADN                            R26 0
      172 CALL                             R22 4 1
      173 SETTABLEKS                       R22 R21 K24 ["Size"]
      175 DUPTABLE                         R22 K60 [{["Color3"], ["Transparency"] = 0}]
      176 GETTABLEKS                       R24 R6 K57 ["Fade"]
      178 GETTABLEKS                       R24 R24 K49 ["Color"]
      180 GETTABLEKS                       R25 R3 K61 ["theme"]
      182 GETTABLE                         R23 R24 R25
      183 SETTABLEKS                       R23 R22 K44 ["Color3"]
      185 SETTABLEKS                       R22 R21 K55 ["backgroundStyle"]
      187 DUPTABLE                         R22 K63 [{"UIGradient"}]
      188 GETUPVAL                         R23 6
      189 LOADK                            R24 K62 ["UIGradient"]
      190 DUPTABLE                         R25 K64 [{"Transparency"}]
      191 GETIMPORT                        R26 K66 [NumberSequence.new]
      193 LOADN                            R27 1
      194 LOADN                            R28 0
      195 CALL                             R26 2 1
      196 SETTABLEKS                       R26 R25 K45 ["Transparency"]
      198 CALL                             R23 2 1
      199 SETTABLEKS                       R23 R22 K62 ["UIGradient"]
      201 CALL                             R19 3 1
      202 SETTABLEKS                       R19 R18 K52 ["CoolFade"]
      204 CALL                             R15 3 1
      205 SETTABLEKS                       R15 R14 K31 ["Text"]
      207 CALL                             R11 3 1
      208 SETTABLEKS                       R11 R10 K18 ["PropertyName"]
      210 GETUPVAL                         R11 6
      211 GETUPVAL                         R12 10
      212 DUPTABLE                         R13 K75 [{["getInfo"], ["beginEditingAsync"], ["setPart"], ["finishEditing"], ["specializedEditingUtils"], ["labelPressedSignal"], ["labelWidthBinding"], ["LayoutOrder"], ["ZIndex"] = 2}]
      213 GETTABLEKS                       R14 R0 K67 ["getInfo"]
      215 SETTABLEKS                       R14 R13 K67 ["getInfo"]
      217 GETTABLEKS                       R14 R0 K68 ["beginEditingAsync"]
      219 SETTABLEKS                       R14 R13 K68 ["beginEditingAsync"]
      221 GETTABLEKS                       R14 R0 K69 ["setPart"]
      223 SETTABLEKS                       R14 R13 K69 ["setPart"]
      225 GETTABLEKS                       R14 R0 K70 ["finishEditing"]
      227 SETTABLEKS                       R14 R13 K70 ["finishEditing"]
      229 GETTABLEKS                       R14 R0 K71 ["specializedEditingUtils"]
      231 SETTABLEKS                       R14 R13 K71 ["specializedEditingUtils"]
      233 GETTABLEKS                       R14 R1 K76 ["current"]
      235 SETTABLEKS                       R14 R13 K72 ["labelPressedSignal"]
      237 GETTABLEKS                       R14 R0 K42 ["labelWidthBinding"]
      239 SETTABLEKS                       R14 R13 K42 ["labelWidthBinding"]
      241 MOVE                             R14 R4
      242 CALL                             R14 0 1
      243 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
      245 CALL                             R11 2 1
      246 SETTABLEKS                       R11 R10 K19 ["PropertyValue"]
      248 GETUPVAL                         R11 6
      249 LOADK                            R12 K77 ["UISizeConstraint"]
      250 DUPTABLE                         R13 K79 [{"MinSize"}]
      251 GETIMPORT                        R14 K81 [Vector2.new]
      253 LOADN                            R15 0
      254 GETTABLEKS                       R16 R5 K6 ["PropertyRow"]
      256 GETTABLEKS                       R16 R16 K30 ["MinHeight"]
      258 CALL                             R14 2 1
      259 SETTABLEKS                       R14 R13 K78 ["MinSize"]
      261 CALL                             R11 2 1
      262 SETTABLEKS                       R11 R10 K20 ["SizeConstraint"]
      264 CALL                             R7 3 -1
      265 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PropertyEditorTypes"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["PropertyEntries"]
       25 GETTABLEKS                       R5 R5 K11 ["PropertyView"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K12 ["React"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R1 K13 ["ReactUtils"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R1 K14 ["Signal"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K9 ["Components"]
       47 GETTABLEKS                       R9 R9 K15 ["Contexts"]
       49 GETTABLEKS                       R9 R9 K16 ["ThemeContext"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K17 ["Util"]
       56 GETTABLEKS                       R10 R10 K18 ["getVisualValues"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K19 ["Hooks"]
       63 GETTABLEKS                       R11 R11 K20 ["useVisualValues"]
       65 CALL                             R10 1 1
       66 GETTABLEKS                       R11 R2 K21 ["Enums"]
       68 GETTABLEKS                       R11 R11 K22 ["StateLayerAffordance"]
       70 GETTABLEKS                       R12 R2 K23 ["Text"]
       72 GETTABLEKS                       R13 R2 K24 ["View"]
       74 GETTABLEKS                       R14 R5 K25 ["createElement"]
       76 DUPCLOSURE                       R15 K26 [PROTO_2]
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R13
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R4
       88 RETURN                           R15 1
