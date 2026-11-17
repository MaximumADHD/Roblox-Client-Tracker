PROTO_0:
        0 GETIMPORT                        R4 K2 [Instance.new]
        2 LOADK                            R5 K3 ["Motor6D"]
        3 CALL                             R4 1 1
        4 SETTABLEKS                       R0 R4 K4 ["Part0"]
        6 SETTABLEKS                       R1 R4 K5 ["Part1"]
        8 SETTABLEKS                       R2 R4 K6 ["C0"]
       10 SETTABLEKS                       R3 R4 K7 ["C1"]
       12 SETTABLEKS                       R0 R4 K8 ["Parent"]
       14 RETURN                           R4 1

PROTO_1:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Model"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["R6"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETIMPORT                        R1 K2 [Instance.new]
        9 LOADK                            R2 K6 ["Part"]
       10 CALL                             R1 1 1
       11 LOADK                            R2 K7 ["HumanoidRootPart"]
       12 SETTABLEKS                       R2 R1 K5 ["Name"]
       14 LOADB                            R2 1
       15 SETTABLEKS                       R2 R1 K8 ["CanCollide"]
       17 LOADN                            R2 1
       18 SETTABLEKS                       R2 R1 K9 ["Transparency"]
       20 LOADK                            R2 K10 [{2, 2, 1}]
       21 SETTABLEKS                       R2 R1 K11 ["Size"]
       23 GETIMPORT                        R2 K13 [CFrame.new]
       25 LOADN                            R3 0
       26 LOADK                            R4 K14 [5.2]
       27 LOADK                            R5 K15 [4.5]
       28 CALL                             R2 3 1
       29 SETTABLEKS                       R2 R1 K12 ["CFrame"]
       31 LOADK                            R2 K16 ["Smooth"]
       32 SETTABLEKS                       R2 R1 K17 ["BottomSurface"]
       34 LOADK                            R2 K16 ["Smooth"]
       35 SETTABLEKS                       R2 R1 K18 ["TopSurface"]
       37 SETTABLEKS                       R0 R1 K19 ["Parent"]
       39 SETTABLEKS                       R1 R0 K20 ["PrimaryPart"]
       41 GETIMPORT                        R2 K2 [Instance.new]
       43 LOADK                            R3 K6 ["Part"]
       44 CALL                             R2 1 1
       45 LOADK                            R3 K21 ["Torso"]
       46 SETTABLEKS                       R3 R2 K5 ["Name"]
       48 LOADB                            R3 0
       49 SETTABLEKS                       R3 R2 K22 ["Anchored"]
       51 LOADB                            R3 0
       52 SETTABLEKS                       R3 R2 K8 ["CanCollide"]
       54 LOADK                            R3 K10 [{2, 2, 1}]
       55 SETTABLEKS                       R3 R2 K11 ["Size"]
       57 GETIMPORT                        R3 K13 [CFrame.new]
       59 LOADN                            R4 0
       60 LOADK                            R5 K14 [5.2]
       61 LOADK                            R6 K15 [4.5]
       62 CALL                             R3 3 1
       63 SETTABLEKS                       R3 R2 K12 ["CFrame"]
       65 LOADK                            R3 K16 ["Smooth"]
       66 SETTABLEKS                       R3 R2 K17 ["BottomSurface"]
       68 LOADK                            R3 K16 ["Smooth"]
       69 SETTABLEKS                       R3 R2 K18 ["TopSurface"]
       71 SETTABLEKS                       R0 R2 K19 ["Parent"]
       73 GETIMPORT                        R3 K13 [CFrame.new]
       75 LOADN                            R4 0
       76 LOADN                            R5 0
       77 LOADN                            R6 0
       78 LOADN                            R7 -1
       79 LOADN                            R8 0
       80 LOADN                            R9 0
       81 LOADN                            R10 0
       82 LOADN                            R11 0
       83 LOADN                            R12 1
       84 LOADN                            R13 0
       85 LOADN                            R14 1
       86 LOADN                            R15 0
       87 CALL                             R3 12 1
       88 GETIMPORT                        R4 K2 [Instance.new]
       90 LOADK                            R5 K23 ["Motor6D"]
       91 CALL                             R4 1 1
       92 SETTABLEKS                       R1 R4 K24 ["Part0"]
       94 SETTABLEKS                       R2 R4 K25 ["Part1"]
       96 SETTABLEKS                       R3 R4 K26 ["C0"]
       98 SETTABLEKS                       R3 R4 K27 ["C1"]
      100 SETTABLEKS                       R1 R4 K19 ["Parent"]
      102 LOADK                            R5 K28 ["Root Hip"]
      103 SETTABLEKS                       R5 R4 K5 ["Name"]
      105 LOADK                            R5 K29 [0.1]
      106 SETTABLEKS                       R5 R4 K30 ["MaxVelocity"]
      108 GETIMPORT                        R5 K2 [Instance.new]
      110 LOADK                            R6 K6 ["Part"]
      111 CALL                             R5 1 1
      112 LOADK                            R6 K31 ["Left Leg"]
      113 SETTABLEKS                       R6 R5 K5 ["Name"]
      115 LOADB                            R6 0
      116 SETTABLEKS                       R6 R5 K22 ["Anchored"]
      118 LOADB                            R6 0
      119 SETTABLEKS                       R6 R5 K8 ["CanCollide"]
      121 LOADK                            R6 K32 [{1, 2, 1}]
      122 SETTABLEKS                       R6 R5 K11 ["Size"]
      124 GETIMPORT                        R6 K13 [CFrame.new]
      126 LOADK                            R7 K33 [0.5]
      127 LOADK                            R8 K34 [3.2]
      128 LOADK                            R9 K15 [4.5]
      129 CALL                             R6 3 1
      130 SETTABLEKS                       R6 R5 K12 ["CFrame"]
      132 LOADK                            R6 K16 ["Smooth"]
      133 SETTABLEKS                       R6 R5 K17 ["BottomSurface"]
      135 LOADK                            R6 K16 ["Smooth"]
      136 SETTABLEKS                       R6 R5 K18 ["TopSurface"]
      138 SETTABLEKS                       R0 R5 K19 ["Parent"]
      140 GETIMPORT                        R7 K13 [CFrame.new]
      142 LOADN                            R8 -1
      143 LOADN                            R9 -1
      144 LOADN                            R10 0
      145 CALL                             R7 3 1
      146 GETIMPORT                        R8 K36 [CFrame.fromAxisAngle]
      148 LOADK                            R9 K37 [{0, 1, 0}]
      149 LOADK                            R10 K38 [-1.5707963267948966]
      150 CALL                             R8 2 1
      151 MUL                              R6 R7 R8
      152 GETIMPORT                        R8 K13 [CFrame.new]
      154 LOADK                            R9 K39 [-0.5]
      155 LOADN                            R10 1
      156 LOADN                            R11 0
      157 CALL                             R8 3 1
      158 GETIMPORT                        R9 K36 [CFrame.fromAxisAngle]
      160 LOADK                            R10 K37 [{0, 1, 0}]
      161 LOADK                            R11 K38 [-1.5707963267948966]
      162 CALL                             R9 2 1
      163 MUL                              R7 R8 R9
      164 GETIMPORT                        R8 K2 [Instance.new]
      166 LOADK                            R9 K23 ["Motor6D"]
      167 CALL                             R8 1 1
      168 SETTABLEKS                       R2 R8 K24 ["Part0"]
      170 SETTABLEKS                       R5 R8 K25 ["Part1"]
      172 SETTABLEKS                       R6 R8 K26 ["C0"]
      174 SETTABLEKS                       R7 R8 K27 ["C1"]
      176 SETTABLEKS                       R2 R8 K19 ["Parent"]
      178 LOADK                            R9 K40 ["Left Hip"]
      179 SETTABLEKS                       R9 R8 K5 ["Name"]
      181 LOADK                            R9 K29 [0.1]
      182 SETTABLEKS                       R9 R8 K30 ["MaxVelocity"]
      184 GETIMPORT                        R9 K2 [Instance.new]
      186 LOADK                            R10 K6 ["Part"]
      187 CALL                             R9 1 1
      188 LOADK                            R10 K41 ["Right Leg"]
      189 SETTABLEKS                       R10 R9 K5 ["Name"]
      191 LOADB                            R10 0
      192 SETTABLEKS                       R10 R9 K22 ["Anchored"]
      194 LOADB                            R10 0
      195 SETTABLEKS                       R10 R9 K8 ["CanCollide"]
      197 LOADK                            R10 K32 [{1, 2, 1}]
      198 SETTABLEKS                       R10 R9 K11 ["Size"]
      200 GETIMPORT                        R10 K13 [CFrame.new]
      202 LOADK                            R11 K39 [-0.5]
      203 LOADK                            R12 K34 [3.2]
      204 LOADK                            R13 K15 [4.5]
      205 CALL                             R10 3 1
      206 SETTABLEKS                       R10 R9 K12 ["CFrame"]
      208 LOADK                            R10 K16 ["Smooth"]
      209 SETTABLEKS                       R10 R9 K17 ["BottomSurface"]
      211 LOADK                            R10 K16 ["Smooth"]
      212 SETTABLEKS                       R10 R9 K18 ["TopSurface"]
      214 SETTABLEKS                       R0 R9 K19 ["Parent"]
      216 GETIMPORT                        R11 K13 [CFrame.new]
      218 LOADN                            R12 1
      219 LOADN                            R13 -1
      220 LOADN                            R14 0
      221 CALL                             R11 3 1
      222 GETIMPORT                        R12 K36 [CFrame.fromAxisAngle]
      224 LOADK                            R13 K42 [{0, -1, 0}]
      225 LOADK                            R14 K38 [-1.5707963267948966]
      226 CALL                             R12 2 1
      227 MUL                              R10 R11 R12
      228 GETIMPORT                        R12 K13 [CFrame.new]
      230 LOADK                            R13 K33 [0.5]
      231 LOADN                            R14 1
      232 LOADN                            R15 0
      233 CALL                             R12 3 1
      234 GETIMPORT                        R13 K36 [CFrame.fromAxisAngle]
      236 LOADK                            R14 K37 [{0, 1, 0}]
      237 LOADK                            R15 K43 [1.5707963267948966]
      238 CALL                             R13 2 1
      239 MUL                              R11 R12 R13
      240 GETIMPORT                        R12 K2 [Instance.new]
      242 LOADK                            R13 K23 ["Motor6D"]
      243 CALL                             R12 1 1
      244 SETTABLEKS                       R2 R12 K24 ["Part0"]
      246 SETTABLEKS                       R9 R12 K25 ["Part1"]
      248 SETTABLEKS                       R10 R12 K26 ["C0"]
      250 SETTABLEKS                       R11 R12 K27 ["C1"]
      252 SETTABLEKS                       R2 R12 K19 ["Parent"]
      254 LOADK                            R13 K44 ["Right Hip"]
      255 SETTABLEKS                       R13 R12 K5 ["Name"]
      257 LOADK                            R13 K29 [0.1]
      258 SETTABLEKS                       R13 R12 K30 ["MaxVelocity"]
      260 GETIMPORT                        R13 K2 [Instance.new]
      262 LOADK                            R14 K6 ["Part"]
      263 CALL                             R13 1 1
      264 LOADK                            R14 K45 ["Left Arm"]
      265 SETTABLEKS                       R14 R13 K5 ["Name"]
      267 LOADB                            R14 0
      268 SETTABLEKS                       R14 R13 K22 ["Anchored"]
      270 LOADB                            R14 0
      271 SETTABLEKS                       R14 R13 K8 ["CanCollide"]
      273 LOADK                            R14 K32 [{1, 2, 1}]
      274 SETTABLEKS                       R14 R13 K11 ["Size"]
      276 GETIMPORT                        R14 K13 [CFrame.new]
      278 LOADK                            R15 K46 [1.5]
      279 LOADK                            R16 K14 [5.2]
      280 LOADK                            R17 K15 [4.5]
      281 CALL                             R14 3 1
      282 SETTABLEKS                       R14 R13 K12 ["CFrame"]
      284 LOADK                            R14 K16 ["Smooth"]
      285 SETTABLEKS                       R14 R13 K17 ["BottomSurface"]
      287 LOADK                            R14 K16 ["Smooth"]
      288 SETTABLEKS                       R14 R13 K18 ["TopSurface"]
      290 SETTABLEKS                       R0 R13 K19 ["Parent"]
      292 GETIMPORT                        R15 K13 [CFrame.new]
      294 LOADN                            R16 -1
      295 LOADK                            R17 K33 [0.5]
      296 LOADN                            R18 0
      297 CALL                             R15 3 1
      298 GETIMPORT                        R16 K36 [CFrame.fromAxisAngle]
      300 LOADK                            R17 K37 [{0, 1, 0}]
      301 LOADK                            R18 K38 [-1.5707963267948966]
      302 CALL                             R16 2 1
      303 MUL                              R14 R15 R16
      304 GETIMPORT                        R16 K13 [CFrame.new]
      306 LOADK                            R17 K33 [0.5]
      307 LOADK                            R18 K33 [0.5]
      308 LOADN                            R19 0
      309 CALL                             R16 3 1
      310 GETIMPORT                        R17 K36 [CFrame.fromAxisAngle]
      312 LOADK                            R18 K37 [{0, 1, 0}]
      313 LOADK                            R19 K38 [-1.5707963267948966]
      314 CALL                             R17 2 1
      315 MUL                              R15 R16 R17
      316 GETIMPORT                        R16 K2 [Instance.new]
      318 LOADK                            R17 K23 ["Motor6D"]
      319 CALL                             R16 1 1
      320 SETTABLEKS                       R2 R16 K24 ["Part0"]
      322 SETTABLEKS                       R13 R16 K25 ["Part1"]
      324 SETTABLEKS                       R14 R16 K26 ["C0"]
      326 SETTABLEKS                       R15 R16 K27 ["C1"]
      328 SETTABLEKS                       R2 R16 K19 ["Parent"]
      330 LOADK                            R17 K47 ["Left Shoulder"]
      331 SETTABLEKS                       R17 R16 K5 ["Name"]
      333 LOADK                            R17 K29 [0.1]
      334 SETTABLEKS                       R17 R16 K30 ["MaxVelocity"]
      336 GETIMPORT                        R17 K2 [Instance.new]
      338 LOADK                            R18 K6 ["Part"]
      339 CALL                             R17 1 1
      340 LOADK                            R18 K48 ["Right Arm"]
      341 SETTABLEKS                       R18 R17 K5 ["Name"]
      343 LOADB                            R18 0
      344 SETTABLEKS                       R18 R17 K22 ["Anchored"]
      346 LOADB                            R18 0
      347 SETTABLEKS                       R18 R17 K8 ["CanCollide"]
      349 LOADK                            R18 K32 [{1, 2, 1}]
      350 SETTABLEKS                       R18 R17 K11 ["Size"]
      352 GETIMPORT                        R18 K13 [CFrame.new]
      354 LOADK                            R19 K49 [-1.5]
      355 LOADK                            R20 K14 [5.2]
      356 LOADK                            R21 K15 [4.5]
      357 CALL                             R18 3 1
      358 SETTABLEKS                       R18 R17 K12 ["CFrame"]
      360 LOADK                            R18 K16 ["Smooth"]
      361 SETTABLEKS                       R18 R17 K17 ["BottomSurface"]
      363 LOADK                            R18 K16 ["Smooth"]
      364 SETTABLEKS                       R18 R17 K18 ["TopSurface"]
      366 SETTABLEKS                       R0 R17 K19 ["Parent"]
      368 GETIMPORT                        R19 K13 [CFrame.new]
      370 LOADN                            R20 1
      371 LOADK                            R21 K33 [0.5]
      372 LOADN                            R22 0
      373 CALL                             R19 3 1
      374 GETIMPORT                        R20 K36 [CFrame.fromAxisAngle]
      376 LOADK                            R21 K42 [{0, -1, 0}]
      377 LOADK                            R22 K38 [-1.5707963267948966]
      378 CALL                             R20 2 1
      379 MUL                              R18 R19 R20
      380 GETIMPORT                        R20 K13 [CFrame.new]
      382 LOADK                            R21 K39 [-0.5]
      383 LOADK                            R22 K33 [0.5]
      384 LOADN                            R23 0
      385 CALL                             R20 3 1
      386 GETIMPORT                        R21 K36 [CFrame.fromAxisAngle]
      388 LOADK                            R22 K37 [{0, 1, 0}]
      389 LOADK                            R23 K43 [1.5707963267948966]
      390 CALL                             R21 2 1
      391 MUL                              R19 R20 R21
      392 GETIMPORT                        R20 K2 [Instance.new]
      394 LOADK                            R21 K23 ["Motor6D"]
      395 CALL                             R20 1 1
      396 SETTABLEKS                       R2 R20 K24 ["Part0"]
      398 SETTABLEKS                       R17 R20 K25 ["Part1"]
      400 SETTABLEKS                       R18 R20 K26 ["C0"]
      402 SETTABLEKS                       R19 R20 K27 ["C1"]
      404 SETTABLEKS                       R2 R20 K19 ["Parent"]
      406 LOADK                            R21 K50 ["Right Shoulder"]
      407 SETTABLEKS                       R21 R20 K5 ["Name"]
      409 LOADK                            R21 K29 [0.1]
      410 SETTABLEKS                       R21 R20 K30 ["MaxVelocity"]
      412 GETIMPORT                        R21 K2 [Instance.new]
      414 LOADK                            R22 K6 ["Part"]
      415 CALL                             R21 1 1
      416 LOADK                            R22 K51 ["Head"]
      417 SETTABLEKS                       R22 R21 K5 ["Name"]
      419 LOADB                            R22 0
      420 SETTABLEKS                       R22 R21 K22 ["Anchored"]
      422 LOADB                            R22 1
      423 SETTABLEKS                       R22 R21 K8 ["CanCollide"]
      425 LOADK                            R22 K52 [{2, 1, 1}]
      426 SETTABLEKS                       R22 R21 K11 ["Size"]
      428 GETIMPORT                        R22 K13 [CFrame.new]
      430 LOADN                            R23 0
      431 LOADK                            R24 K53 [6.7]
      432 LOADK                            R25 K15 [4.5]
      433 CALL                             R22 3 1
      434 SETTABLEKS                       R22 R21 K12 ["CFrame"]
      436 LOADK                            R22 K16 ["Smooth"]
      437 SETTABLEKS                       R22 R21 K17 ["BottomSurface"]
      439 LOADK                            R22 K16 ["Smooth"]
      440 SETTABLEKS                       R22 R21 K18 ["TopSurface"]
      442 SETTABLEKS                       R0 R21 K19 ["Parent"]
      444 GETIMPORT                        R22 K2 [Instance.new]
      446 LOADK                            R23 K54 ["SpecialMesh"]
      447 CALL                             R22 1 1
      448 GETIMPORT                        R23 K57 [Enum.MeshType.Head]
      450 SETTABLEKS                       R23 R22 K56 ["MeshType"]
      452 LOADK                            R23 K58 [{1.25, 1.25, 1.25}]
      453 SETTABLEKS                       R23 R22 K59 ["Scale"]
      455 SETTABLEKS                       R21 R22 K19 ["Parent"]
      457 GETIMPORT                        R23 K13 [CFrame.new]
      459 LOADN                            R24 0
      460 LOADN                            R25 1
      461 LOADN                            R26 0
      462 LOADN                            R27 -1
      463 LOADN                            R28 0
      464 LOADN                            R29 0
      465 LOADN                            R30 0
      466 LOADN                            R31 0
      467 LOADN                            R32 1
      468 LOADN                            R33 0
      469 LOADN                            R34 1
      470 LOADN                            R35 0
      471 CALL                             R23 12 1
      472 GETIMPORT                        R24 K13 [CFrame.new]
      474 LOADN                            R25 0
      475 LOADK                            R26 K39 [-0.5]
      476 LOADN                            R27 0
      477 LOADN                            R28 -1
      478 LOADN                            R29 0
      479 LOADN                            R30 0
      480 LOADN                            R31 0
      481 LOADN                            R32 0
      482 LOADN                            R33 1
      483 LOADN                            R34 0
      484 LOADN                            R35 1
      485 LOADN                            R36 0
      486 CALL                             R24 12 1
      487 GETIMPORT                        R25 K2 [Instance.new]
      489 LOADK                            R26 K23 ["Motor6D"]
      490 CALL                             R25 1 1
      491 SETTABLEKS                       R2 R25 K24 ["Part0"]
      493 SETTABLEKS                       R21 R25 K25 ["Part1"]
      495 SETTABLEKS                       R23 R25 K26 ["C0"]
      497 SETTABLEKS                       R24 R25 K27 ["C1"]
      499 SETTABLEKS                       R2 R25 K19 ["Parent"]
      501 LOADK                            R26 K60 ["Neck"]
      502 SETTABLEKS                       R26 R25 K5 ["Name"]
      504 LOADK                            R26 K29 [0.1]
      505 SETTABLEKS                       R26 R25 K30 ["MaxVelocity"]
      507 GETIMPORT                        R26 K2 [Instance.new]
      509 LOADK                            R27 K61 ["Decal"]
      510 CALL                             R26 1 1
      511 LOADK                            R27 K62 ["face"]
      512 SETTABLEKS                       R27 R26 K5 ["Name"]
      514 LOADK                            R27 K63 ["rbxasset://textures/face.png"]
      515 SETTABLEKS                       R27 R26 K64 ["Texture"]
      517 SETTABLEKS                       R21 R26 K19 ["Parent"]
      519 GETIMPORT                        R27 K2 [Instance.new]
      521 LOADK                            R28 K65 ["Humanoid"]
      522 CALL                             R27 1 1
      523 SETTABLEKS                       R0 R27 K19 ["Parent"]
      525 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 SETTABLEKS                       R2 R0 K2 ["Create"]
        7 RETURN                           R0 1
