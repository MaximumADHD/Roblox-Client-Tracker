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
        0 LOADNIL                          R3
        1 GETUPVAL                         R4 0
        2 JUMPIFNOT                        R4 ; [+4]
        3 NAMECALL                         R4 R2 K0 ["getSingleSelectionInterface"]
        5 CALL                             R4 1 1
        6 MOVE                             R3 R4
        7 GETUPVAL                         R4 0
        8 JUMPIF                           R4 ; [+14]
        9 NAMECALL                         R4 R2 K1 ["isSelectionSinglePart_DEPRECATED"]
       11 CALL                             R4 1 1
       12 JUMPIFNOT                        R4 ; [+10]
       13 NAMECALL                         R5 R2 K2 ["getObjectsToTransform"]
       15 CALL                             R5 1 1
       16 GETTABLEN                        R4 R5 1
       17 GETTABLEKS                       R5 R4 K3 ["CFrame"]
       19 LOADK                            R6 K4 [{0, 0, 0}]
       20 GETTABLEKS                       R7 R4 K5 ["Size"]
       22 RETURN                           R5 3
       23 GETUPVAL                         R4 0
       24 JUMPIFNOT                        R4 ; [+9]
       25 JUMPIFEQKNIL                     R3 ; [+8]
       27 GETTABLEKS                       R4 R3 K6 ["getCurrentBounds"]
       29 CALL                             R4 0 2
       30 MOVE                             R6 R4
       31 LOADK                            R7 K4 [{0, 0, 0}]
       32 MOVE                             R8 R5
       33 RETURN                           R6 3
       34 NAMECALL                         R4 R2 K7 ["getBoundingBox"]
       36 CALL                             R4 1 3
       37 LOADK                            R8 K8 [0.5]
       38 MUL                              R7 R8 R6
       39 SUB                              R8 R5 R7
       40 GETUPVAL                         R10 1
       41 NAMECALL                         R8 R8 K9 ["Min"]
       43 CALL                             R8 2 1
       44 ADD                              R9 R5 R7
       45 GETUPVAL                         R11 1
       46 NAMECALL                         R9 R9 K10 ["Max"]
       48 CALL                             R9 2 1
       49 SUB                              R6 R9 R8
       50 ADD                              R10 R9 R8
       51 DIVK                             R5 R10 K11 [2]
       52 RETURN                           R4 3

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
       40 GETUPVAL                         R6 1
       41 JUMPIFNOT                        R6 ; [+25]
       42 LOADN                            R6 0
       43 LOADN                            R7 0
       44 GETTABLEKS                       R8 R4 K10 ["RootModelMap"]
       46 LOADNIL                          R9
       47 LOADNIL                          R10
       48 FORGPREP                         R8
       49 LOADK                            R15 K11 ["ProceduralModel"]
       50 NAMECALL                         R13 R11 K12 ["IsA"]
       52 CALL                             R13 2 1
       53 JUMPIFNOT                        R13 ; [+2]
       54 ADDK                             R7 R7 K9 [1]
       55 JUMP                             ; [+1]
       56 ADDK                             R6 R6 K9 [1]
       57 FORGLOOP                         R8 1 ; [-9]
       59 LOADN                            R8 0
       60 JUMPIFLT                         R8 R6 ; [+4]
       62 LOADN                            R8 1
       63 JUMPIFNOTLT                      R8 R5 ; [+21]
       65 RETURN                           R3 1
       66 JUMP                             ; [+18]
       67 GETTABLEKS                       R7 R4 K10 ["RootModelMap"]
       69 LOADN                            R8 0
       70 MOVE                             R9 R7
       71 LOADNIL                          R10
       72 LOADNIL                          R11
       73 FORGPREP                         R9
       74 ADDK                             R8 R8 K9 [1]
       75 FORGLOOP                         R9 1 ; [-2]
       77 MOVE                             R6 R8
       78 LOADN                            R7 0
       79 JUMPIFLT                         R7 R6 ; [+4]
       81 LOADN                            R7 1
       82 JUMPIFNOTLT                      R7 R5 ; [+2]
       84 RETURN                           R3 1
       85 GETIMPORT                        R6 K14 [next]
       87 GETTABLEKS                       R7 R4 K8 ["LoosePartMap"]
       89 CALL                             R6 1 1
       90 JUMPIFNOT                        R6 ; [+12]
       91 LOADK                            R9 K15 ["Part"]
       92 NAMECALL                         R7 R6 K12 ["IsA"]
       94 CALL                             R7 2 1
       95 JUMPIFNOT                        R7 ; [+7]
       96 GETTABLEKS                       R7 R6 K16 ["Shape"]
       98 GETIMPORT                        R8 K20 [Enum.PartType.Ball]
      100 JUMPIFNOTEQ                      R7 R8 ; [+2]
      102 RETURN                           R3 1
      103 NEWTABLE                         R7 0 3
      105 DUPTABLE                         R8 K21 [{"X"}]
      106 LOADB                            R9 1
      107 SETTABLEKS                       R9 R8 K0 ["X"]
      109 DUPTABLE                         R9 K22 [{"Y"}]
      110 LOADB                            R10 1
      111 SETTABLEKS                       R10 R9 K1 ["Y"]
      113 DUPTABLE                         R10 K23 [{"Z"}]
      114 LOADB                            R11 1
      115 SETTABLEKS                       R11 R10 K2 ["Z"]
      117 SETLIST                          R7 R8 3 [1]
      119 GETTABLE                         R8 R7 R2
      120 RETURN                           R8 1

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
       38 GETUPVAL                         R9 0
       39 JUMPIFNOT                        R9 ; [+6]
       40 NAMECALL                         R9 R2 K16 ["getSingleSelectionInterface"]
       42 CALL                             R9 1 1
       43 SETTABLEKS                       R9 R0 K17 ["_singleSelectionInterface"]
       45 JUMP                             ; [+5]
       46 NAMECALL                         R9 R2 K18 ["isSelectionSinglePart_DEPRECATED"]
       48 CALL                             R9 1 1
       49 SETTABLEKS                       R9 R0 K19 ["_isSinglePartMode"]
       51 NEWTABLE                         R9 0 0
       53 SETTABLEKS                       R9 R0 K20 ["_originalDimensionMap"]
       55 GETTABLEKS                       R9 R0 K13 ["_loosePartMap"]
       57 LOADNIL                          R10
       58 LOADNIL                          R11
       59 FORGPREP                         R9
       60 GETTABLEKS                       R14 R0 K20 ["_originalDimensionMap"]
       62 GETTABLEKS                       R15 R12 K21 ["Size"]
       64 SETTABLE                         R15 R14 R12
       65 FORGLOOP                         R9 1 ; [-6]
       67 GETTABLEKS                       R9 R0 K15 ["_rootModelMap"]
       69 LOADNIL                          R10
       70 LOADNIL                          R11
       71 FORGPREP                         R9
       72 GETUPVAL                         R14 0
       73 JUMPIFNOT                        R14 ; [+14]
       74 GETTABLEKS                       R14 R0 K17 ["_singleSelectionInterface"]
       76 JUMPIFNOT                        R14 ; [+11]
       77 LOADK                            R16 K22 ["ProceduralModel"]
       78 NAMECALL                         R14 R12 K23 ["IsA"]
       80 CALL                             R14 2 1
       81 JUMPIFNOT                        R14 ; [+6]
       82 GETTABLEKS                       R14 R0 K20 ["_originalDimensionMap"]
       84 GETTABLEKS                       R15 R12 K21 ["Size"]
       86 SETTABLE                         R15 R14 R12
       87 JUMP                             ; [+6]
       88 GETTABLEKS                       R14 R0 K20 ["_originalDimensionMap"]
       90 NAMECALL                         R15 R12 K24 ["GetScale"]
       92 CALL                             R15 1 1
       93 SETTABLE                         R15 R14 R12
       94 FORGLOOP                         R9 1 ; [-23]
       96 GETTABLEKS                       R9 R0 K25 ["_jointMaker"]
       98 GETTABLEKS                       R11 R0 K8 ["_allParts"]
      100 GETTABLEKS                       R12 R0 K15 ["_rootModelMap"]
      102 NAMECALL                         R9 R9 K26 ["pickUpParts"]
      104 CALL                             R9 3 0
      105 GETUPVAL                         R9 1
      106 NAMECALL                         R9 R9 K27 ["IsRunning"]
      108 CALL                             R9 1 1
      109 JUMPIFNOT                        R9 ; [+5]
      110 GETTABLEKS                       R9 R0 K25 ["_jointMaker"]
      112 NAMECALL                         R9 R9 K28 ["anchorParts"]
      114 CALL                             R9 1 0
      115 GETTABLEKS                       R9 R0 K25 ["_jointMaker"]
      117 NAMECALL                         R9 R9 K29 ["breakJointsToOutsiders"]
      119 CALL                             R9 1 0
      120 NAMECALL                         R9 R0 K30 ["_unjoinRoots"]
      122 CALL                             R9 1 0
      123 MOVE                             R11 R7
      124 NAMECALL                         R9 R0 K31 ["_recordLooseAttachmentFixup"]
      126 CALL                             R9 2 0
      127 GETTABLEKS                       R11 R0 K13 ["_loosePartMap"]
      129 NAMECALL                         R9 R0 K32 ["_recordLoosePartFixup"]
      131 CALL                             R9 2 0
      132 GETTABLEKS                       R9 R0 K33 ["_draggerContext"]
      134 NAMECALL                         R9 R9 K34 ["areCollisionsEnabled"]
      136 CALL                             R9 1 1
      137 JUMPIF                           R9 ; [+8]
      138 GETUPVAL                         R10 2
      139 GETTABLEKS                       R9 R10 K3 ["new"]
      141 GETTABLEKS                       R10 R0 K8 ["_allParts"]
      143 CALL                             R9 1 1
      144 SETTABLEKS                       R9 R0 K35 ["_temporaryTransparency"]
      146 LOADK                            R9 K36 [{0, 0, 0}]
      147 SETTABLEKS                       R9 R0 K37 ["_lastDeltaSize"]
      149 RETURN                           R0 0

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
        0 SUB                              R3 R1 R2
        1 LOADK                            R4 K0 [1E-05]
        2 JUMPIFNOTLT                      R3 R4 ; [+2]
        4 RETURN                           R0 1
        5 DIV                              R5 R0 R1
        6 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        7 GETIMPORT                        R4 K3 [math.floor]
        9 CALL                             R4 1 1
       10 MUL                              R3 R4 R1
       11 SUB                              R4 R0 R3
       12 JUMPIFNOTLT                      R4 R2 ; [+2]
       14 RETURN                           R3 1
       15 RETURN                           R0 1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R2 R2 K1 ["getGridSize"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R5 R1 K2 ["X"]
        7 SUBK                             R6 R2 K3 [0.001]
        8 LOADK                            R7 K4 [1E-05]
        9 JUMPIFNOTLT                      R6 R7 ; [+3]
       11 MOVE                             R4 R5
       12 JUMP                             ; [+13]
       13 DIV                              R8 R5 R2
       14 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       15 GETIMPORT                        R7 K7 [math.floor]
       17 CALL                             R7 1 1
       18 MUL                              R6 R7 R2
       19 SUB                              R7 R5 R6
       20 LOADK                            R8 K3 [0.001]
       21 JUMPIFNOTLT                      R7 R8 ; [+3]
       23 MOVE                             R4 R6
       24 JUMP                             ; [+1]
       25 MOVE                             R4 R5
       26 GETTABLEKS                       R6 R1 K8 ["Y"]
       28 SUBK                             R7 R2 K3 [0.001]
       29 LOADK                            R8 K4 [1E-05]
       30 JUMPIFNOTLT                      R7 R8 ; [+3]
       32 MOVE                             R5 R6
       33 JUMP                             ; [+13]
       34 DIV                              R9 R6 R2
       35 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       36 GETIMPORT                        R8 K7 [math.floor]
       38 CALL                             R8 1 1
       39 MUL                              R7 R8 R2
       40 SUB                              R8 R6 R7
       41 LOADK                            R9 K3 [0.001]
       42 JUMPIFNOTLT                      R8 R9 ; [+3]
       44 MOVE                             R5 R7
       45 JUMP                             ; [+1]
       46 MOVE                             R5 R6
       47 GETTABLEKS                       R7 R1 K9 ["Z"]
       49 SUBK                             R8 R2 K3 [0.001]
       50 LOADK                            R9 K4 [1E-05]
       51 JUMPIFNOTLT                      R8 R9 ; [+3]
       53 MOVE                             R6 R7
       54 JUMP                             ; [+13]
       55 DIV                              R10 R7 R2
       56 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       57 GETIMPORT                        R9 K7 [math.floor]
       59 CALL                             R9 1 1
       60 MUL                              R8 R9 R2
       61 SUB                              R9 R7 R8
       62 LOADK                            R10 K3 [0.001]
       63 JUMPIFNOTLT                      R9 R10 ; [+3]
       65 MOVE                             R6 R8
       66 JUMP                             ; [+1]
       67 MOVE                             R6 R7
       68 FASTCALL                         VECTOR ; [+2]
       69 GETIMPORT                        R3 K12 [Vector3.new]
       71 CALL                             R3 3 1
       72 RETURN                           R3 1

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
        5 GETUPVAL                         R2 3
        6 MUL                              R1 R2 R0
        7 SETUPVAL                         R1 2
        8 GETUPVAL                         R2 4
        9 GETTABLEKS                       R1 R2 K1 ["getInitialBounds"]
       11 CALL                             R1 0 2
       12 GETUPVAL                         R4 4
       13 GETTABLEKS                       R3 R4 K2 ["setBounds"]
       15 GETIMPORT                        R5 K5 [CFrame.new]
       17 GETUPVAL                         R6 2
       18 CALL                             R5 1 1
       19 MUL                              R4 R1 R5
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K0 ["_lastDeltaSize"]
       23 ADD                              R5 R2 R6
       24 CALL                             R3 2 0
       25 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 LOADNIL                          R3
        1 MOVE                             R4 R2
        2 GETTABLEKS                       R5 R0 K0 ["_isSinglePartMode"]
        4 GETTABLEKS                       R6 R0 K1 ["_singleSelectionInterface"]
        6 GETUPVAL                         R7 0
        7 JUMPIFNOT                        R7 ; [+9]
        8 JUMPIFEQKNIL                     R6 ; [+8]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          REF R4
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R6
       16 JUMP                             ; [+79]
       17 GETUPVAL                         R7 0
       18 JUMPIF                           R7 ; [+24]
       19 JUMPIFNOT                        R5 ; [+23]
       20 LOADNIL                          R7
       21 LOADNIL                          R8
       22 LOADNIL                          R9
       23 GETIMPORT                        R10 K3 [next]
       25 GETTABLEKS                       R11 R0 K4 ["_loosePartMap"]
       27 CALL                             R10 1 2
       28 MOVE                             R7 R10
       29 MOVE                             R8 R11
       30 GETTABLEKS                       R10 R0 K5 ["_originalDimensionMap"]
       32 GETTABLE                         R9 R10 R7
       33 NEWCLOSURE                       R3 P1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          REF R7
       37 CAPTURE                          REF R9
       38 CAPTURE                          REF R4
       39 CAPTURE                          VAL R2
       40 CAPTURE                          REF R8
       41 CLOSEUPVALS                      R7
       42 JUMP                             ; [+53]
       43 GETTABLEKS                       R7 R0 K6 ["_originalBoundingBoxCFrame"]
       45 GETTABLEKS                       R8 R0 K7 ["_originalBoundingBoxSize"]
       47 GETTABLEKS                       R9 R7 K8 ["Position"]
       49 MOVE                             R12 R2
       50 NAMECALL                         R10 R7 K9 ["VectorToWorldSpace"]
       52 CALL                             R10 2 1
       53 ADD                              R13 R8 R1
       54 GETTABLEKS                       R12 R13 K10 ["Magnitude"]
       56 GETTABLEKS                       R13 R8 K10 ["Magnitude"]
       58 DIV                              R11 R12 R13
       59 NEWTABLE                         R12 0 0
       61 GETTABLEKS                       R13 R0 K4 ["_loosePartMap"]
       63 LOADNIL                          R14
       64 LOADNIL                          R15
       65 FORGPREP                         R13
       66 GETTABLEKS                       R19 R17 K8 ["Position"]
       68 SUB                              R18 R19 R9
       69 SUBK                             R21 R11 K11 [1]
       70 MUL                              R20 R18 R21
       71 ADD                              R19 R10 R20
       72 SETTABLE                         R19 R12 R16
       73 FORGLOOP                         R13 2 ; [-8]
       75 GETTABLEKS                       R13 R0 K12 ["_rootModelMap"]
       77 LOADNIL                          R14
       78 LOADNIL                          R15
       79 FORGPREP                         R13
       80 GETTABLEKS                       R19 R17 K8 ["Position"]
       82 SUB                              R18 R19 R9
       83 SUBK                             R21 R11 K11 [1]
       84 MUL                              R20 R18 R21
       85 ADD                              R19 R10 R20
       86 SETTABLE                         R19 R12 R16
       87 FORGLOOP                         R13 2 ; [-8]
       89 NEWCLOSURE                       R3 P2
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R1
       92 CAPTURE                          REF R4
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R12
       96 GETTABLEKS                       R7 R0 K13 ["_draggerContext"]
       98 NAMECALL                         R7 R7 K14 ["areCollisionsEnabled"]
      100 CALL                             R7 1 1
      101 JUMPIFNOT                        R7 ; [+89]
      102 GETTABLEKS                       R8 R0 K15 ["_lastDeltaSize"]
      104 GETTABLEKS                       R11 R8 K16 ["X"]
      106 FASTCALL1                        MATH_ABS R11 ; [+2]
      107 GETIMPORT                        R10 K19 [math.abs]
      109 CALL                             R10 1 1
      110 GETTABLEKS                       R12 R8 K20 ["Y"]
      112 FASTCALL1                        MATH_ABS R12 ; [+2]
      113 GETIMPORT                        R11 K19 [math.abs]
      115 CALL                             R11 1 1
      116 GETTABLEKS                       R13 R8 K21 ["Z"]
      118 FASTCALL1                        MATH_ABS R13 ; [+2]
      119 GETIMPORT                        R12 K19 [math.abs]
      121 CALL                             R12 1 1
      122 FASTCALL                         MATH_MIN ; [+2]
      123 GETIMPORT                        R9 K23 [math.min]
      125 CALL                             R9 3 1
      126 GETTABLEKS                       R12 R1 K16 ["X"]
      128 FASTCALL1                        MATH_ABS R12 ; [+2]
      129 GETIMPORT                        R11 K19 [math.abs]
      131 CALL                             R11 1 1
      132 GETTABLEKS                       R13 R1 K20 ["Y"]
      134 FASTCALL1                        MATH_ABS R13 ; [+2]
      135 GETIMPORT                        R12 K19 [math.abs]
      137 CALL                             R12 1 1
      138 GETTABLEKS                       R14 R1 K21 ["Z"]
      140 FASTCALL1                        MATH_ABS R14 ; [+2]
      141 GETIMPORT                        R13 K19 [math.abs]
      143 CALL                             R13 1 1
      144 FASTCALL                         MATH_MIN ; [+2]
      145 GETIMPORT                        R10 K23 [math.min]
      147 CALL                             R10 3 1
      148 JUMPIFNOTEQKN                    R10 K24 [0] ; [+3]
      150 LOADN                            R7 0
      151 JUMP                             ; [+1]
      152 DIV                              R7 R9 R10
      153 GETTABLEKS                       R12 R1 K16 ["X"]
      155 FASTCALL1                        MATH_ABS R12 ; [+2]
      156 GETIMPORT                        R11 K19 [math.abs]
      158 CALL                             R11 1 1
      159 GETTABLEKS                       R13 R1 K20 ["Y"]
      161 FASTCALL1                        MATH_ABS R13 ; [+2]
      162 GETIMPORT                        R12 K19 [math.abs]
      164 CALL                             R12 1 1
      165 GETTABLEKS                       R14 R1 K21 ["Z"]
      167 FASTCALL1                        MATH_ABS R14 ; [+2]
      168 GETIMPORT                        R13 K19 [math.abs]
      170 CALL                             R13 1 1
      171 FASTCALL                         MATH_MIN ; [+2]
      172 GETIMPORT                        R10 K23 [math.min]
      174 CALL                             R10 3 1
      175 FASTCALL2K                       MATH_MAX R10 K11 ; [+4]
      177 LOADK                            R11 K11 [1]
      178 GETIMPORT                        R9 K27 [math.max]
      180 CALL                             R9 2 1
      181 DIVRK                            R8 R25 K9 ["VectorToWorldSpace"]
      182 MOVE                             R11 R3
      183 MOVE                             R12 R7
      184 LOADN                            R13 1
      185 LOADB                            R14 1
      186 MOVE                             R15 R8
      187 NAMECALL                         R9 R0 K28 ["_binarySearchForGoodPartSize"]
      189 CALL                             R9 6 0
      190 JUMP                             ; [+3]
      191 MOVE                             R7 R3
      192 LOADN                            R8 1
      193 CALL                             R7 1 0
      194 GETUPVAL                         R7 0
      195 JUMPIFNOT                        R7 ; [+19]
      196 GETTABLEKS                       R7 R0 K1 ["_singleSelectionInterface"]
      198 JUMPIFNOT                        R7 ; [+16]
      199 GETTABLEKS                       R8 R0 K1 ["_singleSelectionInterface"]
      201 GETTABLEKS                       R7 R8 K29 ["getCurrentBounds"]
      203 CALL                             R7 0 2
      204 GETTABLEKS                       R10 R0 K1 ["_singleSelectionInterface"]
      206 GETTABLEKS                       R9 R10 K30 ["setBounds"]
      208 MOVE                             R10 R7
      209 MOVE                             R13 R8
      210 NAMECALL                         R11 R0 K31 ["_maybeSnapPartSizeBackDownToGrid"]
      212 CALL                             R11 2 -1
      213 CALL                             R9 -1 0
      214 JUMP                             ; [+17]
      215 GETUPVAL                         R7 0
      216 JUMPIF                           R7 ; [+15]
      217 GETTABLEKS                       R7 R0 K0 ["_isSinglePartMode"]
      219 JUMPIFNOT                        R7 ; [+12]
      220 GETIMPORT                        R7 K3 [next]
      222 GETTABLEKS                       R8 R0 K4 ["_loosePartMap"]
      224 CALL                             R7 1 1
      225 GETTABLEKS                       R10 R7 K32 ["Size"]
      227 NAMECALL                         R8 R0 K31 ["_maybeSnapPartSizeBackDownToGrid"]
      229 CALL                             R8 2 1
      230 SETTABLEKS                       R8 R7 K32 ["Size"]
      232 GETTABLEKS                       R7 R0 K7 ["_originalBoundingBoxSize"]
      234 GETTABLEKS                       R10 R0 K15 ["_lastDeltaSize"]
      236 ADD                              R9 R7 R10
      237 GETTABLEKS                       R12 R7 K16 ["X"]
      239 JUMPIFNOTEQKN                    R12 K24 [0] ; [+3]
      241 LOADN                            R11 1
      242 JUMP                             ; [+5]
      243 GETTABLEKS                       R12 R9 K16 ["X"]
      245 GETTABLEKS                       R13 R7 K16 ["X"]
      247 DIV                              R11 R12 R13
      248 GETTABLEKS                       R13 R7 K20 ["Y"]
      250 JUMPIFNOTEQKN                    R13 K24 [0] ; [+3]
      252 LOADN                            R12 1
      253 JUMP                             ; [+5]
      254 GETTABLEKS                       R13 R9 K20 ["Y"]
      256 GETTABLEKS                       R14 R7 K20 ["Y"]
      258 DIV                              R12 R13 R14
      259 GETTABLEKS                       R14 R7 K21 ["Z"]
      261 JUMPIFNOTEQKN                    R14 K24 [0] ; [+3]
      263 LOADN                            R13 1
      264 JUMP                             ; [+5]
      265 GETTABLEKS                       R14 R9 K21 ["Z"]
      267 GETTABLEKS                       R15 R7 K21 ["Z"]
      269 DIV                              R13 R14 R15
      270 FASTCALL                         VECTOR ; [+2]
      271 GETIMPORT                        R10 K35 [Vector3.new]
      273 CALL                             R10 3 1
      274 MOVE                             R8 R10
      275 MOVE                             R11 R8
      276 MOVE                             R12 R4
      277 NAMECALL                         R9 R0 K36 ["_applyLoosePartFixup"]
      279 CALL                             R9 3 0
      280 MOVE                             R11 R8
      281 MOVE                             R12 R4
      282 NAMECALL                         R9 R0 K37 ["_applyLooseAttachmentFixup"]
      284 CALL                             R9 3 0
      285 GETTABLEKS                       R9 R0 K38 ["_jointMaker"]
      287 NAMECALL                         R9 R9 K39 ["fixupConstraintLengths"]
      289 CALL                             R9 1 0
      290 GETTABLEKS                       R9 R0 K13 ["_draggerContext"]
      292 NAMECALL                         R9 R9 K40 ["shouldJoinSurfaces"]
      294 CALL                             R9 1 1
      295 JUMPIFNOT                        R9 ; [+7]
      296 GETTABLEKS                       R9 R0 K38 ["_jointMaker"]
      298 NAMECALL                         R9 R9 K41 ["computeJointPairs"]
      300 CALL                             R9 1 1
      301 SETTABLEKS                       R9 R0 K42 ["_jointPairs"]
      303 GETTABLEKS                       R9 R0 K15 ["_lastDeltaSize"]
      305 MOVE                             R10 R4
      306 CLOSEUPVALS                      R4
      307 RETURN                           R9 2

PROTO_19:
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
       65 JUMP                             ; [+1]
       66 DIV                              R1 R4 R5
       67 MOVE                             R4 R1
       68 NAMECALL                         R2 R0 K13 ["_rejoinRoots"]
       70 CALL                             R2 2 0
       71 GETTABLEKS                       R2 R0 K14 ["_jointMaker"]
       73 NAMECALL                         R2 R2 K15 ["restoreAnchored"]
       75 CALL                             R2 1 0
       76 GETTABLEKS                       R2 R0 K14 ["_jointMaker"]
       78 NAMECALL                         R2 R2 K16 ["putDownParts"]
       80 CALL                             R2 1 0
       81 GETTABLEKS                       R2 R0 K17 ["_temporaryTransparency"]
       83 JUMPIFNOT                        R2 ; [+8]
       84 GETTABLEKS                       R2 R0 K17 ["_temporaryTransparency"]
       86 NAMECALL                         R2 R2 K18 ["destroy"]
       88 CALL                             R2 1 0
       89 LOADNIL                          R2
       90 SETTABLEKS                       R2 R0 K17 ["_temporaryTransparency"]
       92 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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
       68 GETTABLEKS                       R12 R13 K19 ["getFFlagDraggerEditProcModels"]
       70 CALL                             R11 1 1
       71 MOVE                             R12 R11
       72 CALL                             R12 0 1
       73 GETIMPORT                        R13 K22 [CFrame.new]
       75 CALL                             R13 0 1
       76 FASTCALL                         VECTOR ; [+2]
       77 GETIMPORT                        R14 K24 [Vector3.new]
       79 CALL                             R14 0 1
       80 LOADK                            R16 K26 [{1, 1, 1}]
       81 MULK                             R15 R16 K25 [∞]
       82 NEWTABLE                         R16 32 0
       84 SETTABLEKS                       R16 R16 K27 ["__index"]
       86 DUPCLOSURE                       R17 K28 [PROTO_0]
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R16
       89 SETTABLEKS                       R17 R16 K21 ["new"]
       91 DUPCLOSURE                       R17 K29 [PROTO_1]
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R14
       94 SETTABLEKS                       R17 R16 K30 ["getBoundingBox"]
       96 DUPCLOSURE                       R17 K31 [PROTO_2]
       97 SETTABLEKS                       R17 R16 K32 ["shouldScaleFromCenter"]
       99 DUPCLOSURE                       R17 K33 [PROTO_3]
      100 DUPCLOSURE                       R18 K34 [PROTO_4]
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R12
      103 SETTABLEKS                       R18 R16 K35 ["axesToScale"]
      105 DUPCLOSURE                       R18 K36 [PROTO_5]
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R15
      109 SETTABLEKS                       R18 R16 K37 ["getMinMaxSizes"]
      111 DUPCLOSURE                       R18 K38 [PROTO_6]
      112 CAPTURE                          VAL R8
      113 SETTABLEKS                       R18 R16 K39 ["_unjoinRoots"]
      115 DUPCLOSURE                       R18 K40 [PROTO_7]
      116 SETTABLEKS                       R18 R16 K41 ["_rejoinRoots"]
      118 DUPCLOSURE                       R18 K42 [PROTO_8]
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R6
      122 SETTABLEKS                       R18 R16 K43 ["beginScale"]
      124 DUPCLOSURE                       R18 K44 [PROTO_9]
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R9
      127 SETTABLEKS                       R18 R16 K16 ["getSoftSnaps"]
      129 DUPCLOSURE                       R18 K45 [PROTO_10]
      130 DUPCLOSURE                       R19 K46 [PROTO_11]
      131 SETTABLEKS                       R19 R16 K47 ["_maybeSnapPartSizeBackDownToGrid"]
      133 DUPCLOSURE                       R19 K48 [PROTO_12]
      134 DUPCLOSURE                       R20 K49 [PROTO_13]
      135 DUPCLOSURE                       R21 K50 [PROTO_14]
      136 DUPCLOSURE                       R22 K51 [PROTO_18]
      137 CAPTURE                          VAL R12
      138 SETTABLEKS                       R22 R16 K52 ["updateScale"]
      140 DUPCLOSURE                       R22 K53 [PROTO_19]
      141 SETTABLEKS                       R22 R16 K54 ["endScale"]
      143 DUPCLOSURE                       R22 K55 [PROTO_20]
      144 CAPTURE                          VAL R5
      145 SETTABLEKS                       R22 R16 K56 ["render"]
      147 DUPCLOSURE                       R22 K57 [PROTO_21]
      148 SETTABLEKS                       R22 R16 K58 ["_binarySearchForGoodPartSize"]
      150 DUPCLOSURE                       R22 K59 [PROTO_23]
      151 SETTABLEKS                       R22 R16 K60 ["_recordLooseAttachmentFixup"]
      153 DUPCLOSURE                       R22 K61 [PROTO_24]
      154 SETTABLEKS                       R22 R16 K62 ["_applyLooseAttachmentFixup"]
      156 DUPCLOSURE                       R22 K63 [PROTO_25]
      157 CAPTURE                          VAL R13
      158 SETTABLEKS                       R22 R16 K64 ["_recordLoosePartFixup"]
      160 DUPCLOSURE                       R22 K65 [PROTO_26]
      161 SETTABLEKS                       R22 R16 K66 ["_applyLoosePartFixup"]
      163 RETURN                           R16 1
