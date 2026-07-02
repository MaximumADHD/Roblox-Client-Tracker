PROTO_0:
        0 NEWTABLE                         R1 0 5
        2 DUPTABLE                         R2 K4 [{[1] = "1", ["text"] = "Lorem Ipsum"}]
        3 DUPTABLE                         R3 K6 [{[1] = "2", ["text"] = "Lorem Ipsum"}]
        4 DUPTABLE                         R4 K8 [{[1] = "3", ["text"] = "Lorem Ipsum"}]
        5 DUPTABLE                         R5 K10 [{[1] = "4", ["text"] = "Lorem Ipsum"}]
        6 DUPTABLE                         R6 K13 [{[1] = "5", ["text"] = "Lorem Ipsum Long"}]
        7 SETLIST                          R1 R2 5 [1]
        9 NEWTABLE                         R2 0 3
       11 DUPTABLE                         R3 K15 [{[1] = "1", ["icon"]}]
       12 DUPTABLE                         R4 K17 [{"name"}]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K18 ["Icon"]
       16 GETTABLEKS                       R5 R5 K19 ["House"]
       18 SETTABLEKS                       R5 R4 K16 ["name"]
       20 SETTABLEKS                       R4 R3 K14 ["icon"]
       22 DUPTABLE                         R4 K20 [{[1] = "2", ["icon"]}]
       23 DUPTABLE                         R5 K17 [{"name"}]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K18 ["Icon"]
       27 GETTABLEKS                       R6 R6 K21 ["Gear"]
       29 SETTABLEKS                       R6 R5 K16 ["name"]
       31 SETTABLEKS                       R5 R4 K14 ["icon"]
       33 DUPTABLE                         R5 K22 [{[1] = "3", ["icon"]}]
       34 DUPTABLE                         R6 K17 [{"name"}]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K18 ["Icon"]
       38 GETTABLEKS                       R7 R7 K23 ["MagnifyingGlass"]
       40 SETTABLEKS                       R7 R6 K16 ["name"]
       42 SETTABLEKS                       R6 R5 K14 ["icon"]
       44 SETLIST                          R2 R3 3 [1]
       46 NEWTABLE                         R3 0 3
       48 DUPTABLE                         R4 K15 [{[1] = "1", ["icon"]}]
       49 DUPTABLE                         R5 K17 [{"name"}]
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K18 ["Icon"]
       53 GETTABLEKS                       R6 R6 K19 ["House"]
       55 SETTABLEKS                       R6 R5 K16 ["name"]
       57 SETTABLEKS                       R5 R4 K14 ["icon"]
       59 DUPTABLE                         R5 K25 [{[1] = "2", ["text"] = "Browse"}]
       60 DUPTABLE                         R6 K22 [{[1] = "3", ["icon"]}]
       61 DUPTABLE                         R7 K17 [{"name"}]
       62 GETUPVAL                         R8 0
       63 GETTABLEKS                       R8 R8 K18 ["Icon"]
       65 GETTABLEKS                       R8 R8 K21 ["Gear"]
       67 SETTABLEKS                       R8 R7 K16 ["name"]
       69 SETTABLEKS                       R7 R6 K14 ["icon"]
       71 SETLIST                          R3 R4 3 [1]
       73 GETUPVAL                         R4 1
       74 GETTABLEKS                       R4 R4 K26 ["useState"]
       76 GETTABLEN                        R5 R1 1
       77 GETTABLEKS                       R5 R5 K0 ["id"]
       79 CALL                             R4 1 2
       80 GETUPVAL                         R6 1
       81 GETTABLEKS                       R6 R6 K26 ["useState"]
       83 GETTABLEN                        R7 R2 1
       84 GETTABLEKS                       R7 R7 K0 ["id"]
       86 CALL                             R6 1 2
       87 GETUPVAL                         R8 1
       88 GETTABLEKS                       R8 R8 K26 ["useState"]
       90 GETTABLEN                        R9 R3 1
       91 GETTABLEKS                       R9 R9 K0 ["id"]
       93 CALL                             R8 1 2
       94 GETUPVAL                         R10 1
       95 GETTABLEKS                       R10 R10 K26 ["useState"]
       97 GETTABLEN                        R11 R1 1
       98 GETTABLEKS                       R11 R11 K0 ["id"]
      100 CALL                             R10 1 2
      101 GETUPVAL                         R12 1
      102 GETTABLEKS                       R12 R12 K27 ["createElement"]
      104 GETUPVAL                         R13 2
      105 DUPTABLE                         R14 K30 [{["tag"] = "col auto-xy gap-small"}]
      106 DUPTABLE                         R15 K35 [{"TextSegments", "IconSegments", "MixedSegments", "SegmentsAsChild"}]
      107 GETUPVAL                         R16 1
      108 GETTABLEKS                       R16 R16 K27 ["createElement"]
      110 GETUPVAL                         R17 3
      111 DUPTABLE                         R18 K43 [{["size"], ["isCircular"], ["segments"], ["value"], ["onActivated"], ["LayoutOrder"] = 1}]
      112 GETTABLEKS                       R19 R0 K44 ["controls"]
      114 GETTABLEKS                       R19 R19 K36 ["size"]
      116 SETTABLEKS                       R19 R18 K36 ["size"]
      118 GETUPVAL                         R20 4
      119 GETTABLEKS                       R20 R20 K45 ["FoundationSegmentedControlCircular"]
      121 JUMPIFNOT                        R20 ; [+5]
      122 GETTABLEKS                       R19 R0 K44 ["controls"]
      124 GETTABLEKS                       R19 R19 K37 ["isCircular"]
      126 JUMP                             ; [+1]
      127 LOADNIL                          R19
      128 SETTABLEKS                       R19 R18 K37 ["isCircular"]
      130 SETTABLEKS                       R1 R18 K38 ["segments"]
      132 SETTABLEKS                       R4 R18 K39 ["value"]
      134 SETTABLEKS                       R5 R18 K40 ["onActivated"]
      136 CALL                             R16 2 1
      137 SETTABLEKS                       R16 R15 K31 ["TextSegments"]
      139 GETUPVAL                         R17 4
      140 GETTABLEKS                       R17 R17 K46 ["FoundationSegmentedControlIconSupport"]
      142 JUMPIFNOT                        R17 ; [+31]
      143 GETUPVAL                         R16 1
      144 GETTABLEKS                       R16 R16 K27 ["createElement"]
      146 GETUPVAL                         R17 3
      147 DUPTABLE                         R18 K48 [{["size"], ["isCircular"], ["segments"], ["value"], ["onActivated"], ["LayoutOrder"] = 2}]
      148 GETTABLEKS                       R19 R0 K44 ["controls"]
      150 GETTABLEKS                       R19 R19 K36 ["size"]
      152 SETTABLEKS                       R19 R18 K36 ["size"]
      154 GETUPVAL                         R20 4
      155 GETTABLEKS                       R20 R20 K45 ["FoundationSegmentedControlCircular"]
      157 JUMPIFNOT                        R20 ; [+5]
      158 GETTABLEKS                       R19 R0 K44 ["controls"]
      160 GETTABLEKS                       R19 R19 K37 ["isCircular"]
      162 JUMP                             ; [+1]
      163 LOADNIL                          R19
      164 SETTABLEKS                       R19 R18 K37 ["isCircular"]
      166 SETTABLEKS                       R2 R18 K38 ["segments"]
      168 SETTABLEKS                       R6 R18 K39 ["value"]
      170 SETTABLEKS                       R7 R18 K40 ["onActivated"]
      172 CALL                             R16 2 1
      173 JUMP                             ; [+1]
      174 LOADNIL                          R16
      175 SETTABLEKS                       R16 R15 K32 ["IconSegments"]
      177 GETUPVAL                         R17 4
      178 GETTABLEKS                       R17 R17 K46 ["FoundationSegmentedControlIconSupport"]
      180 JUMPIFNOT                        R17 ; [+31]
      181 GETUPVAL                         R16 1
      182 GETTABLEKS                       R16 R16 K27 ["createElement"]
      184 GETUPVAL                         R17 3
      185 DUPTABLE                         R18 K50 [{["size"], ["isCircular"], ["segments"], ["value"], ["onActivated"], ["LayoutOrder"] = 3}]
      186 GETTABLEKS                       R19 R0 K44 ["controls"]
      188 GETTABLEKS                       R19 R19 K36 ["size"]
      190 SETTABLEKS                       R19 R18 K36 ["size"]
      192 GETUPVAL                         R20 4
      193 GETTABLEKS                       R20 R20 K45 ["FoundationSegmentedControlCircular"]
      195 JUMPIFNOT                        R20 ; [+5]
      196 GETTABLEKS                       R19 R0 K44 ["controls"]
      198 GETTABLEKS                       R19 R19 K37 ["isCircular"]
      200 JUMP                             ; [+1]
      201 LOADNIL                          R19
      202 SETTABLEKS                       R19 R18 K37 ["isCircular"]
      204 SETTABLEKS                       R3 R18 K38 ["segments"]
      206 SETTABLEKS                       R8 R18 K39 ["value"]
      208 SETTABLEKS                       R9 R18 K40 ["onActivated"]
      210 CALL                             R16 2 1
      211 JUMP                             ; [+1]
      212 LOADNIL                          R16
      213 SETTABLEKS                       R16 R15 K33 ["MixedSegments"]
      215 GETUPVAL                         R16 1
      216 GETTABLEKS                       R16 R16 K27 ["createElement"]
      218 GETUPVAL                         R17 2
      219 DUPTABLE                         R18 K52 [{["tag"] = "col auto-y size-full-0"}]
      220 DUPTABLE                         R19 K56 [{"First", "TabsComponent", "Last"}]
      221 GETUPVAL                         R20 1
      222 GETTABLEKS                       R20 R20 K27 ["createElement"]
      224 GETUPVAL                         R21 5
      225 DUPTABLE                         R22 K60 [{["LayoutOrder"] = 1, ["Text"] = "I go first!", ["Size"]}]
      226 GETIMPORT                        R23 K63 [UDim2.fromOffset]
      228 LOADN                            R24 50
      229 LOADN                            R25 50
      230 CALL                             R23 2 1
      231 SETTABLEKS                       R23 R22 K59 ["Size"]
      233 CALL                             R20 2 1
      234 SETTABLEKS                       R20 R19 K53 ["First"]
      236 GETUPVAL                         R20 1
      237 GETTABLEKS                       R20 R20 K27 ["createElement"]
      239 GETUPVAL                         R21 3
      240 DUPTABLE                         R22 K64 [{["LayoutOrder"] = 2, ["size"], ["isCircular"], ["segments"], ["value"], ["onActivated"]}]
      241 GETTABLEKS                       R23 R0 K44 ["controls"]
      243 GETTABLEKS                       R23 R23 K36 ["size"]
      245 SETTABLEKS                       R23 R22 K36 ["size"]
      247 GETUPVAL                         R24 4
      248 GETTABLEKS                       R24 R24 K45 ["FoundationSegmentedControlCircular"]
      250 JUMPIFNOT                        R24 ; [+5]
      251 GETTABLEKS                       R23 R0 K44 ["controls"]
      253 GETTABLEKS                       R23 R23 K37 ["isCircular"]
      255 JUMP                             ; [+1]
      256 LOADNIL                          R23
      257 SETTABLEKS                       R23 R22 K37 ["isCircular"]
      259 SETTABLEKS                       R1 R22 K38 ["segments"]
      261 SETTABLEKS                       R10 R22 K39 ["value"]
      263 SETTABLEKS                       R11 R22 K40 ["onActivated"]
      265 CALL                             R20 2 1
      266 SETTABLEKS                       R20 R19 K54 ["TabsComponent"]
      268 GETUPVAL                         R20 1
      269 GETTABLEKS                       R20 R20 K27 ["createElement"]
      271 GETUPVAL                         R21 5
      272 DUPTABLE                         R22 K66 [{["LayoutOrder"] = 3, ["Text"] = "I go last!", ["Size"]}]
      273 GETIMPORT                        R23 K63 [UDim2.fromOffset]
      275 LOADN                            R24 50
      276 LOADN                            R25 50
      277 CALL                             R23 2 1
      278 SETTABLEKS                       R23 R22 K59 ["Size"]
      280 CALL                             R20 2 1
      281 SETTABLEKS                       R20 R19 K55 ["Last"]
      283 CALL                             R16 3 1
      284 SETTABLEKS                       R16 R15 K34 ["SegmentsAsChild"]
      286 CALL                             R12 3 -1
      287 RETURN                           R12 -1

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
       75 DUPTABLE                         R12 K23 [{["summary"] = "SegmentedControl", ["story"], ["controls"]}]
       76 SETTABLEKS                       R11 R12 K21 ["story"]
       78 DUPTABLE                         R13 K27 [{["size"], ["isCircular"] = False}]
       79 GETTABLEKS                       R14 R3 K28 ["values"]
       81 MOVE                             R15 R6
       82 CALL                             R14 1 1
       83 SETTABLEKS                       R14 R13 K24 ["size"]
       85 SETTABLEKS                       R13 R12 K22 ["controls"]
       87 RETURN                           R12 1
