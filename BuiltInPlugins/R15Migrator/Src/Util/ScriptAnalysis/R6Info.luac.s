PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R5
       11 GETIMPORT                        R7 K4 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 1 ; [-8]
       16 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Conversions"]
        3 GETTABLEKS                       R1 R1 K1 ["Parts"]
        5 NEWTABLE                         R2 0 0
        7 GETIMPORT                        R3 K3 [pairs]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 3
       11 FORGPREP_NEXT                    R3
       12 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       14 MOVE                             R9 R2
       15 MOVE                             R10 R6
       16 GETIMPORT                        R8 K6 [table.insert]
       18 CALL                             R8 2 0
       19 FORGLOOP                         R3 1 ; [-8]
       21 MOVE                             R0 R2
       22 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Conversions"]
        5 GETTABLEKS                       R1 R1 K1 ["Parts"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETIMPORT                        R6 K3 [ipairs]
       12 MOVE                             R7 R5
       13 CALL                             R6 1 3
       14 FORGPREP_INEXT                   R6
       15 SETTABLE                         R10 R0 R10
       16 FORGLOOP                         R6 2 [inext] ; [-2]
       18 FORGLOOP                         R1 2 ; [-9]
       20 LOADK                            R1 K4 ["Head"]
       21 SETTABLEKS                       R1 R0 K4 ["Head"]
       23 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Conversions"]
        3 GETTABLEKS                       R1 R1 K1 ["Attachments"]
        5 NEWTABLE                         R2 0 0
        7 GETIMPORT                        R3 K3 [pairs]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 3
       11 FORGPREP_NEXT                    R3
       12 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       14 MOVE                             R9 R2
       15 MOVE                             R10 R6
       16 GETIMPORT                        R8 K6 [table.insert]
       18 CALL                             R8 2 0
       19 FORGLOOP                         R3 1 ; [-8]
       21 MOVE                             R0 R2
       22 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Conversions"]
        3 GETTABLEKS                       R1 R1 K1 ["Joints"]
        5 NEWTABLE                         R2 0 0
        7 GETIMPORT                        R3 K3 [pairs]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 3
       11 FORGPREP_NEXT                    R3
       12 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       14 MOVE                             R9 R2
       15 MOVE                             R10 R6
       16 GETIMPORT                        R8 K6 [table.insert]
       18 CALL                             R8 2 0
       19 FORGLOOP                         R3 1 ; [-8]
       21 MOVE                             R0 R2
       22 RETURN                           R0 1

PROTO_5:
        0 GETIMPORT                        R1 K2 [string.find]
        2 GETIMPORT                        R2 K4 [string.lower]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETIMPORT                        R3 K4 [string.lower]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K5 ["HumanoidKey"]
       11 CALL                             R3 1 -1
       12 CALL                             R1 -1 1
       13 JUMPIFNOT                        R1 ; [+2]
       14 LOADB                            R1 1
       15 RETURN                           R1 1
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K6 ["HumanoidNames"]
       19 LOADNIL                          R2
       20 LOADNIL                          R3
       21 FORGPREP                         R1
       22 JUMPIFNOTEQ                      R5 R0 ; [+3]
       24 LOADB                            R6 1
       25 RETURN                           R6 1
       26 FORGLOOP                         R1 2 ; [-5]
       28 LOADB                            R1 0
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K17 [{[1] = "Attachments", ["AttachmentKey"] = "Attachment", ["PartsKey"] = "Parts", ["PartKey"] = "Part", ["JointsKey"] = "Joints", ["JointKey"] = "Joint", ["HumanoidKey"] = "Humanoid", ["AnimationKey"] = "Animation", ["RigTypeKey"] = "RigTypeKey"}]
        2 NEWTABLE                         R1 0 3
        4 GETTABLEKS                       R2 R0 K12 ["HumanoidKey"]
        6 LOADK                            R3 K18 ["humanoid"]
        7 LOADK                            R4 K19 ["hum"]
        8 SETLIST                          R1 R2 3 [1]
       10 SETTABLEKS                       R1 R0 K20 ["HumanoidNames"]
       12 LOADK                            R1 K21 ["Enum.HumanoidRigType.R6"]
       13 SETTABLEKS                       R1 R0 K22 ["R6RigType"]
       15 LOADK                            R1 K23 ["Enum.HumanoidRigType.R15"]
       16 SETTABLEKS                       R1 R0 K24 ["R15RigType"]
       18 NEWTABLE                         R1 4 0
       20 GETTABLEKS                       R2 R0 K12 ["HumanoidKey"]
       22 NEWTABLE                         R3 16 0
       24 LOADK                            R4 K25 ["HumanoidRootPart"]
       25 SETTABLEKS                       R4 R3 K26 ["Torso"]
       27 LOADK                            R4 K27 ["LeftUpperArm"]
       28 SETTABLEKS                       R4 R3 K28 ["LeftArm"]
       30 LOADK                            R4 K29 ["RightUpperArm"]
       31 SETTABLEKS                       R4 R3 K30 ["RightArm"]
       33 LOADK                            R4 K31 ["LeftUpperLeg"]
       34 SETTABLEKS                       R4 R3 K32 ["LeftLeg"]
       36 LOADK                            R4 K33 ["RightUpperLeg"]
       37 SETTABLEKS                       R4 R3 K34 ["RightLeg"]
       39 LOADK                            R4 K27 ["LeftUpperArm"]
       40 SETTABLEKS                       R4 R3 K35 ["Left Arm"]
       42 LOADK                            R4 K29 ["RightUpperArm"]
       43 SETTABLEKS                       R4 R3 K36 ["Right Arm"]
       45 LOADK                            R4 K31 ["LeftUpperLeg"]
       46 SETTABLEKS                       R4 R3 K37 ["Left Leg"]
       48 LOADK                            R4 K33 ["RightUpperLeg"]
       49 SETTABLEKS                       R4 R3 K38 ["Right Leg"]
       51 SETTABLE                         R3 R1 R2
       52 GETTABLEKS                       R2 R0 K4 ["PartsKey"]
       54 NEWTABLE                         R3 16 0
       56 NEWTABLE                         R4 0 3
       58 LOADK                            R5 K27 ["LeftUpperArm"]
       59 LOADK                            R6 K39 ["LeftLowerArm"]
       60 LOADK                            R7 K40 ["LeftHand"]
       61 SETLIST                          R4 R5 3 [1]
       63 SETTABLEKS                       R4 R3 K28 ["LeftArm"]
       65 NEWTABLE                         R4 0 3
       67 LOADK                            R5 K29 ["RightUpperArm"]
       68 LOADK                            R6 K41 ["RightLowerArm"]
       69 LOADK                            R7 K42 ["RightHand"]
       70 SETLIST                          R4 R5 3 [1]
       72 SETTABLEKS                       R4 R3 K30 ["RightArm"]
       74 NEWTABLE                         R4 0 3
       76 LOADK                            R5 K31 ["LeftUpperLeg"]
       77 LOADK                            R6 K43 ["LeftLowerLeg"]
       78 LOADK                            R7 K44 ["LeftFoot"]
       79 SETLIST                          R4 R5 3 [1]
       81 SETTABLEKS                       R4 R3 K32 ["LeftLeg"]
       83 NEWTABLE                         R4 0 3
       85 LOADK                            R5 K33 ["RightUpperLeg"]
       86 LOADK                            R6 K45 ["RightLowerLeg"]
       87 LOADK                            R7 K46 ["RightFoot"]
       88 SETLIST                          R4 R5 3 [1]
       90 SETTABLEKS                       R4 R3 K34 ["RightLeg"]
       92 NEWTABLE                         R4 0 3
       94 LOADK                            R5 K27 ["LeftUpperArm"]
       95 LOADK                            R6 K39 ["LeftLowerArm"]
       96 LOADK                            R7 K40 ["LeftHand"]
       97 SETLIST                          R4 R5 3 [1]
       99 SETTABLEKS                       R4 R3 K35 ["Left Arm"]
      101 NEWTABLE                         R4 0 3
      103 LOADK                            R5 K29 ["RightUpperArm"]
      104 LOADK                            R6 K41 ["RightLowerArm"]
      105 LOADK                            R7 K42 ["RightHand"]
      106 SETLIST                          R4 R5 3 [1]
      108 SETTABLEKS                       R4 R3 K36 ["Right Arm"]
      110 NEWTABLE                         R4 0 3
      112 LOADK                            R5 K31 ["LeftUpperLeg"]
      113 LOADK                            R6 K43 ["LeftLowerLeg"]
      114 LOADK                            R7 K44 ["LeftFoot"]
      115 SETLIST                          R4 R5 3 [1]
      117 SETTABLEKS                       R4 R3 K37 ["Left Leg"]
      119 NEWTABLE                         R4 0 3
      121 LOADK                            R5 K33 ["RightUpperLeg"]
      122 LOADK                            R6 K45 ["RightLowerLeg"]
      123 LOADK                            R7 K46 ["RightFoot"]
      124 SETLIST                          R4 R5 3 [1]
      126 SETTABLEKS                       R4 R3 K38 ["Right Leg"]
      128 NEWTABLE                         R4 0 3
      130 LOADK                            R5 K47 ["UpperTorso"]
      131 LOADK                            R6 K48 ["LowerTorso"]
      132 LOADK                            R7 K25 ["HumanoidRootPart"]
      133 SETLIST                          R4 R5 3 [1]
      135 SETTABLEKS                       R4 R3 K26 ["Torso"]
      137 SETTABLE                         R3 R1 R2
      138 GETTABLEKS                       R2 R0 K0 ["AttachmentsKey"]
      140 NEWTABLE                         R3 64 0
      142 NEWTABLE                         R4 2 0
      144 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      146 NEWTABLE                         R6 0 1
      148 LOADK                            R7 K49 ["Head"]
      149 SETLIST                          R6 R7 1 [1]
      151 SETTABLE                         R6 R4 R5
      152 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      154 LOADK                            R6 K50 ["FaceCenterAttachment"]
      155 SETTABLE                         R6 R4 R5
      156 SETTABLEKS                       R4 R3 K50 ["FaceCenterAttachment"]
      158 NEWTABLE                         R4 2 0
      160 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      162 NEWTABLE                         R6 0 1
      164 LOADK                            R7 K49 ["Head"]
      165 SETLIST                          R6 R7 1 [1]
      167 SETTABLE                         R6 R4 R5
      168 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      170 LOADK                            R6 K51 ["FaceFrontAttachment"]
      171 SETTABLE                         R6 R4 R5
      172 SETTABLEKS                       R4 R3 K51 ["FaceFrontAttachment"]
      174 NEWTABLE                         R4 2 0
      176 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      178 NEWTABLE                         R6 0 1
      180 LOADK                            R7 K49 ["Head"]
      181 SETLIST                          R6 R7 1 [1]
      183 SETTABLE                         R6 R4 R5
      184 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      186 LOADK                            R6 K52 ["HairAttachment"]
      187 SETTABLE                         R6 R4 R5
      188 SETTABLEKS                       R4 R3 K52 ["HairAttachment"]
      190 NEWTABLE                         R4 2 0
      192 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      194 NEWTABLE                         R6 0 1
      196 LOADK                            R7 K49 ["Head"]
      197 SETLIST                          R6 R7 1 [1]
      199 SETTABLE                         R6 R4 R5
      200 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      202 LOADK                            R6 K53 ["HatAttachment"]
      203 SETTABLE                         R6 R4 R5
      204 SETTABLEKS                       R4 R3 K53 ["HatAttachment"]
      206 NEWTABLE                         R4 2 0
      208 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      210 NEWTABLE                         R6 0 1
      212 LOADK                            R7 K25 ["HumanoidRootPart"]
      213 SETLIST                          R6 R7 1 [1]
      215 SETTABLE                         R6 R4 R5
      216 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      218 LOADK                            R6 K54 ["RootRigAttachment"]
      219 SETTABLE                         R6 R4 R5
      220 SETTABLEKS                       R4 R3 K55 ["RootAttachment"]
      222 NEWTABLE                         R4 2 0
      224 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      226 NEWTABLE                         R6 0 1
      228 LOADK                            R7 K40 ["LeftHand"]
      229 SETLIST                          R6 R7 1 [1]
      231 SETTABLE                         R6 R4 R5
      232 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      234 LOADK                            R6 K56 ["LeftGripAttachment"]
      235 SETTABLE                         R6 R4 R5
      236 SETTABLEKS                       R4 R3 K56 ["LeftGripAttachment"]
      238 NEWTABLE                         R4 2 0
      240 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      242 NEWTABLE                         R6 0 1
      244 LOADK                            R7 K27 ["LeftUpperArm"]
      245 SETLIST                          R6 R7 1 [1]
      247 SETTABLE                         R6 R4 R5
      248 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      250 LOADK                            R6 K57 ["LeftShoulderAttachment"]
      251 SETTABLE                         R6 R4 R5
      252 SETTABLEKS                       R4 R3 K57 ["LeftShoulderAttachment"]
      254 NEWTABLE                         R4 2 0
      256 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      258 NEWTABLE                         R6 0 1
      260 LOADK                            R7 K44 ["LeftFoot"]
      261 SETLIST                          R6 R7 1 [1]
      263 SETTABLE                         R6 R4 R5
      264 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      266 LOADK                            R6 K58 ["LeftAnkleRigAttachment"]
      267 SETTABLE                         R6 R4 R5
      268 SETTABLEKS                       R4 R3 K59 ["LeftFootAttachment"]
      270 NEWTABLE                         R4 2 0
      272 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      274 NEWTABLE                         R6 0 1
      276 LOADK                            R7 K42 ["RightHand"]
      277 SETLIST                          R6 R7 1 [1]
      279 SETTABLE                         R6 R4 R5
      280 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      282 LOADK                            R6 K60 ["RightGripAttachment"]
      283 SETTABLE                         R6 R4 R5
      284 SETTABLEKS                       R4 R3 K60 ["RightGripAttachment"]
      286 NEWTABLE                         R4 2 0
      288 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      290 NEWTABLE                         R6 0 1
      292 LOADK                            R7 K29 ["RightUpperArm"]
      293 SETLIST                          R6 R7 1 [1]
      295 SETTABLE                         R6 R4 R5
      296 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      298 LOADK                            R6 K61 ["RightShoulderAttachment"]
      299 SETTABLE                         R6 R4 R5
      300 SETTABLEKS                       R4 R3 K61 ["RightShoulderAttachment"]
      302 NEWTABLE                         R4 2 0
      304 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      306 NEWTABLE                         R6 0 1
      308 LOADK                            R7 K46 ["RightFoot"]
      309 SETLIST                          R6 R7 1 [1]
      311 SETTABLE                         R6 R4 R5
      312 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      314 LOADK                            R6 K62 ["RightAnkleRigAttachment"]
      315 SETTABLE                         R6 R4 R5
      316 SETTABLEKS                       R4 R3 K63 ["RightFootAttachment"]
      318 NEWTABLE                         R4 2 0
      320 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      322 NEWTABLE                         R6 0 1
      324 LOADK                            R7 K47 ["UpperTorso"]
      325 SETLIST                          R6 R7 1 [1]
      327 SETTABLE                         R6 R4 R5
      328 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      330 LOADK                            R6 K64 ["BodyBackAttachment"]
      331 SETTABLE                         R6 R4 R5
      332 SETTABLEKS                       R4 R3 K64 ["BodyBackAttachment"]
      334 NEWTABLE                         R4 2 0
      336 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      338 NEWTABLE                         R6 0 1
      340 LOADK                            R7 K47 ["UpperTorso"]
      341 SETLIST                          R6 R7 1 [1]
      343 SETTABLE                         R6 R4 R5
      344 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      346 LOADK                            R6 K65 ["BodyFrontAttachment"]
      347 SETTABLE                         R6 R4 R5
      348 SETTABLEKS                       R4 R3 K65 ["BodyFrontAttachment"]
      350 NEWTABLE                         R4 2 0
      352 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      354 NEWTABLE                         R6 0 1
      356 LOADK                            R7 K47 ["UpperTorso"]
      357 SETLIST                          R6 R7 1 [1]
      359 SETTABLE                         R6 R4 R5
      360 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      362 LOADK                            R6 K66 ["LeftCollarAttachment"]
      363 SETTABLE                         R6 R4 R5
      364 SETTABLEKS                       R4 R3 K66 ["LeftCollarAttachment"]
      366 NEWTABLE                         R4 2 0
      368 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      370 NEWTABLE                         R6 0 1
      372 LOADK                            R7 K47 ["UpperTorso"]
      373 SETLIST                          R6 R7 1 [1]
      375 SETTABLE                         R6 R4 R5
      376 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      378 LOADK                            R6 K67 ["NeckAttachment"]
      379 SETTABLE                         R6 R4 R5
      380 SETTABLEKS                       R4 R3 K67 ["NeckAttachment"]
      382 NEWTABLE                         R4 2 0
      384 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      386 NEWTABLE                         R6 0 1
      388 LOADK                            R7 K47 ["UpperTorso"]
      389 SETLIST                          R6 R7 1 [1]
      391 SETTABLE                         R6 R4 R5
      392 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      394 LOADK                            R6 K68 ["RightCollarAttachment"]
      395 SETTABLE                         R6 R4 R5
      396 SETTABLEKS                       R4 R3 K68 ["RightCollarAttachment"]
      398 NEWTABLE                         R4 2 0
      400 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      402 NEWTABLE                         R6 0 1
      404 LOADK                            R7 K48 ["LowerTorso"]
      405 SETLIST                          R6 R7 1 [1]
      407 SETTABLE                         R6 R4 R5
      408 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      410 LOADK                            R6 K69 ["WaistBackAttachment"]
      411 SETTABLE                         R6 R4 R5
      412 SETTABLEKS                       R4 R3 K69 ["WaistBackAttachment"]
      414 NEWTABLE                         R4 2 0
      416 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      418 NEWTABLE                         R6 0 1
      420 LOADK                            R7 K48 ["LowerTorso"]
      421 SETLIST                          R6 R7 1 [1]
      423 SETTABLE                         R6 R4 R5
      424 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      426 LOADK                            R6 K70 ["WaistCenterAttachment"]
      427 SETTABLE                         R6 R4 R5
      428 SETTABLEKS                       R4 R3 K70 ["WaistCenterAttachment"]
      430 NEWTABLE                         R4 2 0
      432 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      434 NEWTABLE                         R6 0 1
      436 LOADK                            R7 K48 ["LowerTorso"]
      437 SETLIST                          R6 R7 1 [1]
      439 SETTABLE                         R6 R4 R5
      440 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      442 LOADK                            R6 K71 ["WaistFrontAttachment"]
      443 SETTABLE                         R6 R4 R5
      444 SETTABLEKS                       R4 R3 K71 ["WaistFrontAttachment"]
      446 NEWTABLE                         R4 2 0
      448 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      450 NEWTABLE                         R6 0 2
      452 LOADK                            R7 K25 ["HumanoidRootPart"]
      453 LOADK                            R8 K48 ["LowerTorso"]
      454 SETLIST                          R6 R7 2 [1]
      456 SETTABLE                         R6 R4 R5
      457 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      459 LOADK                            R6 K54 ["RootRigAttachment"]
      460 SETTABLE                         R6 R4 R5
      461 SETTABLEKS                       R4 R3 K54 ["RootRigAttachment"]
      463 NEWTABLE                         R4 2 0
      465 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      467 NEWTABLE                         R6 0 2
      469 LOADK                            R7 K48 ["LowerTorso"]
      470 LOADK                            R8 K33 ["RightUpperLeg"]
      471 SETLIST                          R6 R7 2 [1]
      473 SETTABLE                         R6 R4 R5
      474 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      476 LOADK                            R6 K72 ["RightHipRigAttachment"]
      477 SETTABLE                         R6 R4 R5
      478 SETTABLEKS                       R4 R3 K72 ["RightHipRigAttachment"]
      480 NEWTABLE                         R4 2 0
      482 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      484 NEWTABLE                         R6 0 2
      486 LOADK                            R7 K48 ["LowerTorso"]
      487 LOADK                            R8 K31 ["LeftUpperLeg"]
      488 SETLIST                          R6 R7 2 [1]
      490 SETTABLE                         R6 R4 R5
      491 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      493 LOADK                            R6 K73 ["LeftHipRigAttachment"]
      494 SETTABLE                         R6 R4 R5
      495 SETTABLEKS                       R4 R3 K73 ["LeftHipRigAttachment"]
      497 NEWTABLE                         R4 2 0
      499 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      501 NEWTABLE                         R6 0 2
      503 LOADK                            R7 K31 ["LeftUpperLeg"]
      504 LOADK                            R8 K43 ["LeftLowerLeg"]
      505 SETLIST                          R6 R7 2 [1]
      507 SETTABLE                         R6 R4 R5
      508 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      510 LOADK                            R6 K74 ["LeftKneeRigAttachment"]
      511 SETTABLE                         R6 R4 R5
      512 SETTABLEKS                       R4 R3 K74 ["LeftKneeRigAttachment"]
      514 NEWTABLE                         R4 2 0
      516 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      518 NEWTABLE                         R6 0 2
      520 LOADK                            R7 K33 ["RightUpperLeg"]
      521 LOADK                            R8 K45 ["RightLowerLeg"]
      522 SETLIST                          R6 R7 2 [1]
      524 SETTABLE                         R6 R4 R5
      525 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      527 LOADK                            R6 K75 ["RightKneeRigAttachment"]
      528 SETTABLE                         R6 R4 R5
      529 SETTABLEKS                       R4 R3 K75 ["RightKneeRigAttachment"]
      531 NEWTABLE                         R4 2 0
      533 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      535 NEWTABLE                         R6 0 2
      537 LOADK                            R7 K29 ["RightUpperArm"]
      538 LOADK                            R8 K41 ["RightLowerArm"]
      539 SETLIST                          R6 R7 2 [1]
      541 SETTABLE                         R6 R4 R5
      542 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      544 LOADK                            R6 K76 ["RightElbowRigAttachment"]
      545 SETTABLE                         R6 R4 R5
      546 SETTABLEKS                       R4 R3 K76 ["RightElbowRigAttachment"]
      548 NEWTABLE                         R4 2 0
      550 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      552 NEWTABLE                         R6 0 2
      554 LOADK                            R7 K27 ["LeftUpperArm"]
      555 LOADK                            R8 K39 ["LeftLowerArm"]
      556 SETLIST                          R6 R7 2 [1]
      558 SETTABLE                         R6 R4 R5
      559 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      561 LOADK                            R6 K77 ["LeftElbowRigAttachment"]
      562 SETTABLE                         R6 R4 R5
      563 SETTABLEKS                       R4 R3 K77 ["LeftElbowRigAttachment"]
      565 NEWTABLE                         R4 2 0
      567 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      569 NEWTABLE                         R6 0 2
      571 LOADK                            R7 K47 ["UpperTorso"]
      572 LOADK                            R8 K48 ["LowerTorso"]
      573 SETLIST                          R6 R7 2 [1]
      575 SETTABLE                         R6 R4 R5
      576 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      578 LOADK                            R6 K78 ["WaistRigAttachment"]
      579 SETTABLE                         R6 R4 R5
      580 SETTABLEKS                       R4 R3 K78 ["WaistRigAttachment"]
      582 NEWTABLE                         R4 2 0
      584 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      586 NEWTABLE                         R6 0 2
      588 LOADK                            R7 K47 ["UpperTorso"]
      589 LOADK                            R8 K27 ["LeftUpperArm"]
      590 SETLIST                          R6 R7 2 [1]
      592 SETTABLE                         R6 R4 R5
      593 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      595 LOADK                            R6 K79 ["LeftShoulderRigAttachment"]
      596 SETTABLE                         R6 R4 R5
      597 SETTABLEKS                       R4 R3 K79 ["LeftShoulderRigAttachment"]
      599 NEWTABLE                         R4 2 0
      601 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      603 NEWTABLE                         R6 0 2
      605 LOADK                            R7 K47 ["UpperTorso"]
      606 LOADK                            R8 K29 ["RightUpperArm"]
      607 SETLIST                          R6 R7 2 [1]
      609 SETTABLE                         R6 R4 R5
      610 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      612 LOADK                            R6 K80 ["RightShoulderRigAttachment"]
      613 SETTABLE                         R6 R4 R5
      614 SETTABLEKS                       R4 R3 K80 ["RightShoulderRigAttachment"]
      616 NEWTABLE                         R4 2 0
      618 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      620 NEWTABLE                         R6 0 2
      622 LOADK                            R7 K47 ["UpperTorso"]
      623 LOADK                            R8 K49 ["Head"]
      624 SETLIST                          R6 R7 2 [1]
      626 SETTABLE                         R6 R4 R5
      627 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      629 LOADK                            R6 K81 ["NeckRigAttachment"]
      630 SETTABLE                         R6 R4 R5
      631 SETTABLEKS                       R4 R3 K81 ["NeckRigAttachment"]
      633 NEWTABLE                         R4 2 0
      635 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      637 NEWTABLE                         R6 0 2
      639 LOADK                            R7 K45 ["RightLowerLeg"]
      640 LOADK                            R8 K46 ["RightFoot"]
      641 SETLIST                          R6 R7 2 [1]
      643 SETTABLE                         R6 R4 R5
      644 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      646 LOADK                            R6 K62 ["RightAnkleRigAttachment"]
      647 SETTABLE                         R6 R4 R5
      648 SETTABLEKS                       R4 R3 K62 ["RightAnkleRigAttachment"]
      650 NEWTABLE                         R4 2 0
      652 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      654 NEWTABLE                         R6 0 2
      656 LOADK                            R7 K43 ["LeftLowerLeg"]
      657 LOADK                            R8 K44 ["LeftFoot"]
      658 SETLIST                          R6 R7 2 [1]
      660 SETTABLE                         R6 R4 R5
      661 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      663 LOADK                            R6 K58 ["LeftAnkleRigAttachment"]
      664 SETTABLE                         R6 R4 R5
      665 SETTABLEKS                       R4 R3 K58 ["LeftAnkleRigAttachment"]
      667 NEWTABLE                         R4 2 0
      669 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      671 NEWTABLE                         R6 0 2
      673 LOADK                            R7 K41 ["RightLowerArm"]
      674 LOADK                            R8 K42 ["RightHand"]
      675 SETLIST                          R6 R7 2 [1]
      677 SETTABLE                         R6 R4 R5
      678 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      680 LOADK                            R6 K82 ["RightWristRigAttachment"]
      681 SETTABLE                         R6 R4 R5
      682 SETTABLEKS                       R4 R3 K82 ["RightWristRigAttachment"]
      684 NEWTABLE                         R4 2 0
      686 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      688 NEWTABLE                         R6 0 2
      690 LOADK                            R7 K39 ["LeftLowerArm"]
      691 LOADK                            R8 K40 ["LeftHand"]
      692 SETLIST                          R6 R7 2 [1]
      694 SETTABLE                         R6 R4 R5
      695 GETTABLEKS                       R5 R0 K2 ["AttachmentKey"]
      697 LOADK                            R6 K83 ["LeftWristRigAttachment"]
      698 SETTABLE                         R6 R4 R5
      699 SETTABLEKS                       R4 R3 K83 ["LeftWristRigAttachment"]
      701 SETTABLE                         R3 R1 R2
      702 GETTABLEKS                       R2 R0 K8 ["JointsKey"]
      704 NEWTABLE                         R3 32 0
      706 NEWTABLE                         R4 2 0
      708 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      710 NEWTABLE                         R6 0 1
      712 LOADK                            R7 K48 ["LowerTorso"]
      713 SETLIST                          R6 R7 1 [1]
      715 SETTABLE                         R6 R4 R5
      716 GETTABLEKS                       R5 R0 K10 ["JointKey"]
      718 LOADK                            R6 K84 ["Root"]
      719 SETTABLE                         R6 R4 R5
      720 SETTABLEKS                       R4 R3 K85 ["RootJoint"]
      722 NEWTABLE                         R4 2 0
      724 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      726 NEWTABLE                         R6 0 1
      728 LOADK                            R7 K48 ["LowerTorso"]
      729 SETLIST                          R6 R7 1 [1]
      731 SETTABLE                         R6 R4 R5
      732 GETTABLEKS                       R5 R0 K10 ["JointKey"]
      734 LOADK                            R6 K84 ["Root"]
      735 SETTABLE                         R6 R4 R5
      736 SETTABLEKS                       R4 R3 K84 ["Root"]
      738 NEWTABLE                         R4 2 0
      740 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      742 NEWTABLE                         R6 0 1
      744 LOADK                            R7 K40 ["LeftHand"]
      745 SETLIST                          R6 R7 1 [1]
      747 SETTABLE                         R6 R4 R5
      748 GETTABLEKS                       R5 R0 K10 ["JointKey"]
      750 LOADK                            R6 K86 ["LeftGrip"]
      751 SETTABLE                         R6 R4 R5
      752 SETTABLEKS                       R4 R3 K86 ["LeftGrip"]
      754 NEWTABLE                         R4 2 0
      756 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      758 NEWTABLE                         R6 0 1
      760 LOADK                            R7 K42 ["RightHand"]
      761 SETLIST                          R6 R7 1 [1]
      763 SETTABLE                         R6 R4 R5
      764 GETTABLEKS                       R5 R0 K10 ["JointKey"]
      766 LOADK                            R6 K87 ["RightGrip"]
      767 SETTABLE                         R6 R4 R5
      768 SETTABLEKS                       R4 R3 K87 ["RightGrip"]
      770 NEWTABLE                         R4 2 0
      772 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      774 NEWTABLE                         R6 0 1
      776 LOADK                            R7 K31 ["LeftUpperLeg"]
      777 SETLIST                          R6 R7 1 [1]
      779 SETTABLE                         R6 R4 R5
      780 GETTABLEKS                       R5 R0 K10 ["JointKey"]
      782 LOADK                            R6 K88 ["LeftHip"]
      783 SETTABLE                         R6 R4 R5
      784 SETTABLEKS                       R4 R3 K89 ["Left Hip"]
      786 NEWTABLE                         R4 2 0
      788 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      790 NEWTABLE                         R6 0 1
      792 LOADK                            R7 K31 ["LeftUpperLeg"]
      793 SETLIST                          R6 R7 1 [1]
      795 SETTABLE                         R6 R4 R5
      796 GETTABLEKS                       R5 R0 K10 ["JointKey"]
      798 LOADK                            R6 K88 ["LeftHip"]
      799 SETTABLE                         R6 R4 R5
      800 SETTABLEKS                       R4 R3 K88 ["LeftHip"]
      802 NEWTABLE                         R4 2 0
      804 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      806 NEWTABLE                         R6 0 1
      808 LOADK                            R7 K27 ["LeftUpperArm"]
      809 SETLIST                          R6 R7 1 [1]
      811 SETTABLE                         R6 R4 R5
      812 GETTABLEKS                       R5 R0 K10 ["JointKey"]
      814 LOADK                            R6 K90 ["LeftShoulder"]
      815 SETTABLE                         R6 R4 R5
      816 SETTABLEKS                       R4 R3 K91 ["Left Shoulder"]
      818 NEWTABLE                         R4 2 0
      820 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      822 NEWTABLE                         R6 0 1
      824 LOADK                            R7 K27 ["LeftUpperArm"]
      825 SETLIST                          R6 R7 1 [1]
      827 SETTABLE                         R6 R4 R5
      828 GETTABLEKS                       R5 R0 K10 ["JointKey"]
      830 LOADK                            R6 K90 ["LeftShoulder"]
      831 SETTABLE                         R6 R4 R5
      832 SETTABLEKS                       R4 R3 K90 ["LeftShoulder"]
      834 NEWTABLE                         R4 2 0
      836 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      838 NEWTABLE                         R6 0 1
      840 LOADK                            R7 K43 ["LeftLowerLeg"]
      841 SETLIST                          R6 R7 1 [1]
      843 SETTABLE                         R6 R4 R5
      844 GETTABLEKS                       R5 R0 K10 ["JointKey"]
      846 LOADK                            R6 K92 ["LeftKnee"]
      847 SETTABLE                         R6 R4 R5
      848 SETTABLEKS                       R4 R3 K92 ["LeftKnee"]
      850 NEWTABLE                         R4 2 0
      852 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      854 NEWTABLE                         R6 0 1
      856 LOADK                            R7 K44 ["LeftFoot"]
      857 SETLIST                          R6 R7 1 [1]
      859 SETTABLE                         R6 R4 R5
      860 GETTABLEKS                       R5 R0 K10 ["JointKey"]
      862 LOADK                            R6 K93 ["LeftAnkle"]
      863 SETTABLE                         R6 R4 R5
      864 SETTABLEKS                       R4 R3 K93 ["LeftAnkle"]
      866 NEWTABLE                         R4 2 0
      868 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      870 NEWTABLE                         R6 0 1
      872 LOADK                            R7 K39 ["LeftLowerArm"]
      873 SETLIST                          R6 R7 1 [1]
      875 SETTABLE                         R6 R4 R5
      876 GETTABLEKS                       R5 R0 K10 ["JointKey"]
      878 LOADK                            R6 K94 ["LeftElbow"]
      879 SETTABLE                         R6 R4 R5
      880 SETTABLEKS                       R4 R3 K94 ["LeftElbow"]
      882 NEWTABLE                         R4 2 0
      884 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      886 NEWTABLE                         R6 0 1
      888 LOADK                            R7 K40 ["LeftHand"]
      889 SETLIST                          R6 R7 1 [1]
      891 SETTABLE                         R6 R4 R5
      892 GETTABLEKS                       R5 R0 K10 ["JointKey"]
      894 LOADK                            R6 K95 ["LeftWrist"]
      895 SETTABLE                         R6 R4 R5
      896 SETTABLEKS                       R4 R3 K95 ["LeftWrist"]
      898 NEWTABLE                         R4 2 0
      900 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      902 NEWTABLE                         R6 0 1
      904 LOADK                            R7 K49 ["Head"]
      905 SETLIST                          R6 R7 1 [1]
      907 SETTABLE                         R6 R4 R5
      908 GETTABLEKS                       R5 R0 K10 ["JointKey"]
      910 LOADK                            R6 K96 ["Neck"]
      911 SETTABLE                         R6 R4 R5
      912 SETTABLEKS                       R4 R3 K96 ["Neck"]
      914 NEWTABLE                         R4 2 0
      916 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      918 NEWTABLE                         R6 0 1
      920 LOADK                            R7 K33 ["RightUpperLeg"]
      921 SETLIST                          R6 R7 1 [1]
      923 SETTABLE                         R6 R4 R5
      924 GETTABLEKS                       R5 R0 K10 ["JointKey"]
      926 LOADK                            R6 K97 ["RightHip"]
      927 SETTABLE                         R6 R4 R5
      928 SETTABLEKS                       R4 R3 K98 ["Right Hip"]
      930 NEWTABLE                         R4 2 0
      932 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      934 NEWTABLE                         R6 0 1
      936 LOADK                            R7 K33 ["RightUpperLeg"]
      937 SETLIST                          R6 R7 1 [1]
      939 SETTABLE                         R6 R4 R5
      940 GETTABLEKS                       R5 R0 K10 ["JointKey"]
      942 LOADK                            R6 K97 ["RightHip"]
      943 SETTABLE                         R6 R4 R5
      944 SETTABLEKS                       R4 R3 K97 ["RightHip"]
      946 NEWTABLE                         R4 2 0
      948 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      950 NEWTABLE                         R6 0 1
      952 LOADK                            R7 K45 ["RightLowerLeg"]
      953 SETLIST                          R6 R7 1 [1]
      955 SETTABLE                         R6 R4 R5
      956 GETTABLEKS                       R5 R0 K10 ["JointKey"]
      958 LOADK                            R6 K99 ["RightKnee"]
      959 SETTABLE                         R6 R4 R5
      960 SETTABLEKS                       R4 R3 K99 ["RightKnee"]
      962 NEWTABLE                         R4 2 0
      964 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      966 NEWTABLE                         R6 0 1
      968 LOADK                            R7 K46 ["RightFoot"]
      969 SETLIST                          R6 R7 1 [1]
      971 SETTABLE                         R6 R4 R5
      972 GETTABLEKS                       R5 R0 K10 ["JointKey"]
      974 LOADK                            R6 K100 ["RightAnkle"]
      975 SETTABLE                         R6 R4 R5
      976 SETTABLEKS                       R4 R3 K100 ["RightAnkle"]
      978 NEWTABLE                         R4 2 0
      980 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      982 NEWTABLE                         R6 0 1
      984 LOADK                            R7 K29 ["RightUpperArm"]
      985 SETLIST                          R6 R7 1 [1]
      987 SETTABLE                         R6 R4 R5
      988 GETTABLEKS                       R5 R0 K10 ["JointKey"]
      990 LOADK                            R6 K101 ["RightShoulder"]
      991 SETTABLE                         R6 R4 R5
      992 SETTABLEKS                       R4 R3 K102 ["Right Shoulder"]
      994 NEWTABLE                         R4 2 0
      996 GETTABLEKS                       R5 R0 K6 ["PartKey"]
      998 NEWTABLE                         R6 0 1
     1000 LOADK                            R7 K29 ["RightUpperArm"]
     1001 SETLIST                          R6 R7 1 [1]
     1003 SETTABLE                         R6 R4 R5
     1004 GETTABLEKS                       R5 R0 K10 ["JointKey"]
     1006 LOADK                            R6 K101 ["RightShoulder"]
     1007 SETTABLE                         R6 R4 R5
     1008 SETTABLEKS                       R4 R3 K101 ["RightShoulder"]
     1010 NEWTABLE                         R4 2 0
     1012 GETTABLEKS                       R5 R0 K6 ["PartKey"]
     1014 NEWTABLE                         R6 0 1
     1016 LOADK                            R7 K41 ["RightLowerArm"]
     1017 SETLIST                          R6 R7 1 [1]
     1019 SETTABLE                         R6 R4 R5
     1020 GETTABLEKS                       R5 R0 K10 ["JointKey"]
     1022 LOADK                            R6 K103 ["RightElbow"]
     1023 SETTABLE                         R6 R4 R5
     1024 SETTABLEKS                       R4 R3 K103 ["RightElbow"]
     1026 NEWTABLE                         R4 2 0
     1028 GETTABLEKS                       R5 R0 K6 ["PartKey"]
     1030 NEWTABLE                         R6 0 1
     1032 LOADK                            R7 K42 ["RightHand"]
     1033 SETLIST                          R6 R7 1 [1]
     1035 SETTABLE                         R6 R4 R5
     1036 GETTABLEKS                       R5 R0 K10 ["JointKey"]
     1038 LOADK                            R6 K104 ["RightWrist"]
     1039 SETTABLE                         R6 R4 R5
     1040 SETTABLEKS                       R4 R3 K104 ["RightWrist"]
     1042 NEWTABLE                         R4 2 0
     1044 GETTABLEKS                       R5 R0 K6 ["PartKey"]
     1046 NEWTABLE                         R6 0 1
     1048 LOADK                            R7 K47 ["UpperTorso"]
     1049 SETLIST                          R6 R7 1 [1]
     1051 SETTABLE                         R6 R4 R5
     1052 GETTABLEKS                       R5 R0 K10 ["JointKey"]
     1054 LOADK                            R6 K105 ["Waist"]
     1055 SETTABLE                         R6 R4 R5
     1056 SETTABLEKS                       R4 R3 K105 ["Waist"]
     1058 SETTABLE                         R3 R1 R2
     1059 SETTABLEKS                       R1 R0 K106 ["Conversions"]
     1061 DUPCLOSURE                       R1 K107 [PROTO_0]
     1062 DUPCLOSURE                       R2 K108 [PROTO_1]
     1063 CAPTURE                          VAL R0
     1064 SETTABLEKS                       R2 R0 K109 ["GetPartNames"]
     1066 DUPCLOSURE                       R2 K110 [PROTO_2]
     1067 CAPTURE                          VAL R0
     1068 SETTABLEKS                       R2 R0 K111 ["GetR15PartNames"]
     1070 DUPCLOSURE                       R2 K112 [PROTO_3]
     1071 CAPTURE                          VAL R0
     1072 SETTABLEKS                       R2 R0 K113 ["GetAttachmentNames"]
     1074 DUPCLOSURE                       R2 K114 [PROTO_4]
     1075 CAPTURE                          VAL R0
     1076 SETTABLEKS                       R2 R0 K115 ["GetJointNames"]
     1078 DUPCLOSURE                       R2 K116 [PROTO_5]
     1079 CAPTURE                          VAL R0
     1080 SETTABLEKS                       R2 R0 K117 ["IsHumanoidName"]
     1082 RETURN                           R0 1
