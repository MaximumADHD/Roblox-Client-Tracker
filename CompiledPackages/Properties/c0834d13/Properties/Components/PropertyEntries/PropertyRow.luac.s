PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["aggregatePropertyInfo"]
        3 GETTABLEKS                       R3 R4 K1 ["type"]
        5 GETTABLEKS                       R4 R0 K2 ["id"]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 1
        9 JUMPIFNOTEQ                      R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["property"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createNextOrder"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R4 R5 K2 ["useContext"]
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R5 R6 K3 ["Context"]
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R6 R1 K4 ["aggregatePropertyInfo"]
       17 GETTABLEKS                       R5 R6 K5 ["readonly"]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R6 R7 K6 ["useRef"]
       22 GETUPVAL                         R8 4
       23 GETTABLEKS                       R7 R8 K7 ["new"]
       25 CALL                             R7 0 -1
       26 CALL                             R6 -1 1
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R7 R8 K8 ["useCallback"]
       30 NEWCLOSURE                       R8 P0
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          VAL R6
       33 NEWTABLE                         R9 0 0
       35 CALL                             R7 2 1
       36 GETUPVAL                         R8 6
       37 GETUPVAL                         R9 7
       38 DUPTABLE                         R10 K13 [{"tag", "LayoutOrder", "onSecondaryActivated", "stateLayer"}]
       39 LOADK                            R11 K14 ["auto-y size-full-0 row padding-left-medium padding-y-xxsmall"]
       40 SETTABLEKS                       R11 R10 K9 ["tag"]
       42 GETTABLEKS                       R11 R0 K10 ["LayoutOrder"]
       44 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
       46 GETTABLEKS                       R11 R0 K11 ["onSecondaryActivated"]
       48 SETTABLEKS                       R11 R10 K11 ["onSecondaryActivated"]
       50 DUPTABLE                         R11 K16 [{"affordance"}]
       51 GETUPVAL                         R13 8
       52 GETTABLEKS                       R12 R13 K17 ["None"]
       54 SETTABLEKS                       R12 R11 K15 ["affordance"]
       56 SETTABLEKS                       R11 R10 K12 ["stateLayer"]
       58 DUPTABLE                         R11 K21 [{"PropertyName", "PropertyValue", "SizeConstraint"}]
       59 GETUPVAL                         R12 6
       60 GETUPVAL                         R13 7
       61 DUPTABLE                         R14 K23 [{"tag", "LayoutOrder", "stateLayer", "onStateChanged"}]
       62 LOADK                            R15 K24 ["auto-x row size-0-600"]
       63 SETTABLEKS                       R15 R14 K9 ["tag"]
       65 MOVE                             R15 R2
       66 CALL                             R15 0 1
       67 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
       69 DUPTABLE                         R15 K16 [{"affordance"}]
       70 GETUPVAL                         R19 5
       71 GETTABLEKS                       R18 R19 K25 ["Enums"]
       73 GETTABLEKS                       R17 R18 K26 ["StateLayerAffordance"]
       75 GETTABLEKS                       R16 R17 K17 ["None"]
       77 SETTABLEKS                       R16 R15 K15 ["affordance"]
       79 SETTABLEKS                       R15 R14 K12 ["stateLayer"]
       81 SETTABLEKS                       R7 R14 K22 ["onStateChanged"]
       83 DUPTABLE                         R15 K29 [{"LeftSpacer", "Text"}]
       84 GETUPVAL                         R16 6
       85 GETUPVAL                         R17 9
       86 DUPTABLE                         R18 K31 [{"LayoutOrder", "addTrailingGap"}]
       87 MOVE                             R19 R2
       88 CALL                             R19 0 1
       89 SETTABLEKS                       R19 R18 K10 ["LayoutOrder"]
       91 LOADB                            R19 1
       92 SETTABLEKS                       R19 R18 K30 ["addTrailingGap"]
       94 CALL                             R16 2 1
       95 SETTABLEKS                       R16 R15 K27 ["LeftSpacer"]
       97 GETUPVAL                         R16 6
       98 GETUPVAL                         R17 10
       99 DUPTABLE                         R18 K34 [{"tag", "LayoutOrder", "Text", "Size", "textStyle"}]
      100 LOADK                            R19 K35 ["clip text-no-wrap text-align-x-left text-align-y-center text-body-small"]
      101 SETTABLEKS                       R19 R18 K9 ["tag"]
      103 MOVE                             R19 R2
      104 CALL                             R19 0 1
      105 SETTABLEKS                       R19 R18 K10 ["LayoutOrder"]
      107 GETTABLEKS                       R20 R1 K36 ["id"]
      109 GETTABLEKS                       R19 R20 K37 ["name"]
      111 SETTABLEKS                       R19 R18 K28 ["Text"]
      113 GETTABLEKS                       R19 R0 K38 ["labelWidthBinding"]
      115 NEWCLOSURE                       R21 P1
      116 CAPTURE                          VAL R3
      117 NAMECALL                         R19 R19 K39 ["map"]
      119 CALL                             R19 2 1
      120 SETTABLEKS                       R19 R18 K32 ["Size"]
      122 DUPTABLE                         R19 K42 [{"Color3", "Transparency"}]
      123 GETUPVAL                         R22 11
      124 GETTABLEKS                       R24 R1 K4 ["aggregatePropertyInfo"]
      126 GETTABLEKS                       R23 R24 K43 ["type"]
      128 GETTABLEKS                       R24 R1 K36 ["id"]
      130 CALL                             R22 2 1
      131 GETUPVAL                         R23 12
      132 JUMPIFNOTEQ                      R22 R23 ; [+2]
      134 LOADB                            R21 0 +1
      135 LOADB                            R21 1
      136 JUMPIFNOT                        R21 ; [+9]
      137 GETTABLEKS                       R23 R3 K44 ["Color"]
      139 GETTABLEKS                       R22 R23 K45 ["Content"]
      141 GETTABLEKS                       R21 R22 K46 ["Default"]
      143 GETTABLEKS                       R20 R21 K40 ["Color3"]
      145 JUMP                             ; [+3]
      146 GETUPVAL                         R21 13
      147 GETTABLEKS                       R20 R21 K47 ["unimplementedLabelColor"]
      149 SETTABLEKS                       R20 R19 K40 ["Color3"]
      151 JUMPIFNOT                        R5 ; [+4]
      152 GETUPVAL                         R21 13
      153 GETTABLEKS                       R20 R21 K48 ["readOnlyLabelTransparency"]
      155 JUMP                             ; [+8]
      156 GETTABLEKS                       R23 R3 K44 ["Color"]
      158 GETTABLEKS                       R22 R23 K45 ["Content"]
      160 GETTABLEKS                       R21 R22 K46 ["Default"]
      162 GETTABLEKS                       R20 R21 K41 ["Transparency"]
      164 SETTABLEKS                       R20 R19 K41 ["Transparency"]
      166 SETTABLEKS                       R19 R18 K33 ["textStyle"]
      168 DUPTABLE                         R19 K50 [{"CoolFade"}]
      169 GETUPVAL                         R20 6
      170 GETUPVAL                         R21 7
      171 DUPTABLE                         R22 K52 [{"tag", "Size", "backgroundStyle"}]
      172 LOADK                            R23 K53 ["anchor-center-right position-center-right"]
      173 SETTABLEKS                       R23 R22 K9 ["tag"]
      175 GETIMPORT                        R23 K55 [UDim2.new]
      177 LOADN                            R24 0
      178 GETTABLEKS                       R26 R3 K56 ["Padding"]
      180 GETTABLEKS                       R25 R26 K57 ["Medium"]
      182 LOADN                            R26 1
      183 LOADN                            R27 0
      184 CALL                             R23 4 1
      185 SETTABLEKS                       R23 R22 K32 ["Size"]
      187 DUPTABLE                         R23 K42 [{"Color3", "Transparency"}]
      188 GETTABLEKS                       R25 R4 K58 ["theme"]
      190 JUMPIFNOTEQKS                    R25 K59 ["Light"] ; [+6]
      192 GETIMPORT                        R24 K61 [Color3.fromHex]
      194 LOADK                            R25 K62 ["#FFFFFF"]
      195 CALL                             R24 1 1
      196 JUMP                             ; [+8]
      197 GETTABLEKS                       R27 R3 K44 ["Color"]
      199 GETTABLEKS                       R26 R27 K63 ["Surface"]
      201 GETTABLEKS                       R25 R26 K64 ["Surface_100"]
      203 GETTABLEKS                       R24 R25 K40 ["Color3"]
      205 SETTABLEKS                       R24 R23 K40 ["Color3"]
      207 LOADN                            R24 0
      208 SETTABLEKS                       R24 R23 K41 ["Transparency"]
      210 SETTABLEKS                       R23 R22 K51 ["backgroundStyle"]
      212 DUPTABLE                         R23 K66 [{"UIGradient"}]
      213 GETUPVAL                         R24 6
      214 LOADK                            R25 K65 ["UIGradient"]
      215 DUPTABLE                         R26 K67 [{"Transparency"}]
      216 GETIMPORT                        R27 K69 [NumberSequence.new]
      218 LOADN                            R28 1
      219 LOADN                            R29 0
      220 CALL                             R27 2 1
      221 SETTABLEKS                       R27 R26 K41 ["Transparency"]
      223 CALL                             R24 2 1
      224 SETTABLEKS                       R24 R23 K65 ["UIGradient"]
      226 CALL                             R20 3 1
      227 SETTABLEKS                       R20 R19 K49 ["CoolFade"]
      229 CALL                             R16 3 1
      230 SETTABLEKS                       R16 R15 K28 ["Text"]
      232 CALL                             R12 3 1
      233 SETTABLEKS                       R12 R11 K18 ["PropertyName"]
      235 GETUPVAL                         R12 6
      236 GETUPVAL                         R13 14
      237 DUPTABLE                         R14 K75 [{"layoutOrder", "zIndex", "record", "session", "labelPressedSignal", "labelWidthBinding"}]
      238 MOVE                             R15 R2
      239 CALL                             R15 0 1
      240 SETTABLEKS                       R15 R14 K70 ["layoutOrder"]
      242 LOADN                            R15 2
      243 SETTABLEKS                       R15 R14 K71 ["zIndex"]
      245 SETTABLEKS                       R1 R14 K72 ["record"]
      247 GETTABLEKS                       R15 R0 K73 ["session"]
      249 SETTABLEKS                       R15 R14 K73 ["session"]
      251 GETTABLEKS                       R15 R6 K76 ["current"]
      253 SETTABLEKS                       R15 R14 K74 ["labelPressedSignal"]
      255 GETTABLEKS                       R15 R0 K38 ["labelWidthBinding"]
      257 SETTABLEKS                       R15 R14 K38 ["labelWidthBinding"]
      259 CALL                             R12 2 1
      260 SETTABLEKS                       R12 R11 K19 ["PropertyValue"]
      262 GETUPVAL                         R12 6
      263 LOADK                            R13 K77 ["UISizeConstraint"]
      264 DUPTABLE                         R14 K79 [{"MinSize"}]
      265 GETIMPORT                        R15 K81 [Vector2.new]
      267 LOADN                            R16 0
      268 GETTABLEKS                       R18 R3 K32 ["Size"]
      270 GETTABLEKS                       R17 R18 K82 ["Size_600"]
      272 CALL                             R15 2 1
      273 SETTABLEKS                       R15 R14 K78 ["MinSize"]
      275 CALL                             R12 2 1
      276 SETTABLEKS                       R12 R11 K20 ["SizeConstraint"]
      278 CALL                             R8 3 -1
      279 RETURN                           R8 -1

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
       77 GETTABLEKS                       R15 R0 K7 ["Components"]
       79 GETTABLEKS                       R14 R15 K20 ["Contexts"]
       81 GETTABLEKS                       R13 R14 K21 ["ThemeContext"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R17 R0 K7 ["Components"]
       88 GETTABLEKS                       R16 R17 K8 ["PropertyEntries"]
       90 GETTABLEKS                       R15 R16 K9 ["PropertyView"]
       92 GETTABLEKS                       R14 R15 K22 ["getPropertyView"]
       94 CALL                             R13 1 1
       95 GETTABLEKS                       R15 R4 K23 ["Enums"]
       97 GETTABLEKS                       R14 R15 K24 ["StateLayerAffordance"]
       99 GETTABLEKS                       R15 R4 K25 ["Text"]
      101 GETTABLEKS                       R16 R4 K26 ["View"]
      103 GETTABLEKS                       R18 R4 K27 ["Hooks"]
      105 GETTABLEKS                       R17 R18 K28 ["useTokens"]
      107 GETTABLEKS                       R18 R8 K29 ["createElement"]
      109 DUPCLOSURE                       R19 K30 [PROTO_0]
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R2
      112 DUPCLOSURE                       R20 K31 [PROTO_3]
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R17
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R18
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R7
      128 RETURN                           R20 1
