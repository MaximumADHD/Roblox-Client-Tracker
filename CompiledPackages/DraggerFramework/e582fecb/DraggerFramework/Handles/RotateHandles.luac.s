PROTO_0:
        0 DIVK                             R4 R0 K0 [1.5707963267949]
        1 ADDK                             R3 R4 K1 [0.5]
        2 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        3 GETIMPORT                        R2 K4 [math.floor]
        5 CALL                             R2 1 1
        6 MULK                             R1 R2 K0 [1.5707963267949]
        7 SUB                              R4 R1 R0
        8 FASTCALL1                        MATH_ABS R4 ; [+2]
        9 GETIMPORT                        R3 K6 [math.abs]
       11 CALL                             R3 1 1
       12 LOADK                            R4 K7 [0.001]
       13 JUMPIFLT                         R3 R4 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R6 R1
        1 NAMECALL                         R4 R0 K0 ["VectorToObjectSpace"]
        3 CALL                             R4 2 1
        4 GETIMPORT                        R5 K3 [CFrame.fromAxisAngle]
        6 MOVE                             R6 R4
        7 MOVE                             R7 R2
        8 CALL                             R5 2 1
        9 LOADN                            R6 0
       10 JUMPIFNOTLT                      R6 R3 ; [+23]
       12 DIVK                             R10 R2 K4 [1.5707963267949]
       13 ADDK                             R9 R10 K5 [0.5]
       14 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       15 GETIMPORT                        R8 K8 [math.floor]
       17 CALL                             R8 1 1
       18 MULK                             R7 R8 K4 [1.5707963267949]
       19 SUB                              R9 R7 R2
       20 FASTCALL1                        MATH_ABS R9 ; [+2]
       21 GETIMPORT                        R8 K10 [math.abs]
       23 CALL                             R8 1 1
       24 LOADK                            R9 K11 [0.001]
       25 JUMPIFLT                         R8 R9 ; [+2]
       27 LOADB                            R6 0 +1
       28 LOADB                            R6 1
       29 JUMPIFNOT                        R6 ; [+4]
       30 GETUPVAL                         R6 0
       31 MOVE                             R7 R5
       32 CALL                             R6 1 1
       33 MOVE                             R5 R6
       34 MUL                              R7 R0 R5
       35 NAMECALL                         R8 R0 K12 ["Inverse"]
       37 CALL                             R8 1 1
       38 MUL                              R6 R7 R8
       39 RETURN                           R6 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["Rotation"]
        2 NAMECALL                         R3 R3 K1 ["Inverse"]
        4 CALL                             R3 1 1
        5 MUL                              R2 R3 R1
        6 GETTABLEKS                       R3 R0 K0 ["Rotation"]
        8 MUL                              R1 R2 R3
        9 MUL                              R3 R0 R1
       10 NAMECALL                         R4 R0 K1 ["Inverse"]
       12 CALL                             R4 1 1
       13 MUL                              R2 R3 R4
       14 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["intersectRayPlane"]
        3 GETTABLEKS                       R3 R1 K1 ["Origin"]
        5 GETTABLEKS                       R4 R1 K2 ["Direction"]
        7 GETTABLEKS                       R5 R0 K3 ["Position"]
        9 GETTABLEKS                       R6 R0 K4 ["RightVector"]
       11 CALL                             R2 4 1
       12 LOADN                            R3 0
       13 JUMPIFNOTLE                      R3 R2 ; [+38]
       15 GETTABLEKS                       R4 R1 K1 ["Origin"]
       17 GETTABLEKS                       R6 R1 K2 ["Direction"]
       19 MUL                              R5 R6 R2
       20 ADD                              R3 R4 R5
       21 GETTABLEKS                       R5 R0 K3 ["Position"]
       23 SUB                              R4 R3 R5
       24 GETTABLEKS                       R4 R4 K5 ["Unit"]
       26 GETTABLEKS                       R5 R0 K6 ["LookVector"]
       28 MOVE                             R7 R4
       29 NAMECALL                         R5 R5 K7 ["Dot"]
       31 CALL                             R5 2 1
       32 GETTABLEKS                       R6 R0 K8 ["UpVector"]
       34 MOVE                             R8 R4
       35 NAMECALL                         R6 R6 K7 ["Dot"]
       37 CALL                             R6 2 1
       38 FASTCALL2                        MATH_ATAN2 R6 R5 ; [+5]
       40 MOVE                             R8 R6
       41 MOVE                             R9 R5
       42 GETIMPORT                        R7 K11 [math.atan2]
       44 CALL                             R7 2 1
       45 LOADN                            R8 0
       46 JUMPIFNOTLT                      R7 R8 ; [+4]
       48 LOADK                            R9 K12 [6.28318530717959]
       49 ADD                              R8 R9 R7
       50 RETURN                           R8 1
       51 RETURN                           R7 1
       52 LOADNIL                          R3
       53 RETURN                           R3 1

PROTO_4:
        0 LOADN                            R2 0
        1 JUMPIFNOTLT                      R2 R1 ; [+28]
        3 FASTCALL1                        MATH_RAD R1 ; [+3]
        4 MOVE                             R3 R1
        5 GETIMPORT                        R2 K2 [math.rad]
        7 CALL                             R2 1 1
        8 DIV                              R6 R0 R2
        9 ADDK                             R5 R6 K3 [0.5]
       10 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       11 GETIMPORT                        R4 K5 [math.floor]
       13 CALL                             R4 1 1
       14 MUL                              R3 R4 R2
       15 SUBK                             R5 R0 K6 [6.28318530717959]
       16 FASTCALL1                        MATH_ABS R5 ; [+2]
       17 GETIMPORT                        R4 K8 [math.abs]
       19 CALL                             R4 1 1
       20 SUB                              R6 R0 R3
       21 FASTCALL1                        MATH_ABS R6 ; [+2]
       22 GETIMPORT                        R5 K8 [math.abs]
       24 CALL                             R5 1 1
       25 JUMPIFNOTLT                      R4 R5 ; [+3]
       27 LOADN                            R6 0
       28 RETURN                           R6 1
       29 RETURN                           R3 1
       30 RETURN                           R0 1

PROTO_5:
        0 JUMPIFNOT                        R2 ; [+23]
        1 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
        3 NAMECALL                         R4 R4 K1 ["getCameraCFrame"]
        5 CALL                             R4 1 1
        6 GETIMPORT                        R5 K4 [CFrame.lookAt]
        8 GETTABLEKS                       R6 R1 K5 ["Position"]
       10 GETTABLEKS                       R7 R4 K5 ["Position"]
       12 CALL                             R5 2 1
       13 JUMPIFEQKNIL                     R3 ; [+2]
       15 JUMPIFNOT                        R3 ; [+7]
       16 GETIMPORT                        R6 K7 [CFrame.Angles]
       18 LOADN                            R7 0
       19 LOADK                            R8 K8 [1.5707963267949]
       20 LOADN                            R9 0
       21 CALL                             R6 3 1
       22 MUL                              R5 R5 R6
       23 RETURN                           R5 1
       24 RETURN                           R1 1

