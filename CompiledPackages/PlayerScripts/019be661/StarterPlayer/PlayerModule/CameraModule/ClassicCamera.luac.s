PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        7 GETIMPORT                        R0 K2 [setmetatable]
        9 CALL                             R0 2 1
       10 LOADB                            R1 0
       11 SETTABLEKS                       R1 R0 K3 ["isFollowCamera"]
       13 LOADB                            R1 0
       14 SETTABLEKS                       R1 R0 K4 ["isCameraToggle"]
       16 GETIMPORT                        R1 K6 [tick]
       18 CALL                             R1 0 1
       19 SETTABLEKS                       R1 R0 K7 ["lastUpdate"]
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K8 ["Spring"]
       24 GETTABLEKS                       R1 R1 K0 ["new"]
       26 LOADN                            R2 5
       27 LOADN                            R3 0
       28 CALL                             R1 2 1
       29 SETTABLEKS                       R1 R0 K9 ["cameraToggleSpring"]
       31 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["isCameraToggle"]
        2 JUMPIFNOT                        R2 ; [+63]
        3 GETTABLEKS                       R2 R0 K1 ["currentSubjectDistance"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["getTogglePan"]
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+21]
       10 GETTABLEKS                       R3 R0 K3 ["cameraToggleSpring"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K4 ["map"]
       15 MOVE                             R6 R2
       16 LOADK                            R7 K5 [0.5]
       17 GETTABLEKS                       R8 R0 K6 ["FIRST_PERSON_DISTANCE_THRESHOLD"]
       19 LOADN                            R9 0
       20 LOADN                            R10 1
       21 CALL                             R5 5 1
       22 LOADN                            R6 0
       23 LOADN                            R7 1
       24 FASTCALL                         MATH_CLAMP ; [+2]
       25 GETIMPORT                        R4 K9 [math.clamp]
       27 CALL                             R4 3 1
       28 SETTABLEKS                       R4 R3 K10 ["goal"]
       30 JUMP                             ; [+5]
       31 GETTABLEKS                       R3 R0 K3 ["cameraToggleSpring"]
       33 LOADN                            R4 0
       34 SETTABLEKS                       R4 R3 K10 ["goal"]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K4 ["map"]
       39 MOVE                             R6 R2
       40 LOADK                            R7 K5 [0.5]
       41 LOADN                            R8 64
       42 LOADN                            R9 0
       43 LOADN                            R10 1
       44 CALL                             R5 5 1
       45 LOADN                            R6 0
       46 LOADN                            R7 1
       47 FASTCALL                         MATH_CLAMP ; [+2]
       48 GETIMPORT                        R4 K9 [math.clamp]
       50 CALL                             R4 3 1
       51 ADDK                             R3 R4 K11 [1]
       52 LOADN                            R5 0
       53 GETTABLEKS                       R7 R0 K3 ["cameraToggleSpring"]
       55 MOVE                             R9 R1
       56 NAMECALL                         R7 R7 K12 ["step"]
       58 CALL                             R7 2 1
       59 MUL                              R6 R7 R3
       60 LOADN                            R7 0
       61 FASTCALL                         VECTOR ; [+2]
       62 GETIMPORT                        R4 K15 [Vector3.new]
       64 CALL                             R4 3 1
       65 RETURN                           R4 1
       66 FASTCALL                         VECTOR ; [+2]
       67 GETIMPORT                        R2 K15 [Vector3.new]
       69 CALL                             R2 0 1
       70 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SetCameraMovementMode"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 GETIMPORT                        R3 K4 [Enum.ComputerCameraMovementMode.Follow]
        8 JUMPIFEQ                         R1 R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 SETTABLEKS                       R2 R0 K5 ["isFollowCamera"]
       14 GETIMPORT                        R3 K7 [Enum.ComputerCameraMovementMode.CameraToggle]
       16 JUMPIFEQ                         R1 R3 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 SETTABLEKS                       R2 R0 K8 ["isCameraToggle"]
       22 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETIMPORT                        R3 K3 [workspace]
        5 GETTABLEKS                       R3 R3 K4 ["CurrentCamera"]
        7 GETTABLEKS                       R4 R3 K5 ["CFrame"]
        9 GETTABLEKS                       R5 R3 K6 ["Focus"]
       11 LOADNIL                          R6
       12 GETTABLEKS                       R7 R0 K7 ["resetCameraAngle"]
       14 JUMPIFNOT                        R7 ; [+17]
       15 NAMECALL                         R7 R0 K8 ["GetHumanoidRootPart"]
       17 CALL                             R7 1 1
       18 JUMPIFNOT                        R7 ; [+7]
       19 GETTABLEKS                       R9 R7 K5 ["CFrame"]
       21 GETUPVAL                         R10 0
       22 MUL                              R8 R9 R10
       23 GETTABLEKS                       R6 R8 K9 ["lookVector"]
       25 JUMP                             ; [+3]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R6 R8 K9 ["lookVector"]
       29 LOADB                            R8 0
       30 SETTABLEKS                       R8 R0 K7 ["resetCameraAngle"]
       32 GETUPVAL                         R7 1
       33 GETTABLEKS                       R7 R7 K10 ["LocalPlayer"]
       35 NAMECALL                         R8 R0 K11 ["GetHumanoid"]
       37 CALL                             R8 1 1
       38 GETTABLEKS                       R9 R3 K12 ["CameraSubject"]
       40 MOVE                             R10 R9
       41 JUMPIFNOT                        R10 ; [+4]
       42 LOADK                            R12 K13 ["VehicleSeat"]
       43 NAMECALL                         R10 R9 K14 ["IsA"]
       45 CALL                             R10 2 1
       46 MOVE                             R11 R9
       47 JUMPIFNOT                        R11 ; [+4]
       48 LOADK                            R13 K15 ["SkateboardPlatform"]
       49 NAMECALL                         R11 R9 K14 ["IsA"]
       51 CALL                             R11 2 1
       52 MOVE                             R12 R8
       53 JUMPIFNOT                        R12 ; [+9]
       54 NAMECALL                         R13 R8 K16 ["GetState"]
       56 CALL                             R13 1 1
       57 GETIMPORT                        R14 K20 [Enum.HumanoidStateType.Climbing]
       59 JUMPIFEQ                         R13 R14 ; [+2]
       61 LOADB                            R12 0 +1
       62 LOADB                            R12 1
       63 GETTABLEKS                       R13 R0 K21 ["lastUpdate"]
       65 JUMPIFEQKNIL                     R13 ; [+4]
       67 LOADN                            R13 1
       68 JUMPIFNOTLT                      R13 R1 ; [+4]
       70 LOADNIL                          R13
       71 SETTABLEKS                       R13 R0 K22 ["lastCameraTransform"]
       73 GETUPVAL                         R13 2
       74 GETTABLEKS                       R13 R13 K23 ["getRotation"]
       76 MOVE                             R14 R1
       77 CALL                             R13 1 1
       78 MOVE                             R16 R1
       79 NAMECALL                         R14 R0 K24 ["StepZoom"]
       81 CALL                             R14 2 0
       82 NAMECALL                         R14 R0 K25 ["GetCameraHeight"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K28 [Vector2.new]
       87 CALL                             R15 0 1
       88 JUMPIFEQ                         R13 R15 ; [+8]
       90 LOADN                            R15 0
       91 SETUPVAL                         R15 3
       92 GETIMPORT                        R15 K1 [tick]
       94 CALL                             R15 0 1
       95 SETTABLEKS                       R15 R0 K29 ["lastUserPanCamera"]
       97 GETTABLEKS                       R17 R0 K29 ["lastUserPanCamera"]
       99 SUB                              R16 R2 R17
      100 LOADN                            R17 2
      101 JUMPIFLT                         R16 R17 ; [+2]
      103 LOADB                            R15 0 +1
      104 LOADB                            R15 1
      105 NAMECALL                         R16 R0 K30 ["GetSubjectPosition"]
      107 CALL                             R16 1 1
      108 JUMPIFNOT                        R16 ; [+332]
      109 JUMPIFNOT                        R7 ; [+331]
      110 JUMPIFNOT                        R3 ; [+330]
      111 NAMECALL                         R17 R0 K31 ["GetCameraToSubjectDistance"]
      113 CALL                             R17 1 1
      114 LOADK                            R18 K32 [0.5]
      115 JUMPIFNOTLT                      R17 R18 ; [+2]
      117 LOADK                            R17 K32 [0.5]
      118 NAMECALL                         R18 R0 K33 ["GetIsMouseLocked"]
      120 CALL                             R18 1 1
      121 JUMPIFNOT                        R18 ; [+41]
      122 NAMECALL                         R18 R0 K34 ["IsInFirstPerson"]
      124 CALL                             R18 1 1
      125 JUMPIF                           R18 ; [+37]
      126 MOVE                             R20 R6
      127 MOVE                             R21 R13
      128 NAMECALL                         R18 R0 K35 ["CalculateNewLookCFrameFromArg"]
      130 CALL                             R18 3 1
      131 NAMECALL                         R19 R0 K36 ["GetMouseLockOffset"]
      133 CALL                             R19 1 1
      134 JUMPIFNOT                        R8 ; [+3]
      135 GETTABLEKS                       R20 R8 K37 ["CameraOffset"]
      137 ADD                              R19 R19 R20
      138 GETTABLEKS                       R23 R19 K38 ["X"]
      140 GETTABLEKS                       R24 R18 K39 ["RightVector"]
      142 MUL                              R22 R23 R24
      143 GETTABLEKS                       R24 R19 K40 ["Y"]
      145 GETTABLEKS                       R25 R18 K41 ["UpVector"]
      147 MUL                              R23 R24 R25
      148 ADD                              R21 R22 R23
      149 GETTABLEKS                       R23 R19 K42 ["Z"]
      151 GETTABLEKS                       R24 R18 K43 ["LookVector"]
      153 MUL                              R22 R23 R24
      154 ADD                              R20 R21 R22
      155 GETUPVAL                         R21 4
      156 GETTABLEKS                       R21 R21 K44 ["IsFiniteVector3"]
      158 MOVE                             R22 R20
      159 CALL                             R21 1 1
      160 JUMPIFNOT                        R21 ; [+182]
      161 ADD                              R16 R16 R20
      162 JUMP                             ; [+180]
      163 GETIMPORT                        R19 K28 [Vector2.new]
      165 CALL                             R19 0 1
      166 JUMPIFNOTEQ                      R13 R19 ; [+2]
      168 LOADB                            R18 0 +1
      169 LOADB                            R18 1
      170 JUMPIF                           R18 ; [+172]
      171 GETTABLEKS                       R19 R0 K22 ["lastCameraTransform"]
      173 JUMPIFNOT                        R19 ; [+169]
      174 NAMECALL                         R19 R0 K34 ["IsInFirstPerson"]
      176 CALL                             R19 1 1
      177 JUMPIF                           R10 ; [+5]
      178 JUMPIF                           R11 ; [+4]
      179 GETTABLEKS                       R20 R0 K45 ["isFollowCamera"]
      181 JUMPIFNOT                        R20 ; [+113]
      182 JUMPIFNOT                        R12 ; [+112]
      183 GETTABLEKS                       R20 R0 K21 ["lastUpdate"]
      185 JUMPIFNOT                        R20 ; [+109]
      186 JUMPIFNOT                        R8 ; [+108]
      187 GETTABLEKS                       R20 R8 K46 ["Torso"]
      189 JUMPIFNOT                        R20 ; [+105]
      190 JUMPIFNOT                        R19 ; [+38]
      191 GETTABLEKS                       R20 R0 K47 ["lastSubjectCFrame"]
      193 JUMPIFNOT                        R20 ; [+149]
      194 JUMPIF                           R10 ; [+1]
      195 JUMPIFNOT                        R11 ; [+147]
      196 LOADK                            R22 K48 ["BasePart"]
      197 NAMECALL                         R20 R9 K14 ["IsA"]
      199 CALL                             R20 2 1
      200 JUMPIFNOT                        R20 ; [+142]
      201 GETUPVAL                         R21 4
      202 GETTABLEKS                       R21 R21 K49 ["GetAngleBetweenXZVectors"]
      204 GETTABLEKS                       R22 R0 K47 ["lastSubjectCFrame"]
      206 GETTABLEKS                       R22 R22 K9 ["lookVector"]
      208 GETTABLEKS                       R23 R9 K5 ["CFrame"]
      210 GETTABLEKS                       R23 R23 K9 ["lookVector"]
      212 CALL                             R21 2 1
      213 MINUS                            R20 R21
      214 GETUPVAL                         R21 4
      215 GETTABLEKS                       R21 R21 K50 ["IsFinite"]
      217 MOVE                             R22 R20
      218 CALL                             R21 1 1
      219 JUMPIFNOT                        R21 ; [+6]
      220 GETIMPORT                        R21 K28 [Vector2.new]
      222 MOVE                             R22 R20
      223 LOADN                            R23 0
      224 CALL                             R21 2 1
      225 ADD                              R13 R13 R21
      226 LOADN                            R21 0
      227 SETUPVAL                         R21 3
      228 JUMP                             ; [+114]
      229 JUMPIF                           R15 ; [+113]
      230 GETTABLEKS                       R20 R8 K46 ["Torso"]
      232 GETTABLEKS                       R20 R20 K5 ["CFrame"]
      234 GETTABLEKS                       R20 R20 K9 ["lookVector"]
      236 GETUPVAL                         R23 3
      237 LOADK                            R25 K51 [3.83972435438753]
      238 MUL                              R24 R25 R1
      239 ADD                              R22 R23 R24
      240 LOADN                            R23 0
      241 LOADK                            R24 K52 [4.36332312998582]
      242 FASTCALL                         MATH_CLAMP ; [+2]
      243 GETIMPORT                        R21 K55 [math.clamp]
      245 CALL                             R21 3 1
      246 SETUPVAL                         R21 3
      247 GETUPVAL                         R23 3
      248 MUL                              R22 R23 R1
      249 LOADN                            R23 0
      250 LOADN                            R24 1
      251 FASTCALL                         MATH_CLAMP ; [+2]
      252 GETIMPORT                        R21 K55 [math.clamp]
      254 CALL                             R21 3 1
      255 NAMECALL                         R22 R0 K34 ["IsInFirstPerson"]
      257 CALL                             R22 1 1
      258 JUMPIFNOT                        R22 ; [+7]
      259 GETTABLEKS                       R22 R0 K45 ["isFollowCamera"]
      261 JUMPIFNOT                        R22 ; [+3]
      262 GETTABLEKS                       R22 R0 K56 ["isClimbing"]
      264 JUMPIF                           R22 ; [+1]
      265 LOADN                            R21 1
      266 GETUPVAL                         R22 4
      267 GETTABLEKS                       R22 R22 K49 ["GetAngleBetweenXZVectors"]
      269 MOVE                             R23 R20
      270 NAMECALL                         R24 R0 K57 ["GetCameraLookVector"]
      272 CALL                             R24 1 -1
      273 CALL                             R22 -1 1
      274 GETUPVAL                         R23 4
      275 GETTABLEKS                       R23 R23 K50 ["IsFinite"]
      277 MOVE                             R24 R22
      278 CALL                             R23 1 1
      279 JUMPIFNOT                        R23 ; [+63]
      280 FASTCALL1                        MATH_ABS R22 ; [+3]
      281 MOVE                             R24 R22
      282 GETIMPORT                        R23 K59 [math.abs]
      284 CALL                             R23 1 1
      285 LOADK                            R24 K60 [0.0001]
      286 JUMPIFNOTLT                      R24 R23 ; [+56]
      288 GETIMPORT                        R23 K28 [Vector2.new]
      290 MUL                              R24 R22 R21
      291 LOADN                            R25 0
      292 CALL                             R23 2 1
      293 ADD                              R13 R13 R23
      294 JUMP                             ; [+48]
      295 GETTABLEKS                       R20 R0 K45 ["isFollowCamera"]
      297 JUMPIFNOT                        R20 ; [+45]
      298 JUMPIF                           R19 ; [+44]
      299 JUMPIF                           R15 ; [+43]
      300 GETTABLEKS                       R22 R0 K22 ["lastCameraTransform"]
      302 GETTABLEKS                       R22 R22 K61 ["Position"]
      304 SUB                              R21 R22 R16
      305 MINUS                            R20 R21
      306 GETUPVAL                         R21 4
      307 GETTABLEKS                       R21 R21 K49 ["GetAngleBetweenXZVectors"]
      309 MOVE                             R22 R20
      310 NAMECALL                         R23 R0 K57 ["GetCameraLookVector"]
      312 CALL                             R23 1 -1
      313 CALL                             R21 -1 1
      314 GETUPVAL                         R22 4
      315 GETTABLEKS                       R22 R22 K50 ["IsFinite"]
      317 MOVE                             R23 R21
      318 CALL                             R22 1 1
      319 JUMPIFNOT                        R22 ; [+23]
      320 FASTCALL1                        MATH_ABS R21 ; [+3]
      321 MOVE                             R23 R21
      322 GETIMPORT                        R22 K59 [math.abs]
      324 CALL                             R22 1 1
      325 LOADK                            R23 K60 [0.0001]
      326 JUMPIFNOTLT                      R23 R22 ; [+16]
      328 FASTCALL1                        MATH_ABS R21 ; [+3]
      329 MOVE                             R23 R21
      330 GETIMPORT                        R22 K59 [math.abs]
      332 CALL                             R22 1 1
      333 LOADK                            R24 K62 [0.4]
      334 MUL                              R23 R24 R1
      335 JUMPIFNOTLT                      R23 R22 ; [+7]
      337 GETIMPORT                        R22 K28 [Vector2.new]
      339 MOVE                             R23 R21
      340 LOADN                            R24 0
      341 CALL                             R22 2 1
      342 ADD                              R13 R13 R22
      343 GETTABLEKS                       R18 R0 K45 ["isFollowCamera"]
      345 JUMPIF                           R18 ; [+30]
      346 GETIMPORT                        R18 K63 [CFrame.new]
      348 MOVE                             R19 R16
      349 CALL                             R18 1 1
      350 MOVE                             R5 R18
      351 GETTABLEKS                       R18 R5 K61 ["Position"]
      353 MOVE                             R21 R6
      354 MOVE                             R22 R13
      355 NAMECALL                         R19 R0 K64 ["CalculateNewLookVectorFromArg"]
      357 CALL                             R19 3 1
      358 GETUPVAL                         R20 5
      359 JUMPIFNOT                        R20 ; [+8]
      360 GETIMPORT                        R20 K66 [CFrame.lookAlong]
      362 MUL                              R22 R17 R19
      363 SUB                              R21 R18 R22
      364 MOVE                             R22 R19
      365 CALL                             R20 2 1
      366 MOVE                             R4 R20
      367 JUMP                             ; [+48]
      368 GETIMPORT                        R20 K63 [CFrame.new]
      370 MUL                              R22 R17 R19
      371 SUB                              R21 R18 R22
      372 MOVE                             R22 R18
      373 CALL                             R20 2 1
      374 MOVE                             R4 R20
      375 JUMP                             ; [+40]
      376 MOVE                             R20 R6
      377 MOVE                             R21 R13
      378 NAMECALL                         R18 R0 K64 ["CalculateNewLookVectorFromArg"]
      380 CALL                             R18 3 1
      381 GETIMPORT                        R19 K63 [CFrame.new]
      383 MOVE                             R20 R16
      384 CALL                             R19 1 1
      385 MOVE                             R5 R19
      386 GETUPVAL                         R19 5
      387 JUMPIFNOT                        R19 ; [+10]
      388 GETIMPORT                        R19 K66 [CFrame.lookAlong]
      390 GETTABLEKS                       R21 R5 K61 ["Position"]
      392 MUL                              R22 R17 R18
      393 SUB                              R20 R21 R22
      394 MOVE                             R21 R18
      395 CALL                             R19 2 1
      396 MOVE                             R4 R19
      397 JUMP                             ; [+18]
      398 GETIMPORT                        R19 K63 [CFrame.new]
      400 GETTABLEKS                       R21 R5 K61 ["Position"]
      402 MUL                              R22 R17 R18
      403 SUB                              R20 R21 R22
      404 GETTABLEKS                       R21 R5 K61 ["Position"]
      406 CALL                             R19 2 1
      407 LOADN                            R21 0
      408 LOADN                            R23 0
      409 FASTCALL3                        VECTOR R21 R14 R23
      411 MOVE                             R22 R14
      412 GETIMPORT                        R20 K68 [Vector3.new]
      414 CALL                             R20 3 1
      415 ADD                              R4 R19 R20
      416 MOVE                             R20 R1
      417 NAMECALL                         R18 R0 K69 ["GetCameraToggleOffset"]
      419 CALL                             R18 2 1
      420 ADD                              R5 R5 R18
      421 ADD                              R4 R4 R18
      422 SETTABLEKS                       R4 R0 K22 ["lastCameraTransform"]
      424 SETTABLEKS                       R5 R0 K70 ["lastCameraFocus"]
      426 JUMPIF                           R10 ; [+1]
      427 JUMPIFNOT                        R11 ; [+10]
      428 LOADK                            R21 K48 ["BasePart"]
      429 NAMECALL                         R19 R9 K14 ["IsA"]
      431 CALL                             R19 2 1
      432 JUMPIFNOT                        R19 ; [+5]
      433 GETTABLEKS                       R19 R9 K5 ["CFrame"]
      435 SETTABLEKS                       R19 R0 K47 ["lastSubjectCFrame"]
      437 JUMP                             ; [+3]
      438 LOADNIL                          R19
      439 SETTABLEKS                       R19 R0 K47 ["lastSubjectCFrame"]
      441 SETTABLEKS                       R2 R0 K21 ["lastUpdate"]
      443 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 LOADN                            R0 0
        2 GETIMPORT                        R1 K2 [CFrame.fromOrientation]
        4 LOADK                            R2 K3 [-0.261799387799149]
        5 LOADN                            R3 0
        6 LOADN                            R4 0
        7 CALL                             R1 3 1
        8 GETIMPORT                        R2 K5 [require]
       10 GETIMPORT                        R3 K7 [script]
       12 GETTABLEKS                       R3 R3 K8 ["Parent"]
       14 GETTABLEKS                       R3 R3 K8 ["Parent"]
       16 LOADK                            R5 K9 ["CommonUtils"]
       17 NAMECALL                         R3 R3 K10 ["WaitForChild"]
       19 CALL                             R3 2 -1
       20 CALL                             R2 -1 1
       21 GETTABLEKS                       R3 R2 K11 ["get"]
       23 LOADK                            R4 K12 ["FlagUtil"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K13 ["getUserFlag"]
       27 LOADK                            R5 K14 ["UserFixCameraFPError"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K16 [game]
       31 LOADK                            R7 K17 ["Players"]
       32 NAMECALL                         R5 R5 K18 ["GetService"]
       34 CALL                             R5 2 1
       35 GETIMPORT                        R6 K5 [require]
       37 GETIMPORT                        R7 K7 [script]
       39 GETTABLEKS                       R7 R7 K8 ["Parent"]
       41 LOADK                            R9 K19 ["CameraInput"]
       42 NAMECALL                         R7 R7 K10 ["WaitForChild"]
       44 CALL                             R7 2 -1
       45 CALL                             R6 -1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETIMPORT                        R8 K7 [script]
       50 GETTABLEKS                       R8 R8 K8 ["Parent"]
       52 LOADK                            R10 K20 ["CameraUtils"]
       53 NAMECALL                         R8 R8 K10 ["WaitForChild"]
       55 CALL                             R8 2 -1
       56 CALL                             R7 -1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETIMPORT                        R9 K7 [script]
       61 GETTABLEKS                       R9 R9 K8 ["Parent"]
       63 LOADK                            R11 K21 ["BaseCamera"]
       64 NAMECALL                         R9 R9 K10 ["WaitForChild"]
       66 CALL                             R9 2 -1
       67 CALL                             R8 -1 1
       68 NEWTABLE                         R10 8 0
       70 FASTCALL2                        SETMETATABLE R10 R8 ; [+4]
       72 MOVE                             R11 R8
       73 GETIMPORT                        R9 K23 [setmetatable]
       75 CALL                             R9 2 1
       76 SETTABLEKS                       R9 R9 K24 ["__index"]
       78 DUPCLOSURE                       R10 K25 [PROTO_0]
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R7
       82 SETTABLEKS                       R10 R9 K26 ["new"]
       84 DUPCLOSURE                       R10 K27 [PROTO_1]
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R7
       87 SETTABLEKS                       R10 R9 K28 ["GetCameraToggleOffset"]
       89 DUPCLOSURE                       R10 K29 [PROTO_2]
       90 CAPTURE                          VAL R8
       91 SETTABLEKS                       R10 R9 K30 ["SetCameraMovementMode"]
       93 NEWCLOSURE                       R10 P3
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R6
       97 CAPTURE                          REF R0
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R4
      100 SETTABLEKS                       R10 R9 K31 ["Update"]
      102 CLOSEUPVALS                      R0
      103 RETURN                           R9 1
