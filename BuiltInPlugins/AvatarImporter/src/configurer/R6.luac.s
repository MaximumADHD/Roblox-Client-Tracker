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
       88 GETIMPORT                        R5 K2 [Instance.new]
       90 LOADK                            R6 K23 ["Motor6D"]
       91 CALL                             R5 1 1
       92 SETTABLEKS                       R1 R5 K24 ["Part0"]
       94 SETTABLEKS                       R2 R5 K25 ["Part1"]
       96 SETTABLEKS                       R3 R5 K26 ["C0"]
       98 SETTABLEKS                       R3 R5 K27 ["C1"]
      100 SETTABLEKS                       R1 R5 K19 ["Parent"]
      102 MOVE                             R4 R5
      103 LOADK                            R5 K28 ["Root Hip"]
      104 SETTABLEKS                       R5 R4 K5 ["Name"]
      106 LOADK                            R5 K29 [0.1]
      107 SETTABLEKS                       R5 R4 K30 ["MaxVelocity"]
      109 GETIMPORT                        R5 K2 [Instance.new]
      111 LOADK                            R6 K6 ["Part"]
      112 CALL                             R5 1 1
      113 LOADK                            R6 K31 ["Left Leg"]
      114 SETTABLEKS                       R6 R5 K5 ["Name"]
      116 LOADB                            R6 0
      117 SETTABLEKS                       R6 R5 K22 ["Anchored"]
      119 LOADB                            R6 0
      120 SETTABLEKS                       R6 R5 K8 ["CanCollide"]
      122 LOADK                            R6 K32 [{1, 2, 1}]
      123 SETTABLEKS                       R6 R5 K11 ["Size"]
      125 GETIMPORT                        R6 K13 [CFrame.new]
      127 LOADK                            R7 K33 [0.5]
      128 LOADK                            R8 K34 [3.2]
      129 LOADK                            R9 K15 [4.5]
      130 CALL                             R6 3 1
      131 SETTABLEKS                       R6 R5 K12 ["CFrame"]
      133 LOADK                            R6 K16 ["Smooth"]
      134 SETTABLEKS                       R6 R5 K17 ["BottomSurface"]
      136 LOADK                            R6 K16 ["Smooth"]
      137 SETTABLEKS                       R6 R5 K18 ["TopSurface"]
      139 SETTABLEKS                       R0 R5 K19 ["Parent"]
      141 GETIMPORT                        R7 K13 [CFrame.new]
      143 LOADN                            R8 -1
      144 LOADN                            R9 -1
      145 LOADN                            R10 0
      146 CALL                             R7 3 1
      147 GETIMPORT                        R8 K36 [CFrame.fromAxisAngle]
      149 LOADK                            R9 K37 [{0, 1, 0}]
      150 LOADK                            R10 K38 [-1.5707963267949]
      151 CALL                             R8 2 1
      152 MUL                              R6 R7 R8
      153 GETIMPORT                        R8 K13 [CFrame.new]
      155 LOADK                            R9 K39 [-0.5]
      156 LOADN                            R10 1
      157 LOADN                            R11 0
      158 CALL                             R8 3 1
      159 GETIMPORT                        R9 K36 [CFrame.fromAxisAngle]
      161 LOADK                            R10 K37 [{0, 1, 0}]
      162 LOADK                            R11 K38 [-1.5707963267949]
      163 CALL                             R9 2 1
      164 MUL                              R7 R8 R9
      165 GETIMPORT                        R9 K2 [Instance.new]
      167 LOADK                            R10 K23 ["Motor6D"]
      168 CALL                             R9 1 1
      169 SETTABLEKS                       R2 R9 K24 ["Part0"]
      171 SETTABLEKS                       R5 R9 K25 ["Part1"]
      173 SETTABLEKS                       R6 R9 K26 ["C0"]
      175 SETTABLEKS                       R7 R9 K27 ["C1"]
      177 SETTABLEKS                       R2 R9 K19 ["Parent"]
      179 MOVE                             R8 R9
      180 LOADK                            R9 K40 ["Left Hip"]
      181 SETTABLEKS                       R9 R8 K5 ["Name"]
      183 LOADK                            R9 K29 [0.1]
      184 SETTABLEKS                       R9 R8 K30 ["MaxVelocity"]
      186 GETIMPORT                        R9 K2 [Instance.new]
      188 LOADK                            R10 K6 ["Part"]
      189 CALL                             R9 1 1
      190 LOADK                            R10 K41 ["Right Leg"]
      191 SETTABLEKS                       R10 R9 K5 ["Name"]
      193 LOADB                            R10 0
      194 SETTABLEKS                       R10 R9 K22 ["Anchored"]
      196 LOADB                            R10 0
      197 SETTABLEKS                       R10 R9 K8 ["CanCollide"]
      199 LOADK                            R10 K32 [{1, 2, 1}]
      200 SETTABLEKS                       R10 R9 K11 ["Size"]
      202 GETIMPORT                        R10 K13 [CFrame.new]
      204 LOADK                            R11 K39 [-0.5]
      205 LOADK                            R12 K34 [3.2]
      206 LOADK                            R13 K15 [4.5]
      207 CALL                             R10 3 1
      208 SETTABLEKS                       R10 R9 K12 ["CFrame"]
      210 LOADK                            R10 K16 ["Smooth"]
      211 SETTABLEKS                       R10 R9 K17 ["BottomSurface"]
      213 LOADK                            R10 K16 ["Smooth"]
      214 SETTABLEKS                       R10 R9 K18 ["TopSurface"]
      216 SETTABLEKS                       R0 R9 K19 ["Parent"]
      218 GETIMPORT                        R11 K13 [CFrame.new]
      220 LOADN                            R12 1
      221 LOADN                            R13 -1
      222 LOADN                            R14 0
      223 CALL                             R11 3 1
      224 GETIMPORT                        R12 K36 [CFrame.fromAxisAngle]
      226 LOADK                            R13 K42 [{0, -1, 0}]
      227 LOADK                            R14 K38 [-1.5707963267949]
      228 CALL                             R12 2 1
      229 MUL                              R10 R11 R12
      230 GETIMPORT                        R12 K13 [CFrame.new]
      232 LOADK                            R13 K33 [0.5]
      233 LOADN                            R14 1
      234 LOADN                            R15 0
      235 CALL                             R12 3 1
      236 GETIMPORT                        R13 K36 [CFrame.fromAxisAngle]
      238 LOADK                            R14 K37 [{0, 1, 0}]
      239 LOADK                            R15 K43 [1.5707963267949]
      240 CALL                             R13 2 1
      241 MUL                              R11 R12 R13
      242 GETIMPORT                        R13 K2 [Instance.new]
      244 LOADK                            R14 K23 ["Motor6D"]
      245 CALL                             R13 1 1
      246 SETTABLEKS                       R2 R13 K24 ["Part0"]
      248 SETTABLEKS                       R9 R13 K25 ["Part1"]
      250 SETTABLEKS                       R10 R13 K26 ["C0"]
      252 SETTABLEKS                       R11 R13 K27 ["C1"]
      254 SETTABLEKS                       R2 R13 K19 ["Parent"]
      256 MOVE                             R12 R13
      257 LOADK                            R13 K44 ["Right Hip"]
      258 SETTABLEKS                       R13 R12 K5 ["Name"]
      260 LOADK                            R13 K29 [0.1]
      261 SETTABLEKS                       R13 R12 K30 ["MaxVelocity"]
      263 GETIMPORT                        R13 K2 [Instance.new]
      265 LOADK                            R14 K6 ["Part"]
      266 CALL                             R13 1 1
      267 LOADK                            R14 K45 ["Left Arm"]
      268 SETTABLEKS                       R14 R13 K5 ["Name"]
      270 LOADB                            R14 0
      271 SETTABLEKS                       R14 R13 K22 ["Anchored"]
      273 LOADB                            R14 0
      274 SETTABLEKS                       R14 R13 K8 ["CanCollide"]
      276 LOADK                            R14 K32 [{1, 2, 1}]
      277 SETTABLEKS                       R14 R13 K11 ["Size"]
      279 GETIMPORT                        R14 K13 [CFrame.new]
      281 LOADK                            R15 K46 [1.5]
      282 LOADK                            R16 K14 [5.2]
      283 LOADK                            R17 K15 [4.5]
      284 CALL                             R14 3 1
      285 SETTABLEKS                       R14 R13 K12 ["CFrame"]
      287 LOADK                            R14 K16 ["Smooth"]
      288 SETTABLEKS                       R14 R13 K17 ["BottomSurface"]
      290 LOADK                            R14 K16 ["Smooth"]
      291 SETTABLEKS                       R14 R13 K18 ["TopSurface"]
      293 SETTABLEKS                       R0 R13 K19 ["Parent"]
      295 GETIMPORT                        R15 K13 [CFrame.new]
      297 LOADN                            R16 -1
      298 LOADK                            R17 K33 [0.5]
      299 LOADN                            R18 0
      300 CALL                             R15 3 1
      301 GETIMPORT                        R16 K36 [CFrame.fromAxisAngle]
      303 LOADK                            R17 K37 [{0, 1, 0}]
      304 LOADK                            R18 K38 [-1.5707963267949]
      305 CALL                             R16 2 1
      306 MUL                              R14 R15 R16
      307 GETIMPORT                        R16 K13 [CFrame.new]
      309 LOADK                            R17 K33 [0.5]
      310 LOADK                            R18 K33 [0.5]
      311 LOADN                            R19 0
      312 CALL                             R16 3 1
      313 GETIMPORT                        R17 K36 [CFrame.fromAxisAngle]
      315 LOADK                            R18 K37 [{0, 1, 0}]
      316 LOADK                            R19 K38 [-1.5707963267949]
      317 CALL                             R17 2 1
      318 MUL                              R15 R16 R17
      319 GETIMPORT                        R17 K2 [Instance.new]
      321 LOADK                            R18 K23 ["Motor6D"]
      322 CALL                             R17 1 1
      323 SETTABLEKS                       R2 R17 K24 ["Part0"]
      325 SETTABLEKS                       R13 R17 K25 ["Part1"]
      327 SETTABLEKS                       R14 R17 K26 ["C0"]
      329 SETTABLEKS                       R15 R17 K27 ["C1"]
      331 SETTABLEKS                       R2 R17 K19 ["Parent"]
      333 MOVE                             R16 R17
      334 LOADK                            R17 K47 ["Left Shoulder"]
      335 SETTABLEKS                       R17 R16 K5 ["Name"]
      337 LOADK                            R17 K29 [0.1]
      338 SETTABLEKS                       R17 R16 K30 ["MaxVelocity"]
      340 GETIMPORT                        R17 K2 [Instance.new]
      342 LOADK                            R18 K6 ["Part"]
      343 CALL                             R17 1 1
      344 LOADK                            R18 K48 ["Right Arm"]
      345 SETTABLEKS                       R18 R17 K5 ["Name"]
      347 LOADB                            R18 0
      348 SETTABLEKS                       R18 R17 K22 ["Anchored"]
      350 LOADB                            R18 0
      351 SETTABLEKS                       R18 R17 K8 ["CanCollide"]
      353 LOADK                            R18 K32 [{1, 2, 1}]
      354 SETTABLEKS                       R18 R17 K11 ["Size"]
      356 GETIMPORT                        R18 K13 [CFrame.new]
      358 LOADK                            R19 K49 [-1.5]
      359 LOADK                            R20 K14 [5.2]
      360 LOADK                            R21 K15 [4.5]
      361 CALL                             R18 3 1
      362 SETTABLEKS                       R18 R17 K12 ["CFrame"]
      364 LOADK                            R18 K16 ["Smooth"]
      365 SETTABLEKS                       R18 R17 K17 ["BottomSurface"]
      367 LOADK                            R18 K16 ["Smooth"]
      368 SETTABLEKS                       R18 R17 K18 ["TopSurface"]
      370 SETTABLEKS                       R0 R17 K19 ["Parent"]
      372 GETIMPORT                        R19 K13 [CFrame.new]
      374 LOADN                            R20 1
      375 LOADK                            R21 K33 [0.5]
      376 LOADN                            R22 0
      377 CALL                             R19 3 1
      378 GETIMPORT                        R20 K36 [CFrame.fromAxisAngle]
      380 LOADK                            R21 K42 [{0, -1, 0}]
      381 LOADK                            R22 K38 [-1.5707963267949]
      382 CALL                             R20 2 1
      383 MUL                              R18 R19 R20
      384 GETIMPORT                        R20 K13 [CFrame.new]
      386 LOADK                            R21 K39 [-0.5]
      387 LOADK                            R22 K33 [0.5]
      388 LOADN                            R23 0
      389 CALL                             R20 3 1
      390 GETIMPORT                        R21 K36 [CFrame.fromAxisAngle]
      392 LOADK                            R22 K37 [{0, 1, 0}]
      393 LOADK                            R23 K43 [1.5707963267949]
      394 CALL                             R21 2 1
      395 MUL                              R19 R20 R21
      396 GETIMPORT                        R21 K2 [Instance.new]
      398 LOADK                            R22 K23 ["Motor6D"]
      399 CALL                             R21 1 1
      400 SETTABLEKS                       R2 R21 K24 ["Part0"]
      402 SETTABLEKS                       R17 R21 K25 ["Part1"]
      404 SETTABLEKS                       R18 R21 K26 ["C0"]
      406 SETTABLEKS                       R19 R21 K27 ["C1"]
      408 SETTABLEKS                       R2 R21 K19 ["Parent"]
      410 MOVE                             R20 R21
      411 LOADK                            R21 K50 ["Right Shoulder"]
      412 SETTABLEKS                       R21 R20 K5 ["Name"]
      414 LOADK                            R21 K29 [0.1]
      415 SETTABLEKS                       R21 R20 K30 ["MaxVelocity"]
      417 GETIMPORT                        R21 K2 [Instance.new]
      419 LOADK                            R22 K6 ["Part"]
      420 CALL                             R21 1 1
      421 LOADK                            R22 K51 ["Head"]
      422 SETTABLEKS                       R22 R21 K5 ["Name"]
      424 LOADB                            R22 0
      425 SETTABLEKS                       R22 R21 K22 ["Anchored"]
      427 LOADB                            R22 1
      428 SETTABLEKS                       R22 R21 K8 ["CanCollide"]
      430 LOADK                            R22 K52 [{2, 1, 1}]
      431 SETTABLEKS                       R22 R21 K11 ["Size"]
      433 GETIMPORT                        R22 K13 [CFrame.new]
      435 LOADN                            R23 0
      436 LOADK                            R24 K53 [6.7]
      437 LOADK                            R25 K15 [4.5]
      438 CALL                             R22 3 1
      439 SETTABLEKS                       R22 R21 K12 ["CFrame"]
      441 LOADK                            R22 K16 ["Smooth"]
      442 SETTABLEKS                       R22 R21 K17 ["BottomSurface"]
      444 LOADK                            R22 K16 ["Smooth"]
      445 SETTABLEKS                       R22 R21 K18 ["TopSurface"]
      447 SETTABLEKS                       R0 R21 K19 ["Parent"]
      449 GETIMPORT                        R22 K2 [Instance.new]
      451 LOADK                            R23 K54 ["SpecialMesh"]
      452 MOVE                             R24 R21
      453 CALL                             R22 2 1
      454 GETIMPORT                        R23 K57 [Enum.MeshType.Head]
      456 SETTABLEKS                       R23 R22 K56 ["MeshType"]
      458 LOADK                            R23 K58 [{1.25, 1.25, 1.25}]
      459 SETTABLEKS                       R23 R22 K59 ["Scale"]
      461 GETIMPORT                        R23 K13 [CFrame.new]
      463 LOADN                            R24 0
      464 LOADN                            R25 1
      465 LOADN                            R26 0
      466 LOADN                            R27 -1
      467 LOADN                            R28 0
      468 LOADN                            R29 0
      469 LOADN                            R30 0
      470 LOADN                            R31 0
      471 LOADN                            R32 1
      472 LOADN                            R33 0
      473 LOADN                            R34 1
      474 LOADN                            R35 0
      475 CALL                             R23 12 1
      476 GETIMPORT                        R24 K13 [CFrame.new]
      478 LOADN                            R25 0
      479 LOADK                            R26 K39 [-0.5]
      480 LOADN                            R27 0
      481 LOADN                            R28 -1
      482 LOADN                            R29 0
      483 LOADN                            R30 0
      484 LOADN                            R31 0
      485 LOADN                            R32 0
      486 LOADN                            R33 1
      487 LOADN                            R34 0
      488 LOADN                            R35 1
      489 LOADN                            R36 0
      490 CALL                             R24 12 1
      491 GETIMPORT                        R26 K2 [Instance.new]
      493 LOADK                            R27 K23 ["Motor6D"]
      494 CALL                             R26 1 1
      495 SETTABLEKS                       R2 R26 K24 ["Part0"]
      497 SETTABLEKS                       R21 R26 K25 ["Part1"]
      499 SETTABLEKS                       R23 R26 K26 ["C0"]
      501 SETTABLEKS                       R24 R26 K27 ["C1"]
      503 SETTABLEKS                       R2 R26 K19 ["Parent"]
      505 MOVE                             R25 R26
      506 LOADK                            R26 K60 ["Neck"]
      507 SETTABLEKS                       R26 R25 K5 ["Name"]
      509 LOADK                            R26 K29 [0.1]
      510 SETTABLEKS                       R26 R25 K30 ["MaxVelocity"]
      512 GETIMPORT                        R26 K2 [Instance.new]
      514 LOADK                            R27 K61 ["Decal"]
      515 CALL                             R26 1 1
      516 LOADK                            R27 K62 ["face"]
      517 SETTABLEKS                       R27 R26 K5 ["Name"]
      519 LOADK                            R27 K63 ["rbxasset://textures/face.png"]
      520 SETTABLEKS                       R27 R26 K64 ["Texture"]
      522 SETTABLEKS                       R21 R26 K19 ["Parent"]
      524 GETIMPORT                        R27 K2 [Instance.new]
      526 LOADK                            R28 K65 ["Humanoid"]
      527 CALL                             R27 1 1
      528 SETTABLEKS                       R0 R27 K19 ["Parent"]
      530 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 SETTABLEKS                       R2 R0 K2 ["Create"]
        7 RETURN                           R0 1
