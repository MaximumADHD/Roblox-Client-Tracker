PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["aggregatePropertyInfo"]
        3 GETTABLEKS                       R3 R4 K1 ["type"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 1
        7 JUMPIFNOTEQ                      R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getProperty"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R2 R3 K1 ["id"]
        7 GETTABLEKS                       R1 R2 K2 ["name"]
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getProperty"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R2 R3 K1 ["aggregatePropertyInfo"]
        7 GETTABLEKS                       R1 R2 K2 ["readonly"]
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getProperty"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R5 R2 K1 ["aggregatePropertyInfo"]
        8 GETTABLEKS                       R4 R5 K2 ["type"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 2
       12 JUMPIFNOTEQ                      R3 R4 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Enums"]
        3 GETTABLEKS                       R2 R3 K1 ["ControlState"]
        5 GETTABLEKS                       R1 R2 K2 ["Pressed"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+7]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["current"]
       12 NAMECALL                         R1 R1 K4 ["Fire"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getProperty"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R2 R0 K1 ["id"]
        6 GETTABLEKS                       R1 R2 K2 ["metaType"]
        8 JUMPIFNOTEQKS                    R1 K3 ["Attribute"] ; [+18]
       10 GETIMPORT                        R1 K5 [print]
       12 LOADK                            R3 K6 ["attribute %* right click!"]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R7 R8 K0 ["getProperty"]
       16 CALL                             R7 0 1
       17 GETTABLEKS                       R6 R7 K1 ["id"]
       19 GETTABLEKS                       R5 R6 K7 ["name"]
       21 NAMECALL                         R3 R3 K8 ["format"]
       23 CALL                             R3 2 1
       24 MOVE                             R2 R3
       25 CALL                             R1 1 0
       26 RETURN                           R0 0
       27 GETIMPORT                        R1 K5 [print]
       29 LOADK                            R3 K9 ["property %* right click!"]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R7 R8 K0 ["getProperty"]
       33 CALL                             R7 0 1
       34 GETTABLEKS                       R6 R7 K1 ["id"]
       36 GETTABLEKS                       R5 R6 K7 ["name"]
       38 NAMECALL                         R3 R3 K8 ["format"]
       40 CALL                             R3 2 1
       41 MOVE                             R2 R3
       42 CALL                             R1 1 0
       43 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 0
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K3 ["IndentWidth"]
        6 SUB                              R4 R0 R5
        7 FASTCALL2K                       MATH_MAX R4 K4 ; [+4]
        9 LOADK                            R5 K4 [0]
       10 GETIMPORT                        R3 K7 [math.max]
       12 CALL                             R3 2 1
       13 LOADN                            R4 1
       14 LOADN                            R5 0
       15 CALL                             R1 4 -1
       16 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K1 ["useContext"]
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R4 R5 K2 ["Context"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R4 R5 K3 ["useRef"]
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K4 ["new"]
       19 CALL                             R5 0 -1
       20 CALL                             R4 -1 1
       21 GETUPVAL                         R6 5
       22 GETTABLEKS                       R5 R6 K5 ["useSignalBinding"]
       24 GETUPVAL                         R7 6
       25 GETTABLEKS                       R6 R7 K6 ["createComputed"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R0
       29 CALL                             R6 1 -1
       30 CALL                             R5 -1 1
       31 GETUPVAL                         R7 5
       32 GETTABLEKS                       R6 R7 K7 ["useSignalState"]
       34 GETUPVAL                         R8 6
       35 GETTABLEKS                       R7 R8 K6 ["createComputed"]
       37 NEWCLOSURE                       R8 P1
       38 CAPTURE                          VAL R0
       39 CALL                             R7 1 -1
       40 CALL                             R6 -1 1
       41 GETUPVAL                         R8 5
       42 GETTABLEKS                       R7 R8 K7 ["useSignalState"]
       44 GETUPVAL                         R9 6
       45 GETTABLEKS                       R8 R9 K6 ["createComputed"]
       47 NEWCLOSURE                       R9 P2
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          UPVAL U8
       51 CALL                             R8 1 -1
       52 CALL                             R7 -1 1
       53 GETUPVAL                         R9 2
       54 GETTABLEKS                       R8 R9 K8 ["useCallback"]
       56 NEWCLOSURE                       R9 P3
       57 CAPTURE                          UPVAL U9
       58 CAPTURE                          VAL R4
       59 NEWTABLE                         R10 0 0
       61 CALL                             R8 2 1
       62 GETUPVAL                         R10 2
       63 GETTABLEKS                       R9 R10 K8 ["useCallback"]
       65 NEWCLOSURE                       R10 P4
       66 CAPTURE                          VAL R0
       67 NEWTABLE                         R11 0 1
       69 GETTABLEKS                       R12 R0 K9 ["getProperty"]
       71 SETLIST                          R11 R12 1 [1]
       73 CALL                             R9 2 1
       74 GETTABLEKS                       R11 R2 K10 ["PropertyRow"]
       76 GETTABLEKS                       R10 R11 K11 ["Label"]
       78 GETUPVAL                         R11 10
       79 GETUPVAL                         R12 11
       80 DUPTABLE                         R13 K17 [{"tag", "onSecondaryActivated", "stateLayer", "LayoutOrder", "Visible"}]
       81 LOADK                            R14 K18 ["auto-y size-full-0 row padding-y-xxsmall"]
       82 SETTABLEKS                       R14 R13 K12 ["tag"]
       84 SETTABLEKS                       R9 R13 K13 ["onSecondaryActivated"]
       86 DUPTABLE                         R14 K20 [{"affordance"}]
       87 GETUPVAL                         R16 12
       88 GETTABLEKS                       R15 R16 K21 ["None"]
       90 SETTABLEKS                       R15 R14 K19 ["affordance"]
       92 SETTABLEKS                       R14 R13 K14 ["stateLayer"]
       94 GETTABLEKS                       R14 R0 K15 ["LayoutOrder"]
       96 SETTABLEKS                       R14 R13 K15 ["LayoutOrder"]
       98 GETTABLEKS                       R14 R0 K16 ["Visible"]
      100 SETTABLEKS                       R14 R13 K16 ["Visible"]
      102 DUPTABLE                         R14 K25 [{"PropertyName", "PropertyValue", "SizeConstraint"}]
      103 GETUPVAL                         R15 10
      104 GETUPVAL                         R16 11
      105 DUPTABLE                         R17 K28 [{"tag", "stateLayer", "onStateChanged", "LayoutOrder", "Size"}]
      106 LOADK                            R18 K29 ["auto-x"]
      107 SETTABLEKS                       R18 R17 K12 ["tag"]
      109 DUPTABLE                         R18 K20 [{"affordance"}]
      110 GETUPVAL                         R22 9
      111 GETTABLEKS                       R21 R22 K30 ["Enums"]
      113 GETTABLEKS                       R20 R21 K31 ["StateLayerAffordance"]
      115 GETTABLEKS                       R19 R20 K21 ["None"]
      117 SETTABLEKS                       R19 R18 K19 ["affordance"]
      119 SETTABLEKS                       R18 R17 K14 ["stateLayer"]
      121 SETTABLEKS                       R8 R17 K26 ["onStateChanged"]
      123 MOVE                             R18 R1
      124 CALL                             R18 0 1
      125 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      127 GETIMPORT                        R18 K33 [UDim2.new]
      129 LOADN                            R19 0
      130 LOADN                            R20 0
      131 LOADN                            R21 0
      132 GETTABLEKS                       R23 R2 K10 ["PropertyRow"]
      134 GETTABLEKS                       R22 R23 K34 ["MinHeight"]
      136 CALL                             R18 4 1
      137 SETTABLEKS                       R18 R17 K27 ["Size"]
      139 DUPTABLE                         R18 K36 [{"Text"}]
      140 GETUPVAL                         R19 10
      141 GETUPVAL                         R20 13
      142 DUPTABLE                         R21 K39 [{"tag", "LayoutOrder", "Text", "Position", "Size", "textStyle"}]
      143 LOADK                            R22 K40 ["clip text-no-wrap text-align-x-left text-align-y-center text-body-small"]
      144 SETTABLEKS                       R22 R21 K12 ["tag"]
      146 MOVE                             R22 R1
      147 CALL                             R22 0 1
      148 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      150 SETTABLEKS                       R5 R21 K35 ["Text"]
      152 GETIMPORT                        R22 K42 [UDim2.fromOffset]
      154 GETTABLEKS                       R25 R2 K10 ["PropertyRow"]
      156 GETTABLEKS                       R24 R25 K11 ["Label"]
      158 GETTABLEKS                       R23 R24 K43 ["IndentWidth"]
      160 LOADN                            R24 0
      161 CALL                             R22 2 1
      162 SETTABLEKS                       R22 R21 K37 ["Position"]
      164 GETTABLEKS                       R22 R0 K44 ["labelWidthBinding"]
      166 NEWCLOSURE                       R24 P5
      167 CAPTURE                          VAL R10
      168 NAMECALL                         R22 R22 K45 ["map"]
      170 CALL                             R22 2 1
      171 SETTABLEKS                       R22 R21 K27 ["Size"]
      173 DUPTABLE                         R22 K48 [{"Color3", "Transparency"}]
      174 JUMPIFNOT                        R7 ; [+3]
      175 GETTABLEKS                       R23 R10 K49 ["Color"]
      177 JUMP                             ; [+4]
      178 GETTABLEKS                       R24 R10 K50 ["Unimplemented"]
      180 GETTABLEKS                       R23 R24 K49 ["Color"]
      182 SETTABLEKS                       R23 R22 K46 ["Color3"]
      184 JUMPIFNOT                        R6 ; [+5]
      185 GETTABLEKS                       R24 R10 K51 ["ReadOnly"]
      187 GETTABLEKS                       R23 R24 K47 ["Transparency"]
      189 JUMP                             ; [+2]
      190 GETTABLEKS                       R23 R10 K47 ["Transparency"]
      192 SETTABLEKS                       R23 R22 K47 ["Transparency"]
      194 SETTABLEKS                       R22 R21 K38 ["textStyle"]
      196 DUPTABLE                         R22 K53 [{"CoolFade"}]
      197 GETUPVAL                         R23 10
      198 GETUPVAL                         R24 11
      199 DUPTABLE                         R25 K55 [{"tag", "Size", "backgroundStyle"}]
      200 LOADK                            R26 K56 ["anchor-center-right position-center-right"]
      201 SETTABLEKS                       R26 R25 K12 ["tag"]
      203 GETIMPORT                        R26 K33 [UDim2.new]
      205 LOADN                            R27 0
      206 GETTABLEKS                       R29 R10 K57 ["Fade"]
      208 GETTABLEKS                       R28 R29 K58 ["Width"]
      210 LOADN                            R29 1
      211 LOADN                            R30 0
      212 CALL                             R26 4 1
      213 SETTABLEKS                       R26 R25 K27 ["Size"]
      215 DUPTABLE                         R26 K48 [{"Color3", "Transparency"}]
      216 GETTABLEKS                       R29 R10 K57 ["Fade"]
      218 GETTABLEKS                       R28 R29 K49 ["Color"]
      220 GETTABLEKS                       R29 R3 K59 ["theme"]
      222 GETTABLE                         R27 R28 R29
      223 SETTABLEKS                       R27 R26 K46 ["Color3"]
      225 LOADN                            R27 0
      226 SETTABLEKS                       R27 R26 K47 ["Transparency"]
      228 SETTABLEKS                       R26 R25 K54 ["backgroundStyle"]
      230 DUPTABLE                         R26 K61 [{"UIGradient"}]
      231 GETUPVAL                         R27 10
      232 LOADK                            R28 K60 ["UIGradient"]
      233 DUPTABLE                         R29 K62 [{"Transparency"}]
      234 GETIMPORT                        R30 K64 [NumberSequence.new]
      236 LOADN                            R31 1
      237 LOADN                            R32 0
      238 CALL                             R30 2 1
      239 SETTABLEKS                       R30 R29 K47 ["Transparency"]
      241 CALL                             R27 2 1
      242 SETTABLEKS                       R27 R26 K60 ["UIGradient"]
      244 CALL                             R23 3 1
      245 SETTABLEKS                       R23 R22 K52 ["CoolFade"]
      247 CALL                             R19 3 1
      248 SETTABLEKS                       R19 R18 K35 ["Text"]
      250 CALL                             R15 3 1
      251 SETTABLEKS                       R15 R14 K22 ["PropertyName"]
      253 GETUPVAL                         R15 10
      254 GETUPVAL                         R16 14
      255 DUPTABLE                         R17 K68 [{"session", "getProperty", "labelPressedSignal", "labelWidthBinding", "LayoutOrder", "ZIndex"}]
      256 GETTABLEKS                       R18 R0 K65 ["session"]
      258 SETTABLEKS                       R18 R17 K65 ["session"]
      260 GETTABLEKS                       R18 R0 K9 ["getProperty"]
      262 SETTABLEKS                       R18 R17 K9 ["getProperty"]
      264 GETTABLEKS                       R18 R4 K69 ["current"]
      266 SETTABLEKS                       R18 R17 K66 ["labelPressedSignal"]
      268 GETTABLEKS                       R18 R0 K44 ["labelWidthBinding"]
      270 SETTABLEKS                       R18 R17 K44 ["labelWidthBinding"]
      272 MOVE                             R18 R1
      273 CALL                             R18 0 1
      274 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      276 LOADN                            R18 2
      277 SETTABLEKS                       R18 R17 K67 ["ZIndex"]
      279 CALL                             R15 2 1
      280 SETTABLEKS                       R15 R14 K23 ["PropertyValue"]
      282 GETUPVAL                         R15 10
      283 LOADK                            R16 K70 ["UISizeConstraint"]
      284 DUPTABLE                         R17 K72 [{"MinSize"}]
      285 GETIMPORT                        R18 K74 [Vector2.new]
      287 LOADN                            R19 0
      288 GETTABLEKS                       R21 R2 K10 ["PropertyRow"]
      290 GETTABLEKS                       R20 R21 K34 ["MinHeight"]
      292 CALL                             R18 2 1
      293 SETTABLEKS                       R18 R17 K71 ["MinSize"]
      295 CALL                             R15 2 1
      296 SETTABLEKS                       R15 R14 K24 ["SizeConstraint"]
      298 CALL                             R11 3 -1
      299 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R6 R0 K7 ["Components"]
       13 GETTABLEKS                       R5 R6 K8 ["PropertyEntries"]
       15 GETTABLEKS                       R4 R5 K9 ["PropertyView"]
       17 GETTABLEKS                       R3 R4 K10 ["BasicPropertyView"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K11 ["Foundation"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K12 ["PropertyTypes"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R8 R0 K7 ["Components"]
       34 GETTABLEKS                       R7 R8 K8 ["PropertyEntries"]
       36 GETTABLEKS                       R6 R7 K9 ["PropertyView"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R1 K13 ["React"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R1 K14 ["ReactUtils"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K15 ["RpcTypes"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R1 K16 ["Signal"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R1 K17 ["Signals"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K6 [require]
       66 GETTABLEKS                       R12 R1 K18 ["SignalsReact"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K6 [require]
       71 GETTABLEKS                       R15 R0 K7 ["Components"]
       73 GETTABLEKS                       R14 R15 K19 ["Contexts"]
       75 GETTABLEKS                       R13 R14 K20 ["ThemeContext"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K6 [require]
       80 GETTABLEKS                       R17 R0 K7 ["Components"]
       82 GETTABLEKS                       R16 R17 K8 ["PropertyEntries"]
       84 GETTABLEKS                       R15 R16 K9 ["PropertyView"]
       86 GETTABLEKS                       R14 R15 K21 ["getPropertyView"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R16 R0 K22 ["Hooks"]
       93 GETTABLEKS                       R15 R16 K23 ["useVisualValues"]
       95 CALL                             R14 1 1
       96 GETTABLEKS                       R16 R3 K24 ["Enums"]
       98 GETTABLEKS                       R15 R16 K25 ["StateLayerAffordance"]
      100 GETTABLEKS                       R16 R3 K26 ["Text"]
      102 GETTABLEKS                       R17 R3 K27 ["View"]
      104 GETTABLEKS                       R18 R6 K28 ["createElement"]
      106 DUPCLOSURE                       R19 K29 [PROTO_0]
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R2
      109 DUPCLOSURE                       R20 K30 [PROTO_7]
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R18
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R5
      125 RETURN                           R20 1
