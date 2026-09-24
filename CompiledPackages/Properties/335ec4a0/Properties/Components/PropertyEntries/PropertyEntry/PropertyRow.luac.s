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
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K3 ["createNextOrder"]
       20 CALL                             R3 0 1
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K3 ["createNextOrder"]
       24 CALL                             R4 0 1
       25 GETUPVAL                         R5 4
       26 CALL                             R5 0 1
       27 GETTABLEKS                       R6 R5 K4 ["PropertyRow"]
       29 GETTABLEKS                       R6 R6 K5 ["Label"]
       31 GETUPVAL                         R7 5
       32 GETUPVAL                         R8 6
       33 DUPTABLE                         R9 K13 [{["tag"] = "row size-full-0 auto-y padding-y-xxsmall", ["onSecondaryActivated"], ["stateLayer"], ["selection"], ["LayoutOrder"], ["Visible"]}]
       34 GETTABLEKS                       R10 R0 K8 ["onSecondaryActivated"]
       36 SETTABLEKS                       R10 R9 K8 ["onSecondaryActivated"]
       38 DUPTABLE                         R10 K15 [{"affordance"}]
       39 GETUPVAL                         R11 7
       40 GETTABLEKS                       R11 R11 K16 ["None"]
       42 SETTABLEKS                       R11 R10 K14 ["affordance"]
       44 SETTABLEKS                       R10 R9 K9 ["stateLayer"]
       46 DUPTABLE                         R10 K19 [{["Selectable"] = False}]
       47 SETTABLEKS                       R10 R9 K10 ["selection"]
       49 GETTABLEKS                       R10 R0 K11 ["LayoutOrder"]
       51 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       53 GETTABLEKS                       R10 R0 K12 ["Visible"]
       55 SETTABLEKS                       R10 R9 K12 ["Visible"]
       57 DUPTABLE                         R10 K23 [{"PropertyName", "PropertyValue", "SizeConstraint"}]
       58 GETUPVAL                         R11 5
       59 GETUPVAL                         R12 6
       60 DUPTABLE                         R13 K27 [{["tag"] = "auto-x", ["stateLayer"], ["onStateChanged"], ["selection"], ["LayoutOrder"], ["Size"]}]
       61 DUPTABLE                         R14 K15 [{"affordance"}]
       62 GETUPVAL                         R15 2
       63 GETTABLEKS                       R15 R15 K28 ["Enums"]
       65 GETTABLEKS                       R15 R15 K29 ["StateLayerAffordance"]
       67 GETTABLEKS                       R15 R15 K16 ["None"]
       69 SETTABLEKS                       R15 R14 K14 ["affordance"]
       71 SETTABLEKS                       R14 R13 K9 ["stateLayer"]
       73 SETTABLEKS                       R2 R13 K25 ["onStateChanged"]
       75 DUPTABLE                         R14 K19 [{["Selectable"] = False}]
       76 SETTABLEKS                       R14 R13 K10 ["selection"]
       78 MOVE                             R14 R3
       79 CALL                             R14 0 1
       80 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
       82 GETIMPORT                        R14 K31 [UDim2.new]
       84 LOADN                            R15 0
       85 LOADN                            R16 0
       86 LOADN                            R17 0
       87 GETTABLEKS                       R18 R5 K4 ["PropertyRow"]
       89 GETTABLEKS                       R18 R18 K32 ["MinHeight"]
       91 CALL                             R14 4 1
       92 SETTABLEKS                       R14 R13 K26 ["Size"]
       94 DUPTABLE                         R14 K34 [{"Text"}]
       95 GETUPVAL                         R15 5
       96 GETUPVAL                         R16 8
       97 DUPTABLE                         R17 K39 [{["tag"] = "text-body-small text-no-wrap text-align-x-left text-align-y-center clip", ["LayoutOrder"], ["Text"], ["Position"], ["Size"], ["textStyle"], ["ZIndex"]}]
       98 MOVE                             R18 R3
       99 CALL                             R18 0 1
      100 SETTABLEKS                       R18 R17 K11 ["LayoutOrder"]
      102 GETTABLEKS                       R18 R0 K40 ["label"]
      104 SETTABLEKS                       R18 R17 K33 ["Text"]
      106 GETIMPORT                        R18 K42 [UDim2.fromOffset]
      108 GETTABLEKS                       R21 R0 K43 ["isSubRow"]
      110 JUMPIFNOT                        R21 ; [+2]
      111 LOADN                            R20 12
      112 JUMP                             ; [+1]
      113 LOADN                            R20 0
      114 GETTABLEKS                       R21 R5 K4 ["PropertyRow"]
      116 GETTABLEKS                       R21 R21 K5 ["Label"]
      118 GETTABLEKS                       R21 R21 K44 ["IndentWidth"]
      120 ADD                              R19 R20 R21
      121 LOADN                            R20 0
      122 CALL                             R18 2 1
      123 SETTABLEKS                       R18 R17 K36 ["Position"]
      125 GETTABLEKS                       R18 R0 K45 ["labelWidthBinding"]
      127 NEWCLOSURE                       R20 P1
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R0
      130 NAMECALL                         R18 R18 K46 ["map"]
      132 CALL                             R18 2 1
      133 SETTABLEKS                       R18 R17 K26 ["Size"]
      135 DUPTABLE                         R18 K49 [{"Color3", "Transparency"}]
      136 GETTABLEKS                       R20 R0 K50 ["isUnimplemented"]
      138 JUMPIFNOT                        R20 ; [+5]
      139 GETTABLEKS                       R19 R6 K51 ["Unimplemented"]
      141 GETTABLEKS                       R19 R19 K52 ["Color"]
      143 JUMP                             ; [+2]
      144 GETTABLEKS                       R19 R6 K52 ["Color"]
      146 SETTABLEKS                       R19 R18 K47 ["Color3"]
      148 GETTABLEKS                       R20 R0 K53 ["isReadonly"]
      150 JUMPIFNOT                        R20 ; [+5]
      151 GETTABLEKS                       R19 R6 K54 ["ReadOnly"]
      153 GETTABLEKS                       R19 R19 K48 ["Transparency"]
      155 JUMP                             ; [+2]
      156 GETTABLEKS                       R19 R6 K48 ["Transparency"]
      158 SETTABLEKS                       R19 R18 K48 ["Transparency"]
      160 SETTABLEKS                       R18 R17 K37 ["textStyle"]
      162 MOVE                             R18 R4
      163 CALL                             R18 0 1
      164 SETTABLEKS                       R18 R17 K38 ["ZIndex"]
      166 DUPTABLE                         R18 K56 [{"CoolFade"}]
      167 GETUPVAL                         R19 5
      168 GETUPVAL                         R20 9
      169 DUPTABLE                         R21 K59 [{["alignment"] = "Right", ["ZIndex"]}]
      170 MOVE                             R22 R4
      171 CALL                             R22 0 1
      172 SETTABLEKS                       R22 R21 K38 ["ZIndex"]
      174 CALL                             R19 2 1
      175 SETTABLEKS                       R19 R18 K55 ["CoolFade"]
      177 CALL                             R15 3 1
      178 SETTABLEKS                       R15 R14 K33 ["Text"]
      180 CALL                             R11 3 1
      181 SETTABLEKS                       R11 R10 K20 ["PropertyName"]
      183 GETUPVAL                         R11 5
      184 GETUPVAL                         R12 10
      185 DUPTABLE                         R13 K67 [{["getInfo"], ["beginEditingAsync"], ["setPart"], ["finishEditing"], ["specializedEditingUtils"], ["labelPressedSignal"], ["labelWidthBinding"], ["LayoutOrder"], ["ZIndex"] = 2}]
      186 GETTABLEKS                       R14 R0 K60 ["getInfo"]
      188 SETTABLEKS                       R14 R13 K60 ["getInfo"]
      190 GETTABLEKS                       R14 R0 K61 ["beginEditingAsync"]
      192 SETTABLEKS                       R14 R13 K61 ["beginEditingAsync"]
      194 GETTABLEKS                       R14 R0 K62 ["setPart"]
      196 SETTABLEKS                       R14 R13 K62 ["setPart"]
      198 GETTABLEKS                       R14 R0 K63 ["finishEditing"]
      200 SETTABLEKS                       R14 R13 K63 ["finishEditing"]
      202 GETTABLEKS                       R14 R0 K64 ["specializedEditingUtils"]
      204 SETTABLEKS                       R14 R13 K64 ["specializedEditingUtils"]
      206 GETTABLEKS                       R14 R1 K68 ["current"]
      208 SETTABLEKS                       R14 R13 K65 ["labelPressedSignal"]
      210 GETTABLEKS                       R14 R0 K45 ["labelWidthBinding"]
      212 SETTABLEKS                       R14 R13 K45 ["labelWidthBinding"]
      214 MOVE                             R14 R3
      215 CALL                             R14 0 1
      216 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
      218 CALL                             R11 2 1
      219 SETTABLEKS                       R11 R10 K21 ["PropertyValue"]
      221 GETUPVAL                         R11 5
      222 LOADK                            R12 K69 ["UISizeConstraint"]
      223 DUPTABLE                         R13 K71 [{"MinSize"}]
      224 GETIMPORT                        R14 K73 [Vector2.new]
      226 LOADN                            R15 0
      227 GETTABLEKS                       R16 R5 K4 ["PropertyRow"]
      229 GETTABLEKS                       R16 R16 K32 ["MinHeight"]
      231 CALL                             R14 2 1
      232 SETTABLEKS                       R14 R13 K70 ["MinSize"]
      234 CALL                             R11 2 1
      235 SETTABLEKS                       R11 R10 K22 ["SizeConstraint"]
      237 CALL                             R7 3 -1
      238 RETURN                           R7 -1

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
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R14
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R5
       88 RETURN                           R15 1
