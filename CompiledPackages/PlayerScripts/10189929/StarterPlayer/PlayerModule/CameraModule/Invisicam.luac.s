PROTO_0:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 LOADK                            R2 K0 [""]
        4 GETIMPORT                        R3 K2 [pairs]
        6 NEWTABLE                         R4 0 0
        8 GETVARARGS                       R6 -1
        9 SETLIST                          R4 R6 -1 [1]
       11 CALL                             R3 1 3
       12 FORGPREP_NEXT                    R3
       13 LOADB                            R8 1
       14 SETTABLE                         R8 R1 R7
       15 MOVE                             R8 R2
       16 JUMPIFNOTEQKS                    R2 K0 [""] ; [+3]
       18 LOADK                            R9 K0 [""]
       19 JUMP                             ; [+1]
       20 LOADK                            R9 K3 [" or "]
       21 MOVE                             R10 R7
       22 CONCAT                           R2 R8 R10
       23 FORGLOOP                         R3 2 ; [-11]
       25 FASTCALL1                        TYPE R0 ; [+3]
       26 MOVE                             R4 R0
       27 GETIMPORT                        R3 K5 [type]
       29 CALL                             R3 1 1
       30 GETTABLE                         R5 R1 R3
       31 MOVE                             R7 R2
       32 LOADK                            R8 K6 [" type expected, got: "]
       33 MOVE                             R9 R3
       34 CONCAT                           R6 R7 R9
       35 FASTCALL2                        ASSERT R5 R6 ; [+3]
       37 GETIMPORT                        R4 K8 [assert]
       39 CALL                             R4 2 0
       40 RETURN                           R0 0

PROTO_1:
        0 MUL                              R13 R4 R8
        1 MUL                              R14 R5 R7
        2 SUB                              R12 R13 R14
        3 MUL                              R11 R0 R12
        4 MUL                              R14 R3 R8
        5 MUL                              R15 R5 R6
        6 SUB                              R13 R14 R15
        7 MUL                              R12 R1 R13
        8 SUB                              R10 R11 R12
        9 MUL                              R13 R3 R7
       10 MUL                              R14 R4 R6
       11 SUB                              R12 R13 R14
       12 MUL                              R11 R2 R12
       13 ADD                              R9 R10 R11
       14 RETURN                           R9 1

PROTO_2:
        0 MOVE                             R6 R3
        1 NAMECALL                         R4 R1 K0 ["Cross"]
        3 CALL                             R4 2 1
        4 GETTABLEKS                       R6 R2 K1 ["X"]
        6 GETTABLEKS                       R7 R0 K1 ["X"]
        8 SUB                              R5 R6 R7
        9 GETTABLEKS                       R7 R2 K2 ["Y"]
       11 GETTABLEKS                       R8 R0 K2 ["Y"]
       13 SUB                              R6 R7 R8
       14 GETTABLEKS                       R8 R2 K3 ["Z"]
       16 GETTABLEKS                       R9 R0 K3 ["Z"]
       18 SUB                              R7 R8 R9
       19 GETTABLEKS                       R9 R1 K1 ["X"]
       21 GETTABLEKS                       R11 R3 K1 ["X"]
       23 MINUS                            R10 R11
       24 GETTABLEKS                       R11 R4 K1 ["X"]
       26 GETTABLEKS                       R12 R1 K2 ["Y"]
       28 GETTABLEKS                       R14 R3 K2 ["Y"]
       30 MINUS                            R13 R14
       31 GETTABLEKS                       R14 R4 K2 ["Y"]
       33 GETTABLEKS                       R15 R1 K3 ["Z"]
       35 GETTABLEKS                       R17 R3 K3 ["Z"]
       37 MINUS                            R16 R17
       38 GETTABLEKS                       R17 R4 K3 ["Z"]
       40 MUL                              R21 R13 R17
       41 MUL                              R22 R14 R16
       42 SUB                              R20 R21 R22
       43 MUL                              R19 R9 R20
       44 MUL                              R22 R12 R17
       45 MUL                              R23 R14 R15
       46 SUB                              R21 R22 R23
       47 MUL                              R20 R10 R21
       48 SUB                              R18 R19 R20
       49 MUL                              R21 R12 R16
       50 MUL                              R22 R13 R15
       51 SUB                              R20 R21 R22
       52 MUL                              R19 R11 R20
       53 ADD                              R8 R18 R19
       54 JUMPIFNOTEQKN                    R8 K4 [0] ; [+3]
       56 LOADK                            R9 K5 [{0, 0, 0}]
       57 RETURN                           R9 1
       58 GETTABLEKS                       R12 R3 K1 ["X"]
       60 MINUS                            R11 R12
       61 GETTABLEKS                       R12 R4 K1 ["X"]
       63 GETTABLEKS                       R14 R3 K2 ["Y"]
       65 MINUS                            R13 R14
       66 GETTABLEKS                       R14 R4 K2 ["Y"]
       68 GETTABLEKS                       R16 R3 K3 ["Z"]
       70 MINUS                            R15 R16
       71 GETTABLEKS                       R16 R4 K3 ["Z"]
       73 MUL                              R20 R13 R16
       74 MUL                              R21 R14 R15
       75 SUB                              R19 R20 R21
       76 MUL                              R18 R5 R19
       77 MUL                              R21 R6 R16
       78 MUL                              R22 R14 R7
       79 SUB                              R20 R21 R22
       80 MUL                              R19 R11 R20
       81 SUB                              R17 R18 R19
       82 MUL                              R20 R6 R15
       83 MUL                              R21 R13 R7
       84 SUB                              R19 R20 R21
       85 MUL                              R18 R12 R19
       86 ADD                              R10 R17 R18
       87 DIV                              R9 R10 R8
       88 GETTABLEKS                       R12 R1 K1 ["X"]
       90 GETTABLEKS                       R13 R4 K1 ["X"]
       92 GETTABLEKS                       R14 R1 K2 ["Y"]
       94 GETTABLEKS                       R15 R4 K2 ["Y"]
       96 GETTABLEKS                       R16 R1 K3 ["Z"]
       98 GETTABLEKS                       R17 R4 K3 ["Z"]
      100 MUL                              R21 R6 R17
      101 MUL                              R22 R15 R7
      102 SUB                              R20 R21 R22
      103 MUL                              R19 R12 R20
      104 MUL                              R22 R14 R17
      105 MUL                              R23 R15 R16
      106 SUB                              R21 R22 R23
      107 MUL                              R20 R5 R21
      108 SUB                              R18 R19 R20
      109 MUL                              R21 R14 R7
      110 MUL                              R22 R6 R16
      111 SUB                              R20 R21 R22
      112 MUL                              R19 R13 R20
      113 ADD                              R11 R18 R19
      114 DIV                              R10 R11 R8
      115 MUL                              R12 R9 R1
      116 ADD                              R11 R0 R12
      117 MUL                              R13 R10 R3
      118 ADD                              R12 R2 R13
      119 SUB                              R15 R12 R11
      120 MULK                             R14 R15 K6 [0.5]
      121 ADD                              R13 R11 R14
      122 SUB                              R14 R12 R11
      123 GETTABLEKS                       R14 R14 K7 ["Magnitude"]
      125 LOADK                            R15 K8 [0.25]
      126 JUMPIFNOTLT                      R14 R15 ; [+2]
      128 RETURN                           R13 1
      129 LOADK                            R14 K5 [{0, 0, 0}]
      130 RETURN                           R14 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        7 GETIMPORT                        R0 K2 [setmetatable]
        9 CALL                             R0 2 1
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K3 ["char"]
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K4 ["humanoidRootPart"]
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K5 ["torsoPart"]
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K6 ["headPart"]
       22 LOADNIL                          R1
       23 SETTABLEKS                       R1 R0 K7 ["childAddedConn"]
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K8 ["childRemovedConn"]
       28 NEWTABLE                         R1 0 0
       30 SETTABLEKS                       R1 R0 K9 ["behaviors"]
       32 GETTABLEKS                       R1 R0 K9 ["behaviors"]
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R2 R2 K10 ["LIMBS"]
       37 GETTABLEKS                       R3 R0 K11 ["LimbBehavior"]
       39 SETTABLE                         R3 R1 R2
       40 GETTABLEKS                       R1 R0 K9 ["behaviors"]
       42 GETUPVAL                         R2 2
       43 GETTABLEKS                       R2 R2 K12 ["MOVEMENT"]
       45 GETTABLEKS                       R3 R0 K13 ["MoveBehavior"]
       47 SETTABLE                         R3 R1 R2
       48 GETTABLEKS                       R1 R0 K9 ["behaviors"]
       50 GETUPVAL                         R2 2
       51 GETTABLEKS                       R2 R2 K14 ["CORNERS"]
       53 GETTABLEKS                       R3 R0 K15 ["CornerBehavior"]
       55 SETTABLE                         R3 R1 R2
       56 GETTABLEKS                       R1 R0 K9 ["behaviors"]
       58 GETUPVAL                         R2 2
       59 GETTABLEKS                       R2 R2 K16 ["CIRCLE1"]
       61 GETTABLEKS                       R3 R0 K17 ["CircleBehavior"]
       63 SETTABLE                         R3 R1 R2
       64 GETTABLEKS                       R1 R0 K9 ["behaviors"]
       66 GETUPVAL                         R2 2
       67 GETTABLEKS                       R2 R2 K18 ["CIRCLE2"]
       69 GETTABLEKS                       R3 R0 K17 ["CircleBehavior"]
       71 SETTABLE                         R3 R1 R2
       72 GETTABLEKS                       R1 R0 K9 ["behaviors"]
       74 GETUPVAL                         R2 2
       75 GETTABLEKS                       R2 R2 K19 ["LIMBMOVE"]
       77 GETTABLEKS                       R3 R0 K20 ["LimbMoveBehavior"]
       79 SETTABLE                         R3 R1 R2
       80 GETTABLEKS                       R1 R0 K9 ["behaviors"]
       82 GETUPVAL                         R2 2
       83 GETTABLEKS                       R2 R2 K21 ["SMART_CIRCLE"]
       85 GETTABLEKS                       R3 R0 K22 ["SmartCircleBehavior"]
       87 SETTABLE                         R3 R1 R2
       88 GETTABLEKS                       R1 R0 K9 ["behaviors"]
       90 GETUPVAL                         R2 2
       91 GETTABLEKS                       R2 R2 K23 ["CHAR_OUTLINE"]
       93 GETTABLEKS                       R3 R0 K24 ["CharacterOutlineBehavior"]
       95 SETTABLE                         R3 R1 R2
       96 GETUPVAL                         R1 2
       97 GETTABLEKS                       R1 R1 K21 ["SMART_CIRCLE"]
       99 SETTABLEKS                       R1 R0 K25 ["mode"]
      101 GETTABLEKS                       R1 R0 K22 ["SmartCircleBehavior"]
      103 SETTABLEKS                       R1 R0 K26 ["behaviorFunction"]
      105 NEWTABLE                         R1 0 0
      107 SETTABLEKS                       R1 R0 K27 ["savedHits"]
      109 NEWTABLE                         R1 0 0
      111 SETTABLEKS                       R1 R0 K28 ["trackedLimbs"]
      113 GETIMPORT                        R1 K30 [game]
      115 GETTABLEKS                       R1 R1 K31 ["Workspace"]
      117 GETTABLEKS                       R1 R1 K32 ["CurrentCamera"]
      119 SETTABLEKS                       R1 R0 K33 ["camera"]
      121 LOADB                            R1 0
      122 SETTABLEKS                       R1 R0 K34 ["enabled"]
      124 RETURN                           R0 1

