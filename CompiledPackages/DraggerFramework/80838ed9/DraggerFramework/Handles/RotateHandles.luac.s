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
        0 SETTABLEKS                       R1 R0 K0 ["_summonBasisOffset"]
        2 RETURN                           R0 0

PROTO_9:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_summonBasisOffset"]
        3 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_summonBasisOffset"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R3 R0 K1 ["_basisOffset"]
        5 MUL                              R2 R3 R1
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R0 K1 ["_basisOffset"]
        9 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["_draggingHandleId"]
        2 JUMPIF                           R3 ; [+50]
        3 NAMECALL                         R3 R2 K1 ["getBoundingBox"]
        5 CALL                             R3 1 3
        6 DUPTABLE                         R6 K4 [{"Size", "CFrame"}]
        7 SETTABLEKS                       R5 R6 K2 ["Size"]
        9 GETIMPORT                        R8 K6 [CFrame.new]
       11 MOVE                             R9 R4
       12 CALL                             R8 1 1
       13 MUL                              R7 R3 R8
       14 SETTABLEKS                       R7 R6 K3 ["CFrame"]
       16 SETTABLEKS                       R6 R0 K7 ["_boundingBox"]
       18 GETIMPORT                        R6 K6 [CFrame.new]
       20 MINUS                            R7 R4
       21 CALL                             R6 1 1
       22 SETTABLEKS                       R6 R0 K8 ["_basisOffset"]
       24 SETTABLEKS                       R2 R0 K9 ["_selectionInfo"]
       26 NAMECALL                         R6 R1 K10 ["getSelectionWrapper"]
       28 CALL                             R6 1 1
       29 SETTABLEKS                       R6 R0 K11 ["_selectionWrapper"]
       31 NAMECALL                         R6 R1 K12 ["getSchema"]
       33 CALL                             R6 1 1
       34 SETTABLEKS                       R6 R0 K13 ["_schema"]
       36 GETTABLEKS                       R6 R0 K14 ["_draggerContext"]
       38 GETTABLEKS                       R9 R0 K7 ["_boundingBox"]
       40 GETTABLEKS                       R9 R9 K3 ["CFrame"]
       42 NAMECALL                         R10 R0 K15 ["_getBasisOffset"]
       44 CALL                             R10 1 1
       45 MUL                              R8 R9 R10
       46 GETTABLEKS                       R8 R8 K16 ["Position"]
       48 NAMECALL                         R6 R6 K17 ["getHandleScale"]
       50 CALL                             R6 2 1
       51 SETTABLEKS                       R6 R0 K18 ["_scale"]
       53 NAMECALL                         R3 R0 K19 ["_updateHandles"]
       55 CALL                             R3 1 0
       56 RETURN                           R0 0

PROTO_12:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_13:
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

PROTO_14:
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
       39 LOADNIL                          R1
       40 RETURN                           R1 1

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["_props"]
        2 GETTABLEKS                       R1 R1 K1 ["ShowBoundingBox"]
        4 JUMPIFNOT                        R1 ; [+50]
        5 GETTABLEKS                       R2 R0 K2 ["_selectionWrapper"]
        7 NAMECALL                         R2 R2 K3 ["get"]
        9 CALL                             R2 1 1
       10 LENGTH                           R1 R2
       11 LOADN                            R2 1
       12 JUMPIFNOTLT                      R2 R1 ; [+42]
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
       33 LOADB                            R6 0
       34 NAMECALL                         R4 R4 K13 ["getSelectionBoxColor"]
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K7 ["Color"]
       39 GETTABLEKS                       R4 R0 K12 ["_draggerContext"]
       41 NAMECALL                         R4 R4 K14 ["getHoverThickness"]
       43 CALL                             R4 1 1
       44 SETTABLEKS                       R4 R3 K8 ["LineThickness"]
       46 GETTABLEKS                       R4 R0 K12 ["_draggerContext"]
       48 NAMECALL                         R4 R4 K15 ["getGuiParent"]
       50 CALL                             R4 1 1
       51 SETTABLEKS                       R4 R3 K9 ["Container"]
       53 CALL                             R1 2 -1
       54 RETURN                           R1 -1
       55 LOADNIL                          R1
       56 RETURN                           R1 1

