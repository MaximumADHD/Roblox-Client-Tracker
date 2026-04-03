PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onActivated"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["onActivated"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K13 [{"id", "text", "key", "icon", "isActive", "onActivated", "LayoutOrder", "fillBehavior", "size", "isDisabled", "testId", "ref"}]
        5 GETTABLEKS                       R5 R0 K1 ["id"]
        7 SETTABLEKS                       R5 R4 K1 ["id"]
        9 GETTABLEKS                       R5 R0 K2 ["text"]
       11 SETTABLEKS                       R5 R4 K2 ["text"]
       13 GETTABLEKS                       R6 R0 K1 ["id"]
       15 FASTCALL1                        TOSTRING R6 ; [+2]
       16 GETIMPORT                        R5 K15 [tostring]
       18 CALL                             R5 1 1
       19 SETTABLEKS                       R5 R4 K3 ["key"]
       21 GETTABLEKS                       R5 R0 K4 ["icon"]
       23 SETTABLEKS                       R5 R4 K4 ["icon"]
       25 GETTABLEKS                       R6 R0 K1 ["id"]
       27 GETUPVAL                         R7 2
       28 JUMPIFEQ                         R6 R7 ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 SETTABLEKS                       R5 R4 K5 ["isActive"]
       34 GETUPVAL                         R5 3
       35 SETTABLEKS                       R5 R4 K6 ["onActivated"]
       37 SETTABLEKS                       R1 R4 K7 ["LayoutOrder"]
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R5 R6 K8 ["fillBehavior"]
       42 SETTABLEKS                       R5 R4 K8 ["fillBehavior"]
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R5 R6 K9 ["size"]
       47 SETTABLEKS                       R5 R4 K9 ["size"]
       49 GETTABLEKS                       R5 R0 K10 ["isDisabled"]
       51 SETTABLEKS                       R5 R4 K10 ["isDisabled"]
       53 LOADK                            R6 K16 ["%*--item-%*"]
       54 GETUPVAL                         R9 4
       55 GETTABLEKS                       R8 R9 K11 ["testId"]
       57 GETTABLEKS                       R9 R0 K1 ["id"]
       59 NAMECALL                         R6 R6 K17 ["format"]
       61 CALL                             R6 3 1
       62 MOVE                             R5 R6
       63 SETTABLEKS                       R5 R4 K11 ["testId"]
       65 GETUPVAL                         R6 5
       66 GETTABLEKS                       R7 R0 K1 ["id"]
       68 GETTABLE                         R5 R6 R7
       69 SETTABLEKS                       R5 R4 K12 ["ref"]
       71 CALL                             R2 2 -1
       72 RETURN                           R2 -1

