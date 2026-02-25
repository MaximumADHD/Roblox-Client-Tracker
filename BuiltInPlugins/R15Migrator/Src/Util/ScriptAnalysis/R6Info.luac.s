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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Conversions"]
        3 GETTABLEKS                       R1 R2 K1 ["Parts"]
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
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K0 ["Conversions"]
        5 GETTABLEKS                       R1 R4 K1 ["Parts"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Conversions"]
        3 GETTABLEKS                       R1 R2 K1 ["Attachments"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Conversions"]
        3 GETTABLEKS                       R1 R2 K1 ["Joints"]
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
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K5 ["HumanoidKey"]
       11 CALL                             R3 1 -1
       12 CALL                             R1 -1 1
       13 JUMPIFNOT                        R1 ; [+2]
       14 LOADB                            R1 1
       15 RETURN                           R1 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R1 R4 K6 ["HumanoidNames"]
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
        1 DUPTABLE                         R0 K9 [{"AttachmentsKey", "AttachmentKey", "PartsKey", "PartKey", "JointsKey", "JointKey", "HumanoidKey", "AnimationKey", "RigTypeKey"}]
        2 LOADK                            R1 K10 ["Attachments"]
        3 SETTABLEKS                       R1 R0 K0 ["AttachmentsKey"]
        5 LOADK                            R1 K11 ["Attachment"]
        6 SETTABLEKS                       R1 R0 K1 ["AttachmentKey"]
        8 LOADK                            R1 K12 ["Parts"]
        9 SETTABLEKS                       R1 R0 K2 ["PartsKey"]
       11 LOADK                            R1 K13 ["Part"]
       12 SETTABLEKS                       R1 R0 K3 ["PartKey"]
       14 LOADK                            R1 K14 ["Joints"]
       15 SETTABLEKS                       R1 R0 K4 ["JointsKey"]
       17 LOADK                            R1 K15 ["Joint"]
       18 SETTABLEKS                       R1 R0 K5 ["JointKey"]
       20 LOADK                            R1 K16 ["Humanoid"]
       21 SETTABLEKS                       R1 R0 K6 ["HumanoidKey"]
       23 LOADK                            R1 K17 ["Animation"]
       24 SETTABLEKS                       R1 R0 K7 ["AnimationKey"]
       26 LOADK                            R1 K8 ["RigTypeKey"]
       27 SETTABLEKS                       R1 R0 K8 ["RigTypeKey"]
       29 NEWTABLE                         R1 0 3
       31 GETTABLEKS                       R2 R0 K6 ["HumanoidKey"]
       33 LOADK                            R3 K18 ["humanoid"]
       34 LOADK                            R4 K19 ["hum"]
       35 SETLIST                          R1 R2 3 [1]
       37 SETTABLEKS                       R1 R0 K20 ["HumanoidNames"]
       39 LOADK                            R1 K21 ["Enum.HumanoidRigType.R6"]
       40 SETTABLEKS                       R1 R0 K22 ["R6RigType"]
       42 LOADK                            R1 K23 ["Enum.HumanoidRigType.R15"]
       43 SETTABLEKS                       R1 R0 K24 ["R15RigType"]
       45 NEWTABLE                         R1 4 0
       47 GETTABLEKS                       R2 R0 K6 ["HumanoidKey"]
       49 NEWTABLE                         R3 16 0
       51 LOADK                            R4 K25 ["HumanoidRootPart"]
       52 SETTABLEKS                       R4 R3 K26 ["Torso"]
       54 LOADK                            R4 K27 ["LeftUpperArm"]
       55 SETTABLEKS                       R4 R3 K28 ["LeftArm"]
       57 LOADK                            R4 K29 ["RightUpperArm"]
       58 SETTABLEKS                       R4 R3 K30 ["RightArm"]
       60 LOADK                            R4 K31 ["LeftUpperLeg"]
       61 SETTABLEKS                       R4 R3 K32 ["LeftLeg"]
       63 LOADK                            R4 K33 ["RightUpperLeg"]
       64 SETTABLEKS                       R4 R3 K34 ["RightLeg"]
       66 LOADK                            R4 K27 ["LeftUpperArm"]
       67 SETTABLEKS                       R4 R3 K35 ["Left Arm"]
       69 LOADK                            R4 K29 ["RightUpperArm"]
       70 SETTABLEKS                       R4 R3 K36 ["Right Arm"]
       72 LOADK                            R4 K31 ["LeftUpperLeg"]
       73 SETTABLEKS                       R4 R3 K37 ["Left Leg"]
       75 LOADK                            R4 K33 ["RightUpperLeg"]
       76 SETTABLEKS                       R4 R3 K38 ["Right Leg"]
       78 SETTABLE                         R3 R1 R2
       79 GETTABLEKS                       R2 R0 K2 ["PartsKey"]
       81 NEWTABLE                         R3 16 0
       83 NEWTABLE                         R4 0 3
       85 LOADK                            R5 K27 ["LeftUpperArm"]
       86 LOADK                            R6 K39 ["LeftLowerArm"]
       87 LOADK                            R7 K40 ["LeftHand"]
       88 SETLIST                          R4 R5 3 [1]
       90 SETTABLEKS                       R4 R3 K28 ["LeftArm"]
       92 NEWTABLE                         R4 0 3
       94 LOADK                            R5 K29 ["RightUpperArm"]
       95 LOADK                            R6 K41 ["RightLowerArm"]
       96 LOADK                            R7 K42 ["RightHand"]
       97 SETLIST                          R4 R5 3 [1]
       99 SETTABLEKS                       R4 R3 K30 ["RightArm"]
      101 NEWTABLE                         R4 0 3
      103 LOADK                            R5 K31 ["LeftUpperLeg"]
      104 LOADK                            R6 K43 ["LeftLowerLeg"]
      105 LOADK                            R7 K44 ["LeftFoot"]
      106 SETLIST                          R4 R5 3 [1]
      108 SETTABLEKS                       R4 R3 K32 ["LeftLeg"]
      110 NEWTABLE                         R4 0 3
      112 LOADK                            R5 K33 ["RightUpperLeg"]
      113 LOADK                            R6 K45 ["RightLowerLeg"]
      114 LOADK                            R7 K46 ["RightFoot"]
      115 SETLIST                          R4 R5 3 [1]
      117 SETTABLEKS                       R4 R3 K34 ["RightLeg"]
      119 NEWTABLE                         R4 0 3
      121 LOADK                            R5 K27 ["LeftUpperArm"]
      122 LOADK                            R6 K39 ["LeftLowerArm"]
      123 LOADK                            R7 K40 ["LeftHand"]
      124 SETLIST                          R4 R5 3 [1]
      126 SETTABLEKS                       R4 R3 K35 ["Left Arm"]
      128 NEWTABLE                         R4 0 3
      130 LOADK                            R5 K29 ["RightUpperArm"]
      131 LOADK                            R6 K41 ["RightLowerArm"]
      132 LOADK                            R7 K42 ["RightHand"]
      133 SETLIST                          R4 R5 3 [1]
      135 SETTABLEKS                       R4 R3 K36 ["Right Arm"]
      137 NEWTABLE                         R4 0 3
      139 LOADK                            R5 K31 ["LeftUpperLeg"]
      140 LOADK                            R6 K43 ["LeftLowerLeg"]
      141 LOADK                            R7 K44 ["LeftFoot"]
      142 SETLIST                          R4 R5 3 [1]
      144 SETTABLEKS                       R4 R3 K37 ["Left Leg"]
      146 NEWTABLE                         R4 0 3
      148 LOADK                            R5 K33 ["RightUpperLeg"]
      149 LOADK                            R6 K45 ["RightLowerLeg"]
      150 LOADK                            R7 K46 ["RightFoot"]
      151 SETLIST                          R4 R5 3 [1]
      153 SETTABLEKS                       R4 R3 K38 ["Right Leg"]
      155 NEWTABLE                         R4 0 3
      157 LOADK                            R5 K47 ["UpperTorso"]
      158 LOADK                            R6 K48 ["LowerTorso"]
      159 LOADK                            R7 K25 ["HumanoidRootPart"]
      160 SETLIST                          R4 R5 3 [1]
      162 SETTABLEKS                       R4 R3 K26 ["Torso"]
      164 SETTABLE                         R3 R1 R2
      165 GETTABLEKS                       R2 R0 K0 ["AttachmentsKey"]
      167 NEWTABLE                         R3 64 0
      169 NEWTABLE                         R4 2 0
      171 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      173 NEWTABLE                         R6 0 1
      175 LOADK                            R7 K49 ["Head"]
      176 SETLIST                          R6 R7 1 [1]
      178 SETTABLE                         R6 R4 R5
      179 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      181 LOADK                            R6 K50 ["FaceCenterAttachment"]
      182 SETTABLE                         R6 R4 R5
      183 SETTABLEKS                       R4 R3 K50 ["FaceCenterAttachment"]
      185 NEWTABLE                         R4 2 0
      187 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      189 NEWTABLE                         R6 0 1
      191 LOADK                            R7 K49 ["Head"]
      192 SETLIST                          R6 R7 1 [1]
      194 SETTABLE                         R6 R4 R5
      195 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      197 LOADK                            R6 K51 ["FaceFrontAttachment"]
      198 SETTABLE                         R6 R4 R5
      199 SETTABLEKS                       R4 R3 K51 ["FaceFrontAttachment"]
      201 NEWTABLE                         R4 2 0
      203 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      205 NEWTABLE                         R6 0 1
      207 LOADK                            R7 K49 ["Head"]
      208 SETLIST                          R6 R7 1 [1]
      210 SETTABLE                         R6 R4 R5
      211 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      213 LOADK                            R6 K52 ["HairAttachment"]
      214 SETTABLE                         R6 R4 R5
      215 SETTABLEKS                       R4 R3 K52 ["HairAttachment"]
      217 NEWTABLE                         R4 2 0
      219 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      221 NEWTABLE                         R6 0 1
      223 LOADK                            R7 K49 ["Head"]
      224 SETLIST                          R6 R7 1 [1]
      226 SETTABLE                         R6 R4 R5
      227 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      229 LOADK                            R6 K53 ["HatAttachment"]
      230 SETTABLE                         R6 R4 R5
      231 SETTABLEKS                       R4 R3 K53 ["HatAttachment"]
      233 NEWTABLE                         R4 2 0
      235 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      237 NEWTABLE                         R6 0 1
      239 LOADK                            R7 K25 ["HumanoidRootPart"]
      240 SETLIST                          R6 R7 1 [1]
      242 SETTABLE                         R6 R4 R5
      243 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      245 LOADK                            R6 K54 ["RootRigAttachment"]
      246 SETTABLE                         R6 R4 R5
      247 SETTABLEKS                       R4 R3 K55 ["RootAttachment"]
      249 NEWTABLE                         R4 2 0
      251 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      253 NEWTABLE                         R6 0 1
      255 LOADK                            R7 K40 ["LeftHand"]
      256 SETLIST                          R6 R7 1 [1]
      258 SETTABLE                         R6 R4 R5
      259 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      261 LOADK                            R6 K56 ["LeftGripAttachment"]
      262 SETTABLE                         R6 R4 R5
      263 SETTABLEKS                       R4 R3 K56 ["LeftGripAttachment"]
      265 NEWTABLE                         R4 2 0
      267 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      269 NEWTABLE                         R6 0 1
      271 LOADK                            R7 K27 ["LeftUpperArm"]
      272 SETLIST                          R6 R7 1 [1]
      274 SETTABLE                         R6 R4 R5
      275 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      277 LOADK                            R6 K57 ["LeftShoulderAttachment"]
      278 SETTABLE                         R6 R4 R5
      279 SETTABLEKS                       R4 R3 K57 ["LeftShoulderAttachment"]
      281 NEWTABLE                         R4 2 0
      283 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      285 NEWTABLE                         R6 0 1
      287 LOADK                            R7 K44 ["LeftFoot"]
      288 SETLIST                          R6 R7 1 [1]
      290 SETTABLE                         R6 R4 R5
      291 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      293 LOADK                            R6 K58 ["LeftAnkleRigAttachment"]
      294 SETTABLE                         R6 R4 R5
      295 SETTABLEKS                       R4 R3 K59 ["LeftFootAttachment"]
      297 NEWTABLE                         R4 2 0
      299 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      301 NEWTABLE                         R6 0 1
      303 LOADK                            R7 K42 ["RightHand"]
      304 SETLIST                          R6 R7 1 [1]
      306 SETTABLE                         R6 R4 R5
      307 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      309 LOADK                            R6 K60 ["RightGripAttachment"]
      310 SETTABLE                         R6 R4 R5
      311 SETTABLEKS                       R4 R3 K60 ["RightGripAttachment"]
      313 NEWTABLE                         R4 2 0
      315 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      317 NEWTABLE                         R6 0 1
      319 LOADK                            R7 K29 ["RightUpperArm"]
      320 SETLIST                          R6 R7 1 [1]
      322 SETTABLE                         R6 R4 R5
      323 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      325 LOADK                            R6 K61 ["RightShoulderAttachment"]
      326 SETTABLE                         R6 R4 R5
      327 SETTABLEKS                       R4 R3 K61 ["RightShoulderAttachment"]
      329 NEWTABLE                         R4 2 0
      331 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      333 NEWTABLE                         R6 0 1
      335 LOADK                            R7 K46 ["RightFoot"]
      336 SETLIST                          R6 R7 1 [1]
      338 SETTABLE                         R6 R4 R5
      339 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      341 LOADK                            R6 K62 ["RightAnkleRigAttachment"]
      342 SETTABLE                         R6 R4 R5
      343 SETTABLEKS                       R4 R3 K63 ["RightFootAttachment"]
      345 NEWTABLE                         R4 2 0
      347 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      349 NEWTABLE                         R6 0 1
      351 LOADK                            R7 K47 ["UpperTorso"]
      352 SETLIST                          R6 R7 1 [1]
      354 SETTABLE                         R6 R4 R5
      355 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      357 LOADK                            R6 K64 ["BodyBackAttachment"]
      358 SETTABLE                         R6 R4 R5
      359 SETTABLEKS                       R4 R3 K64 ["BodyBackAttachment"]
      361 NEWTABLE                         R4 2 0
      363 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      365 NEWTABLE                         R6 0 1
      367 LOADK                            R7 K47 ["UpperTorso"]
      368 SETLIST                          R6 R7 1 [1]
      370 SETTABLE                         R6 R4 R5
      371 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      373 LOADK                            R6 K65 ["BodyFrontAttachment"]
      374 SETTABLE                         R6 R4 R5
      375 SETTABLEKS                       R4 R3 K65 ["BodyFrontAttachment"]
      377 NEWTABLE                         R4 2 0
      379 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      381 NEWTABLE                         R6 0 1
      383 LOADK                            R7 K47 ["UpperTorso"]
      384 SETLIST                          R6 R7 1 [1]
      386 SETTABLE                         R6 R4 R5
      387 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      389 LOADK                            R6 K66 ["LeftCollarAttachment"]
      390 SETTABLE                         R6 R4 R5
      391 SETTABLEKS                       R4 R3 K66 ["LeftCollarAttachment"]
      393 NEWTABLE                         R4 2 0
      395 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      397 NEWTABLE                         R6 0 1
      399 LOADK                            R7 K47 ["UpperTorso"]
      400 SETLIST                          R6 R7 1 [1]
      402 SETTABLE                         R6 R4 R5
      403 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      405 LOADK                            R6 K67 ["NeckAttachment"]
      406 SETTABLE                         R6 R4 R5
      407 SETTABLEKS                       R4 R3 K67 ["NeckAttachment"]
      409 NEWTABLE                         R4 2 0
      411 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      413 NEWTABLE                         R6 0 1
      415 LOADK                            R7 K47 ["UpperTorso"]
      416 SETLIST                          R6 R7 1 [1]
      418 SETTABLE                         R6 R4 R5
      419 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      421 LOADK                            R6 K68 ["RightCollarAttachment"]
      422 SETTABLE                         R6 R4 R5
      423 SETTABLEKS                       R4 R3 K68 ["RightCollarAttachment"]
      425 NEWTABLE                         R4 2 0
      427 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      429 NEWTABLE                         R6 0 1
      431 LOADK                            R7 K48 ["LowerTorso"]
      432 SETLIST                          R6 R7 1 [1]
      434 SETTABLE                         R6 R4 R5
      435 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      437 LOADK                            R6 K69 ["WaistBackAttachment"]
      438 SETTABLE                         R6 R4 R5
      439 SETTABLEKS                       R4 R3 K69 ["WaistBackAttachment"]
      441 NEWTABLE                         R4 2 0
      443 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      445 NEWTABLE                         R6 0 1
      447 LOADK                            R7 K48 ["LowerTorso"]
      448 SETLIST                          R6 R7 1 [1]
      450 SETTABLE                         R6 R4 R5
      451 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      453 LOADK                            R6 K70 ["WaistCenterAttachment"]
      454 SETTABLE                         R6 R4 R5
      455 SETTABLEKS                       R4 R3 K70 ["WaistCenterAttachment"]
      457 NEWTABLE                         R4 2 0
      459 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      461 NEWTABLE                         R6 0 1
      463 LOADK                            R7 K48 ["LowerTorso"]
      464 SETLIST                          R6 R7 1 [1]
      466 SETTABLE                         R6 R4 R5
      467 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      469 LOADK                            R6 K71 ["WaistFrontAttachment"]
      470 SETTABLE                         R6 R4 R5
      471 SETTABLEKS                       R4 R3 K71 ["WaistFrontAttachment"]
      473 NEWTABLE                         R4 2 0
      475 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      477 NEWTABLE                         R6 0 2
      479 LOADK                            R7 K25 ["HumanoidRootPart"]
      480 LOADK                            R8 K48 ["LowerTorso"]
      481 SETLIST                          R6 R7 2 [1]
      483 SETTABLE                         R6 R4 R5
      484 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      486 LOADK                            R6 K54 ["RootRigAttachment"]
      487 SETTABLE                         R6 R4 R5
      488 SETTABLEKS                       R4 R3 K54 ["RootRigAttachment"]
      490 NEWTABLE                         R4 2 0
      492 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      494 NEWTABLE                         R6 0 2
      496 LOADK                            R7 K48 ["LowerTorso"]
      497 LOADK                            R8 K33 ["RightUpperLeg"]
      498 SETLIST                          R6 R7 2 [1]
      500 SETTABLE                         R6 R4 R5
      501 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      503 LOADK                            R6 K72 ["RightHipRigAttachment"]
      504 SETTABLE                         R6 R4 R5
      505 SETTABLEKS                       R4 R3 K72 ["RightHipRigAttachment"]
      507 NEWTABLE                         R4 2 0
      509 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      511 NEWTABLE                         R6 0 2
      513 LOADK                            R7 K48 ["LowerTorso"]
      514 LOADK                            R8 K31 ["LeftUpperLeg"]
      515 SETLIST                          R6 R7 2 [1]
      517 SETTABLE                         R6 R4 R5
      518 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      520 LOADK                            R6 K73 ["LeftHipRigAttachment"]
      521 SETTABLE                         R6 R4 R5
      522 SETTABLEKS                       R4 R3 K73 ["LeftHipRigAttachment"]
      524 NEWTABLE                         R4 2 0
      526 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      528 NEWTABLE                         R6 0 2
      530 LOADK                            R7 K31 ["LeftUpperLeg"]
      531 LOADK                            R8 K43 ["LeftLowerLeg"]
      532 SETLIST                          R6 R7 2 [1]
      534 SETTABLE                         R6 R4 R5
      535 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      537 LOADK                            R6 K74 ["LeftKneeRigAttachment"]
      538 SETTABLE                         R6 R4 R5
      539 SETTABLEKS                       R4 R3 K74 ["LeftKneeRigAttachment"]
      541 NEWTABLE                         R4 2 0
      543 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      545 NEWTABLE                         R6 0 2
      547 LOADK                            R7 K33 ["RightUpperLeg"]
      548 LOADK                            R8 K45 ["RightLowerLeg"]
      549 SETLIST                          R6 R7 2 [1]
      551 SETTABLE                         R6 R4 R5
      552 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      554 LOADK                            R6 K75 ["RightKneeRigAttachment"]
      555 SETTABLE                         R6 R4 R5
      556 SETTABLEKS                       R4 R3 K75 ["RightKneeRigAttachment"]
      558 NEWTABLE                         R4 2 0
      560 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      562 NEWTABLE                         R6 0 2
      564 LOADK                            R7 K29 ["RightUpperArm"]
      565 LOADK                            R8 K41 ["RightLowerArm"]
      566 SETLIST                          R6 R7 2 [1]
      568 SETTABLE                         R6 R4 R5
      569 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      571 LOADK                            R6 K76 ["RightElbowRigAttachment"]
      572 SETTABLE                         R6 R4 R5
      573 SETTABLEKS                       R4 R3 K76 ["RightElbowRigAttachment"]
      575 NEWTABLE                         R4 2 0
      577 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      579 NEWTABLE                         R6 0 2
      581 LOADK                            R7 K27 ["LeftUpperArm"]
      582 LOADK                            R8 K39 ["LeftLowerArm"]
      583 SETLIST                          R6 R7 2 [1]
      585 SETTABLE                         R6 R4 R5
      586 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      588 LOADK                            R6 K77 ["LeftElbowRigAttachment"]
      589 SETTABLE                         R6 R4 R5
      590 SETTABLEKS                       R4 R3 K77 ["LeftElbowRigAttachment"]
      592 NEWTABLE                         R4 2 0
      594 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      596 NEWTABLE                         R6 0 2
      598 LOADK                            R7 K47 ["UpperTorso"]
      599 LOADK                            R8 K48 ["LowerTorso"]
      600 SETLIST                          R6 R7 2 [1]
      602 SETTABLE                         R6 R4 R5
      603 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      605 LOADK                            R6 K78 ["WaistRigAttachment"]
      606 SETTABLE                         R6 R4 R5
      607 SETTABLEKS                       R4 R3 K78 ["WaistRigAttachment"]
      609 NEWTABLE                         R4 2 0
      611 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      613 NEWTABLE                         R6 0 2
      615 LOADK                            R7 K47 ["UpperTorso"]
      616 LOADK                            R8 K27 ["LeftUpperArm"]
      617 SETLIST                          R6 R7 2 [1]
      619 SETTABLE                         R6 R4 R5
      620 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      622 LOADK                            R6 K79 ["LeftShoulderRigAttachment"]
      623 SETTABLE                         R6 R4 R5
      624 SETTABLEKS                       R4 R3 K79 ["LeftShoulderRigAttachment"]
      626 NEWTABLE                         R4 2 0
      628 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      630 NEWTABLE                         R6 0 2
      632 LOADK                            R7 K47 ["UpperTorso"]
      633 LOADK                            R8 K29 ["RightUpperArm"]
      634 SETLIST                          R6 R7 2 [1]
      636 SETTABLE                         R6 R4 R5
      637 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      639 LOADK                            R6 K80 ["RightShoulderRigAttachment"]
      640 SETTABLE                         R6 R4 R5
      641 SETTABLEKS                       R4 R3 K80 ["RightShoulderRigAttachment"]
      643 NEWTABLE                         R4 2 0
      645 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      647 NEWTABLE                         R6 0 2
      649 LOADK                            R7 K47 ["UpperTorso"]
      650 LOADK                            R8 K49 ["Head"]
      651 SETLIST                          R6 R7 2 [1]
      653 SETTABLE                         R6 R4 R5
      654 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      656 LOADK                            R6 K81 ["NeckRigAttachment"]
      657 SETTABLE                         R6 R4 R5
      658 SETTABLEKS                       R4 R3 K81 ["NeckRigAttachment"]
      660 NEWTABLE                         R4 2 0
      662 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      664 NEWTABLE                         R6 0 2
      666 LOADK                            R7 K45 ["RightLowerLeg"]
      667 LOADK                            R8 K46 ["RightFoot"]
      668 SETLIST                          R6 R7 2 [1]
      670 SETTABLE                         R6 R4 R5
      671 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      673 LOADK                            R6 K62 ["RightAnkleRigAttachment"]
      674 SETTABLE                         R6 R4 R5
      675 SETTABLEKS                       R4 R3 K62 ["RightAnkleRigAttachment"]
      677 NEWTABLE                         R4 2 0
      679 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      681 NEWTABLE                         R6 0 2
      683 LOADK                            R7 K43 ["LeftLowerLeg"]
      684 LOADK                            R8 K44 ["LeftFoot"]
      685 SETLIST                          R6 R7 2 [1]
      687 SETTABLE                         R6 R4 R5
      688 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      690 LOADK                            R6 K58 ["LeftAnkleRigAttachment"]
      691 SETTABLE                         R6 R4 R5
      692 SETTABLEKS                       R4 R3 K58 ["LeftAnkleRigAttachment"]
      694 NEWTABLE                         R4 2 0
      696 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      698 NEWTABLE                         R6 0 2
      700 LOADK                            R7 K41 ["RightLowerArm"]
      701 LOADK                            R8 K42 ["RightHand"]
      702 SETLIST                          R6 R7 2 [1]
      704 SETTABLE                         R6 R4 R5
      705 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      707 LOADK                            R6 K82 ["RightWristRigAttachment"]
      708 SETTABLE                         R6 R4 R5
      709 SETTABLEKS                       R4 R3 K82 ["RightWristRigAttachment"]
      711 NEWTABLE                         R4 2 0
      713 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      715 NEWTABLE                         R6 0 2
      717 LOADK                            R7 K39 ["LeftLowerArm"]
      718 LOADK                            R8 K40 ["LeftHand"]
      719 SETLIST                          R6 R7 2 [1]
      721 SETTABLE                         R6 R4 R5
      722 GETTABLEKS                       R5 R0 K1 ["AttachmentKey"]
      724 LOADK                            R6 K83 ["LeftWristRigAttachment"]
      725 SETTABLE                         R6 R4 R5
      726 SETTABLEKS                       R4 R3 K83 ["LeftWristRigAttachment"]
      728 SETTABLE                         R3 R1 R2
      729 GETTABLEKS                       R2 R0 K4 ["JointsKey"]
      731 NEWTABLE                         R3 32 0
      733 NEWTABLE                         R4 2 0
      735 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      737 NEWTABLE                         R6 0 1
      739 LOADK                            R7 K48 ["LowerTorso"]
      740 SETLIST                          R6 R7 1 [1]
      742 SETTABLE                         R6 R4 R5
      743 GETTABLEKS                       R5 R0 K5 ["JointKey"]
      745 LOADK                            R6 K84 ["Root"]
      746 SETTABLE                         R6 R4 R5
      747 SETTABLEKS                       R4 R3 K85 ["RootJoint"]
      749 NEWTABLE                         R4 2 0
      751 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      753 NEWTABLE                         R6 0 1
      755 LOADK                            R7 K48 ["LowerTorso"]
      756 SETLIST                          R6 R7 1 [1]
      758 SETTABLE                         R6 R4 R5
      759 GETTABLEKS                       R5 R0 K5 ["JointKey"]
      761 LOADK                            R6 K84 ["Root"]
      762 SETTABLE                         R6 R4 R5
      763 SETTABLEKS                       R4 R3 K84 ["Root"]
      765 NEWTABLE                         R4 2 0
      767 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      769 NEWTABLE                         R6 0 1
      771 LOADK                            R7 K40 ["LeftHand"]
      772 SETLIST                          R6 R7 1 [1]
      774 SETTABLE                         R6 R4 R5
      775 GETTABLEKS                       R5 R0 K5 ["JointKey"]
      777 LOADK                            R6 K86 ["LeftGrip"]
      778 SETTABLE                         R6 R4 R5
      779 SETTABLEKS                       R4 R3 K86 ["LeftGrip"]
      781 NEWTABLE                         R4 2 0
      783 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      785 NEWTABLE                         R6 0 1
      787 LOADK                            R7 K42 ["RightHand"]
      788 SETLIST                          R6 R7 1 [1]
      790 SETTABLE                         R6 R4 R5
      791 GETTABLEKS                       R5 R0 K5 ["JointKey"]
      793 LOADK                            R6 K87 ["RightGrip"]
      794 SETTABLE                         R6 R4 R5
      795 SETTABLEKS                       R4 R3 K87 ["RightGrip"]
      797 NEWTABLE                         R4 2 0
      799 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      801 NEWTABLE                         R6 0 1
      803 LOADK                            R7 K31 ["LeftUpperLeg"]
      804 SETLIST                          R6 R7 1 [1]
      806 SETTABLE                         R6 R4 R5
      807 GETTABLEKS                       R5 R0 K5 ["JointKey"]
      809 LOADK                            R6 K88 ["LeftHip"]
      810 SETTABLE                         R6 R4 R5
      811 SETTABLEKS                       R4 R3 K89 ["Left Hip"]
      813 NEWTABLE                         R4 2 0
      815 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      817 NEWTABLE                         R6 0 1
      819 LOADK                            R7 K31 ["LeftUpperLeg"]
      820 SETLIST                          R6 R7 1 [1]
      822 SETTABLE                         R6 R4 R5
      823 GETTABLEKS                       R5 R0 K5 ["JointKey"]
      825 LOADK                            R6 K88 ["LeftHip"]
      826 SETTABLE                         R6 R4 R5
      827 SETTABLEKS                       R4 R3 K88 ["LeftHip"]
      829 NEWTABLE                         R4 2 0
      831 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      833 NEWTABLE                         R6 0 1
      835 LOADK                            R7 K27 ["LeftUpperArm"]
      836 SETLIST                          R6 R7 1 [1]
      838 SETTABLE                         R6 R4 R5
      839 GETTABLEKS                       R5 R0 K5 ["JointKey"]
      841 LOADK                            R6 K90 ["LeftShoulder"]
      842 SETTABLE                         R6 R4 R5
      843 SETTABLEKS                       R4 R3 K91 ["Left Shoulder"]
      845 NEWTABLE                         R4 2 0
      847 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      849 NEWTABLE                         R6 0 1
      851 LOADK                            R7 K27 ["LeftUpperArm"]
      852 SETLIST                          R6 R7 1 [1]
      854 SETTABLE                         R6 R4 R5
      855 GETTABLEKS                       R5 R0 K5 ["JointKey"]
      857 LOADK                            R6 K90 ["LeftShoulder"]
      858 SETTABLE                         R6 R4 R5
      859 SETTABLEKS                       R4 R3 K90 ["LeftShoulder"]
      861 NEWTABLE                         R4 2 0
      863 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      865 NEWTABLE                         R6 0 1
      867 LOADK                            R7 K43 ["LeftLowerLeg"]
      868 SETLIST                          R6 R7 1 [1]
      870 SETTABLE                         R6 R4 R5
      871 GETTABLEKS                       R5 R0 K5 ["JointKey"]
      873 LOADK                            R6 K92 ["LeftKnee"]
      874 SETTABLE                         R6 R4 R5
      875 SETTABLEKS                       R4 R3 K92 ["LeftKnee"]
      877 NEWTABLE                         R4 2 0
      879 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      881 NEWTABLE                         R6 0 1
      883 LOADK                            R7 K44 ["LeftFoot"]
      884 SETLIST                          R6 R7 1 [1]
      886 SETTABLE                         R6 R4 R5
      887 GETTABLEKS                       R5 R0 K5 ["JointKey"]
      889 LOADK                            R6 K93 ["LeftAnkle"]
      890 SETTABLE                         R6 R4 R5
      891 SETTABLEKS                       R4 R3 K93 ["LeftAnkle"]
      893 NEWTABLE                         R4 2 0
      895 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      897 NEWTABLE                         R6 0 1
      899 LOADK                            R7 K39 ["LeftLowerArm"]
      900 SETLIST                          R6 R7 1 [1]
      902 SETTABLE                         R6 R4 R5
      903 GETTABLEKS                       R5 R0 K5 ["JointKey"]
      905 LOADK                            R6 K94 ["LeftElbow"]
      906 SETTABLE                         R6 R4 R5
      907 SETTABLEKS                       R4 R3 K94 ["LeftElbow"]
      909 NEWTABLE                         R4 2 0
      911 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      913 NEWTABLE                         R6 0 1
      915 LOADK                            R7 K40 ["LeftHand"]
      916 SETLIST                          R6 R7 1 [1]
      918 SETTABLE                         R6 R4 R5
      919 GETTABLEKS                       R5 R0 K5 ["JointKey"]
      921 LOADK                            R6 K95 ["LeftWrist"]
      922 SETTABLE                         R6 R4 R5
      923 SETTABLEKS                       R4 R3 K95 ["LeftWrist"]
      925 NEWTABLE                         R4 2 0
      927 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      929 NEWTABLE                         R6 0 1
      931 LOADK                            R7 K49 ["Head"]
      932 SETLIST                          R6 R7 1 [1]
      934 SETTABLE                         R6 R4 R5
      935 GETTABLEKS                       R5 R0 K5 ["JointKey"]
      937 LOADK                            R6 K96 ["Neck"]
      938 SETTABLE                         R6 R4 R5
      939 SETTABLEKS                       R4 R3 K96 ["Neck"]
      941 NEWTABLE                         R4 2 0
      943 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      945 NEWTABLE                         R6 0 1
      947 LOADK                            R7 K33 ["RightUpperLeg"]
      948 SETLIST                          R6 R7 1 [1]
      950 SETTABLE                         R6 R4 R5
      951 GETTABLEKS                       R5 R0 K5 ["JointKey"]
      953 LOADK                            R6 K97 ["RightHip"]
      954 SETTABLE                         R6 R4 R5
      955 SETTABLEKS                       R4 R3 K98 ["Right Hip"]
      957 NEWTABLE                         R4 2 0
      959 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      961 NEWTABLE                         R6 0 1
      963 LOADK                            R7 K33 ["RightUpperLeg"]
      964 SETLIST                          R6 R7 1 [1]
      966 SETTABLE                         R6 R4 R5
      967 GETTABLEKS                       R5 R0 K5 ["JointKey"]
      969 LOADK                            R6 K97 ["RightHip"]
      970 SETTABLE                         R6 R4 R5
      971 SETTABLEKS                       R4 R3 K97 ["RightHip"]
      973 NEWTABLE                         R4 2 0
      975 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      977 NEWTABLE                         R6 0 1
      979 LOADK                            R7 K45 ["RightLowerLeg"]
      980 SETLIST                          R6 R7 1 [1]
      982 SETTABLE                         R6 R4 R5
      983 GETTABLEKS                       R5 R0 K5 ["JointKey"]
      985 LOADK                            R6 K99 ["RightKnee"]
      986 SETTABLE                         R6 R4 R5
      987 SETTABLEKS                       R4 R3 K99 ["RightKnee"]
      989 NEWTABLE                         R4 2 0
      991 GETTABLEKS                       R5 R0 K3 ["PartKey"]
      993 NEWTABLE                         R6 0 1
      995 LOADK                            R7 K46 ["RightFoot"]
      996 SETLIST                          R6 R7 1 [1]
      998 SETTABLE                         R6 R4 R5
      999 GETTABLEKS                       R5 R0 K5 ["JointKey"]
     1001 LOADK                            R6 K100 ["RightAnkle"]
     1002 SETTABLE                         R6 R4 R5
     1003 SETTABLEKS                       R4 R3 K100 ["RightAnkle"]
     1005 NEWTABLE                         R4 2 0
     1007 GETTABLEKS                       R5 R0 K3 ["PartKey"]
     1009 NEWTABLE                         R6 0 1
     1011 LOADK                            R7 K29 ["RightUpperArm"]
     1012 SETLIST                          R6 R7 1 [1]
     1014 SETTABLE                         R6 R4 R5
     1015 GETTABLEKS                       R5 R0 K5 ["JointKey"]
     1017 LOADK                            R6 K101 ["RightShoulder"]
     1018 SETTABLE                         R6 R4 R5
     1019 SETTABLEKS                       R4 R3 K102 ["Right Shoulder"]
     1021 NEWTABLE                         R4 2 0
     1023 GETTABLEKS                       R5 R0 K3 ["PartKey"]
     1025 NEWTABLE                         R6 0 1
     1027 LOADK                            R7 K29 ["RightUpperArm"]
     1028 SETLIST                          R6 R7 1 [1]
     1030 SETTABLE                         R6 R4 R5
     1031 GETTABLEKS                       R5 R0 K5 ["JointKey"]
     1033 LOADK                            R6 K101 ["RightShoulder"]
     1034 SETTABLE                         R6 R4 R5
     1035 SETTABLEKS                       R4 R3 K101 ["RightShoulder"]
     1037 NEWTABLE                         R4 2 0
     1039 GETTABLEKS                       R5 R0 K3 ["PartKey"]
     1041 NEWTABLE                         R6 0 1
     1043 LOADK                            R7 K41 ["RightLowerArm"]
     1044 SETLIST                          R6 R7 1 [1]
     1046 SETTABLE                         R6 R4 R5
     1047 GETTABLEKS                       R5 R0 K5 ["JointKey"]
     1049 LOADK                            R6 K103 ["RightElbow"]
     1050 SETTABLE                         R6 R4 R5
     1051 SETTABLEKS                       R4 R3 K103 ["RightElbow"]
     1053 NEWTABLE                         R4 2 0
     1055 GETTABLEKS                       R5 R0 K3 ["PartKey"]
     1057 NEWTABLE                         R6 0 1
     1059 LOADK                            R7 K42 ["RightHand"]
     1060 SETLIST                          R6 R7 1 [1]
     1062 SETTABLE                         R6 R4 R5
     1063 GETTABLEKS                       R5 R0 K5 ["JointKey"]
     1065 LOADK                            R6 K104 ["RightWrist"]
     1066 SETTABLE                         R6 R4 R5
     1067 SETTABLEKS                       R4 R3 K104 ["RightWrist"]
     1069 NEWTABLE                         R4 2 0
     1071 GETTABLEKS                       R5 R0 K3 ["PartKey"]
     1073 NEWTABLE                         R6 0 1
     1075 LOADK                            R7 K47 ["UpperTorso"]
     1076 SETLIST                          R6 R7 1 [1]
     1078 SETTABLE                         R6 R4 R5
     1079 GETTABLEKS                       R5 R0 K5 ["JointKey"]
     1081 LOADK                            R6 K105 ["Waist"]
     1082 SETTABLE                         R6 R4 R5
     1083 SETTABLEKS                       R4 R3 K105 ["Waist"]
     1085 SETTABLE                         R3 R1 R2
     1086 SETTABLEKS                       R1 R0 K106 ["Conversions"]
     1088 DUPCLOSURE                       R1 K107 [PROTO_0]
     1089 DUPCLOSURE                       R2 K108 [PROTO_1]
     1090 CAPTURE                          VAL R0
     1091 SETTABLEKS                       R2 R0 K109 ["GetPartNames"]
     1093 DUPCLOSURE                       R2 K110 [PROTO_2]
     1094 CAPTURE                          VAL R0
     1095 SETTABLEKS                       R2 R0 K111 ["GetR15PartNames"]
     1097 DUPCLOSURE                       R2 K112 [PROTO_3]
     1098 CAPTURE                          VAL R0
     1099 SETTABLEKS                       R2 R0 K113 ["GetAttachmentNames"]
     1101 DUPCLOSURE                       R2 K114 [PROTO_4]
     1102 CAPTURE                          VAL R0
     1103 SETTABLEKS                       R2 R0 K115 ["GetJointNames"]
     1105 DUPCLOSURE                       R2 K116 [PROTO_5]
     1106 CAPTURE                          VAL R0
     1107 SETTABLEKS                       R2 R0 K117 ["IsHumanoidName"]
     1109 RETURN                           R0 1
