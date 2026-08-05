PROTO_0:
        0 LOADK                            R3 K0 ["WedgePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+25]
        5 LOADK                            R3 K2 ["CornerWedgePart"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+20]
       10 LOADK                            R3 K3 ["Part"]
       11 NAMECALL                         R1 R0 K1 ["IsA"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+15]
       15 LOADB                            R1 1
       16 GETTABLEKS                       R2 R0 K4 ["Shape"]
       18 GETIMPORT                        R3 K8 [Enum.PartType.Wedge]
       20 JUMPIFEQ                         R2 R3 ; [+9]
       22 GETTABLEKS                       R2 R0 K4 ["Shape"]
       24 GETIMPORT                        R3 K10 [Enum.PartType.CornerWedge]
       26 JUMPIFEQ                         R2 R3 ; [+2]
       28 LOADB                            R1 0 +1
       29 LOADB                            R1 1
       30 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["Instance"]
        2 LOADK                            R5 K1 ["Part"]
        3 NAMECALL                         R3 R2 K2 ["IsA"]
        5 CALL                             R3 2 1
        6 JUMPIFNOT                        R3 ; [+100]
        7 GETTABLEKS                       R3 R2 K3 ["CFrame"]
        9 GETTABLEKS                       R4 R2 K4 ["Size"]
       11 GETTABLEKS                       R7 R1 K5 ["Position"]
       13 NAMECALL                         R5 R3 K6 ["PointToObjectSpace"]
       15 CALL                             R5 2 1
       16 NAMECALL                         R7 R5 K7 ["Abs"]
       18 CALL                             R7 1 1
       19 LOADK                            R8 K8 [{0.025, 0.025, 0.025}]
       20 SUB                              R6 R7 R8
       21 NAMECALL                         R6 R6 K7 ["Abs"]
       23 CALL                             R6 1 1
       24 LOADK                            R8 K9 [0.5]
       25 LOADK                            R10 K10 [{0.05, 0.05, 0.05}]
       26 SUB                              R9 R10 R4
       27 MUL                              R7 R8 R9
       28 GETTABLEKS                       R10 R0 K11 ["Unit"]
       30 NAMECALL                         R8 R3 K12 ["VectorToObjectSpace"]
       32 CALL                             R8 2 1
       33 LOADNIL                          R9
       34 GETTABLEKS                       R10 R7 K13 ["X"]
       36 LOADN                            R11 0
       37 JUMPIFNOTLT                      R11 R10 ; [+16]
       39 GETTABLEKS                       R10 R6 K13 ["X"]
       41 LOADK                            R11 K14 [0.001]
       42 JUMPIFNOTLT                      R10 R11 ; [+11]
       44 GETTABLEKS                       R10 R7 K13 ["X"]
       46 GETTABLEKS                       R12 R8 K13 ["X"]
       48 FASTCALL1                        MATH_ABS R12 ; [+2]
       49 GETIMPORT                        R11 K17 [math.abs]
       51 CALL                             R11 1 1
       52 DIV                              R9 R10 R11
       53 JUMP                             ; [+39]
       54 GETTABLEKS                       R10 R7 K18 ["Y"]
       56 LOADN                            R11 0
       57 JUMPIFNOTLT                      R11 R10 ; [+16]
       59 GETTABLEKS                       R10 R6 K18 ["Y"]
       61 LOADK                            R11 K14 [0.001]
       62 JUMPIFNOTLT                      R10 R11 ; [+11]
       64 GETTABLEKS                       R10 R7 K18 ["Y"]
       66 GETTABLEKS                       R12 R8 K18 ["Y"]
       68 FASTCALL1                        MATH_ABS R12 ; [+2]
       69 GETIMPORT                        R11 K17 [math.abs]
       71 CALL                             R11 1 1
       72 DIV                              R9 R10 R11
       73 JUMP                             ; [+19]
       74 GETTABLEKS                       R10 R7 K19 ["Z"]
       76 LOADN                            R11 0
       77 JUMPIFNOTLT                      R11 R10 ; [+15]
       79 GETTABLEKS                       R10 R6 K19 ["Z"]
       81 LOADK                            R11 K14 [0.001]
       82 JUMPIFNOTLT                      R10 R11 ; [+10]
       84 GETTABLEKS                       R10 R7 K19 ["Z"]
       86 GETTABLEKS                       R12 R8 K19 ["Z"]
       88 FASTCALL1                        MATH_ABS R12 ; [+2]
       89 GETIMPORT                        R11 K17 [math.abs]
       91 CALL                             R11 1 1
       92 DIV                              R9 R10 R11
       93 JUMPIFNOT                        R9 ; [+13]
       94 GETTABLEKS                       R10 R1 K5 ["Position"]
       96 GETTABLEKS                       R12 R0 K11 ["Unit"]
       98 MUL                              R11 R12 R9
       99 ADD                              R10 R10 R11
      100 SETTABLEKS                       R10 R1 K5 ["Position"]
      102 GETTABLEKS                       R10 R1 K20 ["Distance"]
      104 ADD                              R10 R10 R9
      105 SETTABLEKS                       R10 R1 K20 ["Distance"]
      107 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["Position"]
        2 GETIMPORT                        R5 K2 [workspace]
        4 MOVE                             R7 R0
        5 MOVE                             R8 R1
        6 GETTABLEKS                       R10 R2 K4 ["Unit"]
        8 MULK                             R9 R10 K3 [1023]
        9 MOVE                             R10 R3
       10 NAMECALL                         R5 R5 K5 ["Blockcast"]
       12 CALL                             R5 5 1
       13 GETUPVAL                         R6 0
       14 MOVE                             R7 R5
       15 CALL                             R6 1 1
       16 JUMPIFNOT                        R6 ; [+314]
       17 FASTCALL2K                       ASSERT R5 K6 ; [+5]
       19 MOVE                             R7 R5
       20 LOADK                            R8 K6 ["isGood checks for non-nil"]
       21 GETIMPORT                        R6 K8 [assert]
       23 CALL                             R6 2 0
       24 GETTABLEKS                       R7 R5 K9 ["Normal"]
       26 GETTABLEKS                       R9 R2 K4 ["Unit"]
       28 NAMECALL                         R7 R7 K10 ["Dot"]
       30 CALL                             R7 2 1
       31 FASTCALL1                        MATH_ABS R7 ; [+2]
       32 GETIMPORT                        R6 K13 [math.abs]
       34 CALL                             R6 1 1
       35 LOADK                            R7 K14 [0.3]
       36 JUMPIFNOTLT                      R6 R7 ; [+33]
       38 GETTABLEKS                       R6 R3 K15 ["FilterType"]
       40 GETIMPORT                        R7 K19 [Enum.RaycastFilterType.Exclude]
       42 JUMPIFNOTEQ                      R6 R7 ; [+27]
       44 GETIMPORT                        R6 K22 [RaycastParams.new]
       46 CALL                             R6 0 1
       47 GETTABLEKS                       R7 R3 K23 ["FilterDescendantsInstances"]
       49 SETTABLEKS                       R7 R6 K23 ["FilterDescendantsInstances"]
       51 GETTABLEKS                       R7 R3 K24 ["BruteForceAllSlow"]
       53 SETTABLEKS                       R7 R6 K24 ["BruteForceAllSlow"]
       55 GETUPVAL                         R7 1
       56 SETTABLEKS                       R7 R6 K25 ["CollisionGroup"]
       58 GETTABLEKS                       R9 R5 K26 ["Instance"]
       60 NAMECALL                         R7 R6 K27 ["AddToFilter"]
       62 CALL                             R7 2 0
       63 GETUPVAL                         R7 2
       64 MOVE                             R8 R0
       65 MOVE                             R9 R1
       66 MOVE                             R10 R2
       67 MOVE                             R11 R6
       68 CALL                             R7 4 -1
       69 RETURN                           R7 -1
       70 GETTABLEKS                       R6 R5 K0 ["Position"]
       72 LOADNIL                          R7
       73 GETUPVAL                         R8 3
       74 GETTABLEKS                       R9 R5 K26 ["Instance"]
       76 CALL                             R8 1 1
       77 JUMPIFNOT                        R8 ; [+23]
       78 GETTABLEKS                       R8 R5 K26 ["Instance"]
       80 GETTABLEKS                       R8 R8 K28 ["CFrame"]
       82 LOADN                            R11 0
       83 GETTABLEKS                       R14 R5 K26 ["Instance"]
       85 GETTABLEKS                       R14 R14 K30 ["Size"]
       87 GETTABLEKS                       R14 R14 K31 ["Y"]
       89 MINUS                            R13 R14
       90 DIVK                             R12 R13 K29 [4]
       91 LOADN                            R13 0
       92 FASTCALL                         VECTOR ; [+2]
       93 GETIMPORT                        R10 K33 [Vector3.new]
       95 CALL                             R10 3 1
       96 NAMECALL                         R8 R8 K34 ["PointToWorldSpace"]
       98 CALL                             R8 2 1
       99 SUB                              R7 R8 R6
      100 JUMP                             ; [+5]
      101 GETTABLEKS                       R8 R5 K26 ["Instance"]
      103 GETTABLEKS                       R8 R8 K0 ["Position"]
      105 SUB                              R7 R8 R6
      106 GETTABLEKS                       R9 R2 K4 ["Unit"]
      108 GETTABLEKS                       R12 R2 K4 ["Unit"]
      110 NAMECALL                         R10 R7 K10 ["Dot"]
      112 CALL                             R10 2 1
      113 MUL                              R8 R9 R10
      114 SUB                              R7 R7 R8
      115 GETTABLEKS                       R8 R7 K35 ["Magnitude"]
      117 LOADK                            R9 K36 [0.05]
      118 JUMPIFNOTLT                      R9 R8 ; [+5]
      120 GETTABLEKS                       R9 R7 K4 ["Unit"]
      122 MULK                             R8 R9 K36 [0.05]
      123 ADD                              R6 R6 R8
      124 GETIMPORT                        R8 K22 [RaycastParams.new]
      126 CALL                             R8 0 1
      127 GETIMPORT                        R9 K19 [Enum.RaycastFilterType.Exclude]
      129 SETTABLEKS                       R9 R8 K15 ["FilterType"]
      131 GETTABLEKS                       R9 R3 K24 ["BruteForceAllSlow"]
      133 SETTABLEKS                       R9 R8 K24 ["BruteForceAllSlow"]
      135 GETUPVAL                         R9 1
      136 SETTABLEKS                       R9 R8 K25 ["CollisionGroup"]
      138 GETTABLEKS                       R10 R2 K4 ["Unit"]
      140 MULK                             R9 R10 K37 [0.1]
      141 GETIMPORT                        R10 K2 [workspace]
      143 SUB                              R12 R6 R9
      144 MULK                             R13 R9 K38 [2]
      145 MOVE                             R14 R8
      146 NAMECALL                         R10 R10 K39 ["Raycast"]
      148 CALL                             R10 4 1
      149 JUMPIFNOT                        R10 ; [+21]
      150 GETTABLEKS                       R11 R10 K26 ["Instance"]
      152 GETTABLEKS                       R12 R5 K26 ["Instance"]
      154 JUMPIFEQ                         R11 R12 ; [+16]
      156 GETTABLEKS                       R13 R10 K26 ["Instance"]
      158 NAMECALL                         R11 R8 K27 ["AddToFilter"]
      160 CALL                             R11 2 0
      161 GETIMPORT                        R11 K2 [workspace]
      163 SUB                              R13 R6 R9
      164 MULK                             R14 R9 K38 [2]
      165 MOVE                             R15 R8
      166 NAMECALL                         R11 R11 K39 ["Raycast"]
      168 CALL                             R11 4 1
      169 MOVE                             R10 R11
      170 JUMPBACK                         ; [-22]
      171 GETUPVAL                         R11 0
      172 MOVE                             R12 R10
      173 CALL                             R11 1 1
      174 JUMPIFNOT                        R11 ; [+124]
      175 FASTCALL2K                       ASSERT R10 K40 ; [+5]
      177 MOVE                             R12 R10
      178 LOADK                            R13 K40 ["isGood checks non-nil"]
      179 GETIMPORT                        R11 K8 [assert]
      181 CALL                             R11 2 0
      182 GETTABLEKS                       R12 R10 K9 ["Normal"]
      184 GETTABLEKS                       R14 R2 K4 ["Unit"]
      186 NAMECALL                         R12 R12 K10 ["Dot"]
      188 CALL                             R12 2 1
      189 FASTCALL1                        MATH_ABS R12 ; [+2]
      190 GETIMPORT                        R11 K13 [math.abs]
      192 CALL                             R11 1 1
      193 LOADK                            R12 K14 [0.3]
      194 JUMPIFNOTLT                      R11 R12 ; [+68]
      196 GETTABLEKS                       R11 R3 K15 ["FilterType"]
      198 GETIMPORT                        R12 K19 [Enum.RaycastFilterType.Exclude]
      200 JUMPIFNOTEQ                      R11 R12 ; [+27]
      202 GETIMPORT                        R11 K22 [RaycastParams.new]
      204 CALL                             R11 0 1
      205 GETTABLEKS                       R12 R3 K23 ["FilterDescendantsInstances"]
      207 SETTABLEKS                       R12 R11 K23 ["FilterDescendantsInstances"]
      209 GETTABLEKS                       R12 R3 K24 ["BruteForceAllSlow"]
      211 SETTABLEKS                       R12 R11 K24 ["BruteForceAllSlow"]
      213 GETUPVAL                         R12 1
      214 SETTABLEKS                       R12 R11 K25 ["CollisionGroup"]
      216 GETTABLEKS                       R14 R10 K26 ["Instance"]
      218 NAMECALL                         R12 R11 K27 ["AddToFilter"]
      220 CALL                             R12 2 0
      221 GETUPVAL                         R12 2
      222 MOVE                             R13 R0
      223 MOVE                             R14 R1
      224 MOVE                             R15 R2
      225 MOVE                             R16 R11
      226 CALL                             R12 4 -1
      227 RETURN                           R12 -1
      228 GETUPVAL                         R11 4
      229 GETTABLEKS                       R11 R11 K41 ["intersectRayPlane"]
      231 MOVE                             R12 R4
      232 MOVE                             R13 R2
      233 GETTABLEKS                       R14 R10 K0 ["Position"]
      235 MINUS                            R15 R2
      236 CALL                             R11 4 1
      237 DUPTABLE                         R12 K43 [{"Position", "Distance", "Normal", "Instance"}]
      238 MUL                              R14 R2 R11
      239 ADD                              R13 R4 R14
      240 SETTABLEKS                       R13 R12 K0 ["Position"]
      242 GETTABLEKS                       R14 R2 K35 ["Magnitude"]
      244 MUL                              R13 R14 R11
      245 SETTABLEKS                       R13 R12 K42 ["Distance"]
      247 GETTABLEKS                       R13 R10 K9 ["Normal"]
      249 SETTABLEKS                       R13 R12 K9 ["Normal"]
      251 GETTABLEKS                       R13 R5 K26 ["Instance"]
      253 SETTABLEKS                       R13 R12 K26 ["Instance"]
      255 MOVE                             R5 R12
      256 GETUPVAL                         R12 5
      257 JUMPIFNOT                        R12 ; [+4]
      258 GETUPVAL                         R12 6
      259 MOVE                             R13 R2
      260 MOVE                             R14 R5
      261 CALL                             R12 2 0
      262 RETURN                           R5 1
      263 GETUPVAL                         R11 4
      264 GETTABLEKS                       R11 R11 K41 ["intersectRayPlane"]
      266 MOVE                             R12 R4
      267 MOVE                             R13 R2
      268 GETTABLEKS                       R14 R10 K0 ["Position"]
      270 GETTABLEKS                       R15 R10 K9 ["Normal"]
      272 CALL                             R11 4 1
      273 DUPTABLE                         R12 K43 [{"Position", "Distance", "Normal", "Instance"}]
      274 MUL                              R14 R2 R11
      275 ADD                              R13 R4 R14
      276 SETTABLEKS                       R13 R12 K0 ["Position"]
      278 GETTABLEKS                       R14 R2 K35 ["Magnitude"]
      280 MUL                              R13 R14 R11
      281 SETTABLEKS                       R13 R12 K42 ["Distance"]
      283 GETTABLEKS                       R13 R10 K9 ["Normal"]
      285 SETTABLEKS                       R13 R12 K9 ["Normal"]
      287 GETTABLEKS                       R13 R5 K26 ["Instance"]
      289 SETTABLEKS                       R13 R12 K26 ["Instance"]
      291 MOVE                             R5 R12
      292 GETUPVAL                         R12 5
      293 JUMPIFNOT                        R12 ; [+4]
      294 GETUPVAL                         R12 6
      295 MOVE                             R13 R2
      296 MOVE                             R14 R5
      297 CALL                             R12 2 0
      298 RETURN                           R5 1
      299 GETTABLEKS                       R11 R3 K15 ["FilterType"]
      301 GETIMPORT                        R12 K19 [Enum.RaycastFilterType.Exclude]
      303 JUMPIFNOTEQ                      R11 R12 ; [+27]
      305 GETIMPORT                        R11 K22 [RaycastParams.new]
      307 CALL                             R11 0 1
      308 GETTABLEKS                       R12 R3 K23 ["FilterDescendantsInstances"]
      310 SETTABLEKS                       R12 R11 K23 ["FilterDescendantsInstances"]
      312 GETTABLEKS                       R12 R3 K24 ["BruteForceAllSlow"]
      314 SETTABLEKS                       R12 R11 K24 ["BruteForceAllSlow"]
      316 GETUPVAL                         R12 1
      317 SETTABLEKS                       R12 R11 K25 ["CollisionGroup"]
      319 GETTABLEKS                       R14 R5 K26 ["Instance"]
      321 NAMECALL                         R12 R11 K27 ["AddToFilter"]
      323 CALL                             R12 2 0
      324 GETUPVAL                         R12 2
      325 MOVE                             R13 R0
      326 MOVE                             R14 R1
      327 MOVE                             R15 R2
      328 MOVE                             R16 R11
      329 CALL                             R12 4 -1
      330 RETURN                           R12 -1
      331 LOADNIL                          R6
      332 RETURN                           R6 1

PROTO_3:
        0 GETTABLEKS                       R3 R2 K0 ["Instance"]
        2 GETTABLEKS                       R5 R3 K2 ["Size"]
        4 DIVK                             R4 R5 K1 [2]
        5 GETTABLEKS                       R5 R3 K3 ["CFrame"]
        7 GETTABLEKS                       R7 R2 K4 ["Position"]
        9 NAMECALL                         R5 R5 K5 ["PointToObjectSpace"]
       11 CALL                             R5 2 1
       12 NAMECALL                         R6 R5 K6 ["Abs"]
       14 CALL                             R6 1 1
       15 NAMECALL                         R7 R5 K7 ["Sign"]
       17 CALL                             R7 1 1
       18 SUB                              R8 R6 R4
       19 NAMECALL                         R8 R8 K6 ["Abs"]
       21 CALL                             R8 1 1
       22 GETTABLEKS                       R10 R8 K8 ["X"]
       24 LOADK                            R11 K9 [0.2]
       25 JUMPIFNOTLT                      R10 R11 ; [+4]
       27 GETTABLEKS                       R9 R4 K8 ["X"]
       29 JUMP                             ; [+2]
       30 GETTABLEKS                       R9 R6 K8 ["X"]
       32 GETTABLEKS                       R11 R8 K10 ["Y"]
       34 LOADK                            R12 K9 [0.2]
       35 JUMPIFNOTLT                      R11 R12 ; [+4]
       37 GETTABLEKS                       R10 R4 K10 ["Y"]
       39 JUMP                             ; [+2]
       40 GETTABLEKS                       R10 R6 K10 ["Y"]
       42 GETTABLEKS                       R12 R8 K11 ["Z"]
       44 LOADK                            R13 K9 [0.2]
       45 JUMPIFNOTLT                      R12 R13 ; [+4]
       47 GETTABLEKS                       R11 R4 K11 ["Z"]
       49 JUMP                             ; [+2]
       50 GETTABLEKS                       R11 R6 K11 ["Z"]
       52 GETTABLEKS                       R12 R3 K3 ["CFrame"]
       54 FASTCALL3                        VECTOR R9 R10 R11
       56 MOVE                             R16 R9
       57 MOVE                             R17 R10
       58 MOVE                             R18 R11
       59 GETIMPORT                        R15 K14 [Vector3.new]
       61 CALL                             R15 3 1
       62 MUL                              R14 R7 R15
       63 NAMECALL                         R12 R12 K15 ["PointToWorldSpace"]
       65 CALL                             R12 2 1
       66 SUB                              R14 R12 R0
       67 MOVE                             R16 R1
       68 NAMECALL                         R14 R14 K16 ["Dot"]
       70 CALL                             R14 2 1
       71 FASTCALL1                        MATH_ABS R14 ; [+2]
       72 GETIMPORT                        R13 K19 [math.abs]
       74 CALL                             R13 1 1
       75 DUPTABLE                         R14 K22 [{"Position", "Distance", "Normal", "Instance"}]
       76 SETTABLEKS                       R12 R14 K4 ["Position"]
       78 SETTABLEKS                       R13 R14 K20 ["Distance"]
       80 GETTABLEKS                       R15 R2 K21 ["Normal"]
       82 SETTABLEKS                       R15 R14 K21 ["Normal"]
       84 SETTABLEKS                       R3 R14 K0 ["Instance"]
       86 RETURN                           R14 1

PROTO_4:
        0 GETIMPORT                        R2 K2 [os.clock]
        2 CALL                             R2 0 1
        3 GETUPVAL                         R3 0
        4 SUB                              R1 R2 R3
        5 LOADK                            R2 K3 [0.01]
        6 JUMPIFLT                         R2 R1 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 ADD                              R7 R1 R6
        5 MULK                             R10 R7 K1 [1000]
        6 ADDK                             R9 R10 K0 [0.5]
        7 FASTCALL1                        MATH_FLOOR R9 ; [+2]
        8 GETIMPORT                        R8 K4 [math.floor]
       10 CALL                             R8 1 1
       11 GETUPVAL                         R10 1
       12 GETTABLE                         R9 R10 R8
       13 JUMPIF                           R9 ; [+14]
       14 GETUPVAL                         R9 1
       15 LOADB                            R10 1
       16 SETTABLE                         R10 R9 R8
       17 GETUPVAL                         R10 2
       18 DUPTABLE                         R11 K7 [{"Point", "Distance"}]
       19 SETTABLEKS                       R0 R11 K5 ["Point"]
       21 SETTABLEKS                       R7 R11 K6 ["Distance"]
       23 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       25 GETIMPORT                        R9 K10 [table.insert]
       27 CALL                             R9 2 0
       28 FORGLOOP                         R2 2 ; [-25]
       30 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R7 K2 [os.clock]
        2 CALL                             R7 0 1
        3 NEWCLOSURE                       R8 P0
        4 CAPTURE                          REF R7
        5 NEWTABLE                         R9 0 0
        7 JUMPIFNOTEQ                      R1 R1 ; [+13]
        9 GETTABLEKS                       R10 R1 K3 ["Magnitude"]
       11 JUMPIFEQKN                       R10 K4 [∞] ; [+9]
       13 JUMPIFNOTEQ                      R0 R0 ; [+7]
       15 GETTABLEKS                       R10 R0 K5 ["Position"]
       17 GETTABLEKS                       R10 R10 K3 ["Magnitude"]
       19 JUMPIFNOTEQKN                    R10 K4 [∞] ; [+3]
       21 CLOSEUPVALS                      R7
       22 RETURN                           R9 1
       23 GETIMPORT                        R10 K8 [RaycastParams.new]
       25 CALL                             R10 0 1
       26 GETIMPORT                        R11 K12 [Enum.RaycastFilterType.Include]
       28 SETTABLEKS                       R11 R10 K13 ["FilterType"]
       30 SETTABLEKS                       R3 R10 K14 ["FilterDescendantsInstances"]
       32 LOADB                            R11 1
       33 SETTABLEKS                       R11 R10 K15 ["BruteForceAllSlow"]
       35 GETUPVAL                         R11 0
       36 SETTABLEKS                       R11 R10 K16 ["CollisionGroup"]
       38 LOADK                            R13 K17 [{511, 511, 511}]
       39 NAMECALL                         R11 R1 K18 ["Min"]
       41 CALL                             R11 2 1
       42 MOVE                             R1 R11
       43 NEWTABLE                         R11 0 0
       45 MOVE                             R12 R5
       46 LOADNIL                          R13
       47 LOADNIL                          R14
       48 FORGPREP                         R12
       49 MUL                              R18 R16 R2
       50 MULK                             R17 R18 K19 [400]
       51 GETUPVAL                         R18 1
       52 ADD                              R19 R0 R17
       53 MOVE                             R20 R1
       54 MINUS                            R22 R17
       55 MULK                             R21 R22 K20 [2]
       56 MOVE                             R22 R10
       57 CALL                             R18 4 1
       58 JUMPIFNOT                        R18 ; [+19]
       59 GETUPVAL                         R19 2
       60 ADD                              R20 R0 R17
       61 GETTABLEKS                       R20 R20 K5 ["Position"]
       63 MINUS                            R22 R16
       64 MUL                              R21 R22 R2
       65 MOVE                             R22 R18
       66 CALL                             R19 3 1
       67 MOVE                             R18 R19
       68 GETTABLEKS                       R23 R18 K21 ["Distance"]
       70 SUBK                             R22 R23 K19 [400]
       71 MUL                              R21 R22 R16
       72 FASTCALL2                        TABLE_INSERT R11 R21 ; [+4]
       74 MOVE                             R20 R11
       75 GETIMPORT                        R19 K24 [table.insert]
       77 CALL                             R19 2 0
       78 FORGLOOP                         R12 2 ; [-30]
       80 LOADB                            R12 0
       81 MOVE                             R13 R11
       82 LOADNIL                          R14
       83 LOADNIL                          R15
       84 FORGPREP                         R13
       85 FASTCALL1                        MATH_ABS R17 ; [+3]
       86 MOVE                             R19 R17
       87 GETIMPORT                        R18 K27 [math.abs]
       89 CALL                             R18 1 1
       90 LOADK                            R19 K28 [0.001]
       91 JUMPIFNOTLT                      R18 R19 ; [+3]
       93 LOADB                            R12 1
       94 JUMP                             ; [+2]
       95 FORGLOOP                         R13 2 ; [-11]
       97 LENGTH                           R13 R5
       98 JUMPIFNOTEQKN                    R13 K29 [1] ; [+9]
      100 LENGTH                           R13 R11
      101 JUMPIFNOTEQKN                    R13 K30 [0] ; [+14]
      103 NEWTABLE                         R13 0 0
      105 CLOSEUPVALS                      R7
      106 RETURN                           R13 1
      107 JUMP                             ; [+8]
      108 JUMPIF                           R12 ; [+7]
      109 FASTCALL2K                       TABLE_INSERT R11 K30 ; [+5]
      111 MOVE                             R14 R11
      112 LOADK                            R15 K30 [0]
      113 GETIMPORT                        R13 K24 [table.insert]
      115 CALL                             R13 2 0
      116 NEWTABLE                         R13 0 0
      118 NEWCLOSURE                       R14 P1
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R9
      122 GETIMPORT                        R15 K32 [Enum.RaycastFilterType.Exclude]
      124 SETTABLEKS                       R15 R10 K13 ["FilterType"]
      126 MOVE                             R15 R4
      127 LOADNIL                          R16
      128 LOADNIL                          R17
      129 FORGPREP                         R15
      130 SETTABLEKS                       R3 R10 K14 ["FilterDescendantsInstances"]
      132 MOVE                             R20 R0
      133 LOADN                            R21 0
      134 LOADNIL                          R22
      135 LOADN                            R23 0
      136 GETIMPORT                        R24 K2 [os.clock]
      138 CALL                             R24 0 1
      139 MOVE                             R7 R24
      140 GETIMPORT                        R26 K2 [os.clock]
      142 CALL                             R26 0 1
      143 SUB                              R25 R26 R7
      144 LOADK                            R26 K33 [0.01]
      145 JUMPIFLT                         R26 R25 ; [+2]
      147 LOADB                            R24 0 +1
      148 LOADB                            R24 1
      149 JUMPIF                           R24 ; [+39]
      150 GETUPVAL                         R24 1
      151 MOVE                             R25 R20
      152 MOVE                             R26 R1
      153 MUL                              R28 R2 R19
      154 MULK                             R27 R28 K34 [2000]
      155 MOVE                             R28 R10
      156 CALL                             R24 4 1
      157 JUMPIFNOT                        R24 ; [+31]
      158 ADDK                             R23 R23 K29 [1]
      159 GETTABLEKS                       R27 R24 K21 ["Distance"]
      161 ADD                              R26 R21 R27
      162 MUL                              R25 R19 R26
      163 MOVE                             R26 R14
      164 GETTABLEKS                       R27 R24 K5 ["Position"]
      166 MOVE                             R28 R25
      167 CALL                             R26 2 0
      168 GETTABLEKS                       R28 R24 K35 ["Instance"]
      170 NAMECALL                         R26 R10 K36 ["AddToFilter"]
      172 CALL                             R26 2 0
      173 GETTABLEKS                       R26 R20 K37 ["Rotation"]
      175 GETTABLEKS                       R27 R24 K5 ["Position"]
      177 ADD                              R20 R26 R27
      178 GETTABLEKS                       R22 R24 K35 ["Instance"]
      180 GETTABLEKS                       R26 R24 K21 ["Distance"]
      182 ADD                              R21 R21 R26
      183 DIVK                             R26 R6 K20 [2]
      184 JUMPIFLE                         R26 R23 ; [+4]
      186 JUMP                             ; [+1]
      187 JUMP                             ; [+1]
      188 JUMPBACK                         ; [-49]
      189 JUMPIFNOT                        R22 ; [+18]
      190 DIVK                             R24 R6 K20 [2]
      191 JUMPIFEQ                         R23 R24 ; [+20]
      193 LOADN                            R25 500
      194 GETTABLEKS                       R26 R22 K38 ["Size"]
      196 GETTABLEKS                       R26 R26 K3 ["Magnitude"]
      198 FASTCALL2                        MATH_MIN R25 R26 ; [+3]
      200 GETIMPORT                        R24 K40 [math.min]
      202 CALL                             R24 2 1
      203 MUL                              R26 R2 R19
      204 MUL                              R25 R26 R24
      205 ADD                              R20 R20 R25
      206 ADD                              R21 R21 R24
      207 JUMP                             ; [+4]
      208 MUL                              R25 R2 R19
      209 MULK                             R24 R25 K41 [500]
      210 ADD                              R20 R20 R24
      211 ADDK                             R21 R21 K41 [500]
      212 SETTABLEKS                       R3 R10 K14 ["FilterDescendantsInstances"]
      214 GETIMPORT                        R24 K2 [os.clock]
      216 CALL                             R24 0 1
      217 MOVE                             R7 R24
      218 GETIMPORT                        R26 K2 [os.clock]
      220 CALL                             R26 0 1
      221 SUB                              R25 R26 R7
      222 LOADK                            R26 K33 [0.01]
      223 JUMPIFLT                         R26 R25 ; [+2]
      225 LOADB                            R24 0 +1
      226 LOADB                            R24 1
      227 JUMPIF                           R24 ; [+33]
      228 GETUPVAL                         R24 1
      229 MOVE                             R25 R20
      230 MOVE                             R26 R1
      231 MINUS                            R29 R2
      232 MUL                              R28 R29 R19
      233 MULK                             R27 R28 K34 [2000]
      234 MOVE                             R28 R10
      235 CALL                             R24 4 1
      236 JUMPIFNOT                        R24 ; [+24]
      237 GETTABLEKS                       R25 R24 K21 ["Distance"]
      239 SUB                              R21 R21 R25
      240 GETTABLEKS                       R25 R20 K37 ["Rotation"]
      242 GETTABLEKS                       R26 R24 K5 ["Position"]
      244 ADD                              R20 R25 R26
      245 LOADK                            R25 K42 [-0.1]
      246 JUMPIFLT                         R21 R25 ; [+14]
      248 MOVE                             R25 R14
      249 GETTABLEKS                       R26 R20 K5 ["Position"]
      251 MUL                              R27 R19 R21
      252 CALL                             R25 2 0
      253 GETTABLEKS                       R27 R24 K35 ["Instance"]
      255 NAMECALL                         R25 R10 K36 ["AddToFilter"]
      257 CALL                             R25 2 0
      258 JUMP                             ; [+1]
      259 JUMP                             ; [+1]
      260 JUMPBACK                         ; [-43]
      261 FORGLOOP                         R15 2 ; [-132]
      263 CLOSEUPVALS                      R7
      264 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Math"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["isGoodRaycastResult"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K3 [script]
       21 GETTABLEKS                       R2 R2 K4 ["Parent"]
       23 GETTABLEKS                       R2 R2 K4 ["Parent"]
       25 GETIMPORT                        R3 K1 [require]
       27 GETTABLEKS                       R4 R2 K7 ["Utility"]
       29 GETTABLEKS                       R4 R4 K8 ["CursorGroupName"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K1 [require]
       34 GETTABLEKS                       R5 R2 K9 ["Flags"]
       36 GETTABLEKS                       R5 R5 K10 ["getFFlagDraggerSoftSnapHandleThinParts"]
       38 CALL                             R4 1 1
       39 CALL                             R4 0 1
       40 DUPCLOSURE                       R5 K11 [PROTO_0]
       41 DUPCLOSURE                       R6 K12 [PROTO_1]
       42 DUPCLOSURE                       R7 K13 [PROTO_2]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R6
       50 DUPCLOSURE                       R8 K14 [PROTO_3]
       51 DUPCLOSURE                       R9 K15 [PROTO_6]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R8
       55 RETURN                           R9 1