PROTO_3:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K3 ["Stroke"]
        6 GETTABLEKS                       R3 R4 K4 ["Thick"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 GETIMPORT                        R3 K2 [UDim2.fromOffset]
        4 MOVE                             R4 R1
        5 GETUPVAL                         R8 0
        6 GETTABLEKS                       R7 R8 K3 ["Stroke"]
        8 GETTABLEKS                       R6 R7 K4 ["Thick"]
       10 SUB                              R5 R2 R6
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETUPVAL                         R5 2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R4 R5 K0 ["useState"]
        9 GETTABLEKS                       R5 R3 K1 ["defaultActiveTabId"]
       11 JUMPIF                           R5 ; [+11]
       12 GETUPVAL                         R6 4
       13 GETTABLEKS                       R5 R6 K2 ["get"]
       15 MOVE                             R6 R3
       16 NEWTABLE                         R7 0 2
       18 LOADN                            R8 1
       19 LOADK                            R9 K3 ["id"]
       20 SETLIST                          R7 R8 2 [1]
       22 CALL                             R5 2 1
       23 CALL                             R4 1 2
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R5
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R8 R3 K5 ["fillBehavior"]
       33 GETUPVAL                         R10 5
       34 GETTABLEKS                       R9 R10 K6 ["Fill"]
       36 JUMPIFEQ                         R8 R9 ; [+2]
       38 LOADB                            R7 0 +1
       39 LOADB                            R7 1
       40 GETTABLEKS                       R9 R3 K7 ["activeTabId"]
       42 OR                               R8 R9 R4
       43 GETUPVAL                         R10 4
       44 GETTABLEKS                       R9 R10 K8 ["find"]
       46 GETTABLEKS                       R10 R3 K9 ["tabs"]
       48 NEWCLOSURE                       R11 P1
       49 CAPTURE                          VAL R8
       50 CALL                             R9 2 1
       51 GETUPVAL                         R11 3
       52 GETTABLEKS                       R10 R11 K10 ["useRef"]
       54 LOADNIL                          R11
       55 CALL                             R10 1 1
       56 GETUPVAL                         R11 6
       57 MOVE                             R12 R8
       58 OR                               R13 R1 R10
       59 GETTABLEKS                       R14 R3 K11 ["size"]
       61 GETTABLEKS                       R15 R3 K5 ["fillBehavior"]
       63 CALL                             R11 4 1
       64 GETTABLEKS                       R12 R11 K12 ["highlightPosition"]
       66 GETTABLEKS                       R13 R11 K13 ["highlightWidth"]
       68 GETTABLEKS                       R14 R11 K14 ["activeItemHeight"]
       70 GETTABLEKS                       R15 R11 K15 ["itemRefs"]
       72 GETUPVAL                         R17 3
       73 GETTABLEKS                       R16 R17 K16 ["createElement"]
       75 GETUPVAL                         R17 7
       76 DUPTABLE                         R18 K18 [{"tag"}]
       77 LOADK                            R19 K19 ["size-full-0 auto-y clip"]
       78 SETTABLEKS                       R19 R18 K17 ["tag"]
       80 DUPTABLE                         R19 K22 [{"Tabs", "AnimatedBorder"}]
       81 GETUPVAL                         R21 3
       82 GETTABLEKS                       R20 R21 K16 ["createElement"]
       84 GETUPVAL                         R21 7
       85 GETUPVAL                         R22 8
       86 MOVE                             R23 R3
       87 DUPTABLE                         R24 K24 [{"ref", "tag"}]
       88 OR                               R25 R1 R10
       89 SETTABLEKS                       R25 R24 K23 ["ref"]
       91 LOADK                            R25 K25 ["auto-y size-full-0 col"]
       92 SETTABLEKS                       R25 R24 K17 ["tag"]
       94 CALL                             R22 2 1
       95 DUPTABLE                         R23 K28 [{"Wrapper", "Content"}]
       96 GETUPVAL                         R25 3
       97 GETTABLEKS                       R24 R25 K16 ["createElement"]
       99 GETUPVAL                         R25 7
      100 DUPTABLE                         R26 K31 [{"LayoutOrder", "tag", "testId"}]
      101 LOADN                            R27 1
      102 SETTABLEKS                       R27 R26 K29 ["LayoutOrder"]
      104 LOADK                            R27 K32 ["auto-y size-full-0"]
      105 SETTABLEKS                       R27 R26 K17 ["tag"]
      107 LOADK                            R28 K33 ["%*--wrapper"]
      108 GETTABLEKS                       R30 R3 K30 ["testId"]
      110 NAMECALL                         R28 R28 K34 ["format"]
      112 CALL                             R28 2 1
      113 MOVE                             R27 R28
      114 SETTABLEKS                       R27 R26 K30 ["testId"]
      116 DUPTABLE                         R27 K37 [{"ScrollContainer", "Border"}]
      117 GETUPVAL                         R29 3
      118 GETTABLEKS                       R28 R29 K16 ["createElement"]
      120 GETUPVAL                         R29 9
      121 DUPTABLE                         R30 K38 [{"LayoutOrder", "size", "testId"}]
      122 LOADN                            R31 1
      123 SETTABLEKS                       R31 R30 K29 ["LayoutOrder"]
      125 GETTABLEKS                       R31 R3 K11 ["size"]
      127 SETTABLEKS                       R31 R30 K11 ["size"]
      129 LOADK                            R32 K39 ["%*--scroll-container"]
      130 GETTABLEKS                       R34 R3 K30 ["testId"]
      132 NAMECALL                         R32 R32 K34 ["format"]
      134 CALL                             R32 2 1
      135 MOVE                             R31 R32
      136 SETTABLEKS                       R31 R30 K30 ["testId"]
      138 DUPTABLE                         R31 K41 [{"TabList"}]
      139 GETUPVAL                         R33 3
      140 GETTABLEKS                       R32 R33 K16 ["createElement"]
      142 GETUPVAL                         R33 7
      143 DUPTABLE                         R34 K42 [{"tag", "testId"}]
      144 NEWTABLE                         R35 4 0
      146 LOADB                            R36 1
      147 SETTABLEKS                       R36 R35 K43 ["row auto-xy flex-y-fill"]
      149 NOT                              R36 R7
      150 SETTABLEKS                       R36 R35 K44 ["gap-large"]
      152 SETTABLEKS                       R7 R35 K45 ["size-full-0"]
      154 SETTABLEKS                       R35 R34 K17 ["tag"]
      156 LOADK                            R36 K46 ["%*--list"]
      157 GETTABLEKS                       R38 R3 K30 ["testId"]
      159 NAMECALL                         R36 R36 K34 ["format"]
      161 CALL                             R36 2 1
      162 MOVE                             R35 R36
      163 SETTABLEKS                       R35 R34 K30 ["testId"]
      165 GETUPVAL                         R36 4
      166 GETTABLEKS                       R35 R36 K47 ["map"]
      168 GETTABLEKS                       R36 R3 K9 ["tabs"]
      170 NEWCLOSURE                       R37 P2
      171 CAPTURE                          UPVAL U3
      172 CAPTURE                          UPVAL U10
      173 CAPTURE                          VAL R8
      174 CAPTURE                          VAL R6
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R15
      177 CALL                             R35 2 -1
      178 CALL                             R32 -1 1
      179 SETTABLEKS                       R32 R31 K40 ["TabList"]
      181 CALL                             R28 3 1
      182 SETTABLEKS                       R28 R27 K35 ["ScrollContainer"]
      184 GETUPVAL                         R29 3
      185 GETTABLEKS                       R28 R29 K16 ["createElement"]
      187 GETUPVAL                         R29 7
      188 DUPTABLE                         R30 K52 [{"LayoutOrder", "AnchorPoint", "Size", "Position", "backgroundStyle", "testId"}]
      189 LOADN                            R31 2
      190 SETTABLEKS                       R31 R30 K29 ["LayoutOrder"]
      192 GETIMPORT                        R31 K55 [Vector2.new]
      194 LOADN                            R32 0
      195 LOADN                            R33 1
      196 CALL                             R31 2 1
      197 SETTABLEKS                       R31 R30 K48 ["AnchorPoint"]
      199 GETIMPORT                        R31 K57 [UDim2.new]
      201 LOADN                            R32 1
      202 LOADN                            R33 0
      203 LOADN                            R34 0
      204 GETTABLEKS                       R36 R2 K58 ["Stroke"]
      206 GETTABLEKS                       R35 R36 K59 ["Thick"]
      208 CALL                             R31 4 1
      209 SETTABLEKS                       R31 R30 K49 ["Size"]
      211 GETIMPORT                        R31 K61 [UDim2.fromScale]
      213 LOADN                            R32 0
      214 LOADN                            R33 1
      215 CALL                             R31 2 1
      216 SETTABLEKS                       R31 R30 K50 ["Position"]
      218 GETTABLEKS                       R33 R2 K62 ["Color"]
      220 GETTABLEKS                       R32 R33 K58 ["Stroke"]
      222 GETTABLEKS                       R31 R32 K63 ["Default"]
      224 SETTABLEKS                       R31 R30 K51 ["backgroundStyle"]
      226 LOADK                            R32 K64 ["%*--border"]
      227 GETTABLEKS                       R34 R3 K30 ["testId"]
      229 NAMECALL                         R32 R32 K34 ["format"]
      231 CALL                             R32 2 1
      232 MOVE                             R31 R32
      233 SETTABLEKS                       R31 R30 K30 ["testId"]
      235 CALL                             R28 2 1
      236 SETTABLEKS                       R28 R27 K36 ["Border"]
      238 CALL                             R24 3 1
      239 SETTABLEKS                       R24 R23 K26 ["Wrapper"]
      241 JUMPIFNOT                        R9 ; [+27]
      242 GETTABLEKS                       R25 R9 K65 ["content"]
      244 JUMPIFNOT                        R25 ; [+24]
      245 GETUPVAL                         R25 3
      246 GETTABLEKS                       R24 R25 K16 ["createElement"]
      248 GETUPVAL                         R25 7
      249 DUPTABLE                         R26 K31 [{"LayoutOrder", "tag", "testId"}]
      250 LOADN                            R27 2
      251 SETTABLEKS                       R27 R26 K29 ["LayoutOrder"]
      253 LOADK                            R27 K32 ["auto-y size-full-0"]
      254 SETTABLEKS                       R27 R26 K17 ["tag"]
      256 LOADK                            R28 K66 ["%*--content"]
      257 GETTABLEKS                       R30 R3 K30 ["testId"]
      259 NAMECALL                         R28 R28 K34 ["format"]
      261 CALL                             R28 2 1
      262 MOVE                             R27 R28
      263 SETTABLEKS                       R27 R26 K30 ["testId"]
      265 GETTABLEKS                       R27 R9 K65 ["content"]
      267 CALL                             R24 3 1
      268 JUMP                             ; [+1]
      269 LOADNIL                          R24
      270 SETTABLEKS                       R24 R23 K27 ["Content"]
      272 CALL                             R20 3 1
      273 SETTABLEKS                       R20 R19 K20 ["Tabs"]
      275 GETUPVAL                         R21 3
      276 GETTABLEKS                       R20 R21 K16 ["createElement"]
      278 GETUPVAL                         R21 7
      279 DUPTABLE                         R22 K68 [{"LayoutOrder", "ZIndex", "Size", "Position", "backgroundStyle", "testId"}]
      280 LOADN                            R23 0
      281 SETTABLEKS                       R23 R22 K29 ["LayoutOrder"]
      283 GETTABLEKS                       R24 R3 K67 ["ZIndex"]
      285 ADDK                             R23 R24 K69 [1]
      286 SETTABLEKS                       R23 R22 K67 ["ZIndex"]
      288 NEWCLOSURE                       R25 P3
      289 CAPTURE                          VAL R2
      290 NAMECALL                         R23 R13 K47 ["map"]
      292 CALL                             R23 2 1
      293 SETTABLEKS                       R23 R22 K49 ["Size"]
      295 GETUPVAL                         R24 3
      296 GETTABLEKS                       R23 R24 K70 ["joinBindings"]
      298 NEWTABLE                         R24 0 2
      300 MOVE                             R25 R12
      301 MOVE                             R26 R14
      302 SETLIST                          R24 R25 2 [1]
      304 CALL                             R23 1 1
      305 NEWCLOSURE                       R25 P4
      306 CAPTURE                          VAL R2
      307 NAMECALL                         R23 R23 K47 ["map"]
      309 CALL                             R23 2 1
      310 SETTABLEKS                       R23 R22 K50 ["Position"]
      312 GETTABLEKS                       R25 R2 K62 ["Color"]
      314 GETTABLEKS                       R24 R25 K71 ["System"]
      316 GETTABLEKS                       R23 R24 K72 ["Contrast"]
      318 SETTABLEKS                       R23 R22 K51 ["backgroundStyle"]
      320 LOADK                            R24 K73 ["%*--animated-border"]
      321 GETTABLEKS                       R26 R3 K30 ["testId"]
      323 NAMECALL                         R24 R24 K34 ["format"]
      325 CALL                             R24 2 1
      326 MOVE                             R23 R24
      327 SETTABLEKS                       R23 R22 K30 ["testId"]
      329 CALL                             R20 2 1
      330 SETTABLEKS                       R20 R19 K21 ["AnimatedBorder"]
      332 CALL                             R16 3 -1
      333 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R6 K10 ["FillBehavior"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Enums"]
       30 GETTABLEKS                       R6 R7 K11 ["InputSize"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETIMPORT                        R9 K1 [script]
       37 GETTABLEKS                       R8 R9 K4 ["Parent"]
       39 GETTABLEKS                       R7 R8 K12 ["TabItem"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K13 ["Components"]
       46 GETTABLEKS                       R8 R9 K14 ["Types"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K13 ["Components"]
       53 GETTABLEKS                       R9 R10 K15 ["View"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R12 R0 K16 ["Providers"]
       60 GETTABLEKS                       R11 R12 K17 ["Style"]
       62 GETTABLEKS                       R10 R11 K18 ["useTokens"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R12 R0 K19 ["Utility"]
       69 GETTABLEKS                       R11 R12 K20 ["withCommonProps"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R13 R0 K19 ["Utility"]
       76 GETTABLEKS                       R12 R13 K21 ["withDefaults"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R14 R0 K19 ["Utility"]
       83 GETTABLEKS                       R13 R14 K22 ["useAnimatedHighlight"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETIMPORT                        R16 K1 [script]
       90 GETTABLEKS                       R15 R16 K4 ["Parent"]
       92 GETTABLEKS                       R14 R15 K23 ["OverflowScrollContainer"]
       94 CALL                             R13 1 1
       95 DUPTABLE                         R14 K28 [{"fillBehavior", "size", "testId", "ZIndex"}]
       96 GETTABLEKS                       R15 R4 K29 ["Fill"]
       98 SETTABLEKS                       R15 R14 K24 ["fillBehavior"]
      100 GETTABLEKS                       R15 R5 K30 ["Medium"]
      102 SETTABLEKS                       R15 R14 K25 ["size"]
      104 LOADK                            R15 K31 ["--foundation-tabs"]
      105 SETTABLEKS                       R15 R14 K26 ["testId"]
      107 LOADN                            R15 1
      108 SETTABLEKS                       R15 R14 K27 ["ZIndex"]
      110 DUPCLOSURE                       R15 K32 [PROTO_5]
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R6
      122 GETTABLEKS                       R16 R3 K33 ["memo"]
      124 GETTABLEKS                       R17 R3 K34 ["forwardRef"]
      126 MOVE                             R18 R15
      127 CALL                             R17 1 -1
      128 CALL                             R16 -1 -1
      129 RETURN                           R16 -1