PROTO_4:
        0 SETTABLEKS                       R1 R0 K0 ["enabled"]
        2 JUMPIF                           R1 ; [+3]
        3 NAMECALL                         R2 R0 K1 ["Cleanup"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K3 [Enum.DevCameraOcclusionMode.Invisicam]
        2 RETURN                           R1 1

PROTO_6:
        0 GETIMPORT                        R2 K1 [pairs]
        2 GETTABLEKS                       R3 R0 K2 ["trackedLimbs"]
        4 CALL                             R2 1 3
        5 FORGPREP_NEXT                    R2
        6 LENGTH                           R8 R1
        7 ADDK                             R7 R8 K3 [1]
        8 GETTABLEKS                       R8 R5 K4 ["Position"]
       10 SETTABLE                         R8 R1 R7
       11 FORGLOOP                         R2 2 ; [-6]
       13 RETURN                           R0 0

PROTO_7:
        0 LOADN                            R4 1
        1 LOADN                            R2 3
        2 LOADN                            R3 1
        3 FORNPREP                         R2
        4 GETTABLEKS                       R5 R0 K0 ["humanoidRootPart"]
        6 GETTABLEKS                       R5 R5 K1 ["Position"]
        8 GETTABLEKS                       R6 R0 K0 ["humanoidRootPart"]
       10 GETTABLEKS                       R6 R6 K2 ["Velocity"]
       12 GETTABLEKS                       R9 R6 K4 ["X"]
       14 LOADN                            R10 0
       15 GETTABLEKS                       R11 R6 K5 ["Z"]
       17 FASTCALL                         VECTOR ; [+2]
       18 GETIMPORT                        R8 K8 [Vector3.new]
       20 CALL                             R8 3 1
       21 GETTABLEKS                       R8 R8 K9 ["Magnitude"]
       23 DIVK                             R7 R8 K3 [2]
       24 SUBK                             R10 R4 K10 [1]
       25 GETTABLEKS                       R11 R0 K0 ["humanoidRootPart"]
       27 GETTABLEKS                       R11 R11 K11 ["CFrame"]
       29 GETTABLEKS                       R11 R11 K12 ["lookVector"]
       31 MUL                              R9 R10 R11
       32 MUL                              R8 R9 R7
       33 LENGTH                           R10 R1
       34 ADDK                             R9 R10 K10 [1]
       35 ADD                              R10 R5 R8
       36 SETTABLE                         R10 R1 R9
       37 FORNLOOP                         R2
       38 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["humanoidRootPart"]
        2 GETTABLEKS                       R2 R2 K1 ["CFrame"]
        4 GETTABLEKS                       R3 R2 K2 ["Position"]
        6 SUB                              R4 R2 R3
        7 GETTABLEKS                       R6 R0 K4 ["char"]
        9 NAMECALL                         R6 R6 K5 ["GetExtentsSize"]
       11 CALL                             R6 1 1
       12 DIVK                             R5 R6 K3 [2]
       13 LENGTH                           R7 R1
       14 ADDK                             R6 R7 K6 [1]
       15 SETTABLE                         R3 R1 R6
       16 LOADN                            R8 1
       17 GETUPVAL                         R9 0
       18 LENGTH                           R6 R9
       19 LOADN                            R7 1
       20 FORNPREP                         R6
       21 LENGTH                           R10 R1
       22 ADDK                             R9 R10 K6 [1]
       23 GETUPVAL                         R14 0
       24 GETTABLE                         R13 R14 R8
       25 MUL                              R12 R5 R13
       26 MUL                              R11 R4 R12
       27 ADD                              R10 R3 R11
       28 SETTABLE                         R10 R1 R9
       29 FORNLOOP                         R6
       30 RETURN                           R0 0

PROTO_9:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R0 K0 ["mode"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["CIRCLE1"]
        6 JUMPIFNOTEQ                      R3 R4 ; [+6]
        8 GETTABLEKS                       R3 R0 K2 ["humanoidRootPart"]
       10 GETTABLEKS                       R2 R3 K3 ["CFrame"]
       12 JUMP                             ; [+12]
       13 GETTABLEKS                       R3 R0 K4 ["camera"]
       15 GETTABLEKS                       R3 R3 K5 ["CoordinateFrame"]
       17 GETTABLEKS                       R5 R3 K6 ["Position"]
       19 SUB                              R4 R3 R5
       20 GETTABLEKS                       R5 R0 K2 ["humanoidRootPart"]
       22 GETTABLEKS                       R5 R5 K6 ["Position"]
       24 ADD                              R2 R4 R5
       25 LENGTH                           R4 R1
       26 ADDK                             R3 R4 K7 [1]
       27 GETTABLEKS                       R4 R2 K6 ["Position"]
       29 SETTABLE                         R4 R1 R3
       30 LOADN                            R5 0
       31 LOADN                            R3 9
       32 LOADN                            R4 1
       33 FORNPREP                         R3
       34 LOADK                            R7 K8 [0.6283185307179586]
       35 MUL                              R6 R7 R5
       36 FASTCALL1                        MATH_COS R6 ; [+3]
       37 MOVE                             R10 R6
       38 GETIMPORT                        R9 K12 [math.cos]
       40 CALL                             R9 1 1
       41 FASTCALL1                        MATH_SIN R6 ; [+3]
       42 MOVE                             R11 R6
       43 GETIMPORT                        R10 K14 [math.sin]
       45 CALL                             R10 1 1
       46 LOADN                            R11 0
       47 FASTCALL                         VECTOR ; [+2]
       48 GETIMPORT                        R8 K17 [Vector3.new]
       50 CALL                             R8 3 1
       51 MULK                             R7 R8 K9 [3]
       52 LENGTH                           R9 R1
       53 ADDK                             R8 R9 K7 [1]
       54 MUL                              R9 R2 R7
       55 SETTABLE                         R9 R1 R8
       56 FORNLOOP                         R3
       57 RETURN                           R0 0

PROTO_10:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["LimbBehavior"]
        3 CALL                             R2 2 0
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R0 K1 ["MoveBehavior"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["torsoPart"]
        2 GETTABLEKS                       R2 R2 K1 ["CFrame"]
        4 GETTABLEKS                       R2 R2 K2 ["upVector"]
        6 GETTABLEKS                       R2 R2 K3 ["unit"]
        8 GETTABLEKS                       R3 R0 K0 ["torsoPart"]
       10 GETTABLEKS                       R3 R3 K1 ["CFrame"]
       12 GETTABLEKS                       R3 R3 K4 ["rightVector"]
       14 GETTABLEKS                       R3 R3 K3 ["unit"]
       16 LENGTH                           R5 R1
       17 ADDK                             R4 R5 K5 [1]
       18 GETTABLEKS                       R5 R0 K0 ["torsoPart"]
       20 GETTABLEKS                       R5 R5 K1 ["CFrame"]
       22 GETTABLEKS                       R5 R5 K6 ["Position"]
       24 SETTABLE                         R5 R1 R4
       25 LENGTH                           R5 R1
       26 ADDK                             R4 R5 K5 [1]
       27 GETTABLEKS                       R6 R0 K0 ["torsoPart"]
       29 GETTABLEKS                       R6 R6 K1 ["CFrame"]
       31 GETTABLEKS                       R6 R6 K6 ["Position"]
       33 ADD                              R5 R6 R2
       34 SETTABLE                         R5 R1 R4
       35 LENGTH                           R5 R1
       36 ADDK                             R4 R5 K5 [1]
       37 GETTABLEKS                       R6 R0 K0 ["torsoPart"]
       39 GETTABLEKS                       R6 R6 K1 ["CFrame"]
       41 GETTABLEKS                       R6 R6 K6 ["Position"]
       43 SUB                              R5 R6 R2
       44 SETTABLE                         R5 R1 R4
       45 LENGTH                           R5 R1
       46 ADDK                             R4 R5 K5 [1]
       47 GETTABLEKS                       R6 R0 K0 ["torsoPart"]
       49 GETTABLEKS                       R6 R6 K1 ["CFrame"]
       51 GETTABLEKS                       R6 R6 K6 ["Position"]
       53 ADD                              R5 R6 R3
       54 SETTABLE                         R5 R1 R4
       55 LENGTH                           R5 R1
       56 ADDK                             R4 R5 K5 [1]
       57 GETTABLEKS                       R6 R0 K0 ["torsoPart"]
       59 GETTABLEKS                       R6 R6 K1 ["CFrame"]
       61 GETTABLEKS                       R6 R6 K6 ["Position"]
       63 SUB                              R5 R6 R3
       64 SETTABLE                         R5 R1 R4
       65 GETTABLEKS                       R4 R0 K7 ["headPart"]
       67 JUMPIFNOT                        R4 ; [+9]
       68 LENGTH                           R5 R1
       69 ADDK                             R4 R5 K5 [1]
       70 GETTABLEKS                       R5 R0 K7 ["headPart"]
       72 GETTABLEKS                       R5 R5 K1 ["CFrame"]
       74 GETTABLEKS                       R5 R5 K6 ["Position"]
       76 SETTABLE                         R5 R1 R4
       77 GETIMPORT                        R4 K9 [CFrame.new]
       79 LOADK                            R5 K10 [{0, 0, 0}]
       80 GETTABLEKS                       R7 R0 K11 ["camera"]
       82 GETTABLEKS                       R7 R7 K12 ["CoordinateFrame"]
       84 GETTABLEKS                       R7 R7 K13 ["lookVector"]
       86 GETTABLEKS                       R7 R7 K14 ["X"]
       88 LOADN                            R8 0
       89 GETTABLEKS                       R9 R0 K11 ["camera"]
       91 GETTABLEKS                       R9 R9 K12 ["CoordinateFrame"]
       93 GETTABLEKS                       R9 R9 K13 ["lookVector"]
       95 GETTABLEKS                       R9 R9 K15 ["Z"]
       97 FASTCALL                         VECTOR ; [+2]
       98 GETIMPORT                        R6 K17 [Vector3.new]
      100 CALL                             R6 3 1
      101 CALL                             R4 2 1
      102 GETTABLEKS                       R6 R0 K0 ["torsoPart"]
      104 JUMPIFNOT                        R6 ; [+5]
      105 GETTABLEKS                       R5 R0 K0 ["torsoPart"]
      107 GETTABLEKS                       R5 R5 K6 ["Position"]
      109 JUMPIF                           R5 ; [+4]
      110 GETTABLEKS                       R5 R0 K18 ["humanoidRootPart"]
      112 GETTABLEKS                       R5 R5 K6 ["Position"]
      114 NEWTABLE                         R6 0 1
      116 GETTABLEKS                       R7 R0 K0 ["torsoPart"]
      118 SETLIST                          R6 R7 1 [1]
      120 GETTABLEKS                       R7 R0 K7 ["headPart"]
      122 JUMPIFNOT                        R7 ; [+5]
      123 LENGTH                           R8 R6
      124 ADDK                             R7 R8 K5 [1]
      125 GETTABLEKS                       R8 R0 K7 ["headPart"]
      127 SETTABLE                         R8 R6 R7
      128 LOADN                            R9 1
      129 LOADN                            R7 24
      130 LOADN                            R8 1
      131 FORNPREP                         R7
      132 LOADK                            R12 K20 [6.283185307179586]
      133 MUL                              R11 R12 R9
      134 DIVK                             R10 R11 K19 [24]
      135 FASTCALL1                        MATH_COS R10 ; [+3]
      136 MOVE                             R15 R10
      137 GETIMPORT                        R14 K24 [math.cos]
      139 CALL                             R14 1 1
      140 FASTCALL1                        MATH_SIN R10 ; [+3]
      141 MOVE                             R16 R10
      142 GETIMPORT                        R15 K26 [math.sin]
      144 CALL                             R15 1 1
      145 LOADN                            R16 0
      146 FASTCALL                         VECTOR ; [+2]
      147 GETIMPORT                        R13 K17 [Vector3.new]
      149 CALL                             R13 3 1
      150 MULK                             R12 R13 K21 [3]
      151 MUL                              R11 R4 R12
      152 GETTABLEKS                       R13 R11 K14 ["X"]
      154 GETTABLEKS                       R15 R11 K27 ["Y"]
      156 FASTCALL2K                       MATH_MAX R15 K28 ; [+4]
      158 LOADK                            R16 K28 [-2.25]
      159 GETIMPORT                        R14 K30 [math.max]
      161 CALL                             R14 2 1
      162 GETTABLEKS                       R15 R11 K15 ["Z"]
      164 FASTCALL                         VECTOR ; [+2]
      165 GETIMPORT                        R12 K17 [Vector3.new]
      167 CALL                             R12 3 1
      168 MOVE                             R11 R12
      169 GETUPVAL                         R12 0
      170 JUMPIFNOT                        R12 ; [+27]
      171 GETUPVAL                         R12 1
      172 SETTABLEKS                       R6 R12 K31 ["FilterDescendantsInstances"]
      174 GETIMPORT                        R12 K33 [game]
      176 GETTABLEKS                       R12 R12 K34 ["Workspace"]
      178 ADD                              R14 R5 R11
      179 LOADN                            R16 -3
      180 MUL                              R15 R16 R11
      181 GETUPVAL                         R16 1
      182 NAMECALL                         R12 R12 K35 ["Raycast"]
      184 CALL                             R12 4 1
      185 JUMPIFNOT                        R12 ; [+38]
      186 GETTABLEKS                       R13 R12 K6 ["Position"]
      188 LENGTH                           R15 R1
      189 ADDK                             R14 R15 K5 [1]
      190 LOADK                            R17 K36 [0.2]
      191 SUB                              R18 R5 R13
      192 GETTABLEKS                       R18 R18 K3 ["unit"]
      194 MUL                              R16 R17 R18
      195 ADD                              R15 R13 R16
      196 SETTABLE                         R15 R1 R14
      197 JUMP                             ; [+26]
      198 GETIMPORT                        R12 K38 [Ray.new]
      200 ADD                              R13 R5 R11
      201 LOADN                            R15 -3
      202 MUL                              R14 R15 R11
      203 CALL                             R12 2 1
      204 GETIMPORT                        R13 K33 [game]
      206 GETTABLEKS                       R13 R13 K34 ["Workspace"]
      208 MOVE                             R15 R12
      209 MOVE                             R16 R6
      210 LOADB                            R17 0
      211 NAMECALL                         R13 R13 K39 ["FindPartOnRayWithWhitelist"]
      213 CALL                             R13 4 2
      214 JUMPIFNOT                        R13 ; [+9]
      215 LENGTH                           R16 R1
      216 ADDK                             R15 R16 K5 [1]
      217 LOADK                            R18 K36 [0.2]
      218 SUB                              R19 R5 R14
      219 GETTABLEKS                       R19 R19 K3 ["unit"]
      221 MUL                              R17 R18 R19
      222 ADD                              R16 R14 R17
      223 SETTABLE                         R16 R1 R15
      224 FORNLOOP                         R7
      225 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["torsoPart"]
        2 GETTABLEKS                       R2 R2 K1 ["CFrame"]
        4 GETTABLEKS                       R2 R2 K2 ["upVector"]
        6 GETTABLEKS                       R2 R2 K3 ["unit"]
        8 GETTABLEKS                       R3 R0 K0 ["torsoPart"]
       10 GETTABLEKS                       R3 R3 K1 ["CFrame"]
       12 GETTABLEKS                       R3 R3 K4 ["rightVector"]
       14 GETTABLEKS                       R3 R3 K3 ["unit"]
       16 LENGTH                           R5 R1
       17 ADDK                             R4 R5 K5 [1]
       18 GETTABLEKS                       R5 R0 K0 ["torsoPart"]
       20 GETTABLEKS                       R5 R5 K1 ["CFrame"]
       22 GETTABLEKS                       R5 R5 K6 ["Position"]
       24 SETTABLE                         R5 R1 R4
       25 LENGTH                           R5 R1
       26 ADDK                             R4 R5 K5 [1]
       27 GETTABLEKS                       R6 R0 K0 ["torsoPart"]
       29 GETTABLEKS                       R6 R6 K1 ["CFrame"]
       31 GETTABLEKS                       R6 R6 K6 ["Position"]
       33 ADD                              R5 R6 R2
       34 SETTABLE                         R5 R1 R4
       35 LENGTH                           R5 R1
       36 ADDK                             R4 R5 K5 [1]
       37 GETTABLEKS                       R6 R0 K0 ["torsoPart"]
       39 GETTABLEKS                       R6 R6 K1 ["CFrame"]
       41 GETTABLEKS                       R6 R6 K6 ["Position"]
       43 SUB                              R5 R6 R2
       44 SETTABLE                         R5 R1 R4
       45 LENGTH                           R5 R1
       46 ADDK                             R4 R5 K5 [1]
       47 GETTABLEKS                       R6 R0 K0 ["torsoPart"]
       49 GETTABLEKS                       R6 R6 K1 ["CFrame"]
       51 GETTABLEKS                       R6 R6 K6 ["Position"]
       53 ADD                              R5 R6 R3
       54 SETTABLE                         R5 R1 R4
       55 LENGTH                           R5 R1
       56 ADDK                             R4 R5 K5 [1]
       57 GETTABLEKS                       R6 R0 K0 ["torsoPart"]
       59 GETTABLEKS                       R6 R6 K1 ["CFrame"]
       61 GETTABLEKS                       R6 R6 K6 ["Position"]
       63 SUB                              R5 R6 R3
       64 SETTABLE                         R5 R1 R4
       65 GETTABLEKS                       R4 R0 K7 ["headPart"]
       67 JUMPIFNOT                        R4 ; [+9]
       68 LENGTH                           R5 R1
       69 ADDK                             R4 R5 K5 [1]
       70 GETTABLEKS                       R5 R0 K7 ["headPart"]
       72 GETTABLEKS                       R5 R5 K1 ["CFrame"]
       74 GETTABLEKS                       R5 R5 K6 ["Position"]
       76 SETTABLE                         R5 R1 R4
       77 GETTABLEKS                       R5 R0 K8 ["camera"]
       79 GETTABLEKS                       R5 R5 K1 ["CFrame"]
       81 GETTABLEKS                       R6 R0 K8 ["camera"]
       83 GETTABLEKS                       R6 R6 K1 ["CFrame"]
       85 GETTABLEKS                       R6 R6 K6 ["Position"]
       87 SUB                              R4 R5 R6
       88 LOADK                            R6 K9 [{0, 0.5, 0}]
       89 GETTABLEKS                       R8 R0 K0 ["torsoPart"]
       91 JUMPIFNOT                        R8 ; [+5]
       92 GETTABLEKS                       R7 R0 K0 ["torsoPart"]
       94 GETTABLEKS                       R7 R7 K6 ["Position"]
       96 JUMPIF                           R7 ; [+4]
       97 GETTABLEKS                       R7 R0 K10 ["humanoidRootPart"]
       99 GETTABLEKS                       R7 R7 K6 ["Position"]
      101 ADD                              R5 R6 R7
      102 LOADN                            R8 1
      103 LOADN                            R6 24
      104 LOADN                            R7 1
      105 FORNPREP                         R6
      106 LOADK                            R11 K12 [0.2617993877991494]
      107 MUL                              R10 R11 R8
      108 SUBK                             R9 R10 K11 [1.5707963267948966]
      109 FASTCALL1                        MATH_COS R9 ; [+3]
      110 MOVE                             R13 R9
      111 GETIMPORT                        R12 K16 [math.cos]
      113 CALL                             R12 1 1
      114 FASTCALL1                        MATH_SIN R9 ; [+3]
      115 MOVE                             R14 R9
      116 GETIMPORT                        R13 K18 [math.sin]
      118 CALL                             R13 1 1
      119 LOADN                            R14 0
      120 FASTCALL                         VECTOR ; [+2]
      121 GETIMPORT                        R11 K21 [Vector3.new]
      123 CALL                             R11 3 1
      124 MULK                             R10 R11 K13 [2.5]
      125 MUL                              R12 R4 R10
      126 ADD                              R11 R5 R12
      127 GETTABLEKS                       R13 R0 K8 ["camera"]
      129 GETTABLEKS                       R13 R13 K1 ["CFrame"]
      131 GETTABLEKS                       R13 R13 K6 ["Position"]
      133 SUB                              R12 R11 R13
      134 GETUPVAL                         R13 0
      135 JUMPIFNOT                        R13 ; [+129]
      136 GETUPVAL                         R13 1
      137 NEWTABLE                         R14 0 1
      139 GETTABLEKS                       R15 R0 K22 ["char"]
      141 SETLIST                          R14 R15 1 [1]
      143 SETTABLEKS                       R14 R13 K23 ["FilterDescendantsInstances"]
      145 GETIMPORT                        R13 K25 [game]
      147 GETTABLEKS                       R13 R13 K26 ["Workspace"]
      149 MOVE                             R15 R5
      150 SUB                              R16 R11 R5
      151 GETUPVAL                         R17 1
      152 NAMECALL                         R13 R13 K27 ["Raycast"]
      154 CALL                             R13 4 1
      155 MOVE                             R14 R11
      156 JUMPIFNOT                        R13 ; [+104]
      157 GETTABLEKS                       R15 R13 K6 ["Position"]
      159 GETTABLEKS                       R16 R13 K28 ["Normal"]
      161 LOADK                            R19 K29 [0.1]
      162 GETTABLEKS                       R20 R16 K3 ["unit"]
      164 MUL                              R18 R19 R20
      165 ADD                              R17 R15 R18
      166 SUB                              R18 R17 R5
      167 MOVE                             R21 R12
      168 NAMECALL                         R19 R18 K30 ["Cross"]
      170 CALL                             R19 2 1
      171 GETTABLEKS                       R19 R19 K3 ["unit"]
      173 MOVE                             R22 R16
      174 NAMECALL                         R20 R19 K30 ["Cross"]
      176 CALL                             R20 2 1
      177 GETTABLEKS                       R20 R20 K3 ["unit"]
      179 GETTABLEKS                       R22 R0 K8 ["camera"]
      181 GETTABLEKS                       R22 R22 K1 ["CFrame"]
      183 GETTABLEKS                       R22 R22 K6 ["Position"]
      185 SUB                              R21 R17 R22
      186 GETTABLEKS                       R21 R21 K3 ["unit"]
      188 GETTABLEKS                       R22 R18 K3 ["unit"]
      190 MINUS                            R24 R20
      191 NAMECALL                         R22 R22 K31 ["Dot"]
      193 CALL                             R22 2 1
      194 GETTABLEKS                       R23 R18 K3 ["unit"]
      196 MOVE                             R25 R21
      197 NAMECALL                         R23 R23 K31 ["Dot"]
      199 CALL                             R23 2 1
      200 JUMPIFNOTLT                      R22 R23 ; [+38]
      202 GETUPVAL                         R22 2
      203 MOVE                             R23 R17
      204 MOVE                             R24 R20
      205 MOVE                             R25 R11
      206 MOVE                             R26 R12
      207 CALL                             R22 4 1
      208 MOVE                             R14 R22
      209 GETTABLEKS                       R22 R14 K32 ["Magnitude"]
      211 LOADN                            R23 0
      212 JUMPIFNOTLT                      R23 R22 ; [+24]
      214 GETIMPORT                        R22 K25 [game]
      216 GETTABLEKS                       R22 R22 K26 ["Workspace"]
      218 MOVE                             R24 R17
      219 SUB                              R25 R14 R17
      220 GETUPVAL                         R26 1
      221 NAMECALL                         R22 R22 K27 ["Raycast"]
      223 CALL                             R22 4 1
      224 MOVE                             R13 R22
      225 JUMPIFNOT                        R13 ; [+14]
      226 GETTABLEKS                       R23 R13 K6 ["Position"]
      228 LOADK                            R25 K29 [0.1]
      229 GETTABLEKS                       R26 R13 K28 ["Normal"]
      231 GETTABLEKS                       R26 R26 K33 ["Unit"]
      233 MUL                              R24 R25 R26
      234 ADD                              R22 R23 R24
      235 MOVE                             R14 R22
      236 JUMP                             ; [+3]
      237 MOVE                             R14 R17
      238 JUMP                             ; [+1]
      239 MOVE                             R14 R17
      240 GETIMPORT                        R22 K25 [game]
      242 GETTABLEKS                       R22 R22 K26 ["Workspace"]
      244 MOVE                             R24 R5
      245 SUB                              R25 R14 R5
      246 GETUPVAL                         R26 1
      247 NAMECALL                         R22 R22 K27 ["Raycast"]
      249 CALL                             R22 4 1
      250 MOVE                             R13 R22
      251 JUMPIFNOT                        R13 ; [+9]
      252 GETTABLEKS                       R23 R13 K6 ["Position"]
      254 LOADK                            R25 K29 [0.1]
      255 SUB                              R26 R14 R5
      256 GETTABLEKS                       R26 R26 K3 ["unit"]
      258 MUL                              R24 R25 R26
      259 SUB                              R22 R23 R24
      260 MOVE                             R14 R22
      261 LENGTH                           R16 R1
      262 ADDK                             R15 R16 K5 [1]
      263 SETTABLE                         R14 R1 R15
      264 JUMP                             ; [+140]
      265 GETIMPORT                        R13 K35 [Ray.new]
      267 MOVE                             R14 R5
      268 SUB                              R15 R11 R5
      269 CALL                             R13 2 1
      270 GETIMPORT                        R14 K25 [game]
      272 GETTABLEKS                       R14 R14 K26 ["Workspace"]
      274 MOVE                             R16 R13
      275 NEWTABLE                         R17 0 1
      277 GETTABLEKS                       R18 R0 K22 ["char"]
      279 SETLIST                          R17 R18 1 [1]
      281 LOADB                            R18 0
      282 LOADB                            R19 0
      283 NAMECALL                         R14 R14 K36 ["FindPartOnRayWithIgnoreList"]
      285 CALL                             R14 5 3
      286 MOVE                             R17 R11
      287 JUMPIFNOT                        R14 ; [+114]
      288 LOADK                            R20 K29 [0.1]
      289 GETTABLEKS                       R21 R16 K3 ["unit"]
      291 MUL                              R19 R20 R21
      292 ADD                              R18 R15 R19
      293 SUB                              R19 R18 R5
      294 MOVE                             R22 R12
      295 NAMECALL                         R20 R19 K30 ["Cross"]
      297 CALL                             R20 2 1
      298 GETTABLEKS                       R20 R20 K3 ["unit"]
      300 MOVE                             R23 R16
      301 NAMECALL                         R21 R20 K30 ["Cross"]
      303 CALL                             R21 2 1
      304 GETTABLEKS                       R21 R21 K3 ["unit"]
      306 GETTABLEKS                       R23 R0 K8 ["camera"]
      308 GETTABLEKS                       R23 R23 K1 ["CFrame"]
      310 GETTABLEKS                       R23 R23 K6 ["Position"]
      312 SUB                              R22 R18 R23
      313 GETTABLEKS                       R22 R22 K3 ["unit"]
      315 GETTABLEKS                       R23 R19 K3 ["unit"]
      317 MINUS                            R25 R21
      318 NAMECALL                         R23 R23 K31 ["Dot"]
      320 CALL                             R23 2 1
      321 GETTABLEKS                       R24 R19 K3 ["unit"]
      323 MOVE                             R26 R22
      324 NAMECALL                         R24 R24 K31 ["Dot"]
      326 CALL                             R24 2 1
      327 JUMPIFNOTLT                      R23 R24 ; [+44]
      329 GETUPVAL                         R23 2
      330 MOVE                             R24 R18
      331 MOVE                             R25 R21
      332 MOVE                             R26 R11
      333 MOVE                             R27 R12
      334 CALL                             R23 4 1
      335 MOVE                             R17 R23
      336 GETTABLEKS                       R23 R17 K32 ["Magnitude"]
      338 LOADN                            R24 0
      339 JUMPIFNOTLT                      R24 R23 ; [+30]
      341 GETIMPORT                        R23 K35 [Ray.new]
      343 MOVE                             R24 R18
      344 SUB                              R25 R17 R18
      345 CALL                             R23 2 1
      346 GETIMPORT                        R24 K25 [game]
      348 GETTABLEKS                       R24 R24 K26 ["Workspace"]
      350 MOVE                             R26 R23
      351 NEWTABLE                         R27 0 1
      353 GETTABLEKS                       R28 R0 K22 ["char"]
      355 SETLIST                          R27 R28 1 [1]
      357 LOADB                            R28 0
      358 LOADB                            R29 0
      359 NAMECALL                         R24 R24 K36 ["FindPartOnRayWithIgnoreList"]
      361 CALL                             R24 5 3
      362 JUMPIFNOT                        R24 ; [+10]
      363 LOADK                            R29 K29 [0.1]
      364 GETTABLEKS                       R30 R26 K3 ["unit"]
      366 MUL                              R28 R29 R30
      367 ADD                              R27 R25 R28
      368 MOVE                             R17 R27
      369 JUMP                             ; [+3]
      370 MOVE                             R17 R18
      371 JUMP                             ; [+1]
      372 MOVE                             R17 R18
      373 GETIMPORT                        R23 K35 [Ray.new]
      375 MOVE                             R24 R5
      376 SUB                              R25 R17 R5
      377 CALL                             R23 2 1
      378 GETIMPORT                        R24 K25 [game]
      380 GETTABLEKS                       R24 R24 K26 ["Workspace"]
      382 MOVE                             R26 R23
      383 NEWTABLE                         R27 0 1
      385 GETTABLEKS                       R28 R0 K22 ["char"]
      387 SETLIST                          R27 R28 1 [1]
      389 LOADB                            R28 0
      390 LOADB                            R29 0
      391 NAMECALL                         R24 R24 K36 ["FindPartOnRayWithIgnoreList"]
      393 CALL                             R24 5 2
      394 JUMPIFNOT                        R24 ; [+7]
      395 LOADK                            R28 K29 [0.1]
      396 SUB                              R29 R17 R5
      397 GETTABLEKS                       R29 R29 K3 ["unit"]
      399 MUL                              R27 R28 R29
      400 SUB                              R26 R25 R27
      401 MOVE                             R17 R26
      402 LENGTH                           R19 R1
      403 ADDK                             R18 R19 K5 [1]
      404 SETTABLE                         R17 R1 R18
      405 FORNLOOP                         R6
      406 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["char"]
        2 JUMPIFNOT                        R1 ; [+38]
        3 GETTABLEKS                       R1 R0 K0 ["char"]
        5 LOADK                            R3 K1 ["Torso"]
        6 NAMECALL                         R1 R1 K2 ["FindFirstChild"]
        8 CALL                             R1 2 1
        9 SETTABLEKS                       R1 R0 K3 ["torsoPart"]
       11 GETTABLEKS                       R1 R0 K3 ["torsoPart"]
       13 JUMPIF                           R1 ; [+19]
       14 GETTABLEKS                       R1 R0 K0 ["char"]
       16 LOADK                            R3 K4 ["UpperTorso"]
       17 NAMECALL                         R1 R1 K2 ["FindFirstChild"]
       19 CALL                             R1 2 1
       20 SETTABLEKS                       R1 R0 K3 ["torsoPart"]
       22 GETTABLEKS                       R1 R0 K3 ["torsoPart"]
       24 JUMPIF                           R1 ; [+8]
       25 GETTABLEKS                       R1 R0 K0 ["char"]
       27 LOADK                            R3 K5 ["HumanoidRootPart"]
       28 NAMECALL                         R1 R1 K2 ["FindFirstChild"]
       30 CALL                             R1 2 1
       31 SETTABLEKS                       R1 R0 K3 ["torsoPart"]
       33 GETTABLEKS                       R1 R0 K0 ["char"]
       35 LOADK                            R3 K6 ["Head"]
       36 NAMECALL                         R1 R1 K2 ["FindFirstChild"]
       38 CALL                             R1 2 1
       39 SETTABLEKS                       R1 R0 K7 ["headPart"]
       41 RETURN                           R0 0

PROTO_14:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+28]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R3 R0 K2 ["Name"]
        8 GETTABLE                         R1 R2 R3
        9 JUMPIFNOT                        R1 ; [+5]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["trackedLimbs"]
       13 LOADB                            R2 1
       14 SETTABLE                         R2 R1 R0
       15 GETTABLEKS                       R1 R0 K2 ["Name"]
       17 JUMPIFEQKS                       R1 K4 ["Torso"] ; [+5]
       19 GETTABLEKS                       R1 R0 K2 ["Name"]
       21 JUMPIFNOTEQKS                    R1 K5 ["UpperTorso"] ; [+4]
       23 GETUPVAL                         R1 1
       24 SETTABLEKS                       R0 R1 K6 ["torsoPart"]
       26 GETTABLEKS                       R1 R0 K2 ["Name"]
       28 JUMPIFNOTEQKS                    R1 K7 ["Head"] ; [+4]
       30 GETUPVAL                         R1 1
       31 SETTABLEKS                       R0 R1 K8 ["headPart"]
       33 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["trackedLimbs"]
        3 LOADNIL                          R2
        4 SETTABLE                         R2 R1 R0
        5 GETUPVAL                         R1 0
        6 NAMECALL                         R1 R1 K1 ["CheckTorsoReference"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["LocalPlayer"]
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R0 K1 ["childAddedConn"]
        8 JUMPIFNOT                        R3 ; [+8]
        9 GETTABLEKS                       R3 R0 K1 ["childAddedConn"]
       11 NAMECALL                         R3 R3 K2 ["Disconnect"]
       13 CALL                             R3 1 0
       14 LOADNIL                          R3
       15 SETTABLEKS                       R3 R0 K1 ["childAddedConn"]
       17 GETTABLEKS                       R3 R0 K3 ["childRemovedConn"]
       19 JUMPIFNOT                        R3 ; [+8]
       20 GETTABLEKS                       R3 R0 K3 ["childRemovedConn"]
       22 NAMECALL                         R3 R3 K2 ["Disconnect"]
       24 CALL                             R3 1 0
       25 LOADNIL                          R3
       26 SETTABLEKS                       R3 R0 K3 ["childRemovedConn"]
       28 SETTABLEKS                       R1 R0 K4 ["char"]
       30 NEWTABLE                         R3 0 0
       32 SETTABLEKS                       R3 R0 K5 ["trackedLimbs"]
       34 NEWCLOSURE                       R3 P0
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R0
       37 NEWCLOSURE                       R4 P1
       38 CAPTURE                          VAL R0
       39 GETTABLEKS                       R5 R1 K6 ["ChildAdded"]
       41 MOVE                             R7 R3
       42 NAMECALL                         R5 R5 K7 ["Connect"]
       44 CALL                             R5 2 1
       45 SETTABLEKS                       R5 R0 K1 ["childAddedConn"]
       47 GETTABLEKS                       R5 R1 K8 ["ChildRemoved"]
       49 MOVE                             R7 R4
       50 NAMECALL                         R5 R5 K7 ["Connect"]
       52 CALL                             R5 2 1
       53 SETTABLEKS                       R5 R0 K3 ["childRemovedConn"]
       55 GETIMPORT                        R5 K10 [pairs]
       57 GETTABLEKS                       R6 R0 K4 ["char"]
       59 NAMECALL                         R6 R6 K11 ["GetChildren"]
       61 CALL                             R6 1 -1
       62 CALL                             R5 -1 3
       63 FORGPREP_NEXT                    R5
       64 LOADK                            R12 K12 ["BasePart"]
       65 NAMECALL                         R10 R9 K13 ["IsA"]
       67 CALL                             R10 2 1
       68 JUMPIFNOT                        R10 ; [+25]
       69 GETUPVAL                         R11 1
       70 GETTABLEKS                       R12 R9 K14 ["Name"]
       72 GETTABLE                         R10 R11 R12
       73 JUMPIFNOT                        R10 ; [+4]
       74 GETTABLEKS                       R10 R0 K5 ["trackedLimbs"]
       76 LOADB                            R11 1
       77 SETTABLE                         R11 R10 R9
       78 GETTABLEKS                       R10 R9 K14 ["Name"]
       80 JUMPIFEQKS                       R10 K15 ["Torso"] ; [+5]
       82 GETTABLEKS                       R10 R9 K14 ["Name"]
       84 JUMPIFNOTEQKS                    R10 K16 ["UpperTorso"] ; [+3]
       86 SETTABLEKS                       R9 R0 K17 ["torsoPart"]
       88 GETTABLEKS                       R10 R9 K14 ["Name"]
       90 JUMPIFNOTEQKS                    R10 K18 ["Head"] ; [+3]
       92 SETTABLEKS                       R9 R0 K19 ["headPart"]
       94 FORGLOOP                         R5 2 ; [-31]
       96 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 LOADK                            R4 K0 ["number"]
        3 CALL                             R2 2 0
        4 GETIMPORT                        R2 K2 [pairs]
        6 GETUPVAL                         R3 1
        7 CALL                             R2 1 3
        8 FORGPREP_NEXT                    R2
        9 JUMPIFNOTEQ                      R6 R1 ; [+11]
       11 SETTABLEKS                       R1 R0 K3 ["mode"]
       13 GETTABLEKS                       R8 R0 K4 ["behaviors"]
       15 GETTABLEKS                       R9 R0 K3 ["mode"]
       17 GETTABLE                         R7 R8 R9
       18 SETTABLEKS                       R7 R0 K5 ["behaviorFunction"]
       20 RETURN                           R0 0
       21 FORGLOOP                         R2 2 ; [-13]
       23 GETIMPORT                        R2 K7 [error]
       25 LOADK                            R3 K8 ["Invalid mode number"]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["savedHits"]
        2 RETURN                           R1 1

PROTO_19:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["savedHits"]
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 SETTABLEKS                       R5 R4 K3 ["LocalTransparencyModifier"]
        8 FORGLOOP                         R1 2 ; [-3]
       10 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["humanoidRootPart"]
        3 JUMPIFNOTEQ                      R0 R2 ; [+18]
        5 JUMPIF                           R1 ; [+16]
        6 GETUPVAL                         R2 0
        7 LOADNIL                          R3
        8 SETTABLEKS                       R3 R2 K0 ["humanoidRootPart"]
       10 GETUPVAL                         R2 1
       11 JUMPIFNOT                        R2 ; [+10]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K1 ["Connected"]
       15 JUMPIFNOT                        R2 ; [+6]
       16 GETUPVAL                         R2 1
       17 NAMECALL                         R2 R2 K2 ["Disconnect"]
       19 CALL                             R2 1 0
       20 LOADNIL                          R2
       21 SETUPVAL                         R2 1
       22 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["savedHits"]
        6 GETTABLE                         R1 R2 R0
        7 JUMPIF                           R1 ; [+6]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K0 ["savedHits"]
       11 GETTABLEKS                       R2 R0 K1 ["LocalTransparencyModifier"]
       13 SETTABLE                         R2 R1 R0
       14 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R4 R0 K0 ["enabled"]
        2 JUMPIFNOT                        R4 ; [+3]
        3 GETTABLEKS                       R4 R0 K1 ["char"]
        5 JUMPIF                           R4 ; [+1]
        6 RETURN                           R2 2
        7 GETIMPORT                        R4 K3 [game]
        9 GETTABLEKS                       R4 R4 K4 ["Workspace"]
       11 GETTABLEKS                       R4 R4 K5 ["CurrentCamera"]
       13 SETTABLEKS                       R4 R0 K6 ["camera"]
       15 GETTABLEKS                       R4 R0 K7 ["humanoidRootPart"]
       17 JUMPIF                           R4 ; [+40]
       18 GETTABLEKS                       R4 R0 K1 ["char"]
       20 LOADK                            R6 K8 ["Humanoid"]
       21 NAMECALL                         R4 R4 K9 ["FindFirstChildOfClass"]
       23 CALL                             R4 2 1
       24 JUMPIFNOT                        R4 ; [+8]
       25 GETTABLEKS                       R5 R4 K10 ["RootPart"]
       27 JUMPIFNOT                        R5 ; [+5]
       28 GETTABLEKS                       R5 R4 K10 ["RootPart"]
       30 SETTABLEKS                       R5 R0 K7 ["humanoidRootPart"]
       32 JUMP                             ; [+12]
       33 GETTABLEKS                       R5 R0 K1 ["char"]
       35 LOADK                            R7 K11 ["HumanoidRootPart"]
       36 NAMECALL                         R5 R5 K12 ["FindFirstChild"]
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R0 K7 ["humanoidRootPart"]
       41 GETTABLEKS                       R5 R0 K7 ["humanoidRootPart"]
       43 JUMPIF                           R5 ; [+1]
       44 RETURN                           R2 2
       45 LOADNIL                          R5
       46 GETTABLEKS                       R6 R0 K7 ["humanoidRootPart"]
       48 GETTABLEKS                       R6 R6 K13 ["AncestryChanged"]
       50 NEWCLOSURE                       R8 P0
       51 CAPTURE                          VAL R0
       52 CAPTURE                          REF R5
       53 NAMECALL                         R6 R6 K14 ["Connect"]
       55 CALL                             R6 2 1
       56 MOVE                             R5 R6
       57 CLOSEUPVALS                      R5
       58 GETTABLEKS                       R4 R0 K15 ["torsoPart"]
       60 JUMPIF                           R4 ; [+7]
       61 NAMECALL                         R4 R0 K16 ["CheckTorsoReference"]
       63 CALL                             R4 1 0
       64 GETTABLEKS                       R4 R0 K15 ["torsoPart"]
       66 JUMPIF                           R4 ; [+1]
       67 RETURN                           R2 2
       68 NEWTABLE                         R4 0 0
       70 GETTABLEKS                       R5 R0 K17 ["behaviorFunction"]
       72 MOVE                             R6 R0
       73 MOVE                             R7 R4
       74 CALL                             R5 2 0
       75 NEWTABLE                         R5 0 0
       77 NEWTABLE                         R6 0 1
       79 GETTABLEKS                       R7 R0 K1 ["char"]
       81 SETLIST                          R6 R7 1 [1]
       83 NEWCLOSURE                       R7 P1
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R0
       86 LOADNIL                          R8
       87 LOADN                            R9 0
       88 NEWTABLE                         R10 0 0
       90 LOADK                            R11 K18 [0.75]
       91 LOADK                            R12 K18 [0.75]
       92 GETTABLEKS                       R14 R0 K19 ["headPart"]
       94 JUMPIFNOT                        R14 ; [+7]
       95 GETTABLEKS                       R13 R0 K19 ["headPart"]
       97 GETTABLEKS                       R13 R13 K20 ["CFrame"]
       99 GETTABLEKS                       R13 R13 K21 ["Position"]
      101 JUMPIF                           R13 ; [+1]
      102 GETTABLEN                        R13 R4 1
      103 GETTABLEKS                       R15 R0 K15 ["torsoPart"]
      105 JUMPIFNOT                        R15 ; [+7]
      106 GETTABLEKS                       R14 R0 K15 ["torsoPart"]
      108 GETTABLEKS                       R14 R14 K20 ["CFrame"]
      110 GETTABLEKS                       R14 R14 K21 ["Position"]
      112 JUMPIF                           R14 ; [+1]
      113 GETTABLEN                        R14 R4 2
      114 GETTABLEKS                       R15 R0 K6 ["camera"]
      116 NEWTABLE                         R17 0 2
      118 MOVE                             R18 R13
      119 MOVE                             R19 R14
      120 SETLIST                          R17 R18 2 [1]
      122 MOVE                             R18 R6
      123 NAMECALL                         R15 R15 K22 ["GetPartsObscuringTarget"]
      125 CALL                             R15 3 1
      126 MOVE                             R8 R15
      127 LOADN                            R17 1
      128 LENGTH                           R15 R8
      129 LOADN                            R16 1
      130 FORNPREP                         R15
      131 GETTABLE                         R18 R8 R17
      132 ADDK                             R9 R9 K23 [1]
      133 LOADB                            R19 1
      134 SETTABLE                         R19 R10 R18
      135 GETIMPORT                        R19 K25 [pairs]
      137 NAMECALL                         R20 R18 K26 ["GetChildren"]
      139 CALL                             R20 1 -1
      140 CALL                             R19 -1 3
      141 FORGPREP_NEXT                    R19
      142 LOADK                            R26 K27 ["Decal"]
      143 NAMECALL                         R24 R23 K28 ["IsA"]
      145 CALL                             R24 2 1
      146 JUMPIF                           R24 ; [+5]
      147 LOADK                            R26 K29 ["Texture"]
      148 NAMECALL                         R24 R23 K28 ["IsA"]
      150 CALL                             R24 2 1
      151 JUMPIFNOT                        R24 ; [+2]
      152 ADDK                             R9 R9 K23 [1]
      153 JUMP                             ; [+2]
      154 FORGLOOP                         R19 2 ; [-13]
      156 FORNLOOP                         R15
      157 LOADN                            R15 0
      158 JUMPIFNOTLT                      R15 R9 ; [+19]
      160 DIVRK                            R17 K30 [0.375] R9
      161 ADDK                             R16 R17 K30 [0.375]
      162 DIVRK                            R17 K23 [1] R9
      163 FASTCALL2                        MATH_POW R16 R17 ; [+3]
      165 GETIMPORT                        R15 K33 [math.pow]
      167 CALL                             R15 2 1
      168 MOVE                             R11 R15
      169 DIVRK                            R17 K34 [0.25] R9
      170 ADDK                             R16 R17 K34 [0.25]
      171 DIVRK                            R17 K23 [1] R9
      172 FASTCALL2                        MATH_POW R16 R17 ; [+3]
      174 GETIMPORT                        R15 K33 [math.pow]
      176 CALL                             R15 2 1
      177 MOVE                             R12 R15
      178 GETTABLEKS                       R13 R0 K6 ["camera"]
      180 MOVE                             R15 R4
      181 MOVE                             R16 R6
      182 NAMECALL                         R13 R13 K22 ["GetPartsObscuringTarget"]
      184 CALL                             R13 3 1
      185 MOVE                             R8 R13
      186 NEWTABLE                         R13 0 0
      188 LOADN                            R16 1
      189 LENGTH                           R14 R8
      190 LOADN                            R15 1
      191 FORNPREP                         R14
      192 GETTABLE                         R17 R8 R16
      193 GETTABLE                         R19 R10 R17
      194 JUMPIFNOT                        R19 ; [+2]
      195 MOVE                             R18 R11
      196 JUMPIF                           R18 ; [+1]
      197 MOVE                             R18 R12
      198 SETTABLE                         R18 R13 R17
      199 GETTABLEKS                       R18 R17 K35 ["Transparency"]
      201 GETTABLE                         R19 R13 R17
      202 JUMPIFNOTLT                      R18 R19 ; [+12]
      204 LOADB                            R18 1
      205 SETTABLE                         R18 R5 R17
      206 GETTABLEKS                       R19 R0 K36 ["savedHits"]
      208 GETTABLE                         R18 R19 R17
      209 JUMPIF                           R18 ; [+5]
      210 GETTABLEKS                       R18 R0 K36 ["savedHits"]
      212 GETTABLEKS                       R19 R17 K37 ["LocalTransparencyModifier"]
      214 SETTABLE                         R19 R18 R17
      215 GETIMPORT                        R18 K25 [pairs]
      217 NAMECALL                         R19 R17 K26 ["GetChildren"]
      219 CALL                             R19 1 -1
      220 CALL                             R18 -1 3
      221 FORGPREP_NEXT                    R18
      222 LOADK                            R25 K27 ["Decal"]
      223 NAMECALL                         R23 R22 K28 ["IsA"]
      225 CALL                             R23 2 1
      226 JUMPIF                           R23 ; [+5]
      227 LOADK                            R25 K29 ["Texture"]
      228 NAMECALL                         R23 R22 K28 ["IsA"]
      230 CALL                             R23 2 1
      231 JUMPIFNOT                        R23 ; [+18]
      232 GETTABLEKS                       R23 R22 K35 ["Transparency"]
      234 GETTABLE                         R24 R13 R17
      235 JUMPIFNOTLT                      R23 R24 ; [+14]
      237 GETTABLE                         R23 R13 R17
      238 SETTABLE                         R23 R13 R22
      239 LOADB                            R23 1
      240 SETTABLE                         R23 R5 R22
      241 GETTABLEKS                       R24 R0 K36 ["savedHits"]
      243 GETTABLE                         R23 R24 R22
      244 JUMPIF                           R23 ; [+5]
      245 GETTABLEKS                       R23 R0 K36 ["savedHits"]
      247 GETTABLEKS                       R24 R22 K37 ["LocalTransparencyModifier"]
      249 SETTABLE                         R24 R23 R22
      250 FORGLOOP                         R18 2 ; [-29]
      252 FORNLOOP                         R14
      253 GETIMPORT                        R14 K25 [pairs]
      255 GETTABLEKS                       R15 R0 K36 ["savedHits"]
      257 CALL                             R14 1 3
      258 FORGPREP_NEXT                    R14
      259 GETTABLE                         R19 R5 R17
      260 JUMPIFNOT                        R19 ; [+18]
      261 GETTABLEKS                       R20 R17 K35 ["Transparency"]
      263 LOADN                            R21 1
      264 JUMPIFNOTLT                      R20 R21 ; [+10]
      266 GETTABLE                         R21 R13 R17
      267 GETTABLEKS                       R22 R17 K35 ["Transparency"]
      269 SUB                              R20 R21 R22
      270 GETTABLEKS                       R22 R17 K35 ["Transparency"]
      272 SUBRK                            R21 K23 [1] R22
      273 DIV                              R19 R20 R21
      274 JUMPIF                           R19 ; [+1]
      275 LOADN                            R19 0
      276 SETTABLEKS                       R19 R17 K37 ["LocalTransparencyModifier"]
      278 JUMP                             ; [+6]
      279 SETTABLEKS                       R18 R17 K37 ["LocalTransparencyModifier"]
      281 GETTABLEKS                       R19 R0 K36 ["savedHits"]
      283 LOADNIL                          R20
      284 SETTABLE                         R20 R19 R17
      285 FORGLOOP                         R14 2 ; [-27]
      287 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K8 ["Parent"]
       15 LOADK                            R4 K9 ["CommonUtils"]
       16 NAMECALL                         R2 R2 K10 ["WaitForChild"]
       18 CALL                             R2 2 -1
       19 CALL                             R1 -1 1
       20 GETTABLEKS                       R2 R1 K11 ["get"]
       22 LOADK                            R3 K12 ["FlagUtil"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R2 K13 ["getUserFlag"]
       26 LOADK                            R4 K14 ["UserRaycastUpdateAPI2"]
       27 CALL                             R3 1 1
       28 DUPTABLE                         R4 K31 [{["LIMBS"] = 2, ["MOVEMENT"] = 3, ["CORNERS"] = 4, ["CIRCLE1"] = 5, ["CIRCLE2"] = 6, ["LIMBMOVE"] = 7, ["SMART_CIRCLE"] = 8, ["CHAR_OUTLINE"] = 9}]
       29 NEWTABLE                         R5 16 0
       31 LOADB                            R6 1
       32 SETTABLEKS                       R6 R5 K32 ["Head"]
       34 LOADB                            R6 1
       35 SETTABLEKS                       R6 R5 K33 ["Left Arm"]
       37 LOADB                            R6 1
       38 SETTABLEKS                       R6 R5 K34 ["Right Arm"]
       40 LOADB                            R6 1
       41 SETTABLEKS                       R6 R5 K35 ["Left Leg"]
       43 LOADB                            R6 1
       44 SETTABLEKS                       R6 R5 K36 ["Right Leg"]
       46 LOADB                            R6 1
       47 SETTABLEKS                       R6 R5 K37 ["LeftLowerArm"]
       49 LOADB                            R6 1
       50 SETTABLEKS                       R6 R5 K38 ["RightLowerArm"]
       52 LOADB                            R6 1
       53 SETTABLEKS                       R6 R5 K39 ["LeftUpperLeg"]
       55 LOADB                            R6 1
       56 SETTABLEKS                       R6 R5 K40 ["RightUpperLeg"]
       58 NEWTABLE                         R6 0 4
       60 LOADK                            R7 K41 [{1, 1, -1}]
       61 LOADK                            R8 K42 [{1, -1, -1}]
       62 LOADK                            R9 K43 [{-1, -1, -1}]
       63 LOADK                            R10 K44 [{-1, 1, -1}]
       64 SETLIST                          R6 R7 4 [1]
       66 GETIMPORT                        R7 K47 [RaycastParams.new]
       68 CALL                             R7 0 1
       69 GETIMPORT                        R8 K51 [Enum.RaycastFilterType.Exclude]
       71 SETTABLEKS                       R8 R7 K52 ["FilterType"]
       73 GETIMPORT                        R8 K47 [RaycastParams.new]
       75 CALL                             R8 0 1
       76 GETIMPORT                        R9 K54 [Enum.RaycastFilterType.Include]
       78 SETTABLEKS                       R9 R8 K52 ["FilterType"]
       80 DUPCLOSURE                       R9 K55 [PROTO_0]
       81 DUPCLOSURE                       R10 K56 [PROTO_1]
       82 DUPCLOSURE                       R11 K57 [PROTO_2]
       83 GETIMPORT                        R12 K5 [require]
       85 GETIMPORT                        R13 K7 [script]
       87 GETTABLEKS                       R13 R13 K8 ["Parent"]
       89 LOADK                            R15 K58 ["BaseOcclusion"]
       90 NAMECALL                         R13 R13 K10 ["WaitForChild"]
       92 CALL                             R13 2 -1
       93 CALL                             R12 -1 1
       94 NEWTABLE                         R14 32 0
       96 FASTCALL2                        SETMETATABLE R14 R12 ; [+4]
       98 MOVE                             R15 R12
       99 GETIMPORT                        R13 K60 [setmetatable]
      101 CALL                             R13 2 1
      102 SETTABLEKS                       R13 R13 K61 ["__index"]
      104 DUPCLOSURE                       R14 K62 [PROTO_3]
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R4
      108 SETTABLEKS                       R14 R13 K46 ["new"]
      110 DUPCLOSURE                       R14 K63 [PROTO_4]
      111 SETTABLEKS                       R14 R13 K64 ["Enable"]
      113 DUPCLOSURE                       R14 K65 [PROTO_5]
      114 SETTABLEKS                       R14 R13 K66 ["GetOcclusionMode"]
      116 DUPCLOSURE                       R14 K67 [PROTO_6]
      117 SETTABLEKS                       R14 R13 K68 ["LimbBehavior"]
      119 DUPCLOSURE                       R14 K69 [PROTO_7]
      120 SETTABLEKS                       R14 R13 K70 ["MoveBehavior"]
      122 DUPCLOSURE                       R14 K71 [PROTO_8]
      123 CAPTURE                          VAL R6
      124 SETTABLEKS                       R14 R13 K72 ["CornerBehavior"]
      126 DUPCLOSURE                       R14 K73 [PROTO_9]
      127 CAPTURE                          VAL R4
      128 SETTABLEKS                       R14 R13 K74 ["CircleBehavior"]
      130 DUPCLOSURE                       R14 K75 [PROTO_10]
      131 SETTABLEKS                       R14 R13 K76 ["LimbMoveBehavior"]
      133 DUPCLOSURE                       R14 K77 [PROTO_11]
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R8
      136 SETTABLEKS                       R14 R13 K78 ["CharacterOutlineBehavior"]
      138 DUPCLOSURE                       R14 K79 [PROTO_12]
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R11
      142 SETTABLEKS                       R14 R13 K80 ["SmartCircleBehavior"]
      144 DUPCLOSURE                       R14 K81 [PROTO_13]
      145 SETTABLEKS                       R14 R13 K82 ["CheckTorsoReference"]
      147 DUPCLOSURE                       R14 K83 [PROTO_16]
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R5
      150 SETTABLEKS                       R14 R13 K84 ["CharacterAdded"]
      152 DUPCLOSURE                       R14 K85 [PROTO_17]
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R4
      155 SETTABLEKS                       R14 R13 K86 ["SetMode"]
      157 DUPCLOSURE                       R14 K87 [PROTO_18]
      158 SETTABLEKS                       R14 R13 K88 ["GetObscuredParts"]
      160 DUPCLOSURE                       R14 K89 [PROTO_19]
      161 SETTABLEKS                       R14 R13 K90 ["Cleanup"]
      163 DUPCLOSURE                       R14 K91 [PROTO_22]
      164 SETTABLEKS                       R14 R13 K92 ["Update"]
      166 RETURN                           R13 1
