PROTO_0:
        0 NEWTABLE                         R1 0 5
        2 DUPTABLE                         R2 K2 [{"id", "text"}]
        3 LOADK                            R3 K3 ["1"]
        4 SETTABLEKS                       R3 R2 K0 ["id"]
        6 LOADK                            R3 K4 ["Lorem Ipsum"]
        7 SETTABLEKS                       R3 R2 K1 ["text"]
        9 DUPTABLE                         R3 K2 [{"id", "text"}]
       10 LOADK                            R4 K5 ["2"]
       11 SETTABLEKS                       R4 R3 K0 ["id"]
       13 LOADK                            R4 K4 ["Lorem Ipsum"]
       14 SETTABLEKS                       R4 R3 K1 ["text"]
       16 DUPTABLE                         R4 K2 [{"id", "text"}]
       17 LOADK                            R5 K6 ["3"]
       18 SETTABLEKS                       R5 R4 K0 ["id"]
       20 LOADK                            R5 K4 ["Lorem Ipsum"]
       21 SETTABLEKS                       R5 R4 K1 ["text"]
       23 DUPTABLE                         R5 K2 [{"id", "text"}]
       24 LOADK                            R6 K7 ["4"]
       25 SETTABLEKS                       R6 R5 K0 ["id"]
       27 LOADK                            R6 K4 ["Lorem Ipsum"]
       28 SETTABLEKS                       R6 R5 K1 ["text"]
       30 DUPTABLE                         R6 K2 [{"id", "text"}]
       31 LOADK                            R7 K8 ["5"]
       32 SETTABLEKS                       R7 R6 K0 ["id"]
       34 LOADK                            R7 K9 ["Lorem Ipsum Long"]
       35 SETTABLEKS                       R7 R6 K1 ["text"]
       37 SETLIST                          R1 R2 5 [1]
       39 NEWTABLE                         R2 0 3
       41 DUPTABLE                         R3 K11 [{"id", "icon"}]
       42 LOADK                            R4 K3 ["1"]
       43 SETTABLEKS                       R4 R3 K0 ["id"]
       45 DUPTABLE                         R4 K13 [{"name"}]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K14 ["Icon"]
       49 GETTABLEKS                       R5 R5 K15 ["House"]
       51 SETTABLEKS                       R5 R4 K12 ["name"]
       53 SETTABLEKS                       R4 R3 K10 ["icon"]
       55 DUPTABLE                         R4 K11 [{"id", "icon"}]
       56 LOADK                            R5 K5 ["2"]
       57 SETTABLEKS                       R5 R4 K0 ["id"]
       59 DUPTABLE                         R5 K13 [{"name"}]
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K14 ["Icon"]
       63 GETTABLEKS                       R6 R6 K16 ["Gear"]
       65 SETTABLEKS                       R6 R5 K12 ["name"]
       67 SETTABLEKS                       R5 R4 K10 ["icon"]
       69 DUPTABLE                         R5 K11 [{"id", "icon"}]
       70 LOADK                            R6 K6 ["3"]
       71 SETTABLEKS                       R6 R5 K0 ["id"]
       73 DUPTABLE                         R6 K13 [{"name"}]
       74 GETUPVAL                         R7 0
       75 GETTABLEKS                       R7 R7 K14 ["Icon"]
       77 GETTABLEKS                       R7 R7 K17 ["MagnifyingGlass"]
       79 SETTABLEKS                       R7 R6 K12 ["name"]
       81 SETTABLEKS                       R6 R5 K10 ["icon"]
       83 SETLIST                          R2 R3 3 [1]
       85 NEWTABLE                         R3 0 3
       87 DUPTABLE                         R4 K11 [{"id", "icon"}]
       88 LOADK                            R5 K3 ["1"]
       89 SETTABLEKS                       R5 R4 K0 ["id"]
       91 DUPTABLE                         R5 K13 [{"name"}]
       92 GETUPVAL                         R6 0
       93 GETTABLEKS                       R6 R6 K14 ["Icon"]
       95 GETTABLEKS                       R6 R6 K15 ["House"]
       97 SETTABLEKS                       R6 R5 K12 ["name"]
       99 SETTABLEKS                       R5 R4 K10 ["icon"]
      101 DUPTABLE                         R5 K2 [{"id", "text"}]
      102 LOADK                            R6 K5 ["2"]
      103 SETTABLEKS                       R6 R5 K0 ["id"]
      105 LOADK                            R6 K18 ["Browse"]
      106 SETTABLEKS                       R6 R5 K1 ["text"]
      108 DUPTABLE                         R6 K11 [{"id", "icon"}]
      109 LOADK                            R7 K6 ["3"]
      110 SETTABLEKS                       R7 R6 K0 ["id"]
      112 DUPTABLE                         R7 K13 [{"name"}]
      113 GETUPVAL                         R8 0
      114 GETTABLEKS                       R8 R8 K14 ["Icon"]
      116 GETTABLEKS                       R8 R8 K16 ["Gear"]
      118 SETTABLEKS                       R8 R7 K12 ["name"]
      120 SETTABLEKS                       R7 R6 K10 ["icon"]
      122 SETLIST                          R3 R4 3 [1]
      124 GETUPVAL                         R4 1
      125 GETTABLEKS                       R4 R4 K19 ["useState"]
      127 GETTABLEN                        R5 R1 1
      128 GETTABLEKS                       R5 R5 K0 ["id"]
      130 CALL                             R4 1 2
      131 GETUPVAL                         R6 1
      132 GETTABLEKS                       R6 R6 K19 ["useState"]
      134 GETTABLEN                        R7 R2 1
      135 GETTABLEKS                       R7 R7 K0 ["id"]
      137 CALL                             R6 1 2
      138 GETUPVAL                         R8 1
      139 GETTABLEKS                       R8 R8 K19 ["useState"]
      141 GETTABLEN                        R9 R3 1
      142 GETTABLEKS                       R9 R9 K0 ["id"]
      144 CALL                             R8 1 2
      145 GETUPVAL                         R10 1
      146 GETTABLEKS                       R10 R10 K19 ["useState"]
      148 GETTABLEN                        R11 R1 1
      149 GETTABLEKS                       R11 R11 K0 ["id"]
      151 CALL                             R10 1 2
      152 GETUPVAL                         R12 1
      153 GETTABLEKS                       R12 R12 K20 ["createElement"]
      155 GETUPVAL                         R13 2
      156 DUPTABLE                         R14 K22 [{"tag"}]
      157 LOADK                            R15 K23 ["col auto-xy gap-small"]
      158 SETTABLEKS                       R15 R14 K21 ["tag"]
      160 DUPTABLE                         R15 K28 [{"TextSegments", "IconSegments", "MixedSegments", "SegmentsAsChild"}]
      161 GETUPVAL                         R16 1
      162 GETTABLEKS                       R16 R16 K20 ["createElement"]
      164 GETUPVAL                         R17 3
      165 DUPTABLE                         R18 K35 [{"size", "isCircular", "segments", "value", "onActivated", "LayoutOrder"}]
      166 GETTABLEKS                       R19 R0 K36 ["controls"]
      168 GETTABLEKS                       R19 R19 K29 ["size"]
      170 SETTABLEKS                       R19 R18 K29 ["size"]
      172 GETUPVAL                         R20 4
      173 GETTABLEKS                       R20 R20 K37 ["FoundationSegmentedControlCircular"]
      175 JUMPIFNOT                        R20 ; [+5]
      176 GETTABLEKS                       R19 R0 K36 ["controls"]
      178 GETTABLEKS                       R19 R19 K30 ["isCircular"]
      180 JUMP                             ; [+1]
      181 LOADNIL                          R19
      182 SETTABLEKS                       R19 R18 K30 ["isCircular"]
      184 SETTABLEKS                       R1 R18 K31 ["segments"]
      186 SETTABLEKS                       R4 R18 K32 ["value"]
      188 SETTABLEKS                       R5 R18 K33 ["onActivated"]
      190 LOADN                            R19 1
      191 SETTABLEKS                       R19 R18 K34 ["LayoutOrder"]
      193 CALL                             R16 2 1
      194 SETTABLEKS                       R16 R15 K24 ["TextSegments"]
      196 GETUPVAL                         R17 4
      197 GETTABLEKS                       R17 R17 K38 ["FoundationSegmentedControlIconSupport"]
      199 JUMPIFNOT                        R17 ; [+34]
      200 GETUPVAL                         R16 1
      201 GETTABLEKS                       R16 R16 K20 ["createElement"]
      203 GETUPVAL                         R17 3
      204 DUPTABLE                         R18 K35 [{"size", "isCircular", "segments", "value", "onActivated", "LayoutOrder"}]
      205 GETTABLEKS                       R19 R0 K36 ["controls"]
      207 GETTABLEKS                       R19 R19 K29 ["size"]
      209 SETTABLEKS                       R19 R18 K29 ["size"]
      211 GETUPVAL                         R20 4
      212 GETTABLEKS                       R20 R20 K37 ["FoundationSegmentedControlCircular"]
      214 JUMPIFNOT                        R20 ; [+5]
      215 GETTABLEKS                       R19 R0 K36 ["controls"]
      217 GETTABLEKS                       R19 R19 K30 ["isCircular"]
      219 JUMP                             ; [+1]
      220 LOADNIL                          R19
      221 SETTABLEKS                       R19 R18 K30 ["isCircular"]
      223 SETTABLEKS                       R2 R18 K31 ["segments"]
      225 SETTABLEKS                       R6 R18 K32 ["value"]
      227 SETTABLEKS                       R7 R18 K33 ["onActivated"]
      229 LOADN                            R19 2
      230 SETTABLEKS                       R19 R18 K34 ["LayoutOrder"]
      232 CALL                             R16 2 1
      233 JUMP                             ; [+1]
      234 LOADNIL                          R16
      235 SETTABLEKS                       R16 R15 K25 ["IconSegments"]
      237 GETUPVAL                         R17 4
      238 GETTABLEKS                       R17 R17 K38 ["FoundationSegmentedControlIconSupport"]
      240 JUMPIFNOT                        R17 ; [+34]
      241 GETUPVAL                         R16 1
      242 GETTABLEKS                       R16 R16 K20 ["createElement"]
      244 GETUPVAL                         R17 3
      245 DUPTABLE                         R18 K35 [{"size", "isCircular", "segments", "value", "onActivated", "LayoutOrder"}]
      246 GETTABLEKS                       R19 R0 K36 ["controls"]
      248 GETTABLEKS                       R19 R19 K29 ["size"]
      250 SETTABLEKS                       R19 R18 K29 ["size"]
      252 GETUPVAL                         R20 4
      253 GETTABLEKS                       R20 R20 K37 ["FoundationSegmentedControlCircular"]
      255 JUMPIFNOT                        R20 ; [+5]
      256 GETTABLEKS                       R19 R0 K36 ["controls"]
      258 GETTABLEKS                       R19 R19 K30 ["isCircular"]
      260 JUMP                             ; [+1]
      261 LOADNIL                          R19
      262 SETTABLEKS                       R19 R18 K30 ["isCircular"]
      264 SETTABLEKS                       R3 R18 K31 ["segments"]
      266 SETTABLEKS                       R8 R18 K32 ["value"]
      268 SETTABLEKS                       R9 R18 K33 ["onActivated"]
      270 LOADN                            R19 3
      271 SETTABLEKS                       R19 R18 K34 ["LayoutOrder"]
      273 CALL                             R16 2 1
      274 JUMP                             ; [+1]
      275 LOADNIL                          R16
      276 SETTABLEKS                       R16 R15 K26 ["MixedSegments"]
      278 GETUPVAL                         R16 1
      279 GETTABLEKS                       R16 R16 K20 ["createElement"]
      281 GETUPVAL                         R17 2
      282 DUPTABLE                         R18 K22 [{"tag"}]
      283 LOADK                            R19 K39 ["col auto-y size-full-0"]
      284 SETTABLEKS                       R19 R18 K21 ["tag"]
      286 DUPTABLE                         R19 K43 [{"First", "TabsComponent", "Last"}]
      287 GETUPVAL                         R20 1
      288 GETTABLEKS                       R20 R20 K20 ["createElement"]
      290 GETUPVAL                         R21 5
      291 DUPTABLE                         R22 K46 [{"LayoutOrder", "Text", "Size"}]
      292 LOADN                            R23 1
      293 SETTABLEKS                       R23 R22 K34 ["LayoutOrder"]
      295 LOADK                            R23 K47 ["I go first!"]
      296 SETTABLEKS                       R23 R22 K44 ["Text"]
      298 GETIMPORT                        R23 K50 [UDim2.fromOffset]
      300 LOADN                            R24 50
      301 LOADN                            R25 50
      302 CALL                             R23 2 1
      303 SETTABLEKS                       R23 R22 K45 ["Size"]
      305 CALL                             R20 2 1
      306 SETTABLEKS                       R20 R19 K40 ["First"]
      308 GETUPVAL                         R20 1
      309 GETTABLEKS                       R20 R20 K20 ["createElement"]
      311 GETUPVAL                         R21 3
      312 DUPTABLE                         R22 K51 [{"LayoutOrder", "size", "isCircular", "segments", "value", "onActivated"}]
      313 LOADN                            R23 2
      314 SETTABLEKS                       R23 R22 K34 ["LayoutOrder"]
      316 GETTABLEKS                       R23 R0 K36 ["controls"]
      318 GETTABLEKS                       R23 R23 K29 ["size"]
      320 SETTABLEKS                       R23 R22 K29 ["size"]
      322 GETUPVAL                         R24 4
      323 GETTABLEKS                       R24 R24 K37 ["FoundationSegmentedControlCircular"]
      325 JUMPIFNOT                        R24 ; [+5]
      326 GETTABLEKS                       R23 R0 K36 ["controls"]
      328 GETTABLEKS                       R23 R23 K30 ["isCircular"]
      330 JUMP                             ; [+1]
      331 LOADNIL                          R23
      332 SETTABLEKS                       R23 R22 K30 ["isCircular"]
      334 SETTABLEKS                       R1 R22 K31 ["segments"]
      336 SETTABLEKS                       R10 R22 K32 ["value"]
      338 SETTABLEKS                       R11 R22 K33 ["onActivated"]
      340 CALL                             R20 2 1
      341 SETTABLEKS                       R20 R19 K41 ["TabsComponent"]
      343 GETUPVAL                         R20 1
      344 GETTABLEKS                       R20 R20 K20 ["createElement"]
      346 GETUPVAL                         R21 5
      347 DUPTABLE                         R22 K46 [{"LayoutOrder", "Text", "Size"}]
      348 LOADN                            R23 3
      349 SETTABLEKS                       R23 R22 K34 ["LayoutOrder"]
      351 LOADK                            R23 K52 ["I go last!"]
      352 SETTABLEKS                       R23 R22 K44 ["Text"]
      354 GETIMPORT                        R23 K50 [UDim2.fromOffset]
      356 LOADN                            R24 50
      357 LOADN                            R25 50
      358 CALL                             R23 2 1
      359 SETTABLEKS                       R23 R22 K45 ["Size"]
      361 CALL                             R20 2 1
      362 SETTABLEKS                       R20 R19 K42 ["Last"]
      364 CALL                             R16 3 1
      365 SETTABLEKS                       R16 R15 K27 ["SegmentsAsChild"]
      367 CALL                             R12 3 -1
      368 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Utility"]
       28 GETTABLEKS                       R6 R6 K11 ["Flags"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Enums"]
       35 GETTABLEKS                       R7 R7 K13 ["InputSize"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K14 ["Components"]
       42 GETTABLEKS                       R8 R8 K15 ["SegmentedControl"]
       44 GETTABLEKS                       R8 R8 K16 ["Segment"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K14 ["Components"]
       51 GETTABLEKS                       R9 R9 K15 ["SegmentedControl"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K14 ["Components"]
       58 GETTABLEKS                       R10 R10 K17 ["Text"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K14 ["Components"]
       65 GETTABLEKS                       R11 R11 K18 ["View"]
       67 CALL                             R10 1 1
       68 DUPCLOSURE                       R11 K19 [PROTO_0]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R9
       75 DUPTABLE                         R12 K23 [{"summary", "story", "controls"}]
       76 LOADK                            R13 K15 ["SegmentedControl"]
       77 SETTABLEKS                       R13 R12 K20 ["summary"]
       79 SETTABLEKS                       R11 R12 K21 ["story"]
       81 DUPTABLE                         R13 K26 [{"size", "isCircular"}]
       82 GETTABLEKS                       R14 R3 K27 ["values"]
       84 MOVE                             R15 R6
       85 CALL                             R14 1 1
       86 SETTABLEKS                       R14 R13 K24 ["size"]
       88 LOADB                            R14 0
       89 SETTABLEKS                       R14 R13 K25 ["isCircular"]
       91 SETTABLEKS                       R13 R12 K22 ["controls"]
       93 RETURN                           R12 1
