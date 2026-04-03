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
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K3 ["Size"]
        6 GETTABLEKS                       R5 R6 K4 ["Size_800"]
        8 SUB                              R4 R0 R5
        9 FASTCALL2K                       MATH_MAX R4 K5 ; [+4]
       11 LOADK                            R5 K5 [0]
       12 GETIMPORT                        R3 K8 [math.max]
       14 CALL                             R3 2 1
       15 LOADN                            R4 1
       16 LOADN                            R5 0
       17 CALL                             R1 4 -1
       18 RETURN                           R1 -1

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
       74 GETUPVAL                         R10 10
       75 GETUPVAL                         R11 11
       76 DUPTABLE                         R12 K15 [{"tag", "onSecondaryActivated", "stateLayer", "LayoutOrder", "Visible"}]
       77 LOADK                            R13 K16 ["auto-y size-full-0 row padding-left-medium padding-y-xxsmall"]
       78 SETTABLEKS                       R13 R12 K10 ["tag"]
       80 SETTABLEKS                       R9 R12 K11 ["onSecondaryActivated"]
       82 DUPTABLE                         R13 K18 [{"affordance"}]
       83 GETUPVAL                         R15 12
       84 GETTABLEKS                       R14 R15 K19 ["None"]
       86 SETTABLEKS                       R14 R13 K17 ["affordance"]
       88 SETTABLEKS                       R13 R12 K12 ["stateLayer"]
       90 GETTABLEKS                       R13 R0 K13 ["LayoutOrder"]
       92 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
       94 GETTABLEKS                       R13 R0 K14 ["Visible"]
       96 SETTABLEKS                       R13 R12 K14 ["Visible"]
       98 DUPTABLE                         R13 K23 [{"PropertyName", "PropertyValue", "SizeConstraint"}]
       99 GETUPVAL                         R14 10
      100 GETUPVAL                         R15 11
      101 DUPTABLE                         R16 K25 [{"tag", "stateLayer", "onStateChanged", "LayoutOrder"}]
      102 LOADK                            R17 K26 ["auto-x row size-0-600"]
      103 SETTABLEKS                       R17 R16 K10 ["tag"]
      105 DUPTABLE                         R17 K18 [{"affordance"}]
      106 GETUPVAL                         R21 9
      107 GETTABLEKS                       R20 R21 K27 ["Enums"]
      109 GETTABLEKS                       R19 R20 K28 ["StateLayerAffordance"]
      111 GETTABLEKS                       R18 R19 K19 ["None"]
      113 SETTABLEKS                       R18 R17 K17 ["affordance"]
      115 SETTABLEKS                       R17 R16 K12 ["stateLayer"]
      117 SETTABLEKS                       R8 R16 K24 ["onStateChanged"]
      119 MOVE                             R17 R1
      120 CALL                             R17 0 1
      121 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      123 DUPTABLE                         R17 K31 [{"LeftSpacer", "Text"}]
      124 GETUPVAL                         R18 10
      125 GETUPVAL                         R19 13
      126 DUPTABLE                         R20 K33 [{"LayoutOrder", "addTrailingGap"}]
      127 MOVE                             R21 R1
      128 CALL                             R21 0 1
      129 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      131 LOADB                            R21 1
      132 SETTABLEKS                       R21 R20 K32 ["addTrailingGap"]
      134 CALL                             R18 2 1
      135 SETTABLEKS                       R18 R17 K29 ["LeftSpacer"]
      137 GETUPVAL                         R18 10
      138 GETUPVAL                         R19 14
      139 DUPTABLE                         R20 K36 [{"tag", "LayoutOrder", "Text", "Size", "textStyle"}]
      140 LOADK                            R21 K37 ["clip text-no-wrap text-align-x-left text-align-y-center text-body-small"]
      141 SETTABLEKS                       R21 R20 K10 ["tag"]
      143 MOVE                             R21 R1
      144 CALL                             R21 0 1
      145 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      147 SETTABLEKS                       R5 R20 K30 ["Text"]
      149 GETTABLEKS                       R21 R0 K38 ["labelWidthBinding"]
      151 NEWCLOSURE                       R23 P5
      152 CAPTURE                          VAL R2
      153 NAMECALL                         R21 R21 K39 ["map"]
      155 CALL                             R21 2 1
      156 SETTABLEKS                       R21 R20 K34 ["Size"]
      158 DUPTABLE                         R21 K42 [{"Color3", "Transparency"}]
      159 JUMPIFNOT                        R7 ; [+9]
      160 GETTABLEKS                       R25 R2 K43 ["Color"]
      162 GETTABLEKS                       R24 R25 K44 ["Content"]
      164 GETTABLEKS                       R23 R24 K45 ["Default"]
      166 GETTABLEKS                       R22 R23 K40 ["Color3"]
      168 JUMP                             ; [+3]
      169 GETUPVAL                         R23 15
      170 GETTABLEKS                       R22 R23 K46 ["unimplementedLabelColor"]
      172 SETTABLEKS                       R22 R21 K40 ["Color3"]
      174 JUMPIFNOT                        R6 ; [+4]
      175 GETUPVAL                         R23 15
      176 GETTABLEKS                       R22 R23 K47 ["readOnlyLabelTransparency"]
      178 JUMP                             ; [+8]
      179 GETTABLEKS                       R25 R2 K43 ["Color"]
      181 GETTABLEKS                       R24 R25 K44 ["Content"]
      183 GETTABLEKS                       R23 R24 K45 ["Default"]
      185 GETTABLEKS                       R22 R23 K41 ["Transparency"]
      187 SETTABLEKS                       R22 R21 K41 ["Transparency"]
      189 SETTABLEKS                       R21 R20 K35 ["textStyle"]
      191 DUPTABLE                         R21 K49 [{"CoolFade"}]
      192 GETUPVAL                         R22 10
      193 GETUPVAL                         R23 11
      194 DUPTABLE                         R24 K51 [{"tag", "Size", "backgroundStyle"}]
      195 LOADK                            R25 K52 ["anchor-center-right position-center-right"]
      196 SETTABLEKS                       R25 R24 K10 ["tag"]
      198 GETIMPORT                        R25 K54 [UDim2.new]
      200 LOADN                            R26 0
      201 GETTABLEKS                       R28 R2 K55 ["Padding"]
      203 GETTABLEKS                       R27 R28 K56 ["Medium"]
      205 LOADN                            R28 1
      206 LOADN                            R29 0
      207 CALL                             R25 4 1
      208 SETTABLEKS                       R25 R24 K34 ["Size"]
      210 DUPTABLE                         R25 K42 [{"Color3", "Transparency"}]
      211 GETTABLEKS                       R27 R3 K57 ["theme"]
      213 JUMPIFNOTEQKS                    R27 K58 ["Light"] ; [+6]
      215 GETIMPORT                        R26 K60 [Color3.fromHex]
      217 LOADK                            R27 K61 ["#FFFFFF"]
      218 CALL                             R26 1 1
      219 JUMP                             ; [+8]
      220 GETTABLEKS                       R29 R2 K43 ["Color"]
      222 GETTABLEKS                       R28 R29 K62 ["Surface"]
      224 GETTABLEKS                       R27 R28 K63 ["Surface_100"]
      226 GETTABLEKS                       R26 R27 K40 ["Color3"]
      228 SETTABLEKS                       R26 R25 K40 ["Color3"]
      230 LOADN                            R26 0
      231 SETTABLEKS                       R26 R25 K41 ["Transparency"]
      233 SETTABLEKS                       R25 R24 K50 ["backgroundStyle"]
      235 DUPTABLE                         R25 K65 [{"UIGradient"}]
      236 GETUPVAL                         R26 10
      237 LOADK                            R27 K64 ["UIGradient"]
      238 DUPTABLE                         R28 K66 [{"Transparency"}]
      239 GETIMPORT                        R29 K68 [NumberSequence.new]
      241 LOADN                            R30 1
      242 LOADN                            R31 0
      243 CALL                             R29 2 1
      244 SETTABLEKS                       R29 R28 K41 ["Transparency"]
      246 CALL                             R26 2 1
      247 SETTABLEKS                       R26 R25 K64 ["UIGradient"]
      249 CALL                             R22 3 1
      250 SETTABLEKS                       R22 R21 K48 ["CoolFade"]
      252 CALL                             R18 3 1
      253 SETTABLEKS                       R18 R17 K30 ["Text"]
      255 CALL                             R14 3 1
      256 SETTABLEKS                       R14 R13 K20 ["PropertyName"]
      258 GETUPVAL                         R14 10
      259 GETUPVAL                         R15 16
      260 DUPTABLE                         R16 K72 [{"session", "getProperty", "labelPressedSignal", "labelWidthBinding", "LayoutOrder", "ZIndex"}]
      261 GETTABLEKS                       R17 R0 K69 ["session"]
      263 SETTABLEKS                       R17 R16 K69 ["session"]
      265 GETTABLEKS                       R17 R0 K9 ["getProperty"]
      267 SETTABLEKS                       R17 R16 K9 ["getProperty"]
      269 GETTABLEKS                       R17 R4 K73 ["current"]
      271 SETTABLEKS                       R17 R16 K70 ["labelPressedSignal"]
      273 GETTABLEKS                       R17 R0 K38 ["labelWidthBinding"]
      275 SETTABLEKS                       R17 R16 K38 ["labelWidthBinding"]
      277 MOVE                             R17 R1
      278 CALL                             R17 0 1
      279 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      281 LOADN                            R17 2
      282 SETTABLEKS                       R17 R16 K71 ["ZIndex"]
      284 CALL                             R14 2 1
      285 SETTABLEKS                       R14 R13 K21 ["PropertyValue"]
      287 GETUPVAL                         R14 10
      288 LOADK                            R15 K74 ["UISizeConstraint"]
      289 DUPTABLE                         R16 K76 [{"MinSize"}]
      290 GETIMPORT                        R17 K78 [Vector2.new]
      292 LOADN                            R18 0
      293 GETTABLEKS                       R20 R2 K34 ["Size"]
      295 GETTABLEKS                       R19 R20 K79 ["Size_600"]
      297 CALL                             R17 2 1
      298 SETTABLEKS                       R17 R16 K75 ["MinSize"]
      300 CALL                             R14 2 1
      301 SETTABLEKS                       R14 R13 K22 ["SizeConstraint"]
      303 CALL                             R10 3 -1
      304 RETURN                           R10 -1

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
       22 GETTABLEKS                       R5 R0 K11 ["Util"]
       24 GETTABLEKS                       R4 R5 K12 ["Constants"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R1 K13 ["Foundation"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R8 R0 K7 ["Components"]
       36 GETTABLEKS                       R7 R8 K11 ["Util"]
       38 GETTABLEKS                       R6 R7 K14 ["LeftArrowSpacer"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R0 K15 ["PropertyTypes"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R10 R0 K7 ["Components"]
       50 GETTABLEKS                       R9 R10 K8 ["PropertyEntries"]
       52 GETTABLEKS                       R8 R9 K9 ["PropertyView"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R1 K16 ["React"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R1 K17 ["ReactUtils"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K18 ["RpcTypes"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R1 K19 ["Signal"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R1 K20 ["Signals"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R14 R1 K21 ["SignalsReact"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K6 [require]
       87 GETTABLEKS                       R17 R0 K7 ["Components"]
       89 GETTABLEKS                       R16 R17 K22 ["Contexts"]
       91 GETTABLEKS                       R15 R16 K23 ["ThemeContext"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K6 [require]
       96 GETTABLEKS                       R19 R0 K7 ["Components"]
       98 GETTABLEKS                       R18 R19 K8 ["PropertyEntries"]
      100 GETTABLEKS                       R17 R18 K9 ["PropertyView"]
      102 GETTABLEKS                       R16 R17 K24 ["getPropertyView"]
      104 CALL                             R15 1 1
      105 GETTABLEKS                       R17 R4 K25 ["Enums"]
      107 GETTABLEKS                       R16 R17 K26 ["StateLayerAffordance"]
      109 GETTABLEKS                       R17 R4 K27 ["Text"]
      111 GETTABLEKS                       R18 R4 K28 ["View"]
      113 GETTABLEKS                       R20 R4 K29 ["Hooks"]
      115 GETTABLEKS                       R19 R20 K30 ["useTokens"]
      117 GETTABLEKS                       R20 R8 K31 ["createElement"]
      119 DUPCLOSURE                       R21 K32 [PROTO_0]
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R2
      122 DUPCLOSURE                       R22 K33 [PROTO_7]
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R19
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R20
      134 CAPTURE                          VAL R18
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R17
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R7
      140 RETURN                           R22 1
