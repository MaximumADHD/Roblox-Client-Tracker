PROTO_0:
        0 DUPTABLE                         R2 K2 [{"_draggerContext", "_jointMaker"}]
        1 SETTABLEKS                       R0 R2 K0 ["_draggerContext"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K3 ["new"]
        6 CALL                             R3 0 1
        7 SETTABLEKS                       R3 R2 K1 ["_jointMaker"]
        9 GETUPVAL                         R3 1
       10 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       12 GETIMPORT                        R1 K5 [setmetatable]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1

PROTO_1:
        0 NAMECALL                         R3 R2 K0 ["isSelectionSinglePart"]
        2 CALL                             R3 1 1
        3 JUMPIFNOT                        R3 ; [+10]
        4 NAMECALL                         R4 R2 K1 ["getObjectsToTransform"]
        6 CALL                             R4 1 1
        7 GETTABLEN                        R3 R4 1
        8 GETTABLEKS                       R4 R3 K2 ["CFrame"]
       10 LOADK                            R5 K3 [{0, 0, 0}]
       11 GETTABLEKS                       R6 R3 K4 ["Size"]
       13 RETURN                           R4 3
       14 NAMECALL                         R3 R2 K5 ["getBoundingBox"]
       16 CALL                             R3 1 3
       17 LOADK                            R7 K6 [0.5]
       18 MUL                              R6 R7 R5
       19 SUB                              R7 R4 R6
       20 GETUPVAL                         R9 0
       21 NAMECALL                         R7 R7 K7 ["Min"]
       23 CALL                             R7 2 1
       24 ADD                              R8 R4 R6
       25 GETUPVAL                         R10 0
       26 NAMECALL                         R8 R8 K8 ["Max"]
       28 CALL                             R8 2 1
       29 SUB                              R5 R8 R7
       30 ADD                              R9 R8 R7
       31 DIVK                             R4 R9 K9 [2]
       32 RETURN                           R3 3

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R4 R4 K1 ["isCtrlKeyDown"]
        4 CALL                             R4 1 -1
        5 RETURN                           R4 -1

PROTO_3:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 ADDK                             R1 R1 K0 [1]
        6 FORGLOOP                         R2 1 ; [-2]
        8 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R3 K3 [{"X", "Y", "Z"}]
        1 LOADB                            R4 1
        2 SETTABLEKS                       R4 R3 K0 ["X"]
        4 LOADB                            R4 1
        5 SETTABLEKS                       R4 R3 K1 ["Y"]
        7 LOADB                            R4 1
        8 SETTABLEKS                       R4 R3 K2 ["Z"]
       10 GETUPVAL                         R5 0
       11 CALL                             R5 0 1
       12 JUMPIFNOT                        R5 ; [+6]
       13 GETTABLEKS                       R4 R0 K4 ["_draggerContext"]
       15 NAMECALL                         R4 R4 K5 ["isAltKeyDown"]
       17 CALL                             R4 1 1
       18 JUMP                             ; [+5]
       19 GETTABLEKS                       R4 R0 K4 ["_draggerContext"]
       21 NAMECALL                         R4 R4 K6 ["isShiftKeyDown"]
       23 CALL                             R4 1 1
       24 JUMPIFNOT                        R4 ; [+1]
       25 RETURN                           R3 1
       26 NAMECALL                         R4 R1 K7 ["getRootModelMapping"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R6 R4 K8 ["LoosePartMap"]
       31 LOADN                            R7 0
       32 MOVE                             R8 R6
       33 LOADNIL                          R9
       34 LOADNIL                          R10
       35 FORGPREP                         R8
       36 ADDK                             R7 R7 K9 [1]
       37 FORGLOOP                         R8 1 ; [-2]
       39 MOVE                             R5 R7
       40 GETTABLEKS                       R7 R4 K10 ["RootModelMap"]
       42 LOADN                            R8 0
       43 MOVE                             R9 R7
       44 LOADNIL                          R10
       45 LOADNIL                          R11
       46 FORGPREP                         R9
       47 ADDK                             R8 R8 K9 [1]
       48 FORGLOOP                         R9 1 ; [-2]
       50 MOVE                             R6 R8
       51 LOADN                            R7 0
       52 JUMPIFLT                         R7 R6 ; [+4]
       54 LOADN                            R7 1
       55 JUMPIFNOTLT                      R7 R5 ; [+2]
       57 RETURN                           R3 1
       58 GETIMPORT                        R7 K12 [next]
       60 GETTABLEKS                       R8 R4 K8 ["LoosePartMap"]
       62 CALL                             R7 1 1
       63 JUMPIFNOT                        R7 ; [+12]
       64 LOADK                            R10 K13 ["Part"]
       65 NAMECALL                         R8 R7 K14 ["IsA"]
       67 CALL                             R8 2 1
       68 JUMPIFNOT                        R8 ; [+7]
       69 GETTABLEKS                       R8 R7 K15 ["Shape"]
       71 GETIMPORT                        R9 K19 [Enum.PartType.Ball]
       73 JUMPIFNOTEQ                      R8 R9 ; [+2]
       75 RETURN                           R3 1
       76 NEWTABLE                         R8 0 3
       78 DUPTABLE                         R9 K20 [{"X"}]
       79 LOADB                            R10 1
       80 SETTABLEKS                       R10 R9 K0 ["X"]
       82 DUPTABLE                         R10 K21 [{"Y"}]
       83 LOADB                            R11 1
       84 SETTABLEKS                       R11 R10 K1 ["Y"]
       86 DUPTABLE                         R11 K22 [{"Z"}]
       87 LOADB                            R12 1
       88 SETTABLEKS                       R12 R11 K2 ["Z"]
       90 SETLIST                          R8 R9 3 [1]
       92 GETTABLE                         R9 R8 R2
       93 RETURN                           R9 1

PROTO_5:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["setToVector3"]
        3 MOVE                             R5 R2
        4 CALL                             R4 1 1
        5 LOADK                            R8 K3 [{1, 1, 1}]
        6 SUB                              R7 R8 R4
        7 MULK                             R6 R7 K2 [2048]
        8 MULK                             R5 R6 K1 [10]
        9 NAMECALL                         R6 R1 K4 ["getObjectsToTransform"]
       11 CALL                             R6 1 1
       12 GETUPVAL                         R7 1
       13 GETUPVAL                         R8 2
       14 LOADN                            R9 0
       15 LOADK                            R10 K5 [0.001]
       16 LENGTH                           R11 R6
       17 JUMPIFNOTEQKN                    R11 K6 [1] ; [+9]
       19 GETTABLEN                        R11 R6 1
       20 LOADK                            R13 K7 ["TrussPart"]
       21 NAMECALL                         R11 R11 K8 ["IsA"]
       23 CALL                             R11 2 1
       24 JUMPIFNOT                        R11 ; [+2]
       25 LOADN                            R9 0
       26 LOADN                            R10 2
       27 GETIMPORT                        R11 K10 [ipairs]
       29 MOVE                             R12 R6
       30 CALL                             R11 1 3
       31 FORGPREP_INEXT                   R11
       32 GETTABLEKS                       R18 R15 K11 ["Size"]
       34 NAMECALL                         R16 R7 K12 ["Max"]
       36 CALL                             R16 2 1
       37 MOVE                             R7 R16
       38 GETTABLEKS                       R18 R15 K11 ["Size"]
       40 NAMECALL                         R16 R8 K13 ["Min"]
       42 CALL                             R16 2 1
       43 MOVE                             R8 R16
       44 FORGLOOP                         R11 2 [inext] ; [-13]
       46 GETUPVAL                         R12 0
       47 GETTABLEKS                       R11 R12 K14 ["maxComponent"]
       49 SUB                              R12 R7 R5
       50 CALL                             R11 1 1
       51 GETUPVAL                         R13 0
       52 GETTABLEKS                       R12 R13 K15 ["minComponent"]
       54 ADD                              R13 R8 R5
       55 CALL                             R12 1 1
       56 DIV                              R13 R9 R11
       57 DIV                              R14 R10 R12
       58 MUL                              R18 R13 R3
       59 SUB                              R17 R18 R5
       60 NAMECALL                         R15 R3 K12 ["Max"]
       62 CALL                             R15 2 1
       63 MUL                              R19 R14 R3
       64 ADD                              R18 R19 R5
       65 NAMECALL                         R16 R3 K13 ["Min"]
       67 CALL                             R16 2 1
       68 MOVE                             R17 R16
       69 MOVE                             R18 R15
       70 RETURN                           R17 2

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_reenableJointList"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["_adjustScaleJointList"]
        8 GETTABLEKS                       R1 R0 K2 ["_partToRootMap"]
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 NAMECALL                         R6 R4 K3 ["GetJoints"]
       15 CALL                             R6 1 3
       16 FORGPREP                         R6
       17 LOADK                            R13 K4 ["WeldConstraint"]
       18 NAMECALL                         R11 R10 K5 ["IsA"]
       20 CALL                             R11 2 1
       21 JUMPIFNOT                        R11 ; [+23]
       22 GETUPVAL                         R12 0
       23 GETTABLEKS                       R11 R12 K6 ["getWeldConstraintCounterpart"]
       25 MOVE                             R12 R10
       26 MOVE                             R13 R4
       27 CALL                             R11 2 1
       28 GETTABLEKS                       R13 R0 K2 ["_partToRootMap"]
       30 GETTABLE                         R12 R13 R11
       31 JUMPIFEQ                         R12 R5 ; [+48]
       33 LOADB                            R12 0
       34 SETTABLEKS                       R12 R10 K7 ["Enabled"]
       36 GETTABLEKS                       R13 R0 K0 ["_reenableJointList"]
       38 FASTCALL2                        TABLE_INSERT R13 R10 ; [+4]
       40 MOVE                             R14 R10
       41 GETIMPORT                        R12 K10 [table.insert]
       43 CALL                             R12 2 0
       44 JUMP                             ; [+35]
       45 LOADK                            R13 K11 ["JointInstance"]
       46 NAMECALL                         R11 R10 K5 ["IsA"]
       48 CALL                             R11 2 1
       49 JUMPIFNOT                        R11 ; [+30]
       50 GETUPVAL                         R12 0
       51 GETTABLEKS                       R11 R12 K12 ["getJointInstanceCounterpart"]
       53 MOVE                             R12 R10
       54 MOVE                             R13 R4
       55 CALL                             R11 2 1
       56 GETTABLEKS                       R13 R0 K2 ["_partToRootMap"]
       58 GETTABLE                         R12 R13 R11
       59 JUMPIFEQ                         R12 R5 ; [+20]
       61 LOADB                            R12 0
       62 SETTABLEKS                       R12 R10 K7 ["Enabled"]
       64 GETTABLEKS                       R13 R0 K0 ["_reenableJointList"]
       66 FASTCALL2                        TABLE_INSERT R13 R10 ; [+4]
       68 MOVE                             R14 R10
       69 GETIMPORT                        R12 K10 [table.insert]
       71 CALL                             R12 2 0
       72 GETTABLEKS                       R13 R0 K1 ["_adjustScaleJointList"]
       74 FASTCALL2                        TABLE_INSERT R13 R10 ; [+4]
       76 MOVE                             R14 R10
       77 GETIMPORT                        R12 K10 [table.insert]
       79 CALL                             R12 2 0
       80 FORGLOOP                         R6 2 ; [-64]
       82 FORGLOOP                         R1 2 ; [-70]
       84 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_adjustScaleJointList"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R9 R6 K1 ["C0"]
        7 GETTABLEKS                       R8 R9 K2 ["Rotation"]
        9 GETTABLEKS                       R11 R6 K1 ["C0"]
       11 GETTABLEKS                       R10 R11 K3 ["Position"]
       13 MUL                              R9 R10 R1
       14 ADD                              R7 R8 R9
       15 SETTABLEKS                       R7 R6 K1 ["C0"]
       17 GETTABLEKS                       R9 R6 K4 ["C1"]
       19 GETTABLEKS                       R8 R9 K2 ["Rotation"]
       21 GETTABLEKS                       R11 R6 K4 ["C1"]
       23 GETTABLEKS                       R10 R11 K3 ["Position"]
       25 MUL                              R9 R10 R1
       26 ADD                              R7 R8 R9
       27 SETTABLEKS                       R7 R6 K4 ["C1"]
       29 FORGLOOP                         R2 2 ; [-25]
       31 GETTABLEKS                       R2 R0 K5 ["_reenableJointList"]
       33 LOADNIL                          R3
       34 LOADNIL                          R4
       35 FORGPREP                         R2
       36 LOADB                            R7 1
       37 SETTABLEKS                       R7 R6 K6 ["Enabled"]
       39 FORGLOOP                         R2 2 ; [-4]
       41 LOADNIL                          R2
       42 SETTABLEKS                       R2 R0 K5 ["_reenableJointList"]
       44 LOADNIL                          R2
       45 SETTABLEKS                       R2 R0 K0 ["_adjustScaleJointList"]
       47 RETURN                           R0 0

PROTO_8:
        0 MOVE                             R6 R1
        1 MOVE                             R7 R2
        2 NAMECALL                         R4 R0 K0 ["getBoundingBox"]
        4 CALL                             R4 3 3
        5 SETTABLEKS                       R6 R0 K1 ["_originalBoundingBoxSize"]
        7 GETIMPORT                        R8 K4 [CFrame.new]
        9 MOVE                             R9 R5
       10 CALL                             R8 1 1
       11 MUL                              R7 R4 R8
       12 SETTABLEKS                       R7 R0 K5 ["_originalBoundingBoxCFrame"]
       14 SETTABLEKS                       R2 R0 K6 ["_initialSelectionInfo"]
       16 LOADNIL                          R7
       17 NAMECALL                         R8 R2 K7 ["getObjectsToTransform"]
       19 CALL                             R8 1 2
       20 SETTABLEKS                       R8 R0 K8 ["_allParts"]
       22 MOVE                             R7 R9
       23 NAMECALL                         R8 R2 K9 ["getRootModelMapping"]
       25 CALL                             R8 1 1
       26 GETTABLEKS                       R9 R8 K10 ["PartToRootMap"]
       28 SETTABLEKS                       R9 R0 K11 ["_partToRootMap"]
       30 GETTABLEKS                       R9 R8 K12 ["LoosePartMap"]
       32 SETTABLEKS                       R9 R0 K13 ["_loosePartMap"]
       34 GETTABLEKS                       R9 R8 K14 ["RootModelMap"]
       36 SETTABLEKS                       R9 R0 K15 ["_rootModelMap"]
       38 NEWTABLE                         R9 0 0
       40 SETTABLEKS                       R9 R0 K16 ["_originalDimensionMap"]
       42 GETTABLEKS                       R9 R0 K13 ["_loosePartMap"]
       44 LOADNIL                          R10
       45 LOADNIL                          R11
       46 FORGPREP                         R9
       47 GETTABLEKS                       R14 R0 K16 ["_originalDimensionMap"]
       49 GETTABLEKS                       R15 R12 K17 ["Size"]
       51 SETTABLE                         R15 R14 R12
       52 FORGLOOP                         R9 1 ; [-6]
       54 GETTABLEKS                       R9 R0 K15 ["_rootModelMap"]
       56 LOADNIL                          R10
       57 LOADNIL                          R11
       58 FORGPREP                         R9
       59 GETTABLEKS                       R14 R0 K16 ["_originalDimensionMap"]
       61 NAMECALL                         R15 R12 K18 ["GetScale"]
       63 CALL                             R15 1 1
       64 SETTABLE                         R15 R14 R12
       65 FORGLOOP                         R9 1 ; [-7]
       67 NAMECALL                         R9 R2 K19 ["isSelectionSinglePart"]
       69 CALL                             R9 1 1
       70 SETTABLEKS                       R9 R0 K20 ["_isSinglePartMode"]
       72 GETTABLEKS                       R9 R0 K21 ["_jointMaker"]
       74 GETTABLEKS                       R11 R0 K8 ["_allParts"]
       76 GETTABLEKS                       R12 R0 K15 ["_rootModelMap"]
       78 NAMECALL                         R9 R9 K22 ["pickUpParts"]
       80 CALL                             R9 3 0
       81 GETUPVAL                         R9 0
       82 NAMECALL                         R9 R9 K23 ["IsRunning"]
       84 CALL                             R9 1 1
       85 JUMPIFNOT                        R9 ; [+5]
       86 GETTABLEKS                       R9 R0 K21 ["_jointMaker"]
       88 NAMECALL                         R9 R9 K24 ["anchorParts"]
       90 CALL                             R9 1 0
       91 GETTABLEKS                       R9 R0 K21 ["_jointMaker"]
       93 NAMECALL                         R9 R9 K25 ["breakJointsToOutsiders"]
       95 CALL                             R9 1 0
       96 NAMECALL                         R9 R0 K26 ["_unjoinRoots"]
       98 CALL                             R9 1 0
       99 MOVE                             R11 R7
      100 NAMECALL                         R9 R0 K27 ["_recordLooseAttachmentFixup"]
      102 CALL                             R9 2 0
      103 GETTABLEKS                       R11 R0 K13 ["_loosePartMap"]
      105 NAMECALL                         R9 R0 K28 ["_recordLoosePartFixup"]
      107 CALL                             R9 2 0
      108 GETTABLEKS                       R9 R0 K29 ["_draggerContext"]
      110 NAMECALL                         R9 R9 K30 ["areCollisionsEnabled"]
      112 CALL                             R9 1 1
      113 JUMPIF                           R9 ; [+8]
      114 GETUPVAL                         R10 1
      115 GETTABLEKS                       R9 R10 K3 ["new"]
      117 GETTABLEKS                       R10 R0 K8 ["_allParts"]
      119 CALL                             R9 1 1
      120 SETTABLEKS                       R9 R0 K31 ["_temporaryTransparency"]
      122 LOADK                            R9 K32 [{0, 0, 0}]
      123 SETTABLEKS                       R9 R0 K33 ["_lastDeltaSize"]
      125 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R3 R3 K1 ["areCollisionsEnabled"]
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+3]
        6 NEWTABLE                         R3 0 0
        8 RETURN                           R3 1
        9 LOADNIL                          R5
       10 GETTABLEKS                       R6 R0 K2 ["_initialSelectionInfo"]
       12 NAMECALL                         R3 R0 K3 ["getBoundingBox"]
       14 CALL                             R3 3 3
       15 LOADNIL                          R6
       16 LOADNIL                          R7
       17 MOVE                             R10 R1
       18 NAMECALL                         R8 R3 K4 ["VectorToObjectSpace"]
       20 CALL                             R8 2 1
       21 MUL                              R10 R5 R8
       22 GETTABLEKS                       R9 R10 K5 ["Magnitude"]
       24 GETIMPORT                        R11 K8 [CFrame.new]
       26 MOVE                             R12 R4
       27 CALL                             R11 1 1
       28 MUL                              R10 R3 R11
       29 LOADK                            R13 K9 [0.5]
       30 MUL                              R12 R13 R9
       31 MUL                              R11 R1 R12
       32 ADD                              R6 R10 R11
       33 LOADK                            R11 K10 [{0.2, 0.2, 0.2}]
       34 ADD                              R10 R5 R11
       35 GETUPVAL                         R12 0
       36 GETTABLEKS                       R11 R12 K11 ["complimentDirection"]
       38 MOVE                             R12 R8
       39 CALL                             R11 1 1
       40 MUL                              R7 R10 R11
       41 GETTABLEKS                       R10 R0 K0 ["_draggerContext"]
       43 NAMECALL                         R10 R10 K12 ["getMaxSoftSnaps"]
       45 CALL                             R10 1 1
       46 NEWTABLE                         R11 0 2
       48 LOADN                            R12 255
       49 LOADN                            R13 1
       50 SETLIST                          R11 R12 2 [1]
       52 NEWTABLE                         R12 0 1
       54 LOADN                            R13 1
       55 SETLIST                          R12 R13 1 [1]
       57 GETUPVAL                         R13 1
       58 MOVE                             R14 R6
       59 MOVE                             R15 R7
       60 MOVE                             R16 R1
       61 GETTABLEKS                       R17 R0 K2 ["_initialSelectionInfo"]
       63 NAMECALL                         R17 R17 K13 ["getObjectsToTransform"]
       65 CALL                             R17 1 1
       66 MOVE                             R18 R11
       67 MOVE                             R19 R12
       68 MOVE                             R20 R10
       69 CALL                             R13 7 -1
       70 RETURN                           R13 -1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+5]
        3 SUB                              R3 R1 R2
        4 LOADK                            R4 K0 [1E-05]
        5 JUMPIFNOTLT                      R3 R4 ; [+2]
        7 RETURN                           R0 1
        8 DIV                              R5 R0 R1
        9 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       10 GETIMPORT                        R4 K3 [math.floor]
       12 CALL                             R4 1 1
       13 MUL                              R3 R4 R1
       14 SUB                              R4 R0 R3
       15 JUMPIFNOTLT                      R4 R2 ; [+2]
       17 RETURN                           R3 1
       18 RETURN                           R0 1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R2 R2 K1 ["getGridSize"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R5 R1 K2 ["X"]
        7 GETUPVAL                         R6 0
        8 CALL                             R6 0 1
        9 JUMPIFNOT                        R6 ; [+6]
       10 SUBK                             R6 R2 K3 [0.001]
       11 LOADK                            R7 K4 [1E-05]
       12 JUMPIFNOTLT                      R6 R7 ; [+3]
       14 MOVE                             R4 R5
       15 JUMP                             ; [+14]
       16 DIV                              R8 R5 R2
       17 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       18 GETIMPORT                        R7 K7 [math.floor]
       20 CALL                             R7 1 1
       21 MUL                              R6 R7 R2
       22 SUB                              R7 R5 R6
       23 LOADK                            R8 K3 [0.001]
       24 JUMPIFNOTLT                      R7 R8 ; [+3]
       26 MOVE                             R4 R6
       27 JUMP                             ; [+2]
       28 MOVE                             R4 R5
       29 JUMP                             ; [0]
       30 GETTABLEKS                       R6 R1 K8 ["Y"]
       32 GETUPVAL                         R7 0
       33 CALL                             R7 0 1
       34 JUMPIFNOT                        R7 ; [+6]
       35 SUBK                             R7 R2 K3 [0.001]
       36 LOADK                            R8 K4 [1E-05]
       37 JUMPIFNOTLT                      R7 R8 ; [+3]
       39 MOVE                             R5 R6
       40 JUMP                             ; [+14]
       41 DIV                              R9 R6 R2
       42 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       43 GETIMPORT                        R8 K7 [math.floor]
       45 CALL                             R8 1 1
       46 MUL                              R7 R8 R2
       47 SUB                              R8 R6 R7
       48 LOADK                            R9 K3 [0.001]
       49 JUMPIFNOTLT                      R8 R9 ; [+3]
       51 MOVE                             R5 R7
       52 JUMP                             ; [+2]
       53 MOVE                             R5 R6
       54 JUMP                             ; [0]
       55 GETTABLEKS                       R7 R1 K9 ["Z"]
       57 GETUPVAL                         R8 0
       58 CALL                             R8 0 1
       59 JUMPIFNOT                        R8 ; [+6]
       60 SUBK                             R8 R2 K3 [0.001]
       61 LOADK                            R9 K4 [1E-05]
       62 JUMPIFNOTLT                      R8 R9 ; [+3]
       64 MOVE                             R6 R7
       65 JUMP                             ; [+14]
       66 DIV                              R10 R7 R2
       67 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       68 GETIMPORT                        R9 K7 [math.floor]
       70 CALL                             R9 1 1
       71 MUL                              R8 R9 R2
       72 SUB                              R9 R7 R8
       73 LOADK                            R10 K3 [0.001]
       74 JUMPIFNOTLT                      R9 R10 ; [+3]
       76 MOVE                             R6 R8
       77 JUMP                             ; [+2]
       78 MOVE                             R6 R7
       79 JUMP                             ; [0]
       80 FASTCALL                         VECTOR ; [+2]
       81 GETIMPORT                        R3 K12 [Vector3.new]
       83 CALL                             R3 3 1
       84 RETURN                           R3 1

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 FASTCALL1                        MATH_ABS R3 ; [+2]
        3 GETIMPORT                        R2 K3 [math.abs]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R4 R0 K4 ["Y"]
        8 FASTCALL1                        MATH_ABS R4 ; [+2]
        9 GETIMPORT                        R3 K3 [math.abs]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R5 R0 K5 ["Z"]
       14 FASTCALL1                        MATH_ABS R5 ; [+2]
       15 GETIMPORT                        R4 K3 [math.abs]
       17 CALL                             R4 1 1
       18 FASTCALL                         MATH_MIN ; [+2]
       19 GETIMPORT                        R1 K7 [math.min]
       21 CALL                             R1 3 1
       22 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R4 R0 K0 ["X"]
        2 FASTCALL1                        MATH_ABS R4 ; [+2]
        3 GETIMPORT                        R3 K3 [math.abs]
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R5 R0 K4 ["Y"]
        8 FASTCALL1                        MATH_ABS R5 ; [+2]
        9 GETIMPORT                        R4 K3 [math.abs]
       11 CALL                             R4 1 1
       12 GETTABLEKS                       R6 R0 K5 ["Z"]
       14 FASTCALL1                        MATH_ABS R6 ; [+2]
       15 GETIMPORT                        R5 K3 [math.abs]
       17 CALL                             R5 1 1
       18 FASTCALL                         MATH_MIN ; [+2]
       19 GETIMPORT                        R2 K7 [math.min]
       21 CALL                             R2 3 1
       22 GETTABLEKS                       R5 R1 K0 ["X"]
       24 FASTCALL1                        MATH_ABS R5 ; [+2]
       25 GETIMPORT                        R4 K3 [math.abs]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R6 R1 K4 ["Y"]
       30 FASTCALL1                        MATH_ABS R6 ; [+2]
       31 GETIMPORT                        R5 K3 [math.abs]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R7 R1 K5 ["Z"]
       36 FASTCALL1                        MATH_ABS R7 ; [+2]
       37 GETIMPORT                        R6 K3 [math.abs]
       39 CALL                             R6 1 1
       40 FASTCALL                         MATH_MIN ; [+2]
       41 GETIMPORT                        R3 K7 [math.min]
       43 CALL                             R3 3 1
       44 JUMPIFNOTEQKN                    R3 K8 [0] ; [+3]
       46 LOADN                            R4 0
       47 RETURN                           R4 1
       48 DIV                              R4 R2 R3
       49 RETURN                           R4 1

PROTO_14:
        0 GETTABLEKS                       R4 R1 K0 ["X"]
        2 JUMPIFNOTEQKN                    R4 K1 [0] ; [+3]
        4 LOADN                            R3 1
        5 JUMP                             ; [+5]
        6 GETTABLEKS                       R4 R0 K0 ["X"]
        8 GETTABLEKS                       R5 R1 K0 ["X"]
       10 DIV                              R3 R4 R5
       11 GETTABLEKS                       R5 R1 K2 ["Y"]
       13 JUMPIFNOTEQKN                    R5 K1 [0] ; [+3]
       15 LOADN                            R4 1
       16 JUMP                             ; [+5]
       17 GETTABLEKS                       R5 R0 K2 ["Y"]
       19 GETTABLEKS                       R6 R1 K2 ["Y"]
       21 DIV                              R4 R5 R6
       22 GETTABLEKS                       R6 R1 K3 ["Z"]
       24 JUMPIFNOTEQKN                    R6 K1 [0] ; [+3]
       26 LOADN                            R5 1
       27 JUMP                             ; [+5]
       28 GETTABLEKS                       R6 R0 K3 ["Z"]
       30 GETTABLEKS                       R7 R1 K3 ["Z"]
       32 DIV                              R5 R6 R7
       33 FASTCALL                         VECTOR ; [+2]
       34 GETIMPORT                        R2 K6 [Vector3.new]
       36 CALL                             R2 3 1
       37 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MUL                              R2 R3 R0
        3 SETTABLEKS                       R2 R1 K0 ["_lastDeltaSize"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R3 3
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["_lastDeltaSize"]
       10 ADD                              R2 R3 R4
       11 SETTABLEKS                       R2 R1 K1 ["Size"]
       13 GETUPVAL                         R2 5
       14 MUL                              R1 R2 R0
       15 SETUPVAL                         R1 4
       16 GETUPVAL                         R1 2
       17 GETUPVAL                         R3 6
       18 GETIMPORT                        R4 K4 [CFrame.new]
       20 GETUPVAL                         R5 4
       21 CALL                             R4 1 1
       22 MUL                              R2 R3 R4
       23 SETTABLEKS                       R2 R1 K2 ["CFrame"]
       25 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MUL                              R2 R3 R0
        3 SETTABLEKS                       R2 R1 K0 ["_lastDeltaSize"]
        5 GETUPVAL                         R2 3
        6 MUL                              R1 R2 R0
        7 SETUPVAL                         R1 2
        8 LOADN                            R2 1
        9 GETUPVAL                         R5 4
       10 SUBK                             R4 R5 K1 [1]
       11 MUL                              R3 R0 R4
       12 ADD                              R1 R2 R3
       13 FASTCALL3                        VECTOR R1 R1 R1
       15 MOVE                             R3 R1
       16 MOVE                             R4 R1
       17 MOVE                             R5 R1
       18 GETIMPORT                        R2 K4 [Vector3.new]
       20 CALL                             R2 3 1
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R3 R6 K5 ["_loosePartMap"]
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 FORGPREP                         R3
       27 GETUPVAL                         R11 5
       28 GETTABLE                         R10 R11 R6
       29 MUL                              R9 R10 R0
       30 ADD                              R8 R7 R9
       31 SETTABLEKS                       R8 R6 K6 ["CFrame"]
       33 GETUPVAL                         R11 0
       34 GETTABLEKS                       R10 R11 K7 ["_originalDimensionMap"]
       36 GETTABLE                         R9 R10 R6
       37 MUL                              R8 R9 R2
       38 SETTABLEKS                       R8 R6 K8 ["Size"]
       40 FORGLOOP                         R3 2 ; [-14]
       42 LOADN                            R3 0
       43 JUMPIFNOTLT                      R3 R1 ; [+24]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R3 R6 K9 ["_rootModelMap"]
       48 LOADNIL                          R4
       49 LOADNIL                          R5
       50 FORGPREP                         R3
       51 GETUPVAL                         R13 5
       52 GETTABLE                         R12 R13 R6
       53 MUL                              R11 R12 R0
       54 ADD                              R10 R7 R11
       55 NAMECALL                         R8 R6 K10 ["PivotTo"]
       57 CALL                             R8 2 0
       58 GETUPVAL                         R13 0
       59 GETTABLEKS                       R12 R13 K7 ["_originalDimensionMap"]
       61 GETTABLE                         R11 R12 R6
       62 MUL                              R10 R11 R1
       63 NAMECALL                         R8 R6 K11 ["ScaleTo"]
       65 CALL                             R8 2 0
       66 FORGLOOP                         R3 2 ; [-16]
       68 RETURN                           R0 0

PROTO_17:
        0 LOADNIL                          R3
        1 MOVE                             R4 R2
        2 GETTABLEKS                       R5 R0 K0 ["_isSinglePartMode"]
        4 JUMPIFNOT                        R5 ; [+23]
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 LOADNIL                          R8
        8 GETIMPORT                        R9 K2 [next]
       10 GETTABLEKS                       R10 R0 K3 ["_loosePartMap"]
       12 CALL                             R9 1 2
       13 MOVE                             R6 R9
       14 MOVE                             R7 R10
       15 GETTABLEKS                       R9 R0 K4 ["_originalDimensionMap"]
       17 GETTABLE                         R8 R9 R6
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          REF R6
       22 CAPTURE                          REF R8
       23 CAPTURE                          REF R4
       24 CAPTURE                          VAL R2
       25 CAPTURE                          REF R7
       26 CLOSEUPVALS                      R6
       27 JUMP                             ; [+53]
       28 GETTABLEKS                       R6 R0 K5 ["_originalBoundingBoxCFrame"]
       30 GETTABLEKS                       R7 R0 K6 ["_originalBoundingBoxSize"]
       32 GETTABLEKS                       R8 R6 K7 ["Position"]
       34 MOVE                             R11 R2
       35 NAMECALL                         R9 R6 K8 ["VectorToWorldSpace"]
       37 CALL                             R9 2 1
       38 ADD                              R12 R7 R1
       39 GETTABLEKS                       R11 R12 K9 ["Magnitude"]
       41 GETTABLEKS                       R12 R7 K9 ["Magnitude"]
       43 DIV                              R10 R11 R12
       44 NEWTABLE                         R11 0 0
       46 GETTABLEKS                       R12 R0 K3 ["_loosePartMap"]
       48 LOADNIL                          R13
       49 LOADNIL                          R14
       50 FORGPREP                         R12
       51 GETTABLEKS                       R18 R16 K7 ["Position"]
       53 SUB                              R17 R18 R8
       54 SUBK                             R20 R10 K10 [1]
       55 MUL                              R19 R17 R20
       56 ADD                              R18 R9 R19
       57 SETTABLE                         R18 R11 R15
       58 FORGLOOP                         R12 2 ; [-8]
       60 GETTABLEKS                       R12 R0 K11 ["_rootModelMap"]
       62 LOADNIL                          R13
       63 LOADNIL                          R14
       64 FORGPREP                         R12
       65 GETTABLEKS                       R18 R16 K7 ["Position"]
       67 SUB                              R17 R18 R8
       68 SUBK                             R20 R10 K10 [1]
       69 MUL                              R19 R17 R20
       70 ADD                              R18 R9 R19
       71 SETTABLE                         R18 R11 R15
       72 FORGLOOP                         R12 2 ; [-8]
       74 NEWCLOSURE                       R3 P1
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R1
       77 CAPTURE                          REF R4
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R11
       81 GETTABLEKS                       R6 R0 K12 ["_draggerContext"]
       83 NAMECALL                         R6 R6 K13 ["areCollisionsEnabled"]
       85 CALL                             R6 1 1
       86 JUMPIFNOT                        R6 ; [+90]
       87 GETTABLEKS                       R7 R0 K14 ["_lastDeltaSize"]
       89 GETTABLEKS                       R10 R7 K15 ["X"]
       91 FASTCALL1                        MATH_ABS R10 ; [+2]
       92 GETIMPORT                        R9 K18 [math.abs]
       94 CALL                             R9 1 1
       95 GETTABLEKS                       R11 R7 K19 ["Y"]
       97 FASTCALL1                        MATH_ABS R11 ; [+2]
       98 GETIMPORT                        R10 K18 [math.abs]
      100 CALL                             R10 1 1
      101 GETTABLEKS                       R12 R7 K20 ["Z"]
      103 FASTCALL1                        MATH_ABS R12 ; [+2]
      104 GETIMPORT                        R11 K18 [math.abs]
      106 CALL                             R11 1 1
      107 FASTCALL                         MATH_MIN ; [+2]
      108 GETIMPORT                        R8 K22 [math.min]
      110 CALL                             R8 3 1
      111 GETTABLEKS                       R11 R1 K15 ["X"]
      113 FASTCALL1                        MATH_ABS R11 ; [+2]
      114 GETIMPORT                        R10 K18 [math.abs]
      116 CALL                             R10 1 1
      117 GETTABLEKS                       R12 R1 K19 ["Y"]
      119 FASTCALL1                        MATH_ABS R12 ; [+2]
      120 GETIMPORT                        R11 K18 [math.abs]
      122 CALL                             R11 1 1
      123 GETTABLEKS                       R13 R1 K20 ["Z"]
      125 FASTCALL1                        MATH_ABS R13 ; [+2]
      126 GETIMPORT                        R12 K18 [math.abs]
      128 CALL                             R12 1 1
      129 FASTCALL                         MATH_MIN ; [+2]
      130 GETIMPORT                        R9 K22 [math.min]
      132 CALL                             R9 3 1
      133 JUMPIFNOTEQKN                    R9 K23 [0] ; [+3]
      135 LOADN                            R6 0
      136 JUMP                             ; [+2]
      137 DIV                              R6 R8 R9
      138 JUMP                             ; [0]
      139 GETTABLEKS                       R11 R1 K15 ["X"]
      141 FASTCALL1                        MATH_ABS R11 ; [+2]
      142 GETIMPORT                        R10 K18 [math.abs]
      144 CALL                             R10 1 1
      145 GETTABLEKS                       R12 R1 K19 ["Y"]
      147 FASTCALL1                        MATH_ABS R12 ; [+2]
      148 GETIMPORT                        R11 K18 [math.abs]
      150 CALL                             R11 1 1
      151 GETTABLEKS                       R13 R1 K20 ["Z"]
      153 FASTCALL1                        MATH_ABS R13 ; [+2]
      154 GETIMPORT                        R12 K18 [math.abs]
      156 CALL                             R12 1 1
      157 FASTCALL                         MATH_MIN ; [+2]
      158 GETIMPORT                        R9 K22 [math.min]
      160 CALL                             R9 3 1
      161 FASTCALL2K                       MATH_MAX R9 K10 ; [+4]
      163 LOADK                            R10 K10 [1]
      164 GETIMPORT                        R8 K26 [math.max]
      166 CALL                             R8 2 1
      167 DIVRK                            R7 R24 K8 ["VectorToWorldSpace"]
      168 MOVE                             R10 R3
      169 MOVE                             R11 R6
      170 LOADN                            R12 1
      171 LOADB                            R13 1
      172 MOVE                             R14 R7
      173 NAMECALL                         R8 R0 K27 ["_binarySearchForGoodPartSize"]
      175 CALL                             R8 6 0
      176 JUMP                             ; [+3]
      177 MOVE                             R6 R3
      178 LOADN                            R7 1
      179 CALL                             R6 1 0
      180 GETTABLEKS                       R6 R0 K0 ["_isSinglePartMode"]
      182 JUMPIFNOT                        R6 ; [+12]
      183 GETIMPORT                        R6 K2 [next]
      185 GETTABLEKS                       R7 R0 K3 ["_loosePartMap"]
      187 CALL                             R6 1 1
      188 GETTABLEKS                       R9 R6 K28 ["Size"]
      190 NAMECALL                         R7 R0 K29 ["_maybeSnapPartSizeBackDownToGrid"]
      192 CALL                             R7 2 1
      193 SETTABLEKS                       R7 R6 K28 ["Size"]
      195 GETTABLEKS                       R6 R0 K6 ["_originalBoundingBoxSize"]
      197 GETTABLEKS                       R9 R0 K14 ["_lastDeltaSize"]
      199 ADD                              R8 R6 R9
      200 GETTABLEKS                       R11 R6 K15 ["X"]
      202 JUMPIFNOTEQKN                    R11 K23 [0] ; [+3]
      204 LOADN                            R10 1
      205 JUMP                             ; [+5]
      206 GETTABLEKS                       R11 R8 K15 ["X"]
      208 GETTABLEKS                       R12 R6 K15 ["X"]
      210 DIV                              R10 R11 R12
      211 GETTABLEKS                       R12 R6 K19 ["Y"]
      213 JUMPIFNOTEQKN                    R12 K23 [0] ; [+3]
      215 LOADN                            R11 1
      216 JUMP                             ; [+5]
      217 GETTABLEKS                       R12 R8 K19 ["Y"]
      219 GETTABLEKS                       R13 R6 K19 ["Y"]
      221 DIV                              R11 R12 R13
      222 GETTABLEKS                       R13 R6 K20 ["Z"]
      224 JUMPIFNOTEQKN                    R13 K23 [0] ; [+3]
      226 LOADN                            R12 1
      227 JUMP                             ; [+5]
      228 GETTABLEKS                       R13 R8 K20 ["Z"]
      230 GETTABLEKS                       R14 R6 K20 ["Z"]
      232 DIV                              R12 R13 R14
      233 FASTCALL                         VECTOR ; [+2]
      234 GETIMPORT                        R9 K32 [Vector3.new]
      236 CALL                             R9 3 1
      237 MOVE                             R7 R9
      238 MOVE                             R10 R7
      239 MOVE                             R11 R4
      240 NAMECALL                         R8 R0 K33 ["_applyLoosePartFixup"]
      242 CALL                             R8 3 0
      243 MOVE                             R10 R7
      244 MOVE                             R11 R4
      245 NAMECALL                         R8 R0 K34 ["_applyLooseAttachmentFixup"]
      247 CALL                             R8 3 0
      248 GETTABLEKS                       R8 R0 K35 ["_jointMaker"]
      250 NAMECALL                         R8 R8 K36 ["fixupConstraintLengths"]
      252 CALL                             R8 1 0
      253 GETTABLEKS                       R8 R0 K12 ["_draggerContext"]
      255 NAMECALL                         R8 R8 K37 ["shouldJoinSurfaces"]
      257 CALL                             R8 1 1
      258 JUMPIFNOT                        R8 ; [+7]
      259 GETTABLEKS                       R8 R0 K35 ["_jointMaker"]
      261 NAMECALL                         R8 R8 K38 ["computeJointPairs"]
      263 CALL                             R8 1 1
      264 SETTABLEKS                       R8 R0 K39 ["_jointPairs"]
      266 GETTABLEKS                       R8 R0 K14 ["_lastDeltaSize"]
      268 MOVE                             R9 R4
      269 CLOSEUPVALS                      R4
      270 RETURN                           R8 2

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_jointPairs"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_jointPairs"]
        5 NAMECALL                         R1 R1 K1 ["createJoints"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_jointPairs"]
       11 GETTABLEKS                       R3 R0 K2 ["_originalBoundingBoxSize"]
       13 GETTABLEKS                       R4 R0 K3 ["_lastDeltaSize"]
       15 ADD                              R2 R3 R4
       16 GETTABLEKS                       R3 R0 K2 ["_originalBoundingBoxSize"]
       18 GETTABLEKS                       R6 R2 K4 ["X"]
       20 FASTCALL1                        MATH_ABS R6 ; [+2]
       21 GETIMPORT                        R5 K7 [math.abs]
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R7 R2 K8 ["Y"]
       26 FASTCALL1                        MATH_ABS R7 ; [+2]
       27 GETIMPORT                        R6 K7 [math.abs]
       29 CALL                             R6 1 1
       30 GETTABLEKS                       R8 R2 K9 ["Z"]
       32 FASTCALL1                        MATH_ABS R8 ; [+2]
       33 GETIMPORT                        R7 K7 [math.abs]
       35 CALL                             R7 1 1
       36 FASTCALL                         MATH_MIN ; [+2]
       37 GETIMPORT                        R4 K11 [math.min]
       39 CALL                             R4 3 1
       40 GETTABLEKS                       R7 R3 K4 ["X"]
       42 FASTCALL1                        MATH_ABS R7 ; [+2]
       43 GETIMPORT                        R6 K7 [math.abs]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R8 R3 K8 ["Y"]
       48 FASTCALL1                        MATH_ABS R8 ; [+2]
       49 GETIMPORT                        R7 K7 [math.abs]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R9 R3 K9 ["Z"]
       54 FASTCALL1                        MATH_ABS R9 ; [+2]
       55 GETIMPORT                        R8 K7 [math.abs]
       57 CALL                             R8 1 1
       58 FASTCALL                         MATH_MIN ; [+2]
       59 GETIMPORT                        R5 K11 [math.min]
       61 CALL                             R5 3 1
       62 JUMPIFNOTEQKN                    R5 K12 [0] ; [+3]
       64 LOADN                            R1 0
       65 JUMP                             ; [+2]
       66 DIV                              R1 R4 R5
       67 JUMP                             ; [0]
       68 MOVE                             R4 R1
       69 NAMECALL                         R2 R0 K13 ["_rejoinRoots"]
       71 CALL                             R2 2 0
       72 GETTABLEKS                       R2 R0 K14 ["_jointMaker"]
       74 NAMECALL                         R2 R2 K15 ["restoreAnchored"]
       76 CALL                             R2 1 0
       77 GETTABLEKS                       R2 R0 K14 ["_jointMaker"]
       79 NAMECALL                         R2 R2 K16 ["putDownParts"]
       81 CALL                             R2 1 0
       82 GETTABLEKS                       R2 R0 K17 ["_temporaryTransparency"]
       84 JUMPIFNOT                        R2 ; [+8]
       85 GETTABLEKS                       R2 R0 K17 ["_temporaryTransparency"]
       87 NAMECALL                         R2 R2 K18 ["destroy"]
       89 CALL                             R2 1 0
       90 LOADNIL                          R2
       91 SETTABLEKS                       R2 R0 K17 ["_temporaryTransparency"]
       93 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R3 R3 K1 ["shouldJoinSurfaces"]
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+26]
        6 GETTABLEKS                       R3 R0 K2 ["_jointPairs"]
        8 JUMPIFNOT                        R3 ; [+23]
        9 GETTABLEKS                       R4 R0 K3 ["_originalBoundingBoxCFrame"]
       11 GETIMPORT                        R5 K6 [CFrame.new]
       13 MOVE                             R6 R2
       14 CALL                             R5 1 1
       15 MUL                              R3 R4 R5
       16 GETTABLEKS                       R5 R0 K7 ["_originalBoundingBoxSize"]
       18 ADD                              R4 R5 R1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R6 R0 K0 ["_draggerContext"]
       22 MOVE                             R7 R3
       23 MOVE                             R8 R4
       24 CALL                             R5 3 1
       25 GETTABLEKS                       R6 R0 K2 ["_jointPairs"]
       27 MOVE                             R8 R5
       28 NAMECALL                         R6 R6 K8 ["renderJoints"]
       30 CALL                             R6 2 -1
       31 RETURN                           R6 -1
       32 LOADNIL                          R3
       33 RETURN                           R3 1

PROTO_20:
        0 MOVE                             R6 R1
        1 MOVE                             R7 R3
        2 CALL                             R6 1 0
        3 GETTABLEKS                       R6 R0 K0 ["_jointMaker"]
        5 MOVE                             R8 R4
        6 NAMECALL                         R6 R6 K1 ["isColliding"]
        8 CALL                             R6 2 1
        9 JUMPIF                           R6 ; [+1]
       10 RETURN                           R0 0
       11 LOADN                            R7 0
       12 MOVE                             R8 R2
       13 MOVE                             R9 R3
       14 LOADN                            R12 1
       15 LOADN                            R10 32
       16 LOADN                            R11 1
       17 FORNPREP                         R10
       18 LOADK                            R14 K2 [0.5]
       19 ADD                              R15 R8 R9
       20 MUL                              R13 R14 R15
       21 MOVE                             R14 R1
       22 MOVE                             R15 R13
       23 CALL                             R14 1 0
       24 GETTABLEKS                       R14 R0 K0 ["_jointMaker"]
       26 MOVE                             R16 R4
       27 NAMECALL                         R14 R14 K1 ["isColliding"]
       29 CALL                             R14 2 1
       30 MOVE                             R6 R14
       31 JUMPIFNOT                        R6 ; [+3]
       32 ADDK                             R7 R7 K3 [1]
       33 MOVE                             R9 R13
       34 JUMP                             ; [+1]
       35 MOVE                             R8 R13
       36 FORNLOOP                         R10
       37 SUB                              R11 R8 R2
       38 FASTCALL1                        MATH_ABS R11 ; [+2]
       39 GETIMPORT                        R10 K6 [math.abs]
       41 CALL                             R10 1 1
       42 JUMPIFNOTLT                      R10 R5 ; [+3]
       44 LOADB                            R6 1
       45 MOVE                             R8 R2
       46 JUMPIFNOT                        R6 ; [+3]
       47 MOVE                             R10 R1
       48 MOVE                             R11 R8
       49 CALL                             R10 1 0
       50 RETURN                           R8 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["WorldCFrame"]
        3 MUL                              R1 R2 R3
        4 GETUPVAL                         R3 1
        5 DUPTABLE                         R4 K4 [{"Attachment", "LocalRotation", "LocalPosition"}]
        6 SETTABLEKS                       R0 R4 K1 ["Attachment"]
        8 GETTABLEKS                       R5 R1 K5 ["Rotation"]
       10 SETTABLEKS                       R5 R4 K2 ["LocalRotation"]
       12 GETTABLEKS                       R5 R1 K6 ["Position"]
       14 SETTABLEKS                       R5 R4 K3 ["LocalPosition"]
       16 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       18 GETIMPORT                        R2 K9 [table.insert]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_22:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["_fixupLooseAttachments"]
        4 GETTABLEKS                       R3 R0 K1 ["_originalBoundingBoxCFrame"]
        6 NAMECALL                         R3 R3 K2 ["Inverse"]
        8 CALL                             R3 1 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R2
       12 MOVE                             R5 R1
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 GETTABLEKS                       R11 R9 K3 ["WorldCFrame"]
       18 MUL                              R10 R3 R11
       19 DUPTABLE                         R13 K7 [{"Attachment", "LocalRotation", "LocalPosition"}]
       20 SETTABLEKS                       R9 R13 K4 ["Attachment"]
       22 GETTABLEKS                       R14 R10 K8 ["Rotation"]
       24 SETTABLEKS                       R14 R13 K5 ["LocalRotation"]
       26 GETTABLEKS                       R14 R10 K9 ["Position"]
       28 SETTABLEKS                       R14 R13 K6 ["LocalPosition"]
       30 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
       32 MOVE                             R12 R2
       33 GETIMPORT                        R11 K12 [table.insert]
       35 CALL                             R11 2 0
       36 NAMECALL                         R10 R9 K13 ["GetDescendants"]
       38 CALL                             R10 1 3
       39 FORGPREP                         R10
       40 LOADK                            R17 K4 ["Attachment"]
       41 NAMECALL                         R15 R14 K14 ["IsA"]
       43 CALL                             R15 2 1
       44 JUMPIFNOT                        R15 ; [+20]
       45 GETTABLEKS                       R16 R14 K3 ["WorldCFrame"]
       47 MUL                              R15 R3 R16
       48 DUPTABLE                         R18 K7 [{"Attachment", "LocalRotation", "LocalPosition"}]
       49 SETTABLEKS                       R14 R18 K4 ["Attachment"]
       51 GETTABLEKS                       R19 R15 K8 ["Rotation"]
       53 SETTABLEKS                       R19 R18 K5 ["LocalRotation"]
       55 GETTABLEKS                       R19 R15 K9 ["Position"]
       57 SETTABLEKS                       R19 R18 K6 ["LocalPosition"]
       59 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
       61 MOVE                             R17 R2
       62 GETIMPORT                        R16 K12 [table.insert]
       64 CALL                             R16 2 0
       65 FORGLOOP                         R10 2 ; [-26]
       67 FORGLOOP                         R5 2 ; [-52]
       69 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R3 R0 K0 ["_originalBoundingBoxCFrame"]
        2 GETTABLEKS                       R4 R0 K1 ["_fixupLooseAttachments"]
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 GETTABLEKS                       R9 R8 K2 ["Attachment"]
        9 GETIMPORT                        R12 K5 [CFrame.new]
       11 GETTABLEKS                       R15 R8 K6 ["LocalPosition"]
       13 MUL                              R14 R15 R1
       14 ADD                              R13 R2 R14
       15 CALL                             R12 1 1
       16 MUL                              R11 R3 R12
       17 GETTABLEKS                       R12 R8 K7 ["LocalRotation"]
       19 MUL                              R10 R11 R12
       20 SETTABLEKS                       R10 R9 K8 ["WorldCFrame"]
       22 FORGLOOP                         R4 2 ; [-16]
       24 RETURN                           R0 0

PROTO_24:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["_fixupAttachments"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R0 K1 ["_fixupNontrivialAttachments"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R0 K2 ["_fixupOffsets"]
       12 NEWTABLE                         R2 0 0
       14 SETTABLEKS                       R2 R0 K3 ["_fixupScales"]
       16 NEWTABLE                         R2 0 0
       18 SETTABLEKS                       R2 R0 K4 ["_fixupPartPivot"]
       20 MOVE                             R2 R1
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 GETTABLEKS                       R7 R5 K5 ["CFrame"]
       26 NAMECALL                         R7 R7 K6 ["Inverse"]
       28 CALL                             R7 1 1
       29 GETTABLEKS                       R8 R5 K7 ["PivotOffset"]
       31 GETUPVAL                         R9 0
       32 JUMPIFEQ                         R8 R9 ; [+4]
       34 GETTABLEKS                       R9 R0 K4 ["_fixupPartPivot"]
       36 SETTABLE                         R8 R9 R5
       37 NAMECALL                         R9 R5 K8 ["GetDescendants"]
       39 CALL                             R9 1 3
       40 FORGPREP                         R9
       41 LOADK                            R16 K9 ["Attachment"]
       42 NAMECALL                         R14 R13 K10 ["IsA"]
       44 CALL                             R14 2 1
       45 JUMPIFNOT                        R14 ; [+33]
       46 GETTABLEKS                       R14 R13 K11 ["Parent"]
       48 JUMPIFEQ                         R14 R5 ; [+24]
       50 GETTABLEKS                       R15 R13 K12 ["WorldCFrame"]
       52 MUL                              R14 R7 R15
       53 GETTABLEKS                       R15 R14 K13 ["Position"]
       55 SUB                              R16 R14 R15
       56 GETTABLEKS                       R18 R0 K1 ["_fixupNontrivialAttachments"]
       58 DUPTABLE                         R19 K17 [{"Attachment", "RelativeTo", "LocalRotation", "LocalPosition"}]
       59 SETTABLEKS                       R13 R19 K9 ["Attachment"]
       61 SETTABLEKS                       R5 R19 K14 ["RelativeTo"]
       63 SETTABLEKS                       R16 R19 K15 ["LocalRotation"]
       65 SETTABLEKS                       R15 R19 K16 ["LocalPosition"]
       67 FASTCALL2                        TABLE_INSERT R18 R19 ; [+3]
       69 GETIMPORT                        R17 K20 [table.insert]
       71 CALL                             R17 2 0
       72 JUMP                             ; [+36]
       73 GETTABLEKS                       R14 R0 K0 ["_fixupAttachments"]
       75 GETTABLEKS                       R15 R13 K13 ["Position"]
       77 SETTABLE                         R15 R14 R13
       78 JUMP                             ; [+30]
       79 LOADK                            R16 K21 ["DataModelMesh"]
       80 NAMECALL                         R14 R13 K10 ["IsA"]
       82 CALL                             R14 2 1
       83 JUMPIFNOT                        R14 ; [+25]
       84 GETTABLEKS                       R14 R0 K2 ["_fixupOffsets"]
       86 GETTABLEKS                       R15 R13 K22 ["Offset"]
       88 SETTABLE                         R15 R14 R13
       89 GETTABLEKS                       R14 R13 K23 ["ClassName"]
       91 JUMPIFEQKS                       R14 K24 ["FileMesh"] ; [+12]
       93 LOADK                            R16 K25 ["SpecialMesh"]
       94 NAMECALL                         R14 R13 K10 ["IsA"]
       96 CALL                             R14 2 1
       97 JUMPIFNOT                        R14 ; [+11]
       98 GETTABLEKS                       R14 R13 K26 ["MeshType"]
      100 GETIMPORT                        R15 K28 [Enum.MeshType.FileMesh]
      102 JUMPIFNOTEQ                      R14 R15 ; [+6]
      104 GETTABLEKS                       R14 R0 K3 ["_fixupScales"]
      106 GETTABLEKS                       R15 R13 K29 ["Scale"]
      108 SETTABLE                         R15 R14 R13
      109 FORGLOOP                         R9 2 ; [-69]
      111 FORGLOOP                         R2 1 ; [-88]
      113 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R3 R0 K0 ["_fixupAttachments"]
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 MUL                              R8 R7 R1
        6 SETTABLEKS                       R8 R6 K1 ["Position"]
        8 FORGLOOP                         R3 2 ; [-4]
       10 GETTABLEKS                       R3 R0 K2 ["_fixupNontrivialAttachments"]
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETTABLEKS                       R8 R7 K3 ["Attachment"]
       17 GETTABLEKS                       R12 R7 K4 ["RelativeTo"]
       19 GETTABLEKS                       R11 R12 K5 ["CFrame"]
       21 GETIMPORT                        R12 K7 [CFrame.new]
       23 GETTABLEKS                       R14 R7 K8 ["LocalPosition"]
       25 MUL                              R13 R14 R1
       26 CALL                             R12 1 1
       27 MUL                              R10 R11 R12
       28 GETTABLEKS                       R11 R7 K9 ["LocalRotation"]
       30 MUL                              R9 R10 R11
       31 SETTABLEKS                       R9 R8 K10 ["WorldCFrame"]
       33 FORGLOOP                         R3 2 ; [-19]
       35 GETTABLEKS                       R3 R0 K11 ["_fixupOffsets"]
       37 LOADNIL                          R4
       38 LOADNIL                          R5
       39 FORGPREP                         R3
       40 MUL                              R8 R7 R1
       41 SETTABLEKS                       R8 R6 K12 ["Offset"]
       43 FORGLOOP                         R3 2 ; [-4]
       45 GETTABLEKS                       R3 R0 K13 ["_fixupScales"]
       47 LOADNIL                          R4
       48 LOADNIL                          R5
       49 FORGPREP                         R3
       50 MUL                              R8 R7 R1
       51 SETTABLEKS                       R8 R6 K14 ["Scale"]
       53 FORGLOOP                         R3 2 ; [-4]
       55 GETTABLEKS                       R3 R0 K15 ["_fixupPartPivot"]
       57 LOADNIL                          R4
       58 LOADNIL                          R5
       59 FORGPREP                         R3
       60 GETTABLEKS                       R8 R7 K1 ["Position"]
       62 SUB                              R9 R7 R8
       63 MUL                              R11 R8 R1
       64 ADD                              R10 R9 R11
       65 SETTABLEKS                       R10 R6 K16 ["PivotOffset"]
       67 FORGLOOP                         R3 2 ; [-8]
       69 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [script]
        9 GETTABLEKS                       R1 R2 K6 ["Parent"]
       11 GETTABLEKS                       R2 R1 K6 ["Parent"]
       13 GETTABLEKS                       R3 R2 K7 ["DraggerFramework"]
       15 GETIMPORT                        R4 K9 [require]
       17 GETTABLEKS                       R6 R3 K10 ["Utility"]
       19 GETTABLEKS                       R5 R6 K11 ["JointMaker"]
       21 CALL                             R4 1 1
       22 GETIMPORT                        R5 K9 [require]
       24 GETTABLEKS                       R7 R3 K10 ["Utility"]
       26 GETTABLEKS                       R6 R7 K12 ["getBoundingBoxScale"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K9 [require]
       31 GETTABLEKS                       R8 R3 K10 ["Utility"]
       33 GETTABLEKS                       R7 R8 K13 ["TemporaryTransparency"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K9 [require]
       38 GETTABLEKS                       R9 R3 K10 ["Utility"]
       40 GETTABLEKS                       R8 R9 K14 ["Math"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K9 [require]
       45 GETTABLEKS                       R10 R3 K10 ["Utility"]
       47 GETTABLEKS                       R9 R10 K15 ["JointUtil"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K9 [require]
       52 GETTABLEKS                       R11 R3 K10 ["Utility"]
       54 GETTABLEKS                       R10 R11 K16 ["getSoftSnaps"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K9 [require]
       59 GETTABLEKS                       R12 R3 K17 ["Flags"]
       61 GETTABLEKS                       R11 R12 K18 ["getFFlagDraggerImprovements"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K9 [require]
       66 GETTABLEKS                       R13 R3 K17 ["Flags"]
       68 GETTABLEKS                       R12 R13 K19 ["getFFlagSBT4894SnapFloatingPointError"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K22 [CFrame.new]
       73 CALL                             R12 0 1
       74 FASTCALL                         VECTOR ; [+2]
       75 GETIMPORT                        R13 K24 [Vector3.new]
       77 CALL                             R13 0 1
       78 LOADK                            R15 K26 [{1, 1, 1}]
       79 MULK                             R14 R15 K25 [∞]
       80 NEWTABLE                         R15 32 0
       82 SETTABLEKS                       R15 R15 K27 ["__index"]
       84 DUPCLOSURE                       R16 K28 [PROTO_0]
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R15
       87 SETTABLEKS                       R16 R15 K21 ["new"]
       89 DUPCLOSURE                       R16 K29 [PROTO_1]
       90 CAPTURE                          VAL R13
       91 SETTABLEKS                       R16 R15 K30 ["getBoundingBox"]
       93 DUPCLOSURE                       R16 K31 [PROTO_2]
       94 SETTABLEKS                       R16 R15 K32 ["shouldScaleFromCenter"]
       96 DUPCLOSURE                       R16 K33 [PROTO_3]
       97 DUPCLOSURE                       R17 K34 [PROTO_4]
       98 CAPTURE                          VAL R10
       99 SETTABLEKS                       R17 R15 K35 ["axesToScale"]
      101 DUPCLOSURE                       R17 K36 [PROTO_5]
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R14
      105 SETTABLEKS                       R17 R15 K37 ["getMinMaxSizes"]
      107 DUPCLOSURE                       R17 K38 [PROTO_6]
      108 CAPTURE                          VAL R8
      109 SETTABLEKS                       R17 R15 K39 ["_unjoinRoots"]
      111 DUPCLOSURE                       R17 K40 [PROTO_7]
      112 SETTABLEKS                       R17 R15 K41 ["_rejoinRoots"]
      114 DUPCLOSURE                       R17 K42 [PROTO_8]
      115 CAPTURE                          VAL R0
      116 CAPTURE                          VAL R6
      117 SETTABLEKS                       R17 R15 K43 ["beginScale"]
      119 DUPCLOSURE                       R17 K44 [PROTO_9]
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R9
      122 SETTABLEKS                       R17 R15 K16 ["getSoftSnaps"]
      124 DUPCLOSURE                       R17 K45 [PROTO_10]
      125 CAPTURE                          VAL R11
      126 DUPCLOSURE                       R18 K46 [PROTO_11]
      127 CAPTURE                          VAL R11
      128 SETTABLEKS                       R18 R15 K47 ["_maybeSnapPartSizeBackDownToGrid"]
      130 DUPCLOSURE                       R18 K48 [PROTO_12]
      131 DUPCLOSURE                       R19 K49 [PROTO_13]
      132 DUPCLOSURE                       R20 K50 [PROTO_14]
      133 DUPCLOSURE                       R21 K51 [PROTO_17]
      134 SETTABLEKS                       R21 R15 K52 ["updateScale"]
      136 DUPCLOSURE                       R21 K53 [PROTO_18]
      137 SETTABLEKS                       R21 R15 K54 ["endScale"]
      139 DUPCLOSURE                       R21 K55 [PROTO_19]
      140 CAPTURE                          VAL R5
      141 SETTABLEKS                       R21 R15 K56 ["render"]
      143 DUPCLOSURE                       R21 K57 [PROTO_20]
      144 SETTABLEKS                       R21 R15 K58 ["_binarySearchForGoodPartSize"]
      146 DUPCLOSURE                       R21 K59 [PROTO_22]
      147 SETTABLEKS                       R21 R15 K60 ["_recordLooseAttachmentFixup"]
      149 DUPCLOSURE                       R21 K61 [PROTO_23]
      150 SETTABLEKS                       R21 R15 K62 ["_applyLooseAttachmentFixup"]
      152 DUPCLOSURE                       R21 K63 [PROTO_24]
      153 CAPTURE                          VAL R12
      154 SETTABLEKS                       R21 R15 K64 ["_recordLoosePartFixup"]
      156 DUPCLOSURE                       R21 K65 [PROTO_25]
      157 SETTABLEKS                       R21 R15 K66 ["_applyLoosePartFixup"]
      159 RETURN                           R15 1