PROTO_24:
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
      115 LOADNIL                          R1
      116 RETURN                           R1 1

PROTO_25:
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

PROTO_26:
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
       84 SETTABLEKS                       R4 R0 K18 ["_startAngle"]
       86 GETTABLEKS                       R5 R0 K19 ["_implementation"]
       88 GETTABLEKS                       R7 R0 K20 ["_selectionWrapper"]
       90 NAMECALL                         R7 R7 K21 ["get"]
       92 CALL                             R7 1 1
       93 GETTABLEKS                       R8 R0 K22 ["_selectionInfo"]
       95 NAMECALL                         R5 R5 K23 ["beginDrag"]
       97 CALL                             R5 3 0
       98 RETURN                           R0 0

PROTO_27:
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
       33 JUMPIFNOT                        R3 ; [+64]
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R4 R0 K3 ["_handleCFrame"]
       37 GETTABLEKS                       R5 R1 K4 ["Unit"]
       39 CALL                             R3 2 1
       40 JUMPIF                           R3 ; [+1]
       41 RETURN                           R0 0
       42 GETTABLEKS                       R4 R0 K5 ["_draggerContext"]
       44 NAMECALL                         R4 R4 K6 ["getRotateIncrement"]
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R7 R0 K7 ["_startAngle"]
       49 SUB                              R6 R3 R7
       50 LOADN                            R7 0
       51 JUMPIFNOTLT                      R7 R4 ; [+29]
       53 FASTCALL1                        MATH_RAD R4 ; [+3]
       54 MOVE                             R8 R4
       55 GETIMPORT                        R7 K10 [math.rad]
       57 CALL                             R7 1 1
       58 DIV                              R11 R6 R7
       59 ADDK                             R10 R11 K11 [0.5]
       60 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       61 GETIMPORT                        R9 K13 [math.floor]
       63 CALL                             R9 1 1
       64 MUL                              R8 R9 R7
       65 SUBK                             R10 R6 K14 [6.28318530717959]
       66 FASTCALL1                        MATH_ABS R10 ; [+2]
       67 GETIMPORT                        R9 K16 [math.abs]
       69 CALL                             R9 1 1
       70 SUB                              R11 R6 R8
       71 FASTCALL1                        MATH_ABS R11 ; [+2]
       72 GETIMPORT                        R10 K16 [math.abs]
       74 CALL                             R10 1 1
       75 JUMPIFNOTLT                      R9 R10 ; [+3]
       77 LOADN                            R5 0
       78 JUMP                             ; [+3]
       79 MOVE                             R5 R8
       80 JUMP                             ; [+1]
       81 MOVE                             R5 R6
       82 GETUPVAL                         R6 2
       83 GETTABLEKS                       R7 R0 K3 ["_handleCFrame"]
       85 GETTABLEKS                       R8 R0 K3 ["_handleCFrame"]
       87 GETTABLEKS                       R8 R8 K17 ["RightVector"]
       89 MOVE                             R9 R5
       90 GETTABLEKS                       R10 R0 K5 ["_draggerContext"]
       92 NAMECALL                         R10 R10 K6 ["getRotateIncrement"]
       94 CALL                             R10 1 -1
       95 CALL                             R6 -1 1
       96 MOVE                             R2 R6
       97 JUMP                             ; [+91]
       98 GETTABLEKS                       R5 R0 K2 ["_ballHandles"]
      100 GETTABLEKS                       R6 R0 K1 ["_draggingHandleId"]
      102 GETTABLE                         R4 R5 R6
      103 FASTCALL2K                       ASSERT R4 K18 ; [+4]
      105 LOADK                            R5 K18 ["Should exist"]
      106 GETIMPORT                        R3 K20 [assert]
      108 CALL                             R3 2 0
      109 GETUPVAL                         R3 3
      110 GETTABLEKS                       R3 R3 K21 ["_spherePoint"]
      112 GETTABLEKS                       R4 R0 K3 ["_handleCFrame"]
      114 GETTABLEKS                       R5 R0 K22 ["_scale"]
      116 MOVE                             R6 R1
      117 CALL                             R3 3 1
      118 JUMPIFNOT                        R3 ; [+2]
      119 SETTABLEKS                       R3 R0 K23 ["_spherePointTo"]
      121 GETTABLEKS                       R6 R0 K24 ["_spherePointFrom"]
      123 FASTCALL2K                       ASSERT R6 K25 ; [+4]
      125 LOADK                            R7 K25 ["Non-nil during a mouse drag"]
      126 GETIMPORT                        R5 K20 [assert]
      128 CALL                             R5 2 1
      129 GETTABLEKS                       R6 R0 K3 ["_handleCFrame"]
      131 GETTABLEKS                       R6 R6 K26 ["Position"]
      133 SUB                              R4 R5 R6
      134 GETTABLEKS                       R7 R0 K23 ["_spherePointTo"]
      136 FASTCALL2K                       ASSERT R7 K25 ; [+4]
      138 LOADK                            R8 K25 ["Non-nil during a mouse drag"]
      139 GETIMPORT                        R6 K20 [assert]
      141 CALL                             R6 2 1
      142 GETTABLEKS                       R7 R0 K3 ["_handleCFrame"]
      144 GETTABLEKS                       R7 R7 K26 ["Position"]
      146 SUB                              R5 R6 R7
      147 GETIMPORT                        R6 K29 [CFrame.fromRotationBetweenVectors]
      149 MOVE                             R7 R4
      150 MOVE                             R8 R5
      151 CALL                             R6 2 1
      152 NAMECALL                         R7 R6 K30 ["ToAxisAngle"]
      154 CALL                             R7 1 2
      155 LOADN                            R10 1
      156 GETTABLEKS                       R12 R5 K31 ["Magnitude"]
      158 GETTABLEKS                       R13 R4 K31 ["Magnitude"]
      160 DIV                              R11 R12 R13
      161 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
      163 GETIMPORT                        R9 K33 [math.max]
      165 CALL                             R9 2 1
      166 GETIMPORT                        R10 K35 [CFrame.fromAxisAngle]
      168 MOVE                             R11 R7
      169 MUL                              R12 R8 R9
      170 CALL                             R10 2 1
      171 MOVE                             R6 R10
      172 GETTABLEKS                       R10 R0 K3 ["_handleCFrame"]
      174 MOVE                             R11 R6
      175 GETTABLEKS                       R13 R10 K36 ["Rotation"]
      177 NAMECALL                         R13 R13 K37 ["Inverse"]
      179 CALL                             R13 1 1
      180 MUL                              R12 R13 R11
      181 GETTABLEKS                       R13 R10 K36 ["Rotation"]
      183 MUL                              R11 R12 R13
      184 MUL                              R12 R10 R11
      185 NAMECALL                         R13 R10 K37 ["Inverse"]
      187 CALL                             R13 1 1
      188 MUL                              R2 R12 R13
      189 GETTABLEKS                       R3 R0 K38 ["_implementation"]
      191 MOVE                             R5 R2
      192 NAMECALL                         R3 R3 K39 ["updateDrag"]
      194 CALL                             R3 2 1
      195 GETTABLEKS                       R4 R0 K40 ["_boundingBox"]
      197 GETTABLEKS                       R6 R0 K41 ["_originalBoundingBoxCFrame"]
      199 MUL                              R5 R3 R6
      200 SETTABLEKS                       R5 R4 K27 ["CFrame"]
      202 SETTABLEKS                       R3 R0 K42 ["_lastGlobalTransformForRender"]
      204 GETTABLEKS                       R6 R0 K3 ["_handleCFrame"]
      206 GETTABLEKS                       R6 R6 K43 ["LookVector"]
      208 NAMECALL                         R4 R3 K44 ["VectorToObjectSpace"]
      210 CALL                             R4 2 1
      211 GETTABLEKS                       R5 R0 K3 ["_handleCFrame"]
      213 GETTABLEKS                       R5 R5 K45 ["UpVector"]
      215 MOVE                             R7 R4
      216 NAMECALL                         R5 R5 K46 ["Dot"]
      218 CALL                             R5 2 1
      219 GETTABLEKS                       R6 R0 K3 ["_handleCFrame"]
      221 GETTABLEKS                       R6 R6 K43 ["LookVector"]
      223 MOVE                             R8 R4
      224 NAMECALL                         R6 R6 K46 ["Dot"]
      226 CALL                             R6 2 1
      227 FASTCALL2                        MATH_ATAN2 R5 R6 ; [+5]
      229 MOVE                             R9 R5
      230 MOVE                             R10 R6
      231 GETIMPORT                        R8 K48 [math.atan2]
      233 CALL                             R8 2 1
      234 MINUS                            R7 R8
      235 SETTABLEKS                       R7 R0 K49 ["_draggingLastGoodDelta"]
      237 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["_draggingHandleId"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+6]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R0 K1 ["_spherePointFrom"]
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R0 K2 ["_spherePointTo"]
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R0 K0 ["_draggingHandleId"]
       16 GETTABLEKS                       R2 R0 K3 ["_implementation"]
       18 NAMECALL                         R2 R2 K4 ["endDrag"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R0 K5 ["_schema"]
       23 GETTABLEKS                       R3 R3 K6 ["addUndoWaypoint"]
       25 GETTABLEKS                       R4 R0 K7 ["_draggerContext"]
       27 LOADK                            R5 K8 ["Axis Rotate Selection"]
       28 CALL                             R3 2 0
       29 GETUPVAL                         R3 1
       30 CALL                             R3 0 1
       31 JUMPIFNOT                        R3 ; [+9]
       32 GETTABLEKS                       R3 R0 K7 ["_draggerContext"]
       34 NAMECALL                         R3 R3 K9 ["shouldUseLocalSpace"]
       36 CALL                             R3 1 1
       37 JUMPIFNOT                        R3 ; [+1]
       38 RETURN                           R2 1
       39 LOADNIL                          R3
       40 RETURN                           R3 1
       41 RETURN                           R2 1

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOT                        R2 ; [+14]
        3 GETTABLEKS                       R2 R0 K0 ["_draggingHandleId"]
        5 JUMPIFNOT                        R2 ; [+30]
        6 GETTABLEKS                       R4 R0 K1 ["_draggerContext"]
        8 NAMECALL                         R4 R4 K2 ["getMouseRay"]
       10 CALL                             R4 1 -1
       11 NAMECALL                         R2 R0 K3 ["mouseDrag"]
       13 CALL                             R2 -1 0
       14 LOADB                            R2 1
       15 RETURN                           R2 1
       16 JUMP                             ; [+19]
       17 GETIMPORT                        R2 K7 [Enum.KeyCode.H]
       19 JUMPIFNOTEQ                      R1 R2 ; [+16]
       21 GETTABLEKS                       R2 R0 K1 ["_draggerContext"]
       23 LOADK                            R4 K8 ["HotkeyUsageHidden"]
       24 GETTABLEKS                       R6 R0 K1 ["_draggerContext"]
       26 LOADK                            R8 K8 ["HotkeyUsageHidden"]
       27 NAMECALL                         R6 R6 K9 ["getSetting"]
       29 CALL                             R6 2 1
       30 NOT                              R5 R6
       31 NAMECALL                         R2 R2 K10 ["setSetting"]
       33 CALL                             R2 3 0
       34 LOADB                            R2 1
       35 RETURN                           R2 1
       36 LOADB                            R2 0
       37 RETURN                           R2 1

PROTO_31:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOT                        R2 ; [+13]
        3 GETTABLEKS                       R2 R0 K0 ["_draggingHandleId"]
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETTABLEKS                       R4 R0 K1 ["_draggerContext"]
        8 NAMECALL                         R4 R4 K2 ["getMouseRay"]
       10 CALL                             R4 1 -1
       11 NAMECALL                         R2 R0 K3 ["mouseDrag"]
       13 CALL                             R2 -1 0
       14 LOADB                            R2 1
       15 RETURN                           R2 1
       16 LOADB                            R2 0
       17 RETURN                           R2 1

PROTO_32:
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Packages"]
       15 GETTABLEKS                       R3 R3 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Utility"]
       22 GETTABLEKS                       R4 R4 K8 ["Colors"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R5 R0 K7 ["Utility"]
       29 GETTABLEKS                       R5 R5 K9 ["Math"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Components"]
       36 GETTABLEKS                       R6 R6 K11 ["StandaloneSelectionBox"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K4 [require]
       41 GETTABLEKS                       R7 R0 K7 ["Utility"]
       43 GETTABLEKS                       R7 R7 K12 ["roundRotation"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K4 [require]
       48 GETTABLEKS                       R8 R0 K7 ["Utility"]
       50 GETTABLEKS                       R8 R8 K13 ["HotkeyHelpBuilder"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K4 [require]
       55 GETTABLEKS                       R9 R0 K10 ["Components"]
       57 GETTABLEKS                       R9 R9 K14 ["WireframeHandleAdornment"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K4 [require]
       62 GETTABLEKS                       R10 R0 K10 ["Components"]
       64 GETTABLEKS                       R10 R10 K15 ["RotateHandleView"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K4 [require]
       69 GETTABLEKS                       R11 R0 K10 ["Components"]
       71 GETTABLEKS                       R11 R11 K16 ["RotateBallHandleView"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K4 [require]
       76 GETTABLEKS                       R12 R0 K10 ["Components"]
       78 GETTABLEKS                       R12 R12 K17 ["SummonHandlesNote"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K4 [require]
       83 GETTABLEKS                       R13 R0 K10 ["Components"]
       85 GETTABLEKS                       R13 R13 K18 ["SummonHandlesHider"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K4 [require]
       90 GETTABLEKS                       R14 R0 K10 ["Components"]
       92 GETTABLEKS                       R14 R14 K19 ["SummonedPivot"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K4 [require]
       97 GETTABLEKS                       R15 R0 K10 ["Components"]
       99 GETTABLEKS                       R15 R15 K20 ["HotkeyUsageInfo"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K4 [require]
      104 GETTABLEKS                       R16 R0 K21 ["Flags"]
      106 GETTABLEKS                       R16 R16 K22 ["getFFlagNextGenDraggers"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K4 [require]
      111 GETTABLEKS                       R17 R0 K21 ["Flags"]
      113 GETTABLEKS                       R17 R17 K23 ["getFFlagDraggerRotateReference"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K4 [require]
      118 GETTABLEKS                       R18 R0 K24 ["Types"]
      120 CALL                             R17 1 1
      121 NEWTABLE                         R18 32 0
      123 SETTABLEKS                       R18 R18 K25 ["__index"]
      125 GETIMPORT                        R19 K28 [table.freeze]
      127 DUPTABLE                         R20 K33 [{"XAxis", "YAxis", "ZAxis", "VAxis"}]
      128 DUPTABLE                         R21 K40 [{["Offset"], ["Color"], ["Axis"] = "X", ["RadiusOffset"] = 0}]
      129 GETIMPORT                        R22 K43 [CFrame.fromMatrix]
      131 FASTCALL                         VECTOR ; [+2]
      132 GETIMPORT                        R23 K46 [Vector3.new]
      134 CALL                             R23 0 1
      135 LOADK                            R24 K47 [{1, 0, 0}]
      136 LOADK                            R25 K48 [{0, 1, 0}]
      137 LOADK                            R26 K49 [{0, 0, 1}]
      138 CALL                             R22 4 1
      139 SETTABLEKS                       R22 R21 K34 ["Offset"]
      141 GETTABLEKS                       R22 R3 K50 ["X_AXIS"]
      143 SETTABLEKS                       R22 R21 K35 ["Color"]
      145 SETTABLEKS                       R21 R20 K29 ["XAxis"]
      147 DUPTABLE                         R21 K53 [{["Offset"], ["Color"], ["Axis"] = "Y", ["RadiusOffset"] = 0.01}]
      148 GETIMPORT                        R22 K43 [CFrame.fromMatrix]
      150 FASTCALL                         VECTOR ; [+2]
      151 GETIMPORT                        R23 K46 [Vector3.new]
      153 CALL                             R23 0 1
      154 LOADK                            R24 K48 [{0, 1, 0}]
      155 LOADK                            R25 K49 [{0, 0, 1}]
      156 LOADK                            R26 K47 [{1, 0, 0}]
      157 CALL                             R22 4 1
      158 SETTABLEKS                       R22 R21 K34 ["Offset"]
      160 GETTABLEKS                       R22 R3 K54 ["Y_AXIS"]
      162 SETTABLEKS                       R22 R21 K35 ["Color"]
      164 SETTABLEKS                       R21 R20 K30 ["YAxis"]
      166 DUPTABLE                         R21 K57 [{["Offset"], ["Color"], ["Axis"] = "Z", ["RadiusOffset"] = 0.02}]
      167 GETIMPORT                        R22 K43 [CFrame.fromMatrix]
      169 FASTCALL                         VECTOR ; [+2]
      170 GETIMPORT                        R23 K46 [Vector3.new]
      172 CALL                             R23 0 1
      173 LOADK                            R24 K49 [{0, 0, 1}]
      174 LOADK                            R25 K47 [{1, 0, 0}]
      175 LOADK                            R26 K48 [{0, 1, 0}]
      176 CALL                             R22 4 1
      177 SETTABLEKS                       R22 R21 K34 ["Offset"]
      179 GETTABLEKS                       R22 R3 K58 ["Z_AXIS"]
      181 SETTABLEKS                       R22 R21 K35 ["Color"]
      183 SETTABLEKS                       R21 R20 K31 ["ZAxis"]
      185 MOVE                             R22 R15
      186 CALL                             R22 0 1
      187 JUMPIF                           R22 ; [+2]
      188 LOADNIL                          R21
      189 JUMP                             ; [+9]
      190 DUPTABLE                         R21 K63 [{["Offset"], ["Color"], ["Axis"] = "V", ["RadiusOffset"] = 0.5, ["IsView"] = True}]
      191 GETIMPORT                        R22 K65 [CFrame.identity]
      193 SETTABLEKS                       R22 R21 K34 ["Offset"]
      195 GETTABLEKS                       R22 R3 K66 ["WHITE"]
      197 SETTABLEKS                       R22 R21 K35 ["Color"]
      199 SETTABLEKS                       R21 R20 K32 ["VAxis"]
      201 CALL                             R19 1 1
      202 MOVE                             R21 R15
      203 CALL                             R21 0 1
      204 JUMPIF                           R21 ; [+2]
      205 LOADNIL                          R20
      206 JUMP                             ; [+15]
      207 GETIMPORT                        R20 K28 [table.freeze]
      209 DUPTABLE                         R21 K68 [{"Trackball"}]
      210 DUPTABLE                         R22 K70 [{["Offset"], ["Color"], ["Axis"] = "V", ["IsView"] = False}]
      211 GETIMPORT                        R23 K65 [CFrame.identity]
      213 SETTABLEKS                       R23 R22 K34 ["Offset"]
      215 GETTABLEKS                       R23 R3 K66 ["WHITE"]
      217 SETTABLEKS                       R23 R22 K35 ["Color"]
      219 SETTABLEKS                       R22 R21 K67 ["Trackball"]
      221 CALL                             R20 1 1
      222 DUPCLOSURE                       R21 K71 [PROTO_0]
      223 DUPCLOSURE                       R22 K72 [PROTO_1]
      224 CAPTURE                          VAL R6
      225 DUPCLOSURE                       R23 K73 [PROTO_2]
      226 DUPCLOSURE                       R24 K74 [PROTO_3]
      227 CAPTURE                          VAL R4
      228 DUPCLOSURE                       R25 K75 [PROTO_4]
      229 DUPCLOSURE                       R26 K76 [PROTO_5]
      230 SETTABLEKS                       R26 R18 K77 ["_orient"]
      232 DUPCLOSURE                       R26 K78 [PROTO_6]
      233 SETTABLEKS                       R26 R18 K79 ["_slideAngle"]
      235 DUPCLOSURE                       R26 K80 [PROTO_7]
      236 CAPTURE                          VAL R15
      237 CAPTURE                          VAL R3
      238 CAPTURE                          VAL R18
      239 SETTABLEKS                       R26 R18 K45 ["new"]
      241 DUPCLOSURE                       R26 K81 [PROTO_8]
      242 SETTABLEKS                       R26 R18 K82 ["beginSummon"]
      244 DUPCLOSURE                       R26 K83 [PROTO_9]
      245 SETTABLEKS                       R26 R18 K84 ["endSummon"]
      247 DUPCLOSURE                       R26 K85 [PROTO_10]
      248 SETTABLEKS                       R26 R18 K86 ["_getBasisOffset"]
      250 DUPCLOSURE                       R26 K87 [PROTO_11]
      251 SETTABLEKS                       R26 R18 K88 ["update"]
      253 DUPCLOSURE                       R26 K89 [PROTO_12]
      254 SETTABLEKS                       R26 R18 K90 ["shouldBiasTowardsObjects"]
      256 DUPCLOSURE                       R26 K91 [PROTO_13]
      257 CAPTURE                          VAL R9
      258 CAPTURE                          VAL R15
      259 CAPTURE                          VAL R10
      260 SETTABLEKS                       R26 R18 K92 ["hitTest"]
      262 DUPCLOSURE                       R26 K93 [PROTO_14]
      263 CAPTURE                          VAL R7
      264 CAPTURE                          VAL R2
      265 CAPTURE                          VAL R14
      266 SETTABLEKS                       R26 R18 K94 ["_renderHotkeyHelp"]
      268 DUPCLOSURE                       R26 K95 [PROTO_15]
      269 SETTABLEKS                       R26 R18 K96 ["_getTickAngle"]
      271 DUPCLOSURE                       R26 K97 [PROTO_17]
      272 CAPTURE                          VAL R15
      273 CAPTURE                          VAL R2
      274 CAPTURE                          VAL R9
      275 CAPTURE                          VAL R8
      276 CAPTURE                          VAL R19
      277 CAPTURE                          VAL R3
      278 SETTABLEKS                       R26 R18 K98 ["_renderDraggingHandles"]
      280 DUPCLOSURE                       R26 K99 [PROTO_18]
      281 CAPTURE                          VAL R15
      282 CAPTURE                          VAL R2
      283 CAPTURE                          VAL R10
      284 SETTABLEKS                       R26 R18 K100 ["_renderDraggingBallHandles"]
      286 DUPCLOSURE                       R26 K101 [PROTO_19]
      287 CAPTURE                          VAL R2
      288 SETTABLEKS                       R26 R18 K102 ["_renderDragging"]
      290 DUPCLOSURE                       R26 K103 [PROTO_20]
      291 CAPTURE                          VAL R2
      292 SETTABLEKS                       R26 R18 K104 ["_renderDraggingBall"]
      294 DUPCLOSURE                       R26 K105 [PROTO_21]
      295 CAPTURE                          VAL R15
      296 CAPTURE                          VAL R3
      297 CAPTURE                          VAL R2
      298 CAPTURE                          VAL R9
      299 CAPTURE                          VAL R10
      300 SETTABLEKS                       R26 R18 K106 ["_renderHovering"]
      302 DUPCLOSURE                       R26 K107 [PROTO_22]
      303 CAPTURE                          VAL R15
      304 SETTABLEKS                       R26 R18 K108 ["_renderDragOrHover"]
      306 DUPCLOSURE                       R26 K109 [PROTO_23]
      307 CAPTURE                          VAL R2
      308 CAPTURE                          VAL R5
      309 SETTABLEKS                       R26 R18 K110 ["_renderBoundingBox"]
      311 DUPCLOSURE                       R26 K111 [PROTO_24]
      312 CAPTURE                          VAL R2
      313 CAPTURE                          VAL R13
      314 CAPTURE                          VAL R12
      315 CAPTURE                          VAL R11
      316 SETTABLEKS                       R26 R18 K112 ["_renderSummon"]
      318 DUPCLOSURE                       R26 K113 [PROTO_25]
      319 CAPTURE                          VAL R2
      320 SETTABLEKS                       R26 R18 K114 ["render"]
      322 DUPCLOSURE                       R26 K115 [PROTO_26]
      323 CAPTURE                          VAL R15
      324 CAPTURE                          VAL R24
      325 CAPTURE                          VAL R10
      326 SETTABLEKS                       R26 R18 K116 ["mouseDown"]
      328 DUPCLOSURE                       R26 K117 [PROTO_27]
      329 CAPTURE                          VAL R15
      330 CAPTURE                          VAL R24
      331 CAPTURE                          VAL R22
      332 CAPTURE                          VAL R10
      333 SETTABLEKS                       R26 R18 K118 ["mouseDrag"]
      335 DUPCLOSURE                       R26 K119 [PROTO_28]
      336 CAPTURE                          VAL R15
      337 CAPTURE                          VAL R16
      338 SETTABLEKS                       R26 R18 K120 ["mouseUp"]
      340 DUPCLOSURE                       R26 K121 [PROTO_29]
      341 CAPTURE                          VAL R19
      342 CAPTURE                          VAL R15
      343 CAPTURE                          VAL R3
      344 CAPTURE                          VAL R20
      345 SETTABLEKS                       R26 R18 K122 ["_updateHandles"]
      347 GETIMPORT                        R26 K28 [table.freeze]
      349 NEWTABLE                         R27 2 0
      351 GETIMPORT                        R28 K126 [Enum.KeyCode.RightShift]
      353 LOADB                            R29 1
      354 SETTABLE                         R29 R27 R28
      355 GETIMPORT                        R28 K128 [Enum.KeyCode.LeftShift]
      357 LOADB                            R29 1
      358 SETTABLE                         R29 R27 R28
      359 CALL                             R26 1 1
      360 DUPCLOSURE                       R27 K129 [PROTO_30]
      361 CAPTURE                          VAL R26
      362 SETTABLEKS                       R27 R18 K130 ["keyDown"]
      364 DUPCLOSURE                       R27 K131 [PROTO_31]
      365 CAPTURE                          VAL R26
      366 SETTABLEKS                       R27 R18 K132 ["keyUp"]
      368 DUPCLOSURE                       R27 K133 [PROTO_32]
      369 SETTABLEKS                       R27 R18 K134 ["getPriority"]
      371 RETURN                           R18 1
