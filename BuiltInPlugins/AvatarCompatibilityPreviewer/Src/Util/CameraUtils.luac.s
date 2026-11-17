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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K1 ["getCuboidDiameter"]
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 DIVK                             R3 R4 K0 [2]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["fitSphereToCamera"]
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
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["fitBoundingBoxToCamera"]
        6 MOVE                             R6 R4
        7 GETTABLEKS                       R7 R0 K2 ["FieldOfView"]
        9 MOVE                             R8 R2
       10 CALL                             R5 3 1
       11 GETTABLEKS                       R8 R0 K3 ["CFrame"]
       13 GETTABLEKS                       R8 R8 K4 ["Rotation"]
       15 GETTABLEKS                       R9 R3 K5 ["Position"]
       17 ADD                              R7 R8 R9
       18 GETTABLEKS                       R9 R0 K3 ["CFrame"]
       20 GETTABLEKS                       R9 R9 K6 ["LookVector"]
       22 MUL                              R8 R9 R5
       23 SUB                              R6 R7 R8
       24 RETURN                           R6 1

PROTO_4:
        0 NAMECALL                         R3 R1 K0 ["GetBoundingBox"]
        2 CALL                             R3 1 2
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["fitBoundingBoxToCamera"]
        6 MOVE                             R6 R4
        7 GETTABLEKS                       R7 R0 K2 ["FieldOfView"]
        9 MOVE                             R8 R2
       10 CALL                             R5 3 1
       11 GETIMPORT                        R6 K5 [CFrame.lookAt]
       13 GETTABLEKS                       R10 R3 K6 ["Position"]
       15 GETTABLEKS                       R13 R4 K8 ["Magnitude"]
       17 LOADK                            R14 K9 [{0, 0, -1}]
       18 MUL                              R12 R13 R14
       19 MULK                             R11 R12 K7 [2]
       20 ADD                              R9 R10 R11
       21 GETTABLEKS                       R12 R4 K8 ["Magnitude"]
       23 LOADK                            R13 K11 [{1, 0, 0}]
       24 MUL                              R11 R12 R13
       25 MULK                             R10 R11 K10 [1]
       26 SUB                              R8 R9 R10
       27 GETTABLEKS                       R11 R4 K8 ["Magnitude"]
       29 LOADK                            R12 K13 [{0, 1, 0}]
       30 MUL                              R10 R11 R12
       31 MULK                             R9 R10 K12 [0.5]
       32 ADD                              R7 R8 R9
       33 GETTABLEKS                       R8 R3 K6 ["Position"]
       35 CALL                             R6 2 1
       36 GETTABLEKS                       R9 R6 K14 ["Rotation"]
       38 GETTABLEKS                       R10 R3 K6 ["Position"]
       40 ADD                              R8 R9 R10
       41 GETTABLEKS                       R10 R6 K15 ["LookVector"]
       43 MUL                              R9 R10 R5
       44 SUB                              R7 R8 R9
       45 RETURN                           R7 1

PROTO_5:
        0 NAMECALL                         R3 R1 K0 ["GetBoundingBox"]
        2 CALL                             R3 1 1
        3 GETIMPORT                        R4 K4 [Enum.CameraType.Fixed]
        5 SETTABLEKS                       R4 R0 K2 ["CameraType"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K5 ["getZoomedCFrame"]
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

PROTO_7:
        0 GETTABLEKS                       R2 R0 K1 ["ViewportSize"]
        2 DIVK                             R1 R2 K0 [2]
        3 GETTABLEKS                       R4 R1 K2 ["X"]
        5 GETTABLEKS                       R5 R1 K3 ["Y"]
        7 LOADN                            R6 0
        8 NAMECALL                         R2 R0 K4 ["ViewportPointToRay"]
       10 CALL                             R2 4 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R5 R2 K5 ["Origin"]
       14 GETTABLEKS                       R7 R2 K7 ["Direction"]
       16 MULK                             R6 R7 K6 [25]
       17 NAMECALL                         R3 R3 K8 ["Raycast"]
       19 CALL                             R3 3 1
       20 JUMPIFNOTEQKNIL                  R3 ; [+8]
       22 GETTABLEKS                       R5 R2 K5 ["Origin"]
       24 GETTABLEKS                       R7 R2 K7 ["Direction"]
       26 MULK                             R6 R7 K6 [25]
       27 ADD                              R4 R5 R6
       28 RETURN                           R4 1
       29 GETTABLEKS                       R4 R3 K9 ["Position"]
       31 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 8 0
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 SETTABLEKS                       R2 R1 K5 ["getCuboidDiameter"]
       12 DUPCLOSURE                       R2 K6 [PROTO_1]
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R2 R1 K7 ["fitBoundingBoxToCamera"]
       16 DUPCLOSURE                       R2 K8 [PROTO_2]
       17 SETTABLEKS                       R2 R1 K9 ["fitSphereToCamera"]
       19 DUPCLOSURE                       R2 K10 [PROTO_3]
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R2 R1 K11 ["getZoomedCFrame"]
       23 DUPCLOSURE                       R2 K12 [PROTO_4]
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R2 R1 K13 ["getAngledAndZoomedCFrame"]
       27 DUPCLOSURE                       R2 K14 [PROTO_5]
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R2 R1 K15 ["zoomToExtents"]
       31 DUPCLOSURE                       R2 K16 [PROTO_6]
       32 SETTABLEKS                       R2 R1 K17 ["zoomIsRequired"]
       34 DUPCLOSURE                       R2 K18 [PROTO_7]
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R2 R1 K19 ["getViewTargetPosition"]
       38 RETURN                           R1 1
