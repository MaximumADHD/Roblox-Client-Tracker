PROTO_0:
        0 GETTABLEKS                       R5 R0 K1 ["X"]
        2 POWK                             R4 R5 K0 [2]
        3 GETTABLEKS                       R6 R0 K2 ["Y"]
        5 POWK                             R5 R6 K0 [2]
        6 ADD                              R3 R4 R5
        7 GETTABLEKS                       R5 R0 K3 ["Z"]
        9 POWK                             R4 R5 K0 [2]
       10 ADD                              R2 R3 R4
       11 FASTCALL1                        MATH_SQRT R2 ; [+2]
       12 GETIMPORT                        R1 K6 [math.sqrt]
       14 CALL                             R1 1 1
       15 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K1 ["getCuboidDiameter"]
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 DIVK                             R3 R4 K0 [2]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["fitSphereToCamera"]
        9 MOVE                             R5 R3
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 CALL                             R4 3 -1
       13 RETURN                           R4 -1

PROTO_2:
        0 FASTCALL1                        MATH_RAD R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K3 [math.rad]
        4 CALL                             R4 1 1
        5 MULK                             R3 R4 K0 [0.5]
        6 LOADN                            R4 1
        7 JUMPIFNOTLT                      R2 R4 ; [+12]
        9 FASTCALL1                        MATH_TAN R3 ; [+3]
       10 MOVE                             R7 R3
       11 GETIMPORT                        R6 K5 [math.tan]
       13 CALL                             R6 1 1
       14 MUL                              R5 R2 R6
       15 FASTCALL1                        MATH_ATAN R5 ; [+2]
       16 GETIMPORT                        R4 K7 [math.atan]
       18 CALL                             R4 1 1
       19 MOVE                             R3 R4
       20 FASTCALL1                        MATH_SIN R3 ; [+3]
       21 MOVE                             R6 R3
       22 GETIMPORT                        R5 K9 [math.sin]
       24 CALL                             R5 1 1
       25 DIV                              R4 R0 R5
       26 RETURN                           R4 1

PROTO_3:
        0 NAMECALL                         R3 R1 K0 ["GetBoundingBox"]
        2 CALL                             R3 1 2
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K1 ["fitBoundingBoxToCamera"]
        6 MOVE                             R6 R4
        7 GETTABLEKS                       R7 R0 K2 ["FieldOfView"]
        9 MOVE                             R8 R2
       10 CALL                             R5 3 1
       11 GETTABLEKS                       R9 R0 K3 ["CFrame"]
       13 GETTABLEKS                       R8 R9 K4 ["Rotation"]
       15 GETTABLEKS                       R9 R3 K5 ["Position"]
       17 ADD                              R7 R8 R9
       18 GETTABLEKS                       R10 R0 K3 ["CFrame"]
       20 GETTABLEKS                       R9 R10 K6 ["LookVector"]
       22 MUL                              R8 R9 R5
       23 SUB                              R6 R7 R8
       24 RETURN                           R6 1

