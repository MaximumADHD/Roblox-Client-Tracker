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

PROTO_3:
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

PROTO_4:
        0 NEWTABLE                         R3 8 0
        2 SETTABLEKS                       R0 R3 K0 ["_draggerContext"]
        4 NEWTABLE                         R4 0 0
        6 SETTABLEKS                       R4 R3 K1 ["_handles"]
        8 MOVE                             R4 R1
        9 JUMPIF                           R4 ; [+4]
       10 DUPTABLE                         R4 K3 [{"Summonable"}]
       11 LOADB                            R5 1
       12 SETTABLEKS                       R5 R4 K2 ["Summonable"]
       14 SETTABLEKS                       R4 R3 K4 ["_props"]
       16 SETTABLEKS                       R2 R3 K5 ["_implementation"]
       18 LOADB                            R4 0
       19 SETTABLEKS                       R4 R3 K6 ["_tabKeyDown"]
       21 GETUPVAL                         R6 0
       22 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       24 MOVE                             R5 R3
       25 GETIMPORT                        R4 K8 [setmetatable]
       27 CALL                             R4 2 1
       28 RETURN                           R4 1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["Wrong flag branching"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 SETTABLEKS                       R1 R0 K3 ["_summonBasisOffset"]
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["Wrong flag branching"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K3 ["_summonBasisOffset"]
       11 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_12:
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
       14 JUMPIFNOT                        R10 ; [+4]
       15 JUMPIFNOTLT                      R10 R4 ; [+3]
       17 MOVE                             R4 R10
       18 MOVE                             R3 R8
       19 FORGLOOP                         R5 2 ; [-12]
       21 MOVE                             R5 R3
       22 MOVE                             R6 R4
       23 LOADB                            R7 1
       24 RETURN                           R5 3

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 NAMECALL                         R2 R0 K0 ["_getTickAngle"]
        2 CALL                             R2 1 1
        3 NEWTABLE                         R3 0 0
        5 GETTABLEKS                       R5 R0 K1 ["_startAngle"]
        7 GETTABLEKS                       R6 R0 K2 ["_draggerContext"]
        9 NAMECALL                         R6 R6 K3 ["getRotateIncrement"]
       11 CALL                             R6 1 1
       12 LOADN                            R7 0
       13 JUMPIFNOTLT                      R7 R6 ; [+29]
       15 FASTCALL1                        MATH_RAD R6 ; [+3]
       16 MOVE                             R8 R6
       17 GETIMPORT                        R7 K6 [math.rad]
       19 CALL                             R7 1 1
       20 DIV                              R11 R5 R7
       21 ADDK                             R10 R11 K7 [0.5]
       22 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       23 GETIMPORT                        R9 K9 [math.floor]
       25 CALL                             R9 1 1
       26 MUL                              R8 R9 R7
       27 SUBK                             R10 R5 K10 [6.28318530717959]
       28 FASTCALL1                        MATH_ABS R10 ; [+2]
       29 GETIMPORT                        R9 K12 [math.abs]
       31 CALL                             R9 1 1
       32 SUB                              R11 R5 R8
       33 FASTCALL1                        MATH_ABS R11 ; [+2]
       34 GETIMPORT                        R10 K12 [math.abs]
       36 CALL                             R10 1 1
       37 JUMPIFNOTLT                      R9 R10 ; [+3]
       39 LOADN                            R4 0
       40 JUMP                             ; [+4]
       41 MOVE                             R4 R8
       42 JUMP                             ; [+2]
       43 MOVE                             R4 R5
       44 JUMP                             ; [0]
       45 GETTABLEKS                       R6 R0 K13 ["_handles"]
       47 GETTABLE                         R5 R6 R1
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R6 R7 K14 ["createElement"]
       51 GETUPVAL                         R7 1
       52 DUPTABLE                         R8 K24 [{"HandleCFrame", "Color", "StartAngle", "EndAngle", "Scale", "Hovered", "RadiusOffset", "TickAngle", "DraggerContext"}]
       53 GETTABLEKS                       R9 R5 K15 ["HandleCFrame"]
       55 SETTABLEKS                       R9 R8 K15 ["HandleCFrame"]
       57 GETTABLEKS                       R9 R5 K16 ["Color"]
       59 SETTABLEKS                       R9 R8 K16 ["Color"]
       61 GETTABLEKS                       R10 R0 K25 ["_draggingLastGoodDelta"]
       63 SUB                              R9 R4 R10
       64 SETTABLEKS                       R9 R8 K17 ["StartAngle"]
       66 SETTABLEKS                       R4 R8 K18 ["EndAngle"]
       68 GETTABLEKS                       R9 R0 K26 ["_scale"]
       70 SETTABLEKS                       R9 R8 K19 ["Scale"]
       72 LOADB                            R9 0
       73 SETTABLEKS                       R9 R8 K20 ["Hovered"]
       75 GETTABLEKS                       R9 R5 K21 ["RadiusOffset"]
       77 SETTABLEKS                       R9 R8 K21 ["RadiusOffset"]
       79 SETTABLEKS                       R2 R8 K22 ["TickAngle"]
       81 GETTABLEKS                       R9 R0 K2 ["_draggerContext"]
       83 SETTABLEKS                       R9 R8 K23 ["DraggerContext"]
       85 CALL                             R6 2 1
       86 SETTABLE                         R6 R3 R1
       87 GETIMPORT                        R6 K28 [pairs]
       89 GETTABLEKS                       R7 R0 K13 ["_handles"]
       91 CALL                             R6 1 3
       92 FORGPREP_NEXT                    R6
       93 JUMPIFEQ                         R9 R1 ; [+38]
       95 GETUPVAL                         R13 2
       96 GETTABLE                         R12 R13 R9
       97 GETTABLEKS                       R11 R12 K29 ["Offset"]
       99 GETUPVAL                         R13 0
      100 GETTABLEKS                       R12 R13 K14 ["createElement"]
      102 GETUPVAL                         R13 1
      103 DUPTABLE                         R14 K31 [{"HandleCFrame", "Color", "Scale", "Thin", "RadiusOffset"}]
      104 GETTABLEKS                       R17 R0 K32 ["_boundingBox"]
      106 GETTABLEKS                       R16 R17 K33 ["CFrame"]
      108 MUL                              R15 R16 R11
      109 SETTABLEKS                       R15 R14 K15 ["HandleCFrame"]
      111 GETUPVAL                         R16 3
      112 GETTABLEKS                       R15 R16 K34 ["makeDimmed"]
      114 GETTABLEKS                       R16 R10 K16 ["Color"]
      116 CALL                             R15 1 1
      117 SETTABLEKS                       R15 R14 K16 ["Color"]
      119 GETTABLEKS                       R15 R0 K26 ["_scale"]
      121 SETTABLEKS                       R15 R14 K19 ["Scale"]
      123 LOADB                            R15 1
      124 SETTABLEKS                       R15 R14 K30 ["Thin"]
      126 GETTABLEKS                       R15 R5 K21 ["RadiusOffset"]
      128 SETTABLEKS                       R15 R14 K21 ["RadiusOffset"]
      130 CALL                             R12 2 1
      131 SETTABLE                         R12 R3 R9
      132 FORGLOOP                         R6 2 ; [-40]
      134 GETUPVAL                         R7 0
      135 GETTABLEKS                       R6 R7 K35 ["createFragment"]
      137 MOVE                             R7 R3
      138 CALL                             R6 1 -1
      139 RETURN                           R6 -1

PROTO_16:
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

PROTO_17:
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
       28 GETTABLEKS                       R11 R12 K6 ["createElement"]
       30 GETUPVAL                         R12 2
       31 DUPTABLE                         R13 K12 [{"HandleCFrame", "Color", "Scale", "Hovered", "RadiusOffset", "TickAngle"}]
       32 GETTABLEKS                       R14 R7 K7 ["HandleCFrame"]
       34 SETTABLEKS                       R14 R13 K7 ["HandleCFrame"]
       36 SETTABLEKS                       R8 R13 K3 ["Color"]
       38 GETTABLEKS                       R14 R0 K13 ["_scale"]
       40 SETTABLEKS                       R14 R13 K8 ["Scale"]
       42 SETTABLEKS                       R9 R13 K9 ["Hovered"]
       44 GETTABLEKS                       R14 R7 K10 ["RadiusOffset"]
       46 SETTABLEKS                       R14 R13 K10 ["RadiusOffset"]
       48 SETTABLEKS                       R10 R13 K11 ["TickAngle"]
       50 CALL                             R11 2 1
       51 SETTABLE                         R11 R2 R6
       52 FORGLOOP                         R3 2 ; [-45]
       54 GETUPVAL                         R4 1
       55 GETTABLEKS                       R3 R4 K14 ["createFragment"]
       57 MOVE                             R4 R2
       58 CALL                             R3 1 -1
       59 RETURN                           R3 -1

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["_draggingHandleId"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R3 R0 K1 ["_handles"]
        5 GETTABLEKS                       R4 R0 K0 ["_draggingHandleId"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIFNOT                        R2 ; [+6]
        9 GETTABLEKS                       R5 R0 K0 ["_draggingHandleId"]
       11 NAMECALL                         R3 R0 K2 ["_renderDragging"]
       13 CALL                             R3 2 -1
       14 RETURN                           R3 -1
       15 MOVE                             R5 R1
       16 NAMECALL                         R3 R0 K3 ["_renderHovering"]
       18 CALL                             R3 2 -1
       19 RETURN                           R3 -1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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
       27 JUMPIFNOT                        R5 ; [+115]
       28 GETTABLEKS                       R6 R0 K7 ["_handles"]
       30 GETTABLEKS                       R7 R0 K6 ["_draggingHandleId"]
       32 GETTABLE                         R5 R6 R7
       33 JUMPIFNOT                        R5 ; [+109]
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
       92 JUMPIFEQ                         R9 R11 ; [+38]
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
      125 GETTABLEKS                       R15 R5 K15 ["RadiusOffset"]
      127 SETTABLEKS                       R15 R14 K15 ["RadiusOffset"]
      129 CALL                             R12 2 1
      130 SETTABLE                         R12 R2 R9
      131 FORGLOOP                         R6 2 ; [-42]
      133 GETTABLEKS                       R6 R0 K30 ["_implementation"]
      135 GETTABLEKS                       R8 R0 K31 ["_lastGlobalTransformForRender"]
      137 NAMECALL                         R6 R6 K32 ["render"]
      139 CALL                             R6 2 1
      140 SETTABLEKS                       R6 R2 K33 ["ImplementationRendered"]
      142 JUMP                             ; [+49]
      143 GETIMPORT                        R5 K23 [pairs]
      145 GETTABLEKS                       R6 R0 K7 ["_handles"]
      147 CALL                             R5 1 3
      148 FORGPREP_NEXT                    R5
      149 GETTABLEKS                       R10 R9 K10 ["Color"]
      151 JUMPIFEQ                         R8 R1 ; [+2]
      153 LOADB                            R11 0 +1
      154 LOADB                            R11 1
      155 LOADNIL                          R12
      156 JUMPIFNOT                        R11 ; [+2]
      157 MOVE                             R12 R4
      158 JUMP                             ; [+6]
      159 GETUPVAL                         R14 4
      160 GETTABLEKS                       R13 R14 K29 ["makeDimmed"]
      162 MOVE                             R14 R10
      163 CALL                             R13 1 1
      164 MOVE                             R10 R13
      165 GETUPVAL                         R14 1
      166 GETTABLEKS                       R13 R14 K8 ["createElement"]
      168 GETUPVAL                         R14 2
      169 DUPTABLE                         R15 K34 [{"HandleCFrame", "Color", "Scale", "Hovered", "RadiusOffset", "TickAngle"}]
      170 GETTABLEKS                       R16 R9 K9 ["HandleCFrame"]
      172 SETTABLEKS                       R16 R15 K9 ["HandleCFrame"]
      174 SETTABLEKS                       R10 R15 K10 ["Color"]
      176 GETTABLEKS                       R16 R0 K21 ["_scale"]
      178 SETTABLEKS                       R16 R15 K13 ["Scale"]
      180 SETTABLEKS                       R11 R15 K14 ["Hovered"]
      182 GETTABLEKS                       R16 R9 K15 ["RadiusOffset"]
      184 SETTABLEKS                       R16 R15 K15 ["RadiusOffset"]
      186 SETTABLEKS                       R12 R15 K16 ["TickAngle"]
      188 CALL                             R13 2 1
      189 SETTABLE                         R13 R2 R8
      190 FORGLOOP                         R5 2 ; [-42]
      192 GETTABLEKS                       R6 R0 K35 ["_props"]
      194 GETTABLEKS                       R5 R6 K36 ["ShowBoundingBox"]
      196 JUMPIFNOT                        R5 ; [+50]
      197 GETTABLEKS                       R6 R0 K37 ["_selectionWrapper"]
      199 NAMECALL                         R6 R6 K38 ["get"]
      201 CALL                             R6 1 1
      202 LENGTH                           R5 R6
      203 LOADN                            R6 1
      204 JUMPIFNOTLT                      R6 R5 ; [+42]
      206 GETUPVAL                         R6 1
      207 GETTABLEKS                       R5 R6 K8 ["createElement"]
      209 GETUPVAL                         R6 5
      210 DUPTABLE                         R7 K42 [{"CFrame", "Size", "Color", "LineThickness", "Container"}]
      211 GETTABLEKS                       R9 R0 K27 ["_boundingBox"]
      213 GETTABLEKS                       R8 R9 K28 ["CFrame"]
      215 SETTABLEKS                       R8 R7 K28 ["CFrame"]
      217 GETTABLEKS                       R9 R0 K27 ["_boundingBox"]
      219 GETTABLEKS                       R8 R9 K39 ["Size"]
      221 SETTABLEKS                       R8 R7 K39 ["Size"]
      223 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      225 NAMECALL                         R8 R8 K43 ["getSelectionBoxColor"]
      227 CALL                             R8 1 1
      228 SETTABLEKS                       R8 R7 K10 ["Color"]
      230 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      232 NAMECALL                         R8 R8 K44 ["getHoverThickness"]
      234 CALL                             R8 1 1
      235 SETTABLEKS                       R8 R7 K40 ["LineThickness"]
      237 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      239 NAMECALL                         R8 R8 K45 ["getGuiParent"]
      241 CALL                             R8 1 1
      242 SETTABLEKS                       R8 R7 K41 ["Container"]
      244 CALL                             R5 2 1
      245 SETTABLEKS                       R5 R2 K46 ["SelectionBoundingBox"]
      247 GETTABLEKS                       R6 R0 K35 ["_props"]
      249 GETTABLEKS                       R5 R6 K47 ["Summonable"]
      251 JUMPIFNOT                        R5 ; [+167]
      252 GETTABLEKS                       R5 R0 K48 ["_summonBasisOffset"]
      254 JUMPIFNOT                        R5 ; [+95]
      255 GETTABLEKS                       R5 R0 K49 ["_summonWasSnapped"]
      257 JUMPIFNOT                        R5 ; [+52]
      258 GETUPVAL                         R6 1
      259 GETTABLEKS                       R5 R6 K8 ["createElement"]
      261 LOADK                            R6 K50 ["BoxHandleAdornment"]
      262 DUPTABLE                         R7 K56 [{"Adornee", "Color3", "CFrame", "Size", "AlwaysOnTop", "Transparency", "ZIndex"}]
      263 GETUPVAL                         R9 6
      264 GETTABLEKS                       R8 R9 K57 ["Terrain"]
      266 SETTABLEKS                       R8 R7 K51 ["Adornee"]
      268 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      270 NAMECALL                         R8 R8 K58 ["getGeometrySnapColor"]
      272 CALL                             R8 1 1
      273 SETTABLEKS                       R8 R7 K52 ["Color3"]
      275 GETTABLEKS                       R10 R0 K27 ["_boundingBox"]
      277 GETTABLEKS                       R9 R10 K28 ["CFrame"]
      279 GETTABLEKS                       R10 R0 K48 ["_summonBasisOffset"]
      281 MUL                              R8 R9 R10
      282 SETTABLEKS                       R8 R7 K28 ["CFrame"]
      284 LOADK                            R9 K59 [{0.5, 0.5, 0.5}]
      285 GETTABLEKS                       R10 R0 K21 ["_scale"]
      287 MUL                              R8 R9 R10
      288 SETTABLEKS                       R8 R7 K39 ["Size"]
      290 GETTABLEKS                       R9 R0 K60 ["_summonWasSnappedToSurface"]
      292 NOT                              R8 R9
      293 SETTABLEKS                       R8 R7 K53 ["AlwaysOnTop"]
      295 GETTABLEKS                       R9 R0 K60 ["_summonWasSnappedToSurface"]
      297 JUMPIFNOT                        R9 ; [+2]
      298 LOADN                            R8 0
      299 JUMP                             ; [+1]
      300 LOADK                            R8 K61 [0.5]
      301 SETTABLEKS                       R8 R7 K54 ["Transparency"]
      303 LOADN                            R8 0
      304 SETTABLEKS                       R8 R7 K55 ["ZIndex"]
      306 CALL                             R5 2 1
      307 SETTABLEKS                       R5 R2 K62 ["SummonSnap"]
      309 JUMP                             ; [+40]
      310 GETUPVAL                         R6 1
      311 GETTABLEKS                       R5 R6 K8 ["createElement"]
      313 GETUPVAL                         R6 7
      314 DUPTABLE                         R7 K64 [{"DraggerContext", "CFrame", "IsActive"}]
      315 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      317 SETTABLEKS                       R8 R7 K17 ["DraggerContext"]
      319 GETTABLEKS                       R10 R0 K27 ["_boundingBox"]
      321 GETTABLEKS                       R9 R10 K28 ["CFrame"]
      323 NAMECALL                         R10 R0 K65 ["_getBasisOffset"]
      325 CALL                             R10 1 1
      326 MUL                              R8 R9 R10
      327 SETTABLEKS                       R8 R7 K28 ["CFrame"]
      329 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      331 NAMECALL                         R8 R8 K66 ["shouldShowActiveInstanceHighlight"]
      333 CALL                             R8 1 1
      334 JUMPIFNOT                        R8 ; [+10]
      335 GETTABLEKS                       R10 R0 K37 ["_selectionWrapper"]
      337 NAMECALL                         R10 R10 K38 ["get"]
      339 CALL                             R10 1 1
      340 LENGTH                           R9 R10
      341 JUMPIFEQKN                       R9 K67 [1] ; [+2]
      343 LOADB                            R8 0 +1
      344 LOADB                            R8 1
      345 SETTABLEKS                       R8 R7 K63 ["IsActive"]
      347 CALL                             R5 2 1
      348 SETTABLEKS                       R5 R2 K68 ["SummonedPivot"]
      350 GETTABLEKS                       R5 R0 K6 ["_draggingHandleId"]
      352 JUMPIF                           R5 ; [+66]
      353 GETTABLEKS                       R5 R0 K48 ["_summonBasisOffset"]
      355 JUMPIFNOT                        R5 ; [+13]
      356 GETUPVAL                         R6 1
      357 GETTABLEKS                       R5 R6 K8 ["createElement"]
      359 GETUPVAL                         R6 8
      360 DUPTABLE                         R7 K69 [{"DraggerContext"}]
      361 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      363 SETTABLEKS                       R8 R7 K17 ["DraggerContext"]
      365 CALL                             R5 2 1
      366 SETTABLEKS                       R5 R2 K70 ["SummonHandlesHider"]
      368 JUMP                             ; [+50]
      369 GETUPVAL                         R6 8
      370 GETTABLEKS                       R5 R6 K71 ["hasSeenEnough"]
      372 GETTABLEKS                       R6 R0 K1 ["_draggerContext"]
      374 CALL                             R5 1 1
      375 JUMPIF                           R5 ; [+43]
      376 GETTABLEKS                       R8 R0 K27 ["_boundingBox"]
      378 GETTABLEKS                       R7 R8 K28 ["CFrame"]
      380 GETTABLEKS                       R8 R0 K72 ["_basisOffset"]
      382 MUL                              R6 R7 R8
      383 GETTABLEKS                       R5 R6 K73 ["Position"]
      385 GETTABLEKS                       R6 R0 K1 ["_draggerContext"]
      387 MOVE                             R8 R5
      388 NAMECALL                         R6 R6 K74 ["worldToViewportPoint"]
      390 CALL                             R6 2 2
      391 GETTABLEKS                       R8 R6 K75 ["Z"]
      393 LOADN                            R9 0
      394 JUMPIFNOTLT                      R9 R8 ; [+24]
      396 GETUPVAL                         R9 1
      397 GETTABLEKS                       R8 R9 K8 ["createElement"]
      399 GETUPVAL                         R9 9
      400 DUPTABLE                         R10 K77 [{"Position", "InView", "DraggerContext"}]
      401 GETIMPORT                        R11 K80 [Vector2.new]
      403 GETTABLEKS                       R12 R6 K81 ["X"]
      405 GETTABLEKS                       R13 R6 K82 ["Y"]
      407 CALL                             R11 2 1
      408 SETTABLEKS                       R11 R10 K73 ["Position"]
      410 SETTABLEKS                       R7 R10 K76 ["InView"]
      412 GETTABLEKS                       R11 R0 K1 ["_draggerContext"]
      414 SETTABLEKS                       R11 R10 K17 ["DraggerContext"]
      416 CALL                             R8 2 1
      417 SETTABLEKS                       R8 R2 K83 ["SummonHandlesNote"]
      419 GETUPVAL                         R6 1
      420 GETTABLEKS                       R5 R6 K8 ["createElement"]
      422 LOADK                            R6 K84 ["Folder"]
      423 NEWTABLE                         R7 0 0
      425 MOVE                             R8 R2
      426 CALL                             R5 3 -1
      427 RETURN                           R5 -1

PROTO_23:
        0 GETTABLEKS                       R4 R0 K0 ["_handles"]
        2 GETTABLE                         R3 R4 R2
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R5 R0 K0 ["_handles"]
        7 GETTABLE                         R4 R5 R2
        8 GETTABLEKS                       R3 R4 K1 ["HandleCFrame"]
       10 GETUPVAL                         R4 0
       11 MOVE                             R5 R3
       12 GETTABLEKS                       R6 R1 K2 ["Unit"]
       14 CALL                             R4 2 1
       15 JUMPIF                           R4 ; [+1]
       16 RETURN                           R0 0
       17 SETTABLEKS                       R2 R0 K3 ["_draggingHandleId"]
       19 SETTABLEKS                       R3 R0 K4 ["_handleCFrame"]
       21 GETIMPORT                        R5 K7 [CFrame.new]
       23 CALL                             R5 0 1
       24 SETTABLEKS                       R5 R0 K8 ["_lastGlobalTransformForRender"]
       26 LOADN                            R5 0
       27 SETTABLEKS                       R5 R0 K9 ["_draggingLastGoodDelta"]
       29 GETTABLEKS                       R6 R0 K10 ["_boundingBox"]
       31 GETTABLEKS                       R5 R6 K5 ["CFrame"]
       33 SETTABLEKS                       R5 R0 K11 ["_originalBoundingBoxCFrame"]
       35 GETUPVAL                         R5 1
       36 CALL                             R5 0 1
       37 JUMPIFNOT                        R5 ; [+3]
       38 SETTABLEKS                       R4 R0 K12 ["_startAngle"]
       40 JUMP                             ; [+40]
       41 GETTABLEKS                       R6 R0 K13 ["_draggerContext"]
       43 NAMECALL                         R6 R6 K14 ["getRotateIncrement"]
       45 CALL                             R6 1 1
       46 LOADN                            R7 0
       47 JUMPIFNOTLT                      R7 R6 ; [+29]
       49 FASTCALL1                        MATH_RAD R6 ; [+3]
       50 MOVE                             R8 R6
       51 GETIMPORT                        R7 K17 [math.rad]
       53 CALL                             R7 1 1
       54 DIV                              R11 R4 R7
       55 ADDK                             R10 R11 K18 [0.5]
       56 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       57 GETIMPORT                        R9 K20 [math.floor]
       59 CALL                             R9 1 1
       60 MUL                              R8 R9 R7
       61 SUBK                             R10 R4 K21 [6.28318530717959]
       62 FASTCALL1                        MATH_ABS R10 ; [+2]
       63 GETIMPORT                        R9 K23 [math.abs]
       65 CALL                             R9 1 1
       66 SUB                              R11 R4 R8
       67 FASTCALL1                        MATH_ABS R11 ; [+2]
       68 GETIMPORT                        R10 K23 [math.abs]
       70 CALL                             R10 1 1
       71 JUMPIFNOTLT                      R9 R10 ; [+3]
       73 LOADN                            R5 0
       74 JUMP                             ; [+4]
       75 MOVE                             R5 R8
       76 JUMP                             ; [+2]
       77 MOVE                             R5 R4
       78 JUMP                             ; [0]
       79 SETTABLEKS                       R5 R0 K12 ["_startAngle"]
       81 GETTABLEKS                       R5 R0 K24 ["_implementation"]
       83 GETTABLEKS                       R7 R0 K25 ["_selectionWrapper"]
       85 NAMECALL                         R7 R7 K26 ["get"]
       87 CALL                             R7 1 1
       88 GETTABLEKS                       R8 R0 K27 ["_selectionInfo"]
       90 NAMECALL                         R5 R5 K28 ["beginDrag"]
       92 CALL                             R5 3 0
       93 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R3 R0 K0 ["_handles"]
        2 GETTABLEKS                       R4 R0 K1 ["_draggingHandleId"]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R3 R0 K2 ["_handleCFrame"]
       10 GETTABLEKS                       R4 R1 K3 ["Unit"]
       12 CALL                             R2 2 1
       13 JUMPIF                           R2 ; [+1]
       14 RETURN                           R0 0
       15 LOADNIL                          R3
       16 GETUPVAL                         R4 1
       17 CALL                             R4 0 1
       18 JUMPIFNOT                        R4 ; [+42]
       19 GETTABLEKS                       R4 R0 K4 ["_draggerContext"]
       21 NAMECALL                         R4 R4 K5 ["getRotateIncrement"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R6 R0 K6 ["_startAngle"]
       26 SUB                              R5 R2 R6
       27 LOADN                            R6 0
       28 JUMPIFNOTLT                      R6 R4 ; [+29]
       30 FASTCALL1                        MATH_RAD R4 ; [+3]
       31 MOVE                             R7 R4
       32 GETIMPORT                        R6 K9 [math.rad]
       34 CALL                             R6 1 1
       35 DIV                              R10 R5 R6
       36 ADDK                             R9 R10 K10 [0.5]
       37 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       38 GETIMPORT                        R8 K12 [math.floor]
       40 CALL                             R8 1 1
       41 MUL                              R7 R8 R6
       42 SUBK                             R9 R5 K13 [6.28318530717959]
       43 FASTCALL1                        MATH_ABS R9 ; [+2]
       44 GETIMPORT                        R8 K15 [math.abs]
       46 CALL                             R8 1 1
       47 SUB                              R10 R5 R7
       48 FASTCALL1                        MATH_ABS R10 ; [+2]
       49 GETIMPORT                        R9 K15 [math.abs]
       51 CALL                             R9 1 1
       52 JUMPIFNOTLT                      R8 R9 ; [+3]
       54 LOADN                            R3 0
       55 JUMP                             ; [+46]
       56 MOVE                             R3 R7
       57 JUMP                             ; [+44]
       58 MOVE                             R3 R5
       59 JUMP                             ; [+42]
       60 JUMP                             ; [+41]
       61 GETTABLEKS                       R5 R0 K4 ["_draggerContext"]
       63 NAMECALL                         R5 R5 K5 ["getRotateIncrement"]
       65 CALL                             R5 1 1
       66 LOADN                            R6 0
       67 JUMPIFNOTLT                      R6 R5 ; [+29]
       69 FASTCALL1                        MATH_RAD R5 ; [+3]
       70 MOVE                             R7 R5
       71 GETIMPORT                        R6 K9 [math.rad]
       73 CALL                             R6 1 1
       74 DIV                              R10 R2 R6
       75 ADDK                             R9 R10 K10 [0.5]
       76 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       77 GETIMPORT                        R8 K12 [math.floor]
       79 CALL                             R8 1 1
       80 MUL                              R7 R8 R6
       81 SUBK                             R9 R2 K13 [6.28318530717959]
       82 FASTCALL1                        MATH_ABS R9 ; [+2]
       83 GETIMPORT                        R8 K15 [math.abs]
       85 CALL                             R8 1 1
       86 SUB                              R10 R2 R7
       87 FASTCALL1                        MATH_ABS R10 ; [+2]
       88 GETIMPORT                        R9 K15 [math.abs]
       90 CALL                             R9 1 1
       91 JUMPIFNOTLT                      R8 R9 ; [+3]
       93 LOADN                            R4 0
       94 JUMP                             ; [+4]
       95 MOVE                             R4 R7
       96 JUMP                             ; [+2]
       97 MOVE                             R4 R2
       98 JUMP                             ; [0]
       99 GETTABLEKS                       R5 R0 K6 ["_startAngle"]
      101 SUB                              R3 R4 R5
      102 GETUPVAL                         R4 2
      103 GETTABLEKS                       R5 R0 K2 ["_handleCFrame"]
      105 GETTABLEKS                       R7 R0 K2 ["_handleCFrame"]
      107 GETTABLEKS                       R6 R7 K16 ["RightVector"]
      109 MOVE                             R7 R3
      110 GETTABLEKS                       R8 R0 K4 ["_draggerContext"]
      112 NAMECALL                         R8 R8 K5 ["getRotateIncrement"]
      114 CALL                             R8 1 -1
      115 CALL                             R4 -1 1
      116 GETTABLEKS                       R5 R0 K17 ["_implementation"]
      118 MOVE                             R7 R4
      119 NAMECALL                         R5 R5 K18 ["updateDrag"]
      121 CALL                             R5 2 1
      122 GETTABLEKS                       R6 R0 K19 ["_boundingBox"]
      124 GETTABLEKS                       R8 R0 K20 ["_originalBoundingBoxCFrame"]
      126 MUL                              R7 R5 R8
      127 SETTABLEKS                       R7 R6 K21 ["CFrame"]
      129 SETTABLEKS                       R5 R0 K22 ["_lastGlobalTransformForRender"]
      131 GETTABLEKS                       R9 R0 K2 ["_handleCFrame"]
      133 GETTABLEKS                       R8 R9 K23 ["LookVector"]
      135 NAMECALL                         R6 R5 K24 ["VectorToObjectSpace"]
      137 CALL                             R6 2 1
      138 GETTABLEKS                       R8 R0 K2 ["_handleCFrame"]
      140 GETTABLEKS                       R7 R8 K25 ["UpVector"]
      142 MOVE                             R9 R6
      143 NAMECALL                         R7 R7 K26 ["Dot"]
      145 CALL                             R7 2 1
      146 GETTABLEKS                       R9 R0 K2 ["_handleCFrame"]
      148 GETTABLEKS                       R8 R9 K23 ["LookVector"]
      150 MOVE                             R10 R6
      151 NAMECALL                         R8 R8 K26 ["Dot"]
      153 CALL                             R8 2 1
      154 FASTCALL2                        MATH_ATAN2 R7 R8 ; [+5]
      156 MOVE                             R11 R7
      157 MOVE                             R12 R8
      158 GETIMPORT                        R10 K28 [math.atan2]
      160 CALL                             R10 2 1
      161 MINUS                            R9 R10
      162 SETTABLEKS                       R9 R0 K29 ["_draggingLastGoodDelta"]
      164 RETURN                           R0 0

PROTO_25:
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
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R0 K0 ["_draggingHandleId"]
       16 GETTABLEKS                       R2 R0 K3 ["_implementation"]
       18 NAMECALL                         R2 R2 K4 ["endDrag"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R0 K5 ["_schema"]
       23 GETTABLEKS                       R3 R4 K6 ["addUndoWaypoint"]
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

PROTO_26:
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
       16 GETTABLEKS                       R6 R0 K2 ["_handles"]
       18 DUPTABLE                         R7 K9 [{"HandleCFrame", "Color", "RadiusOffset", "Scale"}]
       19 GETTABLEKS                       R11 R0 K10 ["_boundingBox"]
       21 GETTABLEKS                       R10 R11 K11 ["CFrame"]
       23 NAMECALL                         R11 R0 K12 ["_getBasisOffset"]
       25 CALL                             R11 1 1
       26 MUL                              R9 R10 R11
       27 GETTABLEKS                       R10 R5 K13 ["Offset"]
       29 MUL                              R8 R9 R10
       30 SETTABLEKS                       R8 R7 K5 ["HandleCFrame"]
       32 GETTABLEKS                       R8 R5 K6 ["Color"]
       34 SETTABLEKS                       R8 R7 K6 ["Color"]
       36 GETTABLEKS                       R8 R5 K7 ["RadiusOffset"]
       38 SETTABLEKS                       R8 R7 K7 ["RadiusOffset"]
       40 GETTABLEKS                       R8 R0 K14 ["_scale"]
       42 SETTABLEKS                       R8 R7 K8 ["Scale"]
       44 SETTABLE                         R7 R6 R4
       45 FORGLOOP                         R1 2 ; [-30]
       47 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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
       70 GETTABLEKS                       R11 R12 K19 ["RotateHandleView"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K8 [require]
       75 GETTABLEKS                       R13 R1 K14 ["Components"]
       77 GETTABLEKS                       R12 R13 K20 ["SummonHandlesNote"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K8 [require]
       82 GETTABLEKS                       R14 R1 K14 ["Components"]
       84 GETTABLEKS                       R13 R14 K21 ["SummonHandlesHider"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K8 [require]
       89 GETTABLEKS                       R15 R1 K14 ["Components"]
       91 GETTABLEKS                       R14 R15 K22 ["DraggedPivot"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K8 [require]
       96 GETTABLEKS                       R16 R1 K14 ["Components"]
       98 GETTABLEKS                       R15 R16 K23 ["SummonedPivot"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K8 [require]
      103 GETTABLEKS                       R17 R1 K14 ["Components"]
      105 GETTABLEKS                       R16 R17 K24 ["HotkeyUsageInfo"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K8 [require]
      110 GETTABLEKS                       R18 R1 K25 ["Flags"]
      112 GETTABLEKS                       R17 R18 K26 ["getFFlagDraggerImprovements"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K8 [require]
      117 GETTABLEKS                       R19 R1 K25 ["Flags"]
      119 GETTABLEKS                       R18 R19 K27 ["getFFlagDraggerRotateReference"]
      121 CALL                             R17 1 1
      122 NEWTABLE                         R18 32 0
      124 SETTABLEKS                       R18 R18 K28 ["__index"]
      126 GETIMPORT                        R19 K31 [table.freeze]
      128 DUPTABLE                         R20 K35 [{"XAxis", "YAxis", "ZAxis"}]
      129 DUPTABLE                         R21 K39 [{"Offset", "Color", "RadiusOffset"}]
      130 GETIMPORT                        R22 K42 [CFrame.fromMatrix]
      132 FASTCALL                         VECTOR ; [+2]
      133 GETIMPORT                        R23 K45 [Vector3.new]
      135 CALL                             R23 0 1
      136 LOADK                            R24 K46 [{1, 0, 0}]
      137 LOADK                            R25 K47 [{0, 1, 0}]
      138 LOADK                            R26 K48 [{0, 0, 1}]
      139 CALL                             R22 4 1
      140 SETTABLEKS                       R22 R21 K36 ["Offset"]
      142 GETTABLEKS                       R22 R4 K49 ["X_AXIS"]
      144 SETTABLEKS                       R22 R21 K37 ["Color"]
      146 LOADN                            R22 0
      147 SETTABLEKS                       R22 R21 K38 ["RadiusOffset"]
      149 SETTABLEKS                       R21 R20 K32 ["XAxis"]
      151 DUPTABLE                         R21 K39 [{"Offset", "Color", "RadiusOffset"}]
      152 GETIMPORT                        R22 K42 [CFrame.fromMatrix]
      154 FASTCALL                         VECTOR ; [+2]
      155 GETIMPORT                        R23 K45 [Vector3.new]
      157 CALL                             R23 0 1
      158 LOADK                            R24 K47 [{0, 1, 0}]
      159 LOADK                            R25 K48 [{0, 0, 1}]
      160 LOADK                            R26 K46 [{1, 0, 0}]
      161 CALL                             R22 4 1
      162 SETTABLEKS                       R22 R21 K36 ["Offset"]
      164 GETTABLEKS                       R22 R4 K50 ["Y_AXIS"]
      166 SETTABLEKS                       R22 R21 K37 ["Color"]
      168 LOADK                            R22 K51 [0.01]
      169 SETTABLEKS                       R22 R21 K38 ["RadiusOffset"]
      171 SETTABLEKS                       R21 R20 K33 ["YAxis"]
      173 DUPTABLE                         R21 K39 [{"Offset", "Color", "RadiusOffset"}]
      174 GETIMPORT                        R22 K42 [CFrame.fromMatrix]
      176 FASTCALL                         VECTOR ; [+2]
      177 GETIMPORT                        R23 K45 [Vector3.new]
      179 CALL                             R23 0 1
      180 LOADK                            R24 K48 [{0, 0, 1}]
      181 LOADK                            R25 K46 [{1, 0, 0}]
      182 LOADK                            R26 K47 [{0, 1, 0}]
      183 CALL                             R22 4 1
      184 SETTABLEKS                       R22 R21 K36 ["Offset"]
      186 GETTABLEKS                       R22 R4 K52 ["Z_AXIS"]
      188 SETTABLEKS                       R22 R21 K37 ["Color"]
      190 LOADK                            R22 K53 [0.02]
      191 SETTABLEKS                       R22 R21 K38 ["RadiusOffset"]
      193 SETTABLEKS                       R21 R20 K34 ["ZAxis"]
      195 CALL                             R19 1 1
      196 DUPCLOSURE                       R20 K54 [PROTO_0]
      197 DUPCLOSURE                       R21 K55 [PROTO_1]
      198 CAPTURE                          VAL R7
      199 DUPCLOSURE                       R22 K56 [PROTO_2]
      200 CAPTURE                          VAL R5
      201 DUPCLOSURE                       R23 K57 [PROTO_3]
      202 DUPCLOSURE                       R24 K58 [PROTO_4]
      203 CAPTURE                          VAL R18
      204 SETTABLEKS                       R24 R18 K44 ["new"]
      206 DUPCLOSURE                       R24 K59 [PROTO_5]
      207 CAPTURE                          VAL R16
      208 CAPTURE                          VAL R8
      209 SETTABLEKS                       R24 R18 K60 ["_summonHandles"]
      211 DUPCLOSURE                       R24 K61 [PROTO_6]
      212 CAPTURE                          VAL R16
      213 SETTABLEKS                       R24 R18 K62 ["_endSummon"]
      215 DUPCLOSURE                       R24 K63 [PROTO_7]
      216 CAPTURE                          VAL R16
      217 SETTABLEKS                       R24 R18 K64 ["beginSummon"]
      219 DUPCLOSURE                       R24 K65 [PROTO_8]
      220 CAPTURE                          VAL R16
      221 SETTABLEKS                       R24 R18 K66 ["endSummon"]
      223 DUPCLOSURE                       R24 K67 [PROTO_9]
      224 CAPTURE                          VAL R16
      225 SETTABLEKS                       R24 R18 K68 ["_getBasisOffset"]
      227 DUPCLOSURE                       R24 K69 [PROTO_10]
      228 CAPTURE                          VAL R16
      229 SETTABLEKS                       R24 R18 K70 ["update"]
      231 DUPCLOSURE                       R24 K71 [PROTO_11]
      232 SETTABLEKS                       R24 R18 K72 ["shouldBiasTowardsObjects"]
      234 DUPCLOSURE                       R24 K73 [PROTO_12]
      235 CAPTURE                          VAL R10
      236 SETTABLEKS                       R24 R18 K74 ["hitTest"]
      238 DUPCLOSURE                       R24 K75 [PROTO_13]
      239 CAPTURE                          VAL R9
      240 CAPTURE                          VAL R3
      241 CAPTURE                          VAL R15
      242 SETTABLEKS                       R24 R18 K76 ["_renderHotkeyHelp"]
      244 DUPCLOSURE                       R24 K77 [PROTO_14]
      245 SETTABLEKS                       R24 R18 K78 ["_getTickAngle"]
      247 DUPCLOSURE                       R24 K79 [PROTO_15]
      248 CAPTURE                          VAL R3
      249 CAPTURE                          VAL R10
      250 CAPTURE                          VAL R19
      251 CAPTURE                          VAL R4
      252 SETTABLEKS                       R24 R18 K80 ["_renderDraggingHandles"]
      254 DUPCLOSURE                       R24 K81 [PROTO_16]
      255 CAPTURE                          VAL R3
      256 SETTABLEKS                       R24 R18 K82 ["_renderDragging"]
      258 DUPCLOSURE                       R24 K83 [PROTO_17]
      259 CAPTURE                          VAL R4
      260 CAPTURE                          VAL R3
      261 CAPTURE                          VAL R10
      262 SETTABLEKS                       R24 R18 K84 ["_renderHovering"]
      264 DUPCLOSURE                       R24 K85 [PROTO_18]
      265 SETTABLEKS                       R24 R18 K86 ["_renderDragOrHover"]
      267 DUPCLOSURE                       R24 K87 [PROTO_19]
      268 CAPTURE                          VAL R3
      269 CAPTURE                          VAL R6
      270 SETTABLEKS                       R24 R18 K88 ["_renderBoundingBox"]
      272 DUPCLOSURE                       R24 K89 [PROTO_20]
      273 CAPTURE                          VAL R3
      274 CAPTURE                          VAL R14
      275 CAPTURE                          VAL R12
      276 CAPTURE                          VAL R11
      277 SETTABLEKS                       R24 R18 K90 ["_renderSummon"]
      279 DUPCLOSURE                       R24 K91 [PROTO_21]
      280 CAPTURE                          VAL R3
      281 SETTABLEKS                       R24 R18 K92 ["renderNEW"]
      283 DUPCLOSURE                       R24 K93 [PROTO_22]
      284 CAPTURE                          VAL R16
      285 CAPTURE                          VAL R3
      286 CAPTURE                          VAL R10
      287 CAPTURE                          VAL R19
      288 CAPTURE                          VAL R4
      289 CAPTURE                          VAL R6
      290 CAPTURE                          VAL R0
      291 CAPTURE                          VAL R13
      292 CAPTURE                          VAL R12
      293 CAPTURE                          VAL R11
      294 SETTABLEKS                       R24 R18 K94 ["render"]
      296 DUPCLOSURE                       R24 K95 [PROTO_23]
      297 CAPTURE                          VAL R22
      298 CAPTURE                          VAL R16
      299 SETTABLEKS                       R24 R18 K96 ["mouseDown"]
      301 DUPCLOSURE                       R24 K97 [PROTO_24]
      302 CAPTURE                          VAL R22
      303 CAPTURE                          VAL R16
      304 CAPTURE                          VAL R21
      305 SETTABLEKS                       R24 R18 K98 ["mouseDrag"]
      307 DUPCLOSURE                       R24 K99 [PROTO_25]
      308 CAPTURE                          VAL R16
      309 CAPTURE                          VAL R17
      310 SETTABLEKS                       R24 R18 K100 ["mouseUp"]
      312 DUPCLOSURE                       R24 K101 [PROTO_26]
      313 CAPTURE                          VAL R19
      314 SETTABLEKS                       R24 R18 K102 ["_updateHandles"]
      316 GETIMPORT                        R24 K31 [table.freeze]
      318 NEWTABLE                         R25 2 0
      320 GETIMPORT                        R26 K106 [Enum.KeyCode.RightShift]
      322 LOADB                            R27 1
      323 SETTABLE                         R27 R25 R26
      324 GETIMPORT                        R26 K108 [Enum.KeyCode.LeftShift]
      326 LOADB                            R27 1
      327 SETTABLE                         R27 R25 R26
      328 CALL                             R24 1 1
      329 DUPCLOSURE                       R25 K109 [PROTO_27]
      330 CAPTURE                          VAL R16
      331 CAPTURE                          VAL R24
      332 SETTABLEKS                       R25 R18 K110 ["keyDown"]
      334 DUPCLOSURE                       R25 K111 [PROTO_28]
      335 CAPTURE                          VAL R16
      336 CAPTURE                          VAL R24
      337 SETTABLEKS                       R25 R18 K112 ["keyUp"]
      339 DUPCLOSURE                       R25 K113 [PROTO_29]
      340 SETTABLEKS                       R25 R18 K114 ["getPriority"]
      342 RETURN                           R18 1
