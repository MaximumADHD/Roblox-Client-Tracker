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
       32 DUPTABLE                         R10 K9 [{"TextSegments", "IconSegments", "MixedSegments"}]
       33 GETUPVAL                         R11 0
       34 GETTABLEKS                       R11 R11 K2 ["createElement"]
       36 GETUPVAL                         R12 5
       37 DUPTABLE                         R13 K15 [{"size", "segments", "value", "onActivated", "LayoutOrder"}]
       38 GETTABLEKS                       R14 R0 K16 ["controls"]
       40 GETTABLEKS                       R14 R14 K10 ["size"]
       42 SETTABLEKS                       R14 R13 K10 ["size"]
       44 GETUPVAL                         R14 1
       45 SETTABLEKS                       R14 R13 K11 ["segments"]
       47 SETTABLEKS                       R1 R13 K12 ["value"]
       49 SETTABLEKS                       R2 R13 K13 ["onActivated"]
       51 LOADN                            R14 1
       52 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
       54 CALL                             R11 2 1
       55 SETTABLEKS                       R11 R10 K6 ["TextSegments"]
       57 GETUPVAL                         R12 6
       58 GETTABLEKS                       R12 R12 K17 ["FoundationSegmentedControlIconSupport"]
       60 JUMPIFNOT                        R12 ; [+23]
       61 GETUPVAL                         R11 0
       62 GETTABLEKS                       R11 R11 K2 ["createElement"]
       64 GETUPVAL                         R12 5
       65 DUPTABLE                         R13 K15 [{"size", "segments", "value", "onActivated", "LayoutOrder"}]
       66 GETTABLEKS                       R14 R0 K16 ["controls"]
       68 GETTABLEKS                       R14 R14 K10 ["size"]
       70 SETTABLEKS                       R14 R13 K10 ["size"]
       72 GETUPVAL                         R14 2
       73 SETTABLEKS                       R14 R13 K11 ["segments"]
       75 SETTABLEKS                       R3 R13 K12 ["value"]
       77 SETTABLEKS                       R4 R13 K13 ["onActivated"]
       79 LOADN                            R14 2
       80 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
       82 CALL                             R11 2 1
       83 JUMP                             ; [+1]
       84 LOADNIL                          R11
       85 SETTABLEKS                       R11 R10 K7 ["IconSegments"]
       87 GETUPVAL                         R12 6
       88 GETTABLEKS                       R12 R12 K17 ["FoundationSegmentedControlIconSupport"]
       90 JUMPIFNOT                        R12 ; [+23]
       91 GETUPVAL                         R11 0
       92 GETTABLEKS                       R11 R11 K2 ["createElement"]
       94 GETUPVAL                         R12 5
       95 DUPTABLE                         R13 K15 [{"size", "segments", "value", "onActivated", "LayoutOrder"}]
       96 GETTABLEKS                       R14 R0 K16 ["controls"]
       98 GETTABLEKS                       R14 R14 K10 ["size"]
      100 SETTABLEKS                       R14 R13 K10 ["size"]
      102 GETUPVAL                         R14 3
      103 SETTABLEKS                       R14 R13 K11 ["segments"]
      105 SETTABLEKS                       R5 R13 K12 ["value"]
      107 SETTABLEKS                       R6 R13 K13 ["onActivated"]
      109 LOADN                            R14 3
      110 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
      112 CALL                             R11 2 1
      113 JUMP                             ; [+1]
      114 LOADNIL                          R11
      115 SETTABLEKS                       R11 R10 K8 ["MixedSegments"]
      117 CALL                             R7 3 -1
      118 RETURN                           R7 -1

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
       58 GETTABLEKS                       R10 R10 K17 ["View"]
       60 CALL                             R9 1 1
       61 NEWTABLE                         R10 0 5
       63 DUPTABLE                         R11 K20 [{"id", "text"}]
       64 LOADK                            R12 K21 ["1"]
       65 SETTABLEKS                       R12 R11 K18 ["id"]
       67 LOADK                            R12 K22 ["Lorem Ipsum"]
       68 SETTABLEKS                       R12 R11 K19 ["text"]
       70 DUPTABLE                         R12 K20 [{"id", "text"}]
       71 LOADK                            R13 K23 ["2"]
       72 SETTABLEKS                       R13 R12 K18 ["id"]
       74 LOADK                            R13 K22 ["Lorem Ipsum"]
       75 SETTABLEKS                       R13 R12 K19 ["text"]
       77 DUPTABLE                         R13 K20 [{"id", "text"}]
       78 LOADK                            R14 K24 ["3"]
       79 SETTABLEKS                       R14 R13 K18 ["id"]
       81 LOADK                            R14 K22 ["Lorem Ipsum"]
       82 SETTABLEKS                       R14 R13 K19 ["text"]
       84 DUPTABLE                         R14 K20 [{"id", "text"}]
       85 LOADK                            R15 K25 ["4"]
       86 SETTABLEKS                       R15 R14 K18 ["id"]
       88 LOADK                            R15 K22 ["Lorem Ipsum"]
       89 SETTABLEKS                       R15 R14 K19 ["text"]
       91 DUPTABLE                         R15 K20 [{"id", "text"}]
       92 LOADK                            R16 K26 ["5"]
       93 SETTABLEKS                       R16 R15 K18 ["id"]
       95 LOADK                            R16 K27 ["Lorem Ipsum Long"]
       96 SETTABLEKS                       R16 R15 K19 ["text"]
       98 SETLIST                          R10 R11 5 [1]
      100 NEWTABLE                         R11 0 3
      102 DUPTABLE                         R12 K29 [{"id", "icon"}]
      103 LOADK                            R13 K21 ["1"]
      104 SETTABLEKS                       R13 R12 K18 ["id"]
      106 DUPTABLE                         R13 K31 [{"name"}]
      107 GETTABLEKS                       R14 R2 K32 ["Icon"]
      109 GETTABLEKS                       R14 R14 K33 ["House"]
      111 SETTABLEKS                       R14 R13 K30 ["name"]
      113 SETTABLEKS                       R13 R12 K28 ["icon"]
      115 DUPTABLE                         R13 K29 [{"id", "icon"}]
      116 LOADK                            R14 K23 ["2"]
      117 SETTABLEKS                       R14 R13 K18 ["id"]
      119 DUPTABLE                         R14 K31 [{"name"}]
      120 GETTABLEKS                       R15 R2 K32 ["Icon"]
      122 GETTABLEKS                       R15 R15 K34 ["Gear"]
      124 SETTABLEKS                       R15 R14 K30 ["name"]
      126 SETTABLEKS                       R14 R13 K28 ["icon"]
      128 DUPTABLE                         R14 K29 [{"id", "icon"}]
      129 LOADK                            R15 K24 ["3"]
      130 SETTABLEKS                       R15 R14 K18 ["id"]
      132 DUPTABLE                         R15 K31 [{"name"}]
      133 GETTABLEKS                       R16 R2 K32 ["Icon"]
      135 GETTABLEKS                       R16 R16 K35 ["MagnifyingGlass"]
      137 SETTABLEKS                       R16 R15 K30 ["name"]
      139 SETTABLEKS                       R15 R14 K28 ["icon"]
      141 SETLIST                          R11 R12 3 [1]
      143 NEWTABLE                         R12 0 3
      145 DUPTABLE                         R13 K29 [{"id", "icon"}]
      146 LOADK                            R14 K21 ["1"]
      147 SETTABLEKS                       R14 R13 K18 ["id"]
      149 DUPTABLE                         R14 K31 [{"name"}]
      150 GETTABLEKS                       R15 R2 K32 ["Icon"]
      152 GETTABLEKS                       R15 R15 K33 ["House"]
      154 SETTABLEKS                       R15 R14 K30 ["name"]
      156 SETTABLEKS                       R14 R13 K28 ["icon"]
      158 DUPTABLE                         R14 K20 [{"id", "text"}]
      159 LOADK                            R15 K23 ["2"]
      160 SETTABLEKS                       R15 R14 K18 ["id"]
      162 LOADK                            R15 K36 ["Browse"]
      163 SETTABLEKS                       R15 R14 K19 ["text"]
      165 DUPTABLE                         R15 K29 [{"id", "icon"}]
      166 LOADK                            R16 K24 ["3"]
      167 SETTABLEKS                       R16 R15 K18 ["id"]
      169 DUPTABLE                         R16 K31 [{"name"}]
      170 GETTABLEKS                       R17 R2 K32 ["Icon"]
      172 GETTABLEKS                       R17 R17 K34 ["Gear"]
      174 SETTABLEKS                       R17 R16 K30 ["name"]
      176 SETTABLEKS                       R16 R15 K28 ["icon"]
      178 SETLIST                          R12 R13 3 [1]
      180 DUPCLOSURE                       R13 K37 [PROTO_0]
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R10
      183 CAPTURE                          VAL R11
      184 CAPTURE                          VAL R12
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R5
      188 DUPTABLE                         R14 K41 [{"summary", "story", "controls"}]
      189 LOADK                            R15 K15 ["SegmentedControl"]
      190 SETTABLEKS                       R15 R14 K38 ["summary"]
      192 SETTABLEKS                       R13 R14 K39 ["story"]
      194 DUPTABLE                         R15 K43 [{"size"}]
      195 GETTABLEKS                       R16 R3 K44 ["values"]
      197 MOVE                             R17 R6
      198 CALL                             R16 1 1
      199 SETTABLEKS                       R16 R15 K42 ["size"]
      201 SETTABLEKS                       R15 R14 K40 ["controls"]
      203 RETURN                           R14 1
