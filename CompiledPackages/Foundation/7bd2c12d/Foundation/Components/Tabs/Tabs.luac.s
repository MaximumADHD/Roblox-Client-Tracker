PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onActivated"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["onActivated"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
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
       39 GETUPVAL                         R5 4
       40 GETTABLEKS                       R5 R5 K8 ["fillBehavior"]
       42 SETTABLEKS                       R5 R4 K8 ["fillBehavior"]
       44 GETUPVAL                         R5 4
       45 GETTABLEKS                       R5 R5 K9 ["size"]
       47 SETTABLEKS                       R5 R4 K9 ["size"]
       49 GETTABLEKS                       R5 R0 K10 ["isDisabled"]
       51 SETTABLEKS                       R5 R4 K10 ["isDisabled"]
       53 LOADK                            R6 K16 ["%*--item-%*"]
       54 GETUPVAL                         R8 4
       55 GETTABLEKS                       R8 R8 K11 ["testId"]
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
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K3 ["Stroke"]
        6 GETTABLEKS                       R3 R3 K4 ["Thick"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 GETIMPORT                        R3 K2 [UDim2.fromOffset]
        4 MOVE                             R4 R1
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K3 ["Stroke"]
        8 GETTABLEKS                       R6 R6 K4 ["Thick"]
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
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K0 ["useState"]
        9 GETTABLEKS                       R5 R3 K1 ["defaultActiveTabId"]
       11 JUMPIF                           R5 ; [+11]
       12 GETUPVAL                         R5 4
       13 GETTABLEKS                       R5 R5 K2 ["get"]
       15 MOVE                             R6 R3
       16 NEWTABLE                         R7 0 2
       18 LOADN                            R8 1
       19 LOADK                            R9 K3 ["id"]
       20 SETLIST                          R7 R8 2 [1]
       22 CALL                             R5 2 1
       23 CALL                             R4 1 2
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R5
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R8 R3 K5 ["fillBehavior"]
       33 GETUPVAL                         R9 5
       34 GETTABLEKS                       R9 R9 K6 ["Fill"]
       36 JUMPIFEQ                         R8 R9 ; [+2]
       38 LOADB                            R7 0 +1
       39 LOADB                            R7 1
       40 GETTABLEKS                       R9 R3 K7 ["activeTabId"]
       42 OR                               R8 R9 R4
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R9 R9 K8 ["find"]
       46 GETTABLEKS                       R10 R3 K9 ["tabs"]
       48 NEWCLOSURE                       R11 P1
       49 CAPTURE                          VAL R8
       50 CALL                             R9 2 1
       51 GETUPVAL                         R10 3
       52 GETTABLEKS                       R10 R10 K10 ["useRef"]
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
       72 GETUPVAL                         R16 3
       73 GETTABLEKS                       R16 R16 K16 ["createElement"]
       75 GETUPVAL                         R17 7
       76 DUPTABLE                         R18 K19 [{["tag"] = "size-full-0 auto-y clip"}]
       77 DUPTABLE                         R19 K22 [{"Tabs", "AnimatedBorder"}]
       78 GETUPVAL                         R20 3
       79 GETTABLEKS                       R20 R20 K16 ["createElement"]
       81 GETUPVAL                         R21 7
       82 GETUPVAL                         R22 8
       83 MOVE                             R23 R3
       84 DUPTABLE                         R24 K25 [{["ref"], ["tag"] = "auto-y size-full-0 col"}]
       85 OR                               R25 R1 R10
       86 SETTABLEKS                       R25 R24 K23 ["ref"]
       88 CALL                             R22 2 1
       89 DUPTABLE                         R23 K28 [{"Wrapper", "Content"}]
       90 GETUPVAL                         R24 3
       91 GETTABLEKS                       R24 R24 K16 ["createElement"]
       93 GETUPVAL                         R25 7
       94 DUPTABLE                         R26 K33 [{["LayoutOrder"] = 1, ["tag"] = "auto-y size-full-0", ["testId"]}]
       95 LOADK                            R28 K34 ["%*--wrapper"]
       96 GETTABLEKS                       R30 R3 K32 ["testId"]
       98 NAMECALL                         R28 R28 K35 ["format"]
      100 CALL                             R28 2 1
      101 MOVE                             R27 R28
      102 SETTABLEKS                       R27 R26 K32 ["testId"]
      104 DUPTABLE                         R27 K38 [{"ScrollContainer", "Border"}]
      105 GETUPVAL                         R28 3
      106 GETTABLEKS                       R28 R28 K16 ["createElement"]
      108 GETUPVAL                         R29 9
      109 DUPTABLE                         R30 K39 [{["LayoutOrder"] = 1, ["size"], ["testId"]}]
      110 GETTABLEKS                       R31 R3 K11 ["size"]
      112 SETTABLEKS                       R31 R30 K11 ["size"]
      114 LOADK                            R32 K40 ["%*--scroll-container"]
      115 GETTABLEKS                       R34 R3 K32 ["testId"]
      117 NAMECALL                         R32 R32 K35 ["format"]
      119 CALL                             R32 2 1
      120 MOVE                             R31 R32
      121 SETTABLEKS                       R31 R30 K32 ["testId"]
      123 DUPTABLE                         R31 K42 [{"TabList"}]
      124 GETUPVAL                         R32 3
      125 GETTABLEKS                       R32 R32 K16 ["createElement"]
      127 GETUPVAL                         R33 7
      128 DUPTABLE                         R34 K43 [{"tag", "testId"}]
      129 NEWTABLE                         R35 4 0
      131 LOADB                            R36 1
      132 SETTABLEKS                       R36 R35 K44 ["row auto-xy flex-y-fill"]
      134 NOT                              R36 R7
      135 SETTABLEKS                       R36 R35 K45 ["gap-large"]
      137 SETTABLEKS                       R7 R35 K46 ["size-full-0"]
      139 SETTABLEKS                       R35 R34 K17 ["tag"]
      141 LOADK                            R36 K47 ["%*--list"]
      142 GETTABLEKS                       R38 R3 K32 ["testId"]
      144 NAMECALL                         R36 R36 K35 ["format"]
      146 CALL                             R36 2 1
      147 MOVE                             R35 R36
      148 SETTABLEKS                       R35 R34 K32 ["testId"]
      150 GETUPVAL                         R35 4
      151 GETTABLEKS                       R35 R35 K48 ["map"]
      153 GETTABLEKS                       R36 R3 K9 ["tabs"]
      155 NEWCLOSURE                       R37 P2
      156 CAPTURE                          UPVAL U3
      157 CAPTURE                          UPVAL U10
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R15
      162 CALL                             R35 2 -1
      163 CALL                             R32 -1 1
      164 SETTABLEKS                       R32 R31 K41 ["TabList"]
      166 CALL                             R28 3 1
      167 SETTABLEKS                       R28 R27 K36 ["ScrollContainer"]
      169 GETUPVAL                         R28 3
      170 GETTABLEKS                       R28 R28 K16 ["createElement"]
      172 GETUPVAL                         R29 7
      173 DUPTABLE                         R30 K54 [{["LayoutOrder"] = 2, ["AnchorPoint"], ["Size"], ["Position"], ["backgroundStyle"], ["testId"]}]
      174 GETIMPORT                        R31 K57 [Vector2.new]
      176 LOADN                            R32 0
      177 LOADN                            R33 1
      178 CALL                             R31 2 1
      179 SETTABLEKS                       R31 R30 K50 ["AnchorPoint"]
      181 GETIMPORT                        R31 K59 [UDim2.new]
      183 LOADN                            R32 1
      184 LOADN                            R33 0
      185 LOADN                            R34 0
      186 GETTABLEKS                       R35 R2 K60 ["Stroke"]
      188 GETTABLEKS                       R35 R35 K61 ["Thick"]
      190 CALL                             R31 4 1
      191 SETTABLEKS                       R31 R30 K51 ["Size"]
      193 GETIMPORT                        R31 K63 [UDim2.fromScale]
      195 LOADN                            R32 0
      196 LOADN                            R33 1
      197 CALL                             R31 2 1
      198 SETTABLEKS                       R31 R30 K52 ["Position"]
      200 GETTABLEKS                       R31 R2 K64 ["Color"]
      202 GETTABLEKS                       R31 R31 K60 ["Stroke"]
      204 GETTABLEKS                       R31 R31 K65 ["Default"]
      206 SETTABLEKS                       R31 R30 K53 ["backgroundStyle"]
      208 LOADK                            R32 K66 ["%*--border"]
      209 GETTABLEKS                       R34 R3 K32 ["testId"]
      211 NAMECALL                         R32 R32 K35 ["format"]
      213 CALL                             R32 2 1
      214 MOVE                             R31 R32
      215 SETTABLEKS                       R31 R30 K32 ["testId"]
      217 CALL                             R28 2 1
      218 SETTABLEKS                       R28 R27 K37 ["Border"]
      220 CALL                             R24 3 1
      221 SETTABLEKS                       R24 R23 K26 ["Wrapper"]
      223 JUMPIFNOT                        R9 ; [+21]
      224 GETTABLEKS                       R25 R9 K67 ["content"]
      226 JUMPIFNOT                        R25 ; [+18]
      227 GETUPVAL                         R24 3
      228 GETTABLEKS                       R24 R24 K16 ["createElement"]
      230 GETUPVAL                         R25 7
      231 DUPTABLE                         R26 K68 [{["LayoutOrder"] = 2, ["tag"] = "auto-y size-full-0", ["testId"]}]
      232 LOADK                            R28 K69 ["%*--content"]
      233 GETTABLEKS                       R30 R3 K32 ["testId"]
      235 NAMECALL                         R28 R28 K35 ["format"]
      237 CALL                             R28 2 1
      238 MOVE                             R27 R28
      239 SETTABLEKS                       R27 R26 K32 ["testId"]
      241 GETTABLEKS                       R27 R9 K67 ["content"]
      243 CALL                             R24 3 1
      244 JUMP                             ; [+1]
      245 LOADNIL                          R24
      246 SETTABLEKS                       R24 R23 K27 ["Content"]
      248 CALL                             R20 3 1
      249 SETTABLEKS                       R20 R19 K20 ["Tabs"]
      251 GETUPVAL                         R20 3
      252 GETTABLEKS                       R20 R20 K16 ["createElement"]
      254 GETUPVAL                         R21 7
      255 DUPTABLE                         R22 K72 [{["LayoutOrder"] = 0, ["ZIndex"], ["Size"], ["Position"], ["backgroundStyle"], ["testId"]}]
      256 GETTABLEKS                       R24 R3 K71 ["ZIndex"]
      258 ADDK                             R23 R24 K30 [1]
      259 SETTABLEKS                       R23 R22 K71 ["ZIndex"]
      261 NEWCLOSURE                       R25 P3
      262 CAPTURE                          VAL R2
      263 NAMECALL                         R23 R13 K48 ["map"]
      265 CALL                             R23 2 1
      266 SETTABLEKS                       R23 R22 K51 ["Size"]
      268 GETUPVAL                         R23 3
      269 GETTABLEKS                       R23 R23 K73 ["joinBindings"]
      271 NEWTABLE                         R24 0 2
      273 MOVE                             R25 R12
      274 MOVE                             R26 R14
      275 SETLIST                          R24 R25 2 [1]
      277 CALL                             R23 1 1
      278 NEWCLOSURE                       R25 P4
      279 CAPTURE                          VAL R2
      280 NAMECALL                         R23 R23 K48 ["map"]
      282 CALL                             R23 2 1
      283 SETTABLEKS                       R23 R22 K52 ["Position"]
      285 GETTABLEKS                       R23 R2 K64 ["Color"]
      287 GETTABLEKS                       R23 R23 K74 ["System"]
      289 GETTABLEKS                       R23 R23 K75 ["Contrast"]
      291 SETTABLEKS                       R23 R22 K53 ["backgroundStyle"]
      293 LOADK                            R24 K76 ["%*--animated-border"]
      294 GETTABLEKS                       R26 R3 K32 ["testId"]
      296 NAMECALL                         R24 R24 K35 ["format"]
      298 CALL                             R24 2 1
      299 MOVE                             R23 R24
      300 SETTABLEKS                       R23 R22 K32 ["testId"]
      302 CALL                             R20 2 1
      303 SETTABLEKS                       R20 R19 K21 ["AnimatedBorder"]
      305 CALL                             R16 3 -1
      306 RETURN                           R16 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R5 K10 ["FillBehavior"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Enums"]
       30 GETTABLEKS                       R6 R6 K11 ["InputSize"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETIMPORT                        R7 K1 [script]
       37 GETTABLEKS                       R7 R7 K4 ["Parent"]
       39 GETTABLEKS                       R7 R7 K12 ["TabItem"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K13 ["Components"]
       46 GETTABLEKS                       R8 R8 K14 ["Types"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K13 ["Components"]
       53 GETTABLEKS                       R9 R9 K15 ["View"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K16 ["Providers"]
       60 GETTABLEKS                       R10 R10 K17 ["Style"]
       62 GETTABLEKS                       R10 R10 K18 ["useTokens"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K19 ["Utility"]
       69 GETTABLEKS                       R11 R11 K20 ["withCommonProps"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K19 ["Utility"]
       76 GETTABLEKS                       R12 R12 K21 ["withDefaults"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K19 ["Utility"]
       83 GETTABLEKS                       R13 R13 K22 ["useAnimatedHighlight"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETIMPORT                        R14 K1 [script]
       90 GETTABLEKS                       R14 R14 K4 ["Parent"]
       92 GETTABLEKS                       R14 R14 K23 ["OverflowScrollContainer"]
       94 CALL                             R13 1 1
       95 DUPTABLE                         R14 K30 [{["fillBehavior"], ["size"], ["testId"] = "--foundation-tabs", ["ZIndex"] = 1}]
       96 GETTABLEKS                       R15 R4 K31 ["Fill"]
       98 SETTABLEKS                       R15 R14 K24 ["fillBehavior"]
      100 GETTABLEKS                       R15 R5 K32 ["Medium"]
      102 SETTABLEKS                       R15 R14 K25 ["size"]
      104 DUPCLOSURE                       R15 K33 [PROTO_5]
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R6
      116 GETTABLEKS                       R16 R3 K34 ["memo"]
      118 GETTABLEKS                       R17 R3 K35 ["forwardRef"]
      120 MOVE                             R18 R15
      121 CALL                             R17 1 -1
      122 CALL                             R16 -1 -1
      123 RETURN                           R16 -1
