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
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["tabs"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["id"]
       10 GETTABLEKS                       R7 R5 K2 ["ref"]
       12 JUMPIF                           R7 ; [+4]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K3 ["createRef"]
       16 CALL                             R7 0 1
       17 SETTABLE                         R7 R0 R6
       18 FORGLOOP                         R1 2 ; [-11]
       20 RETURN                           R0 1

PROTO_3:
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

PROTO_4:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K3 ["Stroke"]
        6 GETTABLEKS                       R3 R3 K4 ["Thick"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_5:
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

PROTO_6:
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
       56 GETUPVAL                         R11 3
       57 GETTABLEKS                       R11 R11 K11 ["useMemo"]
       59 NEWCLOSURE                       R12 P2
       60 CAPTURE                          VAL R3
       61 CAPTURE                          UPVAL U3
       62 NEWTABLE                         R13 0 1
       64 GETTABLEKS                       R14 R3 K9 ["tabs"]
       66 SETLIST                          R13 R14 1 [1]
       68 CALL                             R11 2 1
       69 GETUPVAL                         R12 6
       70 MOVE                             R13 R8
       71 OR                               R14 R1 R10
       72 MOVE                             R15 R11
       73 GETTABLEKS                       R16 R3 K12 ["size"]
       75 GETTABLEKS                       R17 R3 K5 ["fillBehavior"]
       77 CALL                             R12 5 1
       78 GETTABLEKS                       R13 R12 K13 ["highlightPosition"]
       80 GETTABLEKS                       R14 R12 K14 ["highlightWidth"]
       82 GETTABLEKS                       R15 R12 K15 ["activeItemHeight"]
       84 GETUPVAL                         R16 3
       85 GETTABLEKS                       R16 R16 K16 ["createElement"]
       87 GETUPVAL                         R17 7
       88 GETUPVAL                         R19 8
       89 GETTABLEKS                       R19 R19 K17 ["FoundationFixNoCommonPropsOnComponentParents"]
       91 JUMPIFNOT                        R19 ; [+8]
       92 GETUPVAL                         R18 9
       93 MOVE                             R19 R3
       94 DUPTABLE                         R20 K19 [{"tag"}]
       95 LOADK                            R21 K20 ["size-full-0 auto-y clip"]
       96 SETTABLEKS                       R21 R20 K18 ["tag"]
       98 CALL                             R18 2 1
       99 JUMP                             ; [+4]
      100 DUPTABLE                         R18 K19 [{"tag"}]
      101 LOADK                            R19 K20 ["size-full-0 auto-y clip"]
      102 SETTABLEKS                       R19 R18 K18 ["tag"]
      104 DUPTABLE                         R19 K23 [{"Tabs", "AnimatedBorder"}]
      105 GETUPVAL                         R20 3
      106 GETTABLEKS                       R20 R20 K16 ["createElement"]
      108 GETUPVAL                         R21 7
      109 GETUPVAL                         R23 8
      110 GETTABLEKS                       R23 R23 K17 ["FoundationFixNoCommonPropsOnComponentParents"]
      112 JUMPIFNOT                        R23 ; [+8]
      113 DUPTABLE                         R22 K25 [{"ref", "tag"}]
      114 OR                               R23 R1 R10
      115 SETTABLEKS                       R23 R22 K24 ["ref"]
      117 LOADK                            R23 K26 ["col size-full-0 auto-y"]
      118 SETTABLEKS                       R23 R22 K18 ["tag"]
      120 JUMP                             ; [+10]
      121 GETUPVAL                         R22 9
      122 MOVE                             R23 R3
      123 DUPTABLE                         R24 K25 [{"ref", "tag"}]
      124 OR                               R25 R1 R10
      125 SETTABLEKS                       R25 R24 K24 ["ref"]
      127 LOADK                            R25 K26 ["col size-full-0 auto-y"]
      128 SETTABLEKS                       R25 R24 K18 ["tag"]
      130 CALL                             R22 2 1
      131 DUPTABLE                         R23 K29 [{"Wrapper", "Content"}]
      132 GETUPVAL                         R24 3
      133 GETTABLEKS                       R24 R24 K16 ["createElement"]
      135 GETUPVAL                         R25 7
      136 DUPTABLE                         R26 K32 [{"LayoutOrder", "tag", "testId"}]
      137 LOADN                            R27 1
      138 SETTABLEKS                       R27 R26 K30 ["LayoutOrder"]
      140 LOADK                            R27 K33 ["size-full-0 auto-y"]
      141 SETTABLEKS                       R27 R26 K18 ["tag"]
      143 LOADK                            R28 K34 ["%*--wrapper"]
      144 GETTABLEKS                       R30 R3 K31 ["testId"]
      146 NAMECALL                         R28 R28 K35 ["format"]
      148 CALL                             R28 2 1
      149 MOVE                             R27 R28
      150 SETTABLEKS                       R27 R26 K31 ["testId"]
      152 DUPTABLE                         R27 K38 [{"ScrollContainer", "Border"}]
      153 GETUPVAL                         R28 3
      154 GETTABLEKS                       R28 R28 K16 ["createElement"]
      156 GETUPVAL                         R29 10
      157 DUPTABLE                         R30 K39 [{"LayoutOrder", "size", "testId"}]
      158 LOADN                            R31 1
      159 SETTABLEKS                       R31 R30 K30 ["LayoutOrder"]
      161 GETTABLEKS                       R31 R3 K12 ["size"]
      163 SETTABLEKS                       R31 R30 K12 ["size"]
      165 LOADK                            R32 K40 ["%*--scroll-container"]
      166 GETTABLEKS                       R34 R3 K31 ["testId"]
      168 NAMECALL                         R32 R32 K35 ["format"]
      170 CALL                             R32 2 1
      171 MOVE                             R31 R32
      172 SETTABLEKS                       R31 R30 K31 ["testId"]
      174 DUPTABLE                         R31 K42 [{"TabList"}]
      175 GETUPVAL                         R32 3
      176 GETTABLEKS                       R32 R32 K16 ["createElement"]
      178 GETUPVAL                         R33 7
      179 DUPTABLE                         R34 K43 [{"tag", "testId"}]
      180 NEWTABLE                         R35 4 0
      182 LOADB                            R36 1
      183 SETTABLEKS                       R36 R35 K44 ["row flex-y-fill auto-xy"]
      185 NOT                              R36 R7
      186 SETTABLEKS                       R36 R35 K45 ["gap-large"]
      188 SETTABLEKS                       R7 R35 K46 ["size-full-0"]
      190 SETTABLEKS                       R35 R34 K18 ["tag"]
      192 LOADK                            R36 K47 ["%*--list"]
      193 GETTABLEKS                       R38 R3 K31 ["testId"]
      195 NAMECALL                         R36 R36 K35 ["format"]
      197 CALL                             R36 2 1
      198 MOVE                             R35 R36
      199 SETTABLEKS                       R35 R34 K31 ["testId"]
      201 GETUPVAL                         R35 4
      202 GETTABLEKS                       R35 R35 K48 ["map"]
      204 GETTABLEKS                       R36 R3 K9 ["tabs"]
      206 NEWCLOSURE                       R37 P3
      207 CAPTURE                          UPVAL U3
      208 CAPTURE                          UPVAL U11
      209 CAPTURE                          VAL R8
      210 CAPTURE                          VAL R6
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R11
      213 CALL                             R35 2 -1
      214 CALL                             R32 -1 1
      215 SETTABLEKS                       R32 R31 K41 ["TabList"]
      217 CALL                             R28 3 1
      218 SETTABLEKS                       R28 R27 K36 ["ScrollContainer"]
      220 GETUPVAL                         R28 3
      221 GETTABLEKS                       R28 R28 K16 ["createElement"]
      223 GETUPVAL                         R29 7
      224 DUPTABLE                         R30 K53 [{"LayoutOrder", "AnchorPoint", "Size", "Position", "backgroundStyle", "testId"}]
      225 LOADN                            R31 2
      226 SETTABLEKS                       R31 R30 K30 ["LayoutOrder"]
      228 GETIMPORT                        R31 K56 [Vector2.new]
      230 LOADN                            R32 0
      231 LOADN                            R33 1
      232 CALL                             R31 2 1
      233 SETTABLEKS                       R31 R30 K49 ["AnchorPoint"]
      235 GETIMPORT                        R31 K58 [UDim2.new]
      237 LOADN                            R32 1
      238 LOADN                            R33 0
      239 LOADN                            R34 0
      240 GETTABLEKS                       R35 R2 K59 ["Stroke"]
      242 GETTABLEKS                       R35 R35 K60 ["Thick"]
      244 CALL                             R31 4 1
      245 SETTABLEKS                       R31 R30 K50 ["Size"]
      247 GETIMPORT                        R31 K62 [UDim2.fromScale]
      249 LOADN                            R32 0
      250 LOADN                            R33 1
      251 CALL                             R31 2 1
      252 SETTABLEKS                       R31 R30 K51 ["Position"]
      254 GETTABLEKS                       R31 R2 K63 ["Color"]
      256 GETTABLEKS                       R31 R31 K59 ["Stroke"]
      258 GETTABLEKS                       R31 R31 K64 ["Default"]
      260 SETTABLEKS                       R31 R30 K52 ["backgroundStyle"]
      262 LOADK                            R32 K65 ["%*--border"]
      263 GETTABLEKS                       R34 R3 K31 ["testId"]
      265 NAMECALL                         R32 R32 K35 ["format"]
      267 CALL                             R32 2 1
      268 MOVE                             R31 R32
      269 SETTABLEKS                       R31 R30 K31 ["testId"]
      271 CALL                             R28 2 1
      272 SETTABLEKS                       R28 R27 K37 ["Border"]
      274 CALL                             R24 3 1
      275 SETTABLEKS                       R24 R23 K27 ["Wrapper"]
      277 JUMPIFNOT                        R9 ; [+27]
      278 GETTABLEKS                       R25 R9 K66 ["content"]
      280 JUMPIFNOT                        R25 ; [+24]
      281 GETUPVAL                         R24 3
      282 GETTABLEKS                       R24 R24 K16 ["createElement"]
      284 GETUPVAL                         R25 7
      285 DUPTABLE                         R26 K32 [{"LayoutOrder", "tag", "testId"}]
      286 LOADN                            R27 2
      287 SETTABLEKS                       R27 R26 K30 ["LayoutOrder"]
      289 LOADK                            R27 K33 ["size-full-0 auto-y"]
      290 SETTABLEKS                       R27 R26 K18 ["tag"]
      292 LOADK                            R28 K67 ["%*--content"]
      293 GETTABLEKS                       R30 R3 K31 ["testId"]
      295 NAMECALL                         R28 R28 K35 ["format"]
      297 CALL                             R28 2 1
      298 MOVE                             R27 R28
      299 SETTABLEKS                       R27 R26 K31 ["testId"]
      301 GETTABLEKS                       R27 R9 K66 ["content"]
      303 CALL                             R24 3 1
      304 JUMP                             ; [+1]
      305 LOADNIL                          R24
      306 SETTABLEKS                       R24 R23 K28 ["Content"]
      308 CALL                             R20 3 1
      309 SETTABLEKS                       R20 R19 K21 ["Tabs"]
      311 GETUPVAL                         R20 3
      312 GETTABLEKS                       R20 R20 K16 ["createElement"]
      314 GETUPVAL                         R21 7
      315 DUPTABLE                         R22 K69 [{"LayoutOrder", "ZIndex", "Size", "Position", "backgroundStyle", "testId"}]
      316 LOADN                            R23 0
      317 SETTABLEKS                       R23 R22 K30 ["LayoutOrder"]
      319 GETTABLEKS                       R24 R3 K68 ["ZIndex"]
      321 ADDK                             R23 R24 K70 [1]
      322 SETTABLEKS                       R23 R22 K68 ["ZIndex"]
      324 NEWCLOSURE                       R25 P4
      325 CAPTURE                          VAL R2
      326 NAMECALL                         R23 R14 K48 ["map"]
      328 CALL                             R23 2 1
      329 SETTABLEKS                       R23 R22 K50 ["Size"]
      331 GETUPVAL                         R23 3
      332 GETTABLEKS                       R23 R23 K71 ["joinBindings"]
      334 NEWTABLE                         R24 0 2
      336 MOVE                             R25 R13
      337 MOVE                             R26 R15
      338 SETLIST                          R24 R25 2 [1]
      340 CALL                             R23 1 1
      341 NEWCLOSURE                       R25 P5
      342 CAPTURE                          VAL R2
      343 NAMECALL                         R23 R23 K48 ["map"]
      345 CALL                             R23 2 1
      346 SETTABLEKS                       R23 R22 K51 ["Position"]
      348 GETTABLEKS                       R23 R2 K63 ["Color"]
      350 GETTABLEKS                       R23 R23 K72 ["System"]
      352 GETTABLEKS                       R23 R23 K73 ["Contrast"]
      354 SETTABLEKS                       R23 R22 K52 ["backgroundStyle"]
      356 LOADK                            R24 K74 ["%*--animated-border"]
      357 GETTABLEKS                       R26 R3 K31 ["testId"]
      359 NAMECALL                         R24 R24 K35 ["format"]
      361 CALL                             R24 2 1
      362 MOVE                             R23 R24
      363 SETTABLEKS                       R23 R22 K31 ["testId"]
      365 CALL                             R20 2 1
      366 SETTABLEKS                       R20 R19 K22 ["AnimatedBorder"]
      368 CALL                             R16 3 -1
      369 RETURN                           R16 -1

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
       28 GETTABLEKS                       R6 R0 K11 ["Utility"]
       30 GETTABLEKS                       R6 R6 K12 ["Flags"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["InputSize"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETIMPORT                        R8 K1 [script]
       44 GETTABLEKS                       R8 R8 K4 ["Parent"]
       46 GETTABLEKS                       R8 R8 K14 ["TabItem"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K15 ["Components"]
       53 GETTABLEKS                       R9 R9 K16 ["Types"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K15 ["Components"]
       60 GETTABLEKS                       R10 R10 K17 ["View"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K18 ["Providers"]
       67 GETTABLEKS                       R11 R11 K19 ["Style"]
       69 GETTABLEKS                       R11 R11 K20 ["useTokens"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K11 ["Utility"]
       76 GETTABLEKS                       R12 R12 K21 ["withCommonProps"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K11 ["Utility"]
       83 GETTABLEKS                       R13 R13 K22 ["withDefaults"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R14 R0 K11 ["Utility"]
       90 GETTABLEKS                       R14 R14 K23 ["useAnimatedHighlight"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETIMPORT                        R15 K1 [script]
       97 GETTABLEKS                       R15 R15 K4 ["Parent"]
       99 GETTABLEKS                       R15 R15 K24 ["OverflowScrollContainer"]
      101 CALL                             R14 1 1
      102 DUPTABLE                         R15 K29 [{"fillBehavior", "size", "testId", "ZIndex"}]
      103 GETTABLEKS                       R16 R4 K30 ["Fill"]
      105 SETTABLEKS                       R16 R15 K25 ["fillBehavior"]
      107 GETTABLEKS                       R16 R6 K31 ["Medium"]
      109 SETTABLEKS                       R16 R15 K26 ["size"]
      111 LOADK                            R16 K32 ["--foundation-tabs"]
      112 SETTABLEKS                       R16 R15 K27 ["testId"]
      114 LOADN                            R16 1
      115 SETTABLEKS                       R16 R15 K28 ["ZIndex"]
      117 DUPCLOSURE                       R16 K33 [PROTO_6]
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R7
      130 GETTABLEKS                       R17 R3 K34 ["memo"]
      132 GETTABLEKS                       R18 R3 K35 ["forwardRef"]
      134 MOVE                             R19 R16
      135 CALL                             R18 1 -1
      136 CALL                             R17 -1 -1
      137 RETURN                           R17 -1
