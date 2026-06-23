PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["aggregatePropertyInfo"]
        3 GETTABLEKS                       R3 R3 K1 ["type"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 1
        7 JUMPIFNOTEQ                      R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getProperty"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["id"]
        7 GETTABLEKS                       R1 R1 K2 ["name"]
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getProperty"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["aggregatePropertyInfo"]
        7 GETTABLEKS                       R1 R1 K2 ["readonly"]
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getProperty"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R2 K1 ["aggregatePropertyInfo"]
        8 GETTABLEKS                       R4 R4 K2 ["type"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 2
       12 JUMPIFNOTEQ                      R3 R4 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["beginEditingPropertyAsync"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["getProperty"]
        6 CALL                             R2 0 1
        7 GETTABLEKS                       R2 R2 K2 ["id"]
        9 MOVE                             R3 R0
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setPropertyPart"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["getProperty"]
        6 CALL                             R3 0 1
        7 GETTABLEKS                       R3 R3 K2 ["id"]
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 CALL                             R2 3 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["finishEditingProperty"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["getProperty"]
        6 CALL                             R2 0 1
        7 GETTABLEKS                       R2 R2 K2 ["id"]
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getProperty"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["id"]
        6 GETTABLEKS                       R1 R1 K2 ["metaType"]
        8 JUMPIFNOTEQKS                    R1 K3 ["Attribute"] ; [+18]
       10 GETIMPORT                        R1 K5 [print]
       12 LOADK                            R3 K6 ["attribute %* right click!"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K0 ["getProperty"]
       16 CALL                             R5 0 1
       17 GETTABLEKS                       R5 R5 K1 ["id"]
       19 GETTABLEKS                       R5 R5 K7 ["name"]
       21 NAMECALL                         R3 R3 K8 ["format"]
       23 CALL                             R3 2 1
       24 MOVE                             R2 R3
       25 CALL                             R1 1 0
       26 RETURN                           R0 0
       27 GETIMPORT                        R1 K5 [print]
       29 LOADK                            R3 K9 ["property %* right click!"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K0 ["getProperty"]
       33 CALL                             R5 0 1
       34 GETTABLEKS                       R5 R5 K1 ["id"]
       36 GETTABLEKS                       R5 R5 K7 ["name"]
       38 NAMECALL                         R3 R3 K8 ["format"]
       40 CALL                             R3 2 1
       41 MOVE                             R2 R3
       42 CALL                             R1 1 0
       43 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K3 ["IndentWidth"]
        6 SUB                              R4 R0 R5
        7 FASTCALL2K                       MATH_MAX R4 K4 ; [+4]
        9 LOADK                            R5 K4 [0]
       10 GETIMPORT                        R3 K7 [math.max]
       12 CALL                             R3 2 1
       13 LOADN                            R4 1
       14 LOADN                            R5 0
       15 CALL                             R1 4 -1
       16 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getProperty"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["aggregatePropertyInfo"]
        7 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["useContext"]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K2 ["Context"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K3 ["useRef"]
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K4 ["new"]
       19 CALL                             R5 0 -1
       20 CALL                             R4 -1 1
       21 GETUPVAL                         R5 5
       22 GETTABLEKS                       R5 R5 K5 ["useSignalBinding"]
       24 GETUPVAL                         R6 6
       25 GETTABLEKS                       R6 R6 K6 ["createComputed"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R0
       29 CALL                             R6 1 -1
       30 CALL                             R5 -1 1
       31 GETUPVAL                         R6 5
       32 GETTABLEKS                       R6 R6 K7 ["useSignalState"]
       34 GETUPVAL                         R7 6
       35 GETTABLEKS                       R7 R7 K6 ["createComputed"]
       37 NEWCLOSURE                       R8 P1
       38 CAPTURE                          VAL R0
       39 CALL                             R7 1 -1
       40 CALL                             R6 -1 1
       41 GETUPVAL                         R7 5
       42 GETTABLEKS                       R7 R7 K7 ["useSignalState"]
       44 GETUPVAL                         R8 6
       45 GETTABLEKS                       R8 R8 K6 ["createComputed"]
       47 NEWCLOSURE                       R9 P2
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          UPVAL U8
       51 CALL                             R8 1 -1
       52 CALL                             R7 -1 1
       53 GETUPVAL                         R8 2
       54 GETTABLEKS                       R8 R8 K8 ["useCallback"]
       56 NEWCLOSURE                       R9 P3
       57 CAPTURE                          UPVAL U9
       58 CAPTURE                          VAL R4
       59 NEWTABLE                         R10 0 0
       61 CALL                             R8 2 1
       62 GETTABLEKS                       R9 R0 K9 ["session"]
       64 GETUPVAL                         R10 2
       65 GETTABLEKS                       R10 R10 K8 ["useCallback"]
       67 NEWCLOSURE                       R11 P4
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R0
       70 NEWTABLE                         R12 0 2
       72 MOVE                             R13 R9
       73 GETTABLEKS                       R14 R0 K10 ["getProperty"]
       75 SETLIST                          R12 R13 2 [1]
       77 CALL                             R10 2 1
       78 GETUPVAL                         R11 2
       79 GETTABLEKS                       R11 R11 K8 ["useCallback"]
       81 NEWCLOSURE                       R12 P5
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R0
       84 NEWTABLE                         R13 0 2
       86 MOVE                             R14 R9
       87 GETTABLEKS                       R15 R0 K10 ["getProperty"]
       89 SETLIST                          R13 R14 2 [1]
       91 CALL                             R11 2 1
       92 GETUPVAL                         R12 2
       93 GETTABLEKS                       R12 R12 K8 ["useCallback"]
       95 NEWCLOSURE                       R13 P6
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R0
       98 NEWTABLE                         R14 0 2
      100 MOVE                             R15 R9
      101 GETTABLEKS                       R16 R0 K10 ["getProperty"]
      103 SETLIST                          R14 R15 2 [1]
      105 CALL                             R12 2 1
      106 GETUPVAL                         R13 2
      107 GETTABLEKS                       R13 R13 K8 ["useCallback"]
      109 NEWCLOSURE                       R14 P7
      110 CAPTURE                          VAL R0
      111 NEWTABLE                         R15 0 1
      113 GETTABLEKS                       R16 R0 K10 ["getProperty"]
      115 SETLIST                          R15 R16 1 [1]
      117 CALL                             R13 2 1
      118 GETTABLEKS                       R14 R2 K11 ["PropertyRow"]
      120 GETTABLEKS                       R14 R14 K12 ["Label"]
      122 GETUPVAL                         R15 10
      123 GETUPVAL                         R16 11
      124 DUPTABLE                         R17 K18 [{"tag", "onSecondaryActivated", "stateLayer", "LayoutOrder", "Visible"}]
      125 LOADK                            R18 K19 ["auto-y size-full-0 row padding-y-xxsmall"]
      126 SETTABLEKS                       R18 R17 K13 ["tag"]
      128 SETTABLEKS                       R13 R17 K14 ["onSecondaryActivated"]
      130 DUPTABLE                         R18 K21 [{"affordance"}]
      131 GETUPVAL                         R19 12
      132 GETTABLEKS                       R19 R19 K22 ["None"]
      134 SETTABLEKS                       R19 R18 K20 ["affordance"]
      136 SETTABLEKS                       R18 R17 K15 ["stateLayer"]
      138 GETTABLEKS                       R18 R0 K16 ["LayoutOrder"]
      140 SETTABLEKS                       R18 R17 K16 ["LayoutOrder"]
      142 GETTABLEKS                       R18 R0 K17 ["Visible"]
      144 SETTABLEKS                       R18 R17 K17 ["Visible"]
      146 DUPTABLE                         R18 K26 [{"PropertyName", "PropertyValue", "SizeConstraint"}]
      147 GETUPVAL                         R19 10
      148 GETUPVAL                         R20 11
      149 DUPTABLE                         R21 K29 [{"tag", "stateLayer", "onStateChanged", "LayoutOrder", "Size"}]
      150 LOADK                            R22 K30 ["auto-x"]
      151 SETTABLEKS                       R22 R21 K13 ["tag"]
      153 DUPTABLE                         R22 K21 [{"affordance"}]
      154 GETUPVAL                         R23 9
      155 GETTABLEKS                       R23 R23 K31 ["Enums"]
      157 GETTABLEKS                       R23 R23 K32 ["StateLayerAffordance"]
      159 GETTABLEKS                       R23 R23 K22 ["None"]
      161 SETTABLEKS                       R23 R22 K20 ["affordance"]
      163 SETTABLEKS                       R22 R21 K15 ["stateLayer"]
      165 SETTABLEKS                       R8 R21 K27 ["onStateChanged"]
      167 MOVE                             R22 R1
      168 CALL                             R22 0 1
      169 SETTABLEKS                       R22 R21 K16 ["LayoutOrder"]
      171 GETIMPORT                        R22 K34 [UDim2.new]
      173 LOADN                            R23 0
      174 LOADN                            R24 0
      175 LOADN                            R25 0
      176 GETTABLEKS                       R26 R2 K11 ["PropertyRow"]
      178 GETTABLEKS                       R26 R26 K35 ["MinHeight"]
      180 CALL                             R22 4 1
      181 SETTABLEKS                       R22 R21 K28 ["Size"]
      183 DUPTABLE                         R22 K37 [{"Text"}]
      184 GETUPVAL                         R23 10
      185 GETUPVAL                         R24 13
      186 DUPTABLE                         R25 K40 [{"tag", "LayoutOrder", "Text", "Position", "Size", "textStyle"}]
      187 LOADK                            R26 K41 ["clip text-no-wrap text-align-x-left text-align-y-center text-body-small"]
      188 SETTABLEKS                       R26 R25 K13 ["tag"]
      190 MOVE                             R26 R1
      191 CALL                             R26 0 1
      192 SETTABLEKS                       R26 R25 K16 ["LayoutOrder"]
      194 SETTABLEKS                       R5 R25 K36 ["Text"]
      196 GETIMPORT                        R26 K43 [UDim2.fromOffset]
      198 GETTABLEKS                       R27 R2 K11 ["PropertyRow"]
      200 GETTABLEKS                       R27 R27 K12 ["Label"]
      202 GETTABLEKS                       R27 R27 K44 ["IndentWidth"]
      204 LOADN                            R28 0
      205 CALL                             R26 2 1
      206 SETTABLEKS                       R26 R25 K38 ["Position"]
      208 GETTABLEKS                       R26 R0 K45 ["labelWidthBinding"]
      210 NEWCLOSURE                       R28 P8
      211 CAPTURE                          VAL R14
      212 NAMECALL                         R26 R26 K46 ["map"]
      214 CALL                             R26 2 1
      215 SETTABLEKS                       R26 R25 K28 ["Size"]
      217 DUPTABLE                         R26 K49 [{"Color3", "Transparency"}]
      218 JUMPIFNOT                        R7 ; [+3]
      219 GETTABLEKS                       R27 R14 K50 ["Color"]
      221 JUMP                             ; [+4]
      222 GETTABLEKS                       R27 R14 K51 ["Unimplemented"]
      224 GETTABLEKS                       R27 R27 K50 ["Color"]
      226 SETTABLEKS                       R27 R26 K47 ["Color3"]
      228 JUMPIFNOT                        R6 ; [+5]
      229 GETTABLEKS                       R27 R14 K52 ["ReadOnly"]
      231 GETTABLEKS                       R27 R27 K48 ["Transparency"]
      233 JUMP                             ; [+2]
      234 GETTABLEKS                       R27 R14 K48 ["Transparency"]
      236 SETTABLEKS                       R27 R26 K48 ["Transparency"]
      238 SETTABLEKS                       R26 R25 K39 ["textStyle"]
      240 DUPTABLE                         R26 K54 [{"CoolFade"}]
      241 GETUPVAL                         R27 10
      242 GETUPVAL                         R28 11
      243 DUPTABLE                         R29 K56 [{"tag", "Size", "backgroundStyle"}]
      244 LOADK                            R30 K57 ["anchor-center-right position-center-right"]
      245 SETTABLEKS                       R30 R29 K13 ["tag"]
      247 GETIMPORT                        R30 K34 [UDim2.new]
      249 LOADN                            R31 0
      250 GETTABLEKS                       R32 R14 K58 ["Fade"]
      252 GETTABLEKS                       R32 R32 K59 ["Width"]
      254 LOADN                            R33 1
      255 LOADN                            R34 0
      256 CALL                             R30 4 1
      257 SETTABLEKS                       R30 R29 K28 ["Size"]
      259 DUPTABLE                         R30 K49 [{"Color3", "Transparency"}]
      260 GETTABLEKS                       R32 R14 K58 ["Fade"]
      262 GETTABLEKS                       R32 R32 K50 ["Color"]
      264 GETTABLEKS                       R33 R3 K60 ["theme"]
      266 GETTABLE                         R31 R32 R33
      267 SETTABLEKS                       R31 R30 K47 ["Color3"]
      269 LOADN                            R31 0
      270 SETTABLEKS                       R31 R30 K48 ["Transparency"]
      272 SETTABLEKS                       R30 R29 K55 ["backgroundStyle"]
      274 DUPTABLE                         R30 K62 [{"UIGradient"}]
      275 GETUPVAL                         R31 10
      276 LOADK                            R32 K61 ["UIGradient"]
      277 DUPTABLE                         R33 K63 [{"Transparency"}]
      278 GETIMPORT                        R34 K65 [NumberSequence.new]
      280 LOADN                            R35 1
      281 LOADN                            R36 0
      282 CALL                             R34 2 1
      283 SETTABLEKS                       R34 R33 K48 ["Transparency"]
      285 CALL                             R31 2 1
      286 SETTABLEKS                       R31 R30 K61 ["UIGradient"]
      288 CALL                             R27 3 1
      289 SETTABLEKS                       R27 R26 K53 ["CoolFade"]
      291 CALL                             R23 3 1
      292 SETTABLEKS                       R23 R22 K36 ["Text"]
      294 CALL                             R19 3 1
      295 SETTABLEKS                       R19 R18 K23 ["PropertyName"]
      297 GETUPVAL                         R19 10
      298 GETUPVAL                         R20 14
      299 DUPTABLE                         R21 K73 [{"getInfo", "beginEditingAsync", "setPart", "finishEditing", "specializedGuestUtils", "labelPressedSignal", "labelWidthBinding", "LayoutOrder", "ZIndex"}]
      300 GETUPVAL                         R22 6
      301 GETTABLEKS                       R22 R22 K6 ["createComputed"]
      303 NEWCLOSURE                       R23 P9
      304 CAPTURE                          VAL R0
      305 CALL                             R22 1 1
      306 SETTABLEKS                       R22 R21 K66 ["getInfo"]
      308 SETTABLEKS                       R10 R21 K67 ["beginEditingAsync"]
      310 SETTABLEKS                       R11 R21 K68 ["setPart"]
      312 SETTABLEKS                       R12 R21 K69 ["finishEditing"]
      314 GETTABLEKS                       R22 R0 K9 ["session"]
      316 GETTABLEKS                       R22 R22 K74 ["specializedUtils"]
      318 SETTABLEKS                       R22 R21 K70 ["specializedGuestUtils"]
      320 GETTABLEKS                       R22 R4 K75 ["current"]
      322 SETTABLEKS                       R22 R21 K71 ["labelPressedSignal"]
      324 GETTABLEKS                       R22 R0 K45 ["labelWidthBinding"]
      326 SETTABLEKS                       R22 R21 K45 ["labelWidthBinding"]
      328 MOVE                             R22 R1
      329 CALL                             R22 0 1
      330 SETTABLEKS                       R22 R21 K16 ["LayoutOrder"]
      332 LOADN                            R22 2
      333 SETTABLEKS                       R22 R21 K72 ["ZIndex"]
      335 CALL                             R19 2 1
      336 SETTABLEKS                       R19 R18 K24 ["PropertyValue"]
      338 GETUPVAL                         R19 10
      339 LOADK                            R20 K76 ["UISizeConstraint"]
      340 DUPTABLE                         R21 K78 [{"MinSize"}]
      341 GETIMPORT                        R22 K80 [Vector2.new]
      343 LOADN                            R23 0
      344 GETTABLEKS                       R24 R2 K11 ["PropertyRow"]
      346 GETTABLEKS                       R24 R24 K35 ["MinHeight"]
      348 CALL                             R22 2 1
      349 SETTABLEKS                       R22 R21 K77 ["MinSize"]
      351 CALL                             R19 2 1
      352 SETTABLEKS                       R19 R18 K25 ["SizeConstraint"]
      354 CALL                             R15 3 -1
      355 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["PropertyEntries"]
       15 GETTABLEKS                       R3 R3 K9 ["PropertyView"]
       17 GETTABLEKS                       R3 R3 K10 ["BasicPropertyView"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K11 ["Foundation"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K12 ["PropertyTypes"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K7 ["Components"]
       34 GETTABLEKS                       R6 R6 K8 ["PropertyEntries"]
       36 GETTABLEKS                       R6 R6 K9 ["PropertyView"]
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
       71 GETTABLEKS                       R13 R0 K7 ["Components"]
       73 GETTABLEKS                       R13 R13 K19 ["Contexts"]
       75 GETTABLEKS                       R13 R13 K20 ["ThemeContext"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K6 [require]
       80 GETTABLEKS                       R14 R0 K7 ["Components"]
       82 GETTABLEKS                       R14 R14 K8 ["PropertyEntries"]
       84 GETTABLEKS                       R14 R14 K9 ["PropertyView"]
       86 GETTABLEKS                       R14 R14 K21 ["getPropertyView"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R0 K22 ["Hooks"]
       93 GETTABLEKS                       R15 R15 K23 ["useVisualValues"]
       95 CALL                             R14 1 1
       96 GETTABLEKS                       R15 R3 K24 ["Enums"]
       98 GETTABLEKS                       R15 R15 K25 ["StateLayerAffordance"]
      100 GETTABLEKS                       R16 R3 K26 ["Text"]
      102 GETTABLEKS                       R17 R3 K27 ["View"]
      104 GETTABLEKS                       R18 R6 K28 ["createElement"]
      106 DUPCLOSURE                       R19 K29 [PROTO_0]
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R2
      109 DUPCLOSURE                       R20 K30 [PROTO_11]
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
