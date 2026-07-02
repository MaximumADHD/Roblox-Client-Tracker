MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 NEWTABLE                         R1 16 0
        5 DUPTABLE                         R2 K2 [{[1] = "Add", ["Subtract"] = "Subtract"}]
        6 LOADK                            R3 K3 ["BrushMode"]
        7 SETTABLEKS                       R3 R1 K3 ["BrushMode"]
        9 SETTABLEKS                       R2 R0 K3 ["BrushMode"]
       11 DUPTABLE                         R3 K7 [{["Sphere"] = "Sphere", ["Cube"] = "Cube", ["Cylinder"] = "Cylinder"}]
       12 LOADK                            R4 K8 ["BrushShape"]
       13 SETTABLEKS                       R4 R1 K8 ["BrushShape"]
       15 SETTABLEKS                       R3 R0 K8 ["BrushShape"]
       17 DUPTABLE                         R4 K11 [{["Fill"] = "Fill", ["Replace"] = "Replace"}]
       18 LOADK                            R5 K12 ["FillMode"]
       19 SETTABLEKS                       R5 R1 K12 ["FillMode"]
       21 SETTABLEKS                       R4 R0 K12 ["FillMode"]
       23 DUPTABLE                         R5 K16 [{["Erode"] = "Erode", ["Grow"] = "Grow", ["Both"] = "Both"}]
       24 LOADK                            R6 K17 ["FlattenMode"]
       25 SETTABLEKS                       R6 R1 K17 ["FlattenMode"]
       27 SETTABLEKS                       R5 R0 K17 ["FlattenMode"]
       29 DUPTABLE                         R6 K20 [{["Auto"] = "Auto", ["Fixed"] = "Fixed"}]
       30 LOADK                            R7 K21 ["FlattenPlane"]
       31 SETTABLEKS                       R7 R1 K21 ["FlattenPlane"]
       33 SETTABLEKS                       R6 R0 K21 ["FlattenPlane"]
       35 DUPTABLE                         R7 K25 [{["Bottom"] = "Bottom", ["Center"] = "Center", ["Top"] = "Top"}]
       36 LOADK                            R8 K26 ["PivotPosition"]
       37 SETTABLEKS                       R8 R1 K26 ["PivotPosition"]
       39 SETTABLEKS                       R7 R0 K26 ["PivotPosition"]
       41 DUPTABLE                         R8 K29 [{["Auto"] = "Auto", ["Off"] = "Off", ["Manual"] = "Manual"}]
       42 LOADK                            R9 K30 ["PlaneLock"]
       43 SETTABLEKS                       R9 R1 K30 ["PlaneLock"]
       45 SETTABLEKS                       R8 R0 K30 ["PlaneLock"]
       47 DUPTABLE                         R9 K32 [{["Paint"] = "Paint", ["Replace"] = "Replace"}]
       48 LOADK                            R10 K33 ["MaterialMode"]
       49 SETTABLEKS                       R10 R1 K33 ["MaterialMode"]
       51 SETTABLEKS                       R9 R0 K33 ["MaterialMode"]
       53 DUPTABLE                         R10 K36 [{["Stud"] = "Stud", ["Percentage"] = "Percentage"}]
       54 LOADK                            R11 K37 ["MaterialUnit"]
       55 SETTABLEKS                       R11 R1 K37 ["MaterialUnit"]
       57 SETTABLEKS                       R10 R0 K37 ["MaterialUnit"]
       59 DUPTABLE                         R11 K39 [{["Off"] = "Off", ["Voxel"] = "Voxel"}]
       60 LOADK                            R12 K40 ["Snapping"]
       61 SETTABLEKS                       R12 R1 K40 ["Snapping"]
       63 SETTABLEKS                       R11 R0 K40 ["Snapping"]
       65 DUPTABLE                         R12 K50 [{["Arctic"] = "Arctic", ["Crater"] = "Crater", ["Desert"] = "Desert", ["Lake"] = "Lake", ["Mesa"] = "Mesa", ["Mountain"] = "Mountain", ["Plain"] = "Plain", ["Volcano"] = "Volcano", ["None"] = "None"}]
       66 LOADK                            R13 K51 ["TerrainType"]
       67 SETTABLEKS                       R13 R1 K51 ["TerrainType"]
       69 SETTABLEKS                       R12 R0 K51 ["TerrainType"]
       71 NEWTABLE                         R13 16 0
       73 GETTABLEKS                       R14 R1 K3 ["BrushMode"]
       75 NEWTABLE                         R15 0 2
       77 GETTABLEKS                       R16 R2 K0 ["Add"]
       79 GETTABLEKS                       R17 R2 K1 ["Subtract"]
       81 SETLIST                          R15 R16 2 [1]
       83 SETTABLE                         R15 R13 R14
       84 GETTABLEKS                       R14 R1 K8 ["BrushShape"]
       86 NEWTABLE                         R15 0 3
       88 GETTABLEKS                       R16 R3 K4 ["Sphere"]
       90 GETTABLEKS                       R17 R3 K5 ["Cube"]
       92 GETTABLEKS                       R18 R3 K6 ["Cylinder"]
       94 SETLIST                          R15 R16 3 [1]
       96 SETTABLE                         R15 R13 R14
       97 GETTABLEKS                       R14 R1 K12 ["FillMode"]
       99 NEWTABLE                         R15 0 2
      101 GETTABLEKS                       R16 R4 K9 ["Fill"]
      103 GETTABLEKS                       R17 R4 K10 ["Replace"]
      105 SETLIST                          R15 R16 2 [1]
      107 SETTABLE                         R15 R13 R14
      108 GETTABLEKS                       R14 R1 K21 ["FlattenPlane"]
      110 NEWTABLE                         R15 0 2
      112 GETTABLEKS                       R16 R6 K18 ["Auto"]
      114 GETTABLEKS                       R17 R6 K19 ["Fixed"]
      116 SETLIST                          R15 R16 2 [1]
      118 SETTABLE                         R15 R13 R14
      119 GETTABLEKS                       R14 R1 K17 ["FlattenMode"]
      121 NEWTABLE                         R15 0 3
      123 GETTABLEKS                       R16 R5 K13 ["Erode"]
      125 GETTABLEKS                       R17 R5 K14 ["Grow"]
      127 GETTABLEKS                       R18 R5 K15 ["Both"]
      129 SETLIST                          R15 R16 3 [1]
      131 SETTABLE                         R15 R13 R14
      132 GETTABLEKS                       R14 R1 K26 ["PivotPosition"]
      134 NEWTABLE                         R15 0 3
      136 GETTABLEKS                       R16 R7 K22 ["Bottom"]
      138 GETTABLEKS                       R17 R7 K23 ["Center"]
      140 GETTABLEKS                       R18 R7 K24 ["Top"]
      142 SETLIST                          R15 R16 3 [1]
      144 SETTABLE                         R15 R13 R14
      145 GETTABLEKS                       R14 R1 K30 ["PlaneLock"]
      147 NEWTABLE                         R15 0 3
      149 GETTABLEKS                       R16 R8 K27 ["Off"]
      151 GETTABLEKS                       R17 R8 K18 ["Auto"]
      153 GETTABLEKS                       R18 R8 K28 ["Manual"]
      155 SETLIST                          R15 R16 3 [1]
      157 SETTABLE                         R15 R13 R14
      158 GETTABLEKS                       R14 R1 K33 ["MaterialMode"]
      160 NEWTABLE                         R15 0 2
      162 GETTABLEKS                       R16 R9 K31 ["Paint"]
      164 GETTABLEKS                       R17 R9 K10 ["Replace"]
      166 SETLIST                          R15 R16 2 [1]
      168 SETTABLE                         R15 R13 R14
      169 GETTABLEKS                       R14 R1 K37 ["MaterialUnit"]
      171 NEWTABLE                         R15 0 2
      173 GETTABLEKS                       R16 R10 K34 ["Stud"]
      175 GETTABLEKS                       R17 R10 K35 ["Percentage"]
      177 SETLIST                          R15 R16 2 [1]
      179 SETTABLE                         R15 R13 R14
      180 GETTABLEKS                       R14 R1 K40 ["Snapping"]
      182 NEWTABLE                         R15 0 2
      184 GETTABLEKS                       R16 R11 K27 ["Off"]
      186 GETTABLEKS                       R17 R11 K38 ["Voxel"]
      188 SETLIST                          R15 R16 2 [1]
      190 SETTABLE                         R15 R13 R14
      191 GETTABLEKS                       R14 R1 K51 ["TerrainType"]
      193 NEWTABLE                         R15 0 9
      195 GETTABLEKS                       R16 R12 K47 ["Plain"]
      197 GETTABLEKS                       R17 R12 K41 ["Arctic"]
      199 GETTABLEKS                       R18 R12 K43 ["Desert"]
      201 GETTABLEKS                       R19 R12 K46 ["Mountain"]
      203 GETTABLEKS                       R20 R12 K48 ["Volcano"]
      205 GETTABLEKS                       R21 R12 K45 ["Mesa"]
      207 GETTABLEKS                       R22 R12 K42 ["Crater"]
      209 GETTABLEKS                       R23 R12 K44 ["Lake"]
      211 GETTABLEKS                       R24 R12 K49 ["None"]
      213 SETLIST                          R15 R16 9 [1]
      215 SETTABLE                         R15 R13 R14
      216 MOVE                             R14 R0
      217 LOADNIL                          R15
      218 LOADNIL                          R16
      219 FORGPREP                         R14
      220 GETTABLE                         R20 R13 R17
      221 LOADK                            R22 K52 ["Expected editor enum index for %*"]
      222 MOVE                             R24 R17
      223 NAMECALL                         R22 R22 K53 ["format"]
      225 CALL                             R22 2 1
      226 MOVE                             R21 R22
      227 FASTCALL2                        ASSERT R20 R21 ; [+3]
      229 GETIMPORT                        R19 K55 [assert]
      231 CALL                             R19 2 0
      232 MOVE                             R19 R18
      233 LOADNIL                          R20
      234 LOADNIL                          R21
      235 FORGPREP                         R19
      236 GETIMPORT                        R24 K58 [table.find]
      238 GETTABLE                         R25 R13 R17
      239 MOVE                             R26 R23
      240 CALL                             R24 2 1
      241 LOADK                            R28 K59 ["Expected index for enum value %*.%*"]
      242 MOVE                             R30 R17
      243 MOVE                             R31 R23
      244 NAMECALL                         R28 R28 K53 ["format"]
      246 CALL                             R28 3 1
      247 MOVE                             R27 R28
      248 FASTCALL2                        ASSERT R24 R27 ; [+4]
      250 MOVE                             R26 R24
      251 GETIMPORT                        R25 K55 [assert]
      253 CALL                             R25 2 0
      254 FORGLOOP                         R19 2 ; [-19]
      256 FORGLOOP                         R14 2 ; [-37]
      258 SETTABLEKS                       R13 R0 K60 ["EnumTypeIndices"]
      260 SETTABLEKS                       R1 R0 K61 ["EnumType"]
      262 RETURN                           R0 1
