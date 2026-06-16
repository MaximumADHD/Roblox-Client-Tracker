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
      146 GETTABLEKS                       R10 R10 K20 ["createElement"]
      148 GETUPVAL                         R11 2
      149 DUPTABLE                         R12 K22 [{"tag"}]
      150 LOADK                            R13 K23 ["col auto-xy gap-small"]
      151 SETTABLEKS                       R13 R12 K21 ["tag"]
      153 DUPTABLE                         R13 K28 [{"TextSegments", "IconSegments", "MixedSegments", "SegmentsAsChild"}]
      154 GETUPVAL                         R14 1
      155 GETTABLEKS                       R14 R14 K20 ["createElement"]
      157 GETUPVAL                         R15 3
      158 DUPTABLE                         R16 K34 [{"size", "segments", "value", "onActivated", "LayoutOrder"}]
      159 GETTABLEKS                       R17 R0 K35 ["controls"]
      161 GETTABLEKS                       R17 R17 K29 ["size"]
      163 SETTABLEKS                       R17 R16 K29 ["size"]
      165 SETTABLEKS                       R1 R16 K30 ["segments"]
      167 SETTABLEKS                       R4 R16 K31 ["value"]
      169 SETTABLEKS                       R5 R16 K32 ["onActivated"]
      171 LOADN                            R17 1
      172 SETTABLEKS                       R17 R16 K33 ["LayoutOrder"]
      174 CALL                             R14 2 1
      175 SETTABLEKS                       R14 R13 K24 ["TextSegments"]
      177 GETUPVAL                         R15 4
      178 GETTABLEKS                       R15 R15 K36 ["FoundationSegmentedControlIconSupport"]
      180 JUMPIFNOT                        R15 ; [+22]
      181 GETUPVAL                         R14 1
      182 GETTABLEKS                       R14 R14 K20 ["createElement"]
      184 GETUPVAL                         R15 3
      185 DUPTABLE                         R16 K34 [{"size", "segments", "value", "onActivated", "LayoutOrder"}]
      186 GETTABLEKS                       R17 R0 K35 ["controls"]
      188 GETTABLEKS                       R17 R17 K29 ["size"]
      190 SETTABLEKS                       R17 R16 K29 ["size"]
      192 SETTABLEKS                       R2 R16 K30 ["segments"]
      194 SETTABLEKS                       R6 R16 K31 ["value"]
      196 SETTABLEKS                       R7 R16 K32 ["onActivated"]
      198 LOADN                            R17 2
      199 SETTABLEKS                       R17 R16 K33 ["LayoutOrder"]
      201 CALL                             R14 2 1
      202 JUMP                             ; [+1]
      203 LOADNIL                          R14
      204 SETTABLEKS                       R14 R13 K25 ["IconSegments"]
      206 GETUPVAL                         R15 4
      207 GETTABLEKS                       R15 R15 K36 ["FoundationSegmentedControlIconSupport"]
      209 JUMPIFNOT                        R15 ; [+22]
      210 GETUPVAL                         R14 1
      211 GETTABLEKS                       R14 R14 K20 ["createElement"]
      213 GETUPVAL                         R15 3
      214 DUPTABLE                         R16 K34 [{"size", "segments", "value", "onActivated", "LayoutOrder"}]
      215 GETTABLEKS                       R17 R0 K35 ["controls"]
      217 GETTABLEKS                       R17 R17 K29 ["size"]
      219 SETTABLEKS                       R17 R16 K29 ["size"]
      221 SETTABLEKS                       R3 R16 K30 ["segments"]
      223 SETTABLEKS                       R8 R16 K31 ["value"]
      225 SETTABLEKS                       R9 R16 K32 ["onActivated"]
      227 LOADN                            R17 3
      228 SETTABLEKS                       R17 R16 K33 ["LayoutOrder"]
      230 CALL                             R14 2 1
      231 JUMP                             ; [+1]
      232 LOADNIL                          R14
      233 SETTABLEKS                       R14 R13 K26 ["MixedSegments"]
      235 GETUPVAL                         R14 1
      236 GETTABLEKS                       R14 R14 K20 ["createElement"]
      238 GETUPVAL                         R15 2
      239 DUPTABLE                         R16 K22 [{"tag"}]
      240 LOADK                            R17 K37 ["col auto-y size-full-0"]
      241 SETTABLEKS                       R17 R16 K21 ["tag"]
      243 DUPTABLE                         R17 K41 [{"First", "TabsComponent", "Last"}]
      244 GETUPVAL                         R18 1
      245 GETTABLEKS                       R18 R18 K20 ["createElement"]
      247 GETUPVAL                         R19 5
      248 DUPTABLE                         R20 K44 [{"LayoutOrder", "Text", "Size"}]
      249 LOADN                            R21 1
      250 SETTABLEKS                       R21 R20 K33 ["LayoutOrder"]
      252 LOADK                            R21 K45 ["I go first!"]
      253 SETTABLEKS                       R21 R20 K42 ["Text"]
      255 GETIMPORT                        R21 K48 [UDim2.fromOffset]
      257 LOADN                            R22 50
      258 LOADN                            R23 50
      259 CALL                             R21 2 1
      260 SETTABLEKS                       R21 R20 K43 ["Size"]
      262 CALL                             R18 2 1
      263 SETTABLEKS                       R18 R17 K38 ["First"]
      265 GETUPVAL                         R18 1
      266 GETTABLEKS                       R18 R18 K20 ["createElement"]
      268 GETUPVAL                         R19 3
      269 DUPTABLE                         R20 K49 [{"LayoutOrder", "size", "segments", "value", "onActivated"}]
      270 LOADN                            R21 2
      271 SETTABLEKS                       R21 R20 K33 ["LayoutOrder"]
      273 GETTABLEKS                       R21 R0 K35 ["controls"]
      275 GETTABLEKS                       R21 R21 K29 ["size"]
      277 SETTABLEKS                       R21 R20 K29 ["size"]
      279 SETTABLEKS                       R1 R20 K30 ["segments"]
      281 SETTABLEKS                       R8 R20 K31 ["value"]
      283 SETTABLEKS                       R9 R20 K32 ["onActivated"]
      285 CALL                             R18 2 1
      286 SETTABLEKS                       R18 R17 K39 ["TabsComponent"]
      288 GETUPVAL                         R18 1
      289 GETTABLEKS                       R18 R18 K20 ["createElement"]
      291 GETUPVAL                         R19 5
      292 DUPTABLE                         R20 K44 [{"LayoutOrder", "Text", "Size"}]
      293 LOADN                            R21 3
      294 SETTABLEKS                       R21 R20 K33 ["LayoutOrder"]
      296 LOADK                            R21 K50 ["I go last!"]
      297 SETTABLEKS                       R21 R20 K42 ["Text"]
      299 GETIMPORT                        R21 K48 [UDim2.fromOffset]
      301 LOADN                            R22 50
      302 LOADN                            R23 50
      303 CALL                             R21 2 1
      304 SETTABLEKS                       R21 R20 K43 ["Size"]
      306 CALL                             R18 2 1
      307 SETTABLEKS                       R18 R17 K40 ["Last"]
      309 CALL                             R14 3 1
      310 SETTABLEKS                       R14 R13 K27 ["SegmentsAsChild"]
      312 CALL                             R10 3 -1
      313 RETURN                           R10 -1

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
       81 DUPTABLE                         R13 K25 [{"size"}]
       82 GETTABLEKS                       R14 R3 K26 ["values"]
       84 MOVE                             R15 R6
       85 CALL                             R14 1 1
       86 SETTABLEKS                       R14 R13 K24 ["size"]
       88 SETTABLEKS                       R13 R12 K22 ["controls"]
       90 RETURN                           R12 1
