PROTO_0:
        0 DUPTABLE                         R1 K2 [{"_draggerContext", "_jointMaker"}]
        1 SETTABLEKS                       R0 R1 K0 ["_draggerContext"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["new"]
        6 CALL                             R2 0 1
        7 SETTABLEKS                       R2 R1 K1 ["_jointMaker"]
        9 GETUPVAL                         R4 1
       10 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K5 [setmetatable]
       15 CALL                             R2 2 1
       16 RETURN                           R2 1

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
       37 MULK                             R7 R6 K8 [0.5]
       38 SUB                              R8 R5 R7
       39 GETUPVAL                         R10 1
       40 NAMECALL                         R8 R8 K9 ["Min"]
       42 CALL                             R8 2 1
       43 ADD                              R9 R5 R7
       44 GETUPVAL                         R11 1
       45 NAMECALL                         R9 R9 K10 ["Max"]
       47 CALL                             R9 2 1
       48 SUB                              R6 R9 R8
       49 ADD                              R10 R9 R8
       50 DIVK                             R5 R10 K11 [2]
       51 RETURN                           R4 3

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
        0 DUPTABLE                         R3 K4 [{[1] = True, ["Y"] = True, ["Z"] = True}]
        1 GETTABLEKS                       R4 R0 K5 ["_draggerContext"]
        3 NAMECALL                         R4 R4 K6 ["isAltKeyDown"]
        5 CALL                             R4 1 1
        6 JUMPIFNOT                        R4 ; [+1]
        7 RETURN                           R3 1
        8 NAMECALL                         R4 R1 K7 ["getRootModelMapping"]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R6 R4 K8 ["LoosePartMap"]
       13 LOADN                            R7 0
       14 MOVE                             R8 R6
       15 LOADNIL                          R9
       16 LOADNIL                          R10
       17 FORGPREP                         R8
       18 ADDK                             R7 R7 K9 [1]
       19 FORGLOOP                         R8 1 ; [-2]
       21 MOVE                             R5 R7
       22 GETUPVAL                         R6 0
       23 JUMPIFNOT                        R6 ; [+25]
       24 LOADN                            R6 0
       25 LOADN                            R7 0
       26 GETTABLEKS                       R8 R4 K10 ["RootModelMap"]
       28 LOADNIL                          R9
       29 LOADNIL                          R10
       30 FORGPREP                         R8
       31 LOADK                            R15 K11 ["ProceduralModel"]
       32 NAMECALL                         R13 R11 K12 ["IsA"]
       34 CALL                             R13 2 1
       35 JUMPIFNOT                        R13 ; [+2]
       36 ADDK                             R7 R7 K9 [1]
       37 JUMP                             ; [+1]
       38 ADDK                             R6 R6 K9 [1]
       39 FORGLOOP                         R8 1 ; [-9]
       41 LOADN                            R8 0
       42 JUMPIFLT                         R8 R6 ; [+4]
       44 LOADN                            R8 1
       45 JUMPIFNOTLT                      R8 R5 ; [+21]
       47 RETURN                           R3 1
       48 JUMP                             ; [+18]
       49 GETTABLEKS                       R7 R4 K10 ["RootModelMap"]
       51 LOADN                            R8 0
       52 MOVE                             R9 R7
       53 LOADNIL                          R10
       54 LOADNIL                          R11
       55 FORGPREP                         R9
       56 ADDK                             R8 R8 K9 [1]
       57 FORGLOOP                         R9 1 ; [-2]
       59 MOVE                             R6 R8
       60 LOADN                            R7 0
       61 JUMPIFLT                         R7 R6 ; [+4]
       63 LOADN                            R7 1
       64 JUMPIFNOTLT                      R7 R5 ; [+2]
       66 RETURN                           R3 1
       67 GETIMPORT                        R6 K14 [next]
       69 GETTABLEKS                       R7 R4 K8 ["LoosePartMap"]
       71 CALL                             R6 1 1
       72 JUMPIFNOT                        R6 ; [+12]
       73 LOADK                            R9 K15 ["Part"]
       74 NAMECALL                         R7 R6 K12 ["IsA"]
       76 CALL                             R7 2 1
       77 JUMPIFNOT                        R7 ; [+7]
       78 GETTABLEKS                       R7 R6 K16 ["Shape"]
       80 GETIMPORT                        R8 K20 [Enum.PartType.Ball]
       82 JUMPIFNOTEQ                      R7 R8 ; [+2]
       84 RETURN                           R3 1
       85 NEWTABLE                         R7 0 3
       87 DUPTABLE                         R8 K21 [{[1] = True}]
       88 DUPTABLE                         R9 K22 [{["Y"] = True}]
       89 DUPTABLE                         R10 K23 [{["Z"] = True}]
       90 SETLIST                          R7 R8 3 [1]
       92 GETTABLE                         R8 R7 R2
       93 RETURN                           R8 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["setToVector3"]
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
       14 LOADN                            R9 2048
       15 LOADK                            R10 K5 [0.001]
       16 LENGTH                           R11 R6
       17 JUMPIFNOTEQKN                    R11 K6 [1] ; [+9]
       19 GETTABLEN                        R11 R6 1
       20 LOADK                            R13 K7 ["TrussPart"]
       21 NAMECALL                         R11 R11 K8 ["IsA"]
       23 CALL                             R11 2 1
       24 JUMPIFNOT                        R11 ; [+2]
       25 LOADN                            R9 512
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
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R11 R11 K14 ["maxComponent"]
       49 SUB                              R12 R7 R5
       50 CALL                             R11 1 1
       51 GETUPVAL                         R12 0
       52 GETTABLEKS                       R12 R12 K15 ["minComponent"]
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
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R0 K1 ["_adjustScaleJointList"]
        8 GETTABLEKS                       R3 R0 K2 ["_partToRootMap"]
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 NAMECALL                         R8 R6 K3 ["GetJoints"]
       15 CALL                             R8 1 3
       16 FORGPREP                         R8
       17 LOADK                            R15 K4 ["WeldConstraint"]
       18 NAMECALL                         R13 R12 K5 ["IsA"]
       20 CALL                             R13 2 1
       21 JUMPIFNOT                        R13 ; [+22]
       22 GETUPVAL                         R13 0
       23 GETTABLEKS                       R13 R13 K6 ["getWeldConstraintCounterpart"]
       25 MOVE                             R14 R12
       26 MOVE                             R15 R6
       27 CALL                             R13 2 1
       28 GETTABLEKS                       R15 R0 K2 ["_partToRootMap"]
       30 GETTABLE                         R14 R15 R13
       31 JUMPIFEQ                         R14 R7 ; [+45]
       33 LOADB                            R14 0
       34 SETTABLEKS                       R14 R12 K7 ["Enabled"]
       36 FASTCALL2                        TABLE_INSERT R1 R12 ; [+5]
       38 MOVE                             R15 R1
       39 MOVE                             R16 R12
       40 GETIMPORT                        R14 K10 [table.insert]
       42 CALL                             R14 2 0
       43 JUMP                             ; [+33]
       44 LOADK                            R15 K11 ["JointInstance"]
       45 NAMECALL                         R13 R12 K5 ["IsA"]
       47 CALL                             R13 2 1
       48 JUMPIFNOT                        R13 ; [+28]
       49 GETUPVAL                         R13 0
       50 GETTABLEKS                       R13 R13 K12 ["getJointInstanceCounterpart"]
       52 MOVE                             R14 R12
       53 MOVE                             R15 R6
       54 CALL                             R13 2 1
       55 GETTABLEKS                       R15 R0 K2 ["_partToRootMap"]
       57 GETTABLE                         R14 R15 R13
       58 JUMPIFEQ                         R14 R7 ; [+18]
       60 LOADB                            R14 0
       61 SETTABLEKS                       R14 R12 K7 ["Enabled"]
       63 FASTCALL2                        TABLE_INSERT R1 R12 ; [+5]
       65 MOVE                             R15 R1
       66 MOVE                             R16 R12
       67 GETIMPORT                        R14 K10 [table.insert]
       69 CALL                             R14 2 0
       70 FASTCALL2                        TABLE_INSERT R2 R12 ; [+5]
       72 MOVE                             R15 R2
       73 MOVE                             R16 R12
       74 GETIMPORT                        R14 K10 [table.insert]
       76 CALL                             R14 2 0
       77 FORGLOOP                         R8 2 ; [-61]
       79 FORGLOOP                         R3 2 ; [-67]
       81 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["_adjustScaleJointList"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["unjoinRoots should have created it"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K0 ["_adjustScaleJointList"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R8 R6 K4 ["C0"]
       15 GETTABLEKS                       R8 R8 K5 ["Rotation"]
       17 GETTABLEKS                       R10 R6 K4 ["C0"]
       19 GETTABLEKS                       R10 R10 K6 ["Position"]
       21 MUL                              R9 R10 R1
       22 ADD                              R7 R8 R9
       23 SETTABLEKS                       R7 R6 K4 ["C0"]
       25 GETTABLEKS                       R8 R6 K7 ["C1"]
       27 GETTABLEKS                       R8 R8 K5 ["Rotation"]
       29 GETTABLEKS                       R10 R6 K7 ["C1"]
       31 GETTABLEKS                       R10 R10 K6 ["Position"]
       33 MUL                              R9 R10 R1
       34 ADD                              R7 R8 R9
       35 SETTABLEKS                       R7 R6 K7 ["C1"]
       37 FORGLOOP                         R2 2 ; [-25]
       39 GETTABLEKS                       R3 R0 K8 ["_reenableJointList"]
       41 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       43 LOADK                            R4 K1 ["unjoinRoots should have created it"]
       44 GETIMPORT                        R2 K3 [assert]
       46 CALL                             R2 2 0
       47 GETTABLEKS                       R2 R0 K8 ["_reenableJointList"]
       49 LOADNIL                          R3
       50 LOADNIL                          R4
       51 FORGPREP                         R2
       52 LOADB                            R7 1
       53 SETTABLEKS                       R7 R6 K9 ["Enabled"]
       55 FORGLOOP                         R2 2 ; [-4]
       57 LOADNIL                          R2
       58 SETTABLEKS                       R2 R0 K8 ["_reenableJointList"]
       60 LOADNIL                          R2
       61 SETTABLEKS                       R2 R0 K0 ["_adjustScaleJointList"]
       63 RETURN                           R0 0

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
      138 GETUPVAL                         R9 2
      139 GETTABLEKS                       R9 R9 K3 ["new"]
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
       21 MUL                              R9 R5 R8
       22 GETTABLEKS                       R9 R9 K5 ["Magnitude"]
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
       35 GETUPVAL                         R11 0
       36 GETTABLEKS                       R11 R11 K11 ["complimentDirection"]
       38 MOVE                             R12 R8
       39 CALL                             R11 1 1
       40 MUL                              R7 R10 R11
       41 GETTABLEKS                       R10 R0 K0 ["_draggerContext"]
       43 NAMECALL                         R10 R10 K12 ["getMaxSoftSnaps"]
       45 CALL                             R10 1 1
       46 NEWTABLE                         R11 0 2
       48 LOADN                            R12 -1
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
        8 GETUPVAL                         R1 4
        9 GETTABLEKS                       R1 R1 K1 ["getInitialBounds"]
       11 CALL                             R1 0 2
       12 GETUPVAL                         R3 4
       13 GETTABLEKS                       R3 R3 K2 ["setBounds"]
       15 GETIMPORT                        R5 K5 [CFrame.new]
       17 GETUPVAL                         R6 2
       18 CALL                             R5 1 1
       19 MUL                              R4 R1 R5
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K0 ["_lastDeltaSize"]
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
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["_lastDeltaSize"]
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
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K5 ["_loosePartMap"]
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 FORGPREP                         R3
       27 GETUPVAL                         R11 5
       28 GETTABLE                         R10 R11 R6
       29 MUL                              R9 R10 R0
       30 ADD                              R8 R7 R9
       31 SETTABLEKS                       R8 R6 K6 ["CFrame"]
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R10 R10 K7 ["_originalDimensionMap"]
       36 GETTABLE                         R9 R10 R6
       37 MUL                              R8 R9 R2
       38 SETTABLEKS                       R8 R6 K8 ["Size"]
       40 FORGLOOP                         R3 2 ; [-14]
       42 LOADN                            R3 0
       43 JUMPIFNOTLT                      R3 R1 ; [+24]
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K9 ["_rootModelMap"]
       48 LOADNIL                          R4
       49 LOADNIL                          R5
       50 FORGPREP                         R3
       51 GETUPVAL                         R13 5
       52 GETTABLE                         R12 R13 R6
       53 MUL                              R11 R12 R0
       54 ADD                              R10 R7 R11
       55 NAMECALL                         R8 R6 K10 ["PivotTo"]
       57 CALL                             R8 2 0
       58 GETUPVAL                         R12 0
       59 GETTABLEKS                       R12 R12 K7 ["_originalDimensionMap"]
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
       16 JUMP                             ; [+73]
       17 GETUPVAL                         R7 0
       18 JUMPIF                           R7 ; [+18]
       19 JUMPIFNOT                        R5 ; [+17]
       20 GETIMPORT                        R7 K3 [next]
       22 GETTABLEKS                       R8 R0 K4 ["_loosePartMap"]
       24 CALL                             R7 1 2
       25 GETTABLEKS                       R10 R0 K5 ["_originalDimensionMap"]
       27 GETTABLE                         R9 R10 R7
       28 NEWCLOSURE                       R3 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R7
       32 CAPTURE                          VAL R9
       33 CAPTURE                          REF R4
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R8
       36 JUMP                             ; [+53]
       37 GETTABLEKS                       R7 R0 K6 ["_originalBoundingBoxCFrame"]
       39 GETTABLEKS                       R8 R0 K7 ["_originalBoundingBoxSize"]
       41 GETTABLEKS                       R9 R7 K8 ["Position"]
       43 MOVE                             R12 R2
       44 NAMECALL                         R10 R7 K9 ["VectorToWorldSpace"]
       46 CALL                             R10 2 1
       47 ADD                              R12 R8 R1
       48 GETTABLEKS                       R12 R12 K10 ["Magnitude"]
       50 GETTABLEKS                       R13 R8 K10 ["Magnitude"]
       52 DIV                              R11 R12 R13
       53 NEWTABLE                         R12 0 0
       55 GETTABLEKS                       R13 R0 K4 ["_loosePartMap"]
       57 LOADNIL                          R14
       58 LOADNIL                          R15
       59 FORGPREP                         R13
       60 GETTABLEKS                       R19 R17 K8 ["Position"]
       62 SUB                              R18 R19 R9
       63 SUBK                             R21 R11 K11 [1]
       64 MUL                              R20 R18 R21
       65 ADD                              R19 R10 R20
       66 SETTABLE                         R19 R12 R16
       67 FORGLOOP                         R13 2 ; [-8]
       69 GETTABLEKS                       R13 R0 K12 ["_rootModelMap"]
       71 LOADNIL                          R14
       72 LOADNIL                          R15
       73 FORGPREP                         R13
       74 GETTABLEKS                       R19 R17 K8 ["Position"]
       76 SUB                              R18 R19 R9
       77 SUBK                             R21 R11 K11 [1]
       78 MUL                              R20 R18 R21
       79 ADD                              R19 R10 R20
       80 SETTABLE                         R19 R12 R16
       81 FORGLOOP                         R13 2 ; [-8]
       83 NEWCLOSURE                       R3 P2
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R1
       86 CAPTURE                          REF R4
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R12
       90 GETTABLEKS                       R7 R0 K13 ["_draggerContext"]
       92 NAMECALL                         R7 R7 K14 ["areCollisionsEnabled"]
       94 CALL                             R7 1 1
       95 JUMPIFNOT                        R7 ; [+89]
       96 GETTABLEKS                       R8 R0 K15 ["_lastDeltaSize"]
       98 GETTABLEKS                       R11 R8 K16 ["X"]
      100 FASTCALL1                        MATH_ABS R11 ; [+2]
      101 GETIMPORT                        R10 K19 [math.abs]
      103 CALL                             R10 1 1
      104 GETTABLEKS                       R12 R8 K20 ["Y"]
      106 FASTCALL1                        MATH_ABS R12 ; [+2]
      107 GETIMPORT                        R11 K19 [math.abs]
      109 CALL                             R11 1 1
      110 GETTABLEKS                       R13 R8 K21 ["Z"]
      112 FASTCALL1                        MATH_ABS R13 ; [+2]
      113 GETIMPORT                        R12 K19 [math.abs]
      115 CALL                             R12 1 1
      116 FASTCALL                         MATH_MIN ; [+2]
      117 GETIMPORT                        R9 K23 [math.min]
      119 CALL                             R9 3 1
      120 GETTABLEKS                       R12 R1 K16 ["X"]
      122 FASTCALL1                        MATH_ABS R12 ; [+2]
      123 GETIMPORT                        R11 K19 [math.abs]
      125 CALL                             R11 1 1
      126 GETTABLEKS                       R13 R1 K20 ["Y"]
      128 FASTCALL1                        MATH_ABS R13 ; [+2]
      129 GETIMPORT                        R12 K19 [math.abs]
      131 CALL                             R12 1 1
      132 GETTABLEKS                       R14 R1 K21 ["Z"]
      134 FASTCALL1                        MATH_ABS R14 ; [+2]
      135 GETIMPORT                        R13 K19 [math.abs]
      137 CALL                             R13 1 1
      138 FASTCALL                         MATH_MIN ; [+2]
      139 GETIMPORT                        R10 K23 [math.min]
      141 CALL                             R10 3 1
      142 JUMPIFNOTEQKN                    R10 K24 [0] ; [+3]
      144 LOADN                            R7 0
      145 JUMP                             ; [+1]
      146 DIV                              R7 R9 R10
      147 GETTABLEKS                       R12 R1 K16 ["X"]
      149 FASTCALL1                        MATH_ABS R12 ; [+2]
      150 GETIMPORT                        R11 K19 [math.abs]
      152 CALL                             R11 1 1
      153 GETTABLEKS                       R13 R1 K20 ["Y"]
      155 FASTCALL1                        MATH_ABS R13 ; [+2]
      156 GETIMPORT                        R12 K19 [math.abs]
      158 CALL                             R12 1 1
      159 GETTABLEKS                       R14 R1 K21 ["Z"]
      161 FASTCALL1                        MATH_ABS R14 ; [+2]
      162 GETIMPORT                        R13 K19 [math.abs]
      164 CALL                             R13 1 1
      165 FASTCALL                         MATH_MIN ; [+2]
      166 GETIMPORT                        R10 K23 [math.min]
      168 CALL                             R10 3 1
      169 FASTCALL2K                       MATH_MAX R10 K11 ; [+4]
      171 LOADK                            R11 K11 [1]
      172 GETIMPORT                        R9 K27 [math.max]
      174 CALL                             R9 2 1
      175 DIVRK                            R8 K25 [0.001] R9
      176 MOVE                             R11 R3
      177 MOVE                             R12 R7
      178 LOADN                            R13 1
      179 LOADB                            R14 1
      180 MOVE                             R15 R8
      181 NAMECALL                         R9 R0 K28 ["_binarySearchForGoodPartSize"]
      183 CALL                             R9 6 0
      184 JUMP                             ; [+3]
      185 MOVE                             R7 R3
      186 LOADN                            R8 1
      187 CALL                             R7 1 0
      188 GETUPVAL                         R7 0
      189 JUMPIFNOT                        R7 ; [+19]
      190 GETTABLEKS                       R7 R0 K1 ["_singleSelectionInterface"]
      192 JUMPIFNOT                        R7 ; [+16]
      193 GETTABLEKS                       R7 R0 K1 ["_singleSelectionInterface"]
      195 GETTABLEKS                       R7 R7 K29 ["getCurrentBounds"]
      197 CALL                             R7 0 2
      198 GETTABLEKS                       R9 R0 K1 ["_singleSelectionInterface"]
      200 GETTABLEKS                       R9 R9 K30 ["setBounds"]
      202 MOVE                             R10 R7
      203 MOVE                             R13 R8
      204 NAMECALL                         R11 R0 K31 ["_maybeSnapPartSizeBackDownToGrid"]
      206 CALL                             R11 2 -1
      207 CALL                             R9 -1 0
      208 JUMP                             ; [+17]
      209 GETUPVAL                         R7 0
      210 JUMPIF                           R7 ; [+15]
      211 GETTABLEKS                       R7 R0 K0 ["_isSinglePartMode"]
      213 JUMPIFNOT                        R7 ; [+12]
      214 GETIMPORT                        R7 K3 [next]
      216 GETTABLEKS                       R8 R0 K4 ["_loosePartMap"]
      218 CALL                             R7 1 1
      219 GETTABLEKS                       R10 R7 K32 ["Size"]
      221 NAMECALL                         R8 R0 K31 ["_maybeSnapPartSizeBackDownToGrid"]
      223 CALL                             R8 2 1
      224 SETTABLEKS                       R8 R7 K32 ["Size"]
      226 GETTABLEKS                       R7 R0 K7 ["_originalBoundingBoxSize"]
      228 GETTABLEKS                       R10 R0 K15 ["_lastDeltaSize"]
      230 ADD                              R9 R7 R10
      231 GETTABLEKS                       R12 R7 K16 ["X"]
      233 JUMPIFNOTEQKN                    R12 K24 [0] ; [+3]
      235 LOADN                            R11 1
      236 JUMP                             ; [+5]
      237 GETTABLEKS                       R12 R9 K16 ["X"]
      239 GETTABLEKS                       R13 R7 K16 ["X"]
      241 DIV                              R11 R12 R13
      242 GETTABLEKS                       R13 R7 K20 ["Y"]
      244 JUMPIFNOTEQKN                    R13 K24 [0] ; [+3]
      246 LOADN                            R12 1
      247 JUMP                             ; [+5]
      248 GETTABLEKS                       R13 R9 K20 ["Y"]
      250 GETTABLEKS                       R14 R7 K20 ["Y"]
      252 DIV                              R12 R13 R14
      253 GETTABLEKS                       R14 R7 K21 ["Z"]
      255 JUMPIFNOTEQKN                    R14 K24 [0] ; [+3]
      257 LOADN                            R13 1
      258 JUMP                             ; [+5]
      259 GETTABLEKS                       R14 R9 K21 ["Z"]
      261 GETTABLEKS                       R15 R7 K21 ["Z"]
      263 DIV                              R13 R14 R15
      264 FASTCALL                         VECTOR ; [+2]
      265 GETIMPORT                        R10 K35 [Vector3.new]
      267 CALL                             R10 3 1
      268 MOVE                             R8 R10
      269 MOVE                             R11 R8
      270 MOVE                             R12 R4
      271 NAMECALL                         R9 R0 K36 ["_applyLoosePartFixup"]
      273 CALL                             R9 3 0
      274 MOVE                             R11 R8
      275 MOVE                             R12 R4
      276 NAMECALL                         R9 R0 K37 ["_applyLooseAttachmentFixup"]
      278 CALL                             R9 3 0
      279 GETTABLEKS                       R9 R0 K38 ["_jointMaker"]
      281 NAMECALL                         R9 R9 K39 ["fixupConstraintLengths"]
      283 CALL                             R9 1 0
      284 GETTABLEKS                       R9 R0 K13 ["_draggerContext"]
      286 NAMECALL                         R9 R9 K40 ["shouldJoinSurfaces"]
      288 CALL                             R9 1 1
      289 JUMPIFNOT                        R9 ; [+7]
      290 GETTABLEKS                       R9 R0 K38 ["_jointMaker"]
      292 NAMECALL                         R9 R9 K41 ["computeJointPairs"]
      294 CALL                             R9 1 1
      295 SETTABLEKS                       R9 R0 K42 ["_jointPairs"]
      297 GETTABLEKS                       R9 R0 K15 ["_lastDeltaSize"]
      299 MOVE                             R10 R4
      300 CLOSEUPVALS                      R4
      301 RETURN                           R9 2

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
       18 ADD                              R14 R8 R9
       19 MULK                             R13 R14 K2 [0.5]
       20 MOVE                             R14 R1
       21 MOVE                             R15 R13
       22 CALL                             R14 1 0
       23 GETTABLEKS                       R14 R0 K0 ["_jointMaker"]
       25 MOVE                             R16 R4
       26 NAMECALL                         R14 R14 K1 ["isColliding"]
       28 CALL                             R14 2 1
       29 MOVE                             R6 R14
       30 JUMPIFNOT                        R6 ; [+3]
       31 ADDK                             R7 R7 K3 [1]
       32 MOVE                             R9 R13
       33 JUMP                             ; [+1]
       34 MOVE                             R8 R13
       35 FORNLOOP                         R10
       36 SUB                              R11 R8 R2
       37 FASTCALL1                        MATH_ABS R11 ; [+2]
       38 GETIMPORT                        R10 K6 [math.abs]
       40 CALL                             R10 1 1
       41 JUMPIFNOTLT                      R10 R5 ; [+3]
       43 LOADB                            R6 1
       44 MOVE                             R8 R2
       45 JUMPIFNOT                        R6 ; [+3]
       46 MOVE                             R10 R1
       47 MOVE                             R11 R8
       48 CALL                             R10 1 0
       49 RETURN                           R8 1

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
       17 GETTABLEKS                       R11 R7 K4 ["RelativeTo"]
       19 GETTABLEKS                       R11 R11 K5 ["CFrame"]
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
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R2 R1 K6 ["Parent"]
       13 GETTABLEKS                       R3 R2 K7 ["DraggerFramework"]
       15 GETIMPORT                        R4 K9 [require]
       17 GETTABLEKS                       R5 R3 K10 ["Utility"]
       19 GETTABLEKS                       R5 R5 K11 ["JointMaker"]
       21 CALL                             R4 1 1
       22 GETIMPORT                        R5 K9 [require]
       24 GETTABLEKS                       R6 R3 K10 ["Utility"]
       26 GETTABLEKS                       R6 R6 K12 ["getBoundingBoxScale"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K9 [require]
       31 GETTABLEKS                       R7 R3 K10 ["Utility"]
       33 GETTABLEKS                       R7 R7 K13 ["TemporaryTransparency"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K9 [require]
       38 GETTABLEKS                       R8 R3 K10 ["Utility"]
       40 GETTABLEKS                       R8 R8 K14 ["Math"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K9 [require]
       45 GETTABLEKS                       R9 R3 K10 ["Utility"]
       47 GETTABLEKS                       R9 R9 K15 ["JointUtil"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K9 [require]
       52 GETTABLEKS                       R10 R3 K10 ["Utility"]
       54 GETTABLEKS                       R10 R10 K16 ["getSoftSnaps"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K9 [require]
       59 GETTABLEKS                       R11 R3 K17 ["Types"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K9 [require]
       64 GETTABLEKS                       R12 R1 K18 ["SelectionInfo"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K9 [require]
       69 GETTABLEKS                       R13 R3 K19 ["Flags"]
       71 GETTABLEKS                       R13 R13 K20 ["getFFlagDraggerEditProcModels"]
       73 CALL                             R12 1 1
       74 MOVE                             R13 R12
       75 CALL                             R13 0 1
       76 GETIMPORT                        R14 K23 [CFrame.new]
       78 CALL                             R14 0 1
       79 FASTCALL                         VECTOR ; [+2]
       80 GETIMPORT                        R15 K25 [Vector3.new]
       82 CALL                             R15 0 1
       83 LOADK                            R17 K27 [{1, 1, 1}]
       84 MULK                             R16 R17 K26 [∞]
       85 NEWTABLE                         R17 32 0
       87 SETTABLEKS                       R17 R17 K28 ["__index"]
       89 DUPCLOSURE                       R18 K29 [PROTO_0]
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R17
       92 SETTABLEKS                       R18 R17 K22 ["new"]
       94 DUPCLOSURE                       R18 K30 [PROTO_1]
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R15
       97 SETTABLEKS                       R18 R17 K31 ["getBoundingBox"]
       99 DUPCLOSURE                       R18 K32 [PROTO_2]
      100 SETTABLEKS                       R18 R17 K33 ["shouldScaleFromCenter"]
      102 DUPCLOSURE                       R18 K34 [PROTO_3]
      103 DUPCLOSURE                       R19 K35 [PROTO_4]
      104 CAPTURE                          VAL R13
      105 SETTABLEKS                       R19 R17 K36 ["axesToScale"]
      107 DUPCLOSURE                       R19 K37 [PROTO_5]
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R16
      111 SETTABLEKS                       R19 R17 K38 ["getMinMaxSizes"]
      113 DUPCLOSURE                       R19 K39 [PROTO_6]
      114 CAPTURE                          VAL R8
      115 SETTABLEKS                       R19 R17 K40 ["_unjoinRoots"]
      117 DUPCLOSURE                       R19 K41 [PROTO_7]
      118 SETTABLEKS                       R19 R17 K42 ["_rejoinRoots"]
      120 DUPCLOSURE                       R19 K43 [PROTO_8]
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R6
      124 SETTABLEKS                       R19 R17 K44 ["beginScale"]
      126 DUPCLOSURE                       R19 K45 [PROTO_9]
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R9
      129 SETTABLEKS                       R19 R17 K16 ["getSoftSnaps"]
      131 DUPCLOSURE                       R19 K46 [PROTO_10]
      132 DUPCLOSURE                       R20 K47 [PROTO_11]
      133 SETTABLEKS                       R20 R17 K48 ["_maybeSnapPartSizeBackDownToGrid"]
      135 DUPCLOSURE                       R20 K49 [PROTO_12]
      136 DUPCLOSURE                       R21 K50 [PROTO_13]
      137 DUPCLOSURE                       R22 K51 [PROTO_14]
      138 DUPCLOSURE                       R23 K52 [PROTO_18]
      139 CAPTURE                          VAL R13
      140 SETTABLEKS                       R23 R17 K53 ["updateScale"]
      142 DUPCLOSURE                       R23 K54 [PROTO_19]
      143 SETTABLEKS                       R23 R17 K55 ["endScale"]
      145 DUPCLOSURE                       R23 K56 [PROTO_20]
      146 CAPTURE                          VAL R5
      147 SETTABLEKS                       R23 R17 K57 ["render"]
      149 DUPCLOSURE                       R23 K58 [PROTO_21]
      150 SETTABLEKS                       R23 R17 K59 ["_binarySearchForGoodPartSize"]
      152 DUPCLOSURE                       R23 K60 [PROTO_23]
      153 SETTABLEKS                       R23 R17 K61 ["_recordLooseAttachmentFixup"]
      155 DUPCLOSURE                       R23 K62 [PROTO_24]
      156 SETTABLEKS                       R23 R17 K63 ["_applyLooseAttachmentFixup"]
      158 DUPCLOSURE                       R23 K64 [PROTO_25]
      159 CAPTURE                          VAL R14
      160 SETTABLEKS                       R23 R17 K65 ["_recordLoosePartFixup"]
      162 DUPCLOSURE                       R23 K66 [PROTO_26]
      163 SETTABLEKS                       R23 R17 K67 ["_applyLoosePartFixup"]
      165 RETURN                           R17 1
