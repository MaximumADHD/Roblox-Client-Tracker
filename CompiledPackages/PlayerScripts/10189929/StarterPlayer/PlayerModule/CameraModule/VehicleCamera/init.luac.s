PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["XVector"]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["Dot"]
        5 CALL                             R3 2 1
        6 FASTCALL1                        MATH_ABS R3 ; [+2]
        7 GETIMPORT                        R2 K4 [math.abs]
        9 CALL                             R2 1 1
       10 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["YVector"]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["Dot"]
        5 CALL                             R3 2 1
        6 FASTCALL1                        MATH_ABS R3 ; [+2]
        7 GETIMPORT                        R2 K4 [math.abs]
        9 CALL                             R2 1 1
       10 RETURN                           R2 1

PROTO_2:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        7 GETIMPORT                        R0 K2 [setmetatable]
        9 CALL                             R0 2 1
       10 NAMECALL                         R1 R0 K3 ["Reset"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NAMECALL                         R2 R0 K1 ["GetSubjectCFrame"]
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 1
        7 SETTABLEKS                       R1 R0 K2 ["vehicleCameraCore"]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["new"]
       12 LOADN                            R2 0
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K3 ["pitchBaseAngle"]
       16 FASTCALL1                        MATH_RAD R5 ; [+2]
       17 GETIMPORT                        R4 K6 [math.rad]
       19 CALL                             R4 1 1
       20 MINUS                            R3 R4
       21 CALL                             R1 2 1
       22 SETTABLEKS                       R1 R0 K7 ["pitchSpring"]
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K0 ["new"]
       27 LOADN                            R2 0
       28 LOADN                            R3 0
       29 CALL                             R1 2 1
       30 SETTABLEKS                       R1 R0 K8 ["yawSpring"]
       32 LOADN                            R1 0
       33 SETTABLEKS                       R1 R0 K9 ["lastPanTick"]
       35 GETIMPORT                        R1 K11 [workspace]
       37 GETTABLEKS                       R1 R1 K12 ["CurrentCamera"]
       39 MOVE                             R2 R1
       40 JUMPIFNOT                        R2 ; [+2]
       41 GETTABLEKS                       R2 R1 K13 ["CameraSubject"]
       43 FASTCALL1                        ASSERT R1 ; [+3]
       44 MOVE                             R4 R1
       45 GETIMPORT                        R3 K15 [assert]
       47 CALL                             R3 1 0
       48 FASTCALL1                        ASSERT R2 ; [+3]
       49 MOVE                             R4 R2
       50 GETIMPORT                        R3 K15 [assert]
       52 CALL                             R3 1 0
       53 LOADK                            R6 K16 ["VehicleSeat"]
       54 NAMECALL                         R4 R2 K17 ["IsA"]
       56 CALL                             R4 2 -1
       57 FASTCALL                         ASSERT ; [+2]
       58 GETIMPORT                        R3 K15 [assert]
       60 CALL                             R3 -1 0
       61 LOADB                            R5 1
       62 NAMECALL                         R3 R2 K18 ["GetConnectedParts"]
       64 CALL                             R3 2 1
       65 GETUPVAL                         R4 3
       66 GETTABLEKS                       R4 R4 K19 ["getLooseBoundingSphere"]
       68 MOVE                             R5 R3
       69 CALL                             R4 1 2
       70 FASTCALL2K                       MATH_MAX R5 K20 ; [+5]
       72 MOVE                             R7 R5
       73 LOADK                            R8 K20 [5]
       74 GETIMPORT                        R6 K22 [math.max]
       76 CALL                             R6 2 1
       77 MOVE                             R5 R6
       78 SETTABLEKS                       R5 R0 K23 ["assemblyRadius"]
       80 GETTABLEKS                       R7 R2 K24 ["CFrame"]
       82 NAMECALL                         R7 R7 K25 ["Inverse"]
       84 CALL                             R7 1 1
       85 MUL                              R6 R7 R4
       86 SETTABLEKS                       R6 R0 K26 ["assemblyOffset"]
       88 NEWTABLE                         R6 0 0
       90 SETTABLEKS                       R6 R0 K27 ["gamepadZoomLevels"]
       92 GETUPVAL                         R6 4
       93 LOADNIL                          R7
       94 LOADNIL                          R8
       95 FORGPREP                         R6
       96 GETTABLEKS                       R12 R0 K27 ["gamepadZoomLevels"]
       98 GETTABLEKS                       R15 R0 K23 ["assemblyRadius"]
      100 MUL                              R14 R10 R15
      101 DIVK                             R13 R14 K28 [10]
      102 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      104 GETIMPORT                        R11 K31 [table.insert]
      106 CALL                             R11 2 0
      107 FORGLOOP                         R6 2 ; [-12]
      109 GETTABLEKS                       R9 R0 K27 ["gamepadZoomLevels"]
      111 GETTABLEKS                       R11 R0 K27 ["gamepadZoomLevels"]
      113 LENGTH                           R10 R11
      114 GETTABLE                         R8 R9 R10
      115 NAMECALL                         R6 R0 K32 ["SetCameraToSubjectDistance"]
      117 CALL                             R6 2 0
      118 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["yawSpring"]
        2 GETTABLEKS                       R4 R0 K1 ["pitchSpring"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K2 ["getRotation"]
        7 MOVE                             R6 R1
        8 CALL                             R5 1 1
        9 GETTABLEKS                       R7 R5 K3 ["X"]
       11 MINUS                            R6 R7
       12 GETTABLEKS                       R8 R5 K4 ["Y"]
       14 MINUS                            R7 R8
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R10 R3 K5 ["pos"]
       18 ADD                              R9 R10 R6
       19 CALL                             R8 1 1
       20 SETTABLEKS                       R8 R3 K5 ["pos"]
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R11 R4 K5 ["pos"]
       25 ADD                              R10 R11 R7
       26 LOADK                            R11 K6 [-1.3962634015954636]
       27 LOADK                            R12 K7 [1.3962634015954636]
       28 FASTCALL                         MATH_CLAMP ; [+2]
       29 GETIMPORT                        R9 K10 [math.clamp]
       31 CALL                             R9 3 1
       32 CALL                             R8 1 1
       33 SETTABLEKS                       R8 R4 K5 ["pos"]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K11 ["getRotationActivated"]
       38 CALL                             R8 0 1
       39 JUMPIFNOT                        R8 ; [+5]
       40 GETIMPORT                        R8 K14 [os.clock]
       42 CALL                             R8 0 1
       43 SETTABLEKS                       R8 R0 K15 ["lastPanTick"]
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R10 R10 K16 ["pitchBaseAngle"]
       48 FASTCALL1                        MATH_RAD R10 ; [+2]
       49 GETIMPORT                        R9 K18 [math.rad]
       51 CALL                             R9 1 1
       52 MINUS                            R8 R9
       53 GETUPVAL                         R10 2
       54 GETTABLEKS                       R10 R10 K19 ["pitchDeadzoneAngle"]
       56 FASTCALL1                        MATH_RAD R10 ; [+2]
       57 GETIMPORT                        R9 K18 [math.rad]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R11 K14 [os.clock]
       62 CALL                             R11 0 1
       63 GETTABLEKS                       R12 R0 K15 ["lastPanTick"]
       65 SUB                              R10 R11 R12
       66 GETUPVAL                         R11 2
       67 GETTABLEKS                       R11 R11 K20 ["autocorrectDelay"]
       69 JUMPIFNOTLT                      R11 R10 ; [+53]
       71 GETUPVAL                         R10 3
       72 MOVE                             R11 R2
       73 GETUPVAL                         R12 2
       74 GETTABLEKS                       R12 R12 K21 ["autocorrectMinCarSpeed"]
       76 GETUPVAL                         R13 2
       77 GETTABLEKS                       R13 R13 K22 ["autocorrectMaxCarSpeed"]
       79 LOADN                            R14 0
       80 GETUPVAL                         R15 2
       81 GETTABLEKS                       R15 R15 K23 ["autocorrectResponse"]
       83 CALL                             R10 5 1
       84 SETTABLEKS                       R10 R3 K24 ["freq"]
       86 SETTABLEKS                       R10 R4 K24 ["freq"]
       88 GETTABLEKS                       R11 R3 K24 ["freq"]
       90 LOADK                            R12 K25 [0.001]
       91 JUMPIFNOTLT                      R11 R12 ; [+4]
       93 LOADN                            R11 0
       94 SETTABLEKS                       R11 R3 K26 ["vel"]
       96 GETTABLEKS                       R11 R4 K24 ["freq"]
       98 LOADK                            R12 K25 [0.001]
       99 JUMPIFNOTLT                      R11 R12 ; [+4]
      101 LOADN                            R11 0
      102 SETTABLEKS                       R11 R4 K26 ["vel"]
      104 GETUPVAL                         R12 1
      105 GETTABLEKS                       R14 R4 K5 ["pos"]
      107 SUB                              R13 R8 R14
      108 CALL                             R12 1 1
      109 FASTCALL1                        MATH_ABS R12 ; [+2]
      110 GETIMPORT                        R11 K28 [math.abs]
      112 CALL                             R11 1 1
      113 JUMPIFNOTLE                      R11 R9 ; [+6]
      115 GETTABLEKS                       R11 R4 K5 ["pos"]
      117 SETTABLEKS                       R11 R4 K29 ["goal"]
      119 JUMP                             ; [+17]
      120 SETTABLEKS                       R8 R4 K29 ["goal"]
      122 JUMP                             ; [+14]
      123 LOADN                            R10 0
      124 SETTABLEKS                       R10 R3 K24 ["freq"]
      126 LOADN                            R10 0
      127 SETTABLEKS                       R10 R3 K26 ["vel"]
      129 LOADN                            R10 0
      130 SETTABLEKS                       R10 R4 K24 ["freq"]
      132 LOADN                            R10 0
      133 SETTABLEKS                       R10 R4 K26 ["vel"]
      135 SETTABLEKS                       R8 R4 K29 ["goal"]
      137 GETIMPORT                        R10 K32 [CFrame.fromEulerAnglesYXZ]
      139 MOVE                             R13 R1
      140 NAMECALL                         R11 R4 K33 ["step"]
      142 CALL                             R11 2 1
      143 MOVE                             R14 R1
      144 NAMECALL                         R12 R3 K33 ["step"]
      146 CALL                             R12 2 1
      147 LOADN                            R13 0
      148 CALL                             R10 3 -1
      149 RETURN                           R10 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["assemblyOffset"]
        2 LOADN                            R4 0
        3 GETTABLEKS                       R6 R0 K1 ["assemblyRadius"]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K2 ["verticalCenterOffset"]
        8 MUL                              R5 R6 R7
        9 LOADN                            R6 0
       10 FASTCALL                         VECTOR ; [+2]
       11 GETIMPORT                        R3 K5 [Vector3.new]
       13 CALL                             R3 3 1
       14 ADD                              R1 R2 R3
       15 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Character"]
        3 JUMPIFNOT                        R2 ; [+20]
        4 GETTABLEKS                       R3 R2 K1 ["Parent"]
        6 JUMPIFNOT                        R3 ; [+17]
        7 LOADK                            R5 K2 ["Head"]
        8 NAMECALL                         R3 R2 K3 ["FindFirstChild"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+12]
       12 LOADK                            R6 K4 ["BasePart"]
       13 NAMECALL                         R4 R3 K5 ["IsA"]
       15 CALL                             R4 2 1
       16 JUMPIFNOT                        R4 ; [+7]
       17 NAMECALL                         R5 R1 K6 ["Inverse"]
       19 CALL                             R5 1 1
       20 GETTABLEKS                       R6 R3 K7 ["Position"]
       22 MUL                              R4 R5 R6
       23 RETURN                           R4 1
       24 NAMECALL                         R3 R0 K8 ["_GetThirdPersonLocalOffset"]
       26 CALL                             R3 1 -1
       27 RETURN                           R3 -1

PROTO_8:
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R1 R1 K2 ["CurrentCamera"]
        4 MOVE                             R2 R1
        5 JUMPIFNOT                        R2 ; [+2]
        6 GETTABLEKS                       R2 R1 K3 ["CameraSubject"]
        8 GETTABLEKS                       R3 R0 K4 ["vehicleCameraCore"]
       10 FASTCALL1                        ASSERT R1 ; [+3]
       11 MOVE                             R5 R1
       12 GETIMPORT                        R4 K6 [assert]
       14 CALL                             R4 1 0
       15 FASTCALL1                        ASSERT R2 ; [+3]
       16 MOVE                             R5 R2
       17 GETIMPORT                        R4 K6 [assert]
       19 CALL                             R4 1 0
       20 LOADK                            R7 K7 ["VehicleSeat"]
       21 NAMECALL                         R5 R2 K8 ["IsA"]
       23 CALL                             R5 2 -1
       24 FASTCALL                         ASSERT ; [+2]
       25 GETIMPORT                        R4 K6 [assert]
       27 CALL                             R4 -1 0
       28 GETUPVAL                         R4 0
       29 LOADN                            R5 0
       30 SETUPVAL                         R5 0
       31 NAMECALL                         R5 R0 K9 ["GetSubjectCFrame"]
       33 CALL                             R5 1 1
       34 NAMECALL                         R6 R0 K10 ["GetSubjectVelocity"]
       36 CALL                             R6 1 1
       37 NAMECALL                         R7 R0 K11 ["GetSubjectRotVelocity"]
       39 CALL                             R7 1 1
       40 GETTABLEKS                       R11 R5 K12 ["ZVector"]
       42 NAMECALL                         R9 R6 K13 ["Dot"]
       44 CALL                             R9 2 1
       45 FASTCALL1                        MATH_ABS R9 ; [+2]
       46 GETIMPORT                        R8 K16 [math.abs]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R10 R5 K17 ["YVector"]
       51 MOVE                             R12 R7
       52 NAMECALL                         R10 R10 K13 ["Dot"]
       54 CALL                             R10 2 1
       55 FASTCALL1                        MATH_ABS R10 ; [+2]
       56 GETIMPORT                        R9 K16 [math.abs]
       58 CALL                             R9 1 1
       59 GETTABLEKS                       R11 R5 K18 ["XVector"]
       61 MOVE                             R13 R7
       62 NAMECALL                         R11 R11 K13 ["Dot"]
       64 CALL                             R11 2 1
       65 FASTCALL1                        MATH_ABS R11 ; [+2]
       66 GETIMPORT                        R10 K16 [math.abs]
       68 CALL                             R10 1 1
       69 MOVE                             R13 R4
       70 NAMECALL                         R11 R0 K19 ["StepZoom"]
       72 CALL                             R11 2 1
       73 MOVE                             R14 R4
       74 MOVE                             R15 R8
       75 NAMECALL                         R12 R0 K20 ["_StepRotation"]
       77 CALL                             R12 3 1
       78 GETUPVAL                         R13 1
       79 MOVE                             R14 R11
       80 LOADK                            R15 K21 [0.5]
       81 GETTABLEKS                       R16 R0 K22 ["assemblyRadius"]
       83 LOADN                            R17 1
       84 LOADN                            R18 0
       85 CALL                             R13 5 1
       86 NAMECALL                         R14 R0 K23 ["_GetThirdPersonLocalOffset"]
       88 CALL                             R14 1 1
       89 MOVE                             R17 R5
       90 NAMECALL                         R15 R0 K24 ["_GetFirstPersonLocalOffset"]
       92 CALL                             R15 2 1
       93 MOVE                             R18 R15
       94 MOVE                             R19 R13
       95 NAMECALL                         R16 R14 K25 ["Lerp"]
       97 CALL                             R16 3 1
       98 MOVE                             R19 R5
       99 NAMECALL                         R17 R3 K26 ["setTransform"]
      101 CALL                             R17 2 0
      102 MOVE                             R19 R4
      103 MOVE                             R20 R10
      104 MOVE                             R21 R9
      105 MOVE                             R22 R13
      106 NAMECALL                         R17 R3 K27 ["step"]
      108 CALL                             R17 5 1
      109 GETIMPORT                        R20 K30 [CFrame.new]
      111 MUL                              R21 R5 R16
      112 CALL                             R20 1 1
      113 MUL                              R19 R20 R17
      114 MUL                              R18 R19 R12
      115 GETIMPORT                        R20 K30 [CFrame.new]
      117 LOADN                            R21 0
      118 LOADN                            R22 0
      119 MOVE                             R23 R11
      120 CALL                             R20 3 1
      121 MUL                              R19 R18 R20
      122 MOVE                             R20 R19
      123 MOVE                             R21 R18
      124 RETURN                           R20 2

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 3
        3 LOADN                            R1 0
        4 LOADN                            R2 15
        5 LOADN                            R3 30
        6 SETLIST                          R0 R1 3 [1]
        8 GETIMPORT                        R1 K1 [game]
       10 LOADK                            R3 K2 ["Players"]
       11 NAMECALL                         R1 R1 K3 ["GetService"]
       13 CALL                             R1 2 1
       14 GETIMPORT                        R2 K1 [game]
       16 LOADK                            R4 K4 ["RunService"]
       17 NAMECALL                         R2 R2 K3 ["GetService"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETIMPORT                        R4 K8 [script]
       24 GETTABLEKS                       R4 R4 K9 ["Parent"]
       26 LOADK                            R6 K10 ["BaseCamera"]
       27 NAMECALL                         R4 R4 K11 ["WaitForChild"]
       29 CALL                             R4 2 -1
       30 CALL                             R3 -1 1
       31 GETIMPORT                        R4 K6 [require]
       33 GETIMPORT                        R5 K8 [script]
       35 GETTABLEKS                       R5 R5 K9 ["Parent"]
       37 LOADK                            R7 K12 ["CameraInput"]
       38 NAMECALL                         R5 R5 K11 ["WaitForChild"]
       40 CALL                             R5 2 -1
       41 CALL                             R4 -1 1
       42 GETIMPORT                        R5 K6 [require]
       44 GETIMPORT                        R6 K8 [script]
       46 GETTABLEKS                       R6 R6 K9 ["Parent"]
       48 LOADK                            R8 K13 ["CameraUtils"]
       49 NAMECALL                         R6 R6 K11 ["WaitForChild"]
       51 CALL                             R6 2 -1
       52 CALL                             R5 -1 1
       53 GETIMPORT                        R6 K6 [require]
       55 GETIMPORT                        R7 K8 [script]
       57 GETTABLEKS                       R7 R7 K9 ["Parent"]
       59 LOADK                            R9 K14 ["ZoomController"]
       60 NAMECALL                         R7 R7 K11 ["WaitForChild"]
       62 CALL                             R7 2 -1
       63 CALL                             R6 -1 1
       64 GETIMPORT                        R7 K6 [require]
       66 GETIMPORT                        R8 K8 [script]
       68 LOADK                            R10 K15 ["VehicleCameraCore"]
       69 NAMECALL                         R8 R8 K11 ["WaitForChild"]
       71 CALL                             R8 2 -1
       72 CALL                             R7 -1 1
       73 GETIMPORT                        R8 K6 [require]
       75 GETIMPORT                        R9 K8 [script]
       77 LOADK                            R11 K16 ["VehicleCameraConfig"]
       78 NAMECALL                         R9 R9 K11 ["WaitForChild"]
       80 CALL                             R9 2 -1
       81 CALL                             R8 -1 1
       82 GETTABLEKS                       R9 R1 K17 ["LocalPlayer"]
       84 GETTABLEKS                       R10 R5 K18 ["map"]
       86 GETTABLEKS                       R11 R5 K19 ["Spring"]
       88 GETTABLEKS                       R12 R5 K20 ["mapClamp"]
       90 GETTABLEKS                       R13 R5 K21 ["sanitizeAngle"]
       92 DUPCLOSURE                       R14 K22 [PROTO_0]
       93 DUPCLOSURE                       R15 K23 [PROTO_1]
       94 LOADK                            R16 K24 [0.016666666666666666]
       95 GETTABLEKS                       R17 R2 K25 ["Stepped"]
       97 NEWCLOSURE                       R19 P2
       98 CAPTURE                          REF R16
       99 NAMECALL                         R17 R17 K26 ["Connect"]
      101 CALL                             R17 2 0
      102 NEWTABLE                         R18 8 0
      104 FASTCALL2                        SETMETATABLE R18 R3 ; [+4]
      106 MOVE                             R19 R3
      107 GETIMPORT                        R17 K28 [setmetatable]
      109 CALL                             R17 2 1
      110 SETTABLEKS                       R17 R17 K29 ["__index"]
      112 DUPCLOSURE                       R18 K30 [PROTO_3]
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R17
      115 SETTABLEKS                       R18 R17 K31 ["new"]
      117 DUPCLOSURE                       R18 K32 [PROTO_4]
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R0
      123 SETTABLEKS                       R18 R17 K33 ["Reset"]
      125 DUPCLOSURE                       R18 K34 [PROTO_5]
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R12
      130 SETTABLEKS                       R18 R17 K35 ["_StepRotation"]
      132 DUPCLOSURE                       R18 K36 [PROTO_6]
      133 CAPTURE                          VAL R8
      134 SETTABLEKS                       R18 R17 K37 ["_GetThirdPersonLocalOffset"]
      136 DUPCLOSURE                       R18 K38 [PROTO_7]
      137 CAPTURE                          VAL R9
      138 SETTABLEKS                       R18 R17 K39 ["_GetFirstPersonLocalOffset"]
      140 NEWCLOSURE                       R18 P8
      141 CAPTURE                          REF R16
      142 CAPTURE                          VAL R12
      143 SETTABLEKS                       R18 R17 K40 ["Update"]
      145 CLOSEUPVALS                      R16
      146 RETURN                           R17 1