PROTO_4:
        0 NAMECALL                         R3 R1 K0 ["GetBoundingBox"]
        2 CALL                             R3 1 2
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K1 ["fitBoundingBoxToCamera"]
        6 MOVE                             R6 R4
        7 GETTABLEKS                       R7 R0 K2 ["FieldOfView"]
        9 MOVE                             R8 R2
       10 CALL                             R5 3 1
       11 GETUPVAL                         R7 1
       12 CALL                             R7 0 1
       13 JUMPIFNOT                        R7 ; [+26]
       14 GETIMPORT                        R6 K5 [CFrame.lookAt]
       16 GETTABLEKS                       R10 R3 K6 ["Position"]
       18 GETTABLEKS                       R13 R4 K8 ["Magnitude"]
       20 LOADK                            R14 K9 [{0, 0, -1}]
       21 MUL                              R12 R13 R14
       22 MULK                             R11 R12 K7 [2]
       23 ADD                              R9 R10 R11
       24 GETTABLEKS                       R12 R4 K8 ["Magnitude"]
       26 LOADK                            R13 K11 [{1, 0, 0}]
       27 MUL                              R11 R12 R13
       28 MULK                             R10 R11 K10 [1]
       29 SUB                              R8 R9 R10
       30 GETTABLEKS                       R11 R4 K8 ["Magnitude"]
       32 LOADK                            R12 K13 [{0, 1, 0}]
       33 MUL                              R10 R11 R12
       34 MULK                             R9 R10 K12 [0.5]
       35 ADD                              R7 R8 R9
       36 GETTABLEKS                       R8 R3 K6 ["Position"]
       38 CALL                             R6 2 1
       39 JUMP                             ; [+28]
       40 GETIMPORT                        R6 K5 [CFrame.lookAt]
       42 GETTABLEKS                       R10 R3 K6 ["Position"]
       44 GETTABLEKS                       R13 R4 K8 ["Magnitude"]
       46 GETTABLEKS                       R14 R3 K14 ["LookVector"]
       48 MUL                              R12 R13 R14
       49 MULK                             R11 R12 K7 [2]
       50 ADD                              R9 R10 R11
       51 GETTABLEKS                       R12 R4 K8 ["Magnitude"]
       53 GETTABLEKS                       R13 R3 K15 ["RightVector"]
       55 MUL                              R11 R12 R13
       56 MULK                             R10 R11 K10 [1]
       57 SUB                              R8 R9 R10
       58 GETTABLEKS                       R11 R4 K8 ["Magnitude"]
       60 GETTABLEKS                       R12 R3 K16 ["UpVector"]
       62 MUL                              R10 R11 R12
       63 MULK                             R9 R10 K12 [0.5]
       64 ADD                              R7 R8 R9
       65 GETTABLEKS                       R8 R3 K6 ["Position"]
       67 CALL                             R6 2 1
       68 GETTABLEKS                       R9 R6 K17 ["Rotation"]
       70 GETTABLEKS                       R10 R3 K6 ["Position"]
       72 ADD                              R8 R9 R10
       73 GETTABLEKS                       R10 R6 K14 ["LookVector"]
       75 MUL                              R9 R10 R5
       76 SUB                              R7 R8 R9
       77 RETURN                           R7 1

PROTO_5:
        0 NAMECALL                         R3 R1 K0 ["GetBoundingBox"]
        2 CALL                             R3 1 1
        3 GETIMPORT                        R4 K4 [Enum.CameraType.Fixed]
        5 SETTABLEKS                       R4 R0 K2 ["CameraType"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K5 ["getZoomedCFrame"]
       10 MOVE                             R5 R0
       11 MOVE                             R6 R1
       12 MOVE                             R7 R2
       13 CALL                             R4 3 1
       14 SETTABLEKS                       R4 R0 K6 ["CFrame"]
       16 SETTABLEKS                       R3 R0 K7 ["Focus"]
       18 RETURN                           R0 0

PROTO_6:
        0 NAMECALL                         R2 R1 K0 ["GetBoundingBox"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R5 R2 K1 ["Position"]
        5 NAMECALL                         R3 R0 K2 ["WorldToScreenPoint"]
        7 CALL                             R3 2 2
        8 NOT                              R5 R4
        9 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagAvatarAutosetupOptionsInput"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 8 0
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 SETTABLEKS                       R3 R2 K10 ["getCuboidDiameter"]
       21 DUPCLOSURE                       R3 K11 [PROTO_1]
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R3 R2 K12 ["fitBoundingBoxToCamera"]
       25 DUPCLOSURE                       R3 K13 [PROTO_2]
       26 SETTABLEKS                       R3 R2 K14 ["fitSphereToCamera"]
       28 DUPCLOSURE                       R3 K15 [PROTO_3]
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R3 R2 K16 ["getZoomedCFrame"]
       32 DUPCLOSURE                       R3 K17 [PROTO_4]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R3 R2 K18 ["getAngledAndZoomedCFrame"]
       37 DUPCLOSURE                       R3 K19 [PROTO_5]
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R3 R2 K20 ["zoomToExtents"]
       41 DUPCLOSURE                       R3 K21 [PROTO_6]
       42 SETTABLEKS                       R3 R2 K22 ["zoomIsRequired"]
       44 RETURN                           R2 1
