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
       36 DUPTABLE                         R9 K15 [{["tag"] = "row size-full-0 auto-y padding-y-xxsmall", ["onSecondaryActivated"], ["stateLayer"], ["selection"], ["LayoutOrder"], ["Visible"]}]
       37 GETTABLEKS                       R10 R0 K10 ["onSecondaryActivated"]
       39 SETTABLEKS                       R10 R9 K10 ["onSecondaryActivated"]
       41 DUPTABLE                         R10 K17 [{"affordance"}]
       42 GETUPVAL                         R11 8
       43 GETTABLEKS                       R11 R11 K18 ["None"]
       45 SETTABLEKS                       R11 R10 K16 ["affordance"]
       47 SETTABLEKS                       R10 R9 K11 ["stateLayer"]
       49 DUPTABLE                         R10 K21 [{["Selectable"] = False}]
       50 SETTABLEKS                       R10 R9 K12 ["selection"]
       52 GETTABLEKS                       R10 R0 K13 ["LayoutOrder"]
       54 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       56 GETTABLEKS                       R10 R0 K14 ["Visible"]
       58 SETTABLEKS                       R10 R9 K14 ["Visible"]
       60 DUPTABLE                         R10 K25 [{"PropertyName", "PropertyValue", "SizeConstraint"}]
       61 GETUPVAL                         R11 6
       62 GETUPVAL                         R12 7
       63 DUPTABLE                         R13 K29 [{["tag"] = "auto-x", ["stateLayer"], ["onStateChanged"], ["selection"], ["LayoutOrder"], ["Size"]}]
       64 DUPTABLE                         R14 K17 [{"affordance"}]
       65 GETUPVAL                         R15 2
       66 GETTABLEKS                       R15 R15 K30 ["Enums"]
       68 GETTABLEKS                       R15 R15 K31 ["StateLayerAffordance"]
       70 GETTABLEKS                       R15 R15 K18 ["None"]
       72 SETTABLEKS                       R15 R14 K16 ["affordance"]
       74 SETTABLEKS                       R14 R13 K11 ["stateLayer"]
       76 SETTABLEKS                       R2 R13 K27 ["onStateChanged"]
       78 DUPTABLE                         R14 K21 [{["Selectable"] = False}]
       79 SETTABLEKS                       R14 R13 K12 ["selection"]
       81 MOVE                             R14 R4
       82 CALL                             R14 0 1
       83 SETTABLEKS                       R14 R13 K13 ["LayoutOrder"]
       85 GETIMPORT                        R14 K33 [UDim2.new]
       87 LOADN                            R15 0
       88 LOADN                            R16 0
       89 LOADN                            R17 0
       90 GETTABLEKS                       R18 R5 K6 ["PropertyRow"]
       92 GETTABLEKS                       R18 R18 K34 ["MinHeight"]
       94 CALL                             R14 4 1
       95 SETTABLEKS                       R14 R13 K28 ["Size"]
       97 DUPTABLE                         R14 K36 [{"Text"}]
       98 GETUPVAL                         R15 6
       99 GETUPVAL                         R16 9
      100 DUPTABLE                         R17 K40 [{["tag"] = "text-body-small text-no-wrap text-align-x-left text-align-y-center clip", ["LayoutOrder"], ["Text"], ["Position"], ["Size"], ["textStyle"]}]
      101 MOVE                             R18 R4
      102 CALL                             R18 0 1
      103 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
      105 GETTABLEKS                       R18 R0 K41 ["label"]
      107 SETTABLEKS                       R18 R17 K35 ["Text"]
      109 GETIMPORT                        R18 K43 [UDim2.fromOffset]
      111 GETTABLEKS                       R21 R0 K44 ["isSubRow"]
      113 JUMPIFNOT                        R21 ; [+2]
      114 LOADN                            R20 12
      115 JUMP                             ; [+1]
      116 LOADN                            R20 0
      117 GETTABLEKS                       R21 R5 K6 ["PropertyRow"]
      119 GETTABLEKS                       R21 R21 K7 ["Label"]
      121 GETTABLEKS                       R21 R21 K45 ["IndentWidth"]
      123 ADD                              R19 R20 R21
      124 LOADN                            R20 0
      125 CALL                             R18 2 1
      126 SETTABLEKS                       R18 R17 K38 ["Position"]
      128 GETTABLEKS                       R18 R0 K46 ["labelWidthBinding"]
      130 NEWCLOSURE                       R20 P1
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R0
      133 NAMECALL                         R18 R18 K47 ["map"]
      135 CALL                             R18 2 1
      136 SETTABLEKS                       R18 R17 K28 ["Size"]
      138 DUPTABLE                         R18 K50 [{"Color3", "Transparency"}]
      139 GETTABLEKS                       R20 R0 K51 ["isUnimplemented"]
      141 JUMPIFNOT                        R20 ; [+5]
      142 GETTABLEKS                       R19 R6 K52 ["Unimplemented"]
      144 GETTABLEKS                       R19 R19 K53 ["Color"]
      146 JUMP                             ; [+2]
      147 GETTABLEKS                       R19 R6 K53 ["Color"]
      149 SETTABLEKS                       R19 R18 K48 ["Color3"]
      151 GETTABLEKS                       R20 R0 K54 ["isReadonly"]
      153 JUMPIFNOT                        R20 ; [+5]
      154 GETTABLEKS                       R19 R6 K55 ["ReadOnly"]
      156 GETTABLEKS                       R19 R19 K49 ["Transparency"]
      158 JUMP                             ; [+2]
      159 GETTABLEKS                       R19 R6 K49 ["Transparency"]
      161 SETTABLEKS                       R19 R18 K49 ["Transparency"]
      163 SETTABLEKS                       R18 R17 K39 ["textStyle"]
      165 DUPTABLE                         R18 K57 [{"CoolFade"}]
      166 GETUPVAL                         R19 6
      167 GETUPVAL                         R20 7
      168 DUPTABLE                         R21 K60 [{["tag"] = "position-center-right anchor-center-right", ["Size"], ["backgroundStyle"]}]
      169 GETIMPORT                        R22 K33 [UDim2.new]
      171 LOADN                            R23 0
      172 GETTABLEKS                       R24 R6 K61 ["Fade"]
      174 GETTABLEKS                       R24 R24 K62 ["Width"]
      176 LOADN                            R25 1
      177 LOADN                            R26 0
      178 CALL                             R22 4 1
      179 SETTABLEKS                       R22 R21 K28 ["Size"]
      181 DUPTABLE                         R22 K64 [{["Color3"], ["Transparency"] = 0}]
      182 GETTABLEKS                       R24 R6 K61 ["Fade"]
      184 GETTABLEKS                       R24 R24 K53 ["Color"]
      186 GETTABLEKS                       R25 R3 K65 ["theme"]
      188 GETTABLE                         R23 R24 R25
      189 SETTABLEKS                       R23 R22 K48 ["Color3"]
      191 SETTABLEKS                       R22 R21 K59 ["backgroundStyle"]
      193 DUPTABLE                         R22 K67 [{"UIGradient"}]
      194 GETUPVAL                         R23 6
      195 LOADK                            R24 K66 ["UIGradient"]
      196 DUPTABLE                         R25 K68 [{"Transparency"}]
      197 GETIMPORT                        R26 K70 [NumberSequence.new]
      199 LOADN                            R27 1
      200 LOADN                            R28 0
      201 CALL                             R26 2 1
      202 SETTABLEKS                       R26 R25 K49 ["Transparency"]
      204 CALL                             R23 2 1
      205 SETTABLEKS                       R23 R22 K66 ["UIGradient"]
      207 CALL                             R19 3 1
      208 SETTABLEKS                       R19 R18 K56 ["CoolFade"]
      210 CALL                             R15 3 1
      211 SETTABLEKS                       R15 R14 K35 ["Text"]
      213 CALL                             R11 3 1
      214 SETTABLEKS                       R11 R10 K22 ["PropertyName"]
      216 GETUPVAL                         R11 6
      217 GETUPVAL                         R12 10
      218 DUPTABLE                         R13 K79 [{["getInfo"], ["beginEditingAsync"], ["setPart"], ["finishEditing"], ["specializedEditingUtils"], ["labelPressedSignal"], ["labelWidthBinding"], ["LayoutOrder"], ["ZIndex"] = 2}]
      219 GETTABLEKS                       R14 R0 K71 ["getInfo"]
      221 SETTABLEKS                       R14 R13 K71 ["getInfo"]
      223 GETTABLEKS                       R14 R0 K72 ["beginEditingAsync"]
      225 SETTABLEKS                       R14 R13 K72 ["beginEditingAsync"]
      227 GETTABLEKS                       R14 R0 K73 ["setPart"]
      229 SETTABLEKS                       R14 R13 K73 ["setPart"]
      231 GETTABLEKS                       R14 R0 K74 ["finishEditing"]
      233 SETTABLEKS                       R14 R13 K74 ["finishEditing"]
      235 GETTABLEKS                       R14 R0 K75 ["specializedEditingUtils"]
      237 SETTABLEKS                       R14 R13 K75 ["specializedEditingUtils"]
      239 GETTABLEKS                       R14 R1 K80 ["current"]
      241 SETTABLEKS                       R14 R13 K76 ["labelPressedSignal"]
      243 GETTABLEKS                       R14 R0 K46 ["labelWidthBinding"]
      245 SETTABLEKS                       R14 R13 K46 ["labelWidthBinding"]
      247 MOVE                             R14 R4
      248 CALL                             R14 0 1
      249 SETTABLEKS                       R14 R13 K13 ["LayoutOrder"]
      251 CALL                             R11 2 1
      252 SETTABLEKS                       R11 R10 K23 ["PropertyValue"]
      254 GETUPVAL                         R11 6
      255 LOADK                            R12 K81 ["UISizeConstraint"]
      256 DUPTABLE                         R13 K83 [{"MinSize"}]
      257 GETIMPORT                        R14 K85 [Vector2.new]
      259 LOADN                            R15 0
      260 GETTABLEKS                       R16 R5 K6 ["PropertyRow"]
      262 GETTABLEKS                       R16 R16 K34 ["MinHeight"]
      264 CALL                             R14 2 1
      265 SETTABLEKS                       R14 R13 K82 ["MinSize"]
      267 CALL                             R11 2 1
      268 SETTABLEKS                       R11 R10 K24 ["SizeConstraint"]
      270 CALL                             R7 3 -1
      271 RETURN                           R7 -1

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
