PROTO_0:
        0 LOADN                            R3 1
        1 JUMPIFNOTLE                      R3 R2 ; [+7]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["current"]
        6 NAMECALL                         R3 R3 K1 ["Fire"]
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

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
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R4 0 0
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K3 ["createNextOrder"]
       19 CALL                             R3 0 1
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K3 ["createNextOrder"]
       23 CALL                             R4 0 1
       24 GETUPVAL                         R5 3
       25 CALL                             R5 0 1
       26 GETTABLEKS                       R6 R5 K4 ["PropertyRow"]
       28 GETTABLEKS                       R6 R6 K5 ["Label"]
       30 GETUPVAL                         R7 4
       31 GETUPVAL                         R8 5
       32 DUPTABLE                         R9 K13 [{["tag"] = "row size-full-0 auto-y padding-y-xxsmall", ["onSecondaryActivated"], ["stateLayer"], ["selection"], ["LayoutOrder"], ["Visible"]}]
       33 GETTABLEKS                       R10 R0 K8 ["onSecondaryActivated"]
       35 SETTABLEKS                       R10 R9 K8 ["onSecondaryActivated"]
       37 DUPTABLE                         R10 K15 [{"affordance"}]
       38 GETUPVAL                         R11 6
       39 GETTABLEKS                       R11 R11 K16 ["None"]
       41 SETTABLEKS                       R11 R10 K14 ["affordance"]
       43 SETTABLEKS                       R10 R9 K9 ["stateLayer"]
       45 DUPTABLE                         R10 K19 [{["Selectable"] = False}]
       46 SETTABLEKS                       R10 R9 K10 ["selection"]
       48 GETTABLEKS                       R10 R0 K11 ["LayoutOrder"]
       50 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       52 GETTABLEKS                       R10 R0 K12 ["Visible"]
       54 SETTABLEKS                       R10 R9 K12 ["Visible"]
       56 DUPTABLE                         R10 K23 [{"PropertyName", "PropertyValue", "SizeConstraint"}]
       57 GETUPVAL                         R11 4
       58 GETUPVAL                         R12 5
       59 DUPTABLE                         R13 K27 [{["tag"] = "auto-x", ["onActivated"], ["stateLayer"], ["selection"], ["LayoutOrder"], ["Size"]}]
       60 SETTABLEKS                       R2 R13 K25 ["onActivated"]
       62 DUPTABLE                         R14 K15 [{"affordance"}]
       63 GETUPVAL                         R15 7
       64 GETTABLEKS                       R15 R15 K28 ["Enums"]
       66 GETTABLEKS                       R15 R15 K29 ["StateLayerAffordance"]
       68 GETTABLEKS                       R15 R15 K16 ["None"]
       70 SETTABLEKS                       R15 R14 K14 ["affordance"]
       72 SETTABLEKS                       R14 R13 K9 ["stateLayer"]
       74 DUPTABLE                         R14 K19 [{["Selectable"] = False}]
       75 SETTABLEKS                       R14 R13 K10 ["selection"]
       77 MOVE                             R14 R3
       78 CALL                             R14 0 1
       79 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
       81 GETIMPORT                        R14 K31 [UDim2.new]
       83 LOADN                            R15 0
       84 LOADN                            R16 0
       85 LOADN                            R17 0
       86 GETTABLEKS                       R18 R5 K4 ["PropertyRow"]
       88 GETTABLEKS                       R18 R18 K32 ["MinHeight"]
       90 CALL                             R14 4 1
       91 SETTABLEKS                       R14 R13 K26 ["Size"]
       93 DUPTABLE                         R14 K34 [{"Text"}]
       94 GETUPVAL                         R15 4
       95 GETUPVAL                         R16 8
       96 DUPTABLE                         R17 K39 [{["tag"] = "text-body-small text-no-wrap text-align-x-left text-align-y-center clip", ["LayoutOrder"], ["Text"], ["Position"], ["Size"], ["textStyle"], ["ZIndex"]}]
       97 MOVE                             R18 R3
       98 CALL                             R18 0 1
       99 SETTABLEKS                       R18 R17 K11 ["LayoutOrder"]
      101 GETTABLEKS                       R18 R0 K40 ["label"]
      103 SETTABLEKS                       R18 R17 K33 ["Text"]
      105 GETIMPORT                        R18 K42 [UDim2.fromOffset]
      107 GETTABLEKS                       R21 R0 K43 ["isSubRow"]
      109 JUMPIFNOT                        R21 ; [+2]
      110 LOADN                            R20 12
      111 JUMP                             ; [+1]
      112 LOADN                            R20 0
      113 GETTABLEKS                       R21 R5 K4 ["PropertyRow"]
      115 GETTABLEKS                       R21 R21 K5 ["Label"]
      117 GETTABLEKS                       R21 R21 K44 ["IndentWidth"]
      119 ADD                              R19 R20 R21
      120 LOADN                            R20 0
      121 CALL                             R18 2 1
      122 SETTABLEKS                       R18 R17 K36 ["Position"]
      124 GETTABLEKS                       R18 R0 K45 ["labelWidthBinding"]
      126 NEWCLOSURE                       R20 P1
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R0
      129 NAMECALL                         R18 R18 K46 ["map"]
      131 CALL                             R18 2 1
      132 SETTABLEKS                       R18 R17 K26 ["Size"]
      134 DUPTABLE                         R18 K49 [{"Color3", "Transparency"}]
      135 GETTABLEKS                       R20 R0 K50 ["isUnimplemented"]
      137 JUMPIFNOT                        R20 ; [+5]
      138 GETTABLEKS                       R19 R6 K51 ["Unimplemented"]
      140 GETTABLEKS                       R19 R19 K52 ["Color"]
      142 JUMP                             ; [+2]
      143 GETTABLEKS                       R19 R6 K52 ["Color"]
      145 SETTABLEKS                       R19 R18 K47 ["Color3"]
      147 GETTABLEKS                       R20 R0 K53 ["isReadonly"]
      149 JUMPIFNOT                        R20 ; [+5]
      150 GETTABLEKS                       R19 R6 K54 ["ReadOnly"]
      152 GETTABLEKS                       R19 R19 K48 ["Transparency"]
      154 JUMP                             ; [+2]
      155 GETTABLEKS                       R19 R6 K48 ["Transparency"]
      157 SETTABLEKS                       R19 R18 K48 ["Transparency"]
      159 SETTABLEKS                       R18 R17 K37 ["textStyle"]
      161 MOVE                             R18 R4
      162 CALL                             R18 0 1
      163 SETTABLEKS                       R18 R17 K38 ["ZIndex"]
      165 DUPTABLE                         R18 K56 [{"CoolFade"}]
      166 GETUPVAL                         R19 4
      167 GETUPVAL                         R20 9
      168 DUPTABLE                         R21 K59 [{["alignment"] = "Right", ["ZIndex"]}]
      169 MOVE                             R22 R4
      170 CALL                             R22 0 1
      171 SETTABLEKS                       R22 R21 K38 ["ZIndex"]
      173 CALL                             R19 2 1
      174 SETTABLEKS                       R19 R18 K55 ["CoolFade"]
      176 CALL                             R15 3 1
      177 SETTABLEKS                       R15 R14 K33 ["Text"]
      179 CALL                             R11 3 1
      180 SETTABLEKS                       R11 R10 K20 ["PropertyName"]
      182 GETUPVAL                         R11 4
      183 GETUPVAL                         R12 10
      184 DUPTABLE                         R13 K67 [{["getInfo"], ["beginEditingAsync"], ["setPart"], ["finishEditing"], ["specializedEditingUtils"], ["labelPressedSignal"], ["labelWidthBinding"], ["LayoutOrder"], ["ZIndex"] = 2}]
      185 GETTABLEKS                       R14 R0 K60 ["getInfo"]
      187 SETTABLEKS                       R14 R13 K60 ["getInfo"]
      189 GETTABLEKS                       R14 R0 K61 ["beginEditingAsync"]
      191 SETTABLEKS                       R14 R13 K61 ["beginEditingAsync"]
      193 GETTABLEKS                       R14 R0 K62 ["setPart"]
      195 SETTABLEKS                       R14 R13 K62 ["setPart"]
      197 GETTABLEKS                       R14 R0 K63 ["finishEditing"]
      199 SETTABLEKS                       R14 R13 K63 ["finishEditing"]
      201 GETTABLEKS                       R14 R0 K64 ["specializedEditingUtils"]
      203 SETTABLEKS                       R14 R13 K64 ["specializedEditingUtils"]
      205 GETTABLEKS                       R14 R1 K68 ["current"]
      207 SETTABLEKS                       R14 R13 K65 ["labelPressedSignal"]
      209 GETTABLEKS                       R14 R0 K45 ["labelWidthBinding"]
      211 SETTABLEKS                       R14 R13 K45 ["labelWidthBinding"]
      213 MOVE                             R14 R3
      214 CALL                             R14 0 1
      215 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
      217 CALL                             R11 2 1
      218 SETTABLEKS                       R11 R10 K21 ["PropertyValue"]
      220 GETUPVAL                         R11 4
      221 LOADK                            R12 K69 ["UISizeConstraint"]
      222 DUPTABLE                         R13 K71 [{"MinSize"}]
      223 GETIMPORT                        R14 K73 [Vector2.new]
      225 LOADN                            R15 0
      226 GETTABLEKS                       R16 R5 K4 ["PropertyRow"]
      228 GETTABLEKS                       R16 R16 K32 ["MinHeight"]
      230 CALL                             R14 2 1
      231 SETTABLEKS                       R14 R13 K70 ["MinSize"]
      233 CALL                             R11 2 1
      234 SETTABLEKS                       R11 R10 K22 ["SizeConstraint"]
      236 CALL                             R7 3 -1
      237 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Util"]
       15 GETTABLEKS                       R3 R3 K9 ["CoolFade"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["PropertyEditorTypes"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K7 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["PropertyEntries"]
       34 GETTABLEKS                       R6 R6 K13 ["PropertyView"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K14 ["React"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R1 K15 ["ReactUtils"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R1 K16 ["Signal"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K8 ["Util"]
       56 GETTABLEKS                       R10 R10 K17 ["getVisualValues"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K18 ["Hooks"]
       63 GETTABLEKS                       R11 R11 K19 ["useVisualValues"]
       65 CALL                             R10 1 1
       66 GETTABLEKS                       R11 R3 K20 ["Enums"]
       68 GETTABLEKS                       R11 R11 K21 ["StateLayerAffordance"]
       70 GETTABLEKS                       R12 R3 K22 ["Text"]
       72 GETTABLEKS                       R13 R3 K23 ["View"]
       74 GETTABLEKS                       R14 R6 K24 ["createElement"]
       76 DUPCLOSURE                       R15 K25 [PROTO_2]
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R14
       82 CAPTURE                          VAL R13
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R5
       88 RETURN                           R15 1
