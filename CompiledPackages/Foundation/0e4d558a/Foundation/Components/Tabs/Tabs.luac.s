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
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["tabs"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["id"]
       10 GETTABLEKS                       R7 R5 K2 ["ref"]
       12 JUMPIF                           R7 ; [+4]
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K3 ["createRef"]
       16 CALL                             R7 0 1
       17 SETTABLE                         R7 R0 R6
       18 FORGLOOP                         R1 2 ; [-11]
       20 RETURN                           R0 1

PROTO_3:
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

PROTO_4:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K3 ["Stroke"]
        6 GETTABLEKS                       R3 R4 K4 ["Thick"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_5:
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

PROTO_6:
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
       56 GETUPVAL                         R12 3
       57 GETTABLEKS                       R11 R12 K11 ["useMemo"]
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
       84 GETUPVAL                         R17 3
       85 GETTABLEKS                       R16 R17 K16 ["createElement"]
       87 GETUPVAL                         R17 7
       88 DUPTABLE                         R18 K18 [{"tag"}]
       89 LOADK                            R19 K19 ["size-full-0 auto-y clip"]
       90 SETTABLEKS                       R19 R18 K17 ["tag"]
       92 DUPTABLE                         R19 K22 [{"Tabs", "AnimatedBorder"}]
       93 GETUPVAL                         R21 3
       94 GETTABLEKS                       R20 R21 K16 ["createElement"]
       96 GETUPVAL                         R21 7
       97 GETUPVAL                         R22 8
       98 MOVE                             R23 R3
       99 DUPTABLE                         R24 K24 [{"ref", "tag"}]
      100 OR                               R25 R1 R10
      101 SETTABLEKS                       R25 R24 K23 ["ref"]
      103 LOADK                            R25 K25 ["col size-full-0 auto-y"]
      104 SETTABLEKS                       R25 R24 K17 ["tag"]
      106 CALL                             R22 2 1
      107 DUPTABLE                         R23 K28 [{"Wrapper", "Content"}]
      108 GETUPVAL                         R25 3
      109 GETTABLEKS                       R24 R25 K16 ["createElement"]
      111 GETUPVAL                         R25 7
      112 DUPTABLE                         R26 K31 [{"LayoutOrder", "tag", "testId"}]
      113 LOADN                            R27 1
      114 SETTABLEKS                       R27 R26 K29 ["LayoutOrder"]
      116 LOADK                            R27 K32 ["size-full-0 auto-y"]
      117 SETTABLEKS                       R27 R26 K17 ["tag"]
      119 LOADK                            R28 K33 ["%*--wrapper"]
      120 GETTABLEKS                       R30 R3 K30 ["testId"]
      122 NAMECALL                         R28 R28 K34 ["format"]
      124 CALL                             R28 2 1
      125 MOVE                             R27 R28
      126 SETTABLEKS                       R27 R26 K30 ["testId"]
      128 DUPTABLE                         R27 K37 [{"ScrollContainer", "Border"}]
      129 GETUPVAL                         R29 3
      130 GETTABLEKS                       R28 R29 K16 ["createElement"]
      132 GETUPVAL                         R29 9
      133 DUPTABLE                         R30 K38 [{"LayoutOrder", "size", "testId"}]
      134 LOADN                            R31 1
      135 SETTABLEKS                       R31 R30 K29 ["LayoutOrder"]
      137 GETTABLEKS                       R31 R3 K12 ["size"]
      139 SETTABLEKS                       R31 R30 K12 ["size"]
      141 LOADK                            R32 K39 ["%*--scroll-container"]
      142 GETTABLEKS                       R34 R3 K30 ["testId"]
      144 NAMECALL                         R32 R32 K34 ["format"]
      146 CALL                             R32 2 1
      147 MOVE                             R31 R32
      148 SETTABLEKS                       R31 R30 K30 ["testId"]
      150 DUPTABLE                         R31 K41 [{"TabList"}]
      151 GETUPVAL                         R33 3
      152 GETTABLEKS                       R32 R33 K16 ["createElement"]
      154 GETUPVAL                         R33 7
      155 DUPTABLE                         R34 K42 [{"tag", "testId"}]
      156 NEWTABLE                         R35 4 0
      158 LOADB                            R36 1
      159 SETTABLEKS                       R36 R35 K43 ["row flex-y-fill auto-xy"]
      161 NOT                              R36 R7
      162 SETTABLEKS                       R36 R35 K44 ["gap-large"]
      164 SETTABLEKS                       R7 R35 K45 ["size-full-0"]
      166 SETTABLEKS                       R35 R34 K17 ["tag"]
      168 LOADK                            R36 K46 ["%*--list"]
      169 GETTABLEKS                       R38 R3 K30 ["testId"]
      171 NAMECALL                         R36 R36 K34 ["format"]
      173 CALL                             R36 2 1
      174 MOVE                             R35 R36
      175 SETTABLEKS                       R35 R34 K30 ["testId"]
      177 GETUPVAL                         R36 4
      178 GETTABLEKS                       R35 R36 K47 ["map"]
      180 GETTABLEKS                       R36 R3 K9 ["tabs"]
      182 NEWCLOSURE                       R37 P3
      183 CAPTURE                          UPVAL U3
      184 CAPTURE                          UPVAL U10
      185 CAPTURE                          VAL R8
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R3
      188 CAPTURE                          VAL R11
      189 CALL                             R35 2 -1
      190 CALL                             R32 -1 1
      191 SETTABLEKS                       R32 R31 K40 ["TabList"]
      193 CALL                             R28 3 1
      194 SETTABLEKS                       R28 R27 K35 ["ScrollContainer"]
      196 GETUPVAL                         R29 3
      197 GETTABLEKS                       R28 R29 K16 ["createElement"]
      199 GETUPVAL                         R29 7
      200 DUPTABLE                         R30 K52 [{"LayoutOrder", "AnchorPoint", "Size", "Position", "backgroundStyle", "testId"}]
      201 LOADN                            R31 2
      202 SETTABLEKS                       R31 R30 K29 ["LayoutOrder"]
      204 GETIMPORT                        R31 K55 [Vector2.new]
      206 LOADN                            R32 0
      207 LOADN                            R33 1
      208 CALL                             R31 2 1
      209 SETTABLEKS                       R31 R30 K48 ["AnchorPoint"]
      211 GETIMPORT                        R31 K57 [UDim2.new]
      213 LOADN                            R32 1
      214 LOADN                            R33 0
      215 LOADN                            R34 0
      216 GETTABLEKS                       R36 R2 K58 ["Stroke"]
      218 GETTABLEKS                       R35 R36 K59 ["Thick"]
      220 CALL                             R31 4 1
      221 SETTABLEKS                       R31 R30 K49 ["Size"]
      223 GETIMPORT                        R31 K61 [UDim2.fromScale]
      225 LOADN                            R32 0
      226 LOADN                            R33 1
      227 CALL                             R31 2 1
      228 SETTABLEKS                       R31 R30 K50 ["Position"]
      230 GETTABLEKS                       R33 R2 K62 ["Color"]
      232 GETTABLEKS                       R32 R33 K58 ["Stroke"]
      234 GETTABLEKS                       R31 R32 K63 ["Default"]
      236 SETTABLEKS                       R31 R30 K51 ["backgroundStyle"]
      238 LOADK                            R32 K64 ["%*--border"]
      239 GETTABLEKS                       R34 R3 K30 ["testId"]
      241 NAMECALL                         R32 R32 K34 ["format"]
      243 CALL                             R32 2 1
      244 MOVE                             R31 R32
      245 SETTABLEKS                       R31 R30 K30 ["testId"]
      247 CALL                             R28 2 1
      248 SETTABLEKS                       R28 R27 K36 ["Border"]
      250 CALL                             R24 3 1
      251 SETTABLEKS                       R24 R23 K26 ["Wrapper"]
      253 JUMPIFNOT                        R9 ; [+27]
      254 GETTABLEKS                       R25 R9 K65 ["content"]
      256 JUMPIFNOT                        R25 ; [+24]
      257 GETUPVAL                         R25 3
      258 GETTABLEKS                       R24 R25 K16 ["createElement"]
      260 GETUPVAL                         R25 7
      261 DUPTABLE                         R26 K31 [{"LayoutOrder", "tag", "testId"}]
      262 LOADN                            R27 2
      263 SETTABLEKS                       R27 R26 K29 ["LayoutOrder"]
      265 LOADK                            R27 K32 ["size-full-0 auto-y"]
      266 SETTABLEKS                       R27 R26 K17 ["tag"]
      268 LOADK                            R28 K66 ["%*--content"]
      269 GETTABLEKS                       R30 R3 K30 ["testId"]
      271 NAMECALL                         R28 R28 K34 ["format"]
      273 CALL                             R28 2 1
      274 MOVE                             R27 R28
      275 SETTABLEKS                       R27 R26 K30 ["testId"]
      277 GETTABLEKS                       R27 R9 K65 ["content"]
      279 CALL                             R24 3 1
      280 JUMP                             ; [+1]
      281 LOADNIL                          R24
      282 SETTABLEKS                       R24 R23 K27 ["Content"]
      284 CALL                             R20 3 1
      285 SETTABLEKS                       R20 R19 K20 ["Tabs"]
      287 GETUPVAL                         R21 3
      288 GETTABLEKS                       R20 R21 K16 ["createElement"]
      290 GETUPVAL                         R21 7
      291 DUPTABLE                         R22 K68 [{"LayoutOrder", "ZIndex", "Size", "Position", "backgroundStyle", "testId"}]
      292 LOADN                            R23 0
      293 SETTABLEKS                       R23 R22 K29 ["LayoutOrder"]
      295 GETTABLEKS                       R24 R3 K67 ["ZIndex"]
      297 ADDK                             R23 R24 K69 [1]
      298 SETTABLEKS                       R23 R22 K67 ["ZIndex"]
      300 NEWCLOSURE                       R25 P4
      301 CAPTURE                          VAL R2
      302 NAMECALL                         R23 R14 K47 ["map"]
      304 CALL                             R23 2 1
      305 SETTABLEKS                       R23 R22 K49 ["Size"]
      307 GETUPVAL                         R24 3
      308 GETTABLEKS                       R23 R24 K70 ["joinBindings"]
      310 NEWTABLE                         R24 0 2
      312 MOVE                             R25 R13
      313 MOVE                             R26 R15
      314 SETLIST                          R24 R25 2 [1]
      316 CALL                             R23 1 1
      317 NEWCLOSURE                       R25 P5
      318 CAPTURE                          VAL R2
      319 NAMECALL                         R23 R23 K47 ["map"]
      321 CALL                             R23 2 1
      322 SETTABLEKS                       R23 R22 K50 ["Position"]
      324 GETTABLEKS                       R25 R2 K62 ["Color"]
      326 GETTABLEKS                       R24 R25 K71 ["System"]
      328 GETTABLEKS                       R23 R24 K72 ["Contrast"]
      330 SETTABLEKS                       R23 R22 K51 ["backgroundStyle"]
      332 LOADK                            R24 K73 ["%*--animated-border"]
      333 GETTABLEKS                       R26 R3 K30 ["testId"]
      335 NAMECALL                         R24 R24 K34 ["format"]
      337 CALL                             R24 2 1
      338 MOVE                             R23 R24
      339 SETTABLEKS                       R23 R22 K30 ["testId"]
      341 CALL                             R20 2 1
      342 SETTABLEKS                       R20 R19 K21 ["AnimatedBorder"]
      344 CALL                             R16 3 -1
      345 RETURN                           R16 -1

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
      110 DUPCLOSURE                       R15 K32 [PROTO_6]
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
