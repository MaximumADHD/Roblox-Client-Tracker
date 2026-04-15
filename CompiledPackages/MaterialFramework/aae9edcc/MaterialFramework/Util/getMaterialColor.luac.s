PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETUPVAL                         R3 0
        4 GETTABLE                         R2 R3 R0
        5 RETURN                           R2 1
        6 GETIMPORT                        R3 K2 [BrickColor.new]
        8 LOADK                            R4 K3 ["Medium stone gray"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R2 R3 K4 ["Color"]
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 GETIMPORT                        R1 K3 [Enum.Material.Asphalt]
        5 GETIMPORT                        R2 K6 [Color3.fromRGB]
        7 LOADN                            R3 55
        8 LOADN                            R4 56
        9 LOADN                            R5 56
       10 CALL                             R2 3 1
       11 SETTABLE                         R2 R0 R1
       12 GETIMPORT                        R1 K8 [Enum.Material.Basalt]
       14 GETIMPORT                        R2 K6 [Color3.fromRGB]
       16 LOADN                            R3 43
       17 LOADN                            R4 44
       18 LOADN                            R5 35
       19 CALL                             R2 3 1
       20 SETTABLE                         R2 R0 R1
       21 GETIMPORT                        R1 K10 [Enum.Material.Brick]
       23 GETIMPORT                        R2 K6 [Color3.fromRGB]
       25 LOADN                            R3 121
       26 LOADN                            R4 86
       27 LOADN                            R5 70
       28 CALL                             R2 3 1
       29 SETTABLE                         R2 R0 R1
       30 GETIMPORT                        R1 K12 [Enum.Material.Cardboard]
       32 GETIMPORT                        R2 K6 [Color3.fromRGB]
       34 LOADN                            R3 255
       35 LOADN                            R4 206
       36 LOADN                            R5 152
       37 CALL                             R2 3 1
       38 SETTABLE                         R2 R0 R1
       39 GETIMPORT                        R1 K14 [Enum.Material.Carpet]
       41 GETIMPORT                        R2 K6 [Color3.fromRGB]
       43 LOADN                            R3 163
       44 LOADN                            R4 162
       45 LOADN                            R5 165
       46 CALL                             R2 3 1
       47 SETTABLE                         R2 R0 R1
       48 GETIMPORT                        R1 K16 [Enum.Material.CeramicTiles]
       50 GETIMPORT                        R2 K6 [Color3.fromRGB]
       52 LOADN                            R3 181
       53 LOADN                            R4 173
       54 LOADN                            R5 156
       55 CALL                             R2 3 1
       56 SETTABLE                         R2 R0 R1
       57 GETIMPORT                        R1 K18 [Enum.Material.ClayRoofTiles]
       59 GETIMPORT                        R2 K6 [Color3.fromRGB]
       61 LOADN                            R3 255
       62 LOADN                            R4 142
       63 LOADN                            R5 87
       64 CALL                             R2 3 1
       65 SETTABLE                         R2 R0 R1
       66 GETIMPORT                        R1 K20 [Enum.Material.Cobblestone]
       68 GETIMPORT                        R2 K6 [Color3.fromRGB]
       70 LOADN                            R3 101
       71 LOADN                            R4 92
       72 LOADN                            R5 63
       73 CALL                             R2 3 1
       74 SETTABLE                         R2 R0 R1
       75 GETIMPORT                        R1 K22 [Enum.Material.Concrete]
       77 GETIMPORT                        R2 K6 [Color3.fromRGB]
       79 LOADN                            R3 107
       80 LOADN                            R4 103
       81 LOADN                            R5 98
       82 CALL                             R2 3 1
       83 SETTABLE                         R2 R0 R1
       84 GETIMPORT                        R1 K24 [Enum.Material.CorrodedMetal]
       86 GETIMPORT                        R2 K6 [Color3.fromRGB]
       88 LOADN                            R3 147
       89 LOADN                            R4 106
       90 LOADN                            R5 88
       91 CALL                             R2 3 1
       92 SETTABLE                         R2 R0 R1
       93 GETIMPORT                        R1 K26 [Enum.Material.CrackedLava]
       95 GETIMPORT                        R2 K6 [Color3.fromRGB]
       97 LOADN                            R3 67
       98 LOADN                            R4 39
       99 LOADN                            R5 41
      100 CALL                             R2 3 1
      101 SETTABLE                         R2 R0 R1
      102 GETIMPORT                        R1 K28 [Enum.Material.DiamondPlate]
      104 GETIMPORT                        R2 K6 [Color3.fromRGB]
      106 LOADN                            R3 204
      107 LOADN                            R4 203
      108 LOADN                            R5 202
      109 CALL                             R2 3 1
      110 SETTABLE                         R2 R0 R1
      111 GETIMPORT                        R1 K30 [Enum.Material.Fabric]
      113 GETIMPORT                        R2 K6 [Color3.fromRGB]
      115 LOADN                            R3 145
      116 LOADN                            R4 137
      117 LOADN                            R5 129
      118 CALL                             R2 3 1
      119 SETTABLE                         R2 R0 R1
      120 GETIMPORT                        R1 K32 [Enum.Material.Foil]
      122 GETIMPORT                        R2 K6 [Color3.fromRGB]
      124 LOADN                            R3 236
      125 LOADN                            R4 236
      126 LOADN                            R5 236
      127 CALL                             R2 3 1
      128 SETTABLE                         R2 R0 R1
      129 GETIMPORT                        R1 K34 [Enum.Material.Glacier]
      131 GETIMPORT                        R2 K6 [Color3.fromRGB]
      133 LOADN                            R3 175
      134 LOADN                            R4 217
      135 LOADN                            R5 228
      136 CALL                             R2 3 1
      137 SETTABLE                         R2 R0 R1
      138 GETIMPORT                        R1 K36 [Enum.Material.Granite]
      140 GETIMPORT                        R2 K6 [Color3.fromRGB]
      142 LOADN                            R3 88
      143 LOADN                            R4 78
      144 LOADN                            R5 68
      145 CALL                             R2 3 1
      146 SETTABLE                         R2 R0 R1
      147 GETIMPORT                        R1 K38 [Enum.Material.Grass]
      149 GETIMPORT                        R2 K6 [Color3.fromRGB]
      151 LOADN                            R3 71
      152 LOADN                            R4 77
      153 LOADN                            R5 37
      154 CALL                             R2 3 1
      155 SETTABLE                         R2 R0 R1
      156 GETIMPORT                        R1 K40 [Enum.Material.Ground]
      158 GETIMPORT                        R2 K6 [Color3.fromRGB]
      160 LOADN                            R3 74
      161 LOADN                            R4 67
      162 LOADN                            R5 46
      163 CALL                             R2 3 1
      164 SETTABLE                         R2 R0 R1
      165 GETIMPORT                        R1 K42 [Enum.Material.Ice]
      167 GETIMPORT                        R2 K6 [Color3.fromRGB]
      169 LOADN                            R3 195
      170 LOADN                            R4 224
      171 LOADN                            R5 239
      172 CALL                             R2 3 1
      173 SETTABLE                         R2 R0 R1
      174 GETIMPORT                        R1 K44 [Enum.Material.LeafyGrass]
      176 GETIMPORT                        R2 K6 [Color3.fromRGB]
      178 LOADN                            R3 74
      179 LOADN                            R4 72
      180 LOADN                            R5 35
      181 CALL                             R2 3 1
      182 SETTABLE                         R2 R0 R1
      183 GETIMPORT                        R1 K46 [Enum.Material.Leather]
      185 GETIMPORT                        R2 K6 [Color3.fromRGB]
      187 LOADN                            R3 110
      188 LOADN                            R4 73
      189 LOADN                            R5 53
      190 CALL                             R2 3 1
      191 SETTABLE                         R2 R0 R1
      192 GETIMPORT                        R1 K48 [Enum.Material.Limestone]
      194 GETIMPORT                        R2 K6 [Color3.fromRGB]
      196 LOADN                            R3 217
      197 LOADN                            R4 185
      198 LOADN                            R5 142
      199 CALL                             R2 3 1
      200 SETTABLE                         R2 R0 R1
      201 GETIMPORT                        R1 K50 [Enum.Material.Marble]
      203 GETIMPORT                        R2 K6 [Color3.fromRGB]
      205 LOADN                            R3 168
      206 LOADN                            R4 171
      207 LOADN                            R5 181
      208 CALL                             R2 3 1
      209 SETTABLE                         R2 R0 R1
      210 GETIMPORT                        R1 K52 [Enum.Material.Metal]
      212 GETIMPORT                        R2 K6 [Color3.fromRGB]
      214 LOADN                            R3 192
      215 LOADN                            R4 192
      216 LOADN                            R5 192
      217 CALL                             R2 3 1
      218 SETTABLE                         R2 R0 R1
      219 GETIMPORT                        R1 K54 [Enum.Material.Mud]
      221 GETIMPORT                        R2 K6 [Color3.fromRGB]
      223 LOADN                            R3 83
      224 LOADN                            R4 73
      225 LOADN                            R5 57
      226 CALL                             R2 3 1
      227 SETTABLE                         R2 R0 R1
      228 GETIMPORT                        R1 K56 [Enum.Material.Pavement]
      230 GETIMPORT                        R2 K6 [Color3.fromRGB]
      232 LOADN                            R3 86
      233 LOADN                            R4 86
      234 LOADN                            R5 88
      235 CALL                             R2 3 1
      236 SETTABLE                         R2 R0 R1
      237 GETIMPORT                        R1 K58 [Enum.Material.Pebble]
      239 GETIMPORT                        R2 K6 [Color3.fromRGB]
      241 LOADN                            R3 134
      242 LOADN                            R4 134
      243 LOADN                            R5 129
      244 CALL                             R2 3 1
      245 SETTABLE                         R2 R0 R1
      246 GETIMPORT                        R1 K60 [Enum.Material.Plaster]
      248 GETIMPORT                        R2 K6 [Color3.fromRGB]
      250 LOADN                            R3 204
      251 LOADN                            R4 142
      252 LOADN                            R5 105
      253 CALL                             R2 3 1
      254 SETTABLE                         R2 R0 R1
      255 GETIMPORT                        R1 K62 [Enum.Material.Rock]
      257 GETIMPORT                        R2 K6 [Color3.fromRGB]
      259 LOADN                            R3 62
      260 LOADN                            R4 59
      261 LOADN                            R5 58
      262 CALL                             R2 3 1
      263 SETTABLE                         R2 R0 R1
      264 GETIMPORT                        R1 K64 [Enum.Material.RoofShingles]
      266 GETIMPORT                        R2 K6 [Color3.fromRGB]
      268 LOADN                            R3 66
      269 LOADN                            R4 66
      270 LOADN                            R5 66
      271 CALL                             R2 3 1
      272 SETTABLE                         R2 R0 R1
      273 GETIMPORT                        R1 K66 [Enum.Material.Rubber]
      275 GETIMPORT                        R2 K6 [Color3.fromRGB]
      277 LOADN                            R3 32
      278 LOADN                            R4 32
      279 LOADN                            R5 32
      280 CALL                             R2 3 1
      281 SETTABLE                         R2 R0 R1
      282 GETIMPORT                        R1 K68 [Enum.Material.Salt]
      284 GETIMPORT                        R2 K6 [Color3.fromRGB]
      286 LOADN                            R3 180
      287 LOADN                            R4 180
      288 LOADN                            R5 179
      289 CALL                             R2 3 1
      290 SETTABLE                         R2 R0 R1
      291 GETIMPORT                        R1 K70 [Enum.Material.Sand]
      293 GETIMPORT                        R2 K6 [Color3.fromRGB]
      295 LOADN                            R3 122
      296 LOADN                            R4 111
      297 LOADN                            R5 84
      298 CALL                             R2 3 1
      299 SETTABLE                         R2 R0 R1
      300 GETIMPORT                        R1 K72 [Enum.Material.Sandstone]
      302 GETIMPORT                        R2 K6 [Color3.fromRGB]
      304 LOADN                            R3 118
      305 LOADN                            R4 77
      306 LOADN                            R5 61
      307 CALL                             R2 3 1
      308 SETTABLE                         R2 R0 R1
      309 GETIMPORT                        R1 K74 [Enum.Material.Slate]
      311 GETIMPORT                        R2 K6 [Color3.fromRGB]
      313 LOADN                            R3 118
      314 LOADN                            R4 126
      315 LOADN                            R5 142
      316 CALL                             R2 3 1
      317 SETTABLE                         R2 R0 R1
      318 GETIMPORT                        R1 K76 [Enum.Material.Snow]
      320 GETIMPORT                        R2 K6 [Color3.fromRGB]
      322 LOADN                            R3 179
      323 LOADN                            R4 185
      324 LOADN                            R5 195
      325 CALL                             R2 3 1
      326 SETTABLE                         R2 R0 R1
      327 GETIMPORT                        R1 K78 [Enum.Material.Wood]
      329 GETIMPORT                        R2 K6 [Color3.fromRGB]
      331 LOADN                            R3 136
      332 LOADN                            R4 101
      333 LOADN                            R5 71
      334 CALL                             R2 3 1
      335 SETTABLE                         R2 R0 R1
      336 GETIMPORT                        R1 K80 [Enum.Material.WoodPlanks]
      338 GETIMPORT                        R2 K6 [Color3.fromRGB]
      340 LOADN                            R3 126
      341 LOADN                            R4 99
      342 LOADN                            R5 68
      343 CALL                             R2 3 1
      344 SETTABLE                         R2 R0 R1
      345 DUPCLOSURE                       R1 K81 [PROTO_0]
      346 CAPTURE                          VAL R0
      347 RETURN                           R1 1
