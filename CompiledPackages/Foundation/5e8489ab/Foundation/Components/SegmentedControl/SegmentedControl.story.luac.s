PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R3 1
        4 GETTABLEN                        R2 R3 1
        5 GETTABLEKS                       R2 R2 K1 ["id"]
        7 CALL                             R1 1 2
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["useState"]
       11 GETUPVAL                         R5 2
       12 GETTABLEN                        R4 R5 1
       13 GETTABLEKS                       R4 R4 K1 ["id"]
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K0 ["useState"]
       19 GETUPVAL                         R7 3
       20 GETTABLEN                        R6 R7 1
       21 GETTABLEKS                       R6 R6 K1 ["id"]
       23 CALL                             R5 1 2
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K2 ["createElement"]
       27 GETUPVAL                         R8 4
       28 DUPTABLE                         R9 K4 [{"tag"}]
       29 LOADK                            R10 K5 ["col auto-xy gap-small"]
       30 SETTABLEKS                       R10 R9 K3 ["tag"]
       32 DUPTABLE                         R10 K10 [{"TextSegments", "IconSegments", "MixedSegments", "SegmentsAsChild"}]
       33 GETUPVAL                         R11 0
       34 GETTABLEKS                       R11 R11 K2 ["createElement"]
       36 GETUPVAL                         R12 5
       37 DUPTABLE                         R13 K16 [{"size", "segments", "value", "onActivated", "LayoutOrder"}]
       38 GETTABLEKS                       R14 R0 K17 ["controls"]
       40 GETTABLEKS                       R14 R14 K11 ["size"]
       42 SETTABLEKS                       R14 R13 K11 ["size"]
       44 GETUPVAL                         R14 1
       45 SETTABLEKS                       R14 R13 K12 ["segments"]
       47 SETTABLEKS                       R1 R13 K13 ["value"]
       49 SETTABLEKS                       R2 R13 K14 ["onActivated"]
       51 LOADN                            R14 1
       52 SETTABLEKS                       R14 R13 K15 ["LayoutOrder"]
       54 CALL                             R11 2 1
       55 SETTABLEKS                       R11 R10 K6 ["TextSegments"]
       57 GETUPVAL                         R12 6
       58 GETTABLEKS                       R12 R12 K18 ["FoundationSegmentedControlIconSupport"]
       60 JUMPIFNOT                        R12 ; [+23]
       61 GETUPVAL                         R11 0
       62 GETTABLEKS                       R11 R11 K2 ["createElement"]
       64 GETUPVAL                         R12 5
       65 DUPTABLE                         R13 K16 [{"size", "segments", "value", "onActivated", "LayoutOrder"}]
       66 GETTABLEKS                       R14 R0 K17 ["controls"]
       68 GETTABLEKS                       R14 R14 K11 ["size"]
       70 SETTABLEKS                       R14 R13 K11 ["size"]
       72 GETUPVAL                         R14 2
       73 SETTABLEKS                       R14 R13 K12 ["segments"]
       75 SETTABLEKS                       R3 R13 K13 ["value"]
       77 SETTABLEKS                       R4 R13 K14 ["onActivated"]
       79 LOADN                            R14 2
       80 SETTABLEKS                       R14 R13 K15 ["LayoutOrder"]
       82 CALL                             R11 2 1
       83 JUMP                             ; [+1]
       84 LOADNIL                          R11
       85 SETTABLEKS                       R11 R10 K7 ["IconSegments"]
       87 GETUPVAL                         R12 6
       88 GETTABLEKS                       R12 R12 K18 ["FoundationSegmentedControlIconSupport"]
       90 JUMPIFNOT                        R12 ; [+23]
       91 GETUPVAL                         R11 0
       92 GETTABLEKS                       R11 R11 K2 ["createElement"]
       94 GETUPVAL                         R12 5
       95 DUPTABLE                         R13 K16 [{"size", "segments", "value", "onActivated", "LayoutOrder"}]
       96 GETTABLEKS                       R14 R0 K17 ["controls"]
       98 GETTABLEKS                       R14 R14 K11 ["size"]
      100 SETTABLEKS                       R14 R13 K11 ["size"]
      102 GETUPVAL                         R14 3
      103 SETTABLEKS                       R14 R13 K12 ["segments"]
      105 SETTABLEKS                       R5 R13 K13 ["value"]
      107 SETTABLEKS                       R6 R13 K14 ["onActivated"]
      109 LOADN                            R14 3
      110 SETTABLEKS                       R14 R13 K15 ["LayoutOrder"]
      112 CALL                             R11 2 1
      113 JUMP                             ; [+1]
      114 LOADNIL                          R11
      115 SETTABLEKS                       R11 R10 K8 ["MixedSegments"]
      117 GETUPVAL                         R11 0
      118 GETTABLEKS                       R11 R11 K2 ["createElement"]
      120 GETUPVAL                         R12 4
      121 DUPTABLE                         R13 K4 [{"tag"}]
      122 LOADK                            R14 K19 ["col auto-y size-full-0"]
      123 SETTABLEKS                       R14 R13 K3 ["tag"]
      125 DUPTABLE                         R14 K23 [{"First", "TabsComponent", "Last"}]
      126 GETUPVAL                         R15 0
      127 GETTABLEKS                       R15 R15 K2 ["createElement"]
      129 GETUPVAL                         R16 7
      130 DUPTABLE                         R17 K26 [{"LayoutOrder", "Text", "Size"}]
      131 LOADN                            R18 1
      132 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      134 LOADK                            R18 K27 ["I go first!"]
      135 SETTABLEKS                       R18 R17 K24 ["Text"]
      137 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      139 LOADN                            R19 50
      140 LOADN                            R20 50
      141 CALL                             R18 2 1
      142 SETTABLEKS                       R18 R17 K25 ["Size"]
      144 CALL                             R15 2 1
      145 SETTABLEKS                       R15 R14 K20 ["First"]
      147 GETUPVAL                         R15 0
      148 GETTABLEKS                       R15 R15 K2 ["createElement"]
      150 GETUPVAL                         R16 5
      151 DUPTABLE                         R17 K31 [{"LayoutOrder", "size", "segments", "value", "onActivated"}]
      152 LOADN                            R18 2
      153 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      155 GETTABLEKS                       R18 R0 K17 ["controls"]
      157 GETTABLEKS                       R18 R18 K11 ["size"]
      159 SETTABLEKS                       R18 R17 K11 ["size"]
      161 GETUPVAL                         R18 1
      162 SETTABLEKS                       R18 R17 K12 ["segments"]
      164 SETTABLEKS                       R5 R17 K13 ["value"]
      166 SETTABLEKS                       R6 R17 K14 ["onActivated"]
      168 CALL                             R15 2 1
      169 SETTABLEKS                       R15 R14 K21 ["TabsComponent"]
      171 GETUPVAL                         R15 0
      172 GETTABLEKS                       R15 R15 K2 ["createElement"]
      174 GETUPVAL                         R16 7
      175 DUPTABLE                         R17 K26 [{"LayoutOrder", "Text", "Size"}]
      176 LOADN                            R18 3
      177 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      179 LOADK                            R18 K32 ["I go last!"]
      180 SETTABLEKS                       R18 R17 K24 ["Text"]
      182 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      184 LOADN                            R19 50
      185 LOADN                            R20 50
      186 CALL                             R18 2 1
      187 SETTABLEKS                       R18 R17 K25 ["Size"]
      189 CALL                             R15 2 1
      190 SETTABLEKS                       R15 R14 K22 ["Last"]
      192 CALL                             R11 3 1
      193 SETTABLEKS                       R11 R10 K9 ["SegmentsAsChild"]
      195 CALL                             R7 3 -1
      196 RETURN                           R7 -1

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
       68 NEWTABLE                         R11 0 5
       70 DUPTABLE                         R12 K21 [{"id", "text"}]
       71 LOADK                            R13 K22 ["1"]
       72 SETTABLEKS                       R13 R12 K19 ["id"]
       74 LOADK                            R13 K23 ["Lorem Ipsum"]
       75 SETTABLEKS                       R13 R12 K20 ["text"]
       77 DUPTABLE                         R13 K21 [{"id", "text"}]
       78 LOADK                            R14 K24 ["2"]
       79 SETTABLEKS                       R14 R13 K19 ["id"]
       81 LOADK                            R14 K23 ["Lorem Ipsum"]
       82 SETTABLEKS                       R14 R13 K20 ["text"]
       84 DUPTABLE                         R14 K21 [{"id", "text"}]
       85 LOADK                            R15 K25 ["3"]
       86 SETTABLEKS                       R15 R14 K19 ["id"]
       88 LOADK                            R15 K23 ["Lorem Ipsum"]
       89 SETTABLEKS                       R15 R14 K20 ["text"]
       91 DUPTABLE                         R15 K21 [{"id", "text"}]
       92 LOADK                            R16 K26 ["4"]
       93 SETTABLEKS                       R16 R15 K19 ["id"]
       95 LOADK                            R16 K23 ["Lorem Ipsum"]
       96 SETTABLEKS                       R16 R15 K20 ["text"]
       98 DUPTABLE                         R16 K21 [{"id", "text"}]
       99 LOADK                            R17 K27 ["5"]
      100 SETTABLEKS                       R17 R16 K19 ["id"]
      102 LOADK                            R17 K28 ["Lorem Ipsum Long"]
      103 SETTABLEKS                       R17 R16 K20 ["text"]
      105 SETLIST                          R11 R12 5 [1]
      107 NEWTABLE                         R12 0 3
      109 DUPTABLE                         R13 K30 [{"id", "icon"}]
      110 LOADK                            R14 K22 ["1"]
      111 SETTABLEKS                       R14 R13 K19 ["id"]
      113 DUPTABLE                         R14 K32 [{"name"}]
      114 GETTABLEKS                       R15 R2 K33 ["Icon"]
      116 GETTABLEKS                       R15 R15 K34 ["House"]
      118 SETTABLEKS                       R15 R14 K31 ["name"]
      120 SETTABLEKS                       R14 R13 K29 ["icon"]
      122 DUPTABLE                         R14 K30 [{"id", "icon"}]
      123 LOADK                            R15 K24 ["2"]
      124 SETTABLEKS                       R15 R14 K19 ["id"]
      126 DUPTABLE                         R15 K32 [{"name"}]
      127 GETTABLEKS                       R16 R2 K33 ["Icon"]
      129 GETTABLEKS                       R16 R16 K35 ["Gear"]
      131 SETTABLEKS                       R16 R15 K31 ["name"]
      133 SETTABLEKS                       R15 R14 K29 ["icon"]
      135 DUPTABLE                         R15 K30 [{"id", "icon"}]
      136 LOADK                            R16 K25 ["3"]
      137 SETTABLEKS                       R16 R15 K19 ["id"]
      139 DUPTABLE                         R16 K32 [{"name"}]
      140 GETTABLEKS                       R17 R2 K33 ["Icon"]
      142 GETTABLEKS                       R17 R17 K36 ["MagnifyingGlass"]
      144 SETTABLEKS                       R17 R16 K31 ["name"]
      146 SETTABLEKS                       R16 R15 K29 ["icon"]
      148 SETLIST                          R12 R13 3 [1]
      150 NEWTABLE                         R13 0 3
      152 DUPTABLE                         R14 K30 [{"id", "icon"}]
      153 LOADK                            R15 K22 ["1"]
      154 SETTABLEKS                       R15 R14 K19 ["id"]
      156 DUPTABLE                         R15 K32 [{"name"}]
      157 GETTABLEKS                       R16 R2 K33 ["Icon"]
      159 GETTABLEKS                       R16 R16 K34 ["House"]
      161 SETTABLEKS                       R16 R15 K31 ["name"]
      163 SETTABLEKS                       R15 R14 K29 ["icon"]
      165 DUPTABLE                         R15 K21 [{"id", "text"}]
      166 LOADK                            R16 K24 ["2"]
      167 SETTABLEKS                       R16 R15 K19 ["id"]
      169 LOADK                            R16 K37 ["Browse"]
      170 SETTABLEKS                       R16 R15 K20 ["text"]
      172 DUPTABLE                         R16 K30 [{"id", "icon"}]
      173 LOADK                            R17 K25 ["3"]
      174 SETTABLEKS                       R17 R16 K19 ["id"]
      176 DUPTABLE                         R17 K32 [{"name"}]
      177 GETTABLEKS                       R18 R2 K33 ["Icon"]
      179 GETTABLEKS                       R18 R18 K35 ["Gear"]
      181 SETTABLEKS                       R18 R17 K31 ["name"]
      183 SETTABLEKS                       R17 R16 K29 ["icon"]
      185 SETLIST                          R13 R14 3 [1]
      187 DUPCLOSURE                       R14 K38 [PROTO_0]
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R10
      193 CAPTURE                          VAL R8
      194 CAPTURE                          VAL R5
      195 CAPTURE                          VAL R9
      196 DUPTABLE                         R15 K42 [{"summary", "story", "controls"}]
      197 LOADK                            R16 K15 ["SegmentedControl"]
      198 SETTABLEKS                       R16 R15 K39 ["summary"]
      200 SETTABLEKS                       R14 R15 K40 ["story"]
      202 DUPTABLE                         R16 K44 [{"size"}]
      203 GETTABLEKS                       R17 R3 K45 ["values"]
      205 MOVE                             R18 R6
      206 CALL                             R17 1 1
      207 SETTABLEKS                       R17 R16 K43 ["size"]
      209 SETTABLEKS                       R16 R15 K41 ["controls"]
      211 RETURN                           R15 1
