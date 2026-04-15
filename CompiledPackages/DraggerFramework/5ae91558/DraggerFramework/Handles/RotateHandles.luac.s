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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["intersectRayPlane"]
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
       21 GETTABLEKS                       R6 R0 K3 ["Position"]
       23 SUB                              R5 R3 R6
       24 GETTABLEKS                       R4 R5 K5 ["Unit"]
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
       13 GETTABLEKS                       R6 R3 K6 ["Position"]
       15 GETTABLEKS                       R7 R1 K6 ["Position"]
       17 SUB                              R5 R6 R7
       18 GETTABLEKS                       R4 R5 K7 ["Unit"]
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
        0 NEWTABLE                         R3 8 0
        2 SETTABLEKS                       R0 R3 K0 ["_draggerContext"]
        4 NEWTABLE                         R4 0 0
        6 SETTABLEKS                       R4 R3 K1 ["_handles"]
        8 GETUPVAL                         R5 0
        9 CALL                             R5 0 1
       10 JUMPIFNOT                        R5 ; [+3]
       11 NEWTABLE                         R4 0 0
       13 JUMP                             ; [+1]
       14 LOADNIL                          R4
       15 SETTABLEKS                       R4 R3 K2 ["_ballHandles"]
       17 MOVE                             R4 R1
       18 JUMPIF                           R4 ; [+4]
       19 DUPTABLE                         R4 K4 [{"Summonable"}]
       20 LOADB                            R5 1
       21 SETTABLEKS                       R5 R4 K3 ["Summonable"]
       23 SETTABLEKS                       R4 R3 K5 ["_props"]
       25 SETTABLEKS                       R2 R3 K6 ["_implementation"]
       27 LOADB                            R4 0
       28 SETTABLEKS                       R4 R3 K7 ["_tabKeyDown"]
       30 GETUPVAL                         R6 1
       31 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       33 MOVE                             R5 R3
       34 GETIMPORT                        R4 K9 [setmetatable]
       36 CALL                             R4 2 1
       37 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["Wrong flag branching"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R2 R0 K3 ["_props"]
       11 GETTABLEKS                       R1 R2 K4 ["Summonable"]
       13 JUMPIF                           R1 ; [+2]
       14 LOADB                            R1 0
       15 RETURN                           R1 1
       16 GETTABLEKS                       R1 R0 K5 ["_draggerContext"]
       18 NAMECALL                         R1 R1 K6 ["getMouseRay"]
       20 CALL                             R1 1 1
       21 GETTABLEKS                       R3 R0 K7 ["_schema"]
       23 GETTABLEKS                       R2 R3 K8 ["getMouseTarget"]
       25 GETTABLEKS                       R3 R0 K5 ["_draggerContext"]
       27 MOVE                             R4 R1
       28 NEWTABLE                         R5 0 0
       30 CALL                             R2 3 3
       31 JUMPIFNOT                        R3 ; [+59]
       32 GETTABLEKS                       R6 R1 K9 ["Origin"]
       34 GETTABLEKS                       R9 R1 K10 ["Direction"]
       36 GETTABLEKS                       R8 R9 K11 ["Unit"]
       38 MUL                              R7 R8 R4
       39 ADD                              R5 R6 R7
       40 GETIMPORT                        R6 K14 [CFrame.new]
       42 GETTABLEKS                       R8 R0 K15 ["_boundingBox"]
       44 GETTABLEKS                       R7 R8 K12 ["CFrame"]
       46 MOVE                             R9 R5
       47 NAMECALL                         R7 R7 K16 ["PointToObjectSpace"]
       49 CALL                             R7 2 -1
       50 CALL                             R6 -1 1
       51 SETTABLEKS                       R6 R0 K17 ["_summonBasisOffset"]
       53 GETTABLEKS                       R7 R0 K18 ["_implementation"]
       55 GETTABLEKS                       R6 R7 K19 ["findSummonSnap"]
       57 JUMPIFNOT                        R6 ; [+33]
       58 GETTABLEKS                       R6 R0 K18 ["_implementation"]
       60 MOVE                             R8 R5
       61 MOVE                             R9 R3
       62 NAMECALL                         R6 R6 K19 ["findSummonSnap"]
       64 CALL                             R6 3 2
       65 JUMPIFNOT                        R6 ; [+25]
       66 GETTABLEKS                       R9 R0 K15 ["_boundingBox"]
       68 GETTABLEKS                       R8 R9 K12 ["CFrame"]
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
       47 GETTABLEKS                       R11 R0 K9 ["_boundingBox"]
       49 GETTABLEKS                       R10 R11 K5 ["CFrame"]
       51 NAMECALL                         R11 R0 K17 ["_getBasisOffset"]
       53 CALL                             R11 1 1
       54 MUL                              R9 R10 R11
       55 GETTABLEKS                       R8 R9 K18 ["Position"]
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
        8 GETUPVAL                         R11 0
        9 GETTABLEKS                       R10 R11 K4 ["hitTest"]
       11 MOVE                             R11 R9
       12 MOVE                             R12 R1
       13 CALL                             R10 2 1
       14 JUMPIFNOT                        R10 ; [+38]
       15 JUMPIFNOTLT                      R10 R4 ; [+37]
       17 GETUPVAL                         R11 1
       18 CALL                             R11 0 1
       19 JUMPIFNOT                        R11 ; [+31]
       20 GETTABLEKS                       R12 R1 K5 ["Origin"]
       22 GETTABLEKS                       R15 R1 K6 ["Direction"]
       24 GETTABLEKS                       R14 R15 K7 ["Unit"]
       26 MUL                              R13 R14 R10
       27 ADD                              R11 R12 R13
       28 GETTABLEKS                       R13 R9 K8 ["HandleCFrame"]
       30 GETTABLEKS                       R12 R13 K9 ["Position"]
       32 SUB                              R14 R11 R12
       33 GETTABLEKS                       R13 R14 K7 ["Unit"]
       35 GETTABLEKS                       R17 R1 K6 ["Direction"]
       37 GETTABLEKS                       R16 R17 K7 ["Unit"]
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
       64 GETUPVAL                         R11 2
       65 GETTABLEKS                       R10 R11 K4 ["hitTest"]
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
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["addGridSnap"]
       12 MOVE                             R3 R1
       13 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
       15 CALL                             R2 2 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K4 ["addSummonHandles"]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K5 ["addHelp"]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R2 R3 K6 ["createElement"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["HandleCFrame"]
        3 GETTABLEKS                       R1 R2 K1 ["Position"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["HandleCFrame"]
        8 GETTABLEKS                       R2 R3 K2 ["XVector"]
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
       66 GETUPVAL                         R7 1
       67 GETTABLEKS                       R6 R7 K17 ["createElement"]
       69 GETUPVAL                         R7 2
       70 DUPTABLE                         R8 K27 [{"HandleCFrame", "Color", "StartAngle", "EndAngle", "Scale", "Hovered", "RadiusOffset", "TickAngle", "DraggerContext"}]
       71 GETTABLEKS                       R9 R5 K18 ["HandleCFrame"]
       73 SETTABLEKS                       R9 R8 K18 ["HandleCFrame"]
       75 GETTABLEKS                       R9 R5 K19 ["Color"]
       77 SETTABLEKS                       R9 R8 K19 ["Color"]
       79 GETTABLEKS                       R10 R0 K16 ["_draggingLastGoodDelta"]
       81 SUB                              R9 R4 R10
       82 SETTABLEKS                       R9 R8 K20 ["StartAngle"]
       84 SETTABLEKS                       R4 R8 K21 ["EndAngle"]
       86 GETTABLEKS                       R9 R0 K28 ["_scale"]
       88 SETTABLEKS                       R9 R8 K22 ["Scale"]
       90 LOADB                            R9 0
       91 SETTABLEKS                       R9 R8 K23 ["Hovered"]
       93 GETTABLEKS                       R9 R5 K24 ["RadiusOffset"]
       95 SETTABLEKS                       R9 R8 K24 ["RadiusOffset"]
       97 SETTABLEKS                       R2 R8 K25 ["TickAngle"]
       99 GETTABLEKS                       R9 R0 K0 ["_draggerContext"]
      101 SETTABLEKS                       R9 R8 K26 ["DraggerContext"]
      103 CALL                             R6 2 1
      104 SETTABLE                         R6 R3 R1
      105 GETUPVAL                         R6 0
      106 CALL                             R6 0 1
      107 JUMPIFNOT                        R6 ; [+22]
      108 GETUPVAL                         R7 1
      109 GETTABLEKS                       R6 R7 K17 ["createElement"]
      111 GETUPVAL                         R7 3
      112 DUPTABLE                         R8 K32 [{"AlwaysOnTop", "Color3", "Render"}]
      113 LOADB                            R9 1
      114 SETTABLEKS                       R9 R8 K29 ["AlwaysOnTop"]
      116 GETTABLEKS                       R9 R0 K0 ["_draggerContext"]
      118 NAMECALL                         R9 R9 K33 ["getGridColor"]
      120 CALL                             R9 1 1
      121 SETTABLEKS                       R9 R8 K30 ["Color3"]
      123 NEWCLOSURE                       R9 P0
      124 CAPTURE                          VAL R5
      125 SETTABLEKS                       R9 R8 K31 ["Render"]
      127 CALL                             R6 2 1
      128 SETTABLEKS                       R6 R3 K34 ["RotationAxisWfh"]
      130 GETUPVAL                         R6 0
      131 CALL                             R6 0 1
      132 JUMPIF                           R6 ; [+53]
      133 GETIMPORT                        R6 K36 [pairs]
      135 GETTABLEKS                       R7 R0 K14 ["_handles"]
      137 CALL                             R6 1 3
      138 FORGPREP_NEXT                    R6
      139 JUMPIFEQ                         R9 R1 ; [+44]
      141 GETUPVAL                         R13 4
      142 GETTABLE                         R12 R13 R9
      143 GETTABLEKS                       R11 R12 K37 ["Offset"]
      145 GETUPVAL                         R13 1
      146 GETTABLEKS                       R12 R13 K17 ["createElement"]
      148 GETUPVAL                         R13 2
      149 DUPTABLE                         R14 K39 [{"HandleCFrame", "Color", "Scale", "Thin", "RadiusOffset"}]
      150 GETTABLEKS                       R17 R0 K40 ["_boundingBox"]
      152 GETTABLEKS                       R16 R17 K41 ["CFrame"]
      154 MUL                              R15 R16 R11
      155 SETTABLEKS                       R15 R14 K18 ["HandleCFrame"]
      157 GETUPVAL                         R16 5
      158 GETTABLEKS                       R15 R16 K42 ["makeDimmed"]
      160 GETTABLEKS                       R16 R10 K19 ["Color"]
      162 CALL                             R15 1 1
      163 SETTABLEKS                       R15 R14 K19 ["Color"]
      165 GETTABLEKS                       R15 R0 K28 ["_scale"]
      167 SETTABLEKS                       R15 R14 K22 ["Scale"]
      169 LOADB                            R15 1
      170 SETTABLEKS                       R15 R14 K38 ["Thin"]
      172 GETUPVAL                         R16 0
      173 CALL                             R16 0 1
      174 JUMPIFNOT                        R16 ; [+3]
      175 GETTABLEKS                       R15 R10 K24 ["RadiusOffset"]
      177 JUMP                             ; [+2]
      178 GETTABLEKS                       R15 R5 K24 ["RadiusOffset"]
      180 SETTABLEKS                       R15 R14 K24 ["RadiusOffset"]
      182 CALL                             R12 2 1
      183 SETTABLE                         R12 R3 R9
      184 FORGLOOP                         R6 2 ; [-46]
      186 GETUPVAL                         R7 1
      187 GETTABLEKS                       R6 R7 K43 ["createFragment"]
      189 MOVE                             R7 R3
      190 CALL                             R6 1 -1
      191 RETURN                           R6 -1

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
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K3 ["createElement"]
       18 GETUPVAL                         R5 2
       19 DUPTABLE                         R6 K8 [{"HandleCFrame", "Color", "Scale", "Hovered"}]
       20 GETTABLEKS                       R7 R0 K9 ["_handleCFrame"]
       22 SETTABLEKS                       R7 R6 K4 ["HandleCFrame"]
       24 GETTABLEKS                       R7 R3 K5 ["Color"]
       26 SETTABLEKS                       R7 R6 K5 ["Color"]
       28 GETTABLEKS                       R7 R0 K10 ["_scale"]
       30 SETTABLEKS                       R7 R6 K6 ["Scale"]
       32 LOADB                            R7 1
       33 SETTABLEKS                       R7 R6 K7 ["Hovered"]
       35 CALL                             R4 2 1
       36 SETTABLE                         R4 R2 R1
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R4 R5 K11 ["createFragment"]
       40 MOVE                             R5 R2
       41 CALL                             R4 1 -1
       42 RETURN                           R4 -1

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createFragment"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createFragment"]
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
        8 GETTABLEKS                       R8 R7 K3 ["Color"]
       10 JUMPIFEQ                         R6 R1 ; [+2]
       12 LOADB                            R9 0 +1
       13 LOADB                            R9 1
       14 LOADNIL                          R10
       15 JUMPIFNOT                        R9 ; [+5]
       16 NAMECALL                         R11 R0 K4 ["_getTickAngle"]
       18 CALL                             R11 1 1
       19 MOVE                             R10 R11
       20 JUMP                             ; [+6]
       21 GETUPVAL                         R12 0
       22 GETTABLEKS                       R11 R12 K5 ["makeDimmed"]
       24 MOVE                             R12 R8
       25 CALL                             R11 1 1
       26 MOVE                             R8 R11
       27 GETUPVAL                         R12 1
       28 CALL                             R12 0 1
       29 JUMPIFNOT                        R12 ; [+8]
       30 GETTABLEKS                       R13 R7 K6 ["HandleCFrame"]
       32 GETTABLEKS                       R14 R7 K7 ["IsView"]
       34 NAMECALL                         R11 R0 K8 ["_orient"]
       36 CALL                             R11 3 1
       37 JUMP                             ; [+2]
       38 GETTABLEKS                       R11 R7 K6 ["HandleCFrame"]
       40 GETUPVAL                         R13 2
       41 GETTABLEKS                       R12 R13 K9 ["createElement"]
       43 GETUPVAL                         R13 3
       44 DUPTABLE                         R14 K16 [{"HandleCFrame", "Color", "Scale", "Hovered", "RadiusOffset", "TickAngle", "ArcAngle", "SlideAngle"}]
       45 SETTABLEKS                       R11 R14 K6 ["HandleCFrame"]
       47 SETTABLEKS                       R8 R14 K3 ["Color"]
       49 GETTABLEKS                       R15 R0 K17 ["_scale"]
       51 SETTABLEKS                       R15 R14 K10 ["Scale"]
       53 SETTABLEKS                       R9 R14 K11 ["Hovered"]
       55 GETTABLEKS                       R15 R7 K12 ["RadiusOffset"]
       57 SETTABLEKS                       R15 R14 K12 ["RadiusOffset"]
       59 SETTABLEKS                       R10 R14 K13 ["TickAngle"]
       61 GETUPVAL                         R16 1
       62 CALL                             R16 0 1
       63 JUMPIFNOT                        R16 ; [+7]
       64 GETTABLEKS                       R16 R7 K7 ["IsView"]
       66 JUMPIFNOT                        R16 ; [+2]
       67 LOADN                            R15 104
       68 JUMP                             ; [+3]
       69 LOADN                            R15 180
       70 JUMP                             ; [+1]
       71 LOADNIL                          R15
       72 SETTABLEKS                       R15 R14 K14 ["ArcAngle"]
       74 GETUPVAL                         R16 1
       75 CALL                             R16 0 1
       76 JUMPIFNOT                        R16 ; [+8]
       77 GETTABLEKS                       R17 R7 K6 ["HandleCFrame"]
       79 GETTABLEKS                       R18 R7 K7 ["IsView"]
       81 NAMECALL                         R15 R0 K18 ["_slideAngle"]
       83 CALL                             R15 3 1
       84 JUMP                             ; [+1]
       85 LOADNIL                          R15
       86 SETTABLEKS                       R15 R14 K15 ["SlideAngle"]
       88 CALL                             R12 2 1
       89 SETTABLE                         R12 R2 R6
       90 FORGLOOP                         R3 2 ; [-83]
       92 GETUPVAL                         R3 1
       93 CALL                             R3 0 1
       94 JUMPIFNOT                        R3 ; [+45]
       95 GETIMPORT                        R3 K1 [pairs]
       97 GETTABLEKS                       R4 R0 K19 ["_ballHandles"]
       99 CALL                             R3 1 3
      100 FORGPREP_NEXT                    R3
      101 GETTABLEKS                       R8 R7 K3 ["Color"]
      103 JUMPIFEQ                         R6 R1 ; [+2]
      105 LOADB                            R9 0 +1
      106 LOADB                            R9 1
      107 JUMPIF                           R9 ; [+6]
      108 GETUPVAL                         R11 0
      109 GETTABLEKS                       R10 R11 K5 ["makeDimmed"]
      111 MOVE                             R11 R8
      112 CALL                             R10 1 1
      113 MOVE                             R8 R10
      114 GETUPVAL                         R11 2
      115 GETTABLEKS                       R10 R11 K9 ["createElement"]
      117 GETUPVAL                         R11 4
      118 DUPTABLE                         R12 K20 [{"HandleCFrame", "Color", "Scale", "Hovered"}]
      119 GETTABLEKS                       R15 R7 K6 ["HandleCFrame"]
      121 GETTABLEKS                       R16 R7 K7 ["IsView"]
      123 NAMECALL                         R13 R0 K8 ["_orient"]
      125 CALL                             R13 3 1
      126 SETTABLEKS                       R13 R12 K6 ["HandleCFrame"]
      128 SETTABLEKS                       R8 R12 K3 ["Color"]
      130 GETTABLEKS                       R13 R0 K17 ["_scale"]
      132 SETTABLEKS                       R13 R12 K10 ["Scale"]
      134 SETTABLEKS                       R9 R12 K11 ["Hovered"]
      136 CALL                             R10 2 1
      137 SETTABLE                         R10 R2 R6
      138 FORGLOOP                         R3 2 ; [-38]
      140 GETUPVAL                         R4 2
      141 GETTABLEKS                       R3 R4 K21 ["createFragment"]
      143 MOVE                             R4 R2
      144 CALL                             R3 1 -1
      145 RETURN                           R3 -1

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
        0 GETTABLEKS                       R2 R0 K0 ["_props"]
        2 GETTABLEKS                       R1 R2 K1 ["ShowBoundingBox"]
        4 JUMPIFNOT                        R1 ; [+49]
        5 GETTABLEKS                       R2 R0 K2 ["_selectionWrapper"]
        7 NAMECALL                         R2 R2 K3 ["get"]
        9 CALL                             R2 1 1
       10 LENGTH                           R1 R2
       11 LOADN                            R2 1
       12 JUMPIFNOTLT                      R2 R1 ; [+41]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K4 ["createElement"]
       17 GETUPVAL                         R2 1
       18 DUPTABLE                         R3 K10 [{"CFrame", "Size", "Color", "LineThickness", "Container"}]
       19 GETTABLEKS                       R5 R0 K11 ["_boundingBox"]
       21 GETTABLEKS                       R4 R5 K5 ["CFrame"]
       23 SETTABLEKS                       R4 R3 K5 ["CFrame"]
       25 GETTABLEKS                       R5 R0 K11 ["_boundingBox"]
       27 GETTABLEKS                       R4 R5 K6 ["Size"]
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
        0 GETTABLEKS                       R2 R0 K0 ["_props"]
        2 GETTABLEKS                       R1 R2 K1 ["Summonable"]
        4 JUMPIFNOT                        R1 ; [+110]
        5 NEWTABLE                         R1 4 0
        7 GETTABLEKS                       R2 R0 K2 ["_summonBasisOffset"]
        9 JUMPIFNOT                        R2 ; [+30]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K3 ["createElement"]
       13 GETUPVAL                         R3 1
       14 DUPTABLE                         R4 K7 [{"DraggerContext", "CFrame", "Dragging"}]
       15 GETTABLEKS                       R5 R0 K8 ["_draggerContext"]
       17 SETTABLEKS                       R5 R4 K4 ["DraggerContext"]
       19 GETTABLEKS                       R7 R0 K9 ["_boundingBox"]
       21 GETTABLEKS                       R6 R7 K5 ["CFrame"]
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
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R2 R3 K3 ["createElement"]
       49 GETUPVAL                         R3 2
       50 DUPTABLE                         R4 K13 [{"DraggerContext"}]
       51 GETTABLEKS                       R5 R0 K8 ["_draggerContext"]
       53 SETTABLEKS                       R5 R4 K4 ["DraggerContext"]
       55 CALL                             R2 2 1
       56 SETTABLEKS                       R2 R1 K14 ["SummonHandlesHider"]
       58 JUMP                             ; [+50]
       59 GETUPVAL                         R3 2
       60 GETTABLEKS                       R2 R3 K15 ["hasSeenEnough"]
       62 GETTABLEKS                       R3 R0 K8 ["_draggerContext"]
       64 CALL                             R2 1 1
       65 JUMPIF                           R2 ; [+43]
       66 GETTABLEKS                       R5 R0 K9 ["_boundingBox"]
       68 GETTABLEKS                       R4 R5 K5 ["CFrame"]
       70 GETTABLEKS                       R5 R0 K16 ["_basisOffset"]
       72 MUL                              R3 R4 R5
       73 GETTABLEKS                       R2 R3 K17 ["Position"]
       75 GETTABLEKS                       R3 R0 K8 ["_draggerContext"]
       77 MOVE                             R5 R2
       78 NAMECALL                         R3 R3 K18 ["worldToViewportPoint"]
       80 CALL                             R3 2 2
       81 GETTABLEKS                       R5 R3 K19 ["Z"]
       83 LOADN                            R6 0
       84 JUMPIFNOTLT                      R6 R5 ; [+24]
       86 GETUPVAL                         R6 0
       87 GETTABLEKS                       R5 R6 K3 ["createElement"]
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
      109 GETUPVAL                         R3 0
      110 GETTABLEKS                       R2 R3 K28 ["createFragment"]
      112 MOVE                             R3 R1
      113 CALL                             R2 1 -1
      114 RETURN                           R2 -1
      115 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
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
       27 JUMPIFNOT                        R5 ; [+121]
       28 GETTABLEKS                       R6 R0 K7 ["_handles"]
       30 GETTABLEKS                       R7 R0 K6 ["_draggingHandleId"]
       32 GETTABLE                         R5 R6 R7
       33 JUMPIFNOT                        R5 ; [+115]
       34 GETTABLEKS                       R6 R0 K7 ["_handles"]
       36 GETTABLEKS                       R7 R0 K6 ["_draggingHandleId"]
       38 GETTABLE                         R5 R6 R7
       39 GETTABLEKS                       R6 R0 K6 ["_draggingHandleId"]
       41 GETUPVAL                         R8 1
       42 GETTABLEKS                       R7 R8 K8 ["createElement"]
       44 GETUPVAL                         R8 2
       45 DUPTABLE                         R9 K18 [{"HandleCFrame", "Color", "StartAngle", "EndAngle", "Scale", "Hovered", "RadiusOffset", "TickAngle", "DraggerContext"}]
       46 GETTABLEKS                       R10 R5 K9 ["HandleCFrame"]
       48 SETTABLEKS                       R10 R9 K9 ["HandleCFrame"]
       50 GETTABLEKS                       R10 R5 K10 ["Color"]
       52 SETTABLEKS                       R10 R9 K10 ["Color"]
       54 GETTABLEKS                       R11 R0 K19 ["_startAngle"]
       56 GETTABLEKS                       R12 R0 K20 ["_draggingLastGoodDelta"]
       58 SUB                              R10 R11 R12
       59 SETTABLEKS                       R10 R9 K11 ["StartAngle"]
       61 GETTABLEKS                       R10 R0 K19 ["_startAngle"]
       63 SETTABLEKS                       R10 R9 K12 ["EndAngle"]
       65 GETTABLEKS                       R10 R0 K21 ["_scale"]
       67 SETTABLEKS                       R10 R9 K13 ["Scale"]
       69 LOADB                            R10 0
       70 SETTABLEKS                       R10 R9 K14 ["Hovered"]
       72 GETTABLEKS                       R10 R5 K15 ["RadiusOffset"]
       74 SETTABLEKS                       R10 R9 K15 ["RadiusOffset"]
       76 SETTABLEKS                       R4 R9 K16 ["TickAngle"]
       78 GETTABLEKS                       R10 R0 K1 ["_draggerContext"]
       80 SETTABLEKS                       R10 R9 K17 ["DraggerContext"]
       82 CALL                             R7 2 1
       83 SETTABLE                         R7 R2 R6
       84 GETIMPORT                        R6 K23 [pairs]
       86 GETTABLEKS                       R7 R0 K7 ["_handles"]
       88 CALL                             R6 1 3
       89 FORGPREP_NEXT                    R6
       90 GETTABLEKS                       R11 R0 K6 ["_draggingHandleId"]
       92 JUMPIFEQ                         R9 R11 ; [+44]
       94 GETUPVAL                         R13 3
       95 GETTABLE                         R12 R13 R9
       96 GETTABLEKS                       R11 R12 K24 ["Offset"]
       98 GETUPVAL                         R13 1
       99 GETTABLEKS                       R12 R13 K8 ["createElement"]
      101 GETUPVAL                         R13 2
      102 DUPTABLE                         R14 K26 [{"HandleCFrame", "Color", "Scale", "Thin", "RadiusOffset"}]
      103 GETTABLEKS                       R17 R0 K27 ["_boundingBox"]
      105 GETTABLEKS                       R16 R17 K28 ["CFrame"]
      107 MUL                              R15 R16 R11
      108 SETTABLEKS                       R15 R14 K9 ["HandleCFrame"]
      110 GETUPVAL                         R16 4
      111 GETTABLEKS                       R15 R16 K29 ["makeDimmed"]
      113 GETTABLEKS                       R16 R10 K10 ["Color"]
      115 CALL                             R15 1 1
      116 SETTABLEKS                       R15 R14 K10 ["Color"]
      118 GETTABLEKS                       R15 R0 K21 ["_scale"]
      120 SETTABLEKS                       R15 R14 K13 ["Scale"]
      122 LOADB                            R15 1
      123 SETTABLEKS                       R15 R14 K25 ["Thin"]
      125 GETUPVAL                         R16 5
      126 CALL                             R16 0 1
      127 JUMPIFNOT                        R16 ; [+3]
      128 GETTABLEKS                       R15 R10 K15 ["RadiusOffset"]
      130 JUMP                             ; [+2]
      131 GETTABLEKS                       R15 R5 K15 ["RadiusOffset"]
      133 SETTABLEKS                       R15 R14 K15 ["RadiusOffset"]
      135 CALL                             R12 2 1
      136 SETTABLE                         R12 R2 R9
      137 FORGLOOP                         R6 2 ; [-48]
      139 GETTABLEKS                       R6 R0 K30 ["_implementation"]
      141 GETTABLEKS                       R8 R0 K31 ["_lastGlobalTransformForRender"]
      143 NAMECALL                         R6 R6 K32 ["render"]
      145 CALL                             R6 2 1
      146 SETTABLEKS                       R6 R2 K33 ["ImplementationRendered"]
      148 JUMP                             ; [+49]
      149 GETIMPORT                        R5 K23 [pairs]
      151 GETTABLEKS                       R6 R0 K7 ["_handles"]
      153 CALL                             R5 1 3
      154 FORGPREP_NEXT                    R5
      155 GETTABLEKS                       R10 R9 K10 ["Color"]
      157 JUMPIFEQ                         R8 R1 ; [+2]
      159 LOADB                            R11 0 +1
      160 LOADB                            R11 1
      161 LOADNIL                          R12
      162 JUMPIFNOT                        R11 ; [+2]
      163 MOVE                             R12 R4
      164 JUMP                             ; [+6]
      165 GETUPVAL                         R14 4
      166 GETTABLEKS                       R13 R14 K29 ["makeDimmed"]
      168 MOVE                             R14 R10
      169 CALL                             R13 1 1
      170 MOVE                             R10 R13
      171 GETUPVAL                         R14 1
      172 GETTABLEKS                       R13 R14 K8 ["createElement"]
      174 GETUPVAL                         R14 2
      175 DUPTABLE                         R15 K34 [{"HandleCFrame", "Color", "Scale", "Hovered", "RadiusOffset", "TickAngle"}]
      176 GETTABLEKS                       R16 R9 K9 ["HandleCFrame"]
      178 SETTABLEKS                       R16 R15 K9 ["HandleCFrame"]
      180 SETTABLEKS                       R10 R15 K10 ["Color"]
      182 GETTABLEKS                       R16 R0 K21 ["_scale"]
      184 SETTABLEKS                       R16 R15 K13 ["Scale"]
      186 SETTABLEKS                       R11 R15 K14 ["Hovered"]
      188 GETTABLEKS                       R16 R9 K15 ["RadiusOffset"]
      190 SETTABLEKS                       R16 R15 K15 ["RadiusOffset"]
      192 SETTABLEKS                       R12 R15 K16 ["TickAngle"]
      194 CALL                             R13 2 1
      195 SETTABLE                         R13 R2 R8
      196 FORGLOOP                         R5 2 ; [-42]
      198 GETTABLEKS                       R6 R0 K35 ["_props"]
      200 GETTABLEKS                       R5 R6 K36 ["ShowBoundingBox"]
      202 JUMPIFNOT                        R5 ; [+50]
      203 GETTABLEKS                       R6 R0 K37 ["_selectionWrapper"]
      205 NAMECALL                         R6 R6 K38 ["get"]
      207 CALL                             R6 1 1
      208 LENGTH                           R5 R6
      209 LOADN                            R6 1
      210 JUMPIFNOTLT                      R6 R5 ; [+42]
      212 GETUPVAL                         R6 1
      213 GETTABLEKS                       R5 R6 K8 ["createElement"]
      215 GETUPVAL                         R6 6
      216 DUPTABLE                         R7 K42 [{"CFrame", "Size", "Color", "LineThickness", "Container"}]
      217 GETTABLEKS                       R9 R0 K27 ["_boundingBox"]
      219 GETTABLEKS                       R8 R9 K28 ["CFrame"]
      221 SETTABLEKS                       R8 R7 K28 ["CFrame"]
      223 GETTABLEKS                       R9 R0 K27 ["_boundingBox"]
      225 GETTABLEKS                       R8 R9 K39 ["Size"]
      227 SETTABLEKS                       R8 R7 K39 ["Size"]
      229 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      231 NAMECALL                         R8 R8 K43 ["getSelectionBoxColor"]
      233 CALL                             R8 1 1
      234 SETTABLEKS                       R8 R7 K10 ["Color"]
      236 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      238 NAMECALL                         R8 R8 K44 ["getHoverThickness"]
      240 CALL                             R8 1 1
      241 SETTABLEKS                       R8 R7 K40 ["LineThickness"]
      243 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      245 NAMECALL                         R8 R8 K45 ["getGuiParent"]
      247 CALL                             R8 1 1
      248 SETTABLEKS                       R8 R7 K41 ["Container"]
      250 CALL                             R5 2 1
      251 SETTABLEKS                       R5 R2 K46 ["SelectionBoundingBox"]
      253 GETTABLEKS                       R6 R0 K35 ["_props"]
      255 GETTABLEKS                       R5 R6 K47 ["Summonable"]
      257 JUMPIFNOT                        R5 ; [+167]
      258 GETTABLEKS                       R5 R0 K48 ["_summonBasisOffset"]
      260 JUMPIFNOT                        R5 ; [+95]
      261 GETTABLEKS                       R5 R0 K49 ["_summonWasSnapped"]
      263 JUMPIFNOT                        R5 ; [+52]
      264 GETUPVAL                         R6 1
      265 GETTABLEKS                       R5 R6 K8 ["createElement"]
      267 LOADK                            R6 K50 ["BoxHandleAdornment"]
      268 DUPTABLE                         R7 K56 [{"Adornee", "Color3", "CFrame", "Size", "AlwaysOnTop", "Transparency", "ZIndex"}]
      269 GETUPVAL                         R9 7
      270 GETTABLEKS                       R8 R9 K57 ["Terrain"]
      272 SETTABLEKS                       R8 R7 K51 ["Adornee"]
      274 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      276 NAMECALL                         R8 R8 K58 ["getGeometrySnapColor"]
      278 CALL                             R8 1 1
      279 SETTABLEKS                       R8 R7 K52 ["Color3"]
      281 GETTABLEKS                       R10 R0 K27 ["_boundingBox"]
      283 GETTABLEKS                       R9 R10 K28 ["CFrame"]
      285 GETTABLEKS                       R10 R0 K48 ["_summonBasisOffset"]
      287 MUL                              R8 R9 R10
      288 SETTABLEKS                       R8 R7 K28 ["CFrame"]
      290 LOADK                            R9 K59 [{0.5, 0.5, 0.5}]
      291 GETTABLEKS                       R10 R0 K21 ["_scale"]
      293 MUL                              R8 R9 R10
      294 SETTABLEKS                       R8 R7 K39 ["Size"]
      296 GETTABLEKS                       R9 R0 K60 ["_summonWasSnappedToSurface"]
      298 NOT                              R8 R9
      299 SETTABLEKS                       R8 R7 K53 ["AlwaysOnTop"]
      301 GETTABLEKS                       R9 R0 K60 ["_summonWasSnappedToSurface"]
      303 JUMPIFNOT                        R9 ; [+2]
      304 LOADN                            R8 0
      305 JUMP                             ; [+1]
      306 LOADK                            R8 K61 [0.5]
      307 SETTABLEKS                       R8 R7 K54 ["Transparency"]
      309 LOADN                            R8 0
      310 SETTABLEKS                       R8 R7 K55 ["ZIndex"]
      312 CALL                             R5 2 1
      313 SETTABLEKS                       R5 R2 K62 ["SummonSnap"]
      315 JUMP                             ; [+40]
      316 GETUPVAL                         R6 1
      317 GETTABLEKS                       R5 R6 K8 ["createElement"]
      319 GETUPVAL                         R6 8
      320 DUPTABLE                         R7 K64 [{"DraggerContext", "CFrame", "IsActive"}]
      321 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      323 SETTABLEKS                       R8 R7 K17 ["DraggerContext"]
      325 GETTABLEKS                       R10 R0 K27 ["_boundingBox"]
      327 GETTABLEKS                       R9 R10 K28 ["CFrame"]
      329 NAMECALL                         R10 R0 K65 ["_getBasisOffset"]
      331 CALL                             R10 1 1
      332 MUL                              R8 R9 R10
      333 SETTABLEKS                       R8 R7 K28 ["CFrame"]
      335 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      337 NAMECALL                         R8 R8 K66 ["shouldShowActiveInstanceHighlight"]
      339 CALL                             R8 1 1
      340 JUMPIFNOT                        R8 ; [+10]
      341 GETTABLEKS                       R10 R0 K37 ["_selectionWrapper"]
      343 NAMECALL                         R10 R10 K38 ["get"]
      345 CALL                             R10 1 1
      346 LENGTH                           R9 R10
      347 JUMPIFEQKN                       R9 K67 [1] ; [+2]
      349 LOADB                            R8 0 +1
      350 LOADB                            R8 1
      351 SETTABLEKS                       R8 R7 K63 ["IsActive"]
      353 CALL                             R5 2 1
      354 SETTABLEKS                       R5 R2 K68 ["SummonedPivot"]
      356 GETTABLEKS                       R5 R0 K6 ["_draggingHandleId"]
      358 JUMPIF                           R5 ; [+66]
      359 GETTABLEKS                       R5 R0 K48 ["_summonBasisOffset"]
      361 JUMPIFNOT                        R5 ; [+13]
      362 GETUPVAL                         R6 1
      363 GETTABLEKS                       R5 R6 K8 ["createElement"]
      365 GETUPVAL                         R6 9
      366 DUPTABLE                         R7 K69 [{"DraggerContext"}]
      367 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      369 SETTABLEKS                       R8 R7 K17 ["DraggerContext"]
      371 CALL                             R5 2 1
      372 SETTABLEKS                       R5 R2 K70 ["SummonHandlesHider"]
      374 JUMP                             ; [+50]
      375 GETUPVAL                         R6 9
      376 GETTABLEKS                       R5 R6 K71 ["hasSeenEnough"]
      378 GETTABLEKS                       R6 R0 K1 ["_draggerContext"]
      380 CALL                             R5 1 1
      381 JUMPIF                           R5 ; [+43]
      382 GETTABLEKS                       R8 R0 K27 ["_boundingBox"]
      384 GETTABLEKS                       R7 R8 K28 ["CFrame"]
      386 GETTABLEKS                       R8 R0 K72 ["_basisOffset"]
      388 MUL                              R6 R7 R8
      389 GETTABLEKS                       R5 R6 K73 ["Position"]
      391 GETTABLEKS                       R6 R0 K1 ["_draggerContext"]
      393 MOVE                             R8 R5
      394 NAMECALL                         R6 R6 K74 ["worldToViewportPoint"]
      396 CALL                             R6 2 2
      397 GETTABLEKS                       R8 R6 K75 ["Z"]
      399 LOADN                            R9 0
      400 JUMPIFNOTLT                      R9 R8 ; [+24]
      402 GETUPVAL                         R9 1
      403 GETTABLEKS                       R8 R9 K8 ["createElement"]
      405 GETUPVAL                         R9 10
      406 DUPTABLE                         R10 K77 [{"Position", "InView", "DraggerContext"}]
      407 GETIMPORT                        R11 K80 [Vector2.new]
      409 GETTABLEKS                       R12 R6 K81 ["X"]
      411 GETTABLEKS                       R13 R6 K82 ["Y"]
      413 CALL                             R11 2 1
      414 SETTABLEKS                       R11 R10 K73 ["Position"]
      416 SETTABLEKS                       R7 R10 K76 ["InView"]
      418 GETTABLEKS                       R11 R0 K1 ["_draggerContext"]
      420 SETTABLEKS                       R11 R10 K17 ["DraggerContext"]
      422 CALL                             R8 2 1
      423 SETTABLEKS                       R8 R2 K83 ["SummonHandlesNote"]
      425 GETUPVAL                         R6 1
      426 GETTABLEKS                       R5 R6 K8 ["createElement"]
      428 LOADK                            R6 K84 ["Folder"]
      429 NEWTABLE                         R7 0 0
      431 MOVE                             R8 R2
      432 CALL                             R5 3 -1
      433 RETURN                           R5 -1

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
       41 GETTABLEKS                       R9 R0 K1 ["_ballHandles"]
       43 GETTABLE                         R8 R9 R2
       44 GETTABLEKS                       R7 R8 K2 ["HandleCFrame"]
       46 LOADB                            R8 1
       47 LOADB                            R9 0
       48 NAMECALL                         R5 R0 K4 ["_orient"]
       50 CALL                             R5 4 1
       51 MOVE                             R3 R5
       52 GETUPVAL                         R6 2
       53 GETTABLEKS                       R5 R6 K5 ["_spherePoint"]
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
       78 GETTABLEKS                       R6 R0 K16 ["_boundingBox"]
       80 GETTABLEKS                       R5 R6 K11 ["CFrame"]
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
      130 GETTABLEKS                       R8 R0 K3 ["_handleCFrame"]
      132 GETTABLEKS                       R7 R8 K17 ["RightVector"]
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
      152 GETUPVAL                         R4 4
      153 GETTABLEKS                       R3 R4 K20 ["_spherePoint"]
      155 GETTABLEKS                       R4 R0 K3 ["_handleCFrame"]
      157 GETTABLEKS                       R5 R0 K21 ["_scale"]
      159 MOVE                             R6 R1
      160 CALL                             R3 3 1
      161 JUMPIFNOT                        R3 ; [+2]
      162 SETTABLEKS                       R3 R0 K22 ["_spherePointTo"]
      164 GETTABLEKS                       R5 R0 K23 ["_spherePointFrom"]
      166 GETTABLEKS                       R7 R0 K3 ["_handleCFrame"]
      168 GETTABLEKS                       R6 R7 K24 ["Position"]
      170 SUB                              R4 R5 R6
      171 GETTABLEKS                       R6 R0 K22 ["_spherePointTo"]
      173 GETTABLEKS                       R8 R0 K3 ["_handleCFrame"]
      175 GETTABLEKS                       R7 R8 K24 ["Position"]
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
      235 GETTABLEKS                       R7 R0 K3 ["_handleCFrame"]
      237 GETTABLEKS                       R6 R7 K41 ["LookVector"]
      239 NAMECALL                         R4 R3 K42 ["VectorToObjectSpace"]
      241 CALL                             R4 2 1
      242 GETTABLEKS                       R6 R0 K3 ["_handleCFrame"]
      244 GETTABLEKS                       R5 R6 K43 ["UpVector"]
      246 MOVE                             R7 R4
      247 NAMECALL                         R5 R5 K44 ["Dot"]
      249 CALL                             R5 2 1
      250 GETTABLEKS                       R7 R0 K3 ["_handleCFrame"]
      252 GETTABLEKS                       R6 R7 K41 ["LookVector"]
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
       30 GETTABLEKS                       R4 R0 K7 ["_schema"]
       32 GETTABLEKS                       R3 R4 K8 ["addUndoWaypoint"]
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
       16 GETTABLEKS                       R9 R0 K5 ["_boundingBox"]
       18 GETTABLEKS                       R8 R9 K6 ["CFrame"]
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
       37 GETTABLEKS                       R7 R0 K2 ["_handles"]
       39 DUPTABLE                         R8 K15 [{"HandleCFrame", "Color", "RadiusOffset", "Scale", "IsView"}]
       40 SETTABLEKS                       R6 R8 K11 ["HandleCFrame"]
       42 GETTABLEKS                       R9 R5 K12 ["Color"]
       44 SETTABLEKS                       R9 R8 K12 ["Color"]
       46 GETTABLEKS                       R9 R5 K13 ["RadiusOffset"]
       48 SETTABLEKS                       R9 R8 K13 ["RadiusOffset"]
       50 GETTABLEKS                       R9 R0 K16 ["_scale"]
       52 SETTABLEKS                       R9 R8 K14 ["Scale"]
       54 GETUPVAL                         R10 1
       55 CALL                             R10 0 1
       56 JUMPIFNOT                        R10 ; [+3]
       57 GETTABLEKS                       R9 R5 K9 ["IsView"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R9
       61 SETTABLEKS                       R9 R8 K9 ["IsView"]
       63 SETTABLE                         R8 R7 R4
       64 FORGLOOP                         R1 2 ; [-49]
       66 GETUPVAL                         R1 1
       67 CALL                             R1 0 1
       68 JUMPIFNOT                        R1 ; [+44]
       69 GETTABLEKS                       R1 R0 K17 ["_draggerContext"]
       71 NAMECALL                         R1 R1 K18 ["getDraggerShowTrackball"]
       73 CALL                             R1 1 1
       74 JUMPIFNOT                        R1 ; [+38]
       75 GETIMPORT                        R1 K4 [pairs]
       77 GETUPVAL                         R2 2
       78 CALL                             R1 1 3
       79 FORGPREP_NEXT                    R1
       80 GETTABLEKS                       R6 R0 K19 ["_ballHandles"]
       82 DUPTABLE                         R7 K20 [{"HandleCFrame", "Color", "Scale"}]
       83 GETTABLEKS                       R13 R0 K5 ["_boundingBox"]
       85 GETTABLEKS                       R12 R13 K6 ["CFrame"]
       87 NAMECALL                         R13 R0 K7 ["_getBasisOffset"]
       89 CALL                             R13 1 1
       90 MUL                              R11 R12 R13
       91 GETTABLEKS                       R12 R5 K8 ["Offset"]
       93 MUL                              R10 R11 R12
       94 GETTABLEKS                       R11 R5 K9 ["IsView"]
       96 NAMECALL                         R8 R0 K10 ["_orient"]
       98 CALL                             R8 3 1
       99 SETTABLEKS                       R8 R7 K11 ["HandleCFrame"]
      101 GETTABLEKS                       R8 R5 K12 ["Color"]
      103 SETTABLEKS                       R8 R7 K12 ["Color"]
      105 GETTABLEKS                       R8 R0 K16 ["_scale"]
      107 SETTABLEKS                       R8 R7 K14 ["Scale"]
      109 SETTABLE                         R7 R6 R4
      110 FORGLOOP                         R1 2 ; [-31]
      112 RETURN                           R0 0
      113 GETUPVAL                         R2 1
      114 CALL                             R2 0 1
      115 JUMPIFNOT                        R2 ; [+3]
      116 NEWTABLE                         R1 0 0
      118 JUMP                             ; [+1]
      119 LOADNIL                          R1
      120 SETTABLEKS                       R1 R0 K19 ["_ballHandles"]
      122 RETURN                           R0 0

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
        0 GETTABLEKS                       R2 R0 K0 ["_implementation"]
        2 GETTABLEKS                       R1 R2 K1 ["getPriority"]
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETTABLEKS                       R2 R0 K0 ["_implementation"]
        7 GETTABLEKS                       R1 R2 K1 ["getPriority"]
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
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETTABLEKS                       R3 R1 K6 ["Parent"]
       15 GETTABLEKS                       R2 R3 K6 ["Parent"]
       17 GETIMPORT                        R3 K8 [require]
       19 GETTABLEKS                       R5 R2 K9 ["Packages"]
       21 GETTABLEKS                       R4 R5 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K8 [require]
       26 GETTABLEKS                       R6 R1 K11 ["Utility"]
       28 GETTABLEKS                       R5 R6 K12 ["Colors"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K8 [require]
       33 GETTABLEKS                       R7 R1 K11 ["Utility"]
       35 GETTABLEKS                       R6 R7 K13 ["Math"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K8 [require]
       40 GETTABLEKS                       R8 R1 K14 ["Components"]
       42 GETTABLEKS                       R7 R8 K15 ["StandaloneSelectionBox"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K8 [require]
       47 GETTABLEKS                       R9 R1 K11 ["Utility"]
       49 GETTABLEKS                       R8 R9 K16 ["roundRotation"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K8 [require]
       54 GETTABLEKS                       R10 R1 K11 ["Utility"]
       56 GETTABLEKS                       R9 R10 K17 ["snapRotationToPrimaryDirection"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K8 [require]
       61 GETTABLEKS                       R11 R1 K11 ["Utility"]
       63 GETTABLEKS                       R10 R11 K18 ["HotkeyHelpBuilder"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K8 [require]
       68 GETTABLEKS                       R12 R1 K14 ["Components"]
       70 GETTABLEKS                       R11 R12 K19 ["WireframeHandleAdornment"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K8 [require]
       75 GETTABLEKS                       R13 R1 K14 ["Components"]
       77 GETTABLEKS                       R12 R13 K20 ["RotateHandleView"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K8 [require]
       82 GETTABLEKS                       R14 R1 K14 ["Components"]
       84 GETTABLEKS                       R13 R14 K21 ["RotateBallHandleView"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K8 [require]
       89 GETTABLEKS                       R15 R1 K14 ["Components"]
       91 GETTABLEKS                       R14 R15 K22 ["SummonHandlesNote"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K8 [require]
       96 GETTABLEKS                       R16 R1 K14 ["Components"]
       98 GETTABLEKS                       R15 R16 K23 ["SummonHandlesHider"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K8 [require]
      103 GETTABLEKS                       R17 R1 K14 ["Components"]
      105 GETTABLEKS                       R16 R17 K24 ["DraggedPivot"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K8 [require]
      110 GETTABLEKS                       R18 R1 K14 ["Components"]
      112 GETTABLEKS                       R17 R18 K25 ["SummonedPivot"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K8 [require]
      117 GETTABLEKS                       R19 R1 K14 ["Components"]
      119 GETTABLEKS                       R18 R19 K26 ["HotkeyUsageInfo"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K8 [require]
      124 GETTABLEKS                       R20 R1 K27 ["Flags"]
      126 GETTABLEKS                       R19 R20 K28 ["getFFlagDraggerImprovements"]
      128 CALL                             R18 1 1
      129 GETIMPORT                        R19 K8 [require]
      131 GETTABLEKS                       R21 R1 K27 ["Flags"]
      133 GETTABLEKS                       R20 R21 K29 ["getFFlagNextGenDraggers"]
      135 CALL                             R19 1 1
      136 GETIMPORT                        R20 K8 [require]
      138 GETTABLEKS                       R22 R1 K27 ["Flags"]
      140 GETTABLEKS                       R21 R22 K30 ["getFFlagDraggerRotateReference"]
      142 CALL                             R20 1 1
      143 NEWTABLE                         R21 32 0
      145 SETTABLEKS                       R21 R21 K31 ["__index"]
      147 GETIMPORT                        R22 K34 [table.freeze]
      149 DUPTABLE                         R23 K39 [{"XAxis", "YAxis", "ZAxis", "VAxis"}]
      150 DUPTABLE                         R24 K43 [{"Offset", "Color", "RadiusOffset"}]
      151 GETIMPORT                        R25 K46 [CFrame.fromMatrix]
      153 FASTCALL                         VECTOR ; [+2]
      154 GETIMPORT                        R26 K49 [Vector3.new]
      156 CALL                             R26 0 1
      157 LOADK                            R27 K50 [{1, 0, 0}]
      158 LOADK                            R28 K51 [{0, 1, 0}]
      159 LOADK                            R29 K52 [{0, 0, 1}]
      160 CALL                             R25 4 1
      161 SETTABLEKS                       R25 R24 K40 ["Offset"]
      163 GETTABLEKS                       R25 R4 K53 ["X_AXIS"]
      165 SETTABLEKS                       R25 R24 K41 ["Color"]
      167 LOADN                            R25 0
      168 SETTABLEKS                       R25 R24 K42 ["RadiusOffset"]
      170 SETTABLEKS                       R24 R23 K35 ["XAxis"]
      172 DUPTABLE                         R24 K43 [{"Offset", "Color", "RadiusOffset"}]
      173 GETIMPORT                        R25 K46 [CFrame.fromMatrix]
      175 FASTCALL                         VECTOR ; [+2]
      176 GETIMPORT                        R26 K49 [Vector3.new]
      178 CALL                             R26 0 1
      179 LOADK                            R27 K51 [{0, 1, 0}]
      180 LOADK                            R28 K52 [{0, 0, 1}]
      181 LOADK                            R29 K50 [{1, 0, 0}]
      182 CALL                             R25 4 1
      183 SETTABLEKS                       R25 R24 K40 ["Offset"]
      185 GETTABLEKS                       R25 R4 K54 ["Y_AXIS"]
      187 SETTABLEKS                       R25 R24 K41 ["Color"]
      189 LOADK                            R25 K55 [0.01]
      190 SETTABLEKS                       R25 R24 K42 ["RadiusOffset"]
      192 SETTABLEKS                       R24 R23 K36 ["YAxis"]
      194 DUPTABLE                         R24 K43 [{"Offset", "Color", "RadiusOffset"}]
      195 GETIMPORT                        R25 K46 [CFrame.fromMatrix]
      197 FASTCALL                         VECTOR ; [+2]
      198 GETIMPORT                        R26 K49 [Vector3.new]
      200 CALL                             R26 0 1
      201 LOADK                            R27 K52 [{0, 0, 1}]
      202 LOADK                            R28 K50 [{1, 0, 0}]
      203 LOADK                            R29 K51 [{0, 1, 0}]
      204 CALL                             R25 4 1
      205 SETTABLEKS                       R25 R24 K40 ["Offset"]
      207 GETTABLEKS                       R25 R4 K56 ["Z_AXIS"]
      209 SETTABLEKS                       R25 R24 K41 ["Color"]
      211 LOADK                            R25 K57 [0.02]
      212 SETTABLEKS                       R25 R24 K42 ["RadiusOffset"]
      214 SETTABLEKS                       R24 R23 K37 ["ZAxis"]
      216 MOVE                             R25 R19
      217 CALL                             R25 0 1
      218 JUMPIF                           R25 ; [+2]
      219 LOADNIL                          R24
      220 JUMP                             ; [+15]
      221 DUPTABLE                         R24 K59 [{"Offset", "Color", "RadiusOffset", "IsView"}]
      222 GETIMPORT                        R25 K61 [CFrame.identity]
      224 SETTABLEKS                       R25 R24 K40 ["Offset"]
      226 GETTABLEKS                       R25 R4 K62 ["WHITE"]
      228 SETTABLEKS                       R25 R24 K41 ["Color"]
      230 LOADK                            R25 K63 [0.5]
      231 SETTABLEKS                       R25 R24 K42 ["RadiusOffset"]
      233 LOADB                            R25 1
      234 SETTABLEKS                       R25 R24 K58 ["IsView"]
      236 SETTABLEKS                       R24 R23 K38 ["VAxis"]
      238 CALL                             R22 1 1
      239 MOVE                             R24 R19
      240 CALL                             R24 0 1
      241 JUMPIF                           R24 ; [+2]
      242 LOADNIL                          R23
      243 JUMP                             ; [+15]
      244 GETIMPORT                        R23 K34 [table.freeze]
      246 DUPTABLE                         R24 K65 [{"Trackball"}]
      247 DUPTABLE                         R25 K66 [{"Offset", "Color"}]
      248 GETIMPORT                        R26 K61 [CFrame.identity]
      250 SETTABLEKS                       R26 R25 K40 ["Offset"]
      252 GETTABLEKS                       R26 R4 K62 ["WHITE"]
      254 SETTABLEKS                       R26 R25 K41 ["Color"]
      256 SETTABLEKS                       R25 R24 K64 ["Trackball"]
      258 CALL                             R23 1 1
      259 DUPCLOSURE                       R24 K67 [PROTO_0]
      260 DUPCLOSURE                       R25 K68 [PROTO_1]
      261 CAPTURE                          VAL R7
      262 DUPCLOSURE                       R26 K69 [PROTO_2]
      263 DUPCLOSURE                       R27 K70 [PROTO_3]
      264 CAPTURE                          VAL R5
      265 DUPCLOSURE                       R28 K71 [PROTO_4]
      266 DUPCLOSURE                       R29 K72 [PROTO_5]
      267 SETTABLEKS                       R29 R21 K73 ["_orient"]
      269 DUPCLOSURE                       R29 K74 [PROTO_6]
      270 SETTABLEKS                       R29 R21 K75 ["_slideAngle"]
      272 DUPCLOSURE                       R29 K76 [PROTO_7]
      273 CAPTURE                          VAL R19
      274 CAPTURE                          VAL R21
      275 SETTABLEKS                       R29 R21 K48 ["new"]
      277 DUPCLOSURE                       R29 K77 [PROTO_8]
      278 CAPTURE                          VAL R18
      279 CAPTURE                          VAL R8
      280 SETTABLEKS                       R29 R21 K78 ["_summonHandles"]
      282 DUPCLOSURE                       R29 K79 [PROTO_9]
      283 CAPTURE                          VAL R18
      284 SETTABLEKS                       R29 R21 K80 ["_endSummon"]
      286 DUPCLOSURE                       R29 K81 [PROTO_10]
      287 CAPTURE                          VAL R18
      288 SETTABLEKS                       R29 R21 K82 ["beginSummon"]
      290 DUPCLOSURE                       R29 K83 [PROTO_11]
      291 CAPTURE                          VAL R18
      292 SETTABLEKS                       R29 R21 K84 ["endSummon"]
      294 DUPCLOSURE                       R29 K85 [PROTO_12]
      295 CAPTURE                          VAL R18
      296 SETTABLEKS                       R29 R21 K86 ["_getBasisOffset"]
      298 DUPCLOSURE                       R29 K87 [PROTO_13]
      299 CAPTURE                          VAL R18
      300 SETTABLEKS                       R29 R21 K88 ["update"]
      302 DUPCLOSURE                       R29 K89 [PROTO_14]
      303 SETTABLEKS                       R29 R21 K90 ["shouldBiasTowardsObjects"]
      305 DUPCLOSURE                       R29 K91 [PROTO_15]
      306 CAPTURE                          VAL R11
      307 CAPTURE                          VAL R19
      308 CAPTURE                          VAL R12
      309 SETTABLEKS                       R29 R21 K92 ["hitTest"]
      311 DUPCLOSURE                       R29 K93 [PROTO_16]
      312 CAPTURE                          VAL R9
      313 CAPTURE                          VAL R3
      314 CAPTURE                          VAL R17
      315 SETTABLEKS                       R29 R21 K94 ["_renderHotkeyHelp"]
      317 DUPCLOSURE                       R29 K95 [PROTO_17]
      318 SETTABLEKS                       R29 R21 K96 ["_getTickAngle"]
      320 DUPCLOSURE                       R29 K97 [PROTO_19]
      321 CAPTURE                          VAL R19
      322 CAPTURE                          VAL R3
      323 CAPTURE                          VAL R11
      324 CAPTURE                          VAL R10
      325 CAPTURE                          VAL R22
      326 CAPTURE                          VAL R4
      327 SETTABLEKS                       R29 R21 K98 ["_renderDraggingHandles"]
      329 DUPCLOSURE                       R29 K99 [PROTO_20]
      330 CAPTURE                          VAL R19
      331 CAPTURE                          VAL R3
      332 CAPTURE                          VAL R12
      333 SETTABLEKS                       R29 R21 K100 ["_renderDraggingBallHandles"]
      335 DUPCLOSURE                       R29 K101 [PROTO_21]
      336 CAPTURE                          VAL R3
      337 SETTABLEKS                       R29 R21 K102 ["_renderDragging"]
      339 DUPCLOSURE                       R29 K103 [PROTO_22]
      340 CAPTURE                          VAL R3
      341 SETTABLEKS                       R29 R21 K104 ["_renderDraggingBall"]
      343 DUPCLOSURE                       R29 K105 [PROTO_23]
      344 CAPTURE                          VAL R4
      345 CAPTURE                          VAL R19
      346 CAPTURE                          VAL R3
      347 CAPTURE                          VAL R11
      348 CAPTURE                          VAL R12
      349 SETTABLEKS                       R29 R21 K106 ["_renderHovering"]
      351 DUPCLOSURE                       R29 K107 [PROTO_24]
      352 CAPTURE                          VAL R19
      353 SETTABLEKS                       R29 R21 K108 ["_renderDragOrHover"]
      355 DUPCLOSURE                       R29 K109 [PROTO_25]
      356 CAPTURE                          VAL R3
      357 CAPTURE                          VAL R6
      358 SETTABLEKS                       R29 R21 K110 ["_renderBoundingBox"]
      360 DUPCLOSURE                       R29 K111 [PROTO_26]
      361 CAPTURE                          VAL R3
      362 CAPTURE                          VAL R16
      363 CAPTURE                          VAL R14
      364 CAPTURE                          VAL R13
      365 SETTABLEKS                       R29 R21 K112 ["_renderSummon"]
      367 DUPCLOSURE                       R29 K113 [PROTO_27]
      368 CAPTURE                          VAL R3
      369 SETTABLEKS                       R29 R21 K114 ["renderNEW"]
      371 DUPCLOSURE                       R29 K115 [PROTO_28]
      372 CAPTURE                          VAL R18
      373 CAPTURE                          VAL R3
      374 CAPTURE                          VAL R11
      375 CAPTURE                          VAL R22
      376 CAPTURE                          VAL R4
      377 CAPTURE                          VAL R19
      378 CAPTURE                          VAL R6
      379 CAPTURE                          VAL R0
      380 CAPTURE                          VAL R15
      381 CAPTURE                          VAL R14
      382 CAPTURE                          VAL R13
      383 SETTABLEKS                       R29 R21 K116 ["render"]
      385 DUPCLOSURE                       R29 K117 [PROTO_29]
      386 CAPTURE                          VAL R19
      387 CAPTURE                          VAL R27
      388 CAPTURE                          VAL R12
      389 CAPTURE                          VAL R18
      390 SETTABLEKS                       R29 R21 K118 ["mouseDown"]
      392 DUPCLOSURE                       R29 K119 [PROTO_30]
      393 CAPTURE                          VAL R19
      394 CAPTURE                          VAL R27
      395 CAPTURE                          VAL R18
      396 CAPTURE                          VAL R25
      397 CAPTURE                          VAL R12
      398 SETTABLEKS                       R29 R21 K120 ["mouseDrag"]
      400 DUPCLOSURE                       R29 K121 [PROTO_31]
      401 CAPTURE                          VAL R18
      402 CAPTURE                          VAL R19
      403 CAPTURE                          VAL R20
      404 SETTABLEKS                       R29 R21 K122 ["mouseUp"]
      406 DUPCLOSURE                       R29 K123 [PROTO_32]
      407 CAPTURE                          VAL R22
      408 CAPTURE                          VAL R19
      409 CAPTURE                          VAL R23
      410 SETTABLEKS                       R29 R21 K124 ["_updateHandles"]
      412 GETIMPORT                        R29 K34 [table.freeze]
      414 NEWTABLE                         R30 2 0
      416 GETIMPORT                        R31 K128 [Enum.KeyCode.RightShift]
      418 LOADB                            R32 1
      419 SETTABLE                         R32 R30 R31
      420 GETIMPORT                        R31 K130 [Enum.KeyCode.LeftShift]
      422 LOADB                            R32 1
      423 SETTABLE                         R32 R30 R31
      424 CALL                             R29 1 1
      425 DUPCLOSURE                       R30 K131 [PROTO_33]
      426 CAPTURE                          VAL R18
      427 CAPTURE                          VAL R29
      428 SETTABLEKS                       R30 R21 K132 ["keyDown"]
      430 DUPCLOSURE                       R30 K133 [PROTO_34]
      431 CAPTURE                          VAL R18
      432 CAPTURE                          VAL R29
      433 SETTABLEKS                       R30 R21 K134 ["keyUp"]
      435 DUPCLOSURE                       R30 K135 [PROTO_35]
      436 SETTABLEKS                       R30 R21 K136 ["getPriority"]
      438 RETURN                           R21 1
