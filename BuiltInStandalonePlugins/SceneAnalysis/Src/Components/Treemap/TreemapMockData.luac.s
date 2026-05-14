PROTO_0:
        0 NEWTABLE                         R1 0 4
        2 DUPTABLE                         R2 K2 [{"name", "size"}]
        3 LOADK                            R3 K3 ["Texture1"]
        4 SETTABLEKS                       R3 R2 K0 ["name"]
        6 LOADN                            R3 10
        7 SETTABLEKS                       R3 R2 K1 ["size"]
        9 DUPTABLE                         R3 K2 [{"name", "size"}]
       10 LOADK                            R4 K4 ["Texture2"]
       11 SETTABLEKS                       R4 R3 K0 ["name"]
       13 LOADN                            R4 20
       14 SETTABLEKS                       R4 R3 K1 ["size"]
       16 DUPTABLE                         R4 K2 [{"name", "size"}]
       17 LOADK                            R5 K5 ["Texture3"]
       18 SETTABLEKS                       R5 R4 K0 ["name"]
       20 LOADN                            R5 30
       21 SETTABLEKS                       R5 R4 K1 ["size"]
       23 DUPTABLE                         R5 K7 [{"name", "size", "children"}]
       24 LOADK                            R6 K8 ["SomeModel"]
       25 SETTABLEKS                       R6 R5 K0 ["name"]
       27 LOADN                            R6 0
       28 SETTABLEKS                       R6 R5 K1 ["size"]
       30 NEWTABLE                         R6 0 9
       32 DUPTABLE                         R7 K2 [{"name", "size"}]
       33 LOADK                            R8 K9 ["bbox1"]
       34 SETTABLEKS                       R8 R7 K0 ["name"]
       36 LOADN                            R8 10
       37 SETTABLEKS                       R8 R7 K1 ["size"]
       39 DUPTABLE                         R8 K2 [{"name", "size"}]
       40 LOADK                            R9 K10 ["bbox2"]
       41 SETTABLEKS                       R9 R8 K0 ["name"]
       43 LOADN                            R9 3
       44 SETTABLEKS                       R9 R8 K1 ["size"]
       46 DUPTABLE                         R9 K2 [{"name", "size"}]
       47 LOADK                            R10 K11 ["bbox3"]
       48 SETTABLEKS                       R10 R9 K0 ["name"]
       50 LOADN                            R10 3
       51 SETTABLEKS                       R10 R9 K1 ["size"]
       53 DUPTABLE                         R10 K2 [{"name", "size"}]
       54 LOADK                            R11 K12 ["bbox4"]
       55 SETTABLEKS                       R11 R10 K0 ["name"]
       57 LOADN                            R11 3
       58 SETTABLEKS                       R11 R10 K1 ["size"]
       60 DUPTABLE                         R11 K2 [{"name", "size"}]
       61 LOADK                            R12 K13 ["bbox5"]
       62 SETTABLEKS                       R12 R11 K0 ["name"]
       64 LOADN                            R12 3
       65 SETTABLEKS                       R12 R11 K1 ["size"]
       67 DUPTABLE                         R12 K2 [{"name", "size"}]
       68 LOADK                            R13 K14 ["bbox6"]
       69 SETTABLEKS                       R13 R12 K0 ["name"]
       71 LOADN                            R13 3
       72 SETTABLEKS                       R13 R12 K1 ["size"]
       74 DUPTABLE                         R13 K2 [{"name", "size"}]
       75 LOADK                            R14 K15 ["bbox7"]
       76 SETTABLEKS                       R14 R13 K0 ["name"]
       78 LOADN                            R14 3
       79 SETTABLEKS                       R14 R13 K1 ["size"]
       81 DUPTABLE                         R14 K2 [{"name", "size"}]
       82 LOADK                            R15 K16 ["bbox8"]
       83 SETTABLEKS                       R15 R14 K0 ["name"]
       85 LOADN                            R15 3
       86 SETTABLEKS                       R15 R14 K1 ["size"]
       88 DUPTABLE                         R15 K2 [{"name", "size"}]
       89 LOADK                            R16 K17 ["bbox9"]
       90 SETTABLEKS                       R16 R15 K0 ["name"]
       92 LOADN                            R16 3
       93 SETTABLEKS                       R16 R15 K1 ["size"]
       95 SETLIST                          R6 R7 9 [1]
       97 SETTABLEKS                       R6 R5 K6 ["children"]
       99 SETLIST                          R1 R2 4 [1]
      101 NEWTABLE                         R2 0 5
      103 DUPTABLE                         R3 K7 [{"name", "size", "children"}]
      104 LOADK                            R4 K18 ["Textures"]
      105 SETTABLEKS                       R4 R3 K0 ["name"]
      107 LOADN                            R4 0
      108 SETTABLEKS                       R4 R3 K1 ["size"]
      110 SETTABLEKS                       R1 R3 K6 ["children"]
      112 DUPTABLE                         R4 K7 [{"name", "size", "children"}]
      113 LOADK                            R5 K19 ["Animations"]
      114 SETTABLEKS                       R5 R4 K0 ["name"]
      116 LOADN                            R5 0
      117 SETTABLEKS                       R5 R4 K1 ["size"]
      119 NEWTABLE                         R5 0 9
      121 DUPTABLE                         R6 K2 [{"name", "size"}]
      122 LOADK                            R7 K20 ["Run"]
      123 SETTABLEKS                       R7 R6 K0 ["name"]
      125 LOADN                            R7 10
      126 SETTABLEKS                       R7 R6 K1 ["size"]
      128 DUPTABLE                         R7 K2 [{"name", "size"}]
      129 LOADK                            R8 K21 ["Jump"]
      130 SETTABLEKS                       R8 R7 K0 ["name"]
      132 LOADN                            R8 20
      133 SETTABLEKS                       R8 R7 K1 ["size"]
      135 DUPTABLE                         R8 K2 [{"name", "size"}]
      136 LOADK                            R9 K22 ["Dive"]
      137 SETTABLEKS                       R9 R8 K0 ["name"]
      139 LOADN                            R9 30
      140 SETTABLEKS                       R9 R8 K1 ["size"]
      142 DUPTABLE                         R9 K2 [{"name", "size"}]
      143 LOADK                            R10 K23 ["Wave1"]
      144 SETTABLEKS                       R10 R9 K0 ["name"]
      146 LOADN                            R10 5
      147 SETTABLEKS                       R10 R9 K1 ["size"]
      149 DUPTABLE                         R10 K2 [{"name", "size"}]
      150 LOADK                            R11 K24 ["Wave2"]
      151 SETTABLEKS                       R11 R10 K0 ["name"]
      153 LOADN                            R11 5
      154 SETTABLEKS                       R11 R10 K1 ["size"]
      156 DUPTABLE                         R11 K2 [{"name", "size"}]
      157 LOADK                            R12 K25 ["Dance1"]
      158 SETTABLEKS                       R12 R11 K0 ["name"]
      160 LOADN                            R12 3
      161 SETTABLEKS                       R12 R11 K1 ["size"]
      163 DUPTABLE                         R12 K2 [{"name", "size"}]
      164 LOADK                            R13 K26 ["Dance2"]
      165 SETTABLEKS                       R13 R12 K0 ["name"]
      167 LOADN                            R13 3
      168 SETTABLEKS                       R13 R12 K1 ["size"]
      170 DUPTABLE                         R13 K2 [{"name", "size"}]
      171 LOADK                            R14 K27 ["Idle1"]
      172 SETTABLEKS                       R14 R13 K0 ["name"]
      174 LOADN                            R14 3
      175 SETTABLEKS                       R14 R13 K1 ["size"]
      177 DUPTABLE                         R14 K2 [{"name", "size"}]
      178 LOADK                            R15 K28 ["Idle2"]
      179 SETTABLEKS                       R15 R14 K0 ["name"]
      181 LOADN                            R15 3
      182 SETTABLEKS                       R15 R14 K1 ["size"]
      184 SETLIST                          R5 R6 9 [1]
      186 SETTABLEKS                       R5 R4 K6 ["children"]
      188 DUPTABLE                         R5 K2 [{"name", "size"}]
      189 LOADK                            R6 K29 ["Sounds"]
      190 SETTABLEKS                       R6 R5 K0 ["name"]
      192 LOADN                            R6 50
      193 SETTABLEKS                       R6 R5 K1 ["size"]
      195 DUPTABLE                         R6 K2 [{"name", "size"}]
      196 LOADK                            R7 K30 ["Parts"]
      197 SETTABLEKS                       R7 R6 K0 ["name"]
      199 LOADN                            R7 20
      200 SETTABLEKS                       R7 R6 K1 ["size"]
      202 DUPTABLE                         R7 K7 [{"name", "size", "children"}]
      203 LOADK                            R8 K31 ["Meshes"]
      204 SETTABLEKS                       R8 R7 K0 ["name"]
      206 LOADN                            R8 0
      207 SETTABLEKS                       R8 R7 K1 ["size"]
      209 NEWTABLE                         R8 0 2
      211 DUPTABLE                         R9 K2 [{"name", "size"}]
      212 LOADK                            R10 K32 ["Big"]
      213 SETTABLEKS                       R10 R9 K0 ["name"]
      215 LOADN                            R10 15
      216 SETTABLEKS                       R10 R9 K1 ["size"]
      218 DUPTABLE                         R10 K2 [{"name", "size"}]
      219 LOADK                            R11 K33 ["Little"]
      220 SETTABLEKS                       R11 R10 K0 ["name"]
      222 LOADN                            R11 5
      223 SETTABLEKS                       R11 R10 K1 ["size"]
      225 SETLIST                          R8 R9 2 [1]
      227 SETTABLEKS                       R8 R7 K6 ["children"]
      229 SETLIST                          R2 R3 5 [1]
      231 DUPTABLE                         R3 K7 [{"name", "size", "children"}]
      232 LOADK                            R4 K34 ["Memory"]
      233 SETTABLEKS                       R4 R3 K0 ["name"]
      235 LOADN                            R4 0
      236 SETTABLEKS                       R4 R3 K1 ["size"]
      238 SETTABLEKS                       R2 R3 K6 ["children"]
      240 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["SceneAnalysis"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Src"]
       13 GETTABLEKS                       R3 R3 K7 ["Components"]
       15 GETTABLEKS                       R3 R3 K8 ["Treemap"]
       17 GETTABLEKS                       R3 R3 K9 ["TreemapTypes"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K10 [PROTO_0]
       21 SETTABLEKS                       R3 R0 K11 ["GetData1"]
       23 RETURN                           R0 1
