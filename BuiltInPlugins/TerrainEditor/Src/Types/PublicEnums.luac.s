MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 NEWTABLE                         R1 16 0
        5 DUPTABLE                         R2 K2 [{"Add", "Subtract"}]
        6 LOADK                            R3 K0 ["Add"]
        7 SETTABLEKS                       R3 R2 K0 ["Add"]
        9 LOADK                            R3 K1 ["Subtract"]
       10 SETTABLEKS                       R3 R2 K1 ["Subtract"]
       12 LOADK                            R3 K3 ["BrushMode"]
       13 SETTABLEKS                       R3 R1 K3 ["BrushMode"]
       15 SETTABLEKS                       R2 R0 K3 ["BrushMode"]
       17 DUPTABLE                         R3 K7 [{"Sphere", "Cube", "Cylinder"}]
       18 LOADK                            R4 K4 ["Sphere"]
       19 SETTABLEKS                       R4 R3 K4 ["Sphere"]
       21 LOADK                            R4 K5 ["Cube"]
       22 SETTABLEKS                       R4 R3 K5 ["Cube"]
       24 LOADK                            R4 K6 ["Cylinder"]
       25 SETTABLEKS                       R4 R3 K6 ["Cylinder"]
       27 LOADK                            R4 K8 ["BrushShape"]
       28 SETTABLEKS                       R4 R1 K8 ["BrushShape"]
       30 SETTABLEKS                       R3 R0 K8 ["BrushShape"]
       32 DUPTABLE                         R4 K11 [{"Fill", "Replace"}]
       33 LOADK                            R5 K9 ["Fill"]
       34 SETTABLEKS                       R5 R4 K9 ["Fill"]
       36 LOADK                            R5 K10 ["Replace"]
       37 SETTABLEKS                       R5 R4 K10 ["Replace"]
       39 LOADK                            R5 K12 ["FillMode"]
       40 SETTABLEKS                       R5 R1 K12 ["FillMode"]
       42 SETTABLEKS                       R4 R0 K12 ["FillMode"]
       44 DUPTABLE                         R5 K16 [{"Erode", "Grow", "Both"}]
       45 LOADK                            R6 K13 ["Erode"]
       46 SETTABLEKS                       R6 R5 K13 ["Erode"]
       48 LOADK                            R6 K14 ["Grow"]
       49 SETTABLEKS                       R6 R5 K14 ["Grow"]
       51 LOADK                            R6 K15 ["Both"]
       52 SETTABLEKS                       R6 R5 K15 ["Both"]
       54 LOADK                            R6 K17 ["FlattenMode"]
       55 SETTABLEKS                       R6 R1 K17 ["FlattenMode"]
       57 SETTABLEKS                       R5 R0 K17 ["FlattenMode"]
       59 DUPTABLE                         R6 K20 [{"Auto", "Fixed"}]
       60 LOADK                            R7 K18 ["Auto"]
       61 SETTABLEKS                       R7 R6 K18 ["Auto"]
       63 LOADK                            R7 K19 ["Fixed"]
       64 SETTABLEKS                       R7 R6 K19 ["Fixed"]
       66 LOADK                            R7 K21 ["FlattenPlane"]
       67 SETTABLEKS                       R7 R1 K21 ["FlattenPlane"]
       69 SETTABLEKS                       R6 R0 K21 ["FlattenPlane"]
       71 DUPTABLE                         R7 K25 [{"Bottom", "Center", "Top"}]
       72 LOADK                            R8 K22 ["Bottom"]
       73 SETTABLEKS                       R8 R7 K22 ["Bottom"]
       75 LOADK                            R8 K23 ["Center"]
       76 SETTABLEKS                       R8 R7 K23 ["Center"]
       78 LOADK                            R8 K24 ["Top"]
       79 SETTABLEKS                       R8 R7 K24 ["Top"]
       81 LOADK                            R8 K26 ["PivotPosition"]
       82 SETTABLEKS                       R8 R1 K26 ["PivotPosition"]
       84 SETTABLEKS                       R7 R0 K26 ["PivotPosition"]
       86 DUPTABLE                         R8 K29 [{"Auto", "Off", "Manual"}]
       87 LOADK                            R9 K18 ["Auto"]
       88 SETTABLEKS                       R9 R8 K18 ["Auto"]
       90 LOADK                            R9 K27 ["Off"]
       91 SETTABLEKS                       R9 R8 K27 ["Off"]
       93 LOADK                            R9 K28 ["Manual"]
       94 SETTABLEKS                       R9 R8 K28 ["Manual"]
       96 LOADK                            R9 K30 ["PlaneLock"]
       97 SETTABLEKS                       R9 R1 K30 ["PlaneLock"]
       99 SETTABLEKS                       R8 R0 K30 ["PlaneLock"]
      101 DUPTABLE                         R9 K32 [{"Paint", "Replace"}]
      102 LOADK                            R10 K31 ["Paint"]
      103 SETTABLEKS                       R10 R9 K31 ["Paint"]
      105 LOADK                            R10 K10 ["Replace"]
      106 SETTABLEKS                       R10 R9 K10 ["Replace"]
      108 LOADK                            R10 K33 ["MaterialMode"]
      109 SETTABLEKS                       R10 R1 K33 ["MaterialMode"]
      111 SETTABLEKS                       R9 R0 K33 ["MaterialMode"]
      113 DUPTABLE                         R10 K36 [{"Stud", "Percentage"}]
      114 LOADK                            R11 K34 ["Stud"]
      115 SETTABLEKS                       R11 R10 K34 ["Stud"]
      117 LOADK                            R11 K35 ["Percentage"]
      118 SETTABLEKS                       R11 R10 K35 ["Percentage"]
      120 LOADK                            R11 K37 ["MaterialUnit"]
      121 SETTABLEKS                       R11 R1 K37 ["MaterialUnit"]
      123 SETTABLEKS                       R10 R0 K37 ["MaterialUnit"]
      125 DUPTABLE                         R11 K39 [{"Off", "Voxel"}]
      126 LOADK                            R12 K27 ["Off"]
      127 SETTABLEKS                       R12 R11 K27 ["Off"]
      129 LOADK                            R12 K38 ["Voxel"]
      130 SETTABLEKS                       R12 R11 K38 ["Voxel"]
      132 LOADK                            R12 K40 ["Snapping"]
      133 SETTABLEKS                       R12 R1 K40 ["Snapping"]
      135 SETTABLEKS                       R11 R0 K40 ["Snapping"]
      137 DUPTABLE                         R12 K50 [{"Arctic", "Crater", "Desert", "Lake", "Mesa", "Mountain", "Plain", "Volcano", "None"}]
      138 LOADK                            R13 K41 ["Arctic"]
      139 SETTABLEKS                       R13 R12 K41 ["Arctic"]
      141 LOADK                            R13 K42 ["Crater"]
      142 SETTABLEKS                       R13 R12 K42 ["Crater"]
      144 LOADK                            R13 K43 ["Desert"]
      145 SETTABLEKS                       R13 R12 K43 ["Desert"]
      147 LOADK                            R13 K44 ["Lake"]
      148 SETTABLEKS                       R13 R12 K44 ["Lake"]
      150 LOADK                            R13 K45 ["Mesa"]
      151 SETTABLEKS                       R13 R12 K45 ["Mesa"]
      153 LOADK                            R13 K46 ["Mountain"]
      154 SETTABLEKS                       R13 R12 K46 ["Mountain"]
      156 LOADK                            R13 K47 ["Plain"]
      157 SETTABLEKS                       R13 R12 K47 ["Plain"]
      159 LOADK                            R13 K48 ["Volcano"]
      160 SETTABLEKS                       R13 R12 K48 ["Volcano"]
      162 LOADK                            R13 K49 ["None"]
      163 SETTABLEKS                       R13 R12 K49 ["None"]
      165 LOADK                            R13 K51 ["TerrainType"]
      166 SETTABLEKS                       R13 R1 K51 ["TerrainType"]
      168 SETTABLEKS                       R12 R0 K51 ["TerrainType"]
      170 NEWTABLE                         R13 16 0
      172 GETTABLEKS                       R14 R1 K3 ["BrushMode"]
      174 NEWTABLE                         R15 0 2
      176 GETTABLEKS                       R16 R2 K0 ["Add"]
      178 GETTABLEKS                       R17 R2 K1 ["Subtract"]
      180 SETLIST                          R15 R16 2 [1]
      182 SETTABLE                         R15 R13 R14
      183 GETTABLEKS                       R14 R1 K8 ["BrushShape"]
      185 NEWTABLE                         R15 0 3
      187 GETTABLEKS                       R16 R3 K4 ["Sphere"]
      189 GETTABLEKS                       R17 R3 K5 ["Cube"]
      191 GETTABLEKS                       R18 R3 K6 ["Cylinder"]
      193 SETLIST                          R15 R16 3 [1]
      195 SETTABLE                         R15 R13 R14
      196 GETTABLEKS                       R14 R1 K12 ["FillMode"]
      198 NEWTABLE                         R15 0 2
      200 GETTABLEKS                       R16 R4 K9 ["Fill"]
      202 GETTABLEKS                       R17 R4 K10 ["Replace"]
      204 SETLIST                          R15 R16 2 [1]
      206 SETTABLE                         R15 R13 R14
      207 GETTABLEKS                       R14 R1 K21 ["FlattenPlane"]
      209 NEWTABLE                         R15 0 2
      211 GETTABLEKS                       R16 R6 K18 ["Auto"]
      213 GETTABLEKS                       R17 R6 K19 ["Fixed"]
      215 SETLIST                          R15 R16 2 [1]
      217 SETTABLE                         R15 R13 R14
      218 GETTABLEKS                       R14 R1 K17 ["FlattenMode"]
      220 NEWTABLE                         R15 0 3
      222 GETTABLEKS                       R16 R5 K13 ["Erode"]
      224 GETTABLEKS                       R17 R5 K14 ["Grow"]
      226 GETTABLEKS                       R18 R5 K15 ["Both"]
      228 SETLIST                          R15 R16 3 [1]
      230 SETTABLE                         R15 R13 R14
      231 GETTABLEKS                       R14 R1 K26 ["PivotPosition"]
      233 NEWTABLE                         R15 0 3
      235 GETTABLEKS                       R16 R7 K22 ["Bottom"]
      237 GETTABLEKS                       R17 R7 K23 ["Center"]
      239 GETTABLEKS                       R18 R7 K24 ["Top"]
      241 SETLIST                          R15 R16 3 [1]
      243 SETTABLE                         R15 R13 R14
      244 GETTABLEKS                       R14 R1 K30 ["PlaneLock"]
      246 NEWTABLE                         R15 0 3
      248 GETTABLEKS                       R16 R8 K27 ["Off"]
      250 GETTABLEKS                       R17 R8 K18 ["Auto"]
      252 GETTABLEKS                       R18 R8 K28 ["Manual"]
      254 SETLIST                          R15 R16 3 [1]
      256 SETTABLE                         R15 R13 R14
      257 GETTABLEKS                       R14 R1 K33 ["MaterialMode"]
      259 NEWTABLE                         R15 0 2
      261 GETTABLEKS                       R16 R9 K31 ["Paint"]
      263 GETTABLEKS                       R17 R9 K10 ["Replace"]
      265 SETLIST                          R15 R16 2 [1]
      267 SETTABLE                         R15 R13 R14
      268 GETTABLEKS                       R14 R1 K37 ["MaterialUnit"]
      270 NEWTABLE                         R15 0 2
      272 GETTABLEKS                       R16 R10 K34 ["Stud"]
      274 GETTABLEKS                       R17 R10 K35 ["Percentage"]
      276 SETLIST                          R15 R16 2 [1]
      278 SETTABLE                         R15 R13 R14
      279 GETTABLEKS                       R14 R1 K40 ["Snapping"]
      281 NEWTABLE                         R15 0 2
      283 GETTABLEKS                       R16 R11 K27 ["Off"]
      285 GETTABLEKS                       R17 R11 K38 ["Voxel"]
      287 SETLIST                          R15 R16 2 [1]
      289 SETTABLE                         R15 R13 R14
      290 GETTABLEKS                       R14 R1 K51 ["TerrainType"]
      292 NEWTABLE                         R15 0 9
      294 GETTABLEKS                       R16 R12 K47 ["Plain"]
      296 GETTABLEKS                       R17 R12 K41 ["Arctic"]
      298 GETTABLEKS                       R18 R12 K43 ["Desert"]
      300 GETTABLEKS                       R19 R12 K46 ["Mountain"]
      302 GETTABLEKS                       R20 R12 K48 ["Volcano"]
      304 GETTABLEKS                       R21 R12 K45 ["Mesa"]
      306 GETTABLEKS                       R22 R12 K42 ["Crater"]
      308 GETTABLEKS                       R23 R12 K44 ["Lake"]
      310 GETTABLEKS                       R24 R12 K49 ["None"]
      312 SETLIST                          R15 R16 9 [1]
      314 SETTABLE                         R15 R13 R14
      315 MOVE                             R14 R0
      316 LOADNIL                          R15
      317 LOADNIL                          R16
      318 FORGPREP                         R14
      319 GETTABLE                         R20 R13 R17
      320 LOADK                            R22 K52 ["Expected editor enum index for %*"]
      321 MOVE                             R24 R17
      322 NAMECALL                         R22 R22 K53 ["format"]
      324 CALL                             R22 2 1
      325 MOVE                             R21 R22
      326 FASTCALL2                        ASSERT R20 R21 ; [+3]
      328 GETIMPORT                        R19 K55 [assert]
      330 CALL                             R19 2 0
      331 MOVE                             R19 R18
      332 LOADNIL                          R20
      333 LOADNIL                          R21
      334 FORGPREP                         R19
      335 GETIMPORT                        R24 K58 [table.find]
      337 GETTABLE                         R25 R13 R17
      338 MOVE                             R26 R23
      339 CALL                             R24 2 1
      340 LOADK                            R28 K59 ["Expected index for enum value %*.%*"]
      341 MOVE                             R30 R17
      342 MOVE                             R31 R23
      343 NAMECALL                         R28 R28 K53 ["format"]
      345 CALL                             R28 3 1
      346 MOVE                             R27 R28
      347 FASTCALL2                        ASSERT R24 R27 ; [+4]
      349 MOVE                             R26 R24
      350 GETIMPORT                        R25 K55 [assert]
      352 CALL                             R25 2 0
      353 FORGLOOP                         R19 2 ; [-19]
      355 FORGLOOP                         R14 2 ; [-37]
      357 SETTABLEKS                       R13 R0 K60 ["EnumTypeIndices"]
      359 SETTABLEKS                       R1 R0 K61 ["EnumType"]
      361 RETURN                           R0 1
