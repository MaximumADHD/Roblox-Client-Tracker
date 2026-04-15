PROTO_0:
        0 LOADK                            R3 K0 ["Motor6D"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["Part0"]
        7 RETURN                           R1 1
        8 GETTABLEKS                       R1 R0 K3 ["Parent"]
       10 JUMPIFNOT                        R1 ; [+9]
       11 LOADK                            R4 K4 ["BasePart"]
       12 NAMECALL                         R2 R1 K1 ["IsA"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+1]
       16 RETURN                           R1 1
       17 GETTABLEKS                       R1 R1 K3 ["Parent"]
       19 JUMPBACK                         ; [-10]
       20 LOADNIL                          R2
       21 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [CFrame.new]
        2 CALL                             R1 0 1
        3 MOVE                             R2 R0
        4 JUMPIFEQKNIL                     R2 ; [+15]
        6 LOADK                            R5 K3 ["Bone"]
        7 NAMECALL                         R3 R2 K4 ["IsA"]
        9 CALL                             R3 2 1
       10 JUMPIFNOT                        R3 ; [+9]
       11 GETTABLEKS                       R4 R2 K0 ["CFrame"]
       13 GETTABLEKS                       R5 R2 K5 ["Transform"]
       15 MUL                              R3 R4 R5
       16 MUL                              R1 R3 R1
       17 GETTABLEKS                       R2 R2 K6 ["Parent"]
       19 JUMPBACK                         ; [-16]
       20 JUMPIFNOT                        R2 ; [+8]
       21 LOADK                            R5 K7 ["BasePart"]
       22 NAMECALL                         R3 R2 K4 ["IsA"]
       24 CALL                             R3 2 1
       25 JUMPIFNOT                        R3 ; [+3]
       26 GETTABLEKS                       R3 R2 K0 ["CFrame"]
       28 MUL                              R1 R3 R1
       29 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R3 K0 ["Bone"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K2 ["getGlobalCoordinateFrame"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_3:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R6 0
        3 SUBK                             R4 R0 K0 [1]
        4 LOADN                            R5 1
        5 FORNPREP                         R4
        6 DIV                              R9 R6 R0
        7 MULK                             R8 R9 K2 [3.14159265358979]
        8 MULK                             R7 R8 K1 [2]
        9 FASTCALL1                        MATH_COS R7 ; [+3]
       10 MOVE                             R10 R7
       11 GETIMPORT                        R9 K5 [math.cos]
       13 CALL                             R9 1 1
       14 MUL                              R8 R9 R1
       15 FASTCALL1                        MATH_SIN R7 ; [+3]
       16 MOVE                             R11 R7
       17 GETIMPORT                        R10 K7 [math.sin]
       19 CALL                             R10 1 1
       20 MUL                              R9 R10 R1
       21 JUMPIFNOTEQKS                    R2 K8 ["x"] ; [+16]
       23 LOADN                            R13 0
       24 FASTCALL3                        VECTOR R13 R8 R9
       26 MOVE                             R14 R8
       27 MOVE                             R15 R9
       28 GETIMPORT                        R12 K11 [Vector3.new]
       30 CALL                             R12 3 1
       31 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       33 MOVE                             R11 R3
       34 GETIMPORT                        R10 K14 [table.insert]
       36 CALL                             R10 2 0
       37 JUMP                             ; [+31]
       38 JUMPIFNOTEQKS                    R2 K15 ["y"] ; [+16]
       40 LOADN                            R14 0
       41 FASTCALL3                        VECTOR R8 R14 R9
       43 MOVE                             R13 R8
       44 MOVE                             R15 R9
       45 GETIMPORT                        R12 K11 [Vector3.new]
       47 CALL                             R12 3 1
       48 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       50 MOVE                             R11 R3
       51 GETIMPORT                        R10 K14 [table.insert]
       53 CALL                             R10 2 0
       54 JUMP                             ; [+14]
       55 LOADN                            R15 0
       56 FASTCALL3                        VECTOR R8 R9 R15
       58 MOVE                             R13 R8
       59 MOVE                             R14 R9
       60 GETIMPORT                        R12 K11 [Vector3.new]
       62 CALL                             R12 3 1
       63 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       65 MOVE                             R11 R3
       66 GETIMPORT                        R10 K14 [table.insert]
       68 CALL                             R10 2 0
       69 FORNLOOP                         R4
       70 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getParentGlobalCf"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["childInst"]
        7 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        9 MOVE                             R3 R1
       10 LOADK                            R4 K2 ["Incorrect inner logic, should have child instance"]
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 2 0
       14 LOADNIL                          R2
       15 GETUPVAL                         R3 1
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+15]
       18 LOADK                            R5 K5 ["Bone"]
       19 NAMECALL                         R3 R1 K6 ["IsA"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+4]
       23 GETUPVAL                         R2 2
       24 MOVE                             R3 R1
       25 CALL                             R2 1 1
       26 JUMP                             ; [+12]
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R2 R3 K7 ["getGlobalCoordinateFrame"]
       30 MOVE                             R3 R1
       31 CALL                             R2 1 1
       32 JUMP                             ; [+6]
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R3 R4 K7 ["getGlobalCoordinateFrame"]
       36 MOVE                             R4 R1
       37 CALL                             R3 1 1
       38 MOVE                             R2 R3
       39 GETTABLEKS                       R4 R2 K8 ["Position"]
       41 GETTABLEKS                       R5 R0 K8 ["Position"]
       43 SUB                              R3 R4 R5
       44 GETTABLEKS                       R4 R3 K9 ["Magnitude"]
       46 LOADN                            R5 0
       47 JUMPIFNOTLT                      R5 R4 ; [+66]
       49 GETTABLEKS                       R5 R3 K10 ["Unit"]
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R6 R7 K11 ["standardRadius"]
       54 JUMPIFNOTLE                      R4 R6 ; [+11]
       56 MULK                             R8 R4 K12 [0.5]
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R9 R10 K11 ["standardRadius"]
       60 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       62 GETIMPORT                        R7 K15 [math.min]
       64 CALL                             R7 2 1
       65 MOVE                             R6 R7
       66 GETTABLEKS                       R8 R0 K8 ["Position"]
       68 MUL                              R9 R5 R6
       69 ADD                              R7 R8 R9
       70 LOADNIL                          R8
       71 GETUPVAL                         R9 4
       72 CALL                             R9 0 1
       73 JUMPIFNOT                        R9 ; [+20]
       74 GETTABLEKS                       R11 R5 K16 ["Y"]
       76 FASTCALL1                        MATH_ABS R11 ; [+2]
       77 GETIMPORT                        R10 K18 [math.abs]
       79 CALL                             R10 1 1
       80 LOADK                            R11 K19 [0.9]
       81 JUMPIFNOTLT                      R11 R10 ; [+3]
       83 LOADK                            R9 K20 [{1, 0, 0}]
       84 JUMP                             ; [+1]
       85 LOADK                            R9 K21 [{0, 1, 0}]
       86 GETIMPORT                        R10 K24 [CFrame.lookAt]
       88 MOVE                             R11 R7
       89 ADD                              R12 R7 R5
       90 MOVE                             R13 R9
       91 CALL                             R10 3 1
       92 MOVE                             R8 R10
       93 JUMP                             ; [+6]
       94 GETIMPORT                        R9 K24 [CFrame.lookAt]
       96 MOVE                             R10 R7
       97 ADD                              R11 R7 R5
       98 CALL                             R9 2 1
       99 MOVE                             R8 R9
      100 GETUPVAL                         R10 0
      101 GETTABLEKS                       R9 R10 K25 ["connectionAdorneePart"]
      103 JUMPIFNOT                        R9 ; [+10]
      104 GETUPVAL                         R12 0
      105 GETTABLEKS                       R11 R12 K25 ["connectionAdorneePart"]
      107 GETTABLEKS                       R10 R11 K22 ["CFrame"]
      109 NAMECALL                         R10 R10 K26 ["Inverse"]
      111 CALL                             R10 1 1
      112 MUL                              R9 R10 R8
      113 RETURN                           R9 1
      114 GETIMPORT                        R5 K28 [CFrame.new]
      116 CALL                             R5 0 -1
      117 RETURN                           R5 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getParentGlobalCf"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["childInst"]
        7 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        9 MOVE                             R3 R1
       10 LOADK                            R4 K2 ["Incorrect inner logic, should have child instance"]
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 2 0
       14 LOADNIL                          R2
       15 GETUPVAL                         R3 1
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+15]
       18 LOADK                            R5 K5 ["Bone"]
       19 NAMECALL                         R3 R1 K6 ["IsA"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+4]
       23 GETUPVAL                         R2 2
       24 MOVE                             R3 R1
       25 CALL                             R2 1 1
       26 JUMP                             ; [+22]
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R2 R3 K7 ["getGlobalCoordinateFrame"]
       30 MOVE                             R3 R1
       31 CALL                             R2 1 1
       32 JUMP                             ; [+16]
       33 LOADK                            R5 K5 ["Bone"]
       34 NAMECALL                         R3 R1 K6 ["IsA"]
       36 CALL                             R3 2 1
       37 JUMPIFNOT                        R3 ; [+5]
       38 GETUPVAL                         R3 2
       39 MOVE                             R4 R1
       40 CALL                             R3 1 1
       41 MOVE                             R2 R3
       42 JUMP                             ; [+6]
       43 GETUPVAL                         R4 3
       44 GETTABLEKS                       R3 R4 K7 ["getGlobalCoordinateFrame"]
       46 MOVE                             R4 R1
       47 CALL                             R3 1 1
       48 MOVE                             R2 R3
       49 GETTABLEKS                       R4 R2 K8 ["Position"]
       51 GETTABLEKS                       R5 R0 K8 ["Position"]
       53 SUB                              R3 R4 R5
       54 GETTABLEKS                       R4 R3 K9 ["Magnitude"]
       56 LOADK                            R5 K10 [0.01]
       57 LOADN                            R6 0
       58 JUMPIFNOTLT                      R6 R4 ; [+24]
       60 GETUPVAL                         R7 0
       61 GETTABLEKS                       R6 R7 K11 ["standardRadius"]
       63 JUMPIFNOTLE                      R4 R6 ; [+11]
       65 MULK                             R8 R4 K12 [0.5]
       66 GETUPVAL                         R10 0
       67 GETTABLEKS                       R9 R10 K11 ["standardRadius"]
       69 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       71 GETIMPORT                        R7 K15 [math.min]
       73 CALL                             R7 2 1
       74 MOVE                             R6 R7
       75 SUB                              R8 R4 R6
       76 FASTCALL2K                       MATH_MAX R8 K10 ; [+4]
       78 LOADK                            R9 K10 [0.01]
       79 GETIMPORT                        R7 K17 [math.max]
       81 CALL                             R7 2 1
       82 MOVE                             R5 R7
       83 GETUPVAL                         R6 4
       84 CALL                             R6 0 1
       85 JUMPIFNOT                        R6 ; [+7]
       86 GETUPVAL                         R7 5
       87 GETTABLEKS                       R6 R7 K18 ["current"]
       89 JUMPIFNOT                        R6 ; [+3]
       90 MOVE                             R7 R6
       91 MOVE                             R8 R5
       92 CALL                             R7 1 0
       93 RETURN                           R5 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Clear"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["standardRadius"]
        7 DIVK                             R3 R1 K3 [2]
        8 MULK                             R2 R3 K2 [1.5]
        9 MINUS                            R4 R2
       10 MINUS                            R5 R2
       11 LOADN                            R6 0
       12 FASTCALL                         VECTOR ; [+2]
       13 GETIMPORT                        R3 K6 [Vector3.new]
       15 CALL                             R3 3 1
       16 MINUS                            R6 R2
       17 LOADN                            R7 0
       18 FASTCALL3                        VECTOR R2 R6 R7
       20 MOVE                             R5 R2
       21 GETIMPORT                        R4 K6 [Vector3.new]
       23 CALL                             R4 3 1
       24 LOADN                            R8 0
       25 FASTCALL3                        VECTOR R2 R2 R8
       27 MOVE                             R6 R2
       28 MOVE                             R7 R2
       29 GETIMPORT                        R5 K6 [Vector3.new]
       31 CALL                             R5 3 1
       32 MINUS                            R7 R2
       33 LOADN                            R9 0
       34 FASTCALL3                        VECTOR R7 R2 R9
       36 MOVE                             R8 R2
       37 GETIMPORT                        R6 K6 [Vector3.new]
       39 CALL                             R6 3 1
       40 LOADN                            R8 0
       41 LOADN                            R9 0
       42 MINUS                            R10 R0
       43 FASTCALL                         VECTOR ; [+2]
       44 GETIMPORT                        R7 K6 [Vector3.new]
       46 CALL                             R7 3 1
       47 GETUPVAL                         R8 0
       48 NEWTABLE                         R10 0 4
       50 MOVE                             R11 R3
       51 MOVE                             R12 R4
       52 MOVE                             R13 R5
       53 MOVE                             R14 R6
       54 SETLIST                          R10 R11 4 [1]
       56 LOADB                            R11 1
       57 NAMECALL                         R8 R8 K7 ["AddPath"]
       59 CALL                             R8 3 0
       60 GETUPVAL                         R8 0
       61 NEWTABLE                         R10 0 2
       63 MOVE                             R11 R3
       64 MOVE                             R12 R7
       65 SETLIST                          R10 R11 2 [1]
       67 LOADB                            R11 0
       68 NAMECALL                         R8 R8 K7 ["AddPath"]
       70 CALL                             R8 3 0
       71 GETUPVAL                         R8 0
       72 NEWTABLE                         R10 0 2
       74 MOVE                             R11 R4
       75 MOVE                             R12 R7
       76 SETLIST                          R10 R11 2 [1]
       78 LOADB                            R11 0
       79 NAMECALL                         R8 R8 K7 ["AddPath"]
       81 CALL                             R8 3 0
       82 GETUPVAL                         R8 0
       83 NEWTABLE                         R10 0 2
       85 MOVE                             R11 R5
       86 MOVE                             R12 R7
       87 SETLIST                          R10 R11 2 [1]
       89 LOADB                            R11 0
       90 NAMECALL                         R8 R8 K7 ["AddPath"]
       92 CALL                             R8 3 0
       93 GETUPVAL                         R8 0
       94 NEWTABLE                         R10 0 2
       96 MOVE                             R11 R6
       97 MOVE                             R12 R7
       98 SETLIST                          R10 R11 2 [1]
      100 LOADB                            R11 0
      101 NAMECALL                         R8 R8 K7 ["AddPath"]
      103 CALL                             R8 3 0
      104 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K0 ["current"]
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+4]
        9 GETUPVAL                         R0 2
       10 NAMECALL                         R0 R0 K1 ["Clear"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 MOVE                             R2 R1
        9 GETUPVAL                         R3 2
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 3
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+3]
       14 GETUPVAL                         R2 4
       15 SETTABLEKS                       R1 R2 K0 ["current"]
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          VAL R0
       21 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["allowHover"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K1 ["setHoveredPyramidParentName"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K2 ["parentInst"]
       11 GETTABLEKS                       R1 R2 K3 ["Name"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 1
       15 CALL                             R0 0 1
       16 JUMPIFNOT                        R0 ; [+9]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R0 R1 K4 ["compositeHoverEnter"]
       20 JUMPIFNOT                        R0 ; [+14]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R0 R1 K4 ["compositeHoverEnter"]
       24 CALL                             R0 0 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R0 R1 K5 ["DEPRECATED_setHoveredJointName"]
       29 JUMPIFNOT                        R0 ; [+5]
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R0 R1 K5 ["DEPRECATED_setHoveredJointName"]
       33 LOADNIL                          R1
       34 CALL                             R0 1 0
       35 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["parentInst"]
        3 GETTABLEKS                       R2 R3 K1 ["Name"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 MOVE                             R1 R0
       10 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["allowHover"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K1 ["setHoveredPyramidParentName"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 1
       12 CALL                             R0 0 1
       13 JUMPIFNOT                        R0 ; [+8]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K2 ["compositeHoverLeave"]
       17 JUMPIFNOT                        R0 ; [+4]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R0 R1 K2 ["compositeHoverLeave"]
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onJointClicked"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["onJointClicked"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K1 ["parentInst"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useRef"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R0 K1 ["updatePositions"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 NAMECALL                         R3 R3 K2 ["map"]
       20 CALL                             R3 2 1
       21 GETTABLEKS                       R4 R0 K1 ["updatePositions"]
       23 NEWCLOSURE                       R6 P1
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          VAL R2
       30 NAMECALL                         R4 R4 K2 ["map"]
       32 CALL                             R4 2 1
       33 NAMECALL                         R5 R4 K3 ["getValue"]
       35 CALL                             R5 1 1
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R6 R7 K4 ["useEffect"]
       39 NEWCLOSURE                       R7 P2
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R5
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          VAL R2
       45 NEWTABLE                         R8 0 1
       47 MOVE                             R9 R5
       48 SETLIST                          R8 R9 1 [1]
       50 CALL                             R6 2 0
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R6 R7 K5 ["createElement"]
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R7 R8 K6 ["Fragment"]
       57 LOADNIL                          R8
       58 DUPTABLE                         R9 K9 [{"Pyramid", "Wireframe"}]
       59 GETUPVAL                         R11 0
       60 GETTABLEKS                       R10 R11 K5 ["createElement"]
       62 LOADK                            R11 K10 ["PyramidHandleAdornment"]
       63 NEWTABLE                         R12 16 0
       65 GETTABLEKS                       R13 R0 K11 ["connectionAdorneePart"]
       67 SETTABLEKS                       R13 R12 K12 ["Adornee"]
       69 SETTABLEKS                       R3 R12 K13 ["CFrame"]
       71 GETUPVAL                         R14 6
       72 CALL                             R14 0 1
       73 JUMPIFNOT                        R14 ; [+2]
       74 LOADN                            R13 0
       75 JUMP                             ; [+1]
       76 LOADK                            R13 K14 [0.25]
       77 SETTABLEKS                       R13 R12 K15 ["Transparency"]
       79 LOADN                            R13 0
       80 SETTABLEKS                       R13 R12 K16 ["ZIndex"]
       82 GETTABLEKS                       R14 R0 K18 ["standardRadius"]
       84 MULK                             R13 R14 K17 [1.5]
       85 SETTABLEKS                       R13 R12 K19 ["Size"]
       87 SETTABLEKS                       R4 R12 K20 ["Height"]
       89 GETTABLEKS                       R13 R0 K21 ["color"]
       91 SETTABLEKS                       R13 R12 K22 ["Color3"]
       93 GETUPVAL                         R14 6
       94 CALL                             R14 0 1
       95 JUMPIFNOT                        R14 ; [+3]
       96 GETTABLEKS                       R13 R0 K23 ["isJointHovered"]
       98 JUMP                             ; [+1]
       99 LOADB                            R13 1
      100 SETTABLEKS                       R13 R12 K24 ["AlwaysOnTop"]
      102 GETUPVAL                         R15 0
      103 GETTABLEKS                       R14 R15 K25 ["Event"]
      105 GETTABLEKS                       R13 R14 K26 ["MouseEnter"]
      107 NEWCLOSURE                       R14 P3
      108 CAPTURE                          VAL R0
      109 CAPTURE                          UPVAL U6
      110 SETTABLE                         R14 R12 R13
      111 GETUPVAL                         R15 0
      112 GETTABLEKS                       R14 R15 K25 ["Event"]
      114 GETTABLEKS                       R13 R14 K27 ["MouseLeave"]
      116 NEWCLOSURE                       R14 P4
      117 CAPTURE                          VAL R0
      118 CAPTURE                          UPVAL U6
      119 SETTABLE                         R14 R12 R13
      120 GETUPVAL                         R15 0
      121 GETTABLEKS                       R14 R15 K25 ["Event"]
      123 GETTABLEKS                       R13 R14 K28 ["MouseButton1Down"]
      125 NEWCLOSURE                       R14 P5
      126 CAPTURE                          VAL R0
      127 SETTABLE                         R14 R12 R13
      128 CALL                             R10 2 1
      129 SETTABLEKS                       R10 R9 K7 ["Pyramid"]
      131 GETUPVAL                         R11 6
      132 CALL                             R11 0 1
      133 JUMPIF                           R11 ; [+5]
      134 GETTABLEKS                       R11 R0 K29 ["DEPRECATED_isPlayingAnimation"]
      136 JUMPIFNOT                        R11 ; [+2]
      137 LOADNIL                          R10
      138 JUMP                             ; [+39]
      139 GETUPVAL                         R12 0
      140 GETTABLEKS                       R11 R12 K5 ["createElement"]
      142 LOADK                            R12 K31 ["WireframeHandleAdornment"]
      143 DUPTABLE                         R13 K33 [{"Adornee", "AlwaysOnTop", "Transparency", "ZIndex", "Color3", "CFrame", "ref"}]
      144 GETTABLEKS                       R14 R0 K11 ["connectionAdorneePart"]
      146 SETTABLEKS                       R14 R13 K12 ["Adornee"]
      148 GETUPVAL                         R15 6
      149 CALL                             R15 0 1
      150 JUMPIFNOT                        R15 ; [+3]
      151 GETTABLEKS                       R14 R0 K23 ["isJointHovered"]
      153 JUMP                             ; [+1]
      154 LOADB                            R14 1
      155 SETTABLEKS                       R14 R13 K24 ["AlwaysOnTop"]
      157 GETUPVAL                         R15 6
      158 CALL                             R15 0 1
      159 JUMPIFNOT                        R15 ; [+2]
      160 LOADN                            R14 0
      161 JUMP                             ; [+1]
      162 LOADK                            R14 K14 [0.25]
      163 SETTABLEKS                       R14 R13 K15 ["Transparency"]
      165 LOADN                            R14 0
      166 SETTABLEKS                       R14 R13 K16 ["ZIndex"]
      168 GETTABLEKS                       R14 R0 K34 ["edgeColor"]
      170 SETTABLEKS                       R14 R13 K22 ["Color3"]
      172 SETTABLEKS                       R3 R13 K13 ["CFrame"]
      174 SETTABLEKS                       R1 R13 K32 ["ref"]
      176 CALL                             R11 2 1
      177 ORK                              R10 R11 K30 []
      178 SETTABLEKS                       R10 R9 K8 ["Wireframe"]
      180 CALL                             R6 3 -1
      181 RETURN                           R6 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["current"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["current"]
        9 JUMPIFNOTEQKN                    R0 K1 [1] ; [+33]
       11 GETIMPORT                        R1 K3 [workspace]
       13 GETTABLEKS                       R0 R1 K4 ["CurrentCamera"]
       15 LOADK                            R1 K5 [∞]
       16 JUMPIFNOT                        R0 ; [+14]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K6 ["getGlobalCoordinateFrame"]
       20 GETUPVAL                         R4 2
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R2 R3 K7 ["Position"]
       24 GETTABLEKS                       R5 R0 K8 ["CFrame"]
       26 GETTABLEKS                       R4 R5 K7 ["Position"]
       28 SUB                              R3 R4 R2
       29 GETTABLEKS                       R1 R3 K9 ["Magnitude"]
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R2 R3 K10 ["onJointHoverEnter"]
       34 JUMPIFNOT                        R2 ; [+8]
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R2 R3 K10 ["onJointHoverEnter"]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R3 R4 K11 ["Name"]
       41 MOVE                             R4 R1
       42 CALL                             R2 2 0
       43 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K1 ["current"]
        4 SUBK                             R2 R3 K0 [1]
        5 FASTCALL2K                       MATH_MAX R2 K2 ; [+4]
        7 LOADK                            R3 K2 [0]
        8 GETIMPORT                        R1 K5 [math.max]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K1 ["current"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R0 R1 K1 ["current"]
       16 JUMPIFNOTEQKN                    R0 K2 [0] ; [+12]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R0 R1 K6 ["onJointHoverLeave"]
       21 JUMPIFNOT                        R0 ; [+7]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R0 R1 K6 ["onJointHoverLeave"]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R1 R2 K7 ["Name"]
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_16:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+18]
        4 GETUPVAL                         R1 1
        5 LOADK                            R4 K0 ["Bone"]
        6 NAMECALL                         R2 R1 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 MOVE                             R0 R2
       14 JUMP                             ; [+24]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R2 R3 K2 ["getGlobalCoordinateFrame"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 1
       20 MOVE                             R0 R2
       21 JUMP                             ; [+17]
       22 GETUPVAL                         R1 1
       23 LOADK                            R3 K0 ["Bone"]
       24 NAMECALL                         R1 R1 K1 ["IsA"]
       26 CALL                             R1 2 1
       27 JUMPIFNOT                        R1 ; [+5]
       28 GETUPVAL                         R1 2
       29 GETUPVAL                         R2 1
       30 CALL                             R1 1 1
       31 MOVE                             R0 R1
       32 JUMP                             ; [+6]
       33 GETUPVAL                         R2 3
       34 GETTABLEKS                       R1 R2 K2 ["getGlobalCoordinateFrame"]
       36 GETUPVAL                         R2 1
       37 CALL                             R1 1 1
       38 MOVE                             R0 R1
       39 GETUPVAL                         R1 4
       40 CALL                             R1 0 1
       41 JUMPIF                           R1 ; [+23]
       42 GETUPVAL                         R2 5
       43 GETTABLEKS                       R1 R2 K3 ["DEPRECATED_applyTposeAdjustment"]
       45 JUMPIFNOT                        R1 ; [+19]
       46 GETUPVAL                         R1 6
       47 JUMPIFNOT                        R1 ; [+17]
       48 GETUPVAL                         R2 6
       49 GETTABLEKS                       R1 R2 K4 ["adjustmentValue"]
       51 JUMPIFNOT                        R1 ; [+13]
       52 GETUPVAL                         R3 6
       53 GETTABLEKS                       R2 R3 K4 ["adjustmentValue"]
       55 FASTCALL1                        TYPEOF R2 ; [+2]
       56 GETIMPORT                        R1 K6 [typeof]
       58 CALL                             R1 1 1
       59 JUMPIFNOTEQKS                    R1 K7 ["CFrame"] ; [+5]
       61 GETUPVAL                         R2 6
       62 GETTABLEKS                       R1 R2 K4 ["adjustmentValue"]
       64 MUL                              R0 R0 R1
       65 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["updatePositions"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U6
       11 NAMECALL                         R0 R0 K1 ["map"]
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+8]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["CFrame"]
        5 NAMECALL                         R2 R2 K1 ["Inverse"]
        7 CALL                             R2 1 1
        8 MUL                              R1 R2 R0
        9 JUMPIF                           R1 ; [+3]
       10 GETIMPORT                        R1 K3 [CFrame.new]
       12 CALL                             R1 0 1
       13 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K0 ["map"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+3]
        3 GETUPVAL                         R1 1
        4 ORK                              R0 R1 K0 [0.05]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 1
        7 ORK                              R0 R1 K0 [0.05]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K1 ["childJoints"]
       11 JUMPIF                           R1 ; [+2]
       12 NEWTABLE                         R1 0 0
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K2 ["Position"]
       17 LENGTH                           R3 R1
       18 LOADN                            R4 0
       19 JUMPIFNOTLT                      R4 R3 ; [+81]
       21 GETUPVAL                         R3 4
       22 CALL                             R3 0 1
       23 JUMPIFNOT                        R3 ; [+39]
       24 LOADN                            R3 0
       25 LOADN                            R4 0
       26 MOVE                             R5 R1
       27 LOADNIL                          R6
       28 LOADNIL                          R7
       29 FORGPREP                         R5
       30 GETUPVAL                         R12 5
       31 GETTABLEKS                       R11 R12 K3 ["getGlobalCoordinateFrame"]
       33 MOVE                             R12 R9
       34 CALL                             R11 1 1
       35 GETTABLEKS                       R10 R11 K2 ["Position"]
       37 SUB                              R12 R10 R2
       38 GETTABLEKS                       R11 R12 K4 ["Magnitude"]
       40 LOADN                            R12 0
       41 JUMPIFNOTLT                      R12 R11 ; [+3]
       43 ADD                              R3 R3 R11
       44 ADDK                             R4 R4 K5 [1]
       45 FORGLOOP                         R5 2 ; [-16]
       47 LOADN                            R5 0
       48 JUMPIFNOTLT                      R5 R4 ; [+80]
       50 DIV                              R5 R3 R4
       51 GETUPVAL                         R10 6
       52 GETTABLEKS                       R9 R10 K6 ["BONE_RADIUS_FRACTION"]
       54 MUL                              R8 R5 R9
       55 FASTCALL2                        MATH_MIN R0 R8 ; [+4]
       57 MOVE                             R7 R0
       58 GETIMPORT                        R6 K9 [math.min]
       60 CALL                             R6 2 1
       61 MOVE                             R0 R6
       62 JUMP                             ; [+66]
       63 LOADK                            R3 K10 [∞]
       64 MOVE                             R4 R1
       65 LOADNIL                          R5
       66 LOADNIL                          R6
       67 FORGPREP                         R4
       68 GETUPVAL                         R11 5
       69 GETTABLEKS                       R10 R11 K3 ["getGlobalCoordinateFrame"]
       71 MOVE                             R11 R8
       72 CALL                             R10 1 1
       73 GETTABLEKS                       R9 R10 K2 ["Position"]
       75 SUB                              R11 R9 R2
       76 GETTABLEKS                       R10 R11 K4 ["Magnitude"]
       78 LOADN                            R11 0
       79 JUMPIFNOTLT                      R11 R10 ; [+4]
       81 JUMPIFNOTLT                      R10 R3 ; [+2]
       83 MOVE                             R3 R10
       84 FORGLOOP                         R4 2 ; [-17]
       86 LOADK                            R4 K10 [∞]
       87 JUMPIFNOTLT                      R3 R4 ; [+41]
       89 GETUPVAL                         R8 6
       90 GETTABLEKS                       R7 R8 K6 ["BONE_RADIUS_FRACTION"]
       92 MUL                              R6 R3 R7
       93 FASTCALL2                        MATH_MIN R0 R6 ; [+4]
       95 MOVE                             R5 R0
       96 GETIMPORT                        R4 K9 [math.min]
       98 CALL                             R4 2 1
       99 MOVE                             R0 R4
      100 JUMP                             ; [+28]
      101 GETUPVAL                         R4 2
      102 GETTABLEKS                       R3 R4 K11 ["parentJoint"]
      104 JUMPIFNOT                        R3 ; [+24]
      105 GETUPVAL                         R6 5
      106 GETTABLEKS                       R5 R6 K3 ["getGlobalCoordinateFrame"]
      108 MOVE                             R6 R3
      109 CALL                             R5 1 1
      110 GETTABLEKS                       R4 R5 K2 ["Position"]
      112 SUB                              R6 R2 R4
      113 GETTABLEKS                       R5 R6 K4 ["Magnitude"]
      115 LOADN                            R6 0
      116 JUMPIFNOTLT                      R6 R5 ; [+12]
      118 GETUPVAL                         R10 6
      119 GETTABLEKS                       R9 R10 K6 ["BONE_RADIUS_FRACTION"]
      121 MUL                              R8 R5 R9
      122 FASTCALL2                        MATH_MIN R0 R8 ; [+4]
      124 MOVE                             R7 R0
      125 GETIMPORT                        R6 K9 [math.min]
      127 CALL                             R6 2 1
      128 MOVE                             R0 R6
      129 GETUPVAL                         R6 6
      130 GETTABLEKS                       R5 R6 K12 ["RADIUS_MIN"]
      132 FASTCALL2                        MATH_MAX R0 R5 ; [+4]
      134 MOVE                             R4 R0
      135 GETIMPORT                        R3 K14 [math.max]
      137 CALL                             R3 2 1
      138 RETURN                           R3 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K0 ["getGlobalCoordinateFrame"]
        9 GETUPVAL                         R1 3
       10 CALL                             R0 1 1
       11 JUMP                             ; [+1]
       12 GETUPVAL                         R0 4
       13 GETUPVAL                         R1 5
       14 GETTABLEKS                       R3 R0 K1 ["Position"]
       16 NAMECALL                         R1 R1 K2 ["WorldToViewportPoint"]
       18 CALL                             R1 2 2
       19 JUMPIFNOT                        R2 ; [+14]
       20 GETUPVAL                         R3 6
       21 GETIMPORT                        R4 K5 [Vector2.new]
       23 GETTABLEKS                       R5 R1 K6 ["X"]
       25 GETTABLEKS                       R7 R1 K8 ["Y"]
       27 SUBK                             R6 R7 K7 [30]
       28 CALL                             R4 2 -1
       29 CALL                             R3 -1 0
       30 GETUPVAL                         R3 7
       31 LOADB                            R4 1
       32 CALL                             R3 1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R3 7
       35 LOADB                            R4 0
       36 CALL                             R3 1 0
       37 RETURN                           R0 0
       38 RETURN                           R0 0

PROTO_22:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R0 R1 K2 ["CurrentCamera"]
        4 JUMPIF                           R0 ; [+7]
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 1
        9 LOADB                            R2 0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 2
       13 CALL                             R2 0 1
       14 JUMPIFNOT                        R2 ; [+9]
       15 GETUPVAL                         R2 3
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R3 R4 K3 ["Name"]
       19 JUMPIFEQ                         R2 R3 ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 JUMP                             ; [+3]
       24 GETUPVAL                         R1 3
       25 JUMPIF                           R1 ; [+1]
       26 GETUPVAL                         R1 5
       27 JUMPIF                           R1 ; [+7]
       28 GETUPVAL                         R2 0
       29 LOADB                            R3 0
       30 CALL                             R2 1 0
       31 GETUPVAL                         R2 1
       32 LOADB                            R3 0
       33 CALL                             R2 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 0
       36 LOADB                            R3 1
       37 CALL                             R2 1 0
       38 LOADB                            R2 1
       39 GETIMPORT                        R4 K5 [game]
       41 LOADK                            R6 K6 ["RunService"]
       42 NAMECALL                         R4 R4 K7 ["GetService"]
       44 CALL                             R4 2 1
       45 GETTABLEKS                       R3 R4 K8 ["RenderStepped"]
       47 NEWCLOSURE                       R5 P0
       48 CAPTURE                          REF R2
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          UPVAL U6
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U7
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U8
       55 CAPTURE                          UPVAL U1
       56 NAMECALL                         R3 R3 K9 ["Connect"]
       58 CALL                             R3 2 1
       59 NEWCLOSURE                       R4 P1
       60 CAPTURE                          REF R2
       61 CAPTURE                          VAL R3
       62 CLOSEUPVALS                      R2
       63 RETURN                           R4 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 JUMP                             ; [+5]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R1 R2 K0 ["Name"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 4
       12 LOADNIL                          R1
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R1 R2 K0 ["Name"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+4]
       12 GETUPVAL                         R0 4
       13 LOADNIL                          R1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onJointClicked"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["onJointClicked"]
        8 GETUPVAL                         R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_27:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["childJoints"]
        5 JUMPIF                           R1 ; [+2]
        6 NEWTABLE                         R1 0 0
        8 GETUPVAL                         R3 1
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+2]
       11 GETUPVAL                         R2 2
       12 JUMP                             ; [+1]
       13 GETUPVAL                         R2 3
       14 MOVE                             R3 R1
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 GETUPVAL                         R8 4
       19 MOVE                             R9 R2
       20 MOVE                             R10 R8
       21 CALL                             R9 1 1
       22 JUMPIF                           R9 ; [+3]
       23 MOVE                             R9 R2
       24 MOVE                             R10 R7
       25 CALL                             R9 1 1
       26 JUMPIFNOT                        R9 ; [+18]
       27 LOADK                            R11 K1 ["Connection_%*_%*_%*"]
       28 GETTABLEKS                       R13 R8 K2 ["Name"]
       30 GETTABLEKS                       R14 R7 K2 ["Name"]
       32 MOVE                             R15 R6
       33 NAMECALL                         R11 R11 K3 ["format"]
       35 CALL                             R11 4 1
       36 MOVE                             R10 R11
       37 DUPTABLE                         R11 K7 [{"parentInst", "childInst", "connectionAdorneePart"}]
       38 SETTABLEKS                       R8 R11 K4 ["parentInst"]
       40 SETTABLEKS                       R7 R11 K5 ["childInst"]
       42 SETTABLEKS                       R9 R11 K6 ["connectionAdorneePart"]
       44 SETTABLE                         R11 R0 R10
       45 FORGLOOP                         R3 2 ; [-28]
       47 RETURN                           R0 1

PROTO_28:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+20]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["parentInst"]
        7 LOADK                            R4 K1 ["Bone"]
        8 NAMECALL                         R2 R1 K2 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+5]
       12 GETUPVAL                         R2 2
       13 MOVE                             R3 R1
       14 CALL                             R2 1 1
       15 MOVE                             R0 R2
       16 JUMP                             ; [+30]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R2 R3 K3 ["getGlobalCoordinateFrame"]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 1
       22 MOVE                             R0 R2
       23 JUMP                             ; [+23]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R1 R2 K0 ["parentInst"]
       27 LOADK                            R3 K1 ["Bone"]
       28 NAMECALL                         R1 R1 K2 ["IsA"]
       30 CALL                             R1 2 1
       31 JUMPIFNOT                        R1 ; [+7]
       32 GETUPVAL                         R1 2
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R2 R3 K0 ["parentInst"]
       36 CALL                             R1 1 1
       37 MOVE                             R0 R1
       38 JUMP                             ; [+8]
       39 GETUPVAL                         R2 3
       40 GETTABLEKS                       R1 R2 K3 ["getGlobalCoordinateFrame"]
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R2 R3 K0 ["parentInst"]
       45 CALL                             R1 1 1
       46 MOVE                             R0 R1
       47 GETUPVAL                         R1 4
       48 CALL                             R1 0 1
       49 JUMPIF                           R1 ; [+21]
       50 GETUPVAL                         R2 5
       51 GETTABLEKS                       R1 R2 K4 ["DEPRECATED_applyTposeAdjustment"]
       53 JUMPIFNOT                        R1 ; [+17]
       54 GETUPVAL                         R2 6
       55 GETTABLEKS                       R1 R2 K5 ["adjustmentValue"]
       57 JUMPIFNOT                        R1 ; [+13]
       58 GETUPVAL                         R3 6
       59 GETTABLEKS                       R2 R3 K5 ["adjustmentValue"]
       61 FASTCALL1                        TYPEOF R2 ; [+2]
       62 GETIMPORT                        R1 K7 [typeof]
       64 CALL                             R1 1 1
       65 JUMPIFNOTEQKS                    R1 K8 ["CFrame"] ; [+5]
       67 GETUPVAL                         R2 6
       68 GETTABLEKS                       R1 R2 K5 ["adjustmentValue"]
       70 MUL                              R0 R0 R1
       71 RETURN                           R0 1

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["jointInstance"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R5 1
        8 CALL                             R5 0 1
        9 JUMPIFNOT                        R5 ; [+6]
       10 GETTABLEKS                       R4 R0 K2 ["globalHoveredJointName"]
       12 JUMPIF                           R4 ; [+4]
       13 GETTABLEKS                       R4 R0 K3 ["mannequinHoveredJointName"]
       15 JUMP                             ; [+1]
       16 MOVE                             R4 R2
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K1 ["useState"]
       20 LOADNIL                          R6
       21 CALL                             R5 1 2
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K4 ["useRef"]
       25 LOADN                            R8 0
       26 CALL                             R7 1 1
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R8 R9 K5 ["useCallback"]
       30 NEWCLOSURE                       R9 P0
       31 CAPTURE                          VAL R7
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R0
       35 NEWTABLE                         R10 0 2
       37 MOVE                             R11 R1
       38 GETTABLEKS                       R12 R0 K6 ["onJointHoverEnter"]
       40 SETLIST                          R10 R11 2 [1]
       42 CALL                             R8 2 1
       43 GETUPVAL                         R10 0
       44 GETTABLEKS                       R9 R10 K5 ["useCallback"]
       46 NEWCLOSURE                       R10 P1
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R1
       50 NEWTABLE                         R11 0 2
       52 MOVE                             R12 R1
       53 GETTABLEKS                       R13 R0 K7 ["onJointHoverLeave"]
       55 SETLIST                          R11 R12 2 [1]
       57 CALL                             R9 2 1
       58 GETUPVAL                         R11 0
       59 GETTABLEKS                       R10 R11 K1 ["useState"]
       61 LOADB                            R11 0
       62 CALL                             R10 1 2
       63 GETUPVAL                         R13 0
       64 GETTABLEKS                       R12 R13 K1 ["useState"]
       66 LOADB                            R13 0
       67 CALL                             R12 1 2
       68 GETUPVAL                         R15 0
       69 GETTABLEKS                       R14 R15 K1 ["useState"]
       71 GETIMPORT                        R15 K10 [Vector2.new]
       73 LOADN                            R16 0
       74 LOADN                            R17 0
       75 CALL                             R15 2 -1
       76 CALL                             R14 -1 2
       77 LOADNIL                          R16
       78 GETUPVAL                         R17 3
       79 CALL                             R17 0 1
       80 JUMPIF                           R17 ; [+9]
       81 GETTABLEKS                       R17 R0 K11 ["DEPRECATED_rigDescriptor"]
       83 GETTABLEKS                       R18 R0 K12 ["DEPRECATED_jointLabel"]
       85 GETUPVAL                         R19 4
       86 MOVE                             R20 R17
       87 MOVE                             R21 R18
       88 CALL                             R19 2 1
       89 MOVE                             R16 R19
       90 GETTABLEKS                       R18 R1 K13 ["Name"]
       92 JUMPIFEQ                         R4 R18 ; [+2]
       94 LOADB                            R17 0 +1
       95 LOADB                            R17 1
       96 GETTABLEKS                       R18 R0 K14 ["mappedLookup"]
       98 JUMPIF                           R18 ; [+2]
       99 NEWTABLE                         R18 0 0
      101 GETTABLEKS                       R19 R0 K15 ["otherMappedLookup"]
      103 GETUPVAL                         R20 5
      104 MOVE                             R21 R1
      105 GETTABLEKS                       R22 R0 K16 ["selectedJointInstance"]
      107 MOVE                             R23 R4
      108 GETUPVAL                         R25 1
      109 CALL                             R25 0 1
      110 JUMPIFNOT                        R25 ; [+2]
      111 LOADNIL                          R24
      112 JUMP                             ; [+1]
      113 MOVE                             R24 R5
      114 MOVE                             R25 R18
      115 MOVE                             R26 R19
      116 CALL                             R20 6 1
      117 GETUPVAL                         R22 6
      118 CALL                             R22 0 1
      119 JUMPIFNOT                        R22 ; [+4]
      120 GETUPVAL                         R21 7
      121 MOVE                             R22 R1
      122 CALL                             R21 1 1
      123 JUMP                             ; [+3]
      124 GETUPVAL                         R21 8
      125 MOVE                             R22 R1
      126 CALL                             R21 1 1
      127 GETUPVAL                         R23 0
      128 GETTABLEKS                       R22 R23 K17 ["useMemo"]
      130 NEWCLOSURE                       R23 P2
      131 CAPTURE                          VAL R0
      132 CAPTURE                          UPVAL U9
      133 CAPTURE                          VAL R1
      134 CAPTURE                          UPVAL U10
      135 CAPTURE                          UPVAL U2
      136 CAPTURE                          UPVAL U3
      137 CAPTURE                          REF R16
      138 NEWTABLE                         R24 0 2
      140 MOVE                             R25 R1
      141 GETTABLEKS                       R26 R0 K18 ["updatePositions"]
      143 SETLIST                          R24 R25 2 [1]
      145 CALL                             R22 2 1
      146 GETUPVAL                         R24 0
      147 GETTABLEKS                       R23 R24 K17 ["useMemo"]
      149 NEWCLOSURE                       R24 P3
      150 CAPTURE                          VAL R22
      151 CAPTURE                          VAL R21
      152 NEWTABLE                         R25 0 2
      154 MOVE                             R26 R22
      155 MOVE                             R27 R21
      156 SETLIST                          R25 R26 2 [1]
      158 CALL                             R23 2 1
      159 NAMECALL                         R24 R22 K19 ["getValue"]
      161 CALL                             R24 1 1
      162 GETTABLEKS                       R25 R0 K20 ["standardRadius"]
      164 GETUPVAL                         R27 0
      165 GETTABLEKS                       R26 R27 K17 ["useMemo"]
      167 NEWCLOSURE                       R27 P4
      168 CAPTURE                          UPVAL U11
      169 CAPTURE                          VAL R25
      170 CAPTURE                          VAL R0
      171 CAPTURE                          VAL R24
      172 CAPTURE                          UPVAL U1
      173 CAPTURE                          UPVAL U2
      174 CAPTURE                          UPVAL U12
      175 NEWTABLE                         R28 0 3
      177 MOVE                             R29 R25
      178 GETTABLEKS                       R30 R0 K21 ["childJoints"]
      180 GETTABLEKS                       R31 R0 K22 ["parentJoint"]
      182 SETLIST                          R28 R29 3 [1]
      184 CALL                             R26 2 1
      185 GETUPVAL                         R28 11
      186 CALL                             R28 0 1
      187 JUMPIFNOT                        R28 ; [+5]
      188 GETUPVAL                         R29 12
      189 GETTABLEKS                       R28 R29 K23 ["SPHERE_STROKE_PCT"]
      191 MUL                              R27 R26 R28
      192 JUMP                             ; [+1]
      193 MOVE                             R27 R26
      194 GETUPVAL                         R29 0
      195 GETTABLEKS                       R28 R29 K24 ["useEffect"]
      197 NEWCLOSURE                       R29 P5
      198 CAPTURE                          VAL R11
      199 CAPTURE                          VAL R13
      200 CAPTURE                          UPVAL U1
      201 CAPTURE                          VAL R4
      202 CAPTURE                          VAL R1
      203 CAPTURE                          VAL R5
      204 CAPTURE                          UPVAL U2
      205 CAPTURE                          VAL R24
      206 CAPTURE                          VAL R15
      207 GETUPVAL                         R31 1
      208 CALL                             R31 0 1
      209 JUMPIFNOT                        R31 ; [+6]
      210 NEWTABLE                         R30 0 1
      212 MOVE                             R31 R4
      213 SETLIST                          R30 R31 1 [1]
      215 JUMP                             ; [+7]
      216 NEWTABLE                         R30 0 3
      218 MOVE                             R31 R4
      219 MOVE                             R32 R5
      220 MOVE                             R33 R24
      221 SETLIST                          R30 R31 3 [1]
      223 CALL                             R28 2 0
      224 NEWTABLE                         R28 0 0
      226 GETUPVAL                         R30 0
      227 GETTABLEKS                       R29 R30 K25 ["createElement"]
      229 LOADK                            R30 K26 ["SphereHandleAdornment"]
      230 NEWTABLE                         R31 16 0
      232 SETTABLEKS                       R26 R31 K27 ["Radius"]
      234 GETTABLEKS                       R32 R20 K28 ["color"]
      236 SETTABLEKS                       R32 R31 K29 ["Color3"]
      238 GETUPVAL                         R33 1
      239 CALL                             R33 0 1
      240 JUMPIFNOT                        R33 ; [+2]
      241 MOVE                             R32 R17
      242 JUMP                             ; [+1]
      243 LOADB                            R32 1
      244 SETTABLEKS                       R32 R31 K30 ["AlwaysOnTop"]
      246 SETTABLEKS                       R21 R31 K31 ["Adornee"]
      248 GETUPVAL                         R33 1
      249 CALL                             R33 0 1
      250 JUMPIFNOT                        R33 ; [+2]
      251 LOADN                            R32 0
      252 JUMP                             ; [+1]
      253 LOADK                            R32 K32 [0.25]
      254 SETTABLEKS                       R32 R31 K33 ["Transparency"]
      256 GETUPVAL                         R33 1
      257 CALL                             R33 0 1
      258 JUMPIFNOT                        R33 ; [+2]
      259 LOADN                            R32 0
      260 JUMP                             ; [+1]
      261 LOADN                            R32 1
      262 SETTABLEKS                       R32 R31 K34 ["ZIndex"]
      264 SETTABLEKS                       R23 R31 K35 ["CFrame"]
      266 GETUPVAL                         R34 0
      267 GETTABLEKS                       R33 R34 K36 ["Event"]
      269 GETTABLEKS                       R32 R33 K37 ["MouseEnter"]
      271 NEWCLOSURE                       R33 P6
      272 CAPTURE                          UPVAL U1
      273 CAPTURE                          VAL R8
      274 CAPTURE                          VAL R3
      275 CAPTURE                          VAL R1
      276 CAPTURE                          VAL R6
      277 JUMPIF                           R33 ; [+1]
      278 LOADNIL                          R33
      279 SETTABLE                         R33 R31 R32
      280 GETUPVAL                         R34 0
      281 GETTABLEKS                       R33 R34 K36 ["Event"]
      283 GETTABLEKS                       R32 R33 K38 ["MouseLeave"]
      285 NEWCLOSURE                       R33 P7
      286 CAPTURE                          UPVAL U1
      287 CAPTURE                          VAL R9
      288 CAPTURE                          VAL R4
      289 CAPTURE                          VAL R1
      290 CAPTURE                          VAL R3
      291 JUMPIF                           R33 ; [+1]
      292 LOADNIL                          R33
      293 SETTABLE                         R33 R31 R32
      294 GETUPVAL                         R34 0
      295 GETTABLEKS                       R33 R34 K36 ["Event"]
      297 GETTABLEKS                       R32 R33 K39 ["MouseButton1Down"]
      299 NEWCLOSURE                       R33 P8
      300 CAPTURE                          VAL R0
      301 CAPTURE                          VAL R1
      302 SETTABLE                         R33 R31 R32
      303 CALL                             R29 2 1
      304 SETTABLEKS                       R29 R28 K40 ["Sphere"]
      306 JUMPIFNOT                        R21 ; [+96]
      307 GETUPVAL                         R30 1
      308 CALL                             R30 0 1
      309 JUMPIF                           R30 ; [+3]
      310 GETTABLEKS                       R30 R0 K41 ["DEPRECATED_isPlayingAnimation"]
      312 JUMPIF                           R30 ; [+90]
      313 GETUPVAL                         R30 1
      314 CALL                             R30 0 1
      315 JUMPIFNOT                        R30 ; [+21]
      316 GETUPVAL                         R31 0
      317 GETTABLEKS                       R30 R31 K25 ["createElement"]
      319 GETUPVAL                         R31 13
      320 DUPTABLE                         R32 K45 [{"radius", "color", "adorneePart", "jointInstance", "alwaysOnTop"}]
      321 SETTABLEKS                       R27 R32 K42 ["radius"]
      323 GETTABLEKS                       R33 R20 K46 ["edgeColor"]
      325 SETTABLEKS                       R33 R32 K28 ["color"]
      327 SETTABLEKS                       R21 R32 K43 ["adorneePart"]
      329 SETTABLEKS                       R1 R32 K0 ["jointInstance"]
      331 SETTABLEKS                       R17 R32 K44 ["alwaysOnTop"]
      333 CALL                             R30 2 1
      334 SETTABLEKS                       R30 R28 K47 ["Wire"]
      336 JUMP                             ; [+66]
      337 GETUPVAL                         R31 6
      338 CALL                             R31 0 1
      339 JUMPIFNOT                        R31 ; [+23]
      340 DUPTABLE                         R30 K51 [{"x", "y", "z"}]
      341 GETUPVAL                         R31 14
      342 LOADN                            R32 12
      343 MOVE                             R33 R27
      344 LOADK                            R34 K48 ["x"]
      345 CALL                             R31 3 1
      346 SETTABLEKS                       R31 R30 K48 ["x"]
      348 GETUPVAL                         R31 14
      349 LOADN                            R32 12
      350 MOVE                             R33 R27
      351 LOADK                            R34 K49 ["y"]
      352 CALL                             R31 3 1
      353 SETTABLEKS                       R31 R30 K49 ["y"]
      355 GETUPVAL                         R31 14
      356 LOADN                            R32 12
      357 MOVE                             R33 R27
      358 LOADK                            R34 K50 ["z"]
      359 CALL                             R31 3 1
      360 SETTABLEKS                       R31 R30 K50 ["z"]
      362 JUMP                             ; [+22]
      363 DUPTABLE                         R30 K51 [{"x", "y", "z"}]
      364 GETUPVAL                         R31 15
      365 LOADN                            R32 12
      366 MOVE                             R33 R27
      367 LOADK                            R34 K48 ["x"]
      368 CALL                             R31 3 1
      369 SETTABLEKS                       R31 R30 K48 ["x"]
      371 GETUPVAL                         R31 15
      372 LOADN                            R32 12
      373 MOVE                             R33 R27
      374 LOADK                            R34 K49 ["y"]
      375 CALL                             R31 3 1
      376 SETTABLEKS                       R31 R30 K49 ["y"]
      378 GETUPVAL                         R31 15
      379 LOADN                            R32 12
      380 MOVE                             R33 R27
      381 LOADK                            R34 K50 ["z"]
      382 CALL                             R31 3 1
      383 SETTABLEKS                       R31 R30 K50 ["z"]
      385 GETUPVAL                         R32 0
      386 GETTABLEKS                       R31 R32 K25 ["createElement"]
      388 GETUPVAL                         R32 13
      389 DUPTABLE                         R33 K54 [{"DEPRECATED_circlePoints", "color", "adorneePart", "DEPRECATED_sphereCf"}]
      390 SETTABLEKS                       R30 R33 K52 ["DEPRECATED_circlePoints"]
      392 GETTABLEKS                       R34 R20 K46 ["edgeColor"]
      394 SETTABLEKS                       R34 R33 K28 ["color"]
      396 SETTABLEKS                       R21 R33 K43 ["adorneePart"]
      398 SETTABLEKS                       R23 R33 K53 ["DEPRECATED_sphereCf"]
      400 CALL                             R31 2 1
      401 SETTABLEKS                       R31 R28 K47 ["Wire"]
      403 GETUPVAL                         R31 0
      404 GETTABLEKS                       R30 R31 K17 ["useMemo"]
      406 NEWCLOSURE                       R31 P9
      407 CAPTURE                          VAL R0
      408 CAPTURE                          UPVAL U6
      409 CAPTURE                          UPVAL U7
      410 CAPTURE                          UPVAL U8
      411 CAPTURE                          VAL R1
      412 NEWTABLE                         R32 0 1
      414 GETTABLEKS                       R33 R0 K21 ["childJoints"]
      416 SETLIST                          R32 R33 1 [1]
      418 CALL                             R30 2 1
      419 MOVE                             R31 R30
      420 LOADNIL                          R32
      421 LOADNIL                          R33
      422 FORGPREP                         R31
      423 GETUPVAL                         R37 0
      424 GETTABLEKS                       R36 R37 K25 ["createElement"]
      426 GETUPVAL                         R37 16
      427 DUPTABLE                         R38 K67 [{"parentInst", "childInst", "connectionAdorneePart", "standardRadius", "updatePositions", "getParentGlobalCf", "allowHover", "color", "edgeColor", "onJointClicked", "setHoveredPyramidParentName", "DEPRECATED_setHoveredJointName", "compositeHoverEnter", "compositeHoverLeave", "hoveredPyramidParentName", "DEPRECATED_isPlayingAnimation", "isJointHovered"}]
      428 GETTABLEKS                       R39 R35 K55 ["parentInst"]
      430 SETTABLEKS                       R39 R38 K55 ["parentInst"]
      432 GETTABLEKS                       R39 R35 K56 ["childInst"]
      434 SETTABLEKS                       R39 R38 K56 ["childInst"]
      436 GETTABLEKS                       R39 R35 K57 ["connectionAdorneePart"]
      438 SETTABLEKS                       R39 R38 K57 ["connectionAdorneePart"]
      440 SETTABLEKS                       R26 R38 K20 ["standardRadius"]
      442 GETTABLEKS                       R39 R0 K18 ["updatePositions"]
      444 SETTABLEKS                       R39 R38 K18 ["updatePositions"]
      446 NEWCLOSURE                       R39 P10
      447 CAPTURE                          UPVAL U9
      448 CAPTURE                          VAL R35
      449 CAPTURE                          UPVAL U10
      450 CAPTURE                          UPVAL U2
      451 CAPTURE                          UPVAL U3
      452 CAPTURE                          VAL R0
      453 CAPTURE                          REF R16
      454 SETTABLEKS                       R39 R38 K58 ["getParentGlobalCf"]
      456 LOADB                            R39 1
      457 SETTABLEKS                       R39 R38 K59 ["allowHover"]
      459 GETTABLEKS                       R39 R20 K28 ["color"]
      461 SETTABLEKS                       R39 R38 K28 ["color"]
      463 GETTABLEKS                       R39 R20 K46 ["edgeColor"]
      465 SETTABLEKS                       R39 R38 K46 ["edgeColor"]
      467 GETTABLEKS                       R39 R0 K60 ["onJointClicked"]
      469 SETTABLEKS                       R39 R38 K60 ["onJointClicked"]
      471 SETTABLEKS                       R6 R38 K61 ["setHoveredPyramidParentName"]
      473 GETUPVAL                         R40 1
      474 CALL                             R40 0 1
      475 JUMPIF                           R40 ; [+2]
      476 MOVE                             R39 R3
      477 JUMP                             ; [+1]
      478 LOADNIL                          R39
      479 SETTABLEKS                       R39 R38 K62 ["DEPRECATED_setHoveredJointName"]
      481 GETUPVAL                         R40 1
      482 CALL                             R40 0 1
      483 JUMPIFNOT                        R40 ; [+2]
      484 MOVE                             R39 R8
      485 JUMP                             ; [+1]
      486 LOADNIL                          R39
      487 SETTABLEKS                       R39 R38 K63 ["compositeHoverEnter"]
      489 GETUPVAL                         R40 1
      490 CALL                             R40 0 1
      491 JUMPIFNOT                        R40 ; [+2]
      492 MOVE                             R39 R9
      493 JUMP                             ; [+1]
      494 LOADNIL                          R39
      495 SETTABLEKS                       R39 R38 K64 ["compositeHoverLeave"]
      497 SETTABLEKS                       R5 R38 K65 ["hoveredPyramidParentName"]
      499 GETTABLEKS                       R39 R0 K41 ["DEPRECATED_isPlayingAnimation"]
      501 SETTABLEKS                       R39 R38 K41 ["DEPRECATED_isPlayingAnimation"]
      503 GETUPVAL                         R40 1
      504 CALL                             R40 0 1
      505 JUMPIFNOT                        R40 ; [+2]
      506 MOVE                             R39 R17
      507 JUMP                             ; [+1]
      508 LOADNIL                          R39
      509 SETTABLEKS                       R39 R38 K66 ["isJointHovered"]
      511 CALL                             R36 2 1
      512 SETTABLE                         R36 R28 R34
      513 FORGLOOP                         R31 2 ; [-91]
      515 LOADNIL                          R31
      516 JUMPIFNOT                        R10 ; [+171]
      517 JUMPIFNOT                        R12 ; [+170]
      518 GETUPVAL                         R33 17
      519 GETTABLEKS                       R32 R33 K68 ["createPortal"]
      521 GETUPVAL                         R34 0
      522 GETTABLEKS                       R33 R34 K25 ["createElement"]
      524 LOADK                            R34 K69 ["ScreenGui"]
      525 DUPTABLE                         R35 K73 [{"IgnoreGuiInset", "ResetOnSpawn", "ZIndexBehavior"}]
      526 LOADB                            R36 1
      527 SETTABLEKS                       R36 R35 K70 ["IgnoreGuiInset"]
      529 LOADB                            R36 0
      530 SETTABLEKS                       R36 R35 K71 ["ResetOnSpawn"]
      532 GETIMPORT                        R36 K76 [Enum.ZIndexBehavior.Sibling]
      534 SETTABLEKS                       R36 R35 K72 ["ZIndexBehavior"]
      536 DUPTABLE                         R36 K78 [{"Positioner"}]
      537 GETUPVAL                         R38 0
      538 GETTABLEKS                       R37 R38 K25 ["createElement"]
      540 LOADK                            R38 K79 ["Frame"]
      541 DUPTABLE                         R39 K83 [{"BackgroundTransparency", "Size", "Position", "ZIndex"}]
      542 LOADN                            R40 1
      543 SETTABLEKS                       R40 R39 K80 ["BackgroundTransparency"]
      545 GETIMPORT                        R40 K85 [UDim2.new]
      547 LOADN                            R41 0
      548 LOADN                            R42 0
      549 LOADN                            R43 0
      550 LOADN                            R44 0
      551 CALL                             R40 4 1
      552 SETTABLEKS                       R40 R39 K81 ["Size"]
      554 GETIMPORT                        R40 K85 [UDim2.new]
      556 LOADN                            R41 0
      557 GETTABLEKS                       R42 R14 K86 ["X"]
      559 LOADN                            R43 0
      560 GETTABLEKS                       R44 R14 K87 ["Y"]
      562 CALL                             R40 4 1
      563 SETTABLEKS                       R40 R39 K82 ["Position"]
      565 LOADN                            R40 200
      566 SETTABLEKS                       R40 R39 K34 ["ZIndex"]
      568 DUPTABLE                         R40 K89 [{"Tooltip"}]
      569 GETUPVAL                         R42 0
      570 GETTABLEKS                       R41 R42 K25 ["createElement"]
      572 LOADK                            R42 K90 ["TextLabel"]
      573 DUPTABLE                         R43 K98 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3", "Font", "TextSize", "AutomaticSize", "BorderSizePixel", "Text", "ZIndex"}]
      574 GETIMPORT                        R44 K99 [Color3.new]
      576 LOADN                            R45 0
      577 LOADN                            R46 0
      578 LOADN                            R47 0
      579 CALL                             R44 3 1
      580 SETTABLEKS                       R44 R43 K91 ["BackgroundColor3"]
      582 LOADK                            R44 K32 [0.25]
      583 SETTABLEKS                       R44 R43 K80 ["BackgroundTransparency"]
      585 GETIMPORT                        R44 K99 [Color3.new]
      587 LOADN                            R45 1
      588 LOADN                            R46 1
      589 LOADN                            R47 1
      590 CALL                             R44 3 1
      591 SETTABLEKS                       R44 R43 K92 ["TextColor3"]
      593 GETIMPORT                        R44 K101 [Enum.Font.SourceSans]
      595 SETTABLEKS                       R44 R43 K93 ["Font"]
      597 LOADN                            R44 14
      598 SETTABLEKS                       R44 R43 K94 ["TextSize"]
      600 GETIMPORT                        R44 K103 [Enum.AutomaticSize.XY]
      602 SETTABLEKS                       R44 R43 K95 ["AutomaticSize"]
      604 LOADN                            R44 0
      605 SETTABLEKS                       R44 R43 K96 ["BorderSizePixel"]
      607 LOADK                            R45 K104 ["%*: %*"]
      608 GETTABLEKS                       R47 R1 K105 ["ClassName"]
      610 GETTABLEKS                       R48 R1 K13 ["Name"]
      612 NAMECALL                         R45 R45 K106 ["format"]
      614 CALL                             R45 3 1
      615 MOVE                             R44 R45
      616 SETTABLEKS                       R44 R43 K97 ["Text"]
      618 LOADN                            R44 201
      619 SETTABLEKS                       R44 R43 K34 ["ZIndex"]
      621 DUPTABLE                         R44 K109 [{"UICorner", "Padding"}]
      622 GETUPVAL                         R46 0
      623 GETTABLEKS                       R45 R46 K25 ["createElement"]
      625 LOADK                            R46 K107 ["UICorner"]
      626 DUPTABLE                         R47 K111 [{"CornerRadius"}]
      627 GETIMPORT                        R48 K113 [UDim.new]
      629 LOADN                            R49 0
      630 LOADN                            R50 6
      631 CALL                             R48 2 1
      632 SETTABLEKS                       R48 R47 K110 ["CornerRadius"]
      634 CALL                             R45 2 1
      635 SETTABLEKS                       R45 R44 K107 ["UICorner"]
      637 GETUPVAL                         R46 0
      638 GETTABLEKS                       R45 R46 K25 ["createElement"]
      640 LOADK                            R46 K114 ["UIPadding"]
      641 DUPTABLE                         R47 K119 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      642 GETIMPORT                        R48 K113 [UDim.new]
      644 LOADN                            R49 0
      645 LOADN                            R50 8
      646 CALL                             R48 2 1
      647 SETTABLEKS                       R48 R47 K115 ["PaddingLeft"]
      649 GETIMPORT                        R48 K113 [UDim.new]
      651 LOADN                            R49 0
      652 LOADN                            R50 8
      653 CALL                             R48 2 1
      654 SETTABLEKS                       R48 R47 K116 ["PaddingRight"]
      656 GETIMPORT                        R48 K113 [UDim.new]
      658 LOADN                            R49 0
      659 LOADN                            R50 4
      660 CALL                             R48 2 1
      661 SETTABLEKS                       R48 R47 K117 ["PaddingTop"]
      663 GETIMPORT                        R48 K113 [UDim.new]
      665 LOADN                            R49 0
      666 LOADN                            R50 4
      667 CALL                             R48 2 1
      668 SETTABLEKS                       R48 R47 K118 ["PaddingBottom"]
      670 CALL                             R45 2 1
      671 SETTABLEKS                       R45 R44 K108 ["Padding"]
      673 CALL                             R41 3 1
      674 SETTABLEKS                       R41 R40 K88 ["Tooltip"]
      676 CALL                             R37 3 1
      677 SETTABLEKS                       R37 R36 K77 ["Positioner"]
      679 CALL                             R33 3 1
      680 GETIMPORT                        R34 K121 [game]
      682 LOADK                            R36 K122 ["CoreGui"]
      683 NAMECALL                         R34 R34 K123 ["GetService"]
      685 CALL                             R34 2 -1
      686 CALL                             R32 -1 1
      687 MOVE                             R31 R32
      688 GETUPVAL                         R33 0
      689 GETTABLEKS                       R32 R33 K25 ["createElement"]
      691 GETUPVAL                         R34 0
      692 GETTABLEKS                       R33 R34 K124 ["Fragment"]
      694 LOADNIL                          R34
      695 DUPTABLE                         R35 K127 [{"World", "TooltipPortal"}]
      696 GETUPVAL                         R37 0
      697 GETTABLEKS                       R36 R37 K25 ["createElement"]
      699 LOADK                            R37 K128 ["Folder"]
      700 LOADNIL                          R38
      701 MOVE                             R39 R28
      702 CALL                             R36 3 1
      703 SETTABLEKS                       R36 R35 K125 ["World"]
      705 SETTABLEKS                       R31 R35 K126 ["TooltipPortal"]
      707 CALL                             R32 3 -1
      708 CLOSEUPVALS                      R16
      709 RETURN                           R32 -1

PROTO_30:
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADB                            R2 1
        3 RETURN                           R2 1
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [type]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
       11 FASTCALL1                        TYPE R1 ; [+3]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K1 [type]
       15 CALL                             R2 1 1
       16 JUMPIFEQKS                       R2 K2 ["table"] ; [+3]
       18 LOADB                            R2 0
       19 RETURN                           R2 1
       20 MOVE                             R2 R0
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 GETTABLE                         R7 R1 R5
       25 JUMPIFEQ                         R7 R6 ; [+3]
       27 LOADB                            R7 0
       28 RETURN                           R7 1
       29 FORGLOOP                         R2 2 ; [-6]
       31 MOVE                             R2 R1
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 FORGPREP                         R2
       35 GETTABLE                         R7 R0 R5
       36 JUMPIFNOTEQKNIL                  R7 ; [+3]
       38 LOADB                            R7 0
       39 RETURN                           R7 1
       40 FORGLOOP                         R2 1 ; [-6]
       42 LOADB                            R2 1
       43 RETURN                           R2 1

PROTO_31:
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADB                            R2 1
        3 RETURN                           R2 1
        4 MOVE                             R2 R1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLE                         R7 R0 R5
        9 JUMPIFEQ                         R7 R6 ; [+32]
       11 GETUPVAL                         R8 0
       12 GETTABLE                         R7 R8 R5
       13 JUMPIFNOT                        R7 ; [+8]
       14 GETUPVAL                         R7 1
       15 GETTABLE                         R8 R0 R5
       16 MOVE                             R9 R6
       17 CALL                             R7 2 1
       18 JUMPIF                           R7 ; [+23]
       19 LOADB                            R7 0
       20 RETURN                           R7 1
       21 JUMP                             ; [+20]
       22 GETUPVAL                         R8 2
       23 GETTABLE                         R7 R8 R5
       24 JUMPIFNOT                        R7 ; [+15]
       25 GETTABLEKS                       R7 R1 K0 ["jointInstance"]
       27 JUMPIFNOT                        R7 ; [+4]
       28 GETTABLEKS                       R8 R1 K0 ["jointInstance"]
       30 GETTABLEKS                       R7 R8 K1 ["Name"]
       32 GETTABLE                         R8 R0 R5
       33 JUMPIFEQ                         R8 R7 ; [+3]
       35 JUMPIFNOTEQ                      R6 R7 ; [+6]
       37 LOADB                            R8 0
       38 RETURN                           R8 1
       39 JUMP                             ; [+2]
       40 LOADB                            R7 0
       41 RETURN                           R7 1
       42 FORGLOOP                         R2 2 ; [-35]
       44 MOVE                             R2 R0
       45 LOADNIL                          R3
       46 LOADNIL                          R4
       47 FORGPREP                         R2
       48 GETTABLE                         R7 R1 R5
       49 JUMPIFNOTEQKNIL                  R7 ; [+3]
       51 LOADB                            R7 0
       52 RETURN                           R7 1
       53 FORGLOOP                         R2 1 ; [-6]
       55 LOADB                            R2 1
       56 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["AdaptiveAnimationTools"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R6 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R9 R0 K10 ["Src"]
       39 GETTABLEKS                       R8 R9 K12 ["Components"]
       41 GETTABLEKS                       R7 R8 K13 ["Hooks"]
       43 GETTABLEKS                       R6 R7 K14 ["useJointSignals"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R10 R0 K10 ["Src"]
       50 GETTABLEKS                       R9 R10 K12 ["Components"]
       52 GETTABLEKS                       R8 R9 K15 ["Adornments"]
       54 GETTABLEKS                       R7 R8 K16 ["computeJointVisualState"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R11 R0 K10 ["Src"]
       61 GETTABLEKS                       R10 R11 K12 ["Components"]
       63 GETTABLEKS                       R9 R10 K15 ["Adornments"]
       65 GETTABLEKS                       R8 R9 K17 ["AxisCircleAdornment"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R12 R0 K10 ["Src"]
       72 GETTABLEKS                       R11 R12 K12 ["Components"]
       74 GETTABLEKS                       R10 R11 K15 ["Adornments"]
       76 GETTABLEKS                       R9 R10 K18 ["getAdornee"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R13 R0 K10 ["Src"]
       83 GETTABLEKS                       R12 R13 K12 ["Components"]
       85 GETTABLEKS                       R11 R12 K15 ["Adornments"]
       87 GETTABLEKS                       R10 R11 K19 ["buildCircle"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETTABLEKS                       R13 R0 K10 ["Src"]
       94 GETTABLEKS                       R12 R13 K20 ["Flags"]
       96 GETTABLEKS                       R11 R12 K21 ["getFFlagAdaptiveAnimatonImprovements"]
       98 CALL                             R10 1 1
       99 GETIMPORT                        R11 K5 [require]
      101 GETTABLEKS                       R14 R0 K10 ["Src"]
      103 GETTABLEKS                       R13 R14 K20 ["Flags"]
      105 GETTABLEKS                       R12 R13 K22 ["getFFlagAdaptiveAnimationBetaImprovements"]
      107 CALL                             R11 1 1
      108 GETIMPORT                        R12 K5 [require]
      110 GETTABLEKS                       R15 R0 K10 ["Src"]
      112 GETTABLEKS                       R14 R15 K20 ["Flags"]
      114 GETTABLEKS                       R13 R14 K23 ["getFFlagAdaptiveAnimationConstraints"]
      116 CALL                             R12 1 1
      117 GETIMPORT                        R13 K5 [require]
      119 GETTABLEKS                       R16 R0 K10 ["Src"]
      121 GETTABLEKS                       R15 R16 K20 ["Flags"]
      123 GETTABLEKS                       R14 R15 K24 ["getFFlagAdaptiveAnimationQoL"]
      125 CALL                             R13 1 1
      126 GETIMPORT                        R14 K5 [require]
      128 GETTABLEKS                       R17 R0 K10 ["Src"]
      130 GETTABLEKS                       R16 R17 K20 ["Flags"]
      132 GETTABLEKS                       R15 R16 K25 ["getFFlagAdaptiveAnimationHandRig"]
      134 CALL                             R14 1 1
      135 GETIMPORT                        R15 K5 [require]
      137 GETTABLEKS                       R18 R0 K10 ["Src"]
      139 GETTABLEKS                       R17 R18 K20 ["Flags"]
      141 GETTABLEKS                       R16 R17 K26 ["getFFlagAdaptiveAnimationWireFix"]
      143 CALL                             R15 1 1
      144 GETIMPORT                        R16 K5 [require]
      146 GETTABLEKS                       R19 R0 K10 ["Src"]
      148 GETTABLEKS                       R18 R19 K27 ["Resources"]
      150 GETTABLEKS                       R17 R18 K28 ["Constants"]
      152 CALL                             R16 1 1
      153 DUPCLOSURE                       R17 K29 [PROTO_0]
      154 DUPCLOSURE                       R18 K30 [PROTO_1]
      155 DUPCLOSURE                       R19 K31 [PROTO_2]
      156 CAPTURE                          VAL R18
      157 CAPTURE                          VAL R3
      158 DUPCLOSURE                       R20 K32 [PROTO_3]
      159 DUPCLOSURE                       R21 K33 [PROTO_13]
      160 CAPTURE                          VAL R1
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R18
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R15
      166 CAPTURE                          VAL R13
      167 DUPCLOSURE                       R22 K34 [PROTO_29]
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R8
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R18
      179 CAPTURE                          VAL R14
      180 CAPTURE                          VAL R16
      181 CAPTURE                          VAL R7
      182 CAPTURE                          VAL R9
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R2
      186 DUPCLOSURE                       R23 K35 [PROTO_30]
      187 DUPTABLE                         R24 K39 [{"childJoints", "mappedLookup", "otherMappedLookup"}]
      188 LOADB                            R25 1
      189 SETTABLEKS                       R25 R24 K36 ["childJoints"]
      191 LOADB                            R25 1
      192 SETTABLEKS                       R25 R24 K37 ["mappedLookup"]
      194 LOADB                            R25 1
      195 SETTABLEKS                       R25 R24 K38 ["otherMappedLookup"]
      197 DUPTABLE                         R25 K42 [{"globalHoveredJointName", "mannequinHoveredJointName"}]
      198 LOADB                            R26 1
      199 SETTABLEKS                       R26 R25 K40 ["globalHoveredJointName"]
      201 LOADB                            R26 1
      202 SETTABLEKS                       R26 R25 K41 ["mannequinHoveredJointName"]
      204 DUPCLOSURE                       R26 K43 [PROTO_31]
      205 CAPTURE                          VAL R24
      206 CAPTURE                          VAL R23
      207 CAPTURE                          VAL R25
      208 GETTABLEKS                       R27 R1 K44 ["memo"]
      210 MOVE                             R28 R22
      211 MOVE                             R29 R26
      212 CALL                             R27 2 1
      213 MOVE                             R29 R14
      214 CALL                             R29 0 1
      215 JUMPIFNOT                        R29 ; [+2]
      216 MOVE                             R28 R27
      217 JUMP                             ; [+1]
      218 MOVE                             R28 R22
      219 DUPTABLE                         R29 K47 [{"Component", "_test"}]
      220 SETTABLEKS                       R28 R29 K45 ["Component"]
      222 DUPTABLE                         R30 K54 [{"DEPRECATED_getAdornee", "DEPRECATED_buildCircle", "shallowTableEqual", "ConnectionGeom", "memoComparator", "JointAdornmentComposite"}]
      223 SETTABLEKS                       R17 R30 K48 ["DEPRECATED_getAdornee"]
      225 SETTABLEKS                       R20 R30 K49 ["DEPRECATED_buildCircle"]
      227 SETTABLEKS                       R23 R30 K50 ["shallowTableEqual"]
      229 SETTABLEKS                       R21 R30 K51 ["ConnectionGeom"]
      231 SETTABLEKS                       R26 R30 K52 ["memoComparator"]
      233 SETTABLEKS                       R22 R30 K53 ["JointAdornmentComposite"]
      235 SETTABLEKS                       R30 R29 K46 ["_test"]
      237 RETURN                           R29 1
