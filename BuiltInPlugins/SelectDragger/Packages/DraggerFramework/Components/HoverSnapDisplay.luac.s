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
       24 JUMPIFNOT                        R10 ; [+25]
       25 GETTABLEKS                       R9 R5 K5 ["Position"]
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R10 R10 K8 ["createElement"]
       30 GETUPVAL                         R11 1
       31 DUPTABLE                         R12 K12 [{["DraggerContext"], ["Position"], ["Hovered"] = True, ["IsActive"]}]
       32 SETTABLEKS                       R2 R12 K1 ["DraggerContext"]
       34 GETTABLEKS                       R13 R5 K5 ["Position"]
       36 SETTABLEKS                       R13 R12 K5 ["Position"]
       38 NAMECALL                         R13 R2 K13 ["shouldShowActiveInstanceHighlight"]
       40 CALL                             R13 1 1
       41 JUMPIFNOT                        R13 ; [+2]
       42 GETTABLEKS                       R13 R3 K14 ["IsActivePivot"]
       44 SETTABLEKS                       R13 R12 K11 ["IsActive"]
       46 CALL                             R10 2 1
       47 SETTABLEKS                       R10 R4 K15 ["PivotRing"]
       49 JUMP                             ; [+137]
       50 JUMPIFNOT                        R5 ; [+135]
       51 NAMECALL                         R10 R2 K16 ["getGridSnapEnabled"]
       53 CALL                             R10 1 1
       54 JUMPIFNOT                        R10 ; [+131]
       55 MOVE                             R12 R7
       56 NAMECALL                         R10 R5 K17 ["PointToObjectSpace"]
       58 CALL                             R10 2 1
       59 GETTABLEKS                       R12 R10 K18 ["X"]
       61 LOADN                            R13 0
       62 JUMPIFNOTLT                      R13 R12 ; [+4]
       64 GETTABLEKS                       R11 R5 K19 ["XVector"]
       66 JUMP                             ; [+3]
       67 GETTABLEKS                       R12 R5 K19 ["XVector"]
       69 MINUS                            R11 R12
       70 GETTABLEKS                       R13 R10 K20 ["Z"]
       72 LOADN                            R14 0
       73 JUMPIFNOTLT                      R14 R13 ; [+4]
       75 GETTABLEKS                       R12 R5 K21 ["ZVector"]
       77 JUMP                             ; [+3]
       78 GETTABLEKS                       R13 R5 K21 ["ZVector"]
       80 MINUS                            R12 R13
       81 NAMECALL                         R13 R2 K22 ["getGridSize"]
       83 CALL                             R13 1 1
       84 GETTABLEKS                       R16 R10 K18 ["X"]
       86 LOADN                            R17 0
       87 GETTABLEKS                       R18 R10 K20 ["Z"]
       89 FASTCALL                         VECTOR ; [+2]
       90 GETIMPORT                        R15 K25 [Vector3.new]
       92 CALL                             R15 3 1
       93 GETTABLEKS                       R21 R15 K18 ["X"]
       95 DIV                              R20 R21 R13
       96 ADDK                             R19 R20 K26 [0.5]
       97 FASTCALL1                        MATH_FLOOR R19 ; [+2]
       98 GETIMPORT                        R18 K29 [math.floor]
      100 CALL                             R18 1 1
      101 MUL                              R17 R18 R13
      102 GETTABLEKS                       R22 R15 K30 ["Y"]
      104 DIV                              R21 R22 R13
      105 ADDK                             R20 R21 K26 [0.5]
      106 FASTCALL1                        MATH_FLOOR R20 ; [+2]
      107 GETIMPORT                        R19 K29 [math.floor]
      109 CALL                             R19 1 1
      110 MUL                              R18 R19 R13
      111 GETTABLEKS                       R23 R15 K20 ["Z"]
      113 DIV                              R22 R23 R13
      114 ADDK                             R21 R22 K26 [0.5]
      115 FASTCALL1                        MATH_FLOOR R21 ; [+2]
      116 GETIMPORT                        R20 K29 [math.floor]
      118 CALL                             R20 1 1
      119 MUL                              R19 R20 R13
      120 FASTCALL                         VECTOR ; [+2]
      121 GETIMPORT                        R16 K25 [Vector3.new]
      123 CALL                             R16 3 1
      124 MOVE                             R14 R16
      125 MOVE                             R17 R14
      126 NAMECALL                         R15 R5 K31 ["PointToWorldSpace"]
      128 CALL                             R15 2 1
      129 MOVE                             R9 R15
      130 NAMECALL                         R15 R2 K32 ["shouldShowHoverGrids"]
      132 CALL                             R15 1 1
      133 JUMPIFNOT                        R15 ; [+53]
      134 GETTABLEKS                       R16 R14 K18 ["X"]
      136 FASTCALL1                        MATH_ABS R16 ; [+2]
      137 GETIMPORT                        R15 K34 [math.abs]
      139 CALL                             R15 1 1
      140 GETTABLEKS                       R17 R14 K20 ["Z"]
      142 FASTCALL1                        MATH_ABS R17 ; [+2]
      143 GETIMPORT                        R16 K34 [math.abs]
      145 CALL                             R16 1 1
      146 GETIMPORT                        R17 K37 [CFrame.fromMatrix]
      148 GETTABLEKS                       R18 R5 K5 ["Position"]
      150 MOVE                             R19 R11
      151 MOVE                             R22 R11
      152 NAMECALL                         R20 R12 K38 ["Cross"]
      154 CALL                             R20 2 -1
      155 CALL                             R17 -1 1
      156 GETUPVAL                         R18 0
      157 GETTABLEKS                       R18 R18 K8 ["createElement"]
      159 GETUPVAL                         R19 2
      160 DUPTABLE                         R20 K47 [{["MainTransparency"] = 0.4, ["DimTransparency"] = 0.85, ["Color3"], ["CFrame"], ["Size"], ["GridSize"], ["MajorStep"]}]
      161 SETTABLEKS                       R8 R20 K43 ["Color3"]
      163 SETTABLEKS                       R17 R20 K35 ["CFrame"]
      165 LOADN                            R23 0
      166 FASTCALL3                        VECTOR R15 R23 R16
      168 MOVE                             R22 R15
      169 MOVE                             R24 R16
      170 GETIMPORT                        R21 K25 [Vector3.new]
      172 CALL                             R21 3 1
      173 SETTABLEKS                       R21 R20 K44 ["Size"]
      175 SETTABLEKS                       R13 R20 K45 ["GridSize"]
      177 NAMECALL                         R21 R2 K48 ["getMajorGridIncrement"]
      179 CALL                             R21 1 1
      180 SETTABLEKS                       R21 R20 K46 ["MajorStep"]
      182 CALL                             R18 2 1
      183 SETTABLEKS                       R18 R4 K49 ["TargetRulerView"]
      185 JUMP                             ; [+1]
      186 MOVE                             R9 R7
      187 NAMECALL                         R10 R2 K32 ["shouldShowHoverGrids"]
      189 CALL                             R10 1 1
      190 JUMPIFNOT                        R10 ; [+94]
      191 GETTABLEKS                       R10 R3 K4 ["RaycastResult"]
      193 GETTABLEKS                       R10 R10 K50 ["Instance"]
      195 JUMPIFNOT                        R10 ; [+42]
      196 LOADK                            R13 K51 ["Part"]
      197 NAMECALL                         R11 R10 K52 ["IsA"]
      199 CALL                             R11 2 1
      200 JUMPIFNOT                        R11 ; [+37]
      201 GETTABLEKS                       R11 R10 K53 ["Shape"]
      203 GETIMPORT                        R12 K57 [Enum.PartType.Ball]
      205 JUMPIFNOTEQ                      R11 R12 ; [+14]
      207 GETUPVAL                         R11 0
      208 GETTABLEKS                       R11 R11 K8 ["createElement"]
      210 GETUPVAL                         R12 3
      211 DUPTABLE                         R13 K58 [{"Part", "Color3"}]
      212 SETTABLEKS                       R10 R13 K51 ["Part"]
      214 SETTABLEKS                       R8 R13 K43 ["Color3"]
      216 CALL                             R11 2 1
      217 SETTABLEKS                       R11 R4 K59 ["MajorLines"]
      219 JUMP                             ; [+18]
      220 GETTABLEKS                       R11 R10 K53 ["Shape"]
      222 GETIMPORT                        R12 K61 [Enum.PartType.Cylinder]
      224 JUMPIFNOTEQ                      R11 R12 ; [+13]
      226 GETUPVAL                         R11 0
      227 GETTABLEKS                       R11 R11 K8 ["createElement"]
      229 GETUPVAL                         R12 4
      230 DUPTABLE                         R13 K58 [{"Part", "Color3"}]
      231 SETTABLEKS                       R10 R13 K51 ["Part"]
      233 SETTABLEKS                       R8 R13 K43 ["Color3"]
      235 CALL                             R11 2 1
      236 SETTABLEKS                       R11 R4 K59 ["MajorLines"]
      238 JUMPIFNOT                        R5 ; [+46]
      239 NAMECALL                         R11 R2 K62 ["shouldGridSnap"]
      241 CALL                             R11 1 1
      242 JUMPIFNOT                        R11 ; [+42]
      243 GETUPVAL                         R11 0
      244 GETTABLEKS                       R11 R11 K8 ["createElement"]
      246 LOADK                            R12 K63 ["SphereHandleAdornment"]
      247 DUPTABLE                         R13 K70 [{["Radius"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = True, ["AdornCullingMode"], ["Adornee"], ["ZIndex"] = 0}]
      248 MOVE                             R17 R9
      249 NAMECALL                         R15 R2 K72 ["getHandleScale"]
      251 CALL                             R15 2 1
      252 MULK                             R14 R15 K71 [0.15]
      253 SETTABLEKS                       R14 R13 K64 ["Radius"]
      255 GETTABLEKS                       R15 R5 K73 ["Rotation"]
      257 ADD                              R14 R15 R9
      258 SETTABLEKS                       R14 R13 K35 ["CFrame"]
      260 GETTABLEKS                       R15 R1 K74 ["Pending"]
      262 JUMPIFNOT                        R15 ; [+4]
      263 NAMECALL                         R14 R2 K75 ["getChosenColor"]
      265 CALL                             R14 1 1
      266 JUMP                             ; [+3]
      267 NAMECALL                         R14 R2 K6 ["getGridColor"]
      269 CALL                             R14 1 1
      270 SETTABLEKS                       R14 R13 K43 ["Color3"]
      272 GETIMPORT                        R14 K77 [Enum.AdornCullingMode.Never]
      274 SETTABLEKS                       R14 R13 K66 ["AdornCullingMode"]
      276 GETIMPORT                        R14 K79 [workspace]
      278 GETTABLEKS                       R14 R14 K80 ["Terrain"]
      280 SETTABLEKS                       R14 R13 K67 ["Adornee"]
      282 CALL                             R11 2 1
      283 SETTABLEKS                       R11 R4 K81 ["SnapTo"]
      285 GETUPVAL                         R10 0
      286 GETTABLEKS                       R10 R10 K82 ["createFragment"]
      288 MOVE                             R11 R4
      289 CALL                             R10 1 -1
      290 RETURN                           R10 -1

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
