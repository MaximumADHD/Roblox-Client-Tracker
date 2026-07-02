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
       95 GETTABLEKS                       R10 R10 K27 ["createElement"]
       97 GETUPVAL                         R11 2
       98 DUPTABLE                         R12 K30 [{["tag"] = "col auto-xy gap-small"}]
       99 DUPTABLE                         R13 K35 [{"TextSegments", "IconSegments", "MixedSegments", "SegmentsAsChild"}]
      100 GETUPVAL                         R14 1
      101 GETTABLEKS                       R14 R14 K27 ["createElement"]
      103 GETUPVAL                         R15 3
      104 DUPTABLE                         R16 K42 [{["size"], ["segments"], ["value"], ["onActivated"], ["LayoutOrder"] = 1}]
      105 GETTABLEKS                       R17 R0 K43 ["controls"]
      107 GETTABLEKS                       R17 R17 K36 ["size"]
      109 SETTABLEKS                       R17 R16 K36 ["size"]
      111 SETTABLEKS                       R1 R16 K37 ["segments"]
      113 SETTABLEKS                       R4 R16 K38 ["value"]
      115 SETTABLEKS                       R5 R16 K39 ["onActivated"]
      117 CALL                             R14 2 1
      118 SETTABLEKS                       R14 R13 K31 ["TextSegments"]
      120 GETUPVAL                         R15 4
      121 GETTABLEKS                       R15 R15 K44 ["FoundationSegmentedControlIconSupport"]
      123 JUMPIFNOT                        R15 ; [+19]
      124 GETUPVAL                         R14 1
      125 GETTABLEKS                       R14 R14 K27 ["createElement"]
      127 GETUPVAL                         R15 3
      128 DUPTABLE                         R16 K46 [{["size"], ["segments"], ["value"], ["onActivated"], ["LayoutOrder"] = 2}]
      129 GETTABLEKS                       R17 R0 K43 ["controls"]
      131 GETTABLEKS                       R17 R17 K36 ["size"]
      133 SETTABLEKS                       R17 R16 K36 ["size"]
      135 SETTABLEKS                       R2 R16 K37 ["segments"]
      137 SETTABLEKS                       R6 R16 K38 ["value"]
      139 SETTABLEKS                       R7 R16 K39 ["onActivated"]
      141 CALL                             R14 2 1
      142 JUMP                             ; [+1]
      143 LOADNIL                          R14
      144 SETTABLEKS                       R14 R13 K32 ["IconSegments"]
      146 GETUPVAL                         R15 4
      147 GETTABLEKS                       R15 R15 K44 ["FoundationSegmentedControlIconSupport"]
      149 JUMPIFNOT                        R15 ; [+19]
      150 GETUPVAL                         R14 1
      151 GETTABLEKS                       R14 R14 K27 ["createElement"]
      153 GETUPVAL                         R15 3
      154 DUPTABLE                         R16 K48 [{["size"], ["segments"], ["value"], ["onActivated"], ["LayoutOrder"] = 3}]
      155 GETTABLEKS                       R17 R0 K43 ["controls"]
      157 GETTABLEKS                       R17 R17 K36 ["size"]
      159 SETTABLEKS                       R17 R16 K36 ["size"]
      161 SETTABLEKS                       R3 R16 K37 ["segments"]
      163 SETTABLEKS                       R8 R16 K38 ["value"]
      165 SETTABLEKS                       R9 R16 K39 ["onActivated"]
      167 CALL                             R14 2 1
      168 JUMP                             ; [+1]
      169 LOADNIL                          R14
      170 SETTABLEKS                       R14 R13 K33 ["MixedSegments"]
      172 GETUPVAL                         R14 1
      173 GETTABLEKS                       R14 R14 K27 ["createElement"]
      175 GETUPVAL                         R15 2
      176 DUPTABLE                         R16 K50 [{["tag"] = "col auto-y size-full-0"}]
      177 DUPTABLE                         R17 K54 [{"First", "TabsComponent", "Last"}]
      178 GETUPVAL                         R18 1
      179 GETTABLEKS                       R18 R18 K27 ["createElement"]
      181 GETUPVAL                         R19 5
      182 DUPTABLE                         R20 K58 [{["LayoutOrder"] = 1, ["Text"] = "I go first!", ["Size"]}]
      183 GETIMPORT                        R21 K61 [UDim2.fromOffset]
      185 LOADN                            R22 50
      186 LOADN                            R23 50
      187 CALL                             R21 2 1
      188 SETTABLEKS                       R21 R20 K57 ["Size"]
      190 CALL                             R18 2 1
      191 SETTABLEKS                       R18 R17 K51 ["First"]
      193 GETUPVAL                         R18 1
      194 GETTABLEKS                       R18 R18 K27 ["createElement"]
      196 GETUPVAL                         R19 3
      197 DUPTABLE                         R20 K62 [{["LayoutOrder"] = 2, ["size"], ["segments"], ["value"], ["onActivated"]}]
      198 GETTABLEKS                       R21 R0 K43 ["controls"]
      200 GETTABLEKS                       R21 R21 K36 ["size"]
      202 SETTABLEKS                       R21 R20 K36 ["size"]
      204 SETTABLEKS                       R1 R20 K37 ["segments"]
      206 SETTABLEKS                       R8 R20 K38 ["value"]
      208 SETTABLEKS                       R9 R20 K39 ["onActivated"]
      210 CALL                             R18 2 1
      211 SETTABLEKS                       R18 R17 K52 ["TabsComponent"]
      213 GETUPVAL                         R18 1
      214 GETTABLEKS                       R18 R18 K27 ["createElement"]
      216 GETUPVAL                         R19 5
      217 DUPTABLE                         R20 K64 [{["LayoutOrder"] = 3, ["Text"] = "I go last!", ["Size"]}]
      218 GETIMPORT                        R21 K61 [UDim2.fromOffset]
      220 LOADN                            R22 50
      221 LOADN                            R23 50
      222 CALL                             R21 2 1
      223 SETTABLEKS                       R21 R20 K57 ["Size"]
      225 CALL                             R18 2 1
      226 SETTABLEKS                       R18 R17 K53 ["Last"]
      228 CALL                             R14 3 1
      229 SETTABLEKS                       R14 R13 K34 ["SegmentsAsChild"]
      231 CALL                             R10 3 -1
      232 RETURN                           R10 -1

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
       78 DUPTABLE                         R13 K25 [{"size"}]
       79 GETTABLEKS                       R14 R3 K26 ["values"]
       81 MOVE                             R15 R6
       82 CALL                             R14 1 1
       83 SETTABLEKS                       R14 R13 K24 ["size"]
       85 SETTABLEKS                       R13 R12 K22 ["controls"]
       87 RETURN                           R12 1
