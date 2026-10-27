PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["YVector"]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["Dot"]
        5 CALL                             R3 2 1
        6 FASTCALL1                        MATH_ABS R3 ; [+2]
        7 GETIMPORT                        R2 K4 [math.abs]
        9 CALL                             R2 1 1
       10 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R4 R1 K0 ["X"]
        2 GETTABLEKS                       R5 R1 K1 ["Z"]
        4 FASTCALL2                        MATH_ATAN2 R4 R5 ; [+3]
        6 GETIMPORT                        R3 K4 [math.atan2]
        8 CALL                             R3 2 1
        9 GETIMPORT                        R5 K7 [CFrame.new]
       11 GETTABLEKS                       R7 R0 K8 ["Position"]
       13 MUL                              R8 R1 R2
       14 ADD                              R6 R7 R8
       15 CALL                             R5 1 1
       16 GETIMPORT                        R6 K10 [CFrame.Angles]
       18 LOADN                            R7 0
       19 MOVE                             R8 R3
       20 LOADN                            R9 0
       21 CALL                             R6 3 1
       22 MUL                              R4 R5 R6
       23 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R6 R1 K0 ["X"]
        2 GETTABLEKS                       R7 R1 K1 ["Z"]
        4 FASTCALL2                        MATH_ATAN2 R6 R7 ; [+3]
        6 GETIMPORT                        R5 K4 [math.atan2]
        8 CALL                             R5 2 1
        9 GETIMPORT                        R6 K7 [CFrame.new]
       11 GETTABLEKS                       R8 R0 K8 ["Position"]
       13 MUL                              R9 R1 R2
       14 ADD                              R7 R8 R9
       15 CALL                             R6 1 1
       16 GETIMPORT                        R7 K10 [CFrame.Angles]
       18 LOADN                            R8 0
       19 MOVE                             R9 R5
       20 LOADN                            R10 0
       21 CALL                             R7 3 1
       22 MUL                              R4 R6 R7
       23 GETIMPORT                        R5 K12 [workspace]
       25 GETTABLEKS                       R5 R5 K13 ["CurrentCamera"]
       27 JUMPIF                           R5 ; [+1]
       28 RETURN                           R4 1
       29 GETTABLEKS                       R6 R0 K8 ["Position"]
       31 GETTABLEKS                       R9 R4 K8 ["Position"]
       33 SUB                              R8 R9 R6
       34 LOADK                            R9 K14 [{1, 0, 1}]
       35 MUL                              R7 R8 R9
       36 GETTABLEKS                       R8 R7 K15 ["Magnitude"]
       38 LOADK                            R9 K16 [0.5]
       39 JUMPIFNOTLT                      R8 R9 ; [+2]
       41 RETURN                           R4 1
       42 NEWTABLE                         R9 0 1
       44 MOVE                             R10 R5
       45 SETLIST                          R9 R10 1 [1]
       47 JUMPIFNOT                        R3 ; [+7]
       48 FASTCALL2                        TABLE_INSERT R9 R3 ; [+5]
       50 MOVE                             R11 R9
       51 MOVE                             R12 R3
       52 GETIMPORT                        R10 K19 [table.insert]
       54 CALL                             R10 2 0
       55 GETUPVAL                         R10 0
       56 JUMPIFNOT                        R10 ; [+3]
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K20 ["Character"]
       60 JUMPIFNOT                        R10 ; [+7]
       61 FASTCALL2                        TABLE_INSERT R9 R10 ; [+5]
       63 MOVE                             R12 R9
       64 MOVE                             R13 R10
       65 GETIMPORT                        R11 K19 [table.insert]
       67 CALL                             R11 2 0
       68 GETUPVAL                         R11 1
       69 SETTABLEKS                       R9 R11 K21 ["FilterDescendantsInstances"]
       71 GETTABLEKS                       R11 R7 K22 ["Unit"]
       73 GETIMPORT                        R12 K12 [workspace]
       75 MOVE                             R14 R6
       76 MOVE                             R15 R7
       77 GETUPVAL                         R16 1
       78 NAMECALL                         R12 R12 K23 ["Raycast"]
       80 CALL                             R12 4 1
       81 JUMPIFNOT                        R12 ; [+35]
       82 GETTABLEKS                       R13 R12 K24 ["Normal"]
       84 MOVE                             R15 R11
       85 NAMECALL                         R13 R13 K25 ["Dot"]
       87 CALL                             R13 2 1
       88 LOADN                            R14 0
       89 JUMPIFNOTLT                      R13 R14 ; [+27]
       91 GETTABLEKS                       R15 R12 K8 ["Position"]
       93 SUB                              R14 R15 R6
       94 GETTABLEKS                       R14 R14 K15 ["Magnitude"]
       96 SUBK                             R13 R14 K16 [0.5]
       97 JUMPIFNOTLT                      R13 R8 ; [+19]
       99 FASTCALL2K                       MATH_MAX R13 K16 ; [+5]
      101 MOVE                             R15 R13
      102 LOADK                            R16 K16 [0.5]
      103 GETIMPORT                        R14 K27 [math.max]
      105 CALL                             R14 2 1
      106 GETIMPORT                        R16 K7 [CFrame.new]
      108 GETTABLEKS                       R18 R0 K8 ["Position"]
      110 MUL                              R19 R11 R14
      111 ADD                              R17 R18 R19
      112 CALL                             R16 1 1
      113 GETTABLEKS                       R17 R4 K28 ["Rotation"]
      115 MUL                              R15 R16 R17
      116 RETURN                           R15 1
      117 RETURN                           R4 1