PROTO_6:
        0 JUMPIF                           R2 ; [+37]
        1 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
        3 NAMECALL                         R3 R3 K1 ["getCameraCFrame"]
        5 CALL                             R3 1 1
        6 GETIMPORT                        R4 K4 [CFrame.Angles]
        8 LOADN                            R5 0
        9 LOADK                            R6 K5 [1.5707963267949]
       10 LOADK                            R7 K5 [1.5707963267949]
       11 CALL                             R4 3 1
       12 MUL                              R1 R1 R4
       13 GETTABLEKS                       R5 R3 K6 ["Position"]
       15 GETTABLEKS                       R6 R1 K6 ["Position"]
       17 SUB                              R4 R5 R6
       18 GETTABLEKS                       R4 R4 K7 ["Unit"]
       20 GETTABLEKS                       R9 R1 K8 ["ZVector"]
       22 NAMECALL                         R7 R4 K9 ["Dot"]
       24 CALL                             R7 2 1
       25 GETTABLEKS                       R8 R1 K8 ["ZVector"]
       27 MUL                              R6 R7 R8
       28 SUB                              R5 R4 R6
       29 GETTABLEKS                       R8 R1 K10 ["YVector"]
       31 GETTABLEKS                       R10 R1 K8 ["ZVector"]
       33 MINUS                            R9 R10
       34 NAMECALL                         R6 R5 K11 ["Angle"]
       36 CALL                             R6 3 1
       37 RETURN                           R6 1
       38 LOADN                            R3 0
       39 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["init"]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 0
        8 NEWTABLE                         R3 8 0
       10 SETTABLEKS                       R0 R3 K1 ["_draggerContext"]
       12 NEWTABLE                         R4 0 0
       14 SETTABLEKS                       R4 R3 K2 ["_handles"]
       16 GETUPVAL                         R5 0
       17 CALL                             R5 0 1
       18 JUMPIFNOT                        R5 ; [+3]
       19 NEWTABLE                         R4 0 0
       21 JUMP                             ; [+1]
       22 LOADNIL                          R4
       23 SETTABLEKS                       R4 R3 K3 ["_ballHandles"]
       25 MOVE                             R4 R1
       26 JUMPIF                           R4 ; [+1]
       27 DUPTABLE                         R4 K6 [{["Summonable"] = True}]
       28 SETTABLEKS                       R4 R3 K7 ["_props"]
       30 SETTABLEKS                       R2 R3 K8 ["_implementation"]
       32 LOADB                            R4 0
       33 SETTABLEKS                       R4 R3 K9 ["_tabKeyDown"]
       35 GETUPVAL                         R6 2
       36 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       38 MOVE                             R5 R3
       39 GETIMPORT                        R4 K11 [setmetatable]
       41 CALL                             R4 2 1
       42 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["Wrong flag branching"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K3 ["_props"]
       11 GETTABLEKS                       R1 R1 K4 ["Summonable"]
       13 JUMPIF                           R1 ; [+2]
       14 LOADB                            R1 0
       15 RETURN                           R1 1
       16 GETTABLEKS                       R1 R0 K5 ["_draggerContext"]
       18 NAMECALL                         R1 R1 K6 ["getMouseRay"]
       20 CALL                             R1 1 1
       21 GETTABLEKS                       R2 R0 K7 ["_schema"]
       23 GETTABLEKS                       R2 R2 K8 ["getMouseTarget"]
       25 GETTABLEKS                       R3 R0 K5 ["_draggerContext"]
       27 MOVE                             R4 R1
       28 NEWTABLE                         R5 0 0
       30 CALL                             R2 3 3
       31 JUMPIFNOT                        R3 ; [+59]
       32 GETTABLEKS                       R6 R1 K9 ["Origin"]
       34 GETTABLEKS                       R8 R1 K10 ["Direction"]
       36 GETTABLEKS                       R8 R8 K11 ["Unit"]
       38 MUL                              R7 R8 R4
       39 ADD                              R5 R6 R7
       40 GETIMPORT                        R6 K14 [CFrame.new]
       42 GETTABLEKS                       R7 R0 K15 ["_boundingBox"]
       44 GETTABLEKS                       R7 R7 K12 ["CFrame"]
       46 MOVE                             R9 R5
       47 NAMECALL                         R7 R7 K16 ["PointToObjectSpace"]
       49 CALL                             R7 2 -1
       50 CALL                             R6 -1 1
       51 SETTABLEKS                       R6 R0 K17 ["_summonBasisOffset"]
       53 GETTABLEKS                       R6 R0 K18 ["_implementation"]
       55 GETTABLEKS                       R6 R6 K19 ["findSummonSnap"]
       57 JUMPIFNOT                        R6 ; [+33]
       58 GETTABLEKS                       R6 R0 K18 ["_implementation"]
       60 MOVE                             R8 R5
       61 MOVE                             R9 R3
       62 NAMECALL                         R6 R6 K19 ["findSummonSnap"]
       64 CALL                             R6 3 2
       65 JUMPIFNOT                        R6 ; [+25]
       66 GETTABLEKS                       R8 R0 K15 ["_boundingBox"]
       68 GETTABLEKS                       R8 R8 K12 ["CFrame"]
       70 MOVE                             R10 R6
       71 NAMECALL                         R8 R8 K20 ["ToObjectSpace"]
       73 CALL                             R8 2 1
       74 NAMECALL                         R10 R8 K21 ["Inverse"]
       76 CALL                             R10 1 1
       77 GETTABLEKS                       R11 R0 K17 ["_summonBasisOffset"]
       79 MUL                              R9 R10 R11
       80 GETUPVAL                         R11 1
       81 MOVE                             R12 R9
       82 CALL                             R11 1 1
       83 MUL                              R10 R8 R11
       84 SETTABLEKS                       R10 R0 K17 ["_summonBasisOffset"]
       86 LOADB                            R10 1
       87 SETTABLEKS                       R10 R0 K22 ["_summonWasSnapped"]
       89 SETTABLEKS                       R7 R0 K23 ["_summonWasSnappedToSurface"]
       91 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["Wrong flag branching"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K3 ["_summonBasisOffset"]
       11 JUMPIFNOT                        R1 ; [+9]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K3 ["_summonBasisOffset"]
       15 LOADB                            R1 0
       16 SETTABLEKS                       R1 R0 K4 ["_summonWasSnapped"]
       18 LOADB                            R1 0
       19 SETTABLEKS                       R1 R0 K5 ["_summonWasSnappedToSurface"]
       21 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["Wrong flag branching"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 SETTABLEKS                       R1 R0 K3 ["_summonBasisOffset"]
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["Wrong flag branching"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K3 ["_summonBasisOffset"]
       11 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETTABLEKS                       R1 R0 K0 ["_summonBasisOffset"]
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETTABLEKS                       R3 R0 K1 ["_basisOffset"]
        8 MUL                              R2 R3 R1
        9 RETURN                           R2 1
       10 GETTABLEKS                       R2 R0 K1 ["_basisOffset"]
       12 RETURN                           R2 1
       13 GETTABLEKS                       R1 R0 K0 ["_summonBasisOffset"]
       15 JUMPIF                           R1 ; [+2]
       16 GETTABLEKS                       R1 R0 K1 ["_basisOffset"]
       18 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["_draggingHandleId"]
        2 JUMPIF                           R3 ; [+59]
        3 GETUPVAL                         R3 0
        4 CALL                             R3 0 1
        5 JUMPIF                           R3 ; [+6]
        6 GETTABLEKS                       R3 R0 K1 ["_tabKeyDown"]
        8 JUMPIF                           R3 ; [+3]
        9 NAMECALL                         R3 R0 K2 ["_endSummon"]
       11 CALL                             R3 1 0
       12 NAMECALL                         R3 R2 K3 ["getBoundingBox"]
       14 CALL                             R3 1 3
       15 DUPTABLE                         R6 K6 [{"Size", "CFrame"}]
       16 SETTABLEKS                       R5 R6 K4 ["Size"]
       18 GETIMPORT                        R8 K8 [CFrame.new]
       20 MOVE                             R9 R4
       21 CALL                             R8 1 1
       22 MUL                              R7 R3 R8
       23 SETTABLEKS                       R7 R6 K5 ["CFrame"]
       25 SETTABLEKS                       R6 R0 K9 ["_boundingBox"]
       27 GETIMPORT                        R6 K8 [CFrame.new]
       29 MINUS                            R7 R4
       30 CALL                             R6 1 1
       31 SETTABLEKS                       R6 R0 K10 ["_basisOffset"]
       33 SETTABLEKS                       R2 R0 K11 ["_selectionInfo"]
       35 NAMECALL                         R6 R1 K12 ["getSelectionWrapper"]
       37 CALL                             R6 1 1
       38 SETTABLEKS                       R6 R0 K13 ["_selectionWrapper"]
       40 NAMECALL                         R6 R1 K14 ["getSchema"]
       42 CALL                             R6 1 1
       43 SETTABLEKS                       R6 R0 K15 ["_schema"]
       45 GETTABLEKS                       R6 R0 K16 ["_draggerContext"]
       47 GETTABLEKS                       R9 R0 K9 ["_boundingBox"]
       49 GETTABLEKS                       R9 R9 K5 ["CFrame"]
       51 NAMECALL                         R10 R0 K17 ["_getBasisOffset"]
       53 CALL                             R10 1 1
       54 MUL                              R8 R9 R10
       55 GETTABLEKS                       R8 R8 K18 ["Position"]
       57 NAMECALL                         R6 R6 K19 ["getHandleScale"]
       59 CALL                             R6 2 1
       60 SETTABLEKS                       R6 R0 K20 ["_scale"]
       62 NAMECALL                         R3 R0 K21 ["_updateHandles"]
       64 CALL                             R3 1 0
       65 RETURN                           R0 0

PROTO_14:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_15:
        0 LOADNIL                          R3
        1 LOADK                            R4 K0 [∞]
        2 GETIMPORT                        R5 K2 [pairs]
        4 GETTABLEKS                       R6 R0 K3 ["_handles"]
        6 CALL                             R5 1 3
        7 FORGPREP_NEXT                    R5
        8 GETUPVAL                         R10 0
        9 GETTABLEKS                       R10 R10 K4 ["hitTest"]
       11 MOVE                             R11 R9
       12 MOVE                             R12 R1
       13 CALL                             R10 2 1
       14 JUMPIFNOT                        R10 ; [+38]
       15 JUMPIFNOTLT                      R10 R4 ; [+37]
       17 GETUPVAL                         R11 1
       18 CALL                             R11 0 1
       19 JUMPIFNOT                        R11 ; [+31]
       20 GETTABLEKS                       R12 R1 K5 ["Origin"]
       22 GETTABLEKS                       R14 R1 K6 ["Direction"]
       24 GETTABLEKS                       R14 R14 K7 ["Unit"]
       26 MUL                              R13 R14 R10
       27 ADD                              R11 R12 R13
       28 GETTABLEKS                       R12 R9 K8 ["HandleCFrame"]
       30 GETTABLEKS                       R12 R12 K9 ["Position"]
       32 SUB                              R13 R11 R12
       33 GETTABLEKS                       R13 R13 K7 ["Unit"]
       35 GETTABLEKS                       R16 R1 K6 ["Direction"]
       37 GETTABLEKS                       R16 R16 K7 ["Unit"]
       39 MINUS                            R15 R16
       40 NAMECALL                         R13 R13 K10 ["Dot"]
       42 CALL                             R13 2 1
       43 JUMPIFEQKS                       R8 K11 ["VAxis"] ; [+4]
       45 LOADK                            R14 K12 [-0.17364817766693]
       46 JUMPIFNOTLE                      R14 R13 ; [+6]
       48 MOVE                             R4 R10
       49 MOVE                             R3 R8
       50 JUMP                             ; [+2]
       51 MOVE                             R4 R10
       52 MOVE                             R3 R8
       53 FORGLOOP                         R5 2 ; [-46]
       55 GETUPVAL                         R5 1
       56 CALL                             R5 0 1
       57 JUMPIFNOT                        R5 ; [+19]
       58 GETIMPORT                        R5 K2 [pairs]
       60 GETTABLEKS                       R6 R0 K13 ["_ballHandles"]
       62 CALL                             R5 1 3
       63 FORGPREP_NEXT                    R5
       64 GETUPVAL                         R10 2
       65 GETTABLEKS                       R10 R10 K4 ["hitTest"]
       67 MOVE                             R11 R9
       68 MOVE                             R12 R1
       69 CALL                             R10 2 1
       70 JUMPIFNOT                        R10 ; [+4]
       71 JUMPIFNOTLT                      R10 R4 ; [+3]
       73 LOADK                            R4 K0 [∞]
       74 MOVE                             R3 R8
       75 FORGLOOP                         R5 2 ; [-12]
       77 MOVE                             R5 R3
       78 MOVE                             R6 R4
       79 LOADB                            R7 1
       80 RETURN                           R5 3

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 LOADK                            R3 K1 ["HotkeyUsageHidden"]
        3 NAMECALL                         R1 R1 K2 ["getSetting"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+32]
        7 NEWTABLE                         R1 0 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["addGridSnap"]
       12 MOVE                             R3 R1
       13 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
       15 CALL                             R2 2 0
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K4 ["addSummonHandles"]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K5 ["addHelp"]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K6 ["createElement"]
       29 GETUPVAL                         R3 2
       30 DUPTABLE                         R4 K9 [{"DraggerContext", "HotkeyList"}]
       31 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
       33 SETTABLEKS                       R5 R4 K7 ["DraggerContext"]
       35 SETTABLEKS                       R1 R4 K8 ["HotkeyList"]
       37 CALL                             R2 2 -1
       38 RETURN                           R2 -1
       39 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["getRotateIncrement"]
        4 CALL                             R1 1 1
        5 LOADN                            R2 5
        6 JUMPIFNOTLE                      R2 R1 ; [+7]
        8 FASTCALL1                        MATH_RAD R1 ; [+3]
        9 MOVE                             R3 R1
       10 GETIMPORT                        R2 K4 [math.rad]
       12 CALL                             R2 1 1
       13 RETURN                           R2 1
       14 LOADNIL                          R2
       15 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["HandleCFrame"]
        3 GETTABLEKS                       R1 R1 K1 ["Position"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["HandleCFrame"]
        8 GETTABLEKS                       R2 R2 K2 ["XVector"]
       10 MULK                             R6 R2 K3 [-10000]
       11 ADD                              R5 R1 R6
       12 MULK                             R7 R2 K4 [10000]
       13 ADD                              R6 R1 R7
       14 NAMECALL                         R3 R0 K5 ["AddLine"]
       16 CALL                             R3 3 0
       17 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        5 NAMECALL                         R2 R2 K1 ["getDraggerShowWhileDragging"]
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 NAMECALL                         R2 R0 K2 ["_getTickAngle"]
       12 CALL                             R2 1 1
       13 NEWTABLE                         R3 1 0
       15 GETTABLEKS                       R5 R0 K3 ["_startAngle"]
       17 GETTABLEKS                       R6 R0 K0 ["_draggerContext"]
       19 NAMECALL                         R6 R6 K4 ["getRotateIncrement"]
       21 CALL                             R6 1 1
       22 LOADN                            R7 0
       23 JUMPIFNOTLT                      R7 R6 ; [+29]
       25 FASTCALL1                        MATH_RAD R6 ; [+3]
       26 MOVE                             R8 R6
       27 GETIMPORT                        R7 K7 [math.rad]
       29 CALL                             R7 1 1
       30 DIV                              R11 R5 R7
       31 ADDK                             R10 R11 K8 [0.5]
       32 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       33 GETIMPORT                        R9 K10 [math.floor]
       35 CALL                             R9 1 1
       36 MUL                              R8 R9 R7
       37 SUBK                             R10 R5 K11 [6.28318530717959]
       38 FASTCALL1                        MATH_ABS R10 ; [+2]
       39 GETIMPORT                        R9 K13 [math.abs]
       41 CALL                             R9 1 1
       42 SUB                              R11 R5 R8
       43 FASTCALL1                        MATH_ABS R11 ; [+2]
       44 GETIMPORT                        R10 K13 [math.abs]
       46 CALL                             R10 1 1
       47 JUMPIFNOTLT                      R9 R10 ; [+3]
       49 LOADN                            R4 0
       50 JUMP                             ; [+3]
       51 MOVE                             R4 R8
       52 JUMP                             ; [+1]
       53 MOVE                             R4 R5
       54 GETTABLEKS                       R6 R0 K14 ["_handles"]
       56 GETTABLE                         R5 R6 R1
       57 GETUPVAL                         R6 0
       58 CALL                             R6 0 1
       59 JUMPIFNOT                        R6 ; [+6]
       60 GETTABLEKS                       R6 R5 K15 ["IsView"]
       62 JUMPIFNOT                        R6 ; [+3]
       63 GETTABLEKS                       R6 R0 K16 ["_draggingLastGoodDelta"]
       65 ADD                              R4 R4 R6
       66 GETUPVAL                         R6 1
       67 GETTABLEKS                       R6 R6 K17 ["createElement"]
       69 GETUPVAL                         R7 2
       70 DUPTABLE                         R8 K29 [{["HandleCFrame"], ["Color"], ["StartAngle"], ["EndAngle"], ["Scale"], ["Hovered"] = False, ["RadiusOffset"], ["TickAngle"], ["DraggerContext"], ["AxisId"]}]
       71 GETTABLEKS                       R9 R5 K18 ["HandleCFrame"]
       73 SETTABLEKS                       R9 R8 K18 ["HandleCFrame"]
       75 GETUPVAL                         R10 0
       76 CALL                             R10 0 1
       77 JUMPIFNOT                        R10 ; [+3]
       78 GETTABLEKS                       R9 R5 K30 ["HighlightColor"]
       80 JUMP                             ; [+2]
       81 GETTABLEKS                       R9 R5 K19 ["Color"]
       83 SETTABLEKS                       R9 R8 K19 ["Color"]
       85 GETTABLEKS                       R10 R0 K16 ["_draggingLastGoodDelta"]
       87 SUB                              R9 R4 R10
       88 SETTABLEKS                       R9 R8 K20 ["StartAngle"]
       90 SETTABLEKS                       R4 R8 K21 ["EndAngle"]
       92 GETTABLEKS                       R9 R0 K31 ["_scale"]
       94 SETTABLEKS                       R9 R8 K22 ["Scale"]
       96 GETTABLEKS                       R9 R5 K25 ["RadiusOffset"]
       98 SETTABLEKS                       R9 R8 K25 ["RadiusOffset"]
      100 SETTABLEKS                       R2 R8 K26 ["TickAngle"]
      102 GETTABLEKS                       R9 R0 K0 ["_draggerContext"]
      104 SETTABLEKS                       R9 R8 K27 ["DraggerContext"]
      106 GETUPVAL                         R10 0
      107 CALL                             R10 0 1
      108 JUMPIFNOT                        R10 ; [+3]
      109 GETTABLEKS                       R9 R5 K28 ["AxisId"]
      111 JUMP                             ; [+1]
      112 LOADNIL                          R9
      113 SETTABLEKS                       R9 R8 K28 ["AxisId"]
      115 CALL                             R6 2 1
      116 SETTABLE                         R6 R3 R1
      117 GETUPVAL                         R6 0
      118 CALL                             R6 0 1
      119 JUMPIFNOT                        R6 ; [+19]
      120 GETUPVAL                         R6 1
      121 GETTABLEKS                       R6 R6 K17 ["createElement"]
      123 GETUPVAL                         R7 3
      124 DUPTABLE                         R8 K36 [{["AlwaysOnTop"] = True, ["Color3"], ["Render"]}]
      125 GETTABLEKS                       R9 R0 K0 ["_draggerContext"]
      127 NAMECALL                         R9 R9 K37 ["getGridColor"]
      129 CALL                             R9 1 1
      130 SETTABLEKS                       R9 R8 K34 ["Color3"]
      132 NEWCLOSURE                       R9 P0
      133 CAPTURE                          VAL R5
      134 SETTABLEKS                       R9 R8 K35 ["Render"]
      136 CALL                             R6 2 1
      137 SETTABLEKS                       R6 R3 K38 ["RotationAxisWfh"]
      139 GETUPVAL                         R6 0
      140 CALL                             R6 0 1
      141 JUMPIF                           R6 ; [+56]
      142 GETIMPORT                        R6 K40 [pairs]
      144 GETTABLEKS                       R7 R0 K14 ["_handles"]
      146 CALL                             R6 1 3
      147 FORGPREP_NEXT                    R6
      148 JUMPIFEQ                         R9 R1 ; [+47]
      150 GETUPVAL                         R12 4
      151 GETTABLE                         R11 R12 R9
      152 GETTABLEKS                       R11 R11 K41 ["Offset"]
      154 GETUPVAL                         R12 1
      155 GETTABLEKS                       R12 R12 K17 ["createElement"]
      157 GETUPVAL                         R13 2
      158 DUPTABLE                         R14 K43 [{["HandleCFrame"], ["Color"], ["Scale"], ["Thin"] = True, ["RadiusOffset"]}]
      159 GETTABLEKS                       R16 R0 K44 ["_boundingBox"]
      161 GETTABLEKS                       R16 R16 K45 ["CFrame"]
      163 MUL                              R15 R16 R11
      164 SETTABLEKS                       R15 R14 K18 ["HandleCFrame"]
      166 GETUPVAL                         R16 0
      167 CALL                             R16 0 1
      168 JUMPIFNOT                        R16 ; [+3]
      169 GETTABLEKS                       R15 R10 K19 ["Color"]
      171 JUMP                             ; [+6]
      172 GETUPVAL                         R15 5
      173 GETTABLEKS                       R15 R15 K46 ["makeDimmed"]
      175 GETTABLEKS                       R16 R10 K19 ["Color"]
      177 CALL                             R15 1 1
      178 SETTABLEKS                       R15 R14 K19 ["Color"]
      180 GETTABLEKS                       R15 R0 K31 ["_scale"]
      182 SETTABLEKS                       R15 R14 K22 ["Scale"]
      184 GETUPVAL                         R16 0
      185 CALL                             R16 0 1
      186 JUMPIFNOT                        R16 ; [+3]
      187 GETTABLEKS                       R15 R10 K25 ["RadiusOffset"]
      189 JUMP                             ; [+2]
      190 GETTABLEKS                       R15 R5 K25 ["RadiusOffset"]
      192 SETTABLEKS                       R15 R14 K25 ["RadiusOffset"]
      194 CALL                             R12 2 1
      195 SETTABLE                         R12 R3 R9
      196 FORGLOOP                         R6 2 ; [-49]
      198 GETUPVAL                         R6 1
      199 GETTABLEKS                       R6 R6 K47 ["createFragment"]
      201 MOVE                             R7 R3
      202 CALL                             R6 1 -1
      203 RETURN                           R6 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        5 NAMECALL                         R2 R2 K1 ["getDraggerShowWhileDragging"]
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 NEWTABLE                         R2 0 0
       12 GETTABLEKS                       R4 R0 K2 ["_ballHandles"]
       14 GETTABLE                         R3 R4 R1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K3 ["createElement"]
       18 GETUPVAL                         R5 2
       19 DUPTABLE                         R6 K9 [{["HandleCFrame"], ["Color"], ["Scale"], ["Hovered"] = True}]
       20 GETTABLEKS                       R7 R0 K10 ["_handleCFrame"]
       22 SETTABLEKS                       R7 R6 K4 ["HandleCFrame"]
       24 GETUPVAL                         R8 0
       25 CALL                             R8 0 1
       26 JUMPIFNOT                        R8 ; [+3]
       27 GETTABLEKS                       R7 R3 K11 ["HighlightColor"]
       29 JUMP                             ; [+2]
       30 GETTABLEKS                       R7 R3 K5 ["Color"]
       32 SETTABLEKS                       R7 R6 K5 ["Color"]
       34 GETTABLEKS                       R7 R0 K12 ["_scale"]
       36 SETTABLEKS                       R7 R6 K6 ["Scale"]
       38 CALL                             R4 2 1
       39 SETTABLE                         R4 R2 R1
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R4 R4 K13 ["createFragment"]
       43 MOVE                             R5 R2
       44 CALL                             R4 1 -1
       45 RETURN                           R4 -1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createFragment"]
        3 DUPTABLE                         R3 K4 [{"Handles", "HotkeyHelp", "ImplementationRendered"}]
        4 MOVE                             R6 R1
        5 NAMECALL                         R4 R0 K5 ["_renderDraggingHandles"]
        7 CALL                             R4 2 1
        8 SETTABLEKS                       R4 R3 K1 ["Handles"]
       10 NAMECALL                         R4 R0 K6 ["_renderHotkeyHelp"]
       12 CALL                             R4 1 1
       13 SETTABLEKS                       R4 R3 K2 ["HotkeyHelp"]
       15 GETTABLEKS                       R4 R0 K7 ["_implementation"]
       17 GETTABLEKS                       R6 R0 K8 ["_lastGlobalTransformForRender"]
       19 NAMECALL                         R4 R4 K9 ["render"]
       21 CALL                             R4 2 1
       22 SETTABLEKS                       R4 R3 K3 ["ImplementationRendered"]
       24 CALL                             R2 1 -1
       25 RETURN                           R2 -1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createFragment"]
        3 DUPTABLE                         R3 K4 [{"Handles", "HotkeyHelp", "ImplementationRendered"}]
        4 MOVE                             R6 R1
        5 NAMECALL                         R4 R0 K5 ["_renderDraggingBallHandles"]
        7 CALL                             R4 2 1
        8 SETTABLEKS                       R4 R3 K1 ["Handles"]
       10 NAMECALL                         R4 R0 K6 ["_renderHotkeyHelp"]
       12 CALL                             R4 1 1
       13 SETTABLEKS                       R4 R3 K2 ["HotkeyHelp"]
       15 GETTABLEKS                       R4 R0 K7 ["_implementation"]
       17 GETTABLEKS                       R6 R0 K8 ["_lastGlobalTransformForRender"]
       19 NAMECALL                         R4 R4 K9 ["render"]
       21 CALL                             R4 2 1
       22 SETTABLEKS                       R4 R3 K3 ["ImplementationRendered"]
       24 CALL                             R2 1 -1
       25 RETURN                           R2 -1

PROTO_23:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 GETTABLEKS                       R4 R0 K2 ["_handles"]
        6 CALL                             R3 1 3
        7 FORGPREP_NEXT                    R3
        8 JUMPIFEQ                         R6 R1 ; [+2]
       10 LOADB                            R8 0 +1
       11 LOADB                            R8 1
       12 GETTABLEKS                       R9 R7 K3 ["Color"]
       14 GETUPVAL                         R10 0
       15 CALL                             R10 0 1
       16 JUMPIFNOT                        R10 ; [+4]
       17 JUMPIFNOT                        R8 ; [+10]
       18 GETTABLEKS                       R9 R7 K4 ["HighlightColor"]
       20 JUMP                             ; [+7]
       21 JUMPIF                           R8 ; [+6]
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R10 R10 K5 ["makeDimmed"]
       25 MOVE                             R11 R9
       26 CALL                             R10 1 1
       27 MOVE                             R9 R10
       28 LOADNIL                          R10
       29 JUMPIFNOT                        R8 ; [+4]
       30 NAMECALL                         R11 R0 K6 ["_getTickAngle"]
       32 CALL                             R11 1 1
       33 MOVE                             R10 R11
       34 GETUPVAL                         R12 0
       35 CALL                             R12 0 1
       36 JUMPIFNOT                        R12 ; [+8]
       37 GETTABLEKS                       R13 R7 K7 ["HandleCFrame"]
       39 GETTABLEKS                       R14 R7 K8 ["IsView"]
       41 NAMECALL                         R11 R0 K9 ["_orient"]
       43 CALL                             R11 3 1
       44 JUMP                             ; [+2]
       45 GETTABLEKS                       R11 R7 K7 ["HandleCFrame"]
       47 GETUPVAL                         R12 2
       48 GETTABLEKS                       R12 R12 K10 ["createElement"]
       50 GETUPVAL                         R13 3
       51 DUPTABLE                         R14 K17 [{"HandleCFrame", "Color", "Scale", "Hovered", "RadiusOffset", "TickAngle", "ArcAngle", "SlideAngle"}]
       52 SETTABLEKS                       R11 R14 K7 ["HandleCFrame"]
       54 SETTABLEKS                       R9 R14 K3 ["Color"]
       56 GETTABLEKS                       R15 R0 K18 ["_scale"]
       58 SETTABLEKS                       R15 R14 K11 ["Scale"]
       60 SETTABLEKS                       R8 R14 K12 ["Hovered"]
       62 GETTABLEKS                       R15 R7 K13 ["RadiusOffset"]
       64 SETTABLEKS                       R15 R14 K13 ["RadiusOffset"]
       66 SETTABLEKS                       R10 R14 K14 ["TickAngle"]
       68 GETUPVAL                         R16 0
       69 CALL                             R16 0 1
       70 JUMPIFNOT                        R16 ; [+7]
       71 GETTABLEKS                       R16 R7 K8 ["IsView"]
       73 JUMPIFNOT                        R16 ; [+2]
       74 LOADN                            R15 360
       75 JUMP                             ; [+3]
       76 LOADN                            R15 180
       77 JUMP                             ; [+1]
       78 LOADNIL                          R15
       79 SETTABLEKS                       R15 R14 K15 ["ArcAngle"]
       81 GETUPVAL                         R16 0
       82 CALL                             R16 0 1
       83 JUMPIFNOT                        R16 ; [+8]
       84 GETTABLEKS                       R17 R7 K7 ["HandleCFrame"]
       86 GETTABLEKS                       R18 R7 K8 ["IsView"]
       88 NAMECALL                         R15 R0 K19 ["_slideAngle"]
       90 CALL                             R15 3 1
       91 JUMP                             ; [+1]
       92 LOADNIL                          R15
       93 SETTABLEKS                       R15 R14 K16 ["SlideAngle"]
       95 CALL                             R12 2 1
       96 SETTABLE                         R12 R2 R6
       97 FORGLOOP                         R3 2 ; [-90]
       99 GETUPVAL                         R3 0
      100 CALL                             R3 0 1
      101 JUMPIFNOT                        R3 ; [+42]
      102 GETIMPORT                        R3 K1 [pairs]
      104 GETTABLEKS                       R4 R0 K20 ["_ballHandles"]
      106 CALL                             R3 1 3
      107 FORGPREP_NEXT                    R3
      108 JUMPIFEQ                         R6 R1 ; [+2]
      110 LOADB                            R8 0 +1
      111 LOADB                            R8 1
      112 JUMPIFNOT                        R8 ; [+3]
      113 GETTABLEKS                       R9 R7 K4 ["HighlightColor"]
      115 JUMP                             ; [+2]
      116 GETTABLEKS                       R9 R7 K3 ["Color"]
      118 GETUPVAL                         R10 2
      119 GETTABLEKS                       R10 R10 K10 ["createElement"]
      121 GETUPVAL                         R11 4
      122 DUPTABLE                         R12 K21 [{"HandleCFrame", "Color", "Scale", "Hovered"}]
      123 GETTABLEKS                       R15 R7 K7 ["HandleCFrame"]
      125 GETTABLEKS                       R16 R7 K8 ["IsView"]
      127 NAMECALL                         R13 R0 K9 ["_orient"]
      129 CALL                             R13 3 1
      130 SETTABLEKS                       R13 R12 K7 ["HandleCFrame"]
      132 SETTABLEKS                       R9 R12 K3 ["Color"]
      134 GETTABLEKS                       R13 R0 K18 ["_scale"]
      136 SETTABLEKS                       R13 R12 K11 ["Scale"]
      138 SETTABLEKS                       R8 R12 K12 ["Hovered"]
      140 CALL                             R10 2 1
      141 SETTABLE                         R10 R2 R6
      142 FORGLOOP                         R3 2 ; [-35]
      144 GETUPVAL                         R3 2
      145 GETTABLEKS                       R3 R3 K22 ["createFragment"]
      147 MOVE                             R4 R2
      148 CALL                             R3 1 -1
      149 RETURN                           R3 -1

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["_draggingHandleId"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R3 R0 K1 ["_handles"]
        5 GETTABLEKS                       R4 R0 K0 ["_draggingHandleId"]
        7 GETTABLE                         R2 R3 R4
        8 GETUPVAL                         R4 0
        9 CALL                             R4 0 1
       10 JUMPIFNOT                        R4 ; [+9]
       11 GETTABLEKS                       R3 R0 K0 ["_draggingHandleId"]
       13 JUMPIFNOT                        R3 ; [+7]
       14 GETTABLEKS                       R4 R0 K2 ["_ballHandles"]
       16 GETTABLEKS                       R5 R0 K0 ["_draggingHandleId"]
       18 GETTABLE                         R3 R4 R5
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 JUMPIFNOT                        R2 ; [+6]
       22 GETTABLEKS                       R6 R0 K0 ["_draggingHandleId"]
       24 NAMECALL                         R4 R0 K3 ["_renderDragging"]
       26 CALL                             R4 2 -1
       27 RETURN                           R4 -1
       28 JUMPIFNOT                        R3 ; [+6]
       29 GETTABLEKS                       R6 R0 K0 ["_draggingHandleId"]
       31 NAMECALL                         R4 R0 K4 ["_renderDraggingBall"]
       33 CALL                             R4 2 -1
       34 RETURN                           R4 -1
       35 MOVE                             R6 R1
       36 NAMECALL                         R4 R0 K5 ["_renderHovering"]
       38 CALL                             R4 2 -1
       39 RETURN                           R4 -1

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_props"]
        2 GETTABLEKS                       R1 R1 K1 ["ShowBoundingBox"]
        4 JUMPIFNOT                        R1 ; [+49]
        5 GETTABLEKS                       R2 R0 K2 ["_selectionWrapper"]
        7 NAMECALL                         R2 R2 K3 ["get"]
        9 CALL                             R2 1 1
       10 LENGTH                           R1 R2
       11 LOADN                            R2 1
       12 JUMPIFNOTLT                      R2 R1 ; [+41]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K4 ["createElement"]
       17 GETUPVAL                         R2 1
       18 DUPTABLE                         R3 K10 [{"CFrame", "Size", "Color", "LineThickness", "Container"}]
       19 GETTABLEKS                       R4 R0 K11 ["_boundingBox"]
       21 GETTABLEKS                       R4 R4 K5 ["CFrame"]
       23 SETTABLEKS                       R4 R3 K5 ["CFrame"]
       25 GETTABLEKS                       R4 R0 K11 ["_boundingBox"]
       27 GETTABLEKS                       R4 R4 K6 ["Size"]
       29 SETTABLEKS                       R4 R3 K6 ["Size"]
       31 GETTABLEKS                       R4 R0 K12 ["_draggerContext"]
       33 NAMECALL                         R4 R4 K13 ["getSelectionBoxColor"]
       35 CALL                             R4 1 1
       36 SETTABLEKS                       R4 R3 K7 ["Color"]
       38 GETTABLEKS                       R4 R0 K12 ["_draggerContext"]
       40 NAMECALL                         R4 R4 K14 ["getHoverThickness"]
       42 CALL                             R4 1 1
       43 SETTABLEKS                       R4 R3 K8 ["LineThickness"]
       45 GETTABLEKS                       R4 R0 K12 ["_draggerContext"]
       47 NAMECALL                         R4 R4 K15 ["getGuiParent"]
       49 CALL                             R4 1 1
       50 SETTABLEKS                       R4 R3 K9 ["Container"]
       52 CALL                             R1 2 -1
       53 RETURN                           R1 -1
       54 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_props"]
        2 GETTABLEKS                       R1 R1 K1 ["Summonable"]
        4 JUMPIFNOT                        R1 ; [+110]
        5 NEWTABLE                         R1 4 0
        7 GETTABLEKS                       R2 R0 K2 ["_summonBasisOffset"]
        9 JUMPIFNOT                        R2 ; [+30]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["createElement"]
       13 GETUPVAL                         R3 1
       14 DUPTABLE                         R4 K7 [{"DraggerContext", "CFrame", "Dragging"}]
       15 GETTABLEKS                       R5 R0 K8 ["_draggerContext"]
       17 SETTABLEKS                       R5 R4 K4 ["DraggerContext"]
       19 GETTABLEKS                       R6 R0 K9 ["_boundingBox"]
       21 GETTABLEKS                       R6 R6 K5 ["CFrame"]
       23 NAMECALL                         R7 R0 K10 ["_getBasisOffset"]
       25 CALL                             R7 1 1
       26 MUL                              R5 R6 R7
       27 SETTABLEKS                       R5 R4 K5 ["CFrame"]
       29 GETTABLEKS                       R6 R0 K11 ["_draggingHandleId"]
       31 JUMPIFNOTEQKNIL                  R6 ; [+2]
       33 LOADB                            R5 0 +1
       34 LOADB                            R5 1
       35 SETTABLEKS                       R5 R4 K6 ["Dragging"]
       37 CALL                             R2 2 1
       38 SETTABLEKS                       R2 R1 K12 ["SummonSnap"]
       40 GETTABLEKS                       R2 R0 K11 ["_draggingHandleId"]
       42 JUMPIF                           R2 ; [+66]
       43 GETTABLEKS                       R2 R0 K2 ["_summonBasisOffset"]
       45 JUMPIFNOT                        R2 ; [+13]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K3 ["createElement"]
       49 GETUPVAL                         R3 2
       50 DUPTABLE                         R4 K13 [{"DraggerContext"}]
       51 GETTABLEKS                       R5 R0 K8 ["_draggerContext"]
       53 SETTABLEKS                       R5 R4 K4 ["DraggerContext"]
       55 CALL                             R2 2 1
       56 SETTABLEKS                       R2 R1 K14 ["SummonHandlesHider"]
       58 JUMP                             ; [+50]
       59 GETUPVAL                         R2 2
       60 GETTABLEKS                       R2 R2 K15 ["hasSeenEnough"]
       62 GETTABLEKS                       R3 R0 K8 ["_draggerContext"]
       64 CALL                             R2 1 1
       65 JUMPIF                           R2 ; [+43]
       66 GETTABLEKS                       R3 R0 K9 ["_boundingBox"]
       68 GETTABLEKS                       R3 R3 K5 ["CFrame"]
       70 GETTABLEKS                       R4 R0 K16 ["_basisOffset"]
       72 MUL                              R2 R3 R4
       73 GETTABLEKS                       R2 R2 K17 ["Position"]
       75 GETTABLEKS                       R3 R0 K8 ["_draggerContext"]
       77 MOVE                             R5 R2
       78 NAMECALL                         R3 R3 K18 ["worldToViewportPoint"]
       80 CALL                             R3 2 2
       81 GETTABLEKS                       R5 R3 K19 ["Z"]
       83 LOADN                            R6 0
       84 JUMPIFNOTLT                      R6 R5 ; [+24]
       86 GETUPVAL                         R5 0
       87 GETTABLEKS                       R5 R5 K3 ["createElement"]
       89 GETUPVAL                         R6 3
       90 DUPTABLE                         R7 K21 [{"Position", "InView", "DraggerContext"}]
       91 GETIMPORT                        R8 K24 [Vector2.new]
       93 GETTABLEKS                       R9 R3 K25 ["X"]
       95 GETTABLEKS                       R10 R3 K26 ["Y"]
       97 CALL                             R8 2 1
       98 SETTABLEKS                       R8 R7 K17 ["Position"]
      100 SETTABLEKS                       R4 R7 K20 ["InView"]
      102 GETTABLEKS                       R8 R0 K8 ["_draggerContext"]
      104 SETTABLEKS                       R8 R7 K4 ["DraggerContext"]
      106 CALL                             R5 2 1
      107 SETTABLEKS                       R5 R1 K27 ["SummonHandlesNote"]
      109 GETUPVAL                         R2 0
      110 GETTABLEKS                       R2 R2 K28 ["createFragment"]
      112 MOVE                             R3 R1
      113 CALL                             R2 1 -1
      114 RETURN                           R2 -1
      115 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 LOADK                            R3 K1 ["Folder"]
        4 NEWTABLE                         R4 0 0
        6 DUPTABLE                         R5 K5 [{"Handles", "BoundingBox", "Summon"}]
        7 MOVE                             R8 R1
        8 NAMECALL                         R6 R0 K6 ["_renderDragOrHover"]
       10 CALL                             R6 2 1
       11 SETTABLEKS                       R6 R5 K2 ["Handles"]
       13 NAMECALL                         R6 R0 K7 ["_renderBoundingBox"]
       15 CALL                             R6 1 1
       16 SETTABLEKS                       R6 R5 K3 ["BoundingBox"]
       18 NAMECALL                         R6 R0 K8 ["_renderSummon"]
       20 CALL                             R6 1 1
       21 SETTABLEKS                       R6 R5 K4 ["Summon"]
       23 CALL                             R2 3 -1
       24 RETURN                           R2 -1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R0 K0 ["renderNEW"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1
        8 NEWTABLE                         R2 8 0
       10 GETTABLEKS                       R3 R0 K1 ["_draggerContext"]
       12 NAMECALL                         R3 R3 K2 ["getRotateIncrement"]
       14 CALL                             R3 1 1
       15 LOADNIL                          R4
       16 LOADN                            R5 5
       17 JUMPIFNOTLE                      R5 R3 ; [+7]
       19 FASTCALL1                        MATH_RAD R3 ; [+3]
       20 MOVE                             R6 R3
       21 GETIMPORT                        R5 K5 [math.rad]
       23 CALL                             R5 1 1
       24 MOVE                             R4 R5
       25 GETTABLEKS                       R5 R0 K6 ["_draggingHandleId"]
       27 JUMPIFNOT                        R5 ; [+127]
       28 GETTABLEKS                       R6 R0 K7 ["_handles"]
       30 GETTABLEKS                       R7 R0 K6 ["_draggingHandleId"]
       32 GETTABLE                         R5 R6 R7
       33 JUMPIFNOT                        R5 ; [+121]
       34 GETTABLEKS                       R6 R0 K7 ["_handles"]
       36 GETTABLEKS                       R7 R0 K6 ["_draggingHandleId"]
       38 GETTABLE                         R5 R6 R7
       39 GETTABLEKS                       R6 R0 K6 ["_draggingHandleId"]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K8 ["createElement"]
       44 GETUPVAL                         R8 2
       45 DUPTABLE                         R9 K19 [{["HandleCFrame"], ["Color"], ["StartAngle"], ["EndAngle"], ["Scale"], ["Hovered"] = False, ["RadiusOffset"], ["TickAngle"], ["DraggerContext"]}]
       46 GETTABLEKS                       R10 R5 K9 ["HandleCFrame"]
       48 SETTABLEKS                       R10 R9 K9 ["HandleCFrame"]
       50 GETUPVAL                         R11 3
       51 CALL                             R11 0 1
       52 JUMPIFNOT                        R11 ; [+3]
       53 GETTABLEKS                       R10 R5 K20 ["HighlightColor"]
       55 JUMP                             ; [+2]
       56 GETTABLEKS                       R10 R5 K10 ["Color"]
       58 SETTABLEKS                       R10 R9 K10 ["Color"]
       60 GETTABLEKS                       R11 R0 K21 ["_startAngle"]
       62 GETTABLEKS                       R12 R0 K22 ["_draggingLastGoodDelta"]
       64 SUB                              R10 R11 R12
       65 SETTABLEKS                       R10 R9 K11 ["StartAngle"]
       67 GETTABLEKS                       R10 R0 K21 ["_startAngle"]
       69 SETTABLEKS                       R10 R9 K12 ["EndAngle"]
       71 GETTABLEKS                       R10 R0 K23 ["_scale"]
       73 SETTABLEKS                       R10 R9 K13 ["Scale"]
       75 GETTABLEKS                       R10 R5 K16 ["RadiusOffset"]
       77 SETTABLEKS                       R10 R9 K16 ["RadiusOffset"]
       79 SETTABLEKS                       R4 R9 K17 ["TickAngle"]
       81 GETTABLEKS                       R10 R0 K1 ["_draggerContext"]
       83 SETTABLEKS                       R10 R9 K18 ["DraggerContext"]
       85 CALL                             R7 2 1
       86 SETTABLE                         R7 R2 R6
       87 GETIMPORT                        R6 K25 [pairs]
       89 GETTABLEKS                       R7 R0 K7 ["_handles"]
       91 CALL                             R6 1 3
       92 FORGPREP_NEXT                    R6
       93 GETTABLEKS                       R11 R0 K6 ["_draggingHandleId"]
       95 JUMPIFEQ                         R9 R11 ; [+47]
       97 GETUPVAL                         R12 4
       98 GETTABLE                         R11 R12 R9
       99 GETTABLEKS                       R11 R11 K26 ["Offset"]
      101 GETUPVAL                         R12 1
      102 GETTABLEKS                       R12 R12 K8 ["createElement"]
      104 GETUPVAL                         R13 2
      105 DUPTABLE                         R14 K29 [{["HandleCFrame"], ["Color"], ["Scale"], ["Thin"] = True, ["RadiusOffset"]}]
      106 GETTABLEKS                       R16 R0 K30 ["_boundingBox"]
      108 GETTABLEKS                       R16 R16 K31 ["CFrame"]
      110 MUL                              R15 R16 R11
      111 SETTABLEKS                       R15 R14 K9 ["HandleCFrame"]
      113 GETUPVAL                         R16 3
      114 CALL                             R16 0 1
      115 JUMPIFNOT                        R16 ; [+3]
      116 GETTABLEKS                       R15 R10 K10 ["Color"]
      118 JUMP                             ; [+6]
      119 GETUPVAL                         R15 5
      120 GETTABLEKS                       R15 R15 K32 ["makeDimmed"]
      122 GETTABLEKS                       R16 R10 K10 ["Color"]
      124 CALL                             R15 1 1
      125 SETTABLEKS                       R15 R14 K10 ["Color"]
      127 GETTABLEKS                       R15 R0 K23 ["_scale"]
      129 SETTABLEKS                       R15 R14 K13 ["Scale"]
      131 GETUPVAL                         R16 3
      132 CALL                             R16 0 1
      133 JUMPIFNOT                        R16 ; [+3]
      134 GETTABLEKS                       R15 R10 K16 ["RadiusOffset"]
      136 JUMP                             ; [+2]
      137 GETTABLEKS                       R15 R5 K16 ["RadiusOffset"]
      139 SETTABLEKS                       R15 R14 K16 ["RadiusOffset"]
      141 CALL                             R12 2 1
      142 SETTABLE                         R12 R2 R9
      143 FORGLOOP                         R6 2 ; [-51]
      145 GETTABLEKS                       R6 R0 K33 ["_implementation"]
      147 GETTABLEKS                       R8 R0 K34 ["_lastGlobalTransformForRender"]
      149 NAMECALL                         R6 R6 K35 ["render"]
      151 CALL                             R6 2 1
      152 SETTABLEKS                       R6 R2 K36 ["ImplementationRendered"]
      154 JUMP                             ; [+56]
      155 GETIMPORT                        R5 K25 [pairs]
      157 GETTABLEKS                       R6 R0 K7 ["_handles"]
      159 CALL                             R5 1 3
      160 FORGPREP_NEXT                    R5
      161 JUMPIFEQ                         R8 R1 ; [+2]
      163 LOADB                            R10 0 +1
      164 LOADB                            R10 1
      165 GETTABLEKS                       R11 R9 K10 ["Color"]
      167 GETUPVAL                         R12 3
      168 CALL                             R12 0 1
      169 JUMPIFNOT                        R12 ; [+4]
      170 JUMPIFNOT                        R10 ; [+10]
      171 GETTABLEKS                       R11 R9 K20 ["HighlightColor"]
      173 JUMP                             ; [+7]
      174 JUMPIF                           R10 ; [+6]
      175 GETUPVAL                         R12 5
      176 GETTABLEKS                       R12 R12 K32 ["makeDimmed"]
      178 MOVE                             R13 R11
      179 CALL                             R12 1 1
      180 MOVE                             R11 R12
      181 LOADNIL                          R12
      182 JUMPIFNOT                        R10 ; [+1]
      183 MOVE                             R12 R4
      184 GETUPVAL                         R13 1
      185 GETTABLEKS                       R13 R13 K8 ["createElement"]
      187 GETUPVAL                         R14 2
      188 DUPTABLE                         R15 K37 [{"HandleCFrame", "Color", "Scale", "Hovered", "RadiusOffset", "TickAngle"}]
      189 GETTABLEKS                       R16 R9 K9 ["HandleCFrame"]
      191 SETTABLEKS                       R16 R15 K9 ["HandleCFrame"]
      193 SETTABLEKS                       R11 R15 K10 ["Color"]
      195 GETTABLEKS                       R16 R0 K23 ["_scale"]
      197 SETTABLEKS                       R16 R15 K13 ["Scale"]
      199 SETTABLEKS                       R10 R15 K14 ["Hovered"]
      201 GETTABLEKS                       R16 R9 K16 ["RadiusOffset"]
      203 SETTABLEKS                       R16 R15 K16 ["RadiusOffset"]
      205 SETTABLEKS                       R12 R15 K17 ["TickAngle"]
      207 CALL                             R13 2 1
      208 SETTABLE                         R13 R2 R8
      209 FORGLOOP                         R5 2 ; [-49]
      211 GETTABLEKS                       R5 R0 K38 ["_props"]
      213 GETTABLEKS                       R5 R5 K39 ["ShowBoundingBox"]
      215 JUMPIFNOT                        R5 ; [+50]
      216 GETTABLEKS                       R6 R0 K40 ["_selectionWrapper"]
      218 NAMECALL                         R6 R6 K41 ["get"]
      220 CALL                             R6 1 1
      221 LENGTH                           R5 R6
      222 LOADN                            R6 1
      223 JUMPIFNOTLT                      R6 R5 ; [+42]
      225 GETUPVAL                         R5 1
      226 GETTABLEKS                       R5 R5 K8 ["createElement"]
      228 GETUPVAL                         R6 6
      229 DUPTABLE                         R7 K45 [{"CFrame", "Size", "Color", "LineThickness", "Container"}]
      230 GETTABLEKS                       R8 R0 K30 ["_boundingBox"]
      232 GETTABLEKS                       R8 R8 K31 ["CFrame"]
      234 SETTABLEKS                       R8 R7 K31 ["CFrame"]
      236 GETTABLEKS                       R8 R0 K30 ["_boundingBox"]
      238 GETTABLEKS                       R8 R8 K42 ["Size"]
      240 SETTABLEKS                       R8 R7 K42 ["Size"]
      242 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      244 NAMECALL                         R8 R8 K46 ["getSelectionBoxColor"]
      246 CALL                             R8 1 1
      247 SETTABLEKS                       R8 R7 K10 ["Color"]
      249 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      251 NAMECALL                         R8 R8 K47 ["getHoverThickness"]
      253 CALL                             R8 1 1
      254 SETTABLEKS                       R8 R7 K43 ["LineThickness"]
      256 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      258 NAMECALL                         R8 R8 K48 ["getGuiParent"]
      260 CALL                             R8 1 1
      261 SETTABLEKS                       R8 R7 K44 ["Container"]
      263 CALL                             R5 2 1
      264 SETTABLEKS                       R5 R2 K49 ["SelectionBoundingBox"]
      266 GETTABLEKS                       R5 R0 K38 ["_props"]
      268 GETTABLEKS                       R5 R5 K50 ["Summonable"]
      270 JUMPIFNOT                        R5 ; [+164]
      271 GETTABLEKS                       R5 R0 K51 ["_summonBasisOffset"]
      273 JUMPIFNOT                        R5 ; [+92]
      274 GETTABLEKS                       R5 R0 K52 ["_summonWasSnapped"]
      276 JUMPIFNOT                        R5 ; [+49]
      277 GETUPVAL                         R5 1
      278 GETTABLEKS                       R5 R5 K8 ["createElement"]
      280 LOADK                            R6 K53 ["BoxHandleAdornment"]
      281 DUPTABLE                         R7 K60 [{["Adornee"], ["Color3"], ["CFrame"], ["Size"], ["AlwaysOnTop"], ["Transparency"], ["ZIndex"] = 0}]
      282 GETUPVAL                         R8 7
      283 GETTABLEKS                       R8 R8 K61 ["Terrain"]
      285 SETTABLEKS                       R8 R7 K54 ["Adornee"]
      287 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      289 NAMECALL                         R8 R8 K62 ["getGeometrySnapColor"]
      291 CALL                             R8 1 1
      292 SETTABLEKS                       R8 R7 K55 ["Color3"]
      294 GETTABLEKS                       R9 R0 K30 ["_boundingBox"]
      296 GETTABLEKS                       R9 R9 K31 ["CFrame"]
      298 GETTABLEKS                       R10 R0 K51 ["_summonBasisOffset"]
      300 MUL                              R8 R9 R10
      301 SETTABLEKS                       R8 R7 K31 ["CFrame"]
      303 LOADK                            R9 K63 [{0.5, 0.5, 0.5}]
      304 GETTABLEKS                       R10 R0 K23 ["_scale"]
      306 MUL                              R8 R9 R10
      307 SETTABLEKS                       R8 R7 K42 ["Size"]
      309 GETTABLEKS                       R9 R0 K64 ["_summonWasSnappedToSurface"]
      311 NOT                              R8 R9
      312 SETTABLEKS                       R8 R7 K56 ["AlwaysOnTop"]
      314 GETTABLEKS                       R9 R0 K64 ["_summonWasSnappedToSurface"]
      316 JUMPIFNOT                        R9 ; [+2]
      317 LOADN                            R8 0
      318 JUMP                             ; [+1]
      319 LOADK                            R8 K65 [0.5]
      320 SETTABLEKS                       R8 R7 K57 ["Transparency"]
      322 CALL                             R5 2 1
      323 SETTABLEKS                       R5 R2 K66 ["SummonSnap"]
      325 JUMP                             ; [+40]
      326 GETUPVAL                         R5 1
      327 GETTABLEKS                       R5 R5 K8 ["createElement"]
      329 GETUPVAL                         R6 8
      330 DUPTABLE                         R7 K68 [{"DraggerContext", "CFrame", "IsActive"}]
      331 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      333 SETTABLEKS                       R8 R7 K18 ["DraggerContext"]
      335 GETTABLEKS                       R9 R0 K30 ["_boundingBox"]
      337 GETTABLEKS                       R9 R9 K31 ["CFrame"]
      339 NAMECALL                         R10 R0 K69 ["_getBasisOffset"]
      341 CALL                             R10 1 1
      342 MUL                              R8 R9 R10
      343 SETTABLEKS                       R8 R7 K31 ["CFrame"]
      345 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      347 NAMECALL                         R8 R8 K70 ["shouldShowActiveInstanceHighlight"]
      349 CALL                             R8 1 1
      350 JUMPIFNOT                        R8 ; [+10]
      351 GETTABLEKS                       R10 R0 K40 ["_selectionWrapper"]
      353 NAMECALL                         R10 R10 K41 ["get"]
      355 CALL                             R10 1 1
      356 LENGTH                           R9 R10
      357 JUMPIFEQKN                       R9 K71 [1] ; [+2]
      359 LOADB                            R8 0 +1
      360 LOADB                            R8 1
      361 SETTABLEKS                       R8 R7 K67 ["IsActive"]
      363 CALL                             R5 2 1
      364 SETTABLEKS                       R5 R2 K72 ["SummonedPivot"]
      366 GETTABLEKS                       R5 R0 K6 ["_draggingHandleId"]
      368 JUMPIF                           R5 ; [+66]
      369 GETTABLEKS                       R5 R0 K51 ["_summonBasisOffset"]
      371 JUMPIFNOT                        R5 ; [+13]
      372 GETUPVAL                         R5 1
      373 GETTABLEKS                       R5 R5 K8 ["createElement"]
      375 GETUPVAL                         R6 9
      376 DUPTABLE                         R7 K73 [{"DraggerContext"}]
      377 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      379 SETTABLEKS                       R8 R7 K18 ["DraggerContext"]
      381 CALL                             R5 2 1
      382 SETTABLEKS                       R5 R2 K74 ["SummonHandlesHider"]
      384 JUMP                             ; [+50]
      385 GETUPVAL                         R5 9
      386 GETTABLEKS                       R5 R5 K75 ["hasSeenEnough"]
      388 GETTABLEKS                       R6 R0 K1 ["_draggerContext"]
      390 CALL                             R5 1 1
      391 JUMPIF                           R5 ; [+43]
      392 GETTABLEKS                       R6 R0 K30 ["_boundingBox"]
      394 GETTABLEKS                       R6 R6 K31 ["CFrame"]
      396 GETTABLEKS                       R7 R0 K76 ["_basisOffset"]
      398 MUL                              R5 R6 R7
      399 GETTABLEKS                       R5 R5 K77 ["Position"]
      401 GETTABLEKS                       R6 R0 K1 ["_draggerContext"]
      403 MOVE                             R8 R5
      404 NAMECALL                         R6 R6 K78 ["worldToViewportPoint"]
      406 CALL                             R6 2 2
      407 GETTABLEKS                       R8 R6 K79 ["Z"]
      409 LOADN                            R9 0
      410 JUMPIFNOTLT                      R9 R8 ; [+24]
      412 GETUPVAL                         R8 1
      413 GETTABLEKS                       R8 R8 K8 ["createElement"]
      415 GETUPVAL                         R9 10
      416 DUPTABLE                         R10 K81 [{"Position", "InView", "DraggerContext"}]
      417 GETIMPORT                        R11 K84 [Vector2.new]
      419 GETTABLEKS                       R12 R6 K85 ["X"]
      421 GETTABLEKS                       R13 R6 K86 ["Y"]
      423 CALL                             R11 2 1
      424 SETTABLEKS                       R11 R10 K77 ["Position"]
      426 SETTABLEKS                       R7 R10 K80 ["InView"]
      428 GETTABLEKS                       R11 R0 K1 ["_draggerContext"]
      430 SETTABLEKS                       R11 R10 K18 ["DraggerContext"]
      432 CALL                             R8 2 1
      433 SETTABLEKS                       R8 R2 K87 ["SummonHandlesNote"]
      435 GETUPVAL                         R5 1
      436 GETTABLEKS                       R5 R5 K8 ["createElement"]
      438 LOADK                            R6 K88 ["Folder"]
      439 NEWTABLE                         R7 0 0
      441 MOVE                             R8 R2
      442 CALL                             R5 3 -1
      443 RETURN                           R5 -1

PROTO_29:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+10]
        3 GETTABLEKS                       R4 R0 K0 ["_handles"]
        5 GETTABLE                         R3 R4 R2
        6 JUMPIF                           R3 ; [+11]
        7 GETTABLEKS                       R4 R0 K1 ["_ballHandles"]
        9 GETTABLE                         R3 R4 R2
       10 JUMPIF                           R3 ; [+7]
       11 RETURN                           R0 0
       12 JUMP                             ; [+5]
       13 GETTABLEKS                       R4 R0 K0 ["_handles"]
       15 GETTABLE                         R3 R4 R2
       16 JUMPIF                           R3 ; [+1]
       17 RETURN                           R0 0
       18 LOADNIL                          R3
       19 LOADNIL                          R4
       20 GETUPVAL                         R5 0
       21 CALL                             R5 0 1
       22 JUMPIFNOT                        R5 ; [+4]
       23 GETTABLEKS                       R6 R0 K0 ["_handles"]
       25 GETTABLE                         R5 R6 R2
       26 JUMPIFNOT                        R5 ; [+14]
       27 GETTABLEKS                       R6 R0 K0 ["_handles"]
       29 GETTABLE                         R5 R6 R2
       30 GETTABLEKS                       R3 R5 K2 ["HandleCFrame"]
       32 GETUPVAL                         R5 1
       33 MOVE                             R6 R3
       34 GETTABLEKS                       R7 R1 K3 ["Unit"]
       36 CALL                             R5 2 1
       37 MOVE                             R4 R5
       38 JUMPIF                           R4 ; [+27]
       39 RETURN                           R0 0
       40 JUMP                             ; [+25]
       41 GETTABLEKS                       R8 R0 K1 ["_ballHandles"]
       43 GETTABLE                         R7 R8 R2
       44 GETTABLEKS                       R7 R7 K2 ["HandleCFrame"]
       46 LOADB                            R8 1
       47 LOADB                            R9 0
       48 NAMECALL                         R5 R0 K4 ["_orient"]
       50 CALL                             R5 4 1
       51 MOVE                             R3 R5
       52 GETUPVAL                         R5 2
       53 GETTABLEKS                       R5 R5 K5 ["_spherePoint"]
       55 MOVE                             R6 R3
       56 GETTABLEKS                       R7 R0 K6 ["_scale"]
       58 MOVE                             R8 R1
       59 CALL                             R5 3 1
       60 SETTABLEKS                       R5 R0 K7 ["_spherePointFrom"]
       62 GETTABLEKS                       R5 R0 K7 ["_spherePointFrom"]
       64 SETTABLEKS                       R5 R0 K8 ["_spherePointTo"]
       66 SETTABLEKS                       R2 R0 K9 ["_draggingHandleId"]
       68 SETTABLEKS                       R3 R0 K10 ["_handleCFrame"]
       70 GETIMPORT                        R5 K13 [CFrame.new]
       72 CALL                             R5 0 1
       73 SETTABLEKS                       R5 R0 K14 ["_lastGlobalTransformForRender"]
       75 LOADN                            R5 0
       76 SETTABLEKS                       R5 R0 K15 ["_draggingLastGoodDelta"]
       78 GETTABLEKS                       R5 R0 K16 ["_boundingBox"]
       80 GETTABLEKS                       R5 R5 K11 ["CFrame"]
       82 SETTABLEKS                       R5 R0 K17 ["_originalBoundingBoxCFrame"]
       84 GETUPVAL                         R5 3
       85 CALL                             R5 0 1
       86 JUMPIFNOT                        R5 ; [+3]
       87 SETTABLEKS                       R4 R0 K18 ["_startAngle"]
       89 JUMP                             ; [+40]
       90 MOVE                             R6 R4
       91 GETTABLEKS                       R7 R0 K19 ["_draggerContext"]
       93 NAMECALL                         R7 R7 K20 ["getRotateIncrement"]
       95 CALL                             R7 1 1
       96 LOADN                            R8 0
       97 JUMPIFNOTLT                      R8 R7 ; [+29]
       99 FASTCALL1                        MATH_RAD R7 ; [+3]
      100 MOVE                             R9 R7
      101 GETIMPORT                        R8 K23 [math.rad]
      103 CALL                             R8 1 1
      104 DIV                              R12 R6 R8
      105 ADDK                             R11 R12 K24 [0.5]
      106 FASTCALL1                        MATH_FLOOR R11 ; [+2]
      107 GETIMPORT                        R10 K26 [math.floor]
      109 CALL                             R10 1 1
      110 MUL                              R9 R10 R8
      111 SUBK                             R11 R6 K27 [6.28318530717959]
      112 FASTCALL1                        MATH_ABS R11 ; [+2]
      113 GETIMPORT                        R10 K29 [math.abs]
      115 CALL                             R10 1 1
      116 SUB                              R12 R6 R9
      117 FASTCALL1                        MATH_ABS R12 ; [+2]
      118 GETIMPORT                        R11 K29 [math.abs]
      120 CALL                             R11 1 1
      121 JUMPIFNOTLT                      R10 R11 ; [+3]
      123 LOADN                            R5 0
      124 JUMP                             ; [+3]
      125 MOVE                             R5 R9
      126 JUMP                             ; [+1]
      127 MOVE                             R5 R6
      128 SETTABLEKS                       R5 R0 K18 ["_startAngle"]
      130 GETTABLEKS                       R5 R0 K30 ["_implementation"]
      132 GETTABLEKS                       R7 R0 K31 ["_selectionWrapper"]
      134 NAMECALL                         R7 R7 K32 ["get"]
      136 CALL                             R7 1 1
      137 GETTABLEKS                       R8 R0 K33 ["_selectionInfo"]
      139 NAMECALL                         R5 R5 K34 ["beginDrag"]
      141 CALL                             R5 3 0
      142 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+14]
        3 GETTABLEKS                       R3 R0 K0 ["_handles"]
        5 GETTABLEKS                       R4 R0 K1 ["_draggingHandleId"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIF                           R2 ; [+15]
        9 GETTABLEKS                       R3 R0 K2 ["_ballHandles"]
       11 GETTABLEKS                       R4 R0 K1 ["_draggingHandleId"]
       13 GETTABLE                         R2 R3 R4
       14 JUMPIF                           R2 ; [+9]
       15 RETURN                           R0 0
       16 JUMP                             ; [+7]
       17 GETTABLEKS                       R3 R0 K0 ["_handles"]
       19 GETTABLEKS                       R4 R0 K1 ["_draggingHandleId"]
       21 GETTABLE                         R2 R3 R4
       22 JUMPIF                           R2 ; [+1]
       23 RETURN                           R0 0
       24 LOADNIL                          R2
       25 GETUPVAL                         R3 0
       26 CALL                             R3 0 1
       27 JUMPIFNOT                        R3 ; [+6]
       28 GETTABLEKS                       R4 R0 K0 ["_handles"]
       30 GETTABLEKS                       R5 R0 K1 ["_draggingHandleId"]
       32 GETTABLE                         R3 R4 R5
       33 JUMPIFNOT                        R3 ; [+109]
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R4 R0 K3 ["_handleCFrame"]
       37 GETTABLEKS                       R5 R1 K4 ["Unit"]
       39 CALL                             R3 2 1
       40 JUMPIF                           R3 ; [+1]
       41 RETURN                           R0 0
       42 LOADNIL                          R4
       43 GETUPVAL                         R5 2
       44 CALL                             R5 0 1
       45 JUMPIFNOT                        R5 ; [+41]
       46 GETTABLEKS                       R5 R0 K5 ["_draggerContext"]
       48 NAMECALL                         R5 R5 K6 ["getRotateIncrement"]
       50 CALL                             R5 1 1
       51 GETTABLEKS                       R7 R0 K7 ["_startAngle"]
       53 SUB                              R6 R3 R7
       54 LOADN                            R7 0
       55 JUMPIFNOTLT                      R7 R5 ; [+29]
       57 FASTCALL1                        MATH_RAD R5 ; [+3]
       58 MOVE                             R8 R5
       59 GETIMPORT                        R7 K10 [math.rad]
       61 CALL                             R7 1 1
       62 DIV                              R11 R6 R7
       63 ADDK                             R10 R11 K11 [0.5]
       64 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       65 GETIMPORT                        R9 K13 [math.floor]
       67 CALL                             R9 1 1
       68 MUL                              R8 R9 R7
       69 SUBK                             R10 R6 K14 [6.28318530717959]
       70 FASTCALL1                        MATH_ABS R10 ; [+2]
       71 GETIMPORT                        R9 K16 [math.abs]
       73 CALL                             R9 1 1
       74 SUB                              R11 R6 R8
       75 FASTCALL1                        MATH_ABS R11 ; [+2]
       76 GETIMPORT                        R10 K16 [math.abs]
       78 CALL                             R10 1 1
       79 JUMPIFNOTLT                      R9 R10 ; [+3]
       81 LOADN                            R4 0
       82 JUMP                             ; [+44]
       83 MOVE                             R4 R8
       84 JUMP                             ; [+42]
       85 MOVE                             R4 R6
       86 JUMP                             ; [+40]
       87 GETTABLEKS                       R6 R0 K5 ["_draggerContext"]
       89 NAMECALL                         R6 R6 K6 ["getRotateIncrement"]
       91 CALL                             R6 1 1
       92 LOADN                            R7 0
       93 JUMPIFNOTLT                      R7 R6 ; [+29]
       95 FASTCALL1                        MATH_RAD R6 ; [+3]
       96 MOVE                             R8 R6
       97 GETIMPORT                        R7 K10 [math.rad]
       99 CALL                             R7 1 1
      100 DIV                              R11 R3 R7
      101 ADDK                             R10 R11 K11 [0.5]
      102 FASTCALL1                        MATH_FLOOR R10 ; [+2]
      103 GETIMPORT                        R9 K13 [math.floor]
      105 CALL                             R9 1 1
      106 MUL                              R8 R9 R7
      107 SUBK                             R10 R3 K14 [6.28318530717959]
      108 FASTCALL1                        MATH_ABS R10 ; [+2]
      109 GETIMPORT                        R9 K16 [math.abs]
      111 CALL                             R9 1 1
      112 SUB                              R11 R3 R8
      113 FASTCALL1                        MATH_ABS R11 ; [+2]
      114 GETIMPORT                        R10 K16 [math.abs]
      116 CALL                             R10 1 1
      117 JUMPIFNOTLT                      R9 R10 ; [+3]
      119 LOADN                            R5 0
      120 JUMP                             ; [+3]
      121 MOVE                             R5 R8
      122 JUMP                             ; [+1]
      123 MOVE                             R5 R3
      124 GETTABLEKS                       R6 R0 K7 ["_startAngle"]
      126 SUB                              R4 R5 R6
      127 GETUPVAL                         R5 3
      128 GETTABLEKS                       R6 R0 K3 ["_handleCFrame"]
      130 GETTABLEKS                       R7 R0 K3 ["_handleCFrame"]
      132 GETTABLEKS                       R7 R7 K17 ["RightVector"]
      134 MOVE                             R8 R4
      135 GETTABLEKS                       R9 R0 K5 ["_draggerContext"]
      137 NAMECALL                         R9 R9 K6 ["getRotateIncrement"]
      139 CALL                             R9 1 -1
      140 CALL                             R5 -1 1
      141 MOVE                             R2 R5
      142 JUMP                             ; [+77]
      143 GETTABLEKS                       R5 R0 K2 ["_ballHandles"]
      145 GETTABLEKS                       R6 R0 K1 ["_draggingHandleId"]
      147 GETTABLE                         R4 R5 R6
      148 FASTCALL1                        ASSERT R4 ; [+2]
      149 GETIMPORT                        R3 K19 [assert]
      151 CALL                             R3 1 0
      152 GETUPVAL                         R3 4
      153 GETTABLEKS                       R3 R3 K20 ["_spherePoint"]
      155 GETTABLEKS                       R4 R0 K3 ["_handleCFrame"]
      157 GETTABLEKS                       R5 R0 K21 ["_scale"]
      159 MOVE                             R6 R1
      160 CALL                             R3 3 1
      161 JUMPIFNOT                        R3 ; [+2]
      162 SETTABLEKS                       R3 R0 K22 ["_spherePointTo"]
      164 GETTABLEKS                       R5 R0 K23 ["_spherePointFrom"]
      166 GETTABLEKS                       R6 R0 K3 ["_handleCFrame"]
      168 GETTABLEKS                       R6 R6 K24 ["Position"]
      170 SUB                              R4 R5 R6
      171 GETTABLEKS                       R6 R0 K22 ["_spherePointTo"]
      173 GETTABLEKS                       R7 R0 K3 ["_handleCFrame"]
      175 GETTABLEKS                       R7 R7 K24 ["Position"]
      177 SUB                              R5 R6 R7
      178 GETIMPORT                        R6 K27 [CFrame.fromRotationBetweenVectors]
      180 MOVE                             R7 R4
      181 MOVE                             R8 R5
      182 CALL                             R6 2 1
      183 NAMECALL                         R7 R6 K28 ["ToAxisAngle"]
      185 CALL                             R7 1 2
      186 LOADN                            R10 1
      187 GETTABLEKS                       R12 R5 K29 ["Magnitude"]
      189 GETTABLEKS                       R13 R4 K29 ["Magnitude"]
      191 DIV                              R11 R12 R13
      192 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
      194 GETIMPORT                        R9 K31 [math.max]
      196 CALL                             R9 2 1
      197 GETIMPORT                        R10 K33 [CFrame.fromAxisAngle]
      199 MOVE                             R11 R7
      200 MUL                              R12 R8 R9
      201 CALL                             R10 2 1
      202 MOVE                             R6 R10
      203 GETTABLEKS                       R10 R0 K3 ["_handleCFrame"]
      205 MOVE                             R11 R6
      206 GETTABLEKS                       R13 R10 K34 ["Rotation"]
      208 NAMECALL                         R13 R13 K35 ["Inverse"]
      210 CALL                             R13 1 1
      211 MUL                              R12 R13 R11
      212 GETTABLEKS                       R13 R10 K34 ["Rotation"]
      214 MUL                              R11 R12 R13
      215 MUL                              R12 R10 R11
      216 NAMECALL                         R13 R10 K35 ["Inverse"]
      218 CALL                             R13 1 1
      219 MUL                              R2 R12 R13
      220 GETTABLEKS                       R3 R0 K36 ["_implementation"]
      222 MOVE                             R5 R2
      223 NAMECALL                         R3 R3 K37 ["updateDrag"]
      225 CALL                             R3 2 1
      226 GETTABLEKS                       R4 R0 K38 ["_boundingBox"]
      228 GETTABLEKS                       R6 R0 K39 ["_originalBoundingBoxCFrame"]
      230 MUL                              R5 R3 R6
      231 SETTABLEKS                       R5 R4 K25 ["CFrame"]
      233 SETTABLEKS                       R3 R0 K40 ["_lastGlobalTransformForRender"]
      235 GETTABLEKS                       R6 R0 K3 ["_handleCFrame"]
      237 GETTABLEKS                       R6 R6 K41 ["LookVector"]
      239 NAMECALL                         R4 R3 K42 ["VectorToObjectSpace"]
      241 CALL                             R4 2 1
      242 GETTABLEKS                       R5 R0 K3 ["_handleCFrame"]
      244 GETTABLEKS                       R5 R5 K43 ["UpVector"]
      246 MOVE                             R7 R4
      247 NAMECALL                         R5 R5 K44 ["Dot"]
      249 CALL                             R5 2 1
      250 GETTABLEKS                       R6 R0 K3 ["_handleCFrame"]
      252 GETTABLEKS                       R6 R6 K41 ["LookVector"]
      254 MOVE                             R8 R4
      255 NAMECALL                         R6 R6 K44 ["Dot"]
      257 CALL                             R6 2 1
      258 FASTCALL2                        MATH_ATAN2 R5 R6 ; [+5]
      260 MOVE                             R9 R5
      261 MOVE                             R10 R6
      262 GETIMPORT                        R8 K46 [math.atan2]
      264 CALL                             R8 2 1
      265 MINUS                            R7 R8
      266 SETTABLEKS                       R7 R0 K47 ["_draggingLastGoodDelta"]
      268 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R2 R0 K0 ["_draggingHandleId"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 CALL                             R2 0 1
        6 JUMPIF                           R2 ; [+6]
        7 GETTABLEKS                       R2 R0 K1 ["_tabKeyDown"]
        9 JUMPIF                           R2 ; [+3]
       10 NAMECALL                         R2 R0 K2 ["_endSummon"]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 1
       14 CALL                             R2 0 1
       15 JUMPIFNOT                        R2 ; [+6]
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R0 K3 ["_spherePointFrom"]
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R0 K4 ["_spherePointTo"]
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R0 K0 ["_draggingHandleId"]
       25 GETTABLEKS                       R2 R0 K5 ["_implementation"]
       27 NAMECALL                         R2 R2 K6 ["endDrag"]
       29 CALL                             R2 1 1
       30 GETTABLEKS                       R3 R0 K7 ["_schema"]
       32 GETTABLEKS                       R3 R3 K8 ["addUndoWaypoint"]
       34 GETTABLEKS                       R4 R0 K9 ["_draggerContext"]
       36 LOADK                            R5 K10 ["Axis Rotate Selection"]
       37 CALL                             R3 2 0
       38 GETUPVAL                         R3 2
       39 CALL                             R3 0 1
       40 JUMPIFNOT                        R3 ; [+9]
       41 GETTABLEKS                       R3 R0 K9 ["_draggerContext"]
       43 NAMECALL                         R3 R3 K11 ["shouldUseLocalSpace"]
       45 CALL                             R3 1 1
       46 JUMPIFNOT                        R3 ; [+1]
       47 RETURN                           R2 1
       48 LOADNIL                          R3
       49 RETURN                           R3 1
       50 RETURN                           R2 1

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionInfo"]
        2 NAMECALL                         R1 R1 K1 ["isEmpty"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 NEWTABLE                         R1 0 0
        8 SETTABLEKS                       R1 R0 K2 ["_handles"]
       10 RETURN                           R0 0
       11 GETIMPORT                        R1 K4 [pairs]
       13 GETUPVAL                         R2 0
       14 CALL                             R1 1 3
       15 FORGPREP_NEXT                    R1
       16 GETTABLEKS                       R8 R0 K5 ["_boundingBox"]
       18 GETTABLEKS                       R8 R8 K6 ["CFrame"]
       20 NAMECALL                         R9 R0 K7 ["_getBasisOffset"]
       22 CALL                             R9 1 1
       23 MUL                              R7 R8 R9
       24 GETTABLEKS                       R8 R5 K8 ["Offset"]
       26 MUL                              R6 R7 R8
       27 GETUPVAL                         R7 1
       28 CALL                             R7 0 1
       29 JUMPIFNOT                        R7 ; [+7]
       30 MOVE                             R9 R6
       31 GETTABLEKS                       R10 R5 K9 ["IsView"]
       33 NAMECALL                         R7 R0 K10 ["_orient"]
       35 CALL                             R7 3 1
       36 MOVE                             R6 R7
       37 GETUPVAL                         R8 1
       38 CALL                             R8 0 1
       39 JUMPIFNOT                        R8 ; [+7]
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R7 R7 K11 ["get"]
       43 GETTABLEKS                       R8 R5 K12 ["Axis"]
       45 CALL                             R7 1 1
       46 JUMP                             ; [+2]
       47 GETTABLEKS                       R7 R5 K13 ["Color"]
       49 GETTABLEKS                       R8 R0 K2 ["_handles"]
       51 DUPTABLE                         R9 K19 [{"HandleCFrame", "Color", "HighlightColor", "AxisId", "RadiusOffset", "Scale", "IsView"}]
       52 SETTABLEKS                       R6 R9 K14 ["HandleCFrame"]
       54 SETTABLEKS                       R7 R9 K13 ["Color"]
       56 GETUPVAL                         R11 1
       57 CALL                             R11 0 1
       58 JUMPIFNOT                        R11 ; [+6]
       59 GETUPVAL                         R10 2
       60 GETTABLEKS                       R10 R10 K20 ["makeHighlighted"]
       62 MOVE                             R11 R7
       63 CALL                             R10 1 1
       64 JUMP                             ; [+1]
       65 LOADNIL                          R10
       66 SETTABLEKS                       R10 R9 K15 ["HighlightColor"]
       68 GETUPVAL                         R11 1
       69 CALL                             R11 0 1
       70 JUMPIFNOT                        R11 ; [+3]
       71 GETTABLEKS                       R10 R5 K12 ["Axis"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R10
       75 SETTABLEKS                       R10 R9 K16 ["AxisId"]
       77 GETTABLEKS                       R10 R5 K17 ["RadiusOffset"]
       79 SETTABLEKS                       R10 R9 K17 ["RadiusOffset"]
       81 GETTABLEKS                       R10 R0 K21 ["_scale"]
       83 SETTABLEKS                       R10 R9 K18 ["Scale"]
       85 GETUPVAL                         R11 1
       86 CALL                             R11 0 1
       87 JUMPIFNOT                        R11 ; [+3]
       88 GETTABLEKS                       R10 R5 K9 ["IsView"]
       90 JUMP                             ; [+1]
       91 LOADNIL                          R10
       92 SETTABLEKS                       R10 R9 K9 ["IsView"]
       94 SETTABLE                         R9 R8 R4
       95 FORGLOOP                         R1 2 ; [-80]
       97 GETUPVAL                         R1 1
       98 CALL                             R1 0 1
       99 JUMPIFNOT                        R1 ; [+59]
      100 GETTABLEKS                       R1 R0 K22 ["_draggerContext"]
      102 NAMECALL                         R1 R1 K23 ["getDraggerShowTrackball"]
      104 CALL                             R1 1 1
      105 JUMPIFNOT                        R1 ; [+53]
      106 GETIMPORT                        R1 K4 [pairs]
      108 GETUPVAL                         R2 3
      109 CALL                             R1 1 3
      110 FORGPREP_NEXT                    R1
      111 GETUPVAL                         R6 2
      112 GETTABLEKS                       R6 R6 K11 ["get"]
      114 GETTABLEKS                       R7 R5 K12 ["Axis"]
      116 CALL                             R6 1 1
      117 GETTABLEKS                       R7 R0 K24 ["_ballHandles"]
      119 DUPTABLE                         R8 K25 [{"HandleCFrame", "Color", "HighlightColor", "AxisId", "Scale"}]
      120 GETTABLEKS                       R13 R0 K5 ["_boundingBox"]
      122 GETTABLEKS                       R13 R13 K6 ["CFrame"]
      124 NAMECALL                         R14 R0 K7 ["_getBasisOffset"]
      126 CALL                             R14 1 1
      127 MUL                              R12 R13 R14
      128 GETTABLEKS                       R13 R5 K8 ["Offset"]
      130 MUL                              R11 R12 R13
      131 GETTABLEKS                       R12 R5 K9 ["IsView"]
      133 NAMECALL                         R9 R0 K10 ["_orient"]
      135 CALL                             R9 3 1
      136 SETTABLEKS                       R9 R8 K14 ["HandleCFrame"]
      138 SETTABLEKS                       R6 R8 K13 ["Color"]
      140 GETUPVAL                         R9 2
      141 GETTABLEKS                       R9 R9 K20 ["makeHighlighted"]
      143 MOVE                             R10 R6
      144 CALL                             R9 1 1
      145 SETTABLEKS                       R9 R8 K15 ["HighlightColor"]
      147 GETTABLEKS                       R9 R5 K12 ["Axis"]
      149 SETTABLEKS                       R9 R8 K16 ["AxisId"]
      151 GETTABLEKS                       R9 R0 K21 ["_scale"]
      153 SETTABLEKS                       R9 R8 K18 ["Scale"]
      155 SETTABLE                         R8 R7 R4
      156 FORGLOOP                         R1 2 ; [-46]
      158 RETURN                           R0 0
      159 GETUPVAL                         R2 1
      160 CALL                             R2 0 1
      161 JUMPIFNOT                        R2 ; [+3]
      162 NEWTABLE                         R1 0 0
      164 JUMP                             ; [+1]
      165 LOADNIL                          R1
      166 SETTABLEKS                       R1 R0 K24 ["_ballHandles"]
      168 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+16]
        3 GETIMPORT                        R2 K3 [Enum.KeyCode.Tab]
        5 JUMPIFNOTEQ                      R1 R2 ; [+13]
        7 LOADB                            R2 1
        8 SETTABLEKS                       R2 R0 K4 ["_tabKeyDown"]
       10 GETTABLEKS                       R2 R0 K5 ["_draggingHandleId"]
       12 JUMPIF                           R2 ; [+48]
       13 NAMECALL                         R2 R0 K6 ["_summonHandles"]
       15 CALL                             R2 1 0
       16 LOADB                            R2 1
       17 RETURN                           R2 1
       18 JUMP                             ; [+42]
       19 GETUPVAL                         R2 0
       20 CALL                             R2 0 1
       21 JUMPIFNOT                        R2 ; [+17]
       22 GETUPVAL                         R3 1
       23 GETTABLE                         R2 R3 R1
       24 JUMPIFNOT                        R2 ; [+14]
       25 GETTABLEKS                       R2 R0 K5 ["_draggingHandleId"]
       27 JUMPIFNOT                        R2 ; [+33]
       28 GETTABLEKS                       R4 R0 K7 ["_draggerContext"]
       30 NAMECALL                         R4 R4 K8 ["getMouseRay"]
       32 CALL                             R4 1 -1
       33 NAMECALL                         R2 R0 K9 ["mouseDrag"]
       35 CALL                             R2 -1 0
       36 LOADB                            R2 1
       37 RETURN                           R2 1
       38 JUMP                             ; [+22]
       39 GETUPVAL                         R2 0
       40 CALL                             R2 0 1
       41 JUMPIFNOT                        R2 ; [+19]
       42 GETIMPORT                        R2 K11 [Enum.KeyCode.H]
       44 JUMPIFNOTEQ                      R1 R2 ; [+16]
       46 GETTABLEKS                       R2 R0 K7 ["_draggerContext"]
       48 LOADK                            R4 K12 ["HotkeyUsageHidden"]
       49 GETTABLEKS                       R6 R0 K7 ["_draggerContext"]
       51 LOADK                            R8 K12 ["HotkeyUsageHidden"]
       52 NAMECALL                         R6 R6 K13 ["getSetting"]
       54 CALL                             R6 2 1
       55 NOT                              R5 R6
       56 NAMECALL                         R2 R2 K14 ["setSetting"]
       58 CALL                             R2 3 0
       59 LOADB                            R2 1
       60 RETURN                           R2 1
       61 LOADB                            R2 0
       62 RETURN                           R2 1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+16]
        3 GETIMPORT                        R2 K3 [Enum.KeyCode.Tab]
        5 JUMPIFNOTEQ                      R1 R2 ; [+13]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R0 K4 ["_tabKeyDown"]
       10 GETTABLEKS                       R2 R0 K5 ["_draggingHandleId"]
       12 JUMPIF                           R2 ; [+25]
       13 NAMECALL                         R2 R0 K6 ["_endSummon"]
       15 CALL                             R2 1 0
       16 LOADB                            R2 1
       17 RETURN                           R2 1
       18 JUMP                             ; [+19]
       19 GETUPVAL                         R2 0
       20 CALL                             R2 0 1
       21 JUMPIFNOT                        R2 ; [+16]
       22 GETUPVAL                         R3 1
       23 GETTABLE                         R2 R3 R1
       24 JUMPIFNOT                        R2 ; [+13]
       25 GETTABLEKS                       R2 R0 K5 ["_draggingHandleId"]
       27 JUMPIFNOT                        R2 ; [+8]
       28 GETTABLEKS                       R4 R0 K7 ["_draggerContext"]
       30 NAMECALL                         R4 R4 K8 ["getMouseRay"]
       32 CALL                             R4 1 -1
       33 NAMECALL                         R2 R0 K9 ["mouseDrag"]
       35 CALL                             R2 -1 0
       36 LOADB                            R2 1
       37 RETURN                           R2 1
       38 LOADB                            R2 0
       39 RETURN                           R2 1

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["_implementation"]
        2 GETTABLEKS                       R1 R1 K1 ["getPriority"]
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETTABLEKS                       R1 R0 K0 ["_implementation"]
        7 GETTABLEKS                       R1 R1 K1 ["getPriority"]
        9 CALL                             R1 0 -1
       10 RETURN                           R1 -1
       11 LOADN                            R1 0
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K6 ["Parent"]
       15 GETTABLEKS                       R2 R2 K6 ["Parent"]
       17 GETIMPORT                        R3 K8 [require]
       19 GETTABLEKS                       R4 R2 K9 ["Packages"]
       21 GETTABLEKS                       R4 R4 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K8 [require]
       26 GETTABLEKS                       R5 R1 K11 ["Utility"]
       28 GETTABLEKS                       R5 R5 K12 ["Colors"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K8 [require]
       33 GETTABLEKS                       R6 R1 K11 ["Utility"]
       35 GETTABLEKS                       R6 R6 K13 ["Math"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K8 [require]
       40 GETTABLEKS                       R7 R1 K14 ["Components"]
       42 GETTABLEKS                       R7 R7 K15 ["StandaloneSelectionBox"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K8 [require]
       47 GETTABLEKS                       R8 R1 K11 ["Utility"]
       49 GETTABLEKS                       R8 R8 K16 ["roundRotation"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K8 [require]
       54 GETTABLEKS                       R9 R1 K11 ["Utility"]
       56 GETTABLEKS                       R9 R9 K17 ["snapRotationToPrimaryDirection"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K8 [require]
       61 GETTABLEKS                       R10 R1 K11 ["Utility"]
       63 GETTABLEKS                       R10 R10 K18 ["HotkeyHelpBuilder"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K8 [require]
       68 GETTABLEKS                       R11 R1 K14 ["Components"]
       70 GETTABLEKS                       R11 R11 K19 ["WireframeHandleAdornment"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K8 [require]
       75 GETTABLEKS                       R12 R1 K14 ["Components"]
       77 GETTABLEKS                       R12 R12 K20 ["RotateHandleView"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K8 [require]
       82 GETTABLEKS                       R13 R1 K14 ["Components"]
       84 GETTABLEKS                       R13 R13 K21 ["RotateBallHandleView"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K8 [require]
       89 GETTABLEKS                       R14 R1 K14 ["Components"]
       91 GETTABLEKS                       R14 R14 K22 ["SummonHandlesNote"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K8 [require]
       96 GETTABLEKS                       R15 R1 K14 ["Components"]
       98 GETTABLEKS                       R15 R15 K23 ["SummonHandlesHider"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K8 [require]
      103 GETTABLEKS                       R16 R1 K14 ["Components"]
      105 GETTABLEKS                       R16 R16 K24 ["DraggedPivot"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K8 [require]
      110 GETTABLEKS                       R17 R1 K14 ["Components"]
      112 GETTABLEKS                       R17 R17 K25 ["SummonedPivot"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K8 [require]
      117 GETTABLEKS                       R18 R1 K14 ["Components"]
      119 GETTABLEKS                       R18 R18 K26 ["HotkeyUsageInfo"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K8 [require]
      124 GETTABLEKS                       R19 R1 K27 ["Flags"]
      126 GETTABLEKS                       R19 R19 K28 ["getFFlagDraggerImprovements"]
      128 CALL                             R18 1 1
      129 GETIMPORT                        R19 K8 [require]
      131 GETTABLEKS                       R20 R1 K27 ["Flags"]
      133 GETTABLEKS                       R20 R20 K29 ["getFFlagNextGenDraggers"]
      135 CALL                             R19 1 1
      136 GETIMPORT                        R20 K8 [require]
      138 GETTABLEKS                       R21 R1 K27 ["Flags"]
      140 GETTABLEKS                       R21 R21 K30 ["getFFlagDraggerRotateReference"]
      142 CALL                             R20 1 1
      143 NEWTABLE                         R21 32 0
      145 SETTABLEKS                       R21 R21 K31 ["__index"]
      147 GETIMPORT                        R22 K34 [table.freeze]
      149 DUPTABLE                         R23 K39 [{"XAxis", "YAxis", "ZAxis", "VAxis"}]
      150 DUPTABLE                         R24 K46 [{["Offset"], ["Color"], ["Axis"] = "X", ["RadiusOffset"] = 0}]
      151 GETIMPORT                        R25 K49 [CFrame.fromMatrix]
      153 FASTCALL                         VECTOR ; [+2]
      154 GETIMPORT                        R26 K52 [Vector3.new]
      156 CALL                             R26 0 1
      157 LOADK                            R27 K53 [{1, 0, 0}]
      158 LOADK                            R28 K54 [{0, 1, 0}]
      159 LOADK                            R29 K55 [{0, 0, 1}]
      160 CALL                             R25 4 1
      161 SETTABLEKS                       R25 R24 K40 ["Offset"]
      163 GETTABLEKS                       R25 R4 K56 ["X_AXIS"]
      165 SETTABLEKS                       R25 R24 K41 ["Color"]
      167 SETTABLEKS                       R24 R23 K35 ["XAxis"]
      169 DUPTABLE                         R24 K59 [{["Offset"], ["Color"], ["Axis"] = "Y", ["RadiusOffset"] = 0.01}]
      170 GETIMPORT                        R25 K49 [CFrame.fromMatrix]
      172 FASTCALL                         VECTOR ; [+2]
      173 GETIMPORT                        R26 K52 [Vector3.new]
      175 CALL                             R26 0 1
      176 LOADK                            R27 K54 [{0, 1, 0}]
      177 LOADK                            R28 K55 [{0, 0, 1}]
      178 LOADK                            R29 K53 [{1, 0, 0}]
      179 CALL                             R25 4 1
      180 SETTABLEKS                       R25 R24 K40 ["Offset"]
      182 GETTABLEKS                       R25 R4 K60 ["Y_AXIS"]
      184 SETTABLEKS                       R25 R24 K41 ["Color"]
      186 SETTABLEKS                       R24 R23 K36 ["YAxis"]
      188 DUPTABLE                         R24 K63 [{["Offset"], ["Color"], ["Axis"] = "Z", ["RadiusOffset"] = 0.02}]
      189 GETIMPORT                        R25 K49 [CFrame.fromMatrix]
      191 FASTCALL                         VECTOR ; [+2]
      192 GETIMPORT                        R26 K52 [Vector3.new]
      194 CALL                             R26 0 1
      195 LOADK                            R27 K55 [{0, 0, 1}]
      196 LOADK                            R28 K53 [{1, 0, 0}]
      197 LOADK                            R29 K54 [{0, 1, 0}]
      198 CALL                             R25 4 1
      199 SETTABLEKS                       R25 R24 K40 ["Offset"]
      201 GETTABLEKS                       R25 R4 K64 ["Z_AXIS"]
      203 SETTABLEKS                       R25 R24 K41 ["Color"]
      205 SETTABLEKS                       R24 R23 K37 ["ZAxis"]
      207 MOVE                             R25 R19
      208 CALL                             R25 0 1
      209 JUMPIF                           R25 ; [+2]
      210 LOADNIL                          R24
      211 JUMP                             ; [+9]
      212 DUPTABLE                         R24 K69 [{["Offset"], ["Color"], ["Axis"] = "V", ["RadiusOffset"] = 0.5, ["IsView"] = True}]
      213 GETIMPORT                        R25 K71 [CFrame.identity]
      215 SETTABLEKS                       R25 R24 K40 ["Offset"]
      217 GETTABLEKS                       R25 R4 K72 ["WHITE"]
      219 SETTABLEKS                       R25 R24 K41 ["Color"]
      221 SETTABLEKS                       R24 R23 K38 ["VAxis"]
      223 CALL                             R22 1 1
      224 MOVE                             R24 R19
      225 CALL                             R24 0 1
      226 JUMPIF                           R24 ; [+2]
      227 LOADNIL                          R23
      228 JUMP                             ; [+15]
      229 GETIMPORT                        R23 K34 [table.freeze]
      231 DUPTABLE                         R24 K74 [{"Trackball"}]
      232 DUPTABLE                         R25 K75 [{["Offset"], ["Color"], ["Axis"] = "V"}]
      233 GETIMPORT                        R26 K71 [CFrame.identity]
      235 SETTABLEKS                       R26 R25 K40 ["Offset"]
      237 GETTABLEKS                       R26 R4 K72 ["WHITE"]
      239 SETTABLEKS                       R26 R25 K41 ["Color"]
      241 SETTABLEKS                       R25 R24 K73 ["Trackball"]
      243 CALL                             R23 1 1
      244 DUPCLOSURE                       R24 K76 [PROTO_0]
      245 DUPCLOSURE                       R25 K77 [PROTO_1]
      246 CAPTURE                          VAL R7
      247 DUPCLOSURE                       R26 K78 [PROTO_2]
      248 DUPCLOSURE                       R27 K79 [PROTO_3]
      249 CAPTURE                          VAL R5
      250 DUPCLOSURE                       R28 K80 [PROTO_4]
      251 DUPCLOSURE                       R29 K81 [PROTO_5]
      252 SETTABLEKS                       R29 R21 K82 ["_orient"]
      254 DUPCLOSURE                       R29 K83 [PROTO_6]
      255 SETTABLEKS                       R29 R21 K84 ["_slideAngle"]
      257 DUPCLOSURE                       R29 K85 [PROTO_7]
      258 CAPTURE                          VAL R19
      259 CAPTURE                          VAL R4
      260 CAPTURE                          VAL R21
      261 SETTABLEKS                       R29 R21 K51 ["new"]
      263 DUPCLOSURE                       R29 K86 [PROTO_8]
      264 CAPTURE                          VAL R18
      265 CAPTURE                          VAL R8
      266 SETTABLEKS                       R29 R21 K87 ["_summonHandles"]
      268 DUPCLOSURE                       R29 K88 [PROTO_9]
      269 CAPTURE                          VAL R18
      270 SETTABLEKS                       R29 R21 K89 ["_endSummon"]
      272 DUPCLOSURE                       R29 K90 [PROTO_10]
      273 CAPTURE                          VAL R18
      274 SETTABLEKS                       R29 R21 K91 ["beginSummon"]
      276 DUPCLOSURE                       R29 K92 [PROTO_11]
      277 CAPTURE                          VAL R18
      278 SETTABLEKS                       R29 R21 K93 ["endSummon"]
      280 DUPCLOSURE                       R29 K94 [PROTO_12]
      281 CAPTURE                          VAL R18
      282 SETTABLEKS                       R29 R21 K95 ["_getBasisOffset"]
      284 DUPCLOSURE                       R29 K96 [PROTO_13]
      285 CAPTURE                          VAL R18
      286 SETTABLEKS                       R29 R21 K97 ["update"]
      288 DUPCLOSURE                       R29 K98 [PROTO_14]
      289 SETTABLEKS                       R29 R21 K99 ["shouldBiasTowardsObjects"]
      291 DUPCLOSURE                       R29 K100 [PROTO_15]
      292 CAPTURE                          VAL R11
      293 CAPTURE                          VAL R19
      294 CAPTURE                          VAL R12
      295 SETTABLEKS                       R29 R21 K101 ["hitTest"]
      297 DUPCLOSURE                       R29 K102 [PROTO_16]
      298 CAPTURE                          VAL R9
      299 CAPTURE                          VAL R3
      300 CAPTURE                          VAL R17
      301 SETTABLEKS                       R29 R21 K103 ["_renderHotkeyHelp"]
      303 DUPCLOSURE                       R29 K104 [PROTO_17]
      304 SETTABLEKS                       R29 R21 K105 ["_getTickAngle"]
      306 DUPCLOSURE                       R29 K106 [PROTO_19]
      307 CAPTURE                          VAL R19
      308 CAPTURE                          VAL R3
      309 CAPTURE                          VAL R11
      310 CAPTURE                          VAL R10
      311 CAPTURE                          VAL R22
      312 CAPTURE                          VAL R4
      313 SETTABLEKS                       R29 R21 K107 ["_renderDraggingHandles"]
      315 DUPCLOSURE                       R29 K108 [PROTO_20]
      316 CAPTURE                          VAL R19
      317 CAPTURE                          VAL R3
      318 CAPTURE                          VAL R12
      319 SETTABLEKS                       R29 R21 K109 ["_renderDraggingBallHandles"]
      321 DUPCLOSURE                       R29 K110 [PROTO_21]
      322 CAPTURE                          VAL R3
      323 SETTABLEKS                       R29 R21 K111 ["_renderDragging"]
      325 DUPCLOSURE                       R29 K112 [PROTO_22]
      326 CAPTURE                          VAL R3
      327 SETTABLEKS                       R29 R21 K113 ["_renderDraggingBall"]
      329 DUPCLOSURE                       R29 K114 [PROTO_23]
      330 CAPTURE                          VAL R19
      331 CAPTURE                          VAL R4
      332 CAPTURE                          VAL R3
      333 CAPTURE                          VAL R11
      334 CAPTURE                          VAL R12
      335 SETTABLEKS                       R29 R21 K115 ["_renderHovering"]
      337 DUPCLOSURE                       R29 K116 [PROTO_24]
      338 CAPTURE                          VAL R19
      339 SETTABLEKS                       R29 R21 K117 ["_renderDragOrHover"]
      341 DUPCLOSURE                       R29 K118 [PROTO_25]
      342 CAPTURE                          VAL R3
      343 CAPTURE                          VAL R6
      344 SETTABLEKS                       R29 R21 K119 ["_renderBoundingBox"]
      346 DUPCLOSURE                       R29 K120 [PROTO_26]
      347 CAPTURE                          VAL R3
      348 CAPTURE                          VAL R16
      349 CAPTURE                          VAL R14
      350 CAPTURE                          VAL R13
      351 SETTABLEKS                       R29 R21 K121 ["_renderSummon"]
      353 DUPCLOSURE                       R29 K122 [PROTO_27]
      354 CAPTURE                          VAL R3
      355 SETTABLEKS                       R29 R21 K123 ["renderNEW"]
      357 DUPCLOSURE                       R29 K124 [PROTO_28]
      358 CAPTURE                          VAL R18
      359 CAPTURE                          VAL R3
      360 CAPTURE                          VAL R11
      361 CAPTURE                          VAL R19
      362 CAPTURE                          VAL R22
      363 CAPTURE                          VAL R4
      364 CAPTURE                          VAL R6
      365 CAPTURE                          VAL R0
      366 CAPTURE                          VAL R15
      367 CAPTURE                          VAL R14
      368 CAPTURE                          VAL R13
      369 SETTABLEKS                       R29 R21 K125 ["render"]
      371 DUPCLOSURE                       R29 K126 [PROTO_29]
      372 CAPTURE                          VAL R19
      373 CAPTURE                          VAL R27
      374 CAPTURE                          VAL R12
      375 CAPTURE                          VAL R18
      376 SETTABLEKS                       R29 R21 K127 ["mouseDown"]
      378 DUPCLOSURE                       R29 K128 [PROTO_30]
      379 CAPTURE                          VAL R19
      380 CAPTURE                          VAL R27
      381 CAPTURE                          VAL R18
      382 CAPTURE                          VAL R25
      383 CAPTURE                          VAL R12
      384 SETTABLEKS                       R29 R21 K129 ["mouseDrag"]
      386 DUPCLOSURE                       R29 K130 [PROTO_31]
      387 CAPTURE                          VAL R18
      388 CAPTURE                          VAL R19
      389 CAPTURE                          VAL R20
      390 SETTABLEKS                       R29 R21 K131 ["mouseUp"]
      392 DUPCLOSURE                       R29 K132 [PROTO_32]
      393 CAPTURE                          VAL R22
      394 CAPTURE                          VAL R19
      395 CAPTURE                          VAL R4
      396 CAPTURE                          VAL R23
      397 SETTABLEKS                       R29 R21 K133 ["_updateHandles"]
      399 GETIMPORT                        R29 K34 [table.freeze]
      401 NEWTABLE                         R30 2 0
      403 GETIMPORT                        R31 K137 [Enum.KeyCode.RightShift]
      405 LOADB                            R32 1
      406 SETTABLE                         R32 R30 R31
      407 GETIMPORT                        R31 K139 [Enum.KeyCode.LeftShift]
      409 LOADB                            R32 1
      410 SETTABLE                         R32 R30 R31
      411 CALL                             R29 1 1
      412 DUPCLOSURE                       R30 K140 [PROTO_33]
      413 CAPTURE                          VAL R18
      414 CAPTURE                          VAL R29
      415 SETTABLEKS                       R30 R21 K141 ["keyDown"]
      417 DUPCLOSURE                       R30 K142 [PROTO_34]
      418 CAPTURE                          VAL R18
      419 CAPTURE                          VAL R29
      420 SETTABLEKS                       R30 R21 K143 ["keyUp"]
      422 DUPCLOSURE                       R30 K144 [PROTO_35]
      423 SETTABLEKS                       R30 R21 K145 ["getPriority"]
      425 RETURN                           R21 1
