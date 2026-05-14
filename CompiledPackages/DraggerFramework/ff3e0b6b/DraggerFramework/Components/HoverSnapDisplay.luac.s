PROTO_0:
        0 GETTABLEKS                       R7 R0 K1 ["X"]
        2 DIV                              R6 R7 R1
        3 ADDK                             R5 R6 K0 [0.5]
        4 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        5 GETIMPORT                        R4 K4 [math.floor]
        7 CALL                             R4 1 1
        8 MUL                              R3 R4 R1
        9 GETTABLEKS                       R8 R0 K5 ["Y"]
       11 DIV                              R7 R8 R1
       12 ADDK                             R6 R7 K0 [0.5]
       13 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       14 GETIMPORT                        R5 K4 [math.floor]
       16 CALL                             R5 1 1
       17 MUL                              R4 R5 R1
       18 GETTABLEKS                       R9 R0 K6 ["Z"]
       20 DIV                              R8 R9 R1
       21 ADDK                             R7 R8 K0 [0.5]
       22 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       23 GETIMPORT                        R6 K4 [math.floor]
       25 CALL                             R6 1 1
       26 MUL                              R5 R6 R1
       27 FASTCALL                         VECTOR ; [+2]
       28 GETIMPORT                        R2 K9 [Vector3.new]
       30 CALL                             R2 3 1
       31 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["DraggerContext"]
        4 GETTABLEKS                       R3 R1 K2 ["HoverMetadata"]
        6 NEWTABLE                         R4 4 0
        8 JUMPIF                           R3 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R5 R3 K3 ["TargetMatrix"]
       12 GETTABLEKS                       R6 R3 K4 ["RaycastResult"]
       14 JUMPIF                           R6 ; [+1]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R7 R6 K5 ["Position"]
       18 NAMECALL                         R8 R2 K6 ["getGridColor"]
       20 CALL                             R8 1 1
       21 LOADNIL                          R9
       22 GETTABLEKS                       R10 R3 K7 ["IsPivot"]
       24 JUMPIFNOT                        R10 ; [+28]
       25 GETTABLEKS                       R9 R5 K5 ["Position"]
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R10 R10 K8 ["createElement"]
       30 GETUPVAL                         R11 1
       31 DUPTABLE                         R12 K11 [{"DraggerContext", "Position", "Hovered", "IsActive"}]
       32 SETTABLEKS                       R2 R12 K1 ["DraggerContext"]
       34 GETTABLEKS                       R13 R5 K5 ["Position"]
       36 SETTABLEKS                       R13 R12 K5 ["Position"]
       38 LOADB                            R13 1
       39 SETTABLEKS                       R13 R12 K9 ["Hovered"]
       41 NAMECALL                         R13 R2 K12 ["shouldShowActiveInstanceHighlight"]
       43 CALL                             R13 1 1
       44 JUMPIFNOT                        R13 ; [+2]
       45 GETTABLEKS                       R13 R3 K13 ["IsActivePivot"]
       47 SETTABLEKS                       R13 R12 K10 ["IsActive"]
       49 CALL                             R10 2 1
       50 SETTABLEKS                       R10 R4 K14 ["PivotRing"]
       52 JUMP                             ; [+143]
       53 JUMPIFNOT                        R5 ; [+141]
       54 NAMECALL                         R10 R2 K15 ["getGridSnapEnabled"]
       56 CALL                             R10 1 1
       57 JUMPIFNOT                        R10 ; [+137]
       58 MOVE                             R12 R7
       59 NAMECALL                         R10 R5 K16 ["PointToObjectSpace"]
       61 CALL                             R10 2 1
       62 GETTABLEKS                       R12 R10 K17 ["X"]
       64 LOADN                            R13 0
       65 JUMPIFNOTLT                      R13 R12 ; [+4]
       67 GETTABLEKS                       R11 R5 K18 ["XVector"]
       69 JUMP                             ; [+3]
       70 GETTABLEKS                       R12 R5 K18 ["XVector"]
       72 MINUS                            R11 R12
       73 GETTABLEKS                       R13 R10 K19 ["Z"]
       75 LOADN                            R14 0
       76 JUMPIFNOTLT                      R14 R13 ; [+4]
       78 GETTABLEKS                       R12 R5 K20 ["ZVector"]
       80 JUMP                             ; [+3]
       81 GETTABLEKS                       R13 R5 K20 ["ZVector"]
       83 MINUS                            R12 R13
       84 NAMECALL                         R13 R2 K21 ["getGridSize"]
       86 CALL                             R13 1 1
       87 GETTABLEKS                       R16 R10 K17 ["X"]
       89 LOADN                            R17 0
       90 GETTABLEKS                       R18 R10 K19 ["Z"]
       92 FASTCALL                         VECTOR ; [+2]
       93 GETIMPORT                        R15 K24 [Vector3.new]
       95 CALL                             R15 3 1
       96 GETTABLEKS                       R21 R15 K17 ["X"]
       98 DIV                              R20 R21 R13
       99 ADDK                             R19 R20 K25 [0.5]
      100 FASTCALL1                        MATH_FLOOR R19 ; [+2]
      101 GETIMPORT                        R18 K28 [math.floor]
      103 CALL                             R18 1 1
      104 MUL                              R17 R18 R13
      105 GETTABLEKS                       R22 R15 K29 ["Y"]
      107 DIV                              R21 R22 R13
      108 ADDK                             R20 R21 K25 [0.5]
      109 FASTCALL1                        MATH_FLOOR R20 ; [+2]
      110 GETIMPORT                        R19 K28 [math.floor]
      112 CALL                             R19 1 1
      113 MUL                              R18 R19 R13
      114 GETTABLEKS                       R23 R15 K19 ["Z"]
      116 DIV                              R22 R23 R13
      117 ADDK                             R21 R22 K25 [0.5]
      118 FASTCALL1                        MATH_FLOOR R21 ; [+2]
      119 GETIMPORT                        R20 K28 [math.floor]
      121 CALL                             R20 1 1
      122 MUL                              R19 R20 R13
      123 FASTCALL                         VECTOR ; [+2]
      124 GETIMPORT                        R16 K24 [Vector3.new]
      126 CALL                             R16 3 1
      127 MOVE                             R14 R16
      128 MOVE                             R17 R14
      129 NAMECALL                         R15 R5 K30 ["PointToWorldSpace"]
      131 CALL                             R15 2 1
      132 MOVE                             R9 R15
      133 NAMECALL                         R15 R2 K31 ["shouldShowHoverGrids"]
      135 CALL                             R15 1 1
      136 JUMPIFNOT                        R15 ; [+59]
      137 GETTABLEKS                       R16 R14 K17 ["X"]
      139 FASTCALL1                        MATH_ABS R16 ; [+2]
      140 GETIMPORT                        R15 K33 [math.abs]
      142 CALL                             R15 1 1
      143 GETTABLEKS                       R17 R14 K19 ["Z"]
      145 FASTCALL1                        MATH_ABS R17 ; [+2]
      146 GETIMPORT                        R16 K33 [math.abs]
      148 CALL                             R16 1 1
      149 GETIMPORT                        R17 K36 [CFrame.fromMatrix]
      151 GETTABLEKS                       R18 R5 K5 ["Position"]
      153 MOVE                             R19 R11
      154 MOVE                             R22 R11
      155 NAMECALL                         R20 R12 K37 ["Cross"]
      157 CALL                             R20 2 -1
      158 CALL                             R17 -1 1
      159 GETUPVAL                         R18 0
      160 GETTABLEKS                       R18 R18 K8 ["createElement"]
      162 GETUPVAL                         R19 2
      163 DUPTABLE                         R20 K44 [{"MainTransparency", "DimTransparency", "Color3", "CFrame", "Size", "GridSize", "MajorStep"}]
      164 LOADK                            R21 K45 [0.4]
      165 SETTABLEKS                       R21 R20 K38 ["MainTransparency"]
      167 LOADK                            R21 K46 [0.85]
      168 SETTABLEKS                       R21 R20 K39 ["DimTransparency"]
      170 SETTABLEKS                       R8 R20 K40 ["Color3"]
      172 SETTABLEKS                       R17 R20 K34 ["CFrame"]
      174 LOADN                            R23 0
      175 FASTCALL3                        VECTOR R15 R23 R16
      177 MOVE                             R22 R15
      178 MOVE                             R24 R16
      179 GETIMPORT                        R21 K24 [Vector3.new]
      181 CALL                             R21 3 1
      182 SETTABLEKS                       R21 R20 K41 ["Size"]
      184 SETTABLEKS                       R13 R20 K42 ["GridSize"]
      186 NAMECALL                         R21 R2 K47 ["getMajorGridIncrement"]
      188 CALL                             R21 1 1
      189 SETTABLEKS                       R21 R20 K43 ["MajorStep"]
      191 CALL                             R18 2 1
      192 SETTABLEKS                       R18 R4 K48 ["TargetRulerView"]
      194 JUMP                             ; [+1]
      195 MOVE                             R9 R7
      196 NAMECALL                         R10 R2 K31 ["shouldShowHoverGrids"]
      198 CALL                             R10 1 1
      199 JUMPIFNOT                        R10 ; [+100]
      200 GETTABLEKS                       R10 R3 K4 ["RaycastResult"]
      202 GETTABLEKS                       R10 R10 K49 ["Instance"]
      204 JUMPIFNOT                        R10 ; [+42]
      205 LOADK                            R13 K50 ["Part"]
      206 NAMECALL                         R11 R10 K51 ["IsA"]
      208 CALL                             R11 2 1
      209 JUMPIFNOT                        R11 ; [+37]
      210 GETTABLEKS                       R11 R10 K52 ["Shape"]
      212 GETIMPORT                        R12 K56 [Enum.PartType.Ball]
      214 JUMPIFNOTEQ                      R11 R12 ; [+14]
      216 GETUPVAL                         R11 0
      217 GETTABLEKS                       R11 R11 K8 ["createElement"]
      219 GETUPVAL                         R12 3
      220 DUPTABLE                         R13 K57 [{"Part", "Color3"}]
      221 SETTABLEKS                       R10 R13 K50 ["Part"]
      223 SETTABLEKS                       R8 R13 K40 ["Color3"]
      225 CALL                             R11 2 1
      226 SETTABLEKS                       R11 R4 K58 ["MajorLines"]
      228 JUMP                             ; [+18]
      229 GETTABLEKS                       R11 R10 K52 ["Shape"]
      231 GETIMPORT                        R12 K60 [Enum.PartType.Cylinder]
      233 JUMPIFNOTEQ                      R11 R12 ; [+13]
      235 GETUPVAL                         R11 0
      236 GETTABLEKS                       R11 R11 K8 ["createElement"]
      238 GETUPVAL                         R12 4
      239 DUPTABLE                         R13 K57 [{"Part", "Color3"}]
      240 SETTABLEKS                       R10 R13 K50 ["Part"]
      242 SETTABLEKS                       R8 R13 K40 ["Color3"]
      244 CALL                             R11 2 1
      245 SETTABLEKS                       R11 R4 K58 ["MajorLines"]
      247 JUMPIFNOT                        R5 ; [+52]
      248 NAMECALL                         R11 R2 K61 ["shouldGridSnap"]
      250 CALL                             R11 1 1
      251 JUMPIFNOT                        R11 ; [+48]
      252 GETUPVAL                         R11 0
      253 GETTABLEKS                       R11 R11 K8 ["createElement"]
      255 LOADK                            R12 K62 ["SphereHandleAdornment"]
      256 DUPTABLE                         R13 K68 [{"Radius", "CFrame", "Color3", "AlwaysOnTop", "AdornCullingMode", "Adornee", "ZIndex"}]
      257 MOVE                             R17 R9
      258 NAMECALL                         R15 R2 K70 ["getHandleScale"]
      260 CALL                             R15 2 1
      261 MULK                             R14 R15 K69 [0.15]
      262 SETTABLEKS                       R14 R13 K63 ["Radius"]
      264 GETTABLEKS                       R15 R5 K71 ["Rotation"]
      266 ADD                              R14 R15 R9
      267 SETTABLEKS                       R14 R13 K34 ["CFrame"]
      269 GETTABLEKS                       R15 R1 K72 ["Pending"]
      271 JUMPIFNOT                        R15 ; [+4]
      272 NAMECALL                         R14 R2 K73 ["getChosenColor"]
      274 CALL                             R14 1 1
      275 JUMP                             ; [+3]
      276 NAMECALL                         R14 R2 K6 ["getGridColor"]
      278 CALL                             R14 1 1
      279 SETTABLEKS                       R14 R13 K40 ["Color3"]
      281 LOADB                            R14 1
      282 SETTABLEKS                       R14 R13 K64 ["AlwaysOnTop"]
      284 GETIMPORT                        R14 K75 [Enum.AdornCullingMode.Never]
      286 SETTABLEKS                       R14 R13 K65 ["AdornCullingMode"]
      288 GETIMPORT                        R14 K77 [workspace]
      290 GETTABLEKS                       R14 R14 K78 ["Terrain"]
      292 SETTABLEKS                       R14 R13 K66 ["Adornee"]
      294 LOADN                            R14 0
      295 SETTABLEKS                       R14 R13 K67 ["ZIndex"]
      297 CALL                             R11 2 1
      298 SETTABLEKS                       R11 R4 K79 ["SnapTo"]
      300 GETUPVAL                         R10 0
      301 GETTABLEKS                       R10 R10 K80 ["createFragment"]
      303 MOVE                             R11 R4
      304 CALL                             R10 1 -1
      305 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Components"]
       18 GETTABLEKS                       R4 R4 K7 ["SphereMajorLines"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Components"]
       25 GETTABLEKS                       R5 R5 K8 ["CylinderMajorLines"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K4 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Components"]
       32 GETTABLEKS                       R6 R6 K9 ["PivotRing"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K4 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Components"]
       39 GETTABLEKS                       R7 R7 K10 ["RulerView"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R2 K11 ["Component"]
       44 LOADK                            R9 K12 ["HoverSnapDisplay"]
       45 NAMECALL                         R7 R7 K13 ["extend"]
       47 CALL                             R7 2 1
       48 DUPCLOSURE                       R8 K14 [PROTO_0]
       49 DUPCLOSURE                       R9 K15 [PROTO_1]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 SETTABLEKS                       R9 R7 K16 ["render"]
       57 RETURN                           R7 1