PROTO_3:
        0 GETIMPORT                        R4 K1 [workspace]
        2 GETTABLEKS                       R4 R4 K2 ["CurrentCamera"]
        4 JUMPIF                           R4 ; [+4]
        5 LOADN                            R5 0
        6 NEWTABLE                         R6 0 0
        8 RETURN                           R5 2
        9 GETTABLEKS                       R5 R1 K3 ["Position"]
       11 GETUPVAL                         R6 0
       12 GETIMPORT                        R8 K7 [Enum.UserCFrame.Head]
       14 NAMECALL                         R6 R6 K8 ["GetUserCFrame"]
       16 CALL                             R6 2 1
       17 GETTABLEKS                       R7 R4 K9 ["HeadScale"]
       19 GETIMPORT                        R10 K12 [CFrame.new]
       21 GETTABLEKS                       R12 R6 K3 ["Position"]
       23 MUL                              R11 R12 R7
       24 CALL                             R10 1 1
       25 GETTABLEKS                       R11 R6 K13 ["Rotation"]
       27 MUL                              R9 R10 R11
       28 MUL                              R8 R0 R9
       29 GETTABLEKS                       R10 R8 K3 ["Position"]
       31 SUB                              R9 R10 R5
       32 GETTABLEKS                       R10 R9 K14 ["Magnitude"]
       34 LOADK                            R11 K15 [0.5]
       35 JUMPIFNOTLT                      R10 R11 ; [+5]
       37 LOADN                            R11 0
       38 NEWTABLE                         R12 0 0
       40 RETURN                           R11 2
       41 NEWTABLE                         R11 0 1
       43 MOVE                             R12 R4
       44 SETLIST                          R11 R12 1 [1]
       46 JUMPIFNOT                        R3 ; [+7]
       47 FASTCALL2                        TABLE_INSERT R11 R3 ; [+5]
       49 MOVE                             R13 R11
       50 MOVE                             R14 R3
       51 GETIMPORT                        R12 K18 [table.insert]
       53 CALL                             R12 2 0
       54 GETUPVAL                         R12 1
       55 JUMPIFNOT                        R12 ; [+3]
       56 GETUPVAL                         R12 1
       57 GETTABLEKS                       R12 R12 K19 ["Character"]
       59 JUMPIFNOT                        R12 ; [+7]
       60 FASTCALL2                        TABLE_INSERT R11 R12 ; [+5]
       62 MOVE                             R14 R11
       63 MOVE                             R15 R12
       64 GETIMPORT                        R13 K18 [table.insert]
       66 CALL                             R13 2 0
       67 GETUPVAL                         R13 2
       68 SETTABLEKS                       R11 R13 K20 ["FilterDescendantsInstances"]
       70 GETIMPORT                        R13 K1 [workspace]
       72 MOVE                             R15 R5
       73 MOVE                             R16 R9
       74 GETUPVAL                         R17 2
       75 NAMECALL                         R13 R13 K21 ["Raycast"]
       77 CALL                             R13 4 1
       78 JUMPIFNOT                        R13 ; [+68]
       79 GETTABLEKS                       R15 R13 K3 ["Position"]
       81 SUB                              R14 R15 R5
       82 GETTABLEKS                       R14 R14 K14 ["Magnitude"]
       84 JUMPIFNOTLT                      R14 R10 ; [+62]
       86 GETTABLEKS                       R15 R8 K22 ["LookVector"]
       88 GETTABLEKS                       R17 R9 K23 ["Unit"]
       90 MOVE                             R19 R15
       91 NAMECALL                         R17 R17 K24 ["Dot"]
       93 CALL                             R17 2 1
       94 MINUS                            R16 R17
       95 SUBRK                            R19 K26 [1] R16
       96 DIVK                             R18 R19 K25 [0.1339745962155613]
       97 LOADN                            R19 0
       98 LOADN                            R20 1
       99 FASTCALL                         MATH_CLAMP ; [+2]
      100 GETIMPORT                        R17 K29 [math.clamp]
      102 CALL                             R17 3 1
      103 DIV                              R19 R14 R2
      104 SUBRK                            R18 K26 [1] R19
      105 LOADK                            R22 K30 [0.15]
      106 FASTCALL3                        MATH_MAX R17 R18 R22
      108 MOVE                             R20 R17
      109 MOVE                             R21 R18
      110 GETIMPORT                        R19 K32 [math.max]
      112 CALL                             R19 3 1
      113 GETTABLEKS                       R20 R13 K3 ["Position"]
      115 GETTABLEKS                       R21 R8 K3 ["Position"]
      117 ADD                              R23 R20 R21
      118 DIVK                             R22 R23 K33 [2]
      119 LOADN                            R24 2
      120 LOADN                            R25 2
      121 SUB                              R26 R21 R20
      122 GETTABLEKS                       R26 R26 K14 ["Magnitude"]
      124 FASTCALL                         VECTOR ; [+2]
      125 GETIMPORT                        R23 K35 [Vector3.new]
      127 CALL                             R23 3 1
      128 GETIMPORT                        R24 K37 [CFrame.lookAt]
      130 MOVE                             R25 R22
      131 MOVE                             R26 R21
      132 CALL                             R24 2 1
      133 GETUPVAL                         R25 3
      134 SETTABLEKS                       R11 R25 K20 ["FilterDescendantsInstances"]
      136 GETIMPORT                        R25 K1 [workspace]
      138 MOVE                             R27 R24
      139 MOVE                             R28 R23
      140 GETUPVAL                         R29 3
      141 NAMECALL                         R25 R25 K38 ["GetPartBoundsInBox"]
      143 CALL                             R25 4 1
      144 MOVE                             R26 R19
      145 MOVE                             R27 R25
      146 RETURN                           R26 2
      147 LOADN                            R14 0
      148 NEWTABLE                         R15 0 0
      150 RETURN                           R14 2

