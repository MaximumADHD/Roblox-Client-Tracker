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
        4 LOADK                            R1 K4 ["Dummy"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETIMPORT                        R1 K2 [Instance.new]
        9 LOADK                            R2 K6 ["Part"]
       10 CALL                             R1 1 1
       11 LOADK                            R2 K7 ["HumanoidRootPart"]
       12 SETTABLEKS                       R2 R1 K5 ["Name"]
       14 LOADB                            R2 1
       15 SETTABLEKS                       R2 R1 K8 ["Anchored"]
       17 LOADB                            R2 1
       18 SETTABLEKS                       R2 R1 K9 ["CanCollide"]
       20 LOADN                            R2 1
       21 SETTABLEKS                       R2 R1 K10 ["Transparency"]
       23 LOADK                            R2 K11 [{2, 2, 1}]
       24 SETTABLEKS                       R2 R1 K12 ["Size"]
       26 SETTABLEKS                       R0 R1 K13 ["Parent"]
       28 GETIMPORT                        R2 K15 [CFrame.new]
       30 LOADN                            R3 0
       31 LOADK                            R4 K16 [5.2]
       32 LOADK                            R5 K17 [4.5]
       33 CALL                             R2 3 1
       34 SETTABLEKS                       R2 R1 K14 ["CFrame"]
       36 LOADK                            R2 K18 ["Smooth"]
       37 SETTABLEKS                       R2 R1 K19 ["BottomSurface"]
       39 LOADK                            R2 K18 ["Smooth"]
       40 SETTABLEKS                       R2 R1 K20 ["TopSurface"]
       42 SETTABLEKS                       R1 R0 K21 ["PrimaryPart"]
       44 GETIMPORT                        R2 K2 [Instance.new]
       46 LOADK                            R3 K6 ["Part"]
       47 CALL                             R2 1 1
       48 LOADK                            R3 K22 ["Torso"]
       49 SETTABLEKS                       R3 R2 K5 ["Name"]
       51 LOADB                            R3 0
       52 SETTABLEKS                       R3 R2 K8 ["Anchored"]
       54 LOADB                            R3 0
       55 SETTABLEKS                       R3 R2 K9 ["CanCollide"]
       57 LOADK                            R3 K11 [{2, 2, 1}]
       58 SETTABLEKS                       R3 R2 K12 ["Size"]
       60 SETTABLEKS                       R0 R2 K13 ["Parent"]
       62 GETIMPORT                        R3 K15 [CFrame.new]
       64 LOADN                            R4 0
       65 LOADK                            R5 K16 [5.2]
       66 LOADK                            R6 K17 [4.5]
       67 CALL                             R3 3 1
       68 SETTABLEKS                       R3 R2 K14 ["CFrame"]
       70 LOADK                            R3 K18 ["Smooth"]
       71 SETTABLEKS                       R3 R2 K19 ["BottomSurface"]
       73 LOADK                            R3 K18 ["Smooth"]
       74 SETTABLEKS                       R3 R2 K20 ["TopSurface"]
       76 GETIMPORT                        R3 K15 [CFrame.new]
       78 LOADN                            R4 0
       79 LOADN                            R5 0
       80 LOADN                            R6 0
       81 LOADN                            R7 -1
       82 LOADN                            R8 0
       83 LOADN                            R9 0
       84 LOADN                            R10 0
       85 LOADN                            R11 0
       86 LOADN                            R12 1
       87 LOADN                            R13 0
       88 LOADN                            R14 1
       89 LOADN                            R15 0
       90 CALL                             R3 12 1
       91 GETIMPORT                        R4 K2 [Instance.new]
       93 LOADK                            R5 K23 ["Motor6D"]
       94 CALL                             R4 1 1
       95 SETTABLEKS                       R1 R4 K24 ["Part0"]
       97 SETTABLEKS                       R2 R4 K25 ["Part1"]
       99 SETTABLEKS                       R3 R4 K26 ["C0"]
      101 SETTABLEKS                       R3 R4 K27 ["C1"]
      103 SETTABLEKS                       R1 R4 K13 ["Parent"]
      105 LOADK                            R5 K28 ["Root Hip"]
      106 SETTABLEKS                       R5 R4 K5 ["Name"]
      108 LOADK                            R5 K29 [0.1]
      109 SETTABLEKS                       R5 R4 K30 ["MaxVelocity"]
      111 GETIMPORT                        R5 K2 [Instance.new]
      113 LOADK                            R6 K6 ["Part"]
      114 MOVE                             R7 R0
      115 CALL                             R5 2 1
      116 LOADK                            R6 K31 ["Left Leg"]
      117 SETTABLEKS                       R6 R5 K5 ["Name"]
      119 LOADB                            R6 0
      120 SETTABLEKS                       R6 R5 K8 ["Anchored"]
      122 LOADB                            R6 0
      123 SETTABLEKS                       R6 R5 K9 ["CanCollide"]
      125 LOADK                            R6 K32 [{1, 2, 1}]
      126 SETTABLEKS                       R6 R5 K12 ["Size"]
      128 GETIMPORT                        R6 K15 [CFrame.new]
      130 LOADK                            R7 K33 [0.5]
      131 LOADK                            R8 K34 [3.2]
      132 LOADK                            R9 K17 [4.5]
      133 CALL                             R6 3 1
      134 SETTABLEKS                       R6 R5 K14 ["CFrame"]
      136 LOADK                            R6 K18 ["Smooth"]
      137 SETTABLEKS                       R6 R5 K19 ["BottomSurface"]
      139 LOADK                            R6 K18 ["Smooth"]
      140 SETTABLEKS                       R6 R5 K20 ["TopSurface"]
      142 GETIMPORT                        R7 K15 [CFrame.new]
      144 LOADN                            R8 -1
      145 LOADN                            R9 -1
      146 LOADN                            R10 0
      147 CALL                             R7 3 1
      148 GETIMPORT                        R8 K36 [CFrame.fromAxisAngle]
      150 LOADK                            R9 K37 [{0, 1, 0}]
      151 LOADK                            R10 K38 [-1.5707963267948966]
      152 CALL                             R8 2 1
      153 MUL                              R6 R7 R8
      154 GETIMPORT                        R8 K15 [CFrame.new]
      156 LOADK                            R9 K39 [-0.5]
      157 LOADN                            R10 1
      158 LOADN                            R11 0
      159 CALL                             R8 3 1
      160 GETIMPORT                        R9 K36 [CFrame.fromAxisAngle]
      162 LOADK                            R10 K37 [{0, 1, 0}]
      163 LOADK                            R11 K38 [-1.5707963267948966]
      164 CALL                             R9 2 1
      165 MUL                              R7 R8 R9
      166 GETIMPORT                        R8 K2 [Instance.new]
      168 LOADK                            R9 K23 ["Motor6D"]
      169 CALL                             R8 1 1
      170 SETTABLEKS                       R2 R8 K24 ["Part0"]
      172 SETTABLEKS                       R5 R8 K25 ["Part1"]
      174 SETTABLEKS                       R6 R8 K26 ["C0"]
      176 SETTABLEKS                       R7 R8 K27 ["C1"]
      178 SETTABLEKS                       R2 R8 K13 ["Parent"]
      180 LOADK                            R9 K40 ["Left Hip"]
      181 SETTABLEKS                       R9 R8 K5 ["Name"]
      183 LOADK                            R9 K29 [0.1]
      184 SETTABLEKS                       R9 R8 K30 ["MaxVelocity"]
      186 GETIMPORT                        R9 K2 [Instance.new]
      188 LOADK                            R10 K6 ["Part"]
      189 MOVE                             R11 R0
      190 CALL                             R9 2 1
      191 LOADK                            R10 K41 ["Right Leg"]
      192 SETTABLEKS                       R10 R9 K5 ["Name"]
      194 LOADB                            R10 0
      195 SETTABLEKS                       R10 R9 K8 ["Anchored"]
      197 LOADB                            R10 0
      198 SETTABLEKS                       R10 R9 K9 ["CanCollide"]
      200 LOADK                            R10 K32 [{1, 2, 1}]
      201 SETTABLEKS                       R10 R9 K12 ["Size"]
      203 GETIMPORT                        R10 K15 [CFrame.new]
      205 LOADK                            R11 K39 [-0.5]
      206 LOADK                            R12 K34 [3.2]
      207 LOADK                            R13 K17 [4.5]
      208 CALL                             R10 3 1
      209 SETTABLEKS                       R10 R9 K14 ["CFrame"]
      211 LOADK                            R10 K18 ["Smooth"]
      212 SETTABLEKS                       R10 R9 K19 ["BottomSurface"]
      214 LOADK                            R10 K18 ["Smooth"]
      215 SETTABLEKS                       R10 R9 K20 ["TopSurface"]
      217 GETIMPORT                        R11 K15 [CFrame.new]
      219 LOADN                            R12 1
      220 LOADN                            R13 -1
      221 LOADN                            R14 0
      222 CALL                             R11 3 1
      223 GETIMPORT                        R12 K36 [CFrame.fromAxisAngle]
      225 LOADK                            R13 K42 [{0, -1, 0}]
      226 LOADK                            R14 K38 [-1.5707963267948966]
      227 CALL                             R12 2 1
      228 MUL                              R10 R11 R12
      229 GETIMPORT                        R12 K15 [CFrame.new]
      231 LOADK                            R13 K33 [0.5]
      232 LOADN                            R14 1
      233 LOADN                            R15 0
      234 CALL                             R12 3 1
      235 GETIMPORT                        R13 K36 [CFrame.fromAxisAngle]
      237 LOADK                            R14 K37 [{0, 1, 0}]
      238 LOADK                            R15 K43 [1.5707963267948966]
      239 CALL                             R13 2 1
      240 MUL                              R11 R12 R13
      241 GETIMPORT                        R12 K2 [Instance.new]
      243 LOADK                            R13 K23 ["Motor6D"]
      244 CALL                             R12 1 1
      245 SETTABLEKS                       R2 R12 K24 ["Part0"]
      247 SETTABLEKS                       R9 R12 K25 ["Part1"]
      249 SETTABLEKS                       R10 R12 K26 ["C0"]
      251 SETTABLEKS                       R11 R12 K27 ["C1"]
      253 SETTABLEKS                       R2 R12 K13 ["Parent"]
      255 LOADK                            R13 K44 ["Right Hip"]
      256 SETTABLEKS                       R13 R12 K5 ["Name"]
      258 LOADK                            R13 K29 [0.1]
      259 SETTABLEKS                       R13 R12 K30 ["MaxVelocity"]
      261 GETIMPORT                        R13 K2 [Instance.new]
      263 LOADK                            R14 K6 ["Part"]
      264 MOVE                             R15 R0
      265 CALL                             R13 2 1
      266 LOADK                            R14 K45 ["Left Arm"]
      267 SETTABLEKS                       R14 R13 K5 ["Name"]
      269 LOADB                            R14 0
      270 SETTABLEKS                       R14 R13 K8 ["Anchored"]
      272 LOADB                            R14 0
      273 SETTABLEKS                       R14 R13 K9 ["CanCollide"]
      275 LOADK                            R14 K32 [{1, 2, 1}]
      276 SETTABLEKS                       R14 R13 K12 ["Size"]
      278 GETIMPORT                        R14 K15 [CFrame.new]
      280 LOADK                            R15 K46 [1.5]
      281 LOADK                            R16 K16 [5.2]
      282 LOADK                            R17 K17 [4.5]
      283 CALL                             R14 3 1
      284 SETTABLEKS                       R14 R13 K14 ["CFrame"]
      286 LOADK                            R14 K18 ["Smooth"]
      287 SETTABLEKS                       R14 R13 K19 ["BottomSurface"]
      289 LOADK                            R14 K18 ["Smooth"]
      290 SETTABLEKS                       R14 R13 K20 ["TopSurface"]
      292 GETIMPORT                        R15 K15 [CFrame.new]
      294 LOADN                            R16 -1
      295 LOADK                            R17 K33 [0.5]
      296 LOADN                            R18 0
      297 CALL                             R15 3 1
      298 GETIMPORT                        R16 K36 [CFrame.fromAxisAngle]
      300 LOADK                            R17 K37 [{0, 1, 0}]
      301 LOADK                            R18 K38 [-1.5707963267948966]
      302 CALL                             R16 2 1
      303 MUL                              R14 R15 R16
      304 GETIMPORT                        R16 K15 [CFrame.new]
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
      328 SETTABLEKS                       R2 R16 K13 ["Parent"]
      330 LOADK                            R17 K47 ["Left Shoulder"]
      331 SETTABLEKS                       R17 R16 K5 ["Name"]
      333 LOADK                            R17 K29 [0.1]
      334 SETTABLEKS                       R17 R16 K30 ["MaxVelocity"]
      336 GETIMPORT                        R17 K2 [Instance.new]
      338 LOADK                            R18 K6 ["Part"]
      339 MOVE                             R19 R0
      340 CALL                             R17 2 1
      341 LOADK                            R18 K48 ["Right Arm"]
      342 SETTABLEKS                       R18 R17 K5 ["Name"]
      344 LOADB                            R18 0
      345 SETTABLEKS                       R18 R17 K8 ["Anchored"]
      347 LOADB                            R18 0
      348 SETTABLEKS                       R18 R17 K9 ["CanCollide"]
      350 LOADK                            R18 K32 [{1, 2, 1}]
      351 SETTABLEKS                       R18 R17 K12 ["Size"]
      353 GETIMPORT                        R18 K15 [CFrame.new]
      355 LOADK                            R19 K49 [-1.5]
      356 LOADK                            R20 K16 [5.2]
      357 LOADK                            R21 K17 [4.5]
      358 CALL                             R18 3 1
      359 SETTABLEKS                       R18 R17 K14 ["CFrame"]
      361 LOADK                            R18 K18 ["Smooth"]
      362 SETTABLEKS                       R18 R17 K19 ["BottomSurface"]
      364 LOADK                            R18 K18 ["Smooth"]
      365 SETTABLEKS                       R18 R17 K20 ["TopSurface"]
      367 GETIMPORT                        R19 K15 [CFrame.new]
      369 LOADN                            R20 1
      370 LOADK                            R21 K33 [0.5]
      371 LOADN                            R22 0
      372 CALL                             R19 3 1
      373 GETIMPORT                        R20 K36 [CFrame.fromAxisAngle]
      375 LOADK                            R21 K42 [{0, -1, 0}]
      376 LOADK                            R22 K38 [-1.5707963267948966]
      377 CALL                             R20 2 1
      378 MUL                              R18 R19 R20
      379 GETIMPORT                        R20 K15 [CFrame.new]
      381 LOADK                            R21 K39 [-0.5]
      382 LOADK                            R22 K33 [0.5]
      383 LOADN                            R23 0
      384 CALL                             R20 3 1
      385 GETIMPORT                        R21 K36 [CFrame.fromAxisAngle]
      387 LOADK                            R22 K37 [{0, 1, 0}]
      388 LOADK                            R23 K43 [1.5707963267948966]
      389 CALL                             R21 2 1
      390 MUL                              R19 R20 R21
      391 GETIMPORT                        R20 K2 [Instance.new]
      393 LOADK                            R21 K23 ["Motor6D"]
      394 CALL                             R20 1 1
      395 SETTABLEKS                       R2 R20 K24 ["Part0"]
      397 SETTABLEKS                       R17 R20 K25 ["Part1"]
      399 SETTABLEKS                       R18 R20 K26 ["C0"]
      401 SETTABLEKS                       R19 R20 K27 ["C1"]
      403 SETTABLEKS                       R2 R20 K13 ["Parent"]
      405 LOADK                            R21 K50 ["Right Shoulder"]
      406 SETTABLEKS                       R21 R20 K5 ["Name"]
      408 LOADK                            R21 K29 [0.1]
      409 SETTABLEKS                       R21 R20 K30 ["MaxVelocity"]
      411 GETIMPORT                        R21 K2 [Instance.new]
      413 LOADK                            R22 K6 ["Part"]
      414 MOVE                             R23 R0
      415 CALL                             R21 2 1
      416 LOADK                            R22 K51 ["Head"]
      417 SETTABLEKS                       R22 R21 K5 ["Name"]
      419 LOADB                            R22 0
      420 SETTABLEKS                       R22 R21 K8 ["Anchored"]
      422 LOADB                            R22 1
      423 SETTABLEKS                       R22 R21 K9 ["CanCollide"]
      425 LOADK                            R22 K52 [{2, 1, 1}]
      426 SETTABLEKS                       R22 R21 K12 ["Size"]
      428 GETIMPORT                        R22 K15 [CFrame.new]
      430 LOADN                            R23 0
      431 LOADK                            R24 K53 [6.7]
      432 LOADK                            R25 K17 [4.5]
      433 CALL                             R22 3 1
      434 SETTABLEKS                       R22 R21 K14 ["CFrame"]
      436 LOADK                            R22 K18 ["Smooth"]
      437 SETTABLEKS                       R22 R21 K19 ["BottomSurface"]
      439 LOADK                            R22 K18 ["Smooth"]
      440 SETTABLEKS                       R22 R21 K20 ["TopSurface"]
      442 GETIMPORT                        R22 K15 [CFrame.new]
      444 LOADN                            R23 0
      445 LOADN                            R24 1
      446 LOADN                            R25 0
      447 LOADN                            R26 -1
      448 LOADN                            R27 0
      449 LOADN                            R28 0
      450 LOADN                            R29 0
      451 LOADN                            R30 0
      452 LOADN                            R31 1
      453 LOADN                            R32 0
      454 LOADN                            R33 1
      455 LOADN                            R34 0
      456 CALL                             R22 12 1
      457 GETIMPORT                        R23 K15 [CFrame.new]
      459 LOADN                            R24 0
      460 LOADK                            R25 K39 [-0.5]
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
      472 GETIMPORT                        R24 K2 [Instance.new]
      474 LOADK                            R25 K23 ["Motor6D"]
      475 CALL                             R24 1 1
      476 SETTABLEKS                       R2 R24 K24 ["Part0"]
      478 SETTABLEKS                       R21 R24 K25 ["Part1"]
      480 SETTABLEKS                       R22 R24 K26 ["C0"]
      482 SETTABLEKS                       R23 R24 K27 ["C1"]
      484 SETTABLEKS                       R2 R24 K13 ["Parent"]
      486 LOADK                            R25 K54 ["Neck"]
      487 SETTABLEKS                       R25 R24 K5 ["Name"]
      489 LOADK                            R25 K29 [0.1]
      490 SETTABLEKS                       R25 R24 K30 ["MaxVelocity"]
      492 GETIMPORT                        R25 K2 [Instance.new]
      494 LOADK                            R26 K55 ["Decal"]
      495 MOVE                             R27 R21
      496 CALL                             R25 2 1
      497 LOADK                            R26 K56 ["Face"]
      498 SETTABLEKS                       R26 R25 K5 ["Name"]
      500 LOADK                            R26 K57 ["rbxasset://textures/face.png"]
      501 SETTABLEKS                       R26 R25 K58 ["Texture"]
      503 GETIMPORT                        R26 K2 [Instance.new]
      505 LOADK                            R27 K59 ["Humanoid"]
      506 MOVE                             R28 R0
      507 CALL                             R26 2 0
      508 GETIMPORT                        R26 K61 [workspace]
      510 SETTABLEKS                       R26 R0 K13 ["Parent"]
      512 RETURN                           R0 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["HumanoidRootPart"] ; [+3]
        2 GETUPVAL                         R1 0
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 1
        5 GETTABLE                         R1 R2 R0
        6 JUMPIF                           R1 ; [+16]
        7 GETIMPORT                        R2 K3 [Instance.new]
        9 LOADK                            R3 K4 ["Part"]
       10 CALL                             R2 1 1
       11 MOVE                             R1 R2
       12 SETTABLEKS                       R0 R1 K5 ["Name"]
       14 GETUPVAL                         R3 2
       15 GETTABLE                         R2 R3 R0
       16 SETTABLEKS                       R2 R1 K6 ["CFrame"]
       18 GETUPVAL                         R2 3
       19 SETTABLEKS                       R2 R1 K7 ["Parent"]
       21 GETUPVAL                         R2 1
       22 SETTABLE                         R1 R2 R0
       23 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R0 K15 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot"}]
        1 GETIMPORT                        R1 K18 [CFrame.new]
        3 LOADK                            R2 K19 [1.381]
        4 LOADK                            R3 K20 [5.045]
        5 LOADK                            R4 K21 [-1.267]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Head"]
        9 GETIMPORT                        R1 K18 [CFrame.new]
       11 LOADK                            R2 K19 [1.381]
       12 LOADK                            R3 K22 [3.906]
       13 LOADK                            R4 K23 [-1.212]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["UpperTorso"]
       17 GETIMPORT                        R1 K18 [CFrame.new]
       19 LOADK                            R2 K19 [1.381]
       20 LOADK                            R3 K24 [3.031]
       21 LOADK                            R4 K25 [-1.219]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["LowerTorso"]
       25 GETIMPORT                        R1 K18 [CFrame.new]
       27 LOADK                            R2 K26 [0.826]
       28 LOADK                            R3 K27 [3.94]
       29 LOADK                            R4 K28 [-1.058]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["LeftUpperArm"]
       33 GETIMPORT                        R1 K18 [CFrame.new]
       35 LOADK                            R2 K29 [0.641]
       36 LOADK                            R3 K30 [3.167]
       37 LOADK                            R4 K31 [-1.143]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["LeftLowerArm"]
       41 GETIMPORT                        R1 K18 [CFrame.new]
       43 LOADK                            R2 K32 [0.577]
       44 LOADK                            R3 K33 [2.508]
       45 LOADK                            R4 K34 [-1.271]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["LeftHand"]
       49 GETIMPORT                        R1 K18 [CFrame.new]
       51 LOADK                            R2 K35 [1.935]
       52 LOADK                            R3 K27 [3.94]
       53 LOADK                            R4 K28 [-1.058]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["RightUpperArm"]
       57 GETIMPORT                        R1 K18 [CFrame.new]
       59 LOADK                            R2 K36 [2.12]
       60 LOADK                            R3 K30 [3.167]
       61 LOADK                            R4 K31 [-1.143]
       62 CALL                             R1 3 1
       63 SETTABLEKS                       R1 R0 K7 ["RightLowerArm"]
       65 GETIMPORT                        R1 K18 [CFrame.new]
       67 LOADK                            R2 K37 [2.185]
       68 LOADK                            R3 K33 [2.508]
       69 LOADK                            R4 K34 [-1.271]
       70 CALL                             R1 3 1
       71 SETTABLEKS                       R1 R0 K8 ["RightHand"]
       73 GETIMPORT                        R1 K18 [CFrame.new]
       75 LOADK                            R2 K38 [1.086]
       76 LOADK                            R3 K39 [2.258]
       77 LOADK                            R4 K40 [-1.232]
       78 CALL                             R1 3 1
       79 SETTABLEKS                       R1 R0 K9 ["LeftUpperLeg"]
       81 GETIMPORT                        R1 K18 [CFrame.new]
       83 LOADK                            R2 K41 [1.037]
       84 LOADK                            R3 K42 [0.956]
       85 LOADK                            R4 K43 [-1.144]
       86 CALL                             R1 3 1
       87 SETTABLEKS                       R1 R0 K10 ["LeftLowerLeg"]
       89 GETIMPORT                        R1 K18 [CFrame.new]
       91 LOADK                            R2 K44 [1.032]
       92 LOADK                            R3 K45 [0.197]
       93 LOADK                            R4 K46 [-1.311]
       94 CALL                             R1 3 1
       95 SETTABLEKS                       R1 R0 K11 ["LeftFoot"]
       97 GETIMPORT                        R1 K18 [CFrame.new]
       99 LOADK                            R2 K47 [1.675]
      100 LOADK                            R3 K39 [2.258]
      101 LOADK                            R4 K40 [-1.232]
      102 CALL                             R1 3 1
      103 SETTABLEKS                       R1 R0 K12 ["RightUpperLeg"]
      105 GETIMPORT                        R1 K18 [CFrame.new]
      107 LOADK                            R2 K48 [1.724]
      108 LOADK                            R3 K42 [0.956]
      109 LOADK                            R4 K43 [-1.144]
      110 CALL                             R1 3 1
      111 SETTABLEKS                       R1 R0 K13 ["RightLowerLeg"]
      113 GETIMPORT                        R1 K18 [CFrame.new]
      115 LOADK                            R2 K49 [1.729]
      116 LOADK                            R3 K45 [0.197]
      117 LOADK                            R4 K46 [-1.311]
      118 CALL                             R1 3 1
      119 SETTABLEKS                       R1 R0 K14 ["RightFoot"]
      121 NEWTABLE                         R1 0 0
      123 GETIMPORT                        R2 K51 [Instance.new]
      125 LOADK                            R3 K52 ["Model"]
      126 CALL                             R2 1 1
      127 GETIMPORT                        R3 K51 [Instance.new]
      129 LOADK                            R4 K53 ["Part"]
      130 CALL                             R3 1 1
      131 LOADK                            R4 K54 ["HumanoidRootPart"]
      132 SETTABLEKS                       R4 R3 K55 ["Name"]
      134 SETTABLEKS                       R2 R3 K56 ["Parent"]
      136 NEWCLOSURE                       R4 P0
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R0
      140 CAPTURE                          VAL R2
      141 GETIMPORT                        R5 K51 [Instance.new]
      143 LOADK                            R6 K57 ["Humanoid"]
      144 CALL                             R5 1 1
      145 GETIMPORT                        R6 K61 [Enum.HumanoidRigType.R15]
      147 SETTABLEKS                       R6 R5 K62 ["RigType"]
      149 SETTABLEKS                       R2 R5 K56 ["Parent"]
      151 GETIMPORT                        R6 K64 [pairs]
      153 GETUPVAL                         R7 0
      154 GETTABLEKS                       R7 R7 K65 ["R15_PARTS"]
      156 CALL                             R6 1 3
      157 FORGPREP_NEXT                    R6
      158 JUMPIFEQKS                       R9 K54 ["HumanoidRootPart"] ; [+63]
      160 JUMPIFNOTEQKS                    R9 K54 ["HumanoidRootPart"] ; [+3]
      162 MOVE                             R11 R3
      163 JUMP                             ; [+16]
      164 GETTABLE                         R12 R1 R9
      165 JUMPIF                           R12 ; [+13]
      166 GETIMPORT                        R13 K51 [Instance.new]
      168 LOADK                            R14 K53 ["Part"]
      169 CALL                             R13 1 1
      170 MOVE                             R12 R13
      171 SETTABLEKS                       R9 R12 K55 ["Name"]
      173 GETTABLE                         R13 R0 R9
      174 SETTABLEKS                       R13 R12 K16 ["CFrame"]
      176 SETTABLEKS                       R2 R12 K56 ["Parent"]
      178 SETTABLE                         R12 R1 R9
      179 MOVE                             R11 R12
      180 GETIMPORT                        R12 K51 [Instance.new]
      182 LOADK                            R13 K66 ["Motor6D"]
      183 CALL                             R12 1 1
      184 GETUPVAL                         R14 0
      185 GETTABLEKS                       R14 R14 K67 ["PART1_TO_JOINT"]
      187 GETTABLE                         R13 R14 R9
      188 SETTABLEKS                       R13 R12 K55 ["Name"]
      190 SETTABLEKS                       R11 R12 K56 ["Parent"]
      192 SETTABLEKS                       R11 R12 K68 ["Part1"]
      194 GETUPVAL                         R14 0
      195 GETTABLEKS                       R14 R14 K69 ["R15links"]
      197 GETTABLE                         R13 R14 R9
      198 JUMPIFNOTEQKS                    R13 K54 ["HumanoidRootPart"] ; [+3]
      200 MOVE                             R14 R3
      201 JUMP                             ; [+16]
      202 GETTABLE                         R15 R1 R13
      203 JUMPIF                           R15 ; [+13]
      204 GETIMPORT                        R16 K51 [Instance.new]
      206 LOADK                            R17 K53 ["Part"]
      207 CALL                             R16 1 1
      208 MOVE                             R15 R16
      209 SETTABLEKS                       R13 R15 K55 ["Name"]
      211 GETTABLE                         R16 R0 R13
      212 SETTABLEKS                       R16 R15 K16 ["CFrame"]
      214 SETTABLEKS                       R2 R15 K56 ["Parent"]
      216 SETTABLE                         R15 R1 R13
      217 MOVE                             R14 R15
      218 SETTABLEKS                       R14 R12 K70 ["Part0"]
      220 SETTABLEKS                       R2 R11 K56 ["Parent"]
      222 FORGLOOP                         R6 2 ; [-65]
      224 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CreateR6Rig"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K3 [Instance.new]
        6 LOADK                            R2 K4 ["CharacterMesh"]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 1
        9 LOADK                            R2 K5 [27111419]
       10 SETTABLEKS                       R2 R1 K6 ["MeshId"]
       12 LOADN                            R2 2
       13 SETTABLEKS                       R2 R1 K7 ["BodyPart"]
       15 GETIMPORT                        R2 K3 [Instance.new]
       17 LOADK                            R3 K4 ["CharacterMesh"]
       18 MOVE                             R4 R0
       19 CALL                             R2 2 1
       20 LOADK                            R3 K8 [27111864]
       21 SETTABLEKS                       R3 R2 K6 ["MeshId"]
       23 LOADN                            R3 3
       24 SETTABLEKS                       R3 R2 K7 ["BodyPart"]
       26 GETIMPORT                        R3 K3 [Instance.new]
       28 LOADK                            R4 K4 ["CharacterMesh"]
       29 MOVE                             R5 R0
       30 CALL                             R3 2 1
       31 LOADK                            R4 K9 [27111857]
       32 SETTABLEKS                       R4 R3 K6 ["MeshId"]
       34 LOADN                            R4 4
       35 SETTABLEKS                       R4 R3 K7 ["BodyPart"]
       37 GETIMPORT                        R4 K3 [Instance.new]
       39 LOADK                            R5 K4 ["CharacterMesh"]
       40 MOVE                             R6 R0
       41 CALL                             R4 2 1
       42 LOADK                            R5 K10 [27111882]
       43 SETTABLEKS                       R5 R4 K6 ["MeshId"]
       45 LOADN                            R5 5
       46 SETTABLEKS                       R5 R4 K7 ["BodyPart"]
       48 GETIMPORT                        R5 K3 [Instance.new]
       50 LOADK                            R6 K4 ["CharacterMesh"]
       51 MOVE                             R7 R0
       52 CALL                             R5 2 1
       53 LOADK                            R6 K11 [27111894]
       54 SETTABLEKS                       R6 R5 K6 ["MeshId"]
       56 LOADN                            R6 1
       57 SETTABLEKS                       R6 R5 K7 ["BodyPart"]
       59 GETIMPORT                        R6 K3 [Instance.new]
       61 LOADK                            R7 K12 ["SpecialMesh"]
       62 GETTABLEKS                       R8 R0 K13 ["Head"]
       64 CALL                             R6 2 1
       65 LOADN                            R7 0
       66 SETTABLEKS                       R7 R6 K14 ["MeshType"]
       68 LOADK                            R7 K15 [{1.25, 1.25, 1.25}]
       69 SETTABLEKS                       R7 R6 K16 ["Scale"]
       71 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CreateR6Rig"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K3 [Instance.new]
        6 LOADK                            R2 K4 ["CharacterMesh"]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 1
        9 LOADK                            R2 K5 [82907977]
       10 SETTABLEKS                       R2 R1 K6 ["MeshId"]
       12 LOADN                            R2 2
       13 SETTABLEKS                       R2 R1 K7 ["BodyPart"]
       15 GETIMPORT                        R2 K3 [Instance.new]
       17 LOADK                            R3 K4 ["CharacterMesh"]
       18 MOVE                             R4 R0
       19 CALL                             R2 2 1
       20 LOADK                            R3 K8 [82908019]
       21 SETTABLEKS                       R3 R2 K6 ["MeshId"]
       23 LOADN                            R3 3
       24 SETTABLEKS                       R3 R2 K7 ["BodyPart"]
       26 GETIMPORT                        R3 K3 [Instance.new]
       28 LOADK                            R4 K4 ["CharacterMesh"]
       29 MOVE                             R5 R0
       30 CALL                             R3 2 1
       31 LOADK                            R4 K9 [81487640]
       32 SETTABLEKS                       R4 R3 K6 ["MeshId"]
       34 LOADN                            R4 4
       35 SETTABLEKS                       R4 R3 K7 ["BodyPart"]
       37 GETIMPORT                        R4 K3 [Instance.new]
       39 LOADK                            R5 K4 ["CharacterMesh"]
       40 MOVE                             R6 R0
       41 CALL                             R4 2 1
       42 LOADK                            R5 K10 [81487710]
       43 SETTABLEKS                       R5 R4 K6 ["MeshId"]
       45 LOADN                            R5 5
       46 SETTABLEKS                       R5 R4 K7 ["BodyPart"]
       48 GETIMPORT                        R5 K3 [Instance.new]
       50 LOADK                            R6 K4 ["CharacterMesh"]
       51 MOVE                             R7 R0
       52 CALL                             R5 2 1
       53 LOADK                            R6 K11 [82907945]
       54 SETTABLEKS                       R6 R5 K6 ["MeshId"]
       56 LOADN                            R6 1
       57 SETTABLEKS                       R6 R5 K7 ["BodyPart"]
       59 GETIMPORT                        R6 K3 [Instance.new]
       61 LOADK                            R7 K12 ["SpecialMesh"]
       62 GETTABLEKS                       R8 R0 K13 ["Head"]
       64 CALL                             R6 2 1
       65 LOADN                            R7 0
       66 SETTABLEKS                       R7 R6 K14 ["MeshType"]
       68 LOADK                            R7 K15 [{1.25, 1.25, 1.25}]
       69 SETTABLEKS                       R7 R6 K16 ["Scale"]
       71 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CreateR6Rig"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K3 [Instance.new]
        6 LOADK                            R2 K4 ["CharacterMesh"]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 1
        9 LOADK                            R2 K5 [83001137]
       10 SETTABLEKS                       R2 R1 K6 ["MeshId"]
       12 LOADN                            R2 2
       13 SETTABLEKS                       R2 R1 K7 ["BodyPart"]
       15 GETIMPORT                        R2 K3 [Instance.new]
       17 LOADK                            R3 K4 ["CharacterMesh"]
       18 MOVE                             R4 R0
       19 CALL                             R2 2 1
       20 LOADK                            R3 K8 [83001181]
       21 SETTABLEKS                       R3 R2 K6 ["MeshId"]
       23 LOADN                            R3 3
       24 SETTABLEKS                       R3 R2 K7 ["BodyPart"]
       26 GETIMPORT                        R3 K3 [Instance.new]
       28 LOADK                            R4 K4 ["CharacterMesh"]
       29 MOVE                             R5 R0
       30 CALL                             R3 2 1
       31 LOADK                            R4 K9 [81628361]
       32 SETTABLEKS                       R4 R3 K6 ["MeshId"]
       34 LOADN                            R4 4
       35 SETTABLEKS                       R4 R3 K7 ["BodyPart"]
       37 GETIMPORT                        R4 K3 [Instance.new]
       39 LOADK                            R5 K4 ["CharacterMesh"]
       40 MOVE                             R6 R0
       41 CALL                             R4 2 1
       42 LOADK                            R5 K10 [81628308]
       43 SETTABLEKS                       R5 R4 K6 ["MeshId"]
       45 LOADN                            R5 5
       46 SETTABLEKS                       R5 R4 K7 ["BodyPart"]
       48 GETIMPORT                        R5 K3 [Instance.new]
       50 LOADK                            R6 K4 ["CharacterMesh"]
       51 MOVE                             R7 R0
       52 CALL                             R5 2 1
       53 LOADK                            R6 K11 [82987757]
       54 SETTABLEKS                       R6 R5 K6 ["MeshId"]
       56 LOADN                            R6 1
       57 SETTABLEKS                       R6 R5 K7 ["BodyPart"]
       59 GETIMPORT                        R6 K3 [Instance.new]
       61 LOADK                            R7 K12 ["SpecialMesh"]
       62 GETTABLEKS                       R8 R0 K13 ["Head"]
       64 CALL                             R6 2 1
       65 LOADN                            R7 0
       66 SETTABLEKS                       R7 R6 K14 ["MeshType"]
       68 LOADK                            R7 K15 [{1.25, 1.25, 1.25}]
       69 SETTABLEKS                       R7 R6 K16 ["Scale"]
       71 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+7]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R4 K3 ["RigCreator couldn't find Rig with name "]
        9 MOVE                             R5 R0
       10 CONCAT                           R3 R4 R5
       11 CALL                             R2 1 0
       12 RETURN                           R0 0
       13 NAMECALL                         R2 R1 K4 ["Clone"]
       15 CALL                             R2 1 1
       16 LOADK                            R5 K5 ["Humanoid"]
       17 NAMECALL                         R3 R2 K6 ["FindFirstChildOfClass"]
       19 CALL                             R3 2 1
       20 JUMPIFNOT                        R3 ; [+3]
       21 NAMECALL                         R4 R3 K7 ["BuildRigFromAttachments"]
       23 CALL                             R4 1 0
       24 GETIMPORT                        R4 K9 [workspace]
       26 SETTABLEKS                       R4 R2 K10 ["Parent"]
       28 RETURN                           R2 1
       29 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Model"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K2 [Instance.new]
        6 LOADK                            R2 K4 ["Part"]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 1
        9 LOADK                            R2 K5 ["HumanoidRootPart"]
       10 SETTABLEKS                       R2 R1 K6 ["Name"]
       12 GETIMPORT                        R2 K2 [Instance.new]
       14 LOADK                            R3 K4 ["Part"]
       15 MOVE                             R4 R0
       16 CALL                             R2 2 1
       17 LOADK                            R3 K7 ["UpperTorso"]
       18 SETTABLEKS                       R3 R2 K6 ["Name"]
       20 GETIMPORT                        R3 K2 [Instance.new]
       22 LOADK                            R4 K4 ["Part"]
       23 MOVE                             R5 R0
       24 CALL                             R3 2 1
       25 LOADK                            R4 K8 ["Head"]
       26 SETTABLEKS                       R4 R3 K6 ["Name"]
       28 GETIMPORT                        R4 K2 [Instance.new]
       30 LOADK                            R5 K9 ["FaceControls"]
       31 MOVE                             R6 R3
       32 CALL                             R4 2 1
       33 LOADK                            R5 K9 ["FaceControls"]
       34 SETTABLEKS                       R5 R4 K6 ["Name"]
       36 GETIMPORT                        R5 K2 [Instance.new]
       38 LOADK                            R6 K10 ["Motor6D"]
       39 MOVE                             R7 R2
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R1 R5 K11 ["Part0"]
       43 SETTABLEKS                       R2 R5 K12 ["Part1"]
       45 GETIMPORT                        R6 K2 [Instance.new]
       47 LOADK                            R7 K10 ["Motor6D"]
       48 MOVE                             R8 R3
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R2 R6 K11 ["Part0"]
       52 SETTABLEKS                       R3 R6 K12 ["Part1"]
       54 GETIMPORT                        R7 K2 [Instance.new]
       56 LOADK                            R8 K13 ["Attachment"]
       57 MOVE                             R9 R1
       58 CALL                             R7 2 1
       59 LOADK                            R8 K14 ["RootAttachment"]
       60 SETTABLEKS                       R8 R7 K6 ["Name"]
       62 GETIMPORT                        R8 K2 [Instance.new]
       64 LOADK                            R9 K13 ["Attachment"]
       65 MOVE                             R10 R2
       66 CALL                             R8 2 1
       67 LOADK                            R9 K14 ["RootAttachment"]
       68 SETTABLEKS                       R9 R8 K6 ["Name"]
       70 GETIMPORT                        R9 K2 [Instance.new]
       72 LOADK                            R10 K13 ["Attachment"]
       73 MOVE                             R11 R2
       74 CALL                             R9 2 1
       75 LOADK                            R10 K15 ["NeckAttachment"]
       76 SETTABLEKS                       R10 R9 K6 ["Name"]
       78 GETIMPORT                        R10 K2 [Instance.new]
       80 LOADK                            R11 K13 ["Attachment"]
       81 MOVE                             R12 R3
       82 CALL                             R10 2 1
       83 LOADK                            R11 K15 ["NeckAttachment"]
       84 SETTABLEKS                       R11 R10 K6 ["Name"]
       86 GETIMPORT                        R11 K2 [Instance.new]
       88 LOADK                            R12 K16 ["BallSocketConstraint"]
       89 MOVE                             R13 R0
       90 CALL                             R11 2 1
       91 LOADB                            R12 0
       92 SETTABLEKS                       R12 R11 K17 ["Enabled"]
       94 SETTABLEKS                       R9 R11 K18 ["Attachment0"]
       96 SETTABLEKS                       R10 R11 K19 ["Attachment1"]
       98 GETIMPORT                        R12 K2 [Instance.new]
      100 LOADK                            R13 K20 ["AnimationController"]
      101 MOVE                             R14 R0
      102 CALL                             R12 2 0
      103 GETIMPORT                        R12 K2 [Instance.new]
      105 LOADK                            R13 K21 ["Bone"]
      106 MOVE                             R14 R3
      107 CALL                             R12 2 1
      108 LOADK                            R13 K22 ["Jaw"]
      109 SETTABLEKS                       R13 R12 K6 ["Name"]
      111 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["InsertService"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 LOADK                            R4 K4 ["rbxasset://models/RigBuilder/AnthroRigs.rbxm"]
       10 NAMECALL                         R2 R1 K5 ["LoadLocalAsset"]
       12 CALL                             R2 2 1
       13 GETIMPORT                        R3 K7 [require]
       15 GETIMPORT                        R4 K9 [script]
       17 GETTABLEKS                       R4 R4 K10 ["Parent"]
       19 GETTABLEKS                       R4 R4 K10 ["Parent"]
       21 GETTABLEKS                       R4 R4 K11 ["Util"]
       23 GETTABLEKS                       R4 R4 K12 ["Constants"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K13 [PROTO_0]
       27 DUPCLOSURE                       R5 K14 [PROTO_1]
       28 SETTABLEKS                       R5 R0 K15 ["CreateR6Rig"]
       30 DUPCLOSURE                       R5 K16 [PROTO_3]
       31 CAPTURE                          VAL R3
       32 SETTABLEKS                       R5 R0 K17 ["CreateR15Rig"]
       34 DUPCLOSURE                       R5 K18 [PROTO_4]
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R5 R0 K19 ["CreateR6MeshRig"]
       38 DUPCLOSURE                       R5 K20 [PROTO_5]
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R5 R0 K21 ["CreateR6MeshBoyRig"]
       42 DUPCLOSURE                       R5 K22 [PROTO_6]
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R5 R0 K23 ["CreateR6MeshGirlRig"]
       46 DUPCLOSURE                       R5 K24 [PROTO_7]
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R5 R0 K25 ["BuildAnthroRig"]
       50 DUPCLOSURE                       R5 K26 [PROTO_8]
       51 SETTABLEKS                       R5 R0 K27 ["buildTestRig"]
       53 RETURN                           R0 1
