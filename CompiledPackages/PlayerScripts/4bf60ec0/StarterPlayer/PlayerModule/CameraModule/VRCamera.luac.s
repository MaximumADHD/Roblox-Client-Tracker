PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        7 GETIMPORT                        R0 K2 [setmetatable]
        9 CALL                             R0 2 1
       10 GETIMPORT                        R1 K4 [tick]
       12 CALL                             R1 0 1
       13 SETTABLEKS                       R1 R0 K5 ["lastUpdate"]
       15 GETIMPORT                        R1 K7 [CFrame.new]
       17 CALL                             R1 0 1
       18 SETTABLEKS                       R1 R0 K8 ["focusOffset"]
       20 NAMECALL                         R1 R0 K9 ["Reset"]
       22 CALL                             R1 1 0
       23 GETIMPORT                        R1 K11 [require]
       25 GETIMPORT                        R2 K13 [script]
       27 GETTABLEKS                       R2 R2 K14 ["Parent"]
       29 GETTABLEKS                       R2 R2 K14 ["Parent"]
       31 LOADK                            R4 K15 ["ControlModule"]
       32 NAMECALL                         R2 R2 K16 ["WaitForChild"]
       34 CALL                             R2 2 -1
       35 CALL                             R1 -1 1
       36 SETTABLEKS                       R1 R0 K17 ["controlModule"]
       38 LOADB                            R1 1
       39 SETTABLEKS                       R1 R0 K18 ["savedAutoRotate"]
       41 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["needsReset"]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K1 ["needsBlackout"]
        6 LOADN                            R1 0
        7 SETTABLEKS                       R1 R0 K2 ["motionDetTime"]
        9 LOADN                            R1 0
       10 SETTABLEKS                       R1 R0 K3 ["blackOutTimer"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K4 ["lastCameraResetPosition"]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K5 ["Reset"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K1 [workspace]
        2 GETTABLEKS                       R2 R2 K2 ["CurrentCamera"]
        4 GETTABLEKS                       R3 R2 K3 ["CFrame"]
        6 GETTABLEKS                       R4 R2 K4 ["Focus"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K5 ["LocalPlayer"]
       11 GETTABLEKS                       R6 R0 K6 ["lastUpdate"]
       13 JUMPIFEQKNIL                     R6 ; [+4]
       15 LOADN                            R6 1
       16 JUMPIFNOTLT                      R6 R1 ; [+4]
       18 LOADNIL                          R6
       19 SETTABLEKS                       R6 R0 K7 ["lastCameraTransform"]
       21 MOVE                             R8 R1
       22 NAMECALL                         R6 R0 K8 ["UpdateFadeFromBlack"]
       24 CALL                             R6 2 0
       25 GETTABLEKS                       R6 R0 K9 ["lastSubjectPosition"]
       27 NAMECALL                         R7 R0 K10 ["GetSubjectPosition"]
       29 CALL                             R7 1 1
       30 GETTABLEKS                       R8 R0 K11 ["needsBlackout"]
       32 JUMPIFNOT                        R8 ; [+33]
       33 NAMECALL                         R8 R0 K12 ["StartFadeFromBlack"]
       35 CALL                             R8 1 0
       36 LOADK                            R10 K13 [0.0001]
       37 LOADK                            R11 K14 [0.1]
       38 FASTCALL3                        MATH_CLAMP R1 R10 R11
       40 MOVE                             R9 R1
       41 GETIMPORT                        R8 K17 [math.clamp]
       43 CALL                             R8 3 1
       44 GETTABLEKS                       R9 R0 K18 ["blackOutTimer"]
       46 ADD                              R9 R9 R8
       47 SETTABLEKS                       R9 R0 K18 ["blackOutTimer"]
       49 GETTABLEKS                       R9 R0 K18 ["blackOutTimer"]
       51 LOADK                            R10 K14 [0.1]
       52 JUMPIFNOTLT                      R10 R9 ; [+13]
       54 GETIMPORT                        R9 K20 [game]
       56 NAMECALL                         R9 R9 K21 ["IsLoaded"]
       58 CALL                             R9 1 1
       59 JUMPIFNOT                        R9 ; [+6]
       60 LOADB                            R9 0
       61 SETTABLEKS                       R9 R0 K11 ["needsBlackout"]
       63 LOADB                            R9 1
       64 SETTABLEKS                       R9 R0 K22 ["needsReset"]
       66 JUMPIFNOT                        R7 ; [+83]
       67 JUMPIFNOT                        R5 ; [+82]
       68 JUMPIFNOT                        R2 ; [+81]
       69 MOVE                             R10 R7
       70 MOVE                             R11 R1
       71 NAMECALL                         R8 R0 K23 ["GetVRFocus"]
       73 CALL                             R8 3 1
       74 MOVE                             R4 R8
       75 GETUPVAL                         R8 1
       76 JUMPIFNOT                        R8 ; [+14]
       77 NAMECALL                         R8 R0 K24 ["IsInFirstPerson"]
       79 CALL                             R8 1 1
       80 JUMPIFNOT                        R8 ; [+8]
       81 GETTABLEKS                       R9 R5 K25 ["DevCameraOcclusionMode"]
       83 GETIMPORT                        R10 K28 [Enum.DevCameraOcclusionMode.Invisicam]
       85 JUMPIFNOTEQ                      R9 R10 ; [+2]
       87 LOADB                            R8 0 +1
       88 LOADB                            R8 1
       89 SETTABLEKS                       R8 R0 K29 ["skipOcclusion"]
       91 NAMECALL                         R8 R0 K24 ["IsInFirstPerson"]
       93 CALL                             R8 1 1
       94 JUMPIFNOT                        R8 ; [+26]
       95 GETUPVAL                         R8 2
       96 GETTABLEKS                       R8 R8 K30 ["AvatarGestures"]
       98 JUMPIFNOT                        R8 ; [+11]
       99 MOVE                             R10 R1
      100 MOVE                             R11 R3
      101 MOVE                             R12 R4
      102 MOVE                             R13 R6
      103 MOVE                             R14 R7
      104 NAMECALL                         R8 R0 K31 ["UpdateImmersionCamera"]
      106 CALL                             R8 6 2
      107 MOVE                             R3 R8
      108 MOVE                             R4 R9
      109 JUMP                             ; [+36]
      110 MOVE                             R10 R1
      111 MOVE                             R11 R3
      112 MOVE                             R12 R4
      113 MOVE                             R13 R6
      114 MOVE                             R14 R7
      115 NAMECALL                         R8 R0 K32 ["UpdateFirstPersonTransform"]
      117 CALL                             R8 6 2
      118 MOVE                             R3 R8
      119 MOVE                             R4 R9
      120 JUMP                             ; [+25]
      121 GETUPVAL                         R8 2
      122 GETTABLEKS                       R8 R8 K33 ["ThirdPersonFollowCamEnabled"]
      124 JUMPIFNOT                        R8 ; [+11]
      125 MOVE                             R10 R1
      126 MOVE                             R11 R3
      127 MOVE                             R12 R4
      128 MOVE                             R13 R6
      129 MOVE                             R14 R7
      130 NAMECALL                         R8 R0 K34 ["UpdateThirdPersonFollowTransform"]
      132 CALL                             R8 6 2
      133 MOVE                             R3 R8
      134 MOVE                             R4 R9
      135 JUMP                             ; [+10]
      136 MOVE                             R10 R1
      137 MOVE                             R11 R3
      138 MOVE                             R12 R4
      139 MOVE                             R13 R6
      140 MOVE                             R14 R7
      141 NAMECALL                         R8 R0 K35 ["UpdateThirdPersonComfortTransform"]
      143 CALL                             R8 6 2
      144 MOVE                             R3 R8
      145 MOVE                             R4 R9
      146 SETTABLEKS                       R3 R0 K7 ["lastCameraTransform"]
      148 SETTABLEKS                       R4 R0 K36 ["lastCameraFocus"]
      150 GETIMPORT                        R8 K38 [tick]
      152 CALL                             R8 0 1
      153 SETTABLEKS                       R8 R0 K6 ["lastUpdate"]
      155 RETURN                           R3 2

PROTO_3:
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R1 R1 K2 ["CurrentCamera"]
        4 GETTABLEKS                       R2 R1 K3 ["CameraSubject"]
        6 JUMPIF                           R2 ; [+2]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 LOADK                            R5 K4 ["Humanoid"]
       10 NAMECALL                         R3 R2 K5 ["IsA"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+19]
       14 GETTABLEKS                       R3 R2 K6 ["RootPart"]
       16 JUMPIFNOT                        R3 ; [+16]
       17 GETTABLEKS                       R3 R2 K6 ["RootPart"]
       19 GETTABLEKS                       R6 R3 K7 ["Position"]
       21 GETTABLEKS                       R6 R6 K8 ["Y"]
       23 GETTABLEKS                       R8 R3 K10 ["Size"]
       25 GETTABLEKS                       R8 R8 K8 ["Y"]
       27 DIVK                             R7 R8 K9 [2]
       28 SUB                              R5 R6 R7
       29 GETTABLEKS                       R6 R2 K11 ["HipHeight"]
       31 SUB                              R4 R5 R6
       32 RETURN                           R4 1
       33 LOADNIL                          R3
       34 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R6 R0 K0 ["needsReset"]
        2 JUMPIFNOT                        R6 ; [+6]
        3 NAMECALL                         R6 R0 K1 ["StartFadeFromBlack"]
        5 CALL                             R6 1 0
        6 LOADB                            R6 0
        7 SETTABLEKS                       R6 R0 K0 ["needsReset"]
        9 GETTABLEKS                       R6 R3 K2 ["Position"]
       11 NAMECALL                         R7 R0 K3 ["GetCameraLookVector"]
       13 CALL                             R7 1 1
       14 GETTABLEKS                       R9 R7 K4 ["X"]
       16 LOADN                            R10 0
       17 GETTABLEKS                       R11 R7 K5 ["Z"]
       19 FASTCALL                         VECTOR ; [+2]
       20 GETIMPORT                        R8 K8 [Vector3.new]
       22 CALL                             R8 3 1
       23 GETTABLEKS                       R7 R8 K9 ["Unit"]
       25 MOVE                             R10 R1
       26 NAMECALL                         R8 R0 K10 ["getRotation"]
       28 CALL                             R8 2 1
       29 MOVE                             R11 R7
       30 GETIMPORT                        R12 K12 [Vector2.new]
       32 MOVE                             R13 R8
       33 LOADN                            R14 0
       34 CALL                             R12 2 -1
       35 NAMECALL                         R9 R0 K13 ["CalculateNewLookVectorFromArg"]
       37 CALL                             R9 -1 1
       38 GETIMPORT                        R10 K15 [CFrame.new]
       40 LOADK                            R13 K16 [0.5]
       41 MUL                              R12 R13 R9
       42 SUB                              R11 R6 R12
       43 MOVE                             R12 R6
       44 CALL                             R10 2 1
       45 MOVE                             R2 R10
       46 RETURN                           R2 2

PROTO_5:
        0 NAMECALL                         R6 R0 K0 ["GetSubjectCFrame"]
        2 CALL                             R6 1 1
        3 GETIMPORT                        R7 K2 [workspace]
        5 GETTABLEKS                       R7 R7 K3 ["CurrentCamera"]
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R8 R8 K4 ["LocalPlayer"]
       10 GETTABLEKS                       R8 R8 K5 ["Character"]
       12 NAMECALL                         R9 R0 K6 ["GetHumanoid"]
       14 CALL                             R9 1 1
       15 JUMPIF                           R9 ; [+5]
       16 GETTABLEKS                       R10 R7 K7 ["CFrame"]
       18 GETTABLEKS                       R11 R7 K8 ["Focus"]
       20 RETURN                           R10 2
       21 LOADK                            R12 K9 ["HumanoidRootPart"]
       22 NAMECALL                         R10 R8 K10 ["FindFirstChild"]
       24 CALL                             R10 2 1
       25 JUMPIF                           R10 ; [+5]
       26 GETTABLEKS                       R11 R7 K7 ["CFrame"]
       28 GETTABLEKS                       R12 R7 K8 ["Focus"]
       30 RETURN                           R11 2
       31 LOADNIL                          R11
       32 GETUPVAL                         R12 1
       33 JUMPIFNOT                        R12 ; [+20]
       34 JUMPIFNOT                        R4 ; [+18]
       35 GETTABLEKS                       R14 R5 K11 ["X"]
       37 GETTABLEKS                       R15 R4 K11 ["X"]
       39 SUB                              R13 R14 R15
       40 LOADN                            R14 0
       41 GETTABLEKS                       R16 R5 K12 ["Z"]
       43 GETTABLEKS                       R17 R4 K12 ["Z"]
       45 SUB                              R15 R16 R17
       46 FASTCALL                         VECTOR ; [+2]
       47 GETIMPORT                        R12 K15 [Vector3.new]
       49 CALL                             R12 3 1
       50 GETTABLEKS                       R11 R12 K16 ["Magnitude"]
       52 JUMP                             ; [+1]
       53 LOADN                            R11 0
       54 LOADK                            R14 K17 ["CharacterAlignOrientation"]
       55 NAMECALL                         R12 R10 K10 ["FindFirstChild"]
       57 CALL                             R12 2 1
       58 SETTABLEKS                       R12 R0 K18 ["characterOrientation"]
       60 GETTABLEKS                       R12 R0 K18 ["characterOrientation"]
       62 JUMPIF                           R12 ; [+36]
       63 LOADK                            R14 K19 ["RootAttachment"]
       64 NAMECALL                         R12 R10 K10 ["FindFirstChild"]
       66 CALL                             R12 2 1
       67 JUMPIF                           R12 ; [+1]
       68 RETURN                           R0 0
       69 GETIMPORT                        R13 K21 [Instance.new]
       71 LOADK                            R14 K22 ["AlignOrientation"]
       72 CALL                             R13 1 1
       73 SETTABLEKS                       R13 R0 K18 ["characterOrientation"]
       75 GETTABLEKS                       R13 R0 K18 ["characterOrientation"]
       77 LOADK                            R14 K17 ["CharacterAlignOrientation"]
       78 SETTABLEKS                       R14 R13 K23 ["Name"]
       80 GETTABLEKS                       R13 R0 K18 ["characterOrientation"]
       82 GETIMPORT                        R14 K27 [Enum.OrientationAlignmentMode.OneAttachment]
       84 SETTABLEKS                       R14 R13 K28 ["Mode"]
       86 GETTABLEKS                       R13 R0 K18 ["characterOrientation"]
       88 SETTABLEKS                       R12 R13 K29 ["Attachment0"]
       90 GETTABLEKS                       R13 R0 K18 ["characterOrientation"]
       92 LOADB                            R14 1
       93 SETTABLEKS                       R14 R13 K30 ["RigidityEnabled"]
       95 GETTABLEKS                       R13 R0 K18 ["characterOrientation"]
       97 SETTABLEKS                       R10 R13 K31 ["Parent"]
       99 GETTABLEKS                       R12 R0 K18 ["characterOrientation"]
      101 GETTABLEKS                       R12 R12 K32 ["Enabled"]
      103 JUMPIFNOTEQKB                    R12 FALSE ; [+6]
      105 GETTABLEKS                       R12 R0 K18 ["characterOrientation"]
      107 LOADB                            R13 1
      108 SETTABLEKS                       R13 R12 K32 ["Enabled"]
      110 GETTABLEKS                       R12 R0 K33 ["needsReset"]
      112 JUMPIFNOT                        R12 ; [+26]
      113 LOADB                            R12 0
      114 SETTABLEKS                       R12 R0 K33 ["needsReset"]
      116 GETTABLEKS                       R12 R9 K34 ["AutoRotate"]
      118 SETTABLEKS                       R12 R0 K35 ["savedAutoRotate"]
      120 LOADB                            R12 0
      121 SETTABLEKS                       R12 R9 K34 ["AutoRotate"]
      123 GETUPVAL                         R12 1
      124 JUMPIFNOT                        R12 ; [+9]
      125 GETUPVAL                         R12 2
      126 NAMECALL                         R12 R12 K36 ["RecenterUserHeadCFrame"]
      128 CALL                             R12 1 0
      129 GETIMPORT                        R12 K38 [tick]
      131 CALL                             R12 0 1
      132 SETTABLEKS                       R12 R0 K39 ["lastTeleportRecenter"]
      134 NAMECALL                         R12 R0 K40 ["StartFadeFromBlack"]
      136 CALL                             R12 1 0
      137 MOVE                             R2 R6
      138 JUMP                             ; [+309]
      139 GETTABLEKS                       R12 R9 K41 ["Sit"]
      141 JUMPIFNOT                        R12 ; [+2]
      142 MOVE                             R2 R6
      143 JUMP                             ; [+304]
      144 GETTABLEKS                       R12 R0 K42 ["controlModule"]
      146 NAMECALL                         R12 R12 K43 ["GetEstimatedVRTorsoFrame"]
      148 CALL                             R12 1 1
      149 GETTABLEKS                       R13 R0 K18 ["characterOrientation"]
      151 GETTABLEKS                       R15 R7 K7 ["CFrame"]
      153 MUL                              R14 R15 R12
      154 SETTABLEKS                       R14 R13 K7 ["CFrame"]
      156 GETTABLEKS                       R13 R0 K42 ["controlModule"]
      158 GETTABLEKS                       R13 R13 K44 ["inputMoveVector"]
      160 GETTABLEKS                       R13 R13 K16 ["Magnitude"]
      162 LOADN                            R14 0
      163 JUMPIFNOTLT                      R14 R13 ; [+4]
      165 LOADK                            R13 K45 [0.1]
      166 SETTABLEKS                       R13 R0 K46 ["motionDetTime"]
      168 GETTABLEKS                       R13 R0 K42 ["controlModule"]
      170 GETTABLEKS                       R13 R13 K44 ["inputMoveVector"]
      172 GETTABLEKS                       R13 R13 K16 ["Magnitude"]
      174 LOADN                            R14 0
      175 JUMPIFLT                         R14 R13 ; [+6]
      177 GETTABLEKS                       R13 R0 K46 ["motionDetTime"]
      179 LOADN                            R14 0
      180 JUMPIFNOTLT                      R14 R13 ; [+86]
      182 GETTABLEKS                       R13 R0 K46 ["motionDetTime"]
      184 SUB                              R13 R13 R1
      185 SETTABLEKS                       R13 R0 K46 ["motionDetTime"]
      187 GETUPVAL                         R13 2
      188 GETIMPORT                        R15 K49 [Enum.UserCFrame.Head]
      190 NAMECALL                         R13 R13 K50 ["GetUserCFrame"]
      192 CALL                             R13 2 1
      193 GETTABLEKS                       R14 R13 K51 ["Rotation"]
      195 GETTABLEKS                       R16 R13 K52 ["Position"]
      197 GETTABLEKS                       R17 R7 K53 ["HeadScale"]
      199 MUL                              R15 R16 R17
      200 ADD                              R13 R14 R15
      201 GETTABLEKS                       R14 R8 K9 ["HumanoidRootPart"]
      203 LOADK                            R17 K55 [-0.7]
      204 GETTABLEKS                       R18 R14 K56 ["Size"]
      206 GETTABLEKS                       R18 R18 K57 ["Y"]
      208 MUL                              R16 R17 R18
      209 DIVK                             R15 R16 K54 [2]
      210 GETTABLEKS                       R18 R7 K7 ["CFrame"]
      212 MUL                              R17 R18 R13
      213 GETIMPORT                        R18 K58 [CFrame.new]
      215 LOADN                            R19 0
      216 MOVE                             R20 R15
      217 LOADN                            R21 0
      218 CALL                             R18 3 1
      219 MUL                              R16 R17 R18
      220 GETTABLEKS                       R17 R14 K7 ["CFrame"]
      222 GETTABLEKS                       R17 R17 K59 ["LookVector"]
      224 GETTABLEKS                       R21 R17 K11 ["X"]
      226 LOADN                            R22 0
      227 GETTABLEKS                       R23 R17 K12 ["Z"]
      229 FASTCALL                         VECTOR ; [+2]
      230 GETIMPORT                        R20 K15 [Vector3.new]
      232 CALL                             R20 3 1
      233 GETTABLEKS                       R20 R20 K61 ["Unit"]
      235 GETTABLEKS                       R21 R14 K56 ["Size"]
      237 GETTABLEKS                       R21 R21 K57 ["Y"]
      239 MUL                              R19 R20 R21
      240 MULK                             R18 R19 K60 [0.125]
      241 SUB                              R16 R16 R18
      242 GETTABLEKS                       R20 R16 K52 ["Position"]
      244 SUB                              R19 R5 R20
      245 GETTABLEKS                       R20 R7 K7 ["CFrame"]
      247 GETTABLEKS                       R20 R20 K52 ["Position"]
      249 ADD                              R18 R19 R20
      250 GETTABLEKS                       R20 R18 K11 ["X"]
      252 GETTABLEKS                       R21 R5 K57 ["Y"]
      254 GETTABLEKS                       R22 R18 K12 ["Z"]
      256 FASTCALL                         VECTOR ; [+2]
      257 GETIMPORT                        R19 K15 [Vector3.new]
      259 CALL                             R19 3 1
      260 MOVE                             R18 R19
      261 GETTABLEKS                       R19 R7 K7 ["CFrame"]
      263 GETTABLEKS                       R19 R19 K51 ["Rotation"]
      265 ADD                              R2 R19 R18
      266 JUMP                             ; [+130]
      267 GETUPVAL                         R13 1
      268 JUMPIFNOT                        R13 ; [+105]
      269 GETUPVAL                         R13 3
      270 GETTABLEKS                       R13 R13 K62 ["shouldRecenter"]
      272 GETTABLEKS                       R14 R0 K63 ["prevSubjStep"]
      274 MOVE                             R15 R11
      275 GETTABLEKS                       R16 R0 K39 ["lastTeleportRecenter"]
      277 GETIMPORT                        R17 K38 [tick]
      279 CALL                             R17 0 -1
      280 CALL                             R13 -1 1
      281 JUMPIFNOT                        R13 ; [+92]
      282 GETUPVAL                         R13 2
      283 GETIMPORT                        R15 K49 [Enum.UserCFrame.Head]
      285 NAMECALL                         R13 R13 K50 ["GetUserCFrame"]
      287 CALL                             R13 2 1
      288 GETTABLEKS                       R14 R13 K51 ["Rotation"]
      290 GETTABLEKS                       R16 R13 K52 ["Position"]
      292 GETTABLEKS                       R17 R7 K53 ["HeadScale"]
      294 MUL                              R15 R16 R17
      295 ADD                              R13 R14 R15
      296 GETTABLEKS                       R14 R8 K9 ["HumanoidRootPart"]
      298 LOADK                            R17 K55 [-0.7]
      299 GETTABLEKS                       R18 R14 K56 ["Size"]
      301 GETTABLEKS                       R18 R18 K57 ["Y"]
      303 MUL                              R16 R17 R18
      304 DIVK                             R15 R16 K54 [2]
      305 GETTABLEKS                       R18 R7 K7 ["CFrame"]
      307 MUL                              R17 R18 R13
      308 GETIMPORT                        R18 K58 [CFrame.new]
      310 LOADN                            R19 0
      311 MOVE                             R20 R15
      312 LOADN                            R21 0
      313 CALL                             R18 3 1
      314 MUL                              R16 R17 R18
      315 GETTABLEKS                       R17 R14 K7 ["CFrame"]
      317 GETTABLEKS                       R17 R17 K59 ["LookVector"]
      319 GETTABLEKS                       R21 R17 K11 ["X"]
      321 LOADN                            R22 0
      322 GETTABLEKS                       R23 R17 K12 ["Z"]
      324 FASTCALL                         VECTOR ; [+2]
      325 GETIMPORT                        R20 K15 [Vector3.new]
      327 CALL                             R20 3 1
      328 GETTABLEKS                       R20 R20 K61 ["Unit"]
      330 GETTABLEKS                       R21 R14 K56 ["Size"]
      332 GETTABLEKS                       R21 R21 K57 ["Y"]
      334 MUL                              R19 R20 R21
      335 MULK                             R18 R19 K60 [0.125]
      336 SUB                              R16 R16 R18
      337 GETTABLEKS                       R20 R16 K52 ["Position"]
      339 SUB                              R19 R5 R20
      340 GETTABLEKS                       R20 R7 K7 ["CFrame"]
      342 GETTABLEKS                       R20 R20 K52 ["Position"]
      344 ADD                              R18 R19 R20
      345 GETTABLEKS                       R20 R18 K11 ["X"]
      347 GETTABLEKS                       R21 R5 K57 ["Y"]
      349 GETTABLEKS                       R22 R18 K12 ["Z"]
      351 FASTCALL                         VECTOR ; [+2]
      352 GETIMPORT                        R19 K15 [Vector3.new]
      354 CALL                             R19 3 1
      355 MOVE                             R18 R19
      356 GETTABLEKS                       R19 R7 K7 ["CFrame"]
      358 GETTABLEKS                       R19 R19 K51 ["Rotation"]
      360 ADD                              R2 R19 R18
      361 GETUPVAL                         R19 2
      362 NAMECALL                         R19 R19 K36 ["RecenterUserHeadCFrame"]
      364 CALL                             R19 1 0
      365 NAMECALL                         R19 R0 K40 ["StartFadeFromBlack"]
      367 CALL                             R19 1 0
      368 GETIMPORT                        R19 K38 [tick]
      370 CALL                             R19 0 1
      371 SETTABLEKS                       R19 R0 K39 ["lastTeleportRecenter"]
      373 JUMP                             ; [+23]
      374 GETTABLEKS                       R13 R7 K7 ["CFrame"]
      376 GETTABLEKS                       R13 R13 K51 ["Rotation"]
      378 GETTABLEKS                       R15 R7 K7 ["CFrame"]
      380 GETTABLEKS                       R15 R15 K52 ["Position"]
      382 GETTABLEKS                       R15 R15 K11 ["X"]
      384 GETTABLEKS                       R16 R5 K57 ["Y"]
      386 GETTABLEKS                       R17 R7 K7 ["CFrame"]
      388 GETTABLEKS                       R17 R17 K52 ["Position"]
      390 GETTABLEKS                       R17 R17 K12 ["Z"]
      392 FASTCALL                         VECTOR ; [+2]
      393 GETIMPORT                        R14 K15 [Vector3.new]
      395 CALL                             R14 3 1
      396 ADD                              R2 R13 R14
      397 MOVE                             R15 R1
      398 NAMECALL                         R13 R0 K64 ["getRotation"]
      400 CALL                             R13 2 1
      401 FASTCALL1                        MATH_ABS R13 ; [+3]
      402 MOVE                             R15 R13
      403 GETIMPORT                        R14 K67 [math.abs]
      405 CALL                             R14 1 1
      406 LOADN                            R15 0
      407 JUMPIFNOTLT                      R15 R14 ; [+40]
      409 GETUPVAL                         R14 2
      410 GETIMPORT                        R16 K49 [Enum.UserCFrame.Head]
      412 NAMECALL                         R14 R14 K50 ["GetUserCFrame"]
      414 CALL                             R14 2 1
      415 GETTABLEKS                       R15 R14 K51 ["Rotation"]
      417 GETTABLEKS                       R17 R14 K52 ["Position"]
      419 GETTABLEKS                       R18 R7 K53 ["HeadScale"]
      421 MUL                              R16 R17 R18
      422 ADD                              R14 R15 R16
      423 MUL                              R15 R2 R14
      424 GETIMPORT                        R18 K58 [CFrame.new]
      426 GETTABLEKS                       R19 R15 K52 ["Position"]
      428 CALL                             R18 1 1
      429 GETIMPORT                        R19 K69 [CFrame.Angles]
      431 LOADN                            R20 0
      432 MULK                             R23 R13 K70 [90]
      433 FASTCALL1                        MATH_RAD R23 ; [+2]
      434 GETIMPORT                        R22 K72 [math.rad]
      436 CALL                             R22 1 1
      437 MINUS                            R21 R22
      438 LOADN                            R22 0
      439 CALL                             R19 3 1
      440 MUL                              R17 R18 R19
      441 GETTABLEKS                       R18 R15 K51 ["Rotation"]
      443 MUL                              R16 R17 R18
      444 NAMECALL                         R17 R14 K73 ["Inverse"]
      446 CALL                             R17 1 1
      447 MUL                              R2 R16 R17
      448 GETUPVAL                         R12 1
      449 JUMPIFNOT                        R12 ; [+2]
      450 SETTABLEKS                       R11 R0 K63 ["prevSubjStep"]
      452 MOVE                             R12 R2
      453 GETIMPORT                        R14 K58 [CFrame.new]
      455 LOADN                            R15 0
      456 LOADN                            R16 0
      457 LOADK                            R17 K74 [-0.5]
      458 CALL                             R14 3 1
      459 MUL                              R13 R2 R14
      460 RETURN                           R12 2

PROTO_6:
        0 NAMECALL                         R6 R0 K0 ["GetCameraToSubjectDistance"]
        2 CALL                             R6 1 1
        3 LOADK                            R7 K1 [0.5]
        4 JUMPIFNOTLT                      R6 R7 ; [+2]
        6 LOADK                            R6 K1 [0.5]
        7 JUMPIFEQKNIL                     R4 ; [+159]
        9 GETTABLEKS                       R7 R0 K2 ["lastCameraFocus"]
       11 JUMPIFEQKNIL                     R7 ; [+155]
       13 SUB                              R7 R4 R5
       14 GETTABLEKS                       R8 R0 K3 ["controlModule"]
       16 GETTABLEKS                       R8 R8 K4 ["inputMoveVector"]
       18 LOADB                            R9 1
       19 GETTABLEKS                       R10 R7 K5 ["magnitude"]
       21 LOADK                            R11 K6 [0.01]
       22 JUMPIFLT                         R11 R10 ; [+8]
       24 GETTABLEKS                       R10 R8 K5 ["magnitude"]
       26 LOADK                            R11 K6 [0.01]
       27 JUMPIFLT                         R11 R10 ; [+2]
       29 LOADB                            R9 0 +1
       30 LOADB                            R9 1
       31 JUMPIFNOT                        R9 ; [+3]
       32 LOADK                            R10 K7 [0.1]
       33 SETTABLEKS                       R10 R0 K8 ["motionDetTime"]
       35 GETTABLEKS                       R11 R0 K8 ["motionDetTime"]
       37 SUB                              R10 R11 R1
       38 SETTABLEKS                       R10 R0 K8 ["motionDetTime"]
       40 GETTABLEKS                       R10 R0 K8 ["motionDetTime"]
       42 LOADN                            R11 0
       43 JUMPIFNOTLT                      R11 R10 ; [+2]
       45 LOADB                            R9 1
       46 JUMPIFNOT                        R9 ; [+9]
       47 GETTABLEKS                       R10 R0 K9 ["needsReset"]
       49 JUMPIF                           R10 ; [+6]
       50 GETTABLEKS                       R3 R0 K2 ["lastCameraFocus"]
       52 LOADB                            R10 1
       53 SETTABLEKS                       R10 R0 K10 ["VRCameraFocusFrozen"]
       55 RETURN                           R2 2
       56 LOADB                            R10 1
       57 GETTABLEKS                       R11 R0 K11 ["lastCameraResetPosition"]
       59 JUMPIFEQKNIL                     R11 ; [+11]
       61 GETTABLEKS                       R12 R0 K11 ["lastCameraResetPosition"]
       63 SUB                              R11 R5 R12
       64 GETTABLEKS                       R11 R11 K12 ["Magnitude"]
       66 LOADN                            R12 1
       67 JUMPIFLT                         R12 R11 ; [+2]
       69 LOADB                            R10 0 +1
       70 LOADB                            R10 1
       71 MOVE                             R13 R1
       72 NAMECALL                         R11 R0 K13 ["getRotation"]
       74 CALL                             R11 2 1
       75 FASTCALL1                        MATH_ABS R11 ; [+3]
       76 MOVE                             R13 R11
       77 GETIMPORT                        R12 K16 [math.abs]
       79 CALL                             R12 1 1
       80 LOADN                            R13 0
       81 JUMPIFNOTLT                      R13 R12 ; [+13]
       83 MOVE                             R14 R2
       84 NAMECALL                         R12 R3 K17 ["ToObjectSpace"]
       86 CALL                             R12 2 1
       87 GETIMPORT                        R14 K20 [CFrame.Angles]
       89 LOADN                            R15 0
       90 MINUS                            R16 R11
       91 LOADN                            R17 0
       92 CALL                             R14 3 1
       93 MUL                              R13 R3 R14
       94 MUL                              R2 R13 R12
       95 GETTABLEKS                       R12 R0 K10 ["VRCameraFocusFrozen"]
       97 JUMPIFNOT                        R12 ; [+1]
       98 JUMPIF                           R10 ; [+3]
       99 GETTABLEKS                       R12 R0 K9 ["needsReset"]
      101 JUMPIFNOT                        R12 ; [+65]
      102 GETUPVAL                         R12 0
      103 NAMECALL                         R12 R12 K21 ["RecenterUserHeadCFrame"]
      105 CALL                             R12 1 0
      106 LOADB                            R12 0
      107 SETTABLEKS                       R12 R0 K10 ["VRCameraFocusFrozen"]
      109 LOADB                            R12 0
      110 SETTABLEKS                       R12 R0 K9 ["needsReset"]
      112 SETTABLEKS                       R5 R0 K11 ["lastCameraResetPosition"]
      114 NAMECALL                         R12 R0 K22 ["ResetZoom"]
      116 CALL                             R12 1 0
      117 NAMECALL                         R12 R0 K23 ["StartFadeFromBlack"]
      119 CALL                             R12 1 0
      120 NAMECALL                         R12 R0 K24 ["GetHumanoid"]
      122 CALL                             R12 1 1
      123 GETTABLEKS                       R14 R12 K25 ["Torso"]
      125 JUMPIFNOT                        R14 ; [+7]
      126 GETTABLEKS                       R13 R12 K25 ["Torso"]
      128 GETTABLEKS                       R13 R13 K18 ["CFrame"]
      130 GETTABLEKS                       R13 R13 K26 ["lookVector"]
      132 JUMPIF                           R13 ; [+1]
      133 LOADK                            R13 K27 [{1, 0, 0}]
      134 GETTABLEKS                       R15 R13 K28 ["X"]
      136 LOADN                            R16 0
      137 GETTABLEKS                       R17 R13 K29 ["Z"]
      139 FASTCALL                         VECTOR ; [+2]
      140 GETIMPORT                        R14 K32 [Vector3.new]
      142 CALL                             R14 3 1
      143 GETTABLEKS                       R16 R3 K33 ["Position"]
      145 MUL                              R17 R14 R6
      146 SUB                              R15 R16 R17
      147 GETTABLEKS                       R17 R3 K33 ["Position"]
      149 GETTABLEKS                       R17 R17 K28 ["X"]
      151 GETTABLEKS                       R18 R15 K34 ["Y"]
      153 GETTABLEKS                       R19 R3 K33 ["Position"]
      155 GETTABLEKS                       R19 R19 K29 ["Z"]
      157 FASTCALL                         VECTOR ; [+2]
      158 GETIMPORT                        R16 K32 [Vector3.new]
      160 CALL                             R16 3 1
      161 GETIMPORT                        R17 K35 [CFrame.new]
      163 MOVE                             R18 R15
      164 MOVE                             R19 R16
      165 CALL                             R17 2 1
      166 MOVE                             R2 R17
      167 RETURN                           R2 2

PROTO_7:
        0 GETIMPORT                        R6 K1 [workspace]
        2 GETTABLEKS                       R6 R6 K2 ["CurrentCamera"]
        4 NAMECALL                         R7 R0 K3 ["GetCameraToSubjectDistance"]
        6 CALL                             R7 1 1
        7 MOVE                             R10 R5
        8 MOVE                             R11 R1
        9 NAMECALL                         R8 R0 K4 ["GetVRFocus"]
       11 CALL                             R8 3 1
       12 GETTABLEKS                       R9 R0 K5 ["needsReset"]
       14 JUMPIFNOT                        R9 ; [+13]
       15 LOADB                            R9 0
       16 SETTABLEKS                       R9 R0 K5 ["needsReset"]
       18 GETUPVAL                         R9 0
       19 NAMECALL                         R9 R9 K6 ["RecenterUserHeadCFrame"]
       21 CALL                             R9 1 0
       22 NAMECALL                         R9 R0 K7 ["ResetZoom"]
       24 CALL                             R9 1 0
       25 NAMECALL                         R9 R0 K8 ["StartFadeFromBlack"]
       27 CALL                             R9 1 0
       28 GETTABLEKS                       R9 R0 K9 ["recentered"]
       30 JUMPIFNOT                        R9 ; [+31]
       31 NAMECALL                         R9 R0 K10 ["GetSubjectCFrame"]
       33 CALL                             R9 1 1
       34 JUMPIF                           R9 ; [+5]
       35 GETTABLEKS                       R10 R6 K11 ["CFrame"]
       37 GETTABLEKS                       R11 R6 K12 ["Focus"]
       39 RETURN                           R10 2
       40 GETTABLEKS                       R11 R9 K13 ["Rotation"]
       42 MUL                              R10 R8 R11
       43 GETIMPORT                        R11 K15 [CFrame.new]
       45 LOADN                            R12 0
       46 LOADN                            R13 0
       47 MOVE                             R14 R7
       48 CALL                             R11 3 1
       49 MUL                              R2 R10 R11
       50 MOVE                             R12 R2
       51 NAMECALL                         R10 R8 K16 ["ToObjectSpace"]
       53 CALL                             R10 2 1
       54 SETTABLEKS                       R10 R0 K17 ["focusOffset"]
       56 LOADB                            R10 0
       57 SETTABLEKS                       R10 R0 K9 ["recentered"]
       59 MOVE                             R10 R2
       60 MOVE                             R11 R8
       61 RETURN                           R10 2
       62 GETTABLEKS                       R11 R0 K17 ["focusOffset"]
       64 NAMECALL                         R9 R8 K18 ["ToWorldSpace"]
       66 CALL                             R9 2 1
       67 SUB                              R10 R4 R5
       68 GETTABLEKS                       R11 R0 K19 ["controlModule"]
       70 GETTABLEKS                       R12 R11 K20 ["inputMoveVector"]
       72 GETTABLEKS                       R13 R10 K21 ["magnitude"]
       74 LOADK                            R14 K22 [0.01]
       75 JUMPIFLT                         R14 R13 ; [+6]
       77 GETTABLEKS                       R13 R12 K21 ["magnitude"]
       79 LOADN                            R14 0
       80 JUMPIFNOTLT                      R14 R13 ; [+53]
       82 NAMECALL                         R13 R11 K23 ["GetEstimatedVRTorsoFrame"]
       84 CALL                             R13 1 1
       85 GETTABLEKS                       R14 R13 K13 ["Rotation"]
       87 GETTABLEKS                       R16 R13 K24 ["Position"]
       89 GETTABLEKS                       R17 R6 K25 ["HeadScale"]
       91 MUL                              R15 R16 R17
       92 ADD                              R13 R14 R15
       93 GETTABLEKS                       R15 R6 K11 ["CFrame"]
       95 MUL                              R14 R15 R13
       96 GETTABLEKS                       R15 R14 K26 ["LookVector"]
       98 GETTABLEKS                       R18 R15 K27 ["X"]
      100 LOADN                            R19 0
      101 GETTABLEKS                       R20 R15 K28 ["Z"]
      103 FASTCALL                         VECTOR ; [+2]
      104 GETIMPORT                        R17 K30 [Vector3.new]
      106 CALL                             R17 3 1
      107 GETTABLEKS                       R17 R17 K31 ["Unit"]
      109 MUL                              R16 R17 R7
      110 GETTABLEKS                       R18 R8 K24 ["Position"]
      112 SUB                              R17 R18 R16
      113 GETIMPORT                        R19 K15 [CFrame.new]
      115 GETTABLEKS                       R22 R6 K11 ["CFrame"]
      117 GETTABLEKS                       R22 R22 K24 ["Position"]
      119 ADD                              R21 R22 R17
      120 GETTABLEKS                       R22 R14 K24 ["Position"]
      122 SUB                              R20 R21 R22
      123 CALL                             R19 1 1
      124 GETTABLEKS                       R20 R9 K13 ["Rotation"]
      126 MUL                              R18 R19 R20
      127 MOVE                             R21 R18
      128 LOADK                            R22 K22 [0.01]
      129 NAMECALL                         R19 R9 K32 ["Lerp"]
      131 CALL                             R19 3 1
      132 MOVE                             R2 R19
      133 JUMP                             ; [+1]
      134 MOVE                             R2 R9
      135 MOVE                             R15 R1
      136 NAMECALL                         R13 R0 K33 ["getRotation"]
      138 CALL                             R13 2 1
      139 FASTCALL1                        MATH_ABS R13 ; [+3]
      140 MOVE                             R15 R13
      141 GETIMPORT                        R14 K36 [math.abs]
      143 CALL                             R14 1 1
      144 LOADN                            R15 0
      145 JUMPIFNOTLT                      R15 R14 ; [+13]
      147 MOVE                             R16 R2
      148 NAMECALL                         R14 R8 K16 ["ToObjectSpace"]
      150 CALL                             R14 2 1
      151 GETIMPORT                        R16 K38 [CFrame.Angles]
      153 LOADN                            R17 0
      154 MINUS                            R18 R13
      155 LOADN                            R19 0
      156 CALL                             R16 3 1
      157 MUL                              R15 R8 R16
      158 MUL                              R2 R15 R14
      159 MOVE                             R16 R2
      160 NAMECALL                         R14 R8 K16 ["ToObjectSpace"]
      162 CALL                             R14 2 1
      163 SETTABLEKS                       R14 R0 K17 ["focusOffset"]
      165 GETIMPORT                        R14 K15 [CFrame.new]
      167 LOADN                            R15 0
      168 LOADN                            R16 0
      169 MINUS                            R17 R7
      170 CALL                             R14 3 1
      171 MUL                              R3 R2 R14
      172 RETURN                           R2 2

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["LeaveFirstPerson"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K1 ["needsReset"]
        8 GETTABLEKS                       R1 R0 K2 ["VRBlur"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K2 ["VRBlur"]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R1 K3 ["Visible"]
       16 GETTABLEKS                       R1 R0 K4 ["characterOrientation"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETTABLEKS                       R1 R0 K4 ["characterOrientation"]
       21 LOADB                            R2 0
       22 SETTABLEKS                       R2 R1 K5 ["Enabled"]
       24 NAMECALL                         R1 R0 K6 ["GetHumanoid"]
       26 CALL                             R1 1 1
       27 JUMPIFNOT                        R1 ; [+4]
       28 GETTABLEKS                       R2 R0 K7 ["savedAutoRotate"]
       30 SETTABLEKS                       R2 R1 K8 ["AutoRotate"]
       32 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["VRService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [require]
       15 GETIMPORT                        R3 K8 [script]
       17 GETTABLEKS                       R3 R3 K9 ["Parent"]
       19 LOADK                            R5 K10 ["CameraInput"]
       20 NAMECALL                         R3 R3 K11 ["WaitForChild"]
       22 CALL                             R3 2 -1
       23 CALL                             R2 -1 1
       24 GETIMPORT                        R3 K6 [require]
       26 GETIMPORT                        R4 K8 [script]
       28 GETTABLEKS                       R4 R4 K9 ["Parent"]
       30 LOADK                            R6 K12 ["CameraUtils"]
       31 NAMECALL                         R4 R4 K11 ["WaitForChild"]
       33 CALL                             R4 2 -1
       34 CALL                             R3 -1 1
       35 GETIMPORT                        R4 K6 [require]
       37 GETIMPORT                        R5 K8 [script]
       39 GETTABLEKS                       R5 R5 K9 ["Parent"]
       41 LOADK                            R7 K13 ["VRCameraTeleportDetector"]
       42 NAMECALL                         R5 R5 K11 ["WaitForChild"]
       44 CALL                             R5 2 -1
       45 CALL                             R4 -1 1
       46 GETIMPORT                        R5 K6 [require]
       48 GETIMPORT                        R6 K8 [script]
       50 GETTABLEKS                       R6 R6 K9 ["Parent"]
       52 GETTABLEKS                       R6 R6 K9 ["Parent"]
       54 LOADK                            R8 K14 ["CommonUtils"]
       55 NAMECALL                         R6 R6 K11 ["WaitForChild"]
       57 CALL                             R6 2 -1
       58 CALL                             R5 -1 1
       59 GETTABLEKS                       R6 R5 K15 ["get"]
       61 LOADK                            R7 K16 ["FlagUtil"]
       62 CALL                             R6 1 1
       63 GETTABLEKS                       R7 R6 K17 ["getUserFlag"]
       65 LOADK                            R8 K18 ["UserVRRecenterOnExternalTeleport"]
       66 CALL                             R7 1 1
       67 GETTABLEKS                       R8 R6 K17 ["getUserFlag"]
       69 LOADK                            R9 K19 ["UserVRSkipOcclusionInFirstPerson"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K6 [require]
       73 GETIMPORT                        R10 K8 [script]
       75 GETTABLEKS                       R10 R10 K9 ["Parent"]
       77 LOADK                            R12 K20 ["VRBaseCamera"]
       78 NAMECALL                         R10 R10 K11 ["WaitForChild"]
       80 CALL                             R10 2 -1
       81 CALL                             R9 -1 1
       82 NEWTABLE                         R11 16 0
       84 FASTCALL2                        SETMETATABLE R11 R9 ; [+4]
       86 MOVE                             R12 R9
       87 GETIMPORT                        R10 K22 [setmetatable]
       89 CALL                             R10 2 1
       90 SETTABLEKS                       R10 R10 K23 ["__index"]
       92 DUPCLOSURE                       R11 K24 [PROTO_0]
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R10
       95 SETTABLEKS                       R11 R10 K25 ["new"]
       97 DUPCLOSURE                       R11 K26 [PROTO_1]
       98 CAPTURE                          VAL R9
       99 SETTABLEKS                       R11 R10 K27 ["Reset"]
      101 DUPCLOSURE                       R11 K28 [PROTO_2]
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R1
      105 SETTABLEKS                       R11 R10 K29 ["Update"]
      107 DUPCLOSURE                       R11 K30 [PROTO_3]
      108 SETTABLEKS                       R11 R10 K31 ["GetAvatarFeetWorldYValue"]
      110 DUPCLOSURE                       R11 K32 [PROTO_4]
      111 SETTABLEKS                       R11 R10 K33 ["UpdateFirstPersonTransform"]
      113 DUPCLOSURE                       R11 K34 [PROTO_5]
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R4
      118 SETTABLEKS                       R11 R10 K35 ["UpdateImmersionCamera"]
      120 DUPCLOSURE                       R11 K36 [PROTO_6]
      121 CAPTURE                          VAL R1
      122 SETTABLEKS                       R11 R10 K37 ["UpdateThirdPersonComfortTransform"]
      124 DUPCLOSURE                       R11 K38 [PROTO_7]
      125 CAPTURE                          VAL R1
      126 SETTABLEKS                       R11 R10 K39 ["UpdateThirdPersonFollowTransform"]
      128 DUPCLOSURE                       R11 K40 [PROTO_8]
      129 CAPTURE                          VAL R9
      130 SETTABLEKS                       R11 R10 K41 ["LeaveFirstPerson"]
      132 RETURN                           R10 1
