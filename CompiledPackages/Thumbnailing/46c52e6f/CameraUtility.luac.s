PROTO_0:
        0 MUL                              R2 R0 R1
        1 GETIMPORT                        R3 K2 [CFrame.lookAt]
        3 MOVE                             R4 R2
        4 GETTABLEKS                       R5 R0 K3 ["Position"]
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_1:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Camera"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["ThumbnailCamera"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETIMPORT                        R1 K9 [Enum.CameraType.Scriptable]
        9 SETTABLEKS                       R1 R0 K7 ["CameraType"]
       11 GETIMPORT                        R2 K11 [workspace]
       13 NAMECALL                         R2 R2 K12 ["GetChildren"]
       15 CALL                             R2 1 1
       16 GETTABLEN                        R1 R2 1
       17 SETTABLEKS                       R1 R0 K13 ["Parent"]
       19 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R7 R2 K1 ["X"]
        2 GETTABLEKS                       R8 R1 K1 ["X"]
        4 SUB                              R6 R7 R8
        5 DIVK                             R5 R6 K0 [2]
        6 GETTABLEKS                       R8 R2 K2 ["Y"]
        8 GETTABLEKS                       R9 R1 K2 ["Y"]
       10 SUB                              R7 R8 R9
       11 DIVK                             R6 R7 K0 [2]
       12 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       14 GETIMPORT                        R4 K5 [math.max]
       16 CALL                             R4 2 1
       17 DIVK                             R6 R0 K0 [2]
       18 FASTCALL1                        MATH_TAN R6 ; [+2]
       19 GETIMPORT                        R5 K7 [math.tan]
       21 CALL                             R5 1 1
       22 MUL                              R7 R4 R3
       23 DIV                              R6 R7 R5
       24 RETURN                           R6 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["optFieldOfView"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETTABLEKS                       R2 R1 K0 ["optFieldOfView"]
        5 SETTABLEKS                       R2 R0 K1 ["FieldOfView"]
        7 GETTABLEKS                       R2 R1 K2 ["optFieldOfViewForDistanceScale"]
        9 JUMPIF                           R2 ; [+2]
       10 GETTABLEKS                       R2 R0 K1 ["FieldOfView"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["CalculateBaseDistanceToCamera"]
       15 FASTCALL1                        MATH_RAD R2 ; [+3]
       16 MOVE                             R5 R2
       17 GETIMPORT                        R4 K6 [math.rad]
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R5 R1 K7 ["minExtent"]
       22 GETTABLEKS                       R6 R1 K8 ["maxExtent"]
       24 GETTABLEKS                       R7 R1 K9 ["extentScale"]
       26 CALL                             R3 4 1
       27 GETTABLEKS                       R4 R1 K10 ["optCameraDistanceScale"]
       29 JUMPIFNOT                        R4 ; [+3]
       30 GETTABLEKS                       R4 R1 K10 ["optCameraDistanceScale"]
       32 MUL                              R3 R3 R4
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K11 ["AdjustTargetCFrameWithExtents"]
       36 GETTABLEKS                       R5 R1 K12 ["targetCFrame"]
       38 GETTABLEKS                       R6 R1 K7 ["minExtent"]
       40 GETTABLEKS                       R7 R1 K8 ["maxExtent"]
       42 CALL                             R4 3 1
       43 GETTABLEKS                       R6 R1 K14 ["optCameraXRot"]
       45 ORK                              R5 R6 K13 [0]
       46 GETTABLEKS                       R7 R1 K15 ["optCameraYRot"]
       48 ORK                              R6 R7 K13 [0]
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R7 R7 K16 ["Vector3FromXYRotPlusDistance"]
       52 MOVE                             R8 R5
       53 MOVE                             R9 R6
       54 MOVE                             R10 R3
       55 CALL                             R7 3 1
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K17 ["GetCameraCFrame"]
       59 MOVE                             R9 R4
       60 MOVE                             R10 R7
       61 CALL                             R8 2 1
       62 SETTABLEKS                       R8 R0 K18 ["CFrame"]
       64 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R4 0 0
        2 LENGTH                           R5 R2
        3 LOADN                            R6 0
        4 JUMPIFNOTLT                      R6 R5 ; [+21]
        6 GETIMPORT                        R5 K1 [pairs]
        8 MOVE                             R6 R2
        9 CALL                             R5 1 3
       10 FORGPREP_NEXT                    R5
       11 MOVE                             R12 R9
       12 LOADB                            R13 1
       13 NAMECALL                         R10 R0 K2 ["FindFirstChild"]
       15 CALL                             R10 3 1
       16 JUMPIFNOT                        R10 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       19 MOVE                             R12 R4
       20 MOVE                             R13 R10
       21 GETIMPORT                        R11 K5 [table.insert]
       23 CALL                             R11 2 0
       24 FORGLOOP                         R5 2 ; [-14]
       26 LOADK                            R7 K6 ["HumanoidRootPart"]
       27 NAMECALL                         R5 R0 K2 ["FindFirstChild"]
       29 CALL                             R5 2 1
       30 GETTABLEKS                       R6 R5 K7 ["CFrame"]
       32 JUMPIFNOT                        R1 ; [+2]
       33 GETUPVAL                         R7 0
       34 JUMP                             ; [+1]
       35 GETUPVAL                         R7 1
       36 MUL                              R6 R7 R6
       37 GETUPVAL                         R8 2
       38 GETTABLEKS                       R8 R8 K8 ["CalculateBodyPartsExtents"]
       40 MOVE                             R9 R6
       41 MOVE                             R10 R4
       42 CALL                             R8 2 2
       43 DUPTABLE                         R10 K15 [{["optFieldOfView"] = 30, ["targetCFrame"], ["minExtent"], ["maxExtent"], ["extentScale"]}]
       44 SETTABLEKS                       R6 R10 K11 ["targetCFrame"]
       46 SETTABLEKS                       R8 R10 K12 ["minExtent"]
       48 SETTABLEKS                       R9 R10 K13 ["maxExtent"]
       50 GETUPVAL                         R11 3
       51 GETTABLEKS                       R11 R11 K16 ["DefaultBodyPartMarginScale"]
       53 SETTABLEKS                       R11 R10 K14 ["extentScale"]
       55 GETUPVAL                         R11 3
       56 GETTABLEKS                       R11 R11 K17 ["SetupCamera"]
       58 MOVE                             R12 R3
       59 MOVE                             R13 R10
       60 CALL                             R11 2 0
       61 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R4 K0 ["Head"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["CalculateTargetCFrame"]
        7 GETTABLEKS                       R4 R2 K3 ["CFrame"]
        9 CALL                             R3 1 1
       10 GETIMPORT                        R4 K5 [CFrame.fromEulerAnglesYXZ]
       12 LOADK                            R5 K6 [0.261799387799149]
       13 LOADK                            R6 K7 [0.523598775598299]
       14 LOADN                            R7 0
       15 CALL                             R4 3 1
       16 MUL                              R3 R4 R3
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K8 ["CalculateHeadExtents"]
       20 MOVE                             R6 R0
       21 MOVE                             R7 R3
       22 CALL                             R5 2 2
       23 DUPTABLE                         R7 K16 [{["optFieldOfView"] = 30, ["targetCFrame"], ["minExtent"], ["maxExtent"], ["extentScale"] = 1.1}]
       24 SETTABLEKS                       R3 R7 K11 ["targetCFrame"]
       26 SETTABLEKS                       R5 R7 K12 ["minExtent"]
       28 SETTABLEKS                       R6 R7 K13 ["maxExtent"]
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R8 R8 K17 ["SetupCamera"]
       33 MOVE                             R9 R1
       34 MOVE                             R10 R7
       35 CALL                             R8 2 0
       36 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R3 K0 ["MeshPart"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        9 MOVE                             R3 R1
       10 LOADK                            R4 K2 ["Assert handle is not nil to silence type checker"]
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 2 0
       14 LOADK                            R5 K5 ["LeftFootAttachment"]
       15 NAMECALL                         R3 R1 K6 ["FindFirstChild"]
       17 CALL                             R3 2 1
       18 JUMPIFNOTEQKNIL                  R3 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_7:
        0 LOADK                            R3 K0 ["MeshPart"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        9 MOVE                             R3 R1
       10 LOADK                            R4 K2 ["Assert handle is not nil to silence type checker"]
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 2 0
       14 LOADK                            R5 K5 ["RightFootAttachment"]
       15 NAMECALL                         R3 R1 K6 ["FindFirstChild"]
       17 CALL                             R3 2 1
       18 JUMPIFNOTEQKNIL                  R3 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_8:
        0 LOADK                            R4 K0 ["MeshPart"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADB                            R1 0
        6 JUMP                             ; [+15]
        7 FASTCALL2K                       ASSERT R2 K2 ; [+5]
        9 MOVE                             R4 R2
       10 LOADK                            R5 K2 ["Assert handle is not nil to silence type checker"]
       11 GETIMPORT                        R3 K4 [assert]
       13 CALL                             R3 2 0
       14 LOADK                            R5 K5 ["LeftFootAttachment"]
       15 NAMECALL                         R3 R2 K6 ["FindFirstChild"]
       17 CALL                             R3 2 1
       18 JUMPIFNOTEQKNIL                  R3 ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 JUMPIFNOT                        R1 ; [+2]
       23 GETUPVAL                         R1 0
       24 RETURN                           R1 1
       25 LOADK                            R4 K0 ["MeshPart"]
       26 NAMECALL                         R2 R0 K1 ["FindFirstChildWhichIsA"]
       28 CALL                             R2 2 1
       29 JUMPIF                           R2 ; [+2]
       30 LOADB                            R1 0
       31 JUMP                             ; [+15]
       32 FASTCALL2K                       ASSERT R2 K2 ; [+5]
       34 MOVE                             R4 R2
       35 LOADK                            R5 K2 ["Assert handle is not nil to silence type checker"]
       36 GETIMPORT                        R3 K4 [assert]
       38 CALL                             R3 2 0
       39 LOADK                            R5 K7 ["RightFootAttachment"]
       40 NAMECALL                         R3 R2 K6 ["FindFirstChild"]
       42 CALL                             R3 2 1
       43 JUMPIFNOTEQKNIL                  R3 ; [+2]
       45 LOADB                            R1 0 +1
       46 LOADB                            R1 1
       47 JUMPIFNOT                        R1 ; [+2]
       48 GETUPVAL                         R1 1
       49 RETURN                           R1 1
       50 GETUPVAL                         R1 2
       51 RETURN                           R1 1

PROTO_9:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 1
        3 LENGTH                           R5 R2
        4 JUMPIFEQKN                       R5 K1 [1] ; [+2]
        6 LOADB                            R4 0 +1
        7 LOADB                            R4 1
        8 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       10 LOADK                            R5 K2 ["Assert SetupMeshPartAccessoryCamera accessoryModel only has accessory as a child."]
       11 GETIMPORT                        R3 K4 [assert]
       13 CALL                             R3 2 0
       14 GETTABLEN                        R3 R2 1
       15 LOADK                            R6 K5 ["Handle"]
       16 NAMECALL                         R4 R3 K6 ["FindFirstChild"]
       18 CALL                             R4 2 1
       19 FASTCALL2K                       ASSERT R4 K7 ; [+5]
       21 MOVE                             R6 R4
       22 LOADK                            R7 K7 ["Assert Accessory has handle for camera setup."]
       23 GETIMPORT                        R5 K4 [assert]
       25 CALL                             R5 2 0
       26 GETIMPORT                        R5 K10 [CFrame.new]
       28 CALL                             R5 0 1
       29 SETTABLEKS                       R5 R4 K8 ["CFrame"]
       31 GETTABLEKS                       R6 R4 K8 ["CFrame"]
       33 LOADK                            R11 K11 ["MeshPart"]
       34 NAMECALL                         R9 R3 K12 ["FindFirstChildWhichIsA"]
       36 CALL                             R9 2 1
       37 JUMPIF                           R9 ; [+2]
       38 LOADB                            R8 0
       39 JUMP                             ; [+15]
       40 FASTCALL2K                       ASSERT R9 K13 ; [+5]
       42 MOVE                             R11 R9
       43 LOADK                            R12 K13 ["Assert handle is not nil to silence type checker"]
       44 GETIMPORT                        R10 K4 [assert]
       46 CALL                             R10 2 0
       47 LOADK                            R12 K14 ["LeftFootAttachment"]
       48 NAMECALL                         R10 R9 K6 ["FindFirstChild"]
       50 CALL                             R10 2 1
       51 JUMPIFNOTEQKNIL                  R10 ; [+2]
       53 LOADB                            R8 0 +1
       54 LOADB                            R8 1
       55 JUMPIFNOT                        R8 ; [+2]
       56 GETUPVAL                         R7 0
       57 JUMP                             ; [+26]
       58 LOADK                            R11 K11 ["MeshPart"]
       59 NAMECALL                         R9 R3 K12 ["FindFirstChildWhichIsA"]
       61 CALL                             R9 2 1
       62 JUMPIF                           R9 ; [+2]
       63 LOADB                            R8 0
       64 JUMP                             ; [+15]
       65 FASTCALL2K                       ASSERT R9 K13 ; [+5]
       67 MOVE                             R11 R9
       68 LOADK                            R12 K13 ["Assert handle is not nil to silence type checker"]
       69 GETIMPORT                        R10 K4 [assert]
       71 CALL                             R10 2 0
       72 LOADK                            R12 K15 ["RightFootAttachment"]
       73 NAMECALL                         R10 R9 K6 ["FindFirstChild"]
       75 CALL                             R10 2 1
       76 JUMPIFNOTEQKNIL                  R10 ; [+2]
       78 LOADB                            R8 0 +1
       79 LOADB                            R8 1
       80 JUMPIFNOT                        R8 ; [+2]
       81 GETUPVAL                         R7 1
       82 JUMP                             ; [+1]
       83 GETUPVAL                         R7 2
       84 MUL                              R5 R6 R7
       85 GETUPVAL                         R6 3
       86 GETTABLEKS                       R6 R6 K16 ["CalculateModelExtents"]
       88 MOVE                             R7 R0
       89 MOVE                             R8 R5
       90 CALL                             R6 2 2
       91 DUPTABLE                         R8 K24 [{["optFieldOfView"] = 20, ["targetCFrame"], ["minExtent"], ["maxExtent"], ["extentScale"] = 1.1}]
       92 SETTABLEKS                       R5 R8 K19 ["targetCFrame"]
       94 SETTABLEKS                       R6 R8 K20 ["minExtent"]
       96 SETTABLEKS                       R7 R8 K21 ["maxExtent"]
       98 GETUPVAL                         R9 4
       99 GETTABLEKS                       R9 R9 K25 ["SetupCamera"]
      101 MOVE                             R10 R1
      102 MOVE                             R11 R8
      103 CALL                             R9 2 0
      104 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R2 K3 [script]
        7 GETTABLEKS                       R2 R2 K4 ["Parent"]
        9 GETTABLEKS                       R2 R2 K5 ["CFrameUtility"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K1 [require]
       14 GETIMPORT                        R3 K3 [script]
       16 GETTABLEKS                       R3 R3 K4 ["Parent"]
       18 GETTABLEKS                       R3 R3 K6 ["VectorUtility"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K1 [require]
       23 GETIMPORT                        R4 K3 [script]
       25 GETTABLEKS                       R4 R4 K4 ["Parent"]
       27 GETTABLEKS                       R4 R4 K7 ["CharacterUtility"]
       29 CALL                             R3 1 1
       30 LOADK                            R4 K8 [1.1]
       31 SETTABLEKS                       R4 R0 K9 ["DefaultHeadMarginScale"]
       33 LOADK                            R4 K8 [1.1]
       34 SETTABLEKS                       R4 R0 K10 ["DefaultBodyMarginScale"]
       36 LOADK                            R4 K11 [1.2]
       37 SETTABLEKS                       R4 R0 K12 ["DefaultBodyPartMarginScale"]
       39 LOADN                            R4 15
       40 SETTABLEKS                       R4 R0 K13 ["XRotForFullBody"]
       42 LOADN                            R4 0
       43 SETTABLEKS                       R4 R0 K14 ["XRotForCloseup"]
       45 LOADN                            R4 1
       46 SETTABLEKS                       R4 R0 K15 ["DistanceScaleForFullBody"]
       48 GETIMPORT                        R4 K18 [CFrame.fromEulerAnglesYXZ]
       50 LOADK                            R5 K19 [-0.349065850398866]
       51 LOADK                            R6 K20 [0.349065850398866]
       52 LOADN                            R7 0
       53 CALL                             R4 3 1
       54 GETIMPORT                        R5 K18 [CFrame.fromEulerAnglesYXZ]
       56 LOADK                            R6 K19 [-0.349065850398866]
       57 LOADK                            R7 K19 [-0.349065850398866]
       58 LOADN                            R8 0
       59 CALL                             R5 3 1
       60 GETIMPORT                        R6 K22 [CFrame.Angles]
       62 LOADK                            R7 K23 [0.436332312998582]
       63 LOADK                            R8 K23 [0.436332312998582]
       64 LOADN                            R9 0
       65 CALL                             R6 3 1
       66 GETIMPORT                        R7 K22 [CFrame.Angles]
       68 LOADN                            R8 0
       69 LOADK                            R9 K24 [1.5707963267949]
       70 LOADN                            R10 0
       71 CALL                             R7 3 1
       72 GETIMPORT                        R8 K22 [CFrame.Angles]
       74 LOADN                            R9 0
       75 LOADK                            R10 K25 [-1.5707963267949]
       76 LOADN                            R11 0
       77 CALL                             R8 3 1
       78 DUPCLOSURE                       R9 K26 [PROTO_0]
       79 SETTABLEKS                       R9 R0 K27 ["GetCameraCFrame"]
       81 DUPCLOSURE                       R9 K28 [PROTO_1]
       82 SETTABLEKS                       R9 R0 K29 ["CreateThumbnailCamera"]
       84 DUPCLOSURE                       R9 K30 [PROTO_2]
       85 SETTABLEKS                       R9 R0 K31 ["CalculateBaseDistanceToCamera"]
       87 DUPCLOSURE                       R9 K32 [PROTO_3]
       88 CAPTURE                          VAL R0
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R2
       91 SETTABLEKS                       R9 R0 K33 ["SetupCamera"]
       93 DUPCLOSURE                       R9 K34 [PROTO_4]
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R9 R0 K35 ["SetupBodyPartCamera"]
      100 DUPCLOSURE                       R9 K36 [PROTO_5]
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R0
      104 SETTABLEKS                       R9 R0 K37 ["SetupHeadCamera"]
      106 DUPCLOSURE                       R9 K38 [PROTO_6]
      107 DUPCLOSURE                       R10 K39 [PROTO_7]
      108 DUPCLOSURE                       R11 K40 [PROTO_8]
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R6
      112 DUPCLOSURE                       R12 K41 [PROTO_9]
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R0
      118 SETTABLEKS                       R12 R0 K42 ["SetupAccessoryCamera"]
      120 RETURN                           R0 1
