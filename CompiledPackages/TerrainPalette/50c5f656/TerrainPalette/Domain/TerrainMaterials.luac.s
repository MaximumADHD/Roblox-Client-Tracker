PROTO_0:
        0 LOADB                            R1 0
        1 LOADN                            R2 0
        2 JUMPIFNOTLE                      R2 R0 ; [+7]
        4 GETUPVAL                         R3 0
        5 LENGTH                           R2 R3
        6 JUMPIFLT                         R0 R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+6]
        3 GETIMPORT                        R1 K2 [Color3.fromRGB]
        5 LOADN                            R2 163
        6 LOADN                            R3 162
        7 LOADN                            R4 165
        8 CALL                             R1 3 1
        9 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 DUPTABLE                         R8 K6 [{[1], ["material"], ["variant"] = , ["name"], ["color"]}]
        7 SUBK                             R9 R4 K7 [1]
        8 SETTABLEKS                       R9 R8 K0 ["slotIndex"]
       10 SETTABLEKS                       R5 R8 K1 ["material"]
       12 GETTABLEKS                       R9 R5 K8 ["Name"]
       14 SETTABLEKS                       R9 R8 K4 ["name"]
       16 GETUPVAL                         R9 1
       17 GETTABLEKS                       R9 R9 K9 ["getColor"]
       19 MOVE                             R10 R5
       20 CALL                             R9 1 1
       21 SETTABLEKS                       R9 R8 K5 ["color"]
       23 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       25 MOVE                             R7 R0
       26 GETIMPORT                        R6 K12 [table.insert]
       28 CALL                             R6 2 0
       29 FORGLOOP                         R1 2 ; [-24]
       31 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Domain"]
       11 GETTABLEKS                       R2 R2 K7 ["TerrainMaterialTypes"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 0 23
       16 GETIMPORT                        R3 K11 [Enum.Material.Air]
       18 GETIMPORT                        R4 K13 [Enum.Material.Water]
       20 GETIMPORT                        R5 K15 [Enum.Material.Asphalt]
       22 GETIMPORT                        R6 K17 [Enum.Material.Basalt]
       24 GETIMPORT                        R7 K19 [Enum.Material.Brick]
       26 GETIMPORT                        R8 K21 [Enum.Material.Cobblestone]
       28 GETIMPORT                        R9 K23 [Enum.Material.Concrete]
       30 GETIMPORT                        R10 K25 [Enum.Material.CrackedLava]
       32 GETIMPORT                        R11 K27 [Enum.Material.Glacier]
       34 GETIMPORT                        R12 K29 [Enum.Material.Grass]
       36 GETIMPORT                        R13 K31 [Enum.Material.Ground]
       38 GETIMPORT                        R14 K33 [Enum.Material.Ice]
       40 GETIMPORT                        R15 K35 [Enum.Material.LeafyGrass]
       42 GETIMPORT                        R16 K37 [Enum.Material.Limestone]
       44 GETIMPORT                        R17 K39 [Enum.Material.Mud]
       46 GETIMPORT                        R18 K41 [Enum.Material.Pavement]
       48 SETLIST                          R2 R3 16 [1]
       50 GETIMPORT                        R3 K43 [Enum.Material.Rock]
       52 GETIMPORT                        R4 K45 [Enum.Material.Salt]
       54 GETIMPORT                        R5 K47 [Enum.Material.Sand]
       56 GETIMPORT                        R6 K49 [Enum.Material.Sandstone]
       58 GETIMPORT                        R7 K51 [Enum.Material.Slate]
       60 GETIMPORT                        R8 K53 [Enum.Material.Snow]
       62 GETIMPORT                        R9 K55 [Enum.Material.WoodPlanks]
       64 SETLIST                          R2 R3 7 [17]
       66 NEWTABLE                         R3 32 0
       68 GETIMPORT                        R4 K15 [Enum.Material.Asphalt]
       70 GETIMPORT                        R5 K58 [Color3.fromRGB]
       72 LOADN                            R6 55
       73 LOADN                            R7 56
       74 LOADN                            R8 56
       75 CALL                             R5 3 1
       76 SETTABLE                         R5 R3 R4
       77 GETIMPORT                        R4 K17 [Enum.Material.Basalt]
       79 GETIMPORT                        R5 K58 [Color3.fromRGB]
       81 LOADN                            R6 43
       82 LOADN                            R7 44
       83 LOADN                            R8 35
       84 CALL                             R5 3 1
       85 SETTABLE                         R5 R3 R4
       86 GETIMPORT                        R4 K19 [Enum.Material.Brick]
       88 GETIMPORT                        R5 K58 [Color3.fromRGB]
       90 LOADN                            R6 121
       91 LOADN                            R7 86
       92 LOADN                            R8 70
       93 CALL                             R5 3 1
       94 SETTABLE                         R5 R3 R4
       95 GETIMPORT                        R4 K21 [Enum.Material.Cobblestone]
       97 GETIMPORT                        R5 K58 [Color3.fromRGB]
       99 LOADN                            R6 101
      100 LOADN                            R7 92
      101 LOADN                            R8 63
      102 CALL                             R5 3 1
      103 SETTABLE                         R5 R3 R4
      104 GETIMPORT                        R4 K23 [Enum.Material.Concrete]
      106 GETIMPORT                        R5 K58 [Color3.fromRGB]
      108 LOADN                            R6 107
      109 LOADN                            R7 103
      110 LOADN                            R8 98
      111 CALL                             R5 3 1
      112 SETTABLE                         R5 R3 R4
      113 GETIMPORT                        R4 K25 [Enum.Material.CrackedLava]
      115 GETIMPORT                        R5 K58 [Color3.fromRGB]
      117 LOADN                            R6 67
      118 LOADN                            R7 39
      119 LOADN                            R8 41
      120 CALL                             R5 3 1
      121 SETTABLE                         R5 R3 R4
      122 GETIMPORT                        R4 K27 [Enum.Material.Glacier]
      124 GETIMPORT                        R5 K58 [Color3.fromRGB]
      126 LOADN                            R6 175
      127 LOADN                            R7 217
      128 LOADN                            R8 228
      129 CALL                             R5 3 1
      130 SETTABLE                         R5 R3 R4
      131 GETIMPORT                        R4 K29 [Enum.Material.Grass]
      133 GETIMPORT                        R5 K58 [Color3.fromRGB]
      135 LOADN                            R6 71
      136 LOADN                            R7 77
      137 LOADN                            R8 37
      138 CALL                             R5 3 1
      139 SETTABLE                         R5 R3 R4
      140 GETIMPORT                        R4 K31 [Enum.Material.Ground]
      142 GETIMPORT                        R5 K58 [Color3.fromRGB]
      144 LOADN                            R6 74
      145 LOADN                            R7 67
      146 LOADN                            R8 46
      147 CALL                             R5 3 1
      148 SETTABLE                         R5 R3 R4
      149 GETIMPORT                        R4 K33 [Enum.Material.Ice]
      151 GETIMPORT                        R5 K58 [Color3.fromRGB]
      153 LOADN                            R6 195
      154 LOADN                            R7 224
      155 LOADN                            R8 239
      156 CALL                             R5 3 1
      157 SETTABLE                         R5 R3 R4
      158 GETIMPORT                        R4 K35 [Enum.Material.LeafyGrass]
      160 GETIMPORT                        R5 K58 [Color3.fromRGB]
      162 LOADN                            R6 74
      163 LOADN                            R7 72
      164 LOADN                            R8 35
      165 CALL                             R5 3 1
      166 SETTABLE                         R5 R3 R4
      167 GETIMPORT                        R4 K37 [Enum.Material.Limestone]
      169 GETIMPORT                        R5 K58 [Color3.fromRGB]
      171 LOADN                            R6 217
      172 LOADN                            R7 185
      173 LOADN                            R8 142
      174 CALL                             R5 3 1
      175 SETTABLE                         R5 R3 R4
      176 GETIMPORT                        R4 K39 [Enum.Material.Mud]
      178 GETIMPORT                        R5 K58 [Color3.fromRGB]
      180 LOADN                            R6 83
      181 LOADN                            R7 73
      182 LOADN                            R8 57
      183 CALL                             R5 3 1
      184 SETTABLE                         R5 R3 R4
      185 GETIMPORT                        R4 K41 [Enum.Material.Pavement]
      187 GETIMPORT                        R5 K58 [Color3.fromRGB]
      189 LOADN                            R6 86
      190 LOADN                            R7 86
      191 LOADN                            R8 88
      192 CALL                             R5 3 1
      193 SETTABLE                         R5 R3 R4
      194 GETIMPORT                        R4 K43 [Enum.Material.Rock]
      196 GETIMPORT                        R5 K58 [Color3.fromRGB]
      198 LOADN                            R6 62
      199 LOADN                            R7 59
      200 LOADN                            R8 58
      201 CALL                             R5 3 1
      202 SETTABLE                         R5 R3 R4
      203 GETIMPORT                        R4 K45 [Enum.Material.Salt]
      205 GETIMPORT                        R5 K58 [Color3.fromRGB]
      207 LOADN                            R6 180
      208 LOADN                            R7 180
      209 LOADN                            R8 179
      210 CALL                             R5 3 1
      211 SETTABLE                         R5 R3 R4
      212 GETIMPORT                        R4 K47 [Enum.Material.Sand]
      214 GETIMPORT                        R5 K58 [Color3.fromRGB]
      216 LOADN                            R6 122
      217 LOADN                            R7 111
      218 LOADN                            R8 84
      219 CALL                             R5 3 1
      220 SETTABLE                         R5 R3 R4
      221 GETIMPORT                        R4 K49 [Enum.Material.Sandstone]
      223 GETIMPORT                        R5 K58 [Color3.fromRGB]
      225 LOADN                            R6 118
      226 LOADN                            R7 77
      227 LOADN                            R8 61
      228 CALL                             R5 3 1
      229 SETTABLE                         R5 R3 R4
      230 GETIMPORT                        R4 K51 [Enum.Material.Slate]
      232 GETIMPORT                        R5 K58 [Color3.fromRGB]
      234 LOADN                            R6 118
      235 LOADN                            R7 126
      236 LOADN                            R8 142
      237 CALL                             R5 3 1
      238 SETTABLE                         R5 R3 R4
      239 GETIMPORT                        R4 K53 [Enum.Material.Snow]
      241 GETIMPORT                        R5 K58 [Color3.fromRGB]
      243 LOADN                            R6 179
      244 LOADN                            R7 185
      245 LOADN                            R8 195
      246 CALL                             R5 3 1
      247 SETTABLE                         R5 R3 R4
      248 GETIMPORT                        R4 K13 [Enum.Material.Water]
      250 GETIMPORT                        R5 K58 [Color3.fromRGB]
      252 LOADN                            R6 74
      253 LOADN                            R7 99
      254 LOADN                            R8 135
      255 CALL                             R5 3 1
      256 SETTABLE                         R5 R3 R4
      257 GETIMPORT                        R4 K55 [Enum.Material.WoodPlanks]
      259 GETIMPORT                        R5 K58 [Color3.fromRGB]
      261 LOADN                            R6 126
      262 LOADN                            R7 99
      263 LOADN                            R8 68
      264 CALL                             R5 3 1
      265 SETTABLE                         R5 R3 R4
      266 NEWTABLE                         R4 4 0
      268 SETTABLEKS                       R2 R4 K59 ["materials"]
      270 DUPCLOSURE                       R5 K60 [PROTO_0]
      271 CAPTURE                          VAL R2
      272 SETTABLEKS                       R5 R4 K61 ["isDefaultSlotIndex"]
      274 DUPCLOSURE                       R5 K62 [PROTO_1]
      275 CAPTURE                          VAL R3
      276 SETTABLEKS                       R5 R4 K63 ["getColor"]
      278 DUPCLOSURE                       R5 K64 [PROTO_2]
      279 CAPTURE                          VAL R2
      280 CAPTURE                          VAL R4
      281 MOVE                             R6 R5
      282 CALL                             R6 0 1
      283 SETTABLEKS                       R6 R4 K65 ["materialEntries"]
      285 RETURN                           R4 1