PROTO_4:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        7 GETIMPORT                        R0 K2 [setmetatable]
        9 CALL                             R0 2 1
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K3 ["skipOcclusion"]
       13 NAMECALL                         R1 R0 K4 ["Reset"]
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K5 ["thirdPersonOptionChanged"]
       18 JUMPIFNOT                        R1 ; [+8]
       19 GETTABLEKS                       R1 R0 K5 ["thirdPersonOptionChanged"]
       21 NAMECALL                         R1 R1 K6 ["Disconnect"]
       23 CALL                             R1 1 0
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K5 ["thirdPersonOptionChanged"]
       27 GETUPVAL                         R1 2
       28 GETTABLEKS                       R1 R1 K7 ["Stepped"]
       30 NEWCLOSURE                       R3 P0
       31 CAPTURE                          UPVAL U3
       32 NAMECALL                         R1 R1 K8 ["Connect"]
       34 CALL                             R1 2 0
       35 RETURN                           R0 1

PROTO_6:
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R1 R1 K2 ["CurrentCamera"]
        4 MOVE                             R2 R1
        5 JUMPIFNOT                        R2 ; [+2]
        6 GETTABLEKS                       R2 R1 K3 ["CameraSubject"]
        8 FASTCALL2K                       ASSERT R1 K4 ; [+5]
       10 MOVE                             R4 R1
       11 LOADK                            R5 K4 ["VRVehicleCamera initialization error"]
       12 GETIMPORT                        R3 K6 [assert]
       14 CALL                             R3 2 0
       15 FASTCALL1                        ASSERT R2 ; [+3]
       16 MOVE                             R4 R2
       17 GETIMPORT                        R3 K6 [assert]
       19 CALL                             R3 1 0
       20 LOADK                            R6 K7 ["VehicleSeat"]
       21 NAMECALL                         R4 R2 K8 ["IsA"]
       23 CALL                             R4 2 -1
       24 FASTCALL                         ASSERT ; [+2]
       25 GETIMPORT                        R3 K6 [assert]
       27 CALL                             R3 -1 0
       28 LOADNIL                          R3
       29 SETTABLEKS                       R3 R0 K9 ["lastOrbitalDir"]
       31 LOADNIL                          R3
       32 SETTABLEKS                       R3 R0 K10 ["wasInFirstPerson"]
       34 LOADB                            R5 1
       35 NAMECALL                         R3 R2 K11 ["GetConnectedParts"]
       37 CALL                             R3 2 1
       38 FASTCALL2                        TABLE_INSERT R3 R2 ; [+5]
       40 MOVE                             R5 R3
       41 MOVE                             R6 R2
       42 GETIMPORT                        R4 K14 [table.insert]
       44 CALL                             R4 2 0
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K15 ["getLooseBoundingSphere"]
       48 MOVE                             R5 R3
       49 CALL                             R4 1 2
       50 LOADK                            R8 K16 ["Model"]
       51 NAMECALL                         R6 R2 K17 ["FindFirstAncestorOfClass"]
       53 CALL                             R6 2 1
       54 JUMPIF                           R6 ; [+2]
       55 GETTABLEKS                       R6 R2 K18 ["Parent"]
       57 SETTABLEKS                       R6 R0 K19 ["vehicleModel"]
       59 FASTCALL2K                       MATH_MAX R5 K20 ; [+5]
       61 MOVE                             R8 R5
       62 LOADK                            R9 K20 [5]
       63 GETIMPORT                        R7 K23 [math.max]
       65 CALL                             R7 2 1
       66 MOVE                             R5 R7
       67 SETTABLEKS                       R5 R0 K24 ["assemblyRadius"]
       69 GETTABLEKS                       R8 R2 K25 ["CFrame"]
       71 NAMECALL                         R8 R8 K26 ["Inverse"]
       73 CALL                             R8 1 1
       74 MUL                              R7 R8 R4
       75 SETTABLEKS                       R7 R0 K27 ["assemblyOffset"]
       77 NEWTABLE                         R7 0 0
       79 SETTABLEKS                       R7 R0 K28 ["gamepadZoomLevels"]
       81 GETUPVAL                         R7 1
       82 LOADNIL                          R8
       83 LOADNIL                          R9
       84 FORGPREP                         R7
       85 GETTABLEKS                       R13 R0 K28 ["gamepadZoomLevels"]
       87 GETTABLEKS                       R17 R0 K30 ["headScale"]
       89 MUL                              R16 R11 R17
       90 GETTABLEKS                       R17 R0 K24 ["assemblyRadius"]
       92 MUL                              R15 R16 R17
       93 DIVK                             R14 R15 K29 [10]
       94 FASTCALL2                        TABLE_INSERT R13 R14 ; [+3]
       96 GETIMPORT                        R12 K14 [table.insert]
       98 CALL                             R12 2 0
       99 FORGLOOP                         R7 2 ; [-15]
      101 LOADNIL                          R7
      102 SETTABLEKS                       R7 R0 K31 ["lastCameraFocus"]
      104 NAMECALL                         R7 R0 K32 ["IsInFirstPerson"]
      106 CALL                             R7 1 1
      107 JUMPIF                           R7 ; [+9]
      108 GETTABLEKS                       R10 R0 K28 ["gamepadZoomLevels"]
      110 GETTABLEKS                       R12 R0 K28 ["gamepadZoomLevels"]
      112 LENGTH                           R11 R12
      113 GETTABLE                         R9 R10 R11
      114 NAMECALL                         R7 R0 K33 ["SetCameraToSubjectDistance"]
      116 CALL                             R7 2 0
      117 LOADB                            R7 0
      118 SETTABLEKS                       R7 R0 K34 ["needsReset"]
      120 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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
       24 NAMECALL                         R3 R0 K8 ["_getThirdPersonLocalOffset"]
       26 CALL                             R3 1 -1
       27 RETURN                           R3 -1

