PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R3 K6 ["Types"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 64 0
       20 GETIMPORT                        R3 K10 [Enum.Material.Aluminum]
       22 NEWTABLE                         R4 0 2
       24 LOADK                            R5 K11 ["Materials"]
       25 LOADK                            R6 K12 ["Metal"]
       26 SETLIST                          R4 R5 2 [1]
       28 SETTABLE                         R4 R2 R3
       29 GETIMPORT                        R3 K14 [Enum.Material.Asphalt]
       31 NEWTABLE                         R4 0 2
       33 LOADK                            R5 K11 ["Materials"]
       34 LOADK                            R6 K15 ["Concrete"]
       35 SETLIST                          R4 R5 2 [1]
       37 SETTABLE                         R4 R2 R3
       38 GETIMPORT                        R3 K17 [Enum.Material.Basalt]
       40 NEWTABLE                         R4 0 2
       42 LOADK                            R5 K11 ["Materials"]
       43 LOADK                            R6 K18 ["Rock"]
       44 SETLIST                          R4 R5 2 [1]
       46 SETTABLE                         R4 R2 R3
       47 GETIMPORT                        R3 K20 [Enum.Material.Brick]
       49 NEWTABLE                         R4 0 2
       51 LOADK                            R5 K11 ["Materials"]
       52 LOADK                            R6 K21 ["Stone"]
       53 SETLIST                          R4 R5 2 [1]
       55 SETTABLE                         R4 R2 R3
       56 GETIMPORT                        R3 K23 [Enum.Material.Cardboard]
       58 NEWTABLE                         R4 0 2
       60 LOADK                            R5 K11 ["Materials"]
       61 LOADK                            R6 K24 ["Paper"]
       62 SETLIST                          R4 R5 2 [1]
       64 SETTABLE                         R4 R2 R3
       65 GETIMPORT                        R3 K26 [Enum.Material.Carpet]
       67 NEWTABLE                         R4 0 2
       69 LOADK                            R5 K11 ["Materials"]
       70 LOADK                            R6 K27 ["Fabric"]
       71 SETLIST                          R4 R5 2 [1]
       73 SETTABLE                         R4 R2 R3
       74 GETIMPORT                        R3 K29 [Enum.Material.CeramicTiles]
       76 NEWTABLE                         R4 0 2
       78 LOADK                            R5 K11 ["Materials"]
       79 LOADK                            R6 K30 ["Ceramic"]
       80 SETLIST                          R4 R5 2 [1]
       82 SETTABLE                         R4 R2 R3
       83 GETIMPORT                        R3 K32 [Enum.Material.ClayRoofTiles]
       85 NEWTABLE                         R4 0 2
       87 LOADK                            R5 K11 ["Materials"]
       88 LOADK                            R6 K30 ["Ceramic"]
       89 SETLIST                          R4 R5 2 [1]
       91 SETTABLE                         R4 R2 R3
       92 GETIMPORT                        R3 K34 [Enum.Material.Cobblestone]
       94 NEWTABLE                         R4 0 2
       96 LOADK                            R5 K11 ["Materials"]
       97 LOADK                            R6 K21 ["Stone"]
       98 SETLIST                          R4 R5 2 [1]
      100 SETTABLE                         R4 R2 R3
      101 GETIMPORT                        R3 K35 [Enum.Material.Concrete]
      103 NEWTABLE                         R4 0 2
      105 LOADK                            R5 K11 ["Materials"]
      106 LOADK                            R6 K15 ["Concrete"]
      107 SETLIST                          R4 R5 2 [1]
      109 SETTABLE                         R4 R2 R3
      110 GETIMPORT                        R3 K37 [Enum.Material.CorrodedMetal]
      112 NEWTABLE                         R4 0 2
      114 LOADK                            R5 K11 ["Materials"]
      115 LOADK                            R6 K12 ["Metal"]
      116 SETLIST                          R4 R5 2 [1]
      118 SETTABLE                         R4 R2 R3
      119 GETIMPORT                        R3 K39 [Enum.Material.CrackedLava]
      121 NEWTABLE                         R4 0 2
      123 LOADK                            R5 K11 ["Materials"]
      124 LOADK                            R6 K18 ["Rock"]
      125 SETLIST                          R4 R5 2 [1]
      127 SETTABLE                         R4 R2 R3
      128 GETIMPORT                        R3 K41 [Enum.Material.DiamondPlate]
      130 NEWTABLE                         R4 0 2
      132 LOADK                            R5 K11 ["Materials"]
      133 LOADK                            R6 K12 ["Metal"]
      134 SETLIST                          R4 R5 2 [1]
      136 SETTABLE                         R4 R2 R3
      137 GETIMPORT                        R3 K42 [Enum.Material.Fabric]
      139 NEWTABLE                         R4 0 2
      141 LOADK                            R5 K11 ["Materials"]
      142 LOADK                            R6 K27 ["Fabric"]
      143 SETLIST                          R4 R5 2 [1]
      145 SETTABLE                         R4 R2 R3
      146 GETIMPORT                        R3 K44 [Enum.Material.ForceField]
      148 NEWTABLE                         R4 0 2
      150 LOADK                            R5 K11 ["Materials"]
      151 LOADK                            R6 K45 ["Special"]
      152 SETLIST                          R4 R5 2 [1]
      154 SETTABLE                         R4 R2 R3
      155 GETIMPORT                        R3 K47 [Enum.Material.Glacier]
      157 NEWTABLE                         R4 0 2
      159 LOADK                            R5 K11 ["Materials"]
      160 LOADK                            R6 K48 ["Organic"]
      161 SETLIST                          R4 R5 2 [1]
      163 SETTABLE                         R4 R2 R3
      164 GETIMPORT                        R3 K50 [Enum.Material.Glass]
      166 NEWTABLE                         R4 0 2
      168 LOADK                            R5 K11 ["Materials"]
      169 LOADK                            R6 K51 ["Translucent"]
      170 SETLIST                          R4 R5 2 [1]
      172 SETTABLE                         R4 R2 R3
      173 GETIMPORT                        R3 K53 [Enum.Material.Granite]
      175 NEWTABLE                         R4 0 2
      177 LOADK                            R5 K11 ["Materials"]
      178 LOADK                            R6 K18 ["Rock"]
      179 SETLIST                          R4 R5 2 [1]
      181 SETTABLE                         R4 R2 R3
      182 GETIMPORT                        R3 K55 [Enum.Material.Grass]
      184 NEWTABLE                         R4 0 2
      186 LOADK                            R5 K11 ["Materials"]
      187 LOADK                            R6 K56 ["Ground"]
      188 SETLIST                          R4 R5 2 [1]
      190 SETTABLE                         R4 R2 R3
      191 GETIMPORT                        R3 K57 [Enum.Material.Ground]
      193 NEWTABLE                         R4 0 2
      195 LOADK                            R5 K11 ["Materials"]
      196 LOADK                            R6 K56 ["Ground"]
      197 SETLIST                          R4 R5 2 [1]
      199 SETTABLE                         R4 R2 R3
      200 GETIMPORT                        R3 K59 [Enum.Material.Ice]
      202 NEWTABLE                         R4 0 2
      204 LOADK                            R5 K11 ["Materials"]
      205 LOADK                            R6 K48 ["Organic"]
      206 SETLIST                          R4 R5 2 [1]
      208 SETTABLE                         R4 R2 R3
      209 GETIMPORT                        R3 K61 [Enum.Material.LeafyGrass]
      211 NEWTABLE                         R4 0 2
      213 LOADK                            R5 K11 ["Materials"]
      214 LOADK                            R6 K56 ["Ground"]
      215 SETLIST                          R4 R5 2 [1]
      217 SETTABLE                         R4 R2 R3
      218 GETIMPORT                        R3 K63 [Enum.Material.Leather]
      220 NEWTABLE                         R4 0 2
      222 LOADK                            R5 K11 ["Materials"]
      223 LOADK                            R6 K27 ["Fabric"]
      224 SETLIST                          R4 R5 2 [1]
      226 SETTABLE                         R4 R2 R3
      227 GETIMPORT                        R3 K65 [Enum.Material.Limestone]
      229 NEWTABLE                         R4 0 2
      231 LOADK                            R5 K11 ["Materials"]
      232 LOADK                            R6 K18 ["Rock"]
      233 SETLIST                          R4 R5 2 [1]
      235 SETTABLE                         R4 R2 R3
      236 GETIMPORT                        R3 K67 [Enum.Material.Neon]
      238 NEWTABLE                         R4 0 2
      240 LOADK                            R5 K11 ["Materials"]
      241 LOADK                            R6 K45 ["Special"]
      242 SETLIST                          R4 R5 2 [1]
      244 SETTABLE                         R4 R2 R3
      245 GETIMPORT                        R3 K69 [Enum.Material.Marble]
      247 NEWTABLE                         R4 0 2
      249 LOADK                            R5 K11 ["Materials"]
      250 LOADK                            R6 K18 ["Rock"]
      251 SETLIST                          R4 R5 2 [1]
      253 SETTABLE                         R4 R2 R3
      254 GETIMPORT                        R3 K70 [Enum.Material.Metal]
      256 NEWTABLE                         R4 0 2
      258 LOADK                            R5 K11 ["Materials"]
      259 LOADK                            R6 K12 ["Metal"]
      260 SETLIST                          R4 R5 2 [1]
      262 SETTABLE                         R4 R2 R3
      263 GETIMPORT                        R3 K72 [Enum.Material.Mud]
      265 NEWTABLE                         R4 0 2
      267 LOADK                            R5 K11 ["Materials"]
      268 LOADK                            R6 K56 ["Ground"]
      269 SETLIST                          R4 R5 2 [1]
      271 SETTABLE                         R4 R2 R3
      272 GETIMPORT                        R3 K74 [Enum.Material.Pavement]
      274 NEWTABLE                         R4 0 2
      276 LOADK                            R5 K11 ["Materials"]
      277 LOADK                            R6 K15 ["Concrete"]
      278 SETLIST                          R4 R5 2 [1]
      280 SETTABLE                         R4 R2 R3
      281 GETIMPORT                        R3 K76 [Enum.Material.Pebble]
      283 NEWTABLE                         R4 0 2
      285 LOADK                            R5 K11 ["Materials"]
      286 LOADK                            R6 K18 ["Rock"]
      287 SETLIST                          R4 R5 2 [1]
      289 SETTABLE                         R4 R2 R3
      290 GETIMPORT                        R3 K78 [Enum.Material.Plaster]
      292 NEWTABLE                         R4 0 2
      294 LOADK                            R5 K11 ["Materials"]
      295 LOADK                            R6 K30 ["Ceramic"]
      296 SETLIST                          R4 R5 2 [1]
      298 SETTABLE                         R4 R2 R3
      299 GETIMPORT                        R3 K80 [Enum.Material.Plastic]
      301 NEWTABLE                         R4 0 2
      303 LOADK                            R5 K11 ["Materials"]
      304 LOADK                            R6 K79 ["Plastic"]
      305 SETLIST                          R4 R5 2 [1]
      307 SETTABLE                         R4 R2 R3
      308 GETIMPORT                        R3 K81 [Enum.Material.Rock]
      310 NEWTABLE                         R4 0 2
      312 LOADK                            R5 K11 ["Materials"]
      313 LOADK                            R6 K18 ["Rock"]
      314 SETLIST                          R4 R5 2 [1]
      316 SETTABLE                         R4 R2 R3
      317 GETIMPORT                        R3 K83 [Enum.Material.RoofShingles]
      319 NEWTABLE                         R4 0 2
      321 LOADK                            R5 K11 ["Materials"]
      322 LOADK                            R6 K84 ["Synthetic"]
      323 SETLIST                          R4 R5 2 [1]
      325 SETTABLE                         R4 R2 R3
      326 GETIMPORT                        R3 K86 [Enum.Material.Rubber]
      328 NEWTABLE                         R4 0 2
      330 LOADK                            R5 K11 ["Materials"]
      331 LOADK                            R6 K84 ["Synthetic"]
      332 SETLIST                          R4 R5 2 [1]
      334 SETTABLE                         R4 R2 R3
      335 GETIMPORT                        R3 K88 [Enum.Material.Salt]
      337 NEWTABLE                         R4 0 2
      339 LOADK                            R5 K11 ["Materials"]
      340 LOADK                            R6 K48 ["Organic"]
      341 SETLIST                          R4 R5 2 [1]
      343 SETTABLE                         R4 R2 R3
      344 GETIMPORT                        R3 K90 [Enum.Material.Sand]
      346 NEWTABLE                         R4 0 2
      348 LOADK                            R5 K11 ["Materials"]
      349 LOADK                            R6 K56 ["Ground"]
      350 SETLIST                          R4 R5 2 [1]
      352 SETTABLE                         R4 R2 R3
      353 GETIMPORT                        R3 K92 [Enum.Material.Sandstone]
      355 NEWTABLE                         R4 0 2
      357 LOADK                            R5 K11 ["Materials"]
      358 LOADK                            R6 K18 ["Rock"]
      359 SETLIST                          R4 R5 2 [1]
      361 SETTABLE                         R4 R2 R3
      362 GETIMPORT                        R3 K94 [Enum.Material.Slate]
      364 NEWTABLE                         R4 0 2
      366 LOADK                            R5 K11 ["Materials"]
      367 LOADK                            R6 K18 ["Rock"]
      368 SETLIST                          R4 R5 2 [1]
      370 SETTABLE                         R4 R2 R3
      371 GETIMPORT                        R3 K96 [Enum.Material.SmoothPlastic]
      373 NEWTABLE                         R4 0 2
      375 LOADK                            R5 K11 ["Materials"]
      376 LOADK                            R6 K79 ["Plastic"]
      377 SETLIST                          R4 R5 2 [1]
      379 SETTABLE                         R4 R2 R3
      380 GETIMPORT                        R3 K98 [Enum.Material.Snow]
      382 NEWTABLE                         R4 0 2
      384 LOADK                            R5 K11 ["Materials"]
      385 LOADK                            R6 K56 ["Ground"]
      386 SETLIST                          R4 R5 2 [1]
      388 SETTABLE                         R4 R2 R3
      389 GETIMPORT                        R3 K100 [Enum.Material.Wood]
      391 NEWTABLE                         R4 0 2
      393 LOADK                            R5 K11 ["Materials"]
      394 LOADK                            R6 K99 ["Wood"]
      395 SETLIST                          R4 R5 2 [1]
      397 SETTABLE                         R4 R2 R3
      398 GETIMPORT                        R3 K102 [Enum.Material.WoodPlanks]
      400 NEWTABLE                         R4 0 2
      402 LOADK                            R5 K11 ["Materials"]
      403 LOADK                            R6 K99 ["Wood"]
      404 SETLIST                          R4 R5 2 [1]
      406 SETTABLE                         R4 R2 R3
      407 DUPCLOSURE                       R3 K103 [PROTO_0]
      408 CAPTURE                          VAL R2
      409 RETURN                           R3 1
