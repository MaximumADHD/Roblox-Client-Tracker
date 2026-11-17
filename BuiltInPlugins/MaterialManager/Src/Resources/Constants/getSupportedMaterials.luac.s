PROTO_0:
        0 JUMPIFNOT                        R0 ; [+2]
        1 GETUPVAL                         R1 0
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Types"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 64 0
       20 GETIMPORT                        R3 K10 [Enum.Material.Asphalt]
       22 LOADB                            R4 1
       23 SETTABLE                         R4 R2 R3
       24 GETIMPORT                        R3 K12 [Enum.Material.Basalt]
       26 LOADB                            R4 1
       27 SETTABLE                         R4 R2 R3
       28 GETIMPORT                        R3 K14 [Enum.Material.Brick]
       30 LOADB                            R4 1
       31 SETTABLE                         R4 R2 R3
       32 GETIMPORT                        R3 K16 [Enum.Material.Cardboard]
       34 LOADB                            R4 1
       35 SETTABLE                         R4 R2 R3
       36 GETIMPORT                        R3 K18 [Enum.Material.Carpet]
       38 LOADB                            R4 1
       39 SETTABLE                         R4 R2 R3
       40 GETIMPORT                        R3 K20 [Enum.Material.CeramicTiles]
       42 LOADB                            R4 1
       43 SETTABLE                         R4 R2 R3
       44 GETIMPORT                        R3 K22 [Enum.Material.ClayRoofTiles]
       46 LOADB                            R4 1
       47 SETTABLE                         R4 R2 R3
       48 GETIMPORT                        R3 K24 [Enum.Material.Cobblestone]
       50 LOADB                            R4 1
       51 SETTABLE                         R4 R2 R3
       52 GETIMPORT                        R3 K26 [Enum.Material.Concrete]
       54 LOADB                            R4 1
       55 SETTABLE                         R4 R2 R3
       56 GETIMPORT                        R3 K28 [Enum.Material.CorrodedMetal]
       58 LOADB                            R4 1
       59 SETTABLE                         R4 R2 R3
       60 GETIMPORT                        R3 K30 [Enum.Material.CrackedLava]
       62 LOADB                            R4 1
       63 SETTABLE                         R4 R2 R3
       64 GETIMPORT                        R3 K32 [Enum.Material.DiamondPlate]
       66 LOADB                            R4 1
       67 SETTABLE                         R4 R2 R3
       68 GETIMPORT                        R3 K34 [Enum.Material.Fabric]
       70 LOADB                            R4 1
       71 SETTABLE                         R4 R2 R3
       72 GETIMPORT                        R3 K36 [Enum.Material.Foil]
       74 LOADB                            R4 1
       75 SETTABLE                         R4 R2 R3
       76 GETIMPORT                        R3 K38 [Enum.Material.ForceField]
       78 LOADB                            R4 0
       79 SETTABLE                         R4 R2 R3
       80 GETIMPORT                        R3 K40 [Enum.Material.Glacier]
       82 LOADB                            R4 1
       83 SETTABLE                         R4 R2 R3
       84 GETIMPORT                        R3 K42 [Enum.Material.Glass]
       86 LOADB                            R4 0
       87 SETTABLE                         R4 R2 R3
       88 GETIMPORT                        R3 K44 [Enum.Material.Granite]
       90 LOADB                            R4 1
       91 SETTABLE                         R4 R2 R3
       92 GETIMPORT                        R3 K46 [Enum.Material.Grass]
       94 LOADB                            R4 1
       95 SETTABLE                         R4 R2 R3
       96 GETIMPORT                        R3 K48 [Enum.Material.Ground]
       98 LOADB                            R4 1
       99 SETTABLE                         R4 R2 R3
      100 GETIMPORT                        R3 K50 [Enum.Material.Ice]
      102 LOADB                            R4 1
      103 SETTABLE                         R4 R2 R3
      104 GETIMPORT                        R3 K52 [Enum.Material.LeafyGrass]
      106 LOADB                            R4 1
      107 SETTABLE                         R4 R2 R3
      108 GETIMPORT                        R3 K54 [Enum.Material.Leather]
      110 LOADB                            R4 1
      111 SETTABLE                         R4 R2 R3
      112 GETIMPORT                        R3 K56 [Enum.Material.Limestone]
      114 LOADB                            R4 1
      115 SETTABLE                         R4 R2 R3
      116 GETIMPORT                        R3 K58 [Enum.Material.Marble]
      118 LOADB                            R4 1
      119 SETTABLE                         R4 R2 R3
      120 GETIMPORT                        R3 K60 [Enum.Material.Metal]
      122 LOADB                            R4 1
      123 SETTABLE                         R4 R2 R3
      124 GETIMPORT                        R3 K62 [Enum.Material.Mud]
      126 LOADB                            R4 1
      127 SETTABLE                         R4 R2 R3
      128 GETIMPORT                        R3 K64 [Enum.Material.Neon]
      130 LOADB                            R4 0
      131 SETTABLE                         R4 R2 R3
      132 GETIMPORT                        R3 K66 [Enum.Material.Pavement]
      134 LOADB                            R4 1
      135 SETTABLE                         R4 R2 R3
      136 GETIMPORT                        R3 K68 [Enum.Material.Pebble]
      138 LOADB                            R4 1
      139 SETTABLE                         R4 R2 R3
      140 GETIMPORT                        R3 K70 [Enum.Material.Plaster]
      142 LOADB                            R4 1
      143 SETTABLE                         R4 R2 R3
      144 GETIMPORT                        R3 K72 [Enum.Material.Plastic]
      146 LOADB                            R4 1
      147 SETTABLE                         R4 R2 R3
      148 GETIMPORT                        R3 K74 [Enum.Material.Rock]
      150 LOADB                            R4 1
      151 SETTABLE                         R4 R2 R3
      152 GETIMPORT                        R3 K76 [Enum.Material.RoofShingles]
      154 LOADB                            R4 1
      155 SETTABLE                         R4 R2 R3
      156 GETIMPORT                        R3 K78 [Enum.Material.Rubber]
      158 LOADB                            R4 1
      159 SETTABLE                         R4 R2 R3
      160 GETIMPORT                        R3 K80 [Enum.Material.Salt]
      162 LOADB                            R4 1
      163 SETTABLE                         R4 R2 R3
      164 GETIMPORT                        R3 K82 [Enum.Material.Sand]
      166 LOADB                            R4 1
      167 SETTABLE                         R4 R2 R3
      168 GETIMPORT                        R3 K84 [Enum.Material.Sandstone]
      170 LOADB                            R4 1
      171 SETTABLE                         R4 R2 R3
      172 GETIMPORT                        R3 K86 [Enum.Material.Slate]
      174 LOADB                            R4 1
      175 SETTABLE                         R4 R2 R3
      176 GETIMPORT                        R3 K88 [Enum.Material.SmoothPlastic]
      178 LOADB                            R4 1
      179 SETTABLE                         R4 R2 R3
      180 GETIMPORT                        R3 K90 [Enum.Material.Snow]
      182 LOADB                            R4 1
      183 SETTABLE                         R4 R2 R3
      184 GETIMPORT                        R3 K92 [Enum.Material.Wood]
      186 LOADB                            R4 1
      187 SETTABLE                         R4 R2 R3
      188 GETIMPORT                        R3 K94 [Enum.Material.WoodPlanks]
      190 LOADB                            R4 1
      191 SETTABLE                         R4 R2 R3
      192 NEWTABLE                         R3 0 40
      194 GETIMPORT                        R4 K10 [Enum.Material.Asphalt]
      196 GETIMPORT                        R5 K12 [Enum.Material.Basalt]
      198 GETIMPORT                        R6 K14 [Enum.Material.Brick]
      200 GETIMPORT                        R7 K16 [Enum.Material.Cardboard]
      202 GETIMPORT                        R8 K18 [Enum.Material.Carpet]
      204 GETIMPORT                        R9 K20 [Enum.Material.CeramicTiles]
      206 GETIMPORT                        R10 K22 [Enum.Material.ClayRoofTiles]
      208 GETIMPORT                        R11 K24 [Enum.Material.Cobblestone]
      210 GETIMPORT                        R12 K26 [Enum.Material.Concrete]
      212 GETIMPORT                        R13 K28 [Enum.Material.CorrodedMetal]
      214 GETIMPORT                        R14 K30 [Enum.Material.CrackedLava]
      216 GETIMPORT                        R15 K32 [Enum.Material.DiamondPlate]
      218 GETIMPORT                        R16 K34 [Enum.Material.Fabric]
      220 GETIMPORT                        R17 K36 [Enum.Material.Foil]
      222 GETIMPORT                        R18 K40 [Enum.Material.Glacier]
      224 GETIMPORT                        R19 K44 [Enum.Material.Granite]
      226 SETLIST                          R3 R4 16 [1]
      228 GETIMPORT                        R4 K46 [Enum.Material.Grass]
      230 GETIMPORT                        R5 K48 [Enum.Material.Ground]
      232 GETIMPORT                        R6 K50 [Enum.Material.Ice]
      234 GETIMPORT                        R7 K52 [Enum.Material.LeafyGrass]
      236 GETIMPORT                        R8 K54 [Enum.Material.Leather]
      238 GETIMPORT                        R9 K56 [Enum.Material.Limestone]
      240 GETIMPORT                        R10 K58 [Enum.Material.Marble]
      242 GETIMPORT                        R11 K60 [Enum.Material.Metal]
      244 GETIMPORT                        R12 K62 [Enum.Material.Mud]
      246 GETIMPORT                        R13 K66 [Enum.Material.Pavement]
      248 GETIMPORT                        R14 K68 [Enum.Material.Pebble]
      250 GETIMPORT                        R15 K70 [Enum.Material.Plaster]
      252 GETIMPORT                        R16 K72 [Enum.Material.Plastic]
      254 GETIMPORT                        R17 K74 [Enum.Material.Rock]
      256 GETIMPORT                        R18 K76 [Enum.Material.RoofShingles]
      258 GETIMPORT                        R19 K78 [Enum.Material.Rubber]
      260 SETLIST                          R3 R4 16 [17]
      262 GETIMPORT                        R4 K80 [Enum.Material.Salt]
      264 GETIMPORT                        R5 K82 [Enum.Material.Sand]
      266 GETIMPORT                        R6 K84 [Enum.Material.Sandstone]
      268 GETIMPORT                        R7 K86 [Enum.Material.Slate]
      270 GETIMPORT                        R8 K88 [Enum.Material.SmoothPlastic]
      272 GETIMPORT                        R9 K90 [Enum.Material.Snow]
      274 GETIMPORT                        R10 K92 [Enum.Material.Wood]
      276 GETIMPORT                        R11 K94 [Enum.Material.WoodPlanks]
      278 SETLIST                          R3 R4 8 [33]
      280 DUPCLOSURE                       R4 K95 [PROTO_0]
      281 CAPTURE                          VAL R3
      282 CAPTURE                          VAL R2
      283 RETURN                           R4 1