PROTO_9:
        0 GETTABLEKS                       R6 R2 K0 ["X"]
        2 GETTABLEKS                       R7 R2 K1 ["Z"]
        4 FASTCALL2                        MATH_ATAN2 R6 R7 ; [+3]
        6 GETIMPORT                        R5 K4 [math.atan2]
        8 CALL                             R5 2 1
        9 GETIMPORT                        R6 K7 [CFrame.new]
       11 GETTABLEKS                       R8 R1 K8 ["Position"]
       13 MUL                              R9 R2 R3
       14 ADD                              R7 R8 R9
       15 CALL                             R6 1 1
       16 GETIMPORT                        R7 K10 [CFrame.Angles]
       18 LOADN                            R8 0
       19 MOVE                             R9 R5
       20 LOADN                            R10 0
       21 CALL                             R7 3 1
       22 MUL                              R4 R6 R7
       23 GETUPVAL                         R5 0
       24 MOVE                             R6 R4
       25 MOVE                             R7 R1
       26 MOVE                             R8 R3
       27 GETTABLEKS                       R9 R0 K11 ["vehicleModel"]
       29 CALL                             R5 4 2
       30 GETUPVAL                         R7 1
       31 LOADK                            R9 K12 ["VRFade"]
       32 NAMECALL                         R7 R7 K13 ["FindFirstChild"]
       34 CALL                             R7 2 1
       35 JUMPIF                           R7 ; [+11]
       36 GETIMPORT                        R8 K15 [Instance.new]
       38 LOADK                            R9 K16 ["ColorCorrectionEffect"]
       39 CALL                             R8 1 1
       40 MOVE                             R7 R8
       41 LOADK                            R8 K12 ["VRFade"]
       42 SETTABLEKS                       R8 R7 K17 ["Name"]
       44 GETUPVAL                         R8 1
       45 SETTABLEKS                       R8 R7 K18 ["Parent"]
       47 MINUS                            R8 R5
       48 SETTABLEKS                       R8 R7 K19 ["Brightness"]
       50 GETTABLEKS                       R8 R0 K20 ["lastOccludedParts"]
       52 JUMPIFNOT                        R8 ; [+10]
       53 GETTABLEKS                       R8 R0 K20 ["lastOccludedParts"]
       55 LOADNIL                          R9
       56 LOADNIL                          R10
       57 FORGPREP                         R8
       58 LOADN                            R13 0
       59 SETTABLEKS                       R13 R12 K21 ["LocalTransparencyModifier"]
       61 FORGLOOP                         R8 2 ; [-4]
       63 LENGTH                           R8 R6
       64 LOADN                            R9 0
       65 JUMPIFNOTLT                      R9 R8 ; [+15]
       67 MOVE                             R8 R6
       68 LOADNIL                          R9
       69 LOADNIL                          R10
       70 FORGPREP                         R8
       71 LOADN                            R13 1
       72 SETTABLEKS                       R13 R12 K21 ["LocalTransparencyModifier"]
       74 FORGLOOP                         R8 2 ; [-4]
       76 GETUPVAL                         R10 2
       77 LOADB                            R11 1
       78 NAMECALL                         R8 R0 K22 ["StartVREdgeBlur"]
       80 CALL                             R8 3 0
       81 SETTABLEKS                       R6 R0 K20 ["lastOccludedParts"]
       83 RETURN                           R4 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 0
        2 SETUPVAL                         R2 0
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R0 K0 ["UpdateFadeFromBlack"]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R4 1
        8 MOVE                             R5 R1
        9 NAMECALL                         R2 R0 K1 ["UpdateEdgeBlur"]
       11 CALL                             R2 3 0
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R0 K2 ["_updateStepRotation"]
       15 CALL                             R2 2 2
       16 RETURN                           R2 2

