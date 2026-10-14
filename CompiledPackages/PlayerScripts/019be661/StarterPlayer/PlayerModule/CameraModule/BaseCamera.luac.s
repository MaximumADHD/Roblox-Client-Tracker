PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GamepadZoomPress"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 32 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["new"]
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K3 ["_connections"]
       14 NEWTABLE                         R1 0 3
       16 LOADN                            R2 0
       17 LOADN                            R3 10
       18 LOADN                            R4 20
       19 SETLIST                          R1 R2 3 [1]
       21 SETTABLEKS                       R1 R0 K4 ["gamepadZoomLevels"]
       23 LOADN                            R1 1
       24 SETTABLEKS                       R1 R0 K5 ["FIRST_PERSON_DISTANCE_THRESHOLD"]
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K6 ["cameraType"]
       29 LOADNIL                          R1
       30 SETTABLEKS                       R1 R0 K7 ["cameraMovementMode"]
       32 LOADNIL                          R1
       33 SETTABLEKS                       R1 R0 K8 ["lastCameraTransform"]
       35 GETIMPORT                        R1 K10 [tick]
       37 CALL                             R1 0 1
       38 SETTABLEKS                       R1 R0 K11 ["lastUserPanCamera"]
       40 LOADNIL                          R1
       41 SETTABLEKS                       R1 R0 K12 ["humanoidRootPart"]
       43 NEWTABLE                         R1 0 0
       45 SETTABLEKS                       R1 R0 K13 ["humanoidCache"]
       47 LOADNIL                          R1
       48 SETTABLEKS                       R1 R0 K14 ["lastSubject"]
       50 LOADK                            R1 K15 [{0, 5, 0}]
       51 SETTABLEKS                       R1 R0 K16 ["lastSubjectPosition"]
       53 GETIMPORT                        R1 K18 [CFrame.new]
       55 GETTABLEKS                       R2 R0 K16 ["lastSubjectPosition"]
       57 CALL                             R1 1 1
       58 SETTABLEKS                       R1 R0 K19 ["lastSubjectCFrame"]
       60 LOADK                            R2 K20 [12.5]
       61 GETUPVAL                         R3 2
       62 GETTABLEKS                       R3 R3 K21 ["CameraMinZoomDistance"]
       64 GETUPVAL                         R4 2
       65 GETTABLEKS                       R4 R4 K22 ["CameraMaxZoomDistance"]
       67 FASTCALL                         MATH_CLAMP ; [+2]
       68 GETIMPORT                        R1 K25 [math.clamp]
       70 CALL                             R1 3 1
       71 SETTABLEKS                       R1 R0 K26 ["currentSubjectDistance"]
       73 LOADB                            R1 0
       74 SETTABLEKS                       R1 R0 K27 ["inFirstPerson"]
       76 LOADB                            R1 0
       77 SETTABLEKS                       R1 R0 K28 ["inMouseLockedMode"]
       79 LOADB                            R1 1
       80 SETTABLEKS                       R1 R0 K29 ["resetCameraAngle"]
       82 LOADB                            R1 0
       83 SETTABLEKS                       R1 R0 K30 ["enabled"]
       85 LOADNIL                          R1
       86 SETTABLEKS                       R1 R0 K31 ["cameraChangedConn"]
       88 LOADB                            R1 0
       89 SETTABLEKS                       R1 R0 K32 ["shouldUseVRRotation"]
       91 LOADB                            R1 0
       92 SETTABLEKS                       R1 R0 K33 ["VRRotationIntensityAvailable"]
       94 LOADN                            R1 0
       95 SETTABLEKS                       R1 R0 K34 ["lastVRRotationIntensityCheckTime"]
       97 LOADN                            R1 0
       98 SETTABLEKS                       R1 R0 K35 ["lastVRRotationTime"]
      100 NEWTABLE                         R1 0 0
      102 SETTABLEKS                       R1 R0 K36 ["vrRotateKeyCooldown"]
      104 LOADK                            R1 K37 [{1, 1, 1}]
      105 SETTABLEKS                       R1 R0 K38 ["cameraTranslationConstraints"]
      107 LOADNIL                          R1
      108 SETTABLEKS                       R1 R0 K39 ["humanoidJumpOrigin"]
      110 LOADNIL                          R1
      111 SETTABLEKS                       R1 R0 K40 ["trackingHumanoid"]
      113 LOADB                            R1 0
      114 SETTABLEKS                       R1 R0 K41 ["cameraFrozen"]
      116 LOADNIL                          R1
      117 SETTABLEKS                       R1 R0 K42 ["subjectStateChangedConn"]
      119 GETUPVAL                         R1 3
      120 GETTABLEKS                       R1 R1 K43 ["Pressed"]
      122 NEWCLOSURE                       R3 P0
      123 CAPTURE                          VAL R0
      124 NAMECALL                         R1 R1 K44 ["Connect"]
      126 CALL                             R1 2 1
      127 SETTABLEKS                       R1 R0 K45 ["gamepadZoomPressConnection"]
      129 LOADK                            R1 K46 [{0, 0, 0}]
      130 SETTABLEKS                       R1 R0 K47 ["mouseLockOffset"]
      132 GETUPVAL                         R1 4
      133 NAMECALL                         R1 R1 K48 ["SetCameraYInvertVisible"]
      135 CALL                             R1 1 0
      136 GETUPVAL                         R1 4
      137 NAMECALL                         R1 R1 K49 ["SetGamepadCameraSensitivityVisible"]
      139 CALL                             R1 1 0
      140 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R1 K0 ["BaseCamera"]
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["SelectedObject"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K1 ["Enabled"]
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["OnCharacterAdded"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OnPlayerCameraPropertyChange"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OnPlayerCameraPropertyChange"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OnPlayerCameraPropertyChange"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["SelectedObject"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K1 ["Enabled"]
        7 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_connections"]
        2 LOADK                            R3 K1 ["CHARACTER_ADDED"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K2 ["CharacterAdded"]
        6 NEWCLOSURE                       R6 P0
        7 CAPTURE                          VAL R0
        8 NAMECALL                         R4 R4 K3 ["Connect"]
       10 CALL                             R4 2 -1
       11 NAMECALL                         R1 R1 K4 ["trackConnection"]
       13 CALL                             R1 -1 0
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K5 ["humanoidRootPart"]
       17 GETTABLEKS                       R1 R0 K0 ["_connections"]
       19 LOADK                            R3 K6 ["CAMERA_MODE_CHANGED"]
       20 GETUPVAL                         R4 0
       21 LOADK                            R6 K7 ["CameraMode"]
       22 NAMECALL                         R4 R4 K8 ["GetPropertyChangedSignal"]
       24 CALL                             R4 2 1
       25 NEWCLOSURE                       R6 P1
       26 CAPTURE                          VAL R0
       27 NAMECALL                         R4 R4 K3 ["Connect"]
       29 CALL                             R4 2 -1
       30 NAMECALL                         R1 R1 K4 ["trackConnection"]
       32 CALL                             R1 -1 0
       33 GETTABLEKS                       R1 R0 K0 ["_connections"]
       35 LOADK                            R3 K9 ["CAMERA_MIN_DISTANCE_CHANGED"]
       36 GETUPVAL                         R4 0
       37 LOADK                            R6 K10 ["CameraMinZoomDistance"]
       38 NAMECALL                         R4 R4 K8 ["GetPropertyChangedSignal"]
       40 CALL                             R4 2 1
       41 NEWCLOSURE                       R6 P2
       42 CAPTURE                          VAL R0
       43 NAMECALL                         R4 R4 K3 ["Connect"]
       45 CALL                             R4 2 -1
       46 NAMECALL                         R1 R1 K4 ["trackConnection"]
       48 CALL                             R1 -1 0
       49 GETTABLEKS                       R1 R0 K0 ["_connections"]
       51 LOADK                            R3 K11 ["CAMERA_MAX_DISTANCE_CHANGED"]
       52 GETUPVAL                         R4 0
       53 LOADK                            R6 K12 ["CameraMaxZoomDistance"]
       54 NAMECALL                         R4 R4 K8 ["GetPropertyChangedSignal"]
       56 CALL                             R4 2 1
       57 NEWCLOSURE                       R6 P3
       58 CAPTURE                          VAL R0
       59 NAMECALL                         R4 R4 K3 ["Connect"]
       61 CALL                             R4 2 -1
       62 NAMECALL                         R1 R1 K4 ["trackConnection"]
       64 CALL                             R1 -1 0
       65 GETTABLEKS                       R1 R0 K0 ["_connections"]
       67 LOADK                            R3 K13 ["SELECTION_MODE_CHANGED"]
       68 GETUPVAL                         R4 1
       69 LOADK                            R6 K14 ["SelectedObject"]
       70 NAMECALL                         R4 R4 K8 ["GetPropertyChangedSignal"]
       72 CALL                             R4 2 1
       73 DUPCLOSURE                       R6 K15 [PROTO_8]
       74 CAPTURE                          UPVAL U2
       75 CAPTURE                          UPVAL U1
       76 NAMECALL                         R4 R4 K3 ["Connect"]
       78 CALL                             R4 2 -1
       79 NAMECALL                         R1 R1 K4 ["trackConnection"]
       81 CALL                             R1 -1 0
       82 NAMECALL                         R1 R0 K16 ["OnPlayerCameraPropertyChange"]
       84 CALL                             R1 1 0
       85 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["resetCameraAngle"]
        2 JUMPIF                           R2 ; [+3]
        3 NAMECALL                         R2 R0 K1 ["GetEnabled"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R0 K0 ["resetCameraAngle"]
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R0 K2 ["humanoidRootPart"]
       11 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["humanoidRootPart"]
        2 JUMPIF                           R1 ; [+16]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["Character"]
        6 JUMPIFNOT                        R1 ; [+12]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["Character"]
       10 LOADK                            R3 K2 ["Humanoid"]
       11 NAMECALL                         R1 R1 K3 ["FindFirstChildOfClass"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+4]
       15 GETTABLEKS                       R2 R1 K4 ["RootPart"]
       17 SETTABLEKS                       R2 R0 K0 ["humanoidRootPart"]
       19 GETTABLEKS                       R1 R0 K0 ["humanoidRootPart"]
       21 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["lastSubjectCFrame"]
        2 GETIMPORT                        R2 K2 [workspace]
        4 GETTABLEKS                       R2 R2 K3 ["CurrentCamera"]
        6 MOVE                             R3 R2
        7 JUMPIFNOT                        R3 ; [+2]
        8 GETTABLEKS                       R3 R2 K4 ["CameraSubject"]
       10 JUMPIF                           R3 ; [+1]
       11 RETURN                           R1 1
       12 LOADK                            R6 K5 ["Humanoid"]
       13 NAMECALL                         R4 R3 K6 ["IsA"]
       15 CALL                             R4 2 1
       16 JUMPIFNOT                        R4 ; [+90]
       17 NAMECALL                         R5 R3 K7 ["GetState"]
       19 CALL                             R5 1 1
       20 GETIMPORT                        R6 K11 [Enum.HumanoidStateType.Dead]
       22 JUMPIFEQ                         R5 R6 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 GETTABLEKS                       R5 R3 K12 ["CameraOffset"]
       28 NAMECALL                         R6 R0 K13 ["GetIsMouseLocked"]
       30 CALL                             R6 1 1
       31 JUMPIFNOT                        R6 ; [+5]
       32 FASTCALL                         VECTOR ; [+2]
       33 GETIMPORT                        R6 K16 [Vector3.new]
       35 CALL                             R6 0 1
       36 MOVE                             R5 R6
       37 GETTABLEKS                       R6 R3 K17 ["RootPart"]
       39 JUMPIFNOT                        R4 ; [+17]
       40 GETTABLEKS                       R7 R3 K18 ["Parent"]
       42 JUMPIFNOT                        R7 ; [+14]
       43 GETTABLEKS                       R7 R3 K18 ["Parent"]
       45 LOADK                            R9 K19 ["Model"]
       46 NAMECALL                         R7 R7 K6 ["IsA"]
       48 CALL                             R7 2 1
       49 JUMPIFNOT                        R7 ; [+7]
       50 GETTABLEKS                       R7 R3 K18 ["Parent"]
       52 LOADK                            R9 K20 ["Head"]
       53 NAMECALL                         R7 R7 K21 ["FindFirstChild"]
       55 CALL                             R7 2 1
       56 OR                               R6 R7 R6
       57 JUMPIFNOT                        R6 ; [+74]
       58 LOADK                            R9 K22 ["BasePart"]
       59 NAMECALL                         R7 R6 K6 ["IsA"]
       61 CALL                             R7 2 1
       62 JUMPIFNOT                        R7 ; [+69]
       63 LOADNIL                          R7
       64 GETTABLEKS                       R8 R3 K23 ["RigType"]
       66 GETIMPORT                        R9 K26 [Enum.HumanoidRigType.R15]
       68 JUMPIFNOTEQ                      R8 R9 ; [+27]
       70 GETTABLEKS                       R8 R3 K27 ["AutomaticScalingEnabled"]
       72 JUMPIFNOT                        R8 ; [+21]
       73 LOADK                            R7 K28 [{0, 1.5, 0}]
       74 GETTABLEKS                       R8 R3 K17 ["RootPart"]
       76 JUMPIFNOTEQ                      R6 R8 ; [+20]
       78 GETTABLEKS                       R11 R8 K30 ["Size"]
       80 GETTABLEKS                       R11 R11 K31 ["Y"]
       82 SUBK                             R10 R11 K29 [2]
       83 DIVK                             R9 R10 K29 [2]
       84 LOADN                            R11 0
       85 LOADN                            R13 0
       86 FASTCALL3                        VECTOR R11 R9 R13
       88 MOVE                             R12 R9
       89 GETIMPORT                        R10 K16 [Vector3.new]
       91 CALL                             R10 3 1
       92 ADD                              R7 R7 R10
       93 JUMP                             ; [+3]
       94 LOADK                            R7 K32 [{0, 2, 0}]
       95 JUMP                             ; [+1]
       96 LOADK                            R7 K28 [{0, 1.5, 0}]
       97 JUMPIFNOT                        R4 ; [+1]
       98 LOADK                            R7 K33 [{0, 0, 0}]
       99 GETTABLEKS                       R8 R6 K34 ["CFrame"]
      101 GETIMPORT                        R9 K35 [CFrame.new]
      103 ADD                              R10 R7 R5
      104 CALL                             R9 1 1
      105 MUL                              R1 R8 R9
      106 JUMP                             ; [+25]
      107 LOADK                            R6 K22 ["BasePart"]
      108 NAMECALL                         R4 R3 K6 ["IsA"]
      110 CALL                             R4 2 1
      111 JUMPIFNOT                        R4 ; [+3]
      112 GETTABLEKS                       R1 R3 K34 ["CFrame"]
      114 JUMP                             ; [+17]
      115 LOADK                            R6 K19 ["Model"]
      116 NAMECALL                         R4 R3 K6 ["IsA"]
      118 CALL                             R4 2 1
      119 JUMPIFNOT                        R4 ; [+12]
      120 GETTABLEKS                       R4 R3 K36 ["PrimaryPart"]
      122 JUMPIFNOT                        R4 ; [+5]
      123 NAMECALL                         R4 R3 K37 ["GetPrimaryPartCFrame"]
      125 CALL                             R4 1 1
      126 MOVE                             R1 R4
      127 JUMP                             ; [+4]
      128 GETIMPORT                        R4 K35 [CFrame.new]
      130 CALL                             R4 0 1
      131 MOVE                             R1 R4
      132 JUMPIFNOT                        R1 ; [+2]
      133 SETTABLEKS                       R1 R0 K0 ["lastSubjectCFrame"]
      135 RETURN                           R1 1

PROTO_13:
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R1 R1 K2 ["CurrentCamera"]
        4 MOVE                             R2 R1
        5 JUMPIFNOT                        R2 ; [+2]
        6 GETTABLEKS                       R2 R1 K3 ["CameraSubject"]
        8 JUMPIF                           R2 ; [+2]
        9 LOADK                            R3 K4 [{0, 0, 0}]
       10 RETURN                           R3 1
       11 LOADK                            R5 K5 ["BasePart"]
       12 NAMECALL                         R3 R2 K6 ["IsA"]
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+3]
       16 GETTABLEKS                       R3 R2 K7 ["Velocity"]
       18 RETURN                           R3 1
       19 LOADK                            R5 K8 ["Humanoid"]
       20 NAMECALL                         R3 R2 K6 ["IsA"]
       22 CALL                             R3 2 1
       23 JUMPIFNOT                        R3 ; [+7]
       24 GETTABLEKS                       R3 R2 K9 ["RootPart"]
       26 JUMPIFNOT                        R3 ; [+15]
       27 GETTABLEKS                       R4 R3 K7 ["Velocity"]
       29 RETURN                           R4 1
       30 JUMP                             ; [+11]
       31 LOADK                            R5 K10 ["Model"]
       32 NAMECALL                         R3 R2 K6 ["IsA"]
       34 CALL                             R3 2 1
       35 JUMPIFNOT                        R3 ; [+6]
       36 GETTABLEKS                       R3 R2 K11 ["PrimaryPart"]
       38 JUMPIFNOT                        R3 ; [+3]
       39 GETTABLEKS                       R4 R3 K7 ["Velocity"]
       41 RETURN                           R4 1
       42 LOADK                            R3 K4 [{0, 0, 0}]
       43 RETURN                           R3 1

PROTO_14:
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R1 R1 K2 ["CurrentCamera"]
        4 MOVE                             R2 R1
        5 JUMPIFNOT                        R2 ; [+2]
        6 GETTABLEKS                       R2 R1 K3 ["CameraSubject"]
        8 JUMPIF                           R2 ; [+2]
        9 LOADK                            R3 K4 [{0, 0, 0}]
       10 RETURN                           R3 1
       11 LOADK                            R5 K5 ["BasePart"]
       12 NAMECALL                         R3 R2 K6 ["IsA"]
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+3]
       16 GETTABLEKS                       R3 R2 K7 ["RotVelocity"]
       18 RETURN                           R3 1
       19 LOADK                            R5 K8 ["Humanoid"]
       20 NAMECALL                         R3 R2 K6 ["IsA"]
       22 CALL                             R3 2 1
       23 JUMPIFNOT                        R3 ; [+7]
       24 GETTABLEKS                       R3 R2 K9 ["RootPart"]
       26 JUMPIFNOT                        R3 ; [+15]
       27 GETTABLEKS                       R4 R3 K7 ["RotVelocity"]
       29 RETURN                           R4 1
       30 JUMP                             ; [+11]
       31 LOADK                            R5 K10 ["Model"]
       32 NAMECALL                         R3 R2 K6 ["IsA"]
       34 CALL                             R3 2 1
       35 JUMPIFNOT                        R3 ; [+6]
       36 GETTABLEKS                       R3 R2 K11 ["PrimaryPart"]
       38 JUMPIFNOT                        R3 ; [+3]
       39 GETTABLEKS                       R4 R3 K7 ["RotVelocity"]
       41 RETURN                           R4 1
       42 LOADK                            R3 K4 [{0, 0, 0}]
       43 RETURN                           R3 1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["currentSubjectDistance"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["getZoomDelta"]
        5 MOVE                             R4 R1
        6 CALL                             R3 1 1
        7 FASTCALL1                        MATH_ABS R3 ; [+3]
        8 MOVE                             R5 R3
        9 GETIMPORT                        R4 K4 [math.abs]
       11 CALL                             R4 1 1
       12 LOADN                            R5 0
       13 JUMPIFNOTLT                      R5 R4 ; [+40]
       15 LOADNIL                          R4
       16 LOADN                            R5 0
       17 JUMPIFNOTLT                      R5 R3 ; [+15]
       19 MULK                             R7 R2 K6 [0.5]
       20 ADDK                             R6 R7 K5 [1]
       21 MUL                              R5 R3 R6
       22 ADD                              R4 R2 R5
       23 GETTABLEKS                       R7 R0 K7 ["FIRST_PERSON_DISTANCE_THRESHOLD"]
       25 FASTCALL2                        MATH_MAX R4 R7 ; [+4]
       27 MOVE                             R6 R4
       28 GETIMPORT                        R5 K9 [math.max]
       30 CALL                             R5 2 1
       31 MOVE                             R4 R5
       32 JUMP                             ; [+12]
       33 ADD                              R5 R2 R3
       34 MULK                             R7 R3 K6 [0.5]
       35 SUBRK                            R6 K5 [1] R7
       36 DIV                              R4 R5 R6
       37 FASTCALL2K                       MATH_MAX R4 K6 ; [+5]
       39 MOVE                             R6 R4
       40 LOADK                            R7 K6 [0.5]
       41 GETIMPORT                        R5 K9 [math.max]
       43 CALL                             R5 2 1
       44 MOVE                             R4 R5
       45 GETTABLEKS                       R5 R0 K7 ["FIRST_PERSON_DISTANCE_THRESHOLD"]
       47 JUMPIFNOTLT                      R4 R5 ; [+2]
       49 LOADK                            R4 K6 [0.5]
       50 MOVE                             R7 R4
       51 NAMECALL                         R5 R0 K10 ["SetCameraToSubjectDistance"]
       53 CALL                             R5 2 0
       54 GETUPVAL                         R4 1
       55 GETTABLEKS                       R4 R4 K11 ["GetZoomRadius"]
       57 CALL                             R4 0 -1
       58 RETURN                           R4 -1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["lastSubjectPosition"]
        2 GETIMPORT                        R2 K2 [game]
        4 GETTABLEKS                       R2 R2 K3 ["Workspace"]
        6 GETTABLEKS                       R2 R2 K4 ["CurrentCamera"]
        8 MOVE                             R3 R2
        9 JUMPIFNOT                        R3 ; [+2]
       10 GETTABLEKS                       R3 R2 K5 ["CameraSubject"]
       12 JUMPIFNOT                        R3 ; [+160]
       13 LOADK                            R6 K6 ["Humanoid"]
       14 NAMECALL                         R4 R3 K7 ["IsA"]
       16 CALL                             R4 2 1
       17 JUMPIFNOT                        R4 ; [+96]
       18 NAMECALL                         R5 R3 K8 ["GetState"]
       20 CALL                             R5 1 1
       21 GETIMPORT                        R6 K12 [Enum.HumanoidStateType.Dead]
       23 JUMPIFEQ                         R5 R6 ; [+2]
       25 LOADB                            R4 0 +1
       26 LOADB                            R4 1
       27 GETTABLEKS                       R5 R3 K13 ["CameraOffset"]
       29 NAMECALL                         R6 R0 K14 ["GetIsMouseLocked"]
       31 CALL                             R6 1 1
       32 JUMPIFNOT                        R6 ; [+5]
       33 FASTCALL                         VECTOR ; [+2]
       34 GETIMPORT                        R6 K17 [Vector3.new]
       36 CALL                             R6 0 1
       37 MOVE                             R5 R6
       38 GETTABLEKS                       R6 R3 K18 ["RootPart"]
       40 JUMPIFNOT                        R4 ; [+17]
       41 GETTABLEKS                       R7 R3 K19 ["Parent"]
       43 JUMPIFNOT                        R7 ; [+14]
       44 GETTABLEKS                       R7 R3 K19 ["Parent"]
       46 LOADK                            R9 K20 ["Model"]
       47 NAMECALL                         R7 R7 K7 ["IsA"]
       49 CALL                             R7 2 1
       50 JUMPIFNOT                        R7 ; [+7]
       51 GETTABLEKS                       R7 R3 K19 ["Parent"]
       53 LOADK                            R9 K21 ["Head"]
       54 NAMECALL                         R7 R7 K22 ["FindFirstChild"]
       56 CALL                             R7 2 1
       57 OR                               R6 R7 R6
       58 JUMPIFNOT                        R6 ; [+116]
       59 LOADK                            R9 K23 ["BasePart"]
       60 NAMECALL                         R7 R6 K7 ["IsA"]
       62 CALL                             R7 2 1
       63 JUMPIFNOT                        R7 ; [+111]
       64 LOADNIL                          R7
       65 GETTABLEKS                       R8 R3 K24 ["RigType"]
       67 GETIMPORT                        R9 K27 [Enum.HumanoidRigType.R15]
       69 JUMPIFNOTEQ                      R8 R9 ; [+29]
       71 GETTABLEKS                       R8 R3 K28 ["AutomaticScalingEnabled"]
       73 JUMPIFNOT                        R8 ; [+23]
       74 LOADK                            R7 K29 [{0, 1.5, 0}]
       75 GETTABLEKS                       R8 R3 K18 ["RootPart"]
       77 JUMPIFNOTEQ                      R6 R8 ; [+22]
       79 GETTABLEKS                       R10 R3 K18 ["RootPart"]
       81 GETTABLEKS                       R10 R10 K32 ["Size"]
       83 GETTABLEKS                       R10 R10 K33 ["Y"]
       85 DIVK                             R9 R10 K31 [2]
       86 SUBK                             R8 R9 K30 [1]
       87 LOADN                            R10 0
       88 LOADN                            R12 0
       89 FASTCALL3                        VECTOR R10 R8 R12
       91 MOVE                             R11 R8
       92 GETIMPORT                        R9 K17 [Vector3.new]
       94 CALL                             R9 3 1
       95 ADD                              R7 R7 R9
       96 JUMP                             ; [+3]
       97 LOADK                            R7 K34 [{0, 2, 0}]
       98 JUMP                             ; [+1]
       99 LOADK                            R7 K29 [{0, 1.5, 0}]
      100 JUMPIFNOT                        R4 ; [+1]
      101 LOADK                            R7 K35 [{0, 0, 0}]
      102 GETTABLEKS                       R8 R6 K36 ["CFrame"]
      104 GETTABLEKS                       R8 R8 K37 ["Position"]
      106 GETTABLEKS                       R9 R6 K36 ["CFrame"]
      108 ADD                              R11 R7 R5
      109 NAMECALL                         R9 R9 K38 ["vectorToWorldSpace"]
      111 CALL                             R9 2 1
      112 ADD                              R1 R8 R9
      113 JUMP                             ; [+61]
      114 LOADK                            R6 K39 ["VehicleSeat"]
      115 NAMECALL                         R4 R3 K7 ["IsA"]
      117 CALL                             R4 2 1
      118 JUMPIFNOT                        R4 ; [+12]
      119 GETTABLEKS                       R4 R3 K36 ["CFrame"]
      121 GETTABLEKS                       R4 R4 K37 ["Position"]
      123 GETTABLEKS                       R5 R3 K36 ["CFrame"]
      125 LOADK                            R7 K40 [{0, 5, 0}]
      126 NAMECALL                         R5 R5 K38 ["vectorToWorldSpace"]
      128 CALL                             R5 2 1
      129 ADD                              R1 R4 R5
      130 JUMP                             ; [+44]
      131 LOADK                            R6 K41 ["SkateboardPlatform"]
      132 NAMECALL                         R4 R3 K7 ["IsA"]
      134 CALL                             R4 2 1
      135 JUMPIFNOT                        R4 ; [+7]
      136 GETTABLEKS                       R4 R3 K36 ["CFrame"]
      138 GETTABLEKS                       R4 R4 K37 ["Position"]
      140 LOADK                            R5 K40 [{0, 5, 0}]
      141 ADD                              R1 R4 R5
      142 JUMP                             ; [+32]
      143 LOADK                            R6 K23 ["BasePart"]
      144 NAMECALL                         R4 R3 K7 ["IsA"]
      146 CALL                             R4 2 1
      147 JUMPIFNOT                        R4 ; [+5]
      148 GETTABLEKS                       R4 R3 K36 ["CFrame"]
      150 GETTABLEKS                       R1 R4 K37 ["Position"]
      152 JUMP                             ; [+22]
      153 LOADK                            R6 K20 ["Model"]
      154 NAMECALL                         R4 R3 K7 ["IsA"]
      156 CALL                             R4 2 1
      157 JUMPIFNOT                        R4 ; [+17]
      158 GETTABLEKS                       R4 R3 K42 ["PrimaryPart"]
      160 JUMPIFNOT                        R4 ; [+6]
      161 NAMECALL                         R4 R3 K43 ["GetPrimaryPartCFrame"]
      163 CALL                             R4 1 1
      164 GETTABLEKS                       R1 R4 K37 ["Position"]
      166 JUMP                             ; [+8]
      167 NAMECALL                         R4 R3 K44 ["GetModelCFrame"]
      169 CALL                             R4 1 1
      170 GETTABLEKS                       R1 R4 K37 ["Position"]
      172 JUMP                             ; [+2]
      173 LOADNIL                          R4
      174 RETURN                           R4 1
      175 SETTABLEKS                       R3 R0 K45 ["lastSubject"]
      177 SETTABLEKS                       R1 R0 K0 ["lastSubjectPosition"]
      179 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OnNewCameraSubject"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["cameraSubjectChangedConn"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["cameraSubjectChangedConn"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["cameraSubjectChangedConn"]
       11 GETIMPORT                        R1 K3 [game]
       13 GETTABLEKS                       R1 R1 K4 ["Workspace"]
       15 GETTABLEKS                       R1 R1 K5 ["CurrentCamera"]
       17 JUMPIFNOT                        R1 ; [+14]
       18 LOADK                            R4 K6 ["CameraSubject"]
       19 NAMECALL                         R2 R1 K7 ["GetPropertyChangedSignal"]
       21 CALL                             R2 2 1
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R0
       24 NAMECALL                         R2 R2 K8 ["Connect"]
       26 CALL                             R2 2 1
       27 SETTABLEKS                       R2 R0 K0 ["cameraSubjectChangedConn"]
       29 NAMECALL                         R2 R0 K9 ["OnNewCameraSubject"]
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R3 R0 K0 ["currentSubjectDistance"]
        2 NAMECALL                         R1 R0 K1 ["SetCameraToSubjectDistance"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_20:
        0 MUL                              R3 R1 R2
        1 RETURN                           R3 1

PROTO_21:
        0 NAMECALL                         R1 R0 K0 ["GetCameraToSubjectDistance"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["CameraMaxZoomDistance"]
        6 GETTABLEKS                       R6 R0 K2 ["gamepadZoomLevels"]
        8 LENGTH                           R5 R6
        9 LOADN                            R3 1
       10 LOADN                            R4 -1
       11 FORNPREP                         R3
       12 GETTABLEKS                       R7 R0 K2 ["gamepadZoomLevels"]
       14 GETTABLE                         R6 R7 R5
       15 JUMPIFLT                         R2 R6 ; [+22]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K3 ["CameraMinZoomDistance"]
       20 JUMPIFNOTLT                      R6 R7 ; [+6]
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R6 R7 K3 ["CameraMinZoomDistance"]
       25 JUMPIFEQ                         R2 R6 ; [+13]
       27 SUB                              R9 R2 R6
       28 DIVK                             R8 R9 K4 [2]
       29 ADD                              R7 R6 R8
       30 JUMPIFNOTLT                      R7 R1 ; [+6]
       32 MOVE                             R9 R6
       33 NAMECALL                         R7 R0 K5 ["SetCameraToSubjectDistance"]
       35 CALL                             R7 2 0
       36 RETURN                           R0 0
       37 MOVE                             R2 R6
       38 FORNLOOP                         R3
       39 GETTABLEKS                       R6 R0 K2 ["gamepadZoomLevels"]
       41 GETTABLEKS                       R8 R0 K2 ["gamepadZoomLevels"]
       43 LENGTH                           R7 R8
       44 GETTABLE                         R5 R6 R7
       45 NAMECALL                         R3 R0 K5 ["SetCameraToSubjectDistance"]
       47 CALL                             R3 2 0
       48 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R2 R0 K0 ["enabled"]
        2 JUMPIFEQ                         R2 R1 ; [+6]
        4 SETTABLEKS                       R1 R0 K0 ["enabled"]
        6 NAMECALL                         R2 R0 K1 ["OnEnabledChanged"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OnCurrentCameraChanged"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["enabled"]
        2 JUMPIFNOT                        R1 ; [+56]
        3 NAMECALL                         R1 R0 K1 ["_setUpConfigurations"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["setInputEnabled"]
        9 LOADB                            R2 1
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 1
       12 LOADB                            R2 1
       13 SETTABLEKS                       R2 R1 K3 ["Enabled"]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K4 ["CameraMode"]
       18 GETIMPORT                        R2 K7 [Enum.CameraMode.LockFirstPerson]
       20 JUMPIFNOTEQ                      R1 R2 ; [+10]
       22 LOADK                            R1 K8 [0.5]
       23 SETTABLEKS                       R1 R0 K9 ["currentSubjectDistance"]
       25 GETTABLEKS                       R1 R0 K10 ["inFirstPerson"]
       27 JUMPIF                           R1 ; [+3]
       28 NAMECALL                         R1 R0 K11 ["EnterFirstPerson"]
       30 CALL                             R1 1 0
       31 GETTABLEKS                       R1 R0 K12 ["cameraChangedConn"]
       33 JUMPIFNOT                        R1 ; [+8]
       34 GETTABLEKS                       R1 R0 K12 ["cameraChangedConn"]
       36 NAMECALL                         R1 R1 K13 ["Disconnect"]
       38 CALL                             R1 1 0
       39 LOADNIL                          R1
       40 SETTABLEKS                       R1 R0 K12 ["cameraChangedConn"]
       42 GETIMPORT                        R1 K15 [workspace]
       44 LOADK                            R3 K16 ["CurrentCamera"]
       45 NAMECALL                         R1 R1 K17 ["GetPropertyChangedSignal"]
       47 CALL                             R1 2 1
       48 NEWCLOSURE                       R3 P0
       49 CAPTURE                          VAL R0
       50 NAMECALL                         R1 R1 K18 ["Connect"]
       52 CALL                             R1 2 1
       53 SETTABLEKS                       R1 R0 K12 ["cameraChangedConn"]
       55 NAMECALL                         R1 R0 K19 ["OnCurrentCameraChanged"]
       57 CALL                             R1 1 0
       58 RETURN                           R0 0
       59 GETTABLEKS                       R1 R0 K20 ["_connections"]
       61 NAMECALL                         R1 R1 K21 ["disconnectAll"]
       63 CALL                             R1 1 0
       64 GETUPVAL                         R1 0
       65 GETTABLEKS                       R1 R1 K2 ["setInputEnabled"]
       67 LOADB                            R2 0
       68 CALL                             R1 1 0
       69 GETUPVAL                         R1 1
       70 LOADB                            R2 0
       71 SETTABLEKS                       R2 R1 K3 ["Enabled"]
       73 NAMECALL                         R1 R0 K22 ["Cleanup"]
       75 CALL                             R1 1 0
       76 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["enabled"]
        2 RETURN                           R1 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["subjectStateChangedConn"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["subjectStateChangedConn"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["subjectStateChangedConn"]
       11 GETTABLEKS                       R1 R0 K2 ["cameraChangedConn"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["cameraChangedConn"]
       16 NAMECALL                         R1 R1 K1 ["Disconnect"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["cameraChangedConn"]
       22 LOADNIL                          R1
       23 SETTABLEKS                       R1 R0 K3 ["lastCameraTransform"]
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K4 ["lastSubjectCFrame"]
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K5 ["restoreMouseBehavior"]
       31 CALL                             R1 0 0
       32 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ComputerMovementMode"]
        3 GETIMPORT                        R3 K3 [Enum.ComputerMovementMode.ClickToMove]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 GETTABLEKS                       R2 R0 K4 ["isCameraToggle"]
       11 JUMPIFNOT                        R2 ; [+16]
       12 JUMPIFNOTEQKB                    R1 FALSE ; [+15]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K5 ["setCameraModeToastEnabled"]
       17 LOADB                            R3 1
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K6 ["enableCameraToggleInput"]
       22 CALL                             R2 0 0
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R3 R0 K7 ["inFirstPerson"]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K5 ["setCameraModeToastEnabled"]
       31 LOADB                            R3 0
       32 CALL                             R2 1 0
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K8 ["disableCameraToggleInput"]
       36 CALL                             R2 0 0
       37 GETTABLEKS                       R2 R0 K7 ["inFirstPerson"]
       39 JUMPIF                           R2 ; [+3]
       40 GETTABLEKS                       R2 R0 K9 ["inMouseLockedMode"]
       42 JUMPIFNOT                        R2 ; [+13]
       43 GETUPVAL                         R2 4
       44 GETTABLEKS                       R2 R2 K10 ["setRotationTypeOverride"]
       46 GETIMPORT                        R3 K13 [Enum.RotationType.CameraRelative]
       48 CALL                             R2 1 0
       49 GETUPVAL                         R2 4
       50 GETTABLEKS                       R2 R2 K14 ["setMouseBehaviorOverride"]
       52 GETIMPORT                        R3 K17 [Enum.MouseBehavior.LockCenter]
       54 CALL                             R2 1 0
       55 RETURN                           R0 0
       56 GETUPVAL                         R2 4
       57 GETTABLEKS                       R2 R2 K18 ["restoreRotationType"]
       59 CALL                             R2 0 0
       60 GETUPVAL                         R2 2
       61 GETTABLEKS                       R2 R2 K19 ["getPanActivated"]
       63 CALL                             R2 0 1
       64 JUMPIFNOT                        R2 ; [+7]
       65 GETUPVAL                         R3 4
       66 GETTABLEKS                       R3 R3 K14 ["setMouseBehaviorOverride"]
       68 GETIMPORT                        R4 K21 [Enum.MouseBehavior.LockCurrentPosition]
       70 CALL                             R3 1 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R3 4
       73 GETTABLEKS                       R3 R3 K22 ["restoreMouseBehavior"]
       75 CALL                             R3 0 0
       76 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R3 R0 K0 ["currentSubjectDistance"]
        2 NAMECALL                         R1 R0 K1 ["SetCameraToSubjectDistance"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R2 R0 K0 ["currentSubjectDistance"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["CameraMode"]
        5 GETIMPORT                        R4 K4 [Enum.CameraMode.LockFirstPerson]
        7 JUMPIFNOTEQ                      R3 R4 ; [+11]
        9 LOADK                            R3 K5 [0.5]
       10 SETTABLEKS                       R3 R0 K0 ["currentSubjectDistance"]
       12 GETTABLEKS                       R3 R0 K6 ["inFirstPerson"]
       14 JUMPIF                           R3 ; [+37]
       15 NAMECALL                         R3 R0 K7 ["EnterFirstPerson"]
       17 CALL                             R3 1 0
       18 JUMP                             ; [+33]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K8 ["CameraMinZoomDistance"]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K9 ["CameraMaxZoomDistance"]
       25 FASTCALL3                        MATH_CLAMP R1 R5 R6
       27 MOVE                             R4 R1
       28 GETIMPORT                        R3 K12 [math.clamp]
       30 CALL                             R3 3 1
       31 LOADN                            R4 1
       32 JUMPIFNOTLT                      R3 R4 ; [+11]
       34 LOADK                            R4 K5 [0.5]
       35 SETTABLEKS                       R4 R0 K0 ["currentSubjectDistance"]
       37 GETTABLEKS                       R4 R0 K6 ["inFirstPerson"]
       39 JUMPIF                           R4 ; [+12]
       40 NAMECALL                         R4 R0 K7 ["EnterFirstPerson"]
       42 CALL                             R4 1 0
       43 JUMP                             ; [+8]
       44 SETTABLEKS                       R3 R0 K0 ["currentSubjectDistance"]
       46 GETTABLEKS                       R4 R0 K6 ["inFirstPerson"]
       48 JUMPIFNOT                        R4 ; [+3]
       49 NAMECALL                         R4 R0 K13 ["LeaveFirstPerson"]
       51 CALL                             R4 1 0
       52 GETUPVAL                         R3 1
       53 GETTABLEKS                       R3 R3 K14 ["SetZoomParameters"]
       55 GETTABLEKS                       R4 R0 K0 ["currentSubjectDistance"]
       57 SUB                              R6 R1 R2
       58 FASTCALL1                        MATH_SIGN R6 ; [+2]
       59 GETIMPORT                        R5 K16 [math.sign]
       61 CALL                             R5 1 1
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R3 R0 K0 ["currentSubjectDistance"]
       65 RETURN                           R3 1

PROTO_30:
        0 SETTABLEKS                       R1 R0 K0 ["cameraType"]
        2 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["cameraType"]
        2 RETURN                           R1 1

PROTO_32:
        0 SETTABLEKS                       R1 R0 K0 ["cameraMovementMode"]
        2 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["cameraMovementMode"]
        2 RETURN                           R1 1

PROTO_34:
        0 SETTABLEKS                       R1 R0 K0 ["inMouseLockedMode"]
        2 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["inMouseLockedMode"]
        2 RETURN                           R1 1

PROTO_36:
        0 SETTABLEKS                       R1 R0 K0 ["mouseLockOffset"]
        2 RETURN                           R0 0

PROTO_37:
        0 GETTABLEKS                       R1 R0 K0 ["mouseLockOffset"]
        2 RETURN                           R1 1

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["inFirstPerson"]
        2 RETURN                           R1 1

PROTO_39:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["inFirstPerson"]
        3 NAMECALL                         R1 R0 K1 ["UpdateMouseBehavior"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_40:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["inFirstPerson"]
        3 NAMECALL                         R1 R0 K1 ["UpdateMouseBehavior"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["currentSubjectDistance"]
        2 RETURN                           R1 1

PROTO_42:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["Workspace"]
        4 GETTABLEKS                       R1 R1 K3 ["CurrentCamera"]
        6 JUMPIFNOT                        R1 ; [+12]
        7 GETTABLEKS                       R3 R1 K4 ["CoordinateFrame"]
        9 GETTABLEKS                       R3 R3 K5 ["Position"]
       11 GETTABLEKS                       R4 R1 K6 ["Focus"]
       13 GETTABLEKS                       R4 R4 K5 ["Position"]
       15 SUB                              R2 R3 R4
       16 GETTABLEKS                       R2 R2 K7 ["magnitude"]
       18 RETURN                           R2 1
       19 LOADNIL                          R2
       20 RETURN                           R2 1

PROTO_43:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R2 R2 K2 ["Workspace"]
        4 GETTABLEKS                       R2 R2 K3 ["CurrentCamera"]
        6 JUMPIFNOT                        R2 ; [+11]
        7 GETIMPORT                        R1 K1 [game]
        9 GETTABLEKS                       R1 R1 K2 ["Workspace"]
       11 GETTABLEKS                       R1 R1 K3 ["CurrentCamera"]
       13 GETTABLEKS                       R1 R1 K4 ["CFrame"]
       15 GETTABLEKS                       R1 R1 K5 ["LookVector"]
       17 JUMPIF                           R1 ; [+1]
       18 LOADK                            R1 K6 [{0, 0, 1}]
       19 RETURN                           R1 1

PROTO_44:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+3]
        2 NAMECALL                         R3 R0 K0 ["GetCameraLookVector"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R5 R3 K1 ["Y"]
        7 FASTCALL1                        MATH_ASIN R5 ; [+2]
        8 GETIMPORT                        R4 K4 [math.asin]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R6 R2 K1 ["Y"]
       13 ADDK                             R7 R4 K5 [-1.39626340159546]
       14 ADDK                             R8 R4 K6 [1.39626340159546]
       15 FASTCALL                         MATH_CLAMP ; [+2]
       16 GETIMPORT                        R5 K8 [math.clamp]
       18 CALL                             R5 3 1
       19 GETIMPORT                        R6 K11 [Vector2.new]
       21 GETTABLEKS                       R7 R2 K12 ["X"]
       23 MOVE                             R8 R5
       24 CALL                             R6 2 1
       25 GETIMPORT                        R7 K14 [CFrame.new]
       27 LOADK                            R8 K15 [{0, 0, 0}]
       28 MOVE                             R9 R3
       29 CALL                             R7 2 1
       30 GETIMPORT                        R10 K17 [CFrame.Angles]
       32 LOADN                            R11 0
       33 GETTABLEKS                       R13 R6 K12 ["X"]
       35 MINUS                            R12 R13
       36 LOADN                            R13 0
       37 CALL                             R10 3 1
       38 MUL                              R9 R10 R7
       39 GETIMPORT                        R10 K17 [CFrame.Angles]
       41 GETTABLEKS                       R12 R6 K1 ["Y"]
       43 MINUS                            R11 R12
       44 LOADN                            R12 0
       45 LOADN                            R13 0
       46 CALL                             R10 3 1
       47 MUL                              R8 R9 R10
       48 RETURN                           R8 1

PROTO_45:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["CalculateNewLookCFrameFromArg"]
        4 CALL                             R3 3 1
        5 GETTABLEKS                       R4 R3 K1 ["LookVector"]
        7 RETURN                           R4 1

PROTO_46:
        0 NAMECALL                         R2 R0 K0 ["GetSubjectPosition"]
        2 CALL                             R2 1 1
        3 GETIMPORT                        R4 K2 [game]
        5 GETTABLEKS                       R4 R4 K3 ["Workspace"]
        7 GETTABLEKS                       R4 R4 K4 ["CurrentCamera"]
        9 GETTABLEKS                       R4 R4 K5 ["CFrame"]
       11 GETTABLEKS                       R4 R4 K6 ["Position"]
       13 SUB                              R3 R2 R4
       14 LOADK                            R5 K7 [{1, 0, 1}]
       15 MUL                              R4 R3 R5
       16 GETTABLEKS                       R4 R4 K8 ["unit"]
       18 GETIMPORT                        R5 K11 [Vector2.new]
       20 GETTABLEKS                       R6 R1 K12 ["X"]
       22 LOADN                            R7 0
       23 CALL                             R5 2 1
       24 GETIMPORT                        R6 K13 [CFrame.new]
       26 LOADK                            R7 K14 [{0, 0, 0}]
       27 MOVE                             R8 R4
       28 CALL                             R6 2 1
       29 GETIMPORT                        R9 K16 [CFrame.Angles]
       31 LOADN                            R10 0
       32 GETTABLEKS                       R12 R5 K12 ["X"]
       34 MINUS                            R11 R12
       35 LOADN                            R12 0
       36 CALL                             R9 3 1
       37 MUL                              R8 R9 R6
       38 GETIMPORT                        R9 K16 [CFrame.Angles]
       40 GETTABLEKS                       R11 R5 K17 ["Y"]
       42 MINUS                            R10 R11
       43 LOADN                            R11 0
       44 LOADN                            R12 0
       45 CALL                             R9 3 1
       46 MUL                              R7 R8 R9
       47 GETTABLEKS                       R7 R7 K18 ["LookVector"]
       49 LOADK                            R9 K7 [{1, 0, 1}]
       50 MUL                              R8 R7 R9
       51 GETTABLEKS                       R8 R8 K8 ["unit"]
       53 RETURN                           R8 1

PROTO_47:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Character"]
        5 JUMPIFNOT                        R1 ; [+25]
        6 GETTABLEKS                       R3 R0 K1 ["humanoidCache"]
        8 GETUPVAL                         R4 0
        9 GETTABLE                         R2 R3 R4
       10 JUMPIFNOT                        R2 ; [+5]
       11 GETTABLEKS                       R3 R2 K2 ["Parent"]
       13 JUMPIFNOTEQ                      R3 R1 ; [+2]
       15 RETURN                           R2 1
       16 GETTABLEKS                       R3 R0 K1 ["humanoidCache"]
       18 GETUPVAL                         R4 0
       19 LOADNIL                          R5
       20 SETTABLE                         R5 R3 R4
       21 LOADK                            R5 K3 ["Humanoid"]
       22 NAMECALL                         R3 R1 K4 ["FindFirstChildOfClass"]
       24 CALL                             R3 2 1
       25 JUMPIFNOT                        R3 ; [+4]
       26 GETTABLEKS                       R4 R0 K1 ["humanoidCache"]
       28 GETUPVAL                         R5 0
       29 SETTABLE                         R3 R4 R5
       30 RETURN                           R3 1
       31 LOADNIL                          R2
       32 RETURN                           R2 1

PROTO_48:
        0 GETTABLEKS                       R1 R0 K0 ["subjectStateChangedConn"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["subjectStateChangedConn"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["subjectStateChangedConn"]
       11 RETURN                           R0 0

PROTO_49:
        0 GETTABLEKS                       R1 R0 K0 ["inFirstPerson"]
        2 RETURN                           R1 1

PROTO_50:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R3 K2 ["BaseCamera:Update() This is a virtual function that should never be getting called."]
        3 LOADN                            R4 2
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["VREnabled"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETTABLEKS                       R1 R0 K1 ["inFirstPerson"]
        6 JUMPIF                           R1 ; [+5]
        7 LOADK                            R2 K2 [0.258819045102521]
        8 GETTABLEKS                       R3 R0 K3 ["currentSubjectDistance"]
       10 MUL                              R1 R2 R3
       11 RETURN                           R1 1
       12 LOADN                            R1 0
       13 RETURN                           R1 1

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
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["GuiService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [UserSettings]
       21 CALL                             R3 0 1
       22 LOADK                            R5 K8 ["UserGameSettings"]
       23 NAMECALL                         R3 R3 K3 ["GetService"]
       25 CALL                             R3 2 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETIMPORT                        R5 K12 [script]
       30 GETTABLEKS                       R5 R5 K13 ["Parent"]
       32 GETTABLEKS                       R5 R5 K13 ["Parent"]
       34 LOADK                            R7 K14 ["CommonUtils"]
       35 NAMECALL                         R5 R5 K15 ["WaitForChild"]
       37 CALL                             R5 2 -1
       38 CALL                             R4 -1 1
       39 GETTABLEKS                       R5 R4 K16 ["get"]
       41 LOADK                            R6 K17 ["ConnectionUtil"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R4 K16 ["get"]
       45 LOADK                            R7 K18 ["FlagUtil"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETIMPORT                        R8 K12 [script]
       51 GETTABLEKS                       R8 R8 K13 ["Parent"]
       53 LOADK                            R10 K19 ["CameraUtils"]
       54 NAMECALL                         R8 R8 K15 ["WaitForChild"]
       56 CALL                             R8 2 -1
       57 CALL                             R7 -1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETIMPORT                        R9 K12 [script]
       62 GETTABLEKS                       R9 R9 K13 ["Parent"]
       64 LOADK                            R11 K20 ["ZoomController"]
       65 NAMECALL                         R9 R9 K15 ["WaitForChild"]
       67 CALL                             R9 2 -1
       68 CALL                             R8 -1 1
       69 GETIMPORT                        R9 K10 [require]
       71 GETIMPORT                        R10 K12 [script]
       73 GETTABLEKS                       R10 R10 K13 ["Parent"]
       75 LOADK                            R12 K21 ["CameraToggleStateController"]
       76 NAMECALL                         R10 R10 K15 ["WaitForChild"]
       78 CALL                             R10 2 -1
       79 CALL                             R9 -1 1
       80 GETIMPORT                        R10 K10 [require]
       82 GETIMPORT                        R11 K12 [script]
       84 GETTABLEKS                       R11 R11 K13 ["Parent"]
       86 LOADK                            R13 K22 ["CameraInput"]
       87 NAMECALL                         R11 R11 K15 ["WaitForChild"]
       89 CALL                             R11 2 -1
       90 CALL                             R10 -1 1
       91 GETIMPORT                        R11 K10 [require]
       93 GETIMPORT                        R12 K12 [script]
       95 GETTABLEKS                       R12 R12 K13 ["Parent"]
       97 LOADK                            R14 K23 ["CameraUI"]
       98 NAMECALL                         R12 R12 K15 ["WaitForChild"]
      100 CALL                             R12 2 -1
      101 CALL                             R11 -1 1
      102 GETIMPORT                        R12 K12 [script]
      104 GETTABLEKS                       R12 R12 K13 ["Parent"]
      106 GETTABLEKS                       R12 R12 K13 ["Parent"]
      108 LOADK                            R14 K24 ["InputContexts"]
      109 NAMECALL                         R12 R12 K15 ["WaitForChild"]
      111 CALL                             R12 2 1
      112 LOADK                            R15 K25 ["CameraContext"]
      113 NAMECALL                         R13 R12 K15 ["WaitForChild"]
      115 CALL                             R13 2 1
      116 LOADK                            R16 K26 ["CameraGamepadZoomAction"]
      117 NAMECALL                         R14 R13 K15 ["WaitForChild"]
      119 CALL                             R14 2 1
      120 GETTABLEKS                       R15 R0 K27 ["LocalPlayer"]
      122 DUPTABLE                         R16 K33 [{["CHARACTER_ADDED"] = "CHARACTER_ADDED", ["CAMERA_MODE_CHANGED"] = "CAMERA_MODE_CHANGED", ["CAMERA_MIN_DISTANCE_CHANGED"] = "CAMERA_MIN_DISTANCE_CHANGED", ["CAMERA_MAX_DISTANCE_CHANGED"] = "CAMERA_MAX_DISTANCE_CHANGED", ["SELECTION_MODE_CHANGED"] = "SELECTION_MODE_CHANGED"}]
      123 NEWTABLE                         R17 64 0
      125 SETTABLEKS                       R17 R17 K34 ["__index"]
      127 DUPCLOSURE                       R18 K35 [PROTO_1]
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R3
      133 SETTABLEKS                       R18 R17 K36 ["new"]
      135 DUPCLOSURE                       R18 K37 [PROTO_2]
      136 SETTABLEKS                       R18 R17 K38 ["GetModuleName"]
      138 DUPCLOSURE                       R18 K39 [PROTO_3]
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R2
      141 DUPCLOSURE                       R19 K40 [PROTO_9]
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R14
      145 SETTABLEKS                       R19 R17 K41 ["_setUpConfigurations"]
      147 DUPCLOSURE                       R19 K42 [PROTO_10]
      148 SETTABLEKS                       R19 R17 K43 ["OnCharacterAdded"]
      150 DUPCLOSURE                       R19 K44 [PROTO_11]
      151 CAPTURE                          VAL R15
      152 SETTABLEKS                       R19 R17 K45 ["GetHumanoidRootPart"]
      154 DUPCLOSURE                       R19 K46 [PROTO_12]
      155 SETTABLEKS                       R19 R17 K47 ["GetSubjectCFrame"]
      157 DUPCLOSURE                       R19 K48 [PROTO_13]
      158 SETTABLEKS                       R19 R17 K49 ["GetSubjectVelocity"]
      160 DUPCLOSURE                       R19 K50 [PROTO_14]
      161 SETTABLEKS                       R19 R17 K51 ["GetSubjectRotVelocity"]
      163 DUPCLOSURE                       R19 K52 [PROTO_15]
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R8
      166 SETTABLEKS                       R19 R17 K53 ["StepZoom"]
      168 DUPCLOSURE                       R19 K54 [PROTO_16]
      169 SETTABLEKS                       R19 R17 K55 ["GetSubjectPosition"]
      171 DUPCLOSURE                       R19 K56 [PROTO_18]
      172 SETTABLEKS                       R19 R17 K57 ["OnCurrentCameraChanged"]
      174 DUPCLOSURE                       R19 K58 [PROTO_19]
      175 SETTABLEKS                       R19 R17 K59 ["OnPlayerCameraPropertyChange"]
      177 DUPCLOSURE                       R19 K60 [PROTO_20]
      178 SETTABLEKS                       R19 R17 K61 ["InputTranslationToCameraAngleChange"]
      180 DUPCLOSURE                       R19 K62 [PROTO_21]
      181 CAPTURE                          VAL R15
      182 SETTABLEKS                       R19 R17 K63 ["GamepadZoomPress"]
      184 DUPCLOSURE                       R19 K64 [PROTO_22]
      185 SETTABLEKS                       R19 R17 K65 ["Enable"]
      187 DUPCLOSURE                       R19 K66 [PROTO_24]
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R15
      191 SETTABLEKS                       R19 R17 K67 ["OnEnabledChanged"]
      193 DUPCLOSURE                       R19 K68 [PROTO_25]
      194 SETTABLEKS                       R19 R17 K69 ["GetEnabled"]
      196 DUPCLOSURE                       R19 K70 [PROTO_26]
      197 CAPTURE                          VAL R7
      198 SETTABLEKS                       R19 R17 K71 ["Cleanup"]
      200 DUPCLOSURE                       R19 K72 [PROTO_27]
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R11
      203 CAPTURE                          VAL R10
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R7
      206 SETTABLEKS                       R19 R17 K73 ["UpdateMouseBehavior"]
      208 DUPCLOSURE                       R19 K74 [PROTO_28]
      209 SETTABLEKS                       R19 R17 K75 ["UpdateForDistancePropertyChange"]
      211 DUPCLOSURE                       R19 K76 [PROTO_29]
      212 CAPTURE                          VAL R15
      213 CAPTURE                          VAL R8
      214 SETTABLEKS                       R19 R17 K77 ["SetCameraToSubjectDistance"]
      216 DUPCLOSURE                       R19 K78 [PROTO_30]
      217 SETTABLEKS                       R19 R17 K79 ["SetCameraType"]
      219 DUPCLOSURE                       R19 K80 [PROTO_31]
      220 SETTABLEKS                       R19 R17 K81 ["GetCameraType"]
      222 DUPCLOSURE                       R19 K82 [PROTO_32]
      223 SETTABLEKS                       R19 R17 K83 ["SetCameraMovementMode"]
      225 DUPCLOSURE                       R19 K84 [PROTO_33]
      226 SETTABLEKS                       R19 R17 K85 ["GetCameraMovementMode"]
      228 DUPCLOSURE                       R19 K86 [PROTO_34]
      229 SETTABLEKS                       R19 R17 K87 ["SetIsMouseLocked"]
      231 DUPCLOSURE                       R19 K88 [PROTO_35]
      232 SETTABLEKS                       R19 R17 K89 ["GetIsMouseLocked"]
      234 DUPCLOSURE                       R19 K90 [PROTO_36]
      235 SETTABLEKS                       R19 R17 K91 ["SetMouseLockOffset"]
      237 DUPCLOSURE                       R19 K92 [PROTO_37]
      238 SETTABLEKS                       R19 R17 K93 ["GetMouseLockOffset"]
      240 DUPCLOSURE                       R19 K94 [PROTO_38]
      241 SETTABLEKS                       R19 R17 K95 ["InFirstPerson"]
      243 DUPCLOSURE                       R19 K96 [PROTO_39]
      244 SETTABLEKS                       R19 R17 K97 ["EnterFirstPerson"]
      246 DUPCLOSURE                       R19 K98 [PROTO_40]
      247 SETTABLEKS                       R19 R17 K99 ["LeaveFirstPerson"]
      249 DUPCLOSURE                       R19 K100 [PROTO_41]
      250 SETTABLEKS                       R19 R17 K101 ["GetCameraToSubjectDistance"]
      252 DUPCLOSURE                       R19 K102 [PROTO_42]
      253 SETTABLEKS                       R19 R17 K103 ["GetMeasuredDistanceToFocus"]
      255 DUPCLOSURE                       R19 K104 [PROTO_43]
      256 SETTABLEKS                       R19 R17 K105 ["GetCameraLookVector"]
      258 DUPCLOSURE                       R19 K106 [PROTO_44]
      259 SETTABLEKS                       R19 R17 K107 ["CalculateNewLookCFrameFromArg"]
      261 DUPCLOSURE                       R19 K108 [PROTO_45]
      262 SETTABLEKS                       R19 R17 K109 ["CalculateNewLookVectorFromArg"]
      264 DUPCLOSURE                       R19 K110 [PROTO_46]
      265 SETTABLEKS                       R19 R17 K111 ["CalculateNewLookVectorVRFromArg"]
      267 DUPCLOSURE                       R19 K112 [PROTO_47]
      268 CAPTURE                          VAL R15
      269 SETTABLEKS                       R19 R17 K113 ["GetHumanoid"]
      271 DUPCLOSURE                       R19 K114 [PROTO_48]
      272 SETTABLEKS                       R19 R17 K115 ["OnNewCameraSubject"]
      274 DUPCLOSURE                       R19 K116 [PROTO_49]
      275 SETTABLEKS                       R19 R17 K117 ["IsInFirstPerson"]
      277 DUPCLOSURE                       R19 K118 [PROTO_50]
      278 SETTABLEKS                       R19 R17 K119 ["Update"]
      280 DUPCLOSURE                       R19 K120 [PROTO_51]
      281 CAPTURE                          VAL R1
      282 SETTABLEKS                       R19 R17 K121 ["GetCameraHeight"]
      284 RETURN                           R17 1