PROTO_11:
        0 NAMECALL                         R2 R0 K0 ["GetSubjectCFrame"]
        2 CALL                             R2 1 1
        3 NAMECALL                         R3 R0 K1 ["GetCameraToSubjectDistance"]
        5 CALL                             R3 1 1
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R3
        8 LOADK                            R6 K2 [0.5]
        9 GETTABLEKS                       R7 R0 K3 ["assemblyRadius"]
       11 LOADN                            R8 1
       12 LOADN                            R9 0
       13 CALL                             R4 5 1
       14 NAMECALL                         R5 R0 K4 ["_getThirdPersonLocalOffset"]
       16 CALL                             R5 1 1
       17 MOVE                             R8 R2
       18 NAMECALL                         R6 R0 K5 ["_getFirstPersonLocalOffset"]
       20 CALL                             R6 2 1
       21 MOVE                             R9 R6
       22 MOVE                             R10 R4
       23 NAMECALL                         R7 R5 K6 ["Lerp"]
       25 CALL                             R7 3 1
       26 MUL                              R8 R2 R7
       27 GETIMPORT                        R9 K9 [CFrame.new]
       29 LOADN                            R12 0
       30 NAMECALL                         R13 R0 K10 ["GetCameraHeight"]
       32 CALL                             R13 1 1
       33 LOADN                            R14 0
       34 FASTCALL                         VECTOR ; [+2]
       35 GETIMPORT                        R11 K12 [Vector3.new]
       37 CALL                             R11 3 1
       38 ADD                              R10 R8 R11
       39 CALL                             R9 1 1
       40 GETTABLEKS                       R10 R0 K13 ["needsReset"]
       42 JUMPIF                           R10 ; [+3]
       43 GETTABLEKS                       R10 R0 K14 ["recentered"]
       45 JUMPIFNOT                        R10 ; [+9]
       46 LOADNIL                          R10
       47 SETTABLEKS                       R10 R0 K15 ["lastOrbitalDir"]
       49 LOADB                            R10 0
       50 SETTABLEKS                       R10 R0 K13 ["needsReset"]
       52 LOADB                            R10 0
       53 SETTABLEKS                       R10 R0 K14 ["recentered"]
       55 GETTABLEKS                       R10 R0 K15 ["lastOrbitalDir"]
       57 JUMPIF                           R10 ; [+9]
       58 GETTABLEKS                       R12 R2 K16 ["LookVector"]
       60 LOADK                            R13 K17 [{-1, 0, -1}]
       61 MUL                              R11 R12 R13
       62 GETTABLEKS                       R10 R11 K18 ["Unit"]
       64 NAMECALL                         R11 R0 K19 ["StartFadeFromBlack"]
       66 CALL                             R11 1 0
       67 NAMECALL                         R12 R0 K20 ["GetSubjectVelocity"]
       69 CALL                             R12 1 1
       70 LOADK                            R13 K21 [{1, 0, 1}]
       71 MUL                              R11 R12 R13
       72 GETTABLEKS                       R13 R11 K22 ["Magnitude"]
       74 LOADN                            R14 2
       75 JUMPIFLT                         R14 R13 ; [+2]
       77 LOADB                            R12 0 +1
       78 LOADB                            R12 1
       79 JUMPIF                           R12 ; [+33]
       80 MOVE                             R15 R1
       81 NAMECALL                         R13 R0 K23 ["getRotation"]
       83 CALL                             R13 2 1
       84 FASTCALL1                        MATH_ABS R13 ; [+3]
       85 MOVE                             R15 R13
       86 GETIMPORT                        R14 K26 [math.abs]
       88 CALL                             R14 1 1
       89 LOADN                            R15 0
       90 JUMPIFNOTLT                      R15 R14 ; [+27]
       92 GETIMPORT                        R15 K28 [CFrame.Angles]
       94 LOADN                            R16 0
       95 MINUS                            R17 R13
       96 LOADN                            R18 0
       97 CALL                             R15 3 1
       98 GETIMPORT                        R16 K9 [CFrame.new]
      100 MOVE                             R17 R10
      101 CALL                             R16 1 1
      102 MUL                              R14 R15 R16
      103 GETTABLEKS                       R15 R14 K29 ["Position"]
      105 GETTABLEKS                       R10 R15 K18 ["Unit"]
      107 GETIMPORT                        R15 K32 [os.clock]
      109 CALL                             R15 0 1
      110 SETTABLEKS                       R15 R0 K33 ["lastRotateTime"]
      112 JUMP                             ; [+5]
      113 GETUPVAL                         R13 1
      114 GETTABLEKS                       R13 R13 K23 ["getRotation"]
      116 MOVE                             R14 R1
      117 CALL                             R13 1 0
      118 LOADNIL                          R13
      119 NAMECALL                         R14 R0 K34 ["IsInFirstPerson"]
      121 CALL                             R14 1 1
      122 JUMPIFNOT                        R14 ; [+87]
      123 GETTABLEKS                       R14 R0 K35 ["wasInFirstPerson"]
      125 JUMPIFNOT                        R14 ; [+1]
      126 JUMPIFNOT                        R12 ; [+9]
      127 GETTABLEKS                       R15 R2 K16 ["LookVector"]
      129 LOADK                            R16 K17 [{-1, 0, -1}]
      130 MUL                              R14 R15 R16
      131 GETTABLEKS                       R10 R14 K18 ["Unit"]
      133 LOADB                            R14 1
      134 SETTABLEKS                       R14 R0 K35 ["wasInFirstPerson"]
      136 GETTABLEKS                       R16 R2 K16 ["LookVector"]
      138 GETTABLEKS                       R16 R16 K36 ["X"]
      140 MINUS                            R15 R16
      141 GETTABLEKS                       R17 R2 K16 ["LookVector"]
      143 GETTABLEKS                       R17 R17 K37 ["Z"]
      145 MINUS                            R16 R17
      146 FASTCALL2                        MATH_ATAN2 R15 R16 ; [+3]
      148 GETIMPORT                        R14 K39 [math.atan2]
      150 CALL                             R14 2 1
      151 GETTABLEKS                       R15 R0 K40 ["lastVehicleYaw"]
      153 JUMPIFNOT                        R15 ; [+29]
      154 GETTABLEKS                       R19 R0 K40 ["lastVehicleYaw"]
      156 SUB                              R18 R14 R19
      157 ADDK                             R17 R18 K41 [3.141592653589793]
      158 MODK                             R16 R17 K42 [6.283185307179586]
      159 SUBK                             R15 R16 K41 [3.141592653589793]
      160 FASTCALL1                        MATH_ABS R15 ; [+3]
      161 MOVE                             R17 R15
      162 GETIMPORT                        R16 K26 [math.abs]
      164 CALL                             R16 1 1
      165 LOADK                            R17 K43 [0.001]
      166 JUMPIFNOTLT                      R17 R16 ; [+16]
      168 GETIMPORT                        R17 K28 [CFrame.Angles]
      170 LOADN                            R18 0
      171 MOVE                             R19 R15
      172 LOADN                            R20 0
      173 CALL                             R17 3 1
      174 GETIMPORT                        R18 K9 [CFrame.new]
      176 MOVE                             R19 R10
      177 CALL                             R18 1 1
      178 MUL                              R16 R17 R18
      179 GETTABLEKS                       R17 R16 K29 ["Position"]
      181 GETTABLEKS                       R10 R17 K18 ["Unit"]
      183 SETTABLEKS                       R14 R0 K40 ["lastVehicleYaw"]
      185 MOVE                             R15 R10
      186 GETTABLEKS                       R17 R15 K36 ["X"]
      188 GETTABLEKS                       R18 R15 K37 ["Z"]
      190 FASTCALL2                        MATH_ATAN2 R17 R18 ; [+3]
      192 GETIMPORT                        R16 K39 [math.atan2]
      194 CALL                             R16 2 1
      195 GETIMPORT                        R17 K9 [CFrame.new]
      197 GETTABLEKS                       R19 R9 K29 ["Position"]
      199 MUL                              R20 R15 R3
      200 ADD                              R18 R19 R20
      201 CALL                             R17 1 1
      202 GETIMPORT                        R18 K28 [CFrame.Angles]
      204 LOADN                            R19 0
      205 MOVE                             R20 R16
      206 LOADN                            R21 0
      207 CALL                             R18 3 1
      208 MUL                              R13 R17 R18
      209 JUMP                             ; [+84]
      210 LOADB                            R14 0
      211 SETTABLEKS                       R14 R0 K35 ["wasInFirstPerson"]
      213 LOADNIL                          R14
      214 SETTABLEKS                       R14 R0 K40 ["lastVehicleYaw"]
      216 GETTABLEKS                       R14 R0 K33 ["lastRotateTime"]
      218 JUMPIFNOT                        R14 ; [+13]
      219 GETIMPORT                        R16 K32 [os.clock]
      221 CALL                             R16 0 1
      222 GETTABLEKS                       R17 R0 K33 ["lastRotateTime"]
      224 SUB                              R15 R16 R17
      225 GETUPVAL                         R16 2
      226 GETTABLEKS                       R16 R16 K44 ["autocorrectDelay"]
      228 JUMPIFLT                         R15 R16 ; [+2]
      230 LOADB                            R14 0 +1
      231 LOADB                            R14 1
      232 JUMPIFNOT                        R12 ; [+53]
      233 JUMPIF                           R14 ; [+52]
      234 GETTABLEKS                       R16 R2 K16 ["LookVector"]
      236 LOADK                            R17 K17 [{-1, 0, -1}]
      237 MUL                              R15 R16 R17
      238 GETTABLEKS                       R15 R15 K18 ["Unit"]
      240 MOVE                             R20 R15
      241 NAMECALL                         R18 R10 K45 ["Dot"]
      243 CALL                             R18 2 1
      244 LOADN                            R19 -1
      245 LOADN                            R20 1
      246 FASTCALL                         MATH_CLAMP ; [+2]
      247 GETIMPORT                        R17 K47 [math.clamp]
      249 CALL                             R17 3 1
      250 FASTCALL1                        MATH_ACOS R17 ; [+2]
      251 GETIMPORT                        R16 K49 [math.acos]
      253 CALL                             R16 1 1
      254 NAMECALL                         R18 R0 K50 ["GetSubjectRotVelocity"]
      256 CALL                             R18 1 1
      257 GETTABLEKS                       R20 R2 K51 ["YVector"]
      259 MOVE                             R22 R18
      260 NAMECALL                         R20 R20 K45 ["Dot"]
      262 CALL                             R20 2 1
      263 FASTCALL1                        MATH_ABS R20 ; [+2]
      264 GETIMPORT                        R19 K26 [math.abs]
      266 CALL                             R19 1 1
      267 MOVE                             R17 R19
      268 LOADK                            R21 K52 [0.01]
      269 DIVK                             R23 R16 K41 [3.141592653589793]
      270 MULK                             R22 R23 K53 [0.05]
      271 ADD                              R20 R21 R22
      272 MULK                             R21 R17 K54 [0.02]
      273 ADD                              R19 R20 R21
      274 FASTCALL2K                       MATH_MIN R19 K55 ; [+4]
      276 LOADK                            R20 K55 [0.15]
      277 GETIMPORT                        R18 K57 [math.min]
      279 CALL                             R18 2 1
      280 MOVE                             R21 R15
      281 MOVE                             R22 R18
      282 NAMECALL                         R19 R10 K6 ["Lerp"]
      284 CALL                             R19 3 1
      285 MOVE                             R10 R19
      286 GETUPVAL                         R15 3
      287 MOVE                             R16 R9
      288 MOVE                             R17 R10
      289 MOVE                             R18 R3
      290 GETTABLEKS                       R19 R0 K58 ["vehicleModel"]
      292 CALL                             R15 4 1
      293 MOVE                             R13 R15
      294 SETTABLEKS                       R10 R0 K15 ["lastOrbitalDir"]
      296 MOVE                             R14 R13
      297 GETIMPORT                        R16 K9 [CFrame.new]
      299 LOADN                            R17 0
      300 LOADN                            R18 0
      301 MINUS                            R19 R3
      302 CALL                             R16 3 1
      303 MUL                              R15 R13 R16
      304 RETURN                           R14 2

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 2
        3 LOADN                            R1 0
        4 LOADN                            R2 30
        5 SETLIST                          R0 R1 2 [1]
        7 GETIMPORT                        R1 K1 [require]
        9 GETIMPORT                        R2 K3 [script]
       11 GETTABLEKS                       R2 R2 K4 ["Parent"]
       13 LOADK                            R4 K5 ["VRBaseCamera"]
       14 NAMECALL                         R2 R2 K6 ["WaitForChild"]
       16 CALL                             R2 2 -1
       17 CALL                             R1 -1 1
       18 GETIMPORT                        R2 K1 [require]
       20 GETIMPORT                        R3 K3 [script]
       22 GETTABLEKS                       R3 R3 K4 ["Parent"]
       24 LOADK                            R5 K7 ["CameraUtils"]
       25 NAMECALL                         R3 R3 K6 ["WaitForChild"]
       27 CALL                             R3 2 -1
       28 CALL                             R2 -1 1
       29 GETIMPORT                        R3 K1 [require]
       31 GETIMPORT                        R4 K3 [script]
       33 GETTABLEKS                       R4 R4 K4 ["Parent"]
       35 LOADK                            R6 K8 ["CameraInput"]
       36 NAMECALL                         R4 R4 K6 ["WaitForChild"]
       38 CALL                             R4 2 -1
       39 CALL                             R3 -1 1
       40 GETIMPORT                        R4 K10 [game]
       42 LOADK                            R6 K11 ["Players"]
       43 NAMECALL                         R4 R4 K12 ["GetService"]
       45 CALL                             R4 2 1
       46 GETIMPORT                        R5 K10 [game]
       48 LOADK                            R7 K13 ["RunService"]
       49 NAMECALL                         R5 R5 K12 ["GetService"]
       51 CALL                             R5 2 1
       52 GETIMPORT                        R6 K10 [game]
       54 LOADK                            R8 K14 ["VRService"]
       55 NAMECALL                         R6 R6 K12 ["GetService"]
       57 CALL                             R6 2 1
       58 GETIMPORT                        R7 K10 [game]
       60 LOADK                            R9 K15 ["Lighting"]
       61 NAMECALL                         R7 R7 K12 ["GetService"]
       63 CALL                             R7 2 1
       64 GETTABLEKS                       R8 R4 K16 ["LocalPlayer"]
       66 GETTABLEKS                       R9 R2 K17 ["mapClamp"]
       68 GETIMPORT                        R10 K1 [require]
       70 GETIMPORT                        R11 K3 [script]
       72 GETTABLEKS                       R11 R11 K4 ["Parent"]
       74 LOADK                            R13 K18 ["VehicleCamera"]
       75 NAMECALL                         R11 R11 K6 ["WaitForChild"]
       77 CALL                             R11 2 1
       78 LOADK                            R13 K19 ["VehicleCameraConfig"]
       79 NAMECALL                         R11 R11 K20 ["FindFirstChild"]
       81 CALL                             R11 2 -1
       82 CALL                             R10 -1 1
       83 GETIMPORT                        R11 K23 [RaycastParams.new]
       85 CALL                             R11 0 1
       86 GETIMPORT                        R12 K27 [Enum.RaycastFilterType.Exclude]
       88 SETTABLEKS                       R12 R11 K28 ["FilterType"]
       90 LOADB                            R12 1
       91 SETTABLEKS                       R12 R11 K29 ["IgnoreWater"]
       93 DUPCLOSURE                       R12 K30 [PROTO_0]
       94 DUPCLOSURE                       R13 K31 [PROTO_1]
       95 DUPCLOSURE                       R14 K32 [PROTO_2]
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R11
       98 GETIMPORT                        R15 K34 [OverlapParams.new]
      100 CALL                             R15 0 1
      101 GETIMPORT                        R16 K27 [Enum.RaycastFilterType.Exclude]
      103 SETTABLEKS                       R16 R15 K28 ["FilterType"]
      105 DUPCLOSURE                       R16 K35 [PROTO_3]
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R15
      110 LOADK                            R17 K36 [0.016666666666666666]
      111 NEWTABLE                         R19 8 0
      113 FASTCALL2                        SETMETATABLE R19 R1 ; [+4]
      115 MOVE                             R20 R1
      116 GETIMPORT                        R18 K38 [setmetatable]
      118 CALL                             R18 2 1
      119 SETTABLEKS                       R18 R18 K39 ["__index"]
      121 NEWCLOSURE                       R19 P4
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R5
      125 CAPTURE                          REF R17
      126 SETTABLEKS                       R19 R18 K22 ["new"]
      128 DUPCLOSURE                       R19 K40 [PROTO_6]
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R0
      131 SETTABLEKS                       R19 R18 K41 ["Reset"]
      133 DUPCLOSURE                       R19 K42 [PROTO_7]
      134 CAPTURE                          VAL R10
      135 SETTABLEKS                       R19 R18 K43 ["_getThirdPersonLocalOffset"]
      137 DUPCLOSURE                       R19 K44 [PROTO_8]
      138 CAPTURE                          VAL R8
      139 SETTABLEKS                       R19 R18 K45 ["_getFirstPersonLocalOffset"]
      141 DUPCLOSURE                       R19 K46 [PROTO_9]
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R8
      145 SETTABLEKS                       R19 R18 K47 ["_vrOccludeVignette"]
      147 NEWCLOSURE                       R19 P9
      148 CAPTURE                          REF R17
      149 CAPTURE                          VAL R8
      150 SETTABLEKS                       R19 R18 K48 ["Update"]
      152 DUPCLOSURE                       R19 K49 [PROTO_11]
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R14
      157 SETTABLEKS                       R19 R18 K50 ["_updateStepRotation"]
      159 CLOSEUPVALS                      R17
      160 RETURN                           R18 1
