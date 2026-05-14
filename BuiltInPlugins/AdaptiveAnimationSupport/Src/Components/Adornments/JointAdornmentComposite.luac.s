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
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["getGlobalCoordinateFrame"]
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
        0 SUB                              R5 R1 R0
        1 SUB                              R7 R2 R0
        2 NAMECALL                         R5 R5 K0 ["Cross"]
        4 CALL                             R5 2 1
        5 ADD                              R8 R0 R1
        6 ADD                              R7 R8 R2
        7 DIVK                             R6 R7 K1 [3]
        8 SUB                              R9 R6 R3
        9 NAMECALL                         R7 R5 K2 ["Dot"]
       11 CALL                             R7 2 1
       12 LOADN                            R8 0
       13 JUMPIFNOTLT                      R7 R8 ; [+2]
       15 MINUS                            R5 R5
       16 SUB                              R10 R4 R6
       17 NAMECALL                         R8 R5 K2 ["Dot"]
       19 CALL                             R8 2 1
       20 LOADN                            R9 0
       21 JUMPIFLT                         R9 R8 ; [+2]
       23 LOADB                            R7 0 +1
       24 LOADB                            R7 1
       25 RETURN                           R7 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getParentGlobalCf"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["childInst"]
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
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R2 R2 K7 ["getGlobalCoordinateFrame"]
       30 MOVE                             R3 R1
       31 CALL                             R2 1 1
       32 JUMP                             ; [+6]
       33 GETUPVAL                         R3 3
       34 GETTABLEKS                       R3 R3 K7 ["getGlobalCoordinateFrame"]
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
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R6 R6 K11 ["standardRadius"]
       54 JUMPIFNOTLE                      R4 R6 ; [+11]
       56 MULK                             R8 R4 K12 [0.5]
       57 GETUPVAL                         R9 0
       58 GETTABLEKS                       R9 R9 K11 ["standardRadius"]
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
      100 GETUPVAL                         R9 0
      101 GETTABLEKS                       R9 R9 K25 ["connectionAdorneePart"]
      103 JUMPIFNOT                        R9 ; [+10]
      104 GETUPVAL                         R10 0
      105 GETTABLEKS                       R10 R10 K25 ["connectionAdorneePart"]
      107 GETTABLEKS                       R10 R10 K22 ["CFrame"]
      109 NAMECALL                         R10 R10 K26 ["Inverse"]
      111 CALL                             R10 1 1
      112 MUL                              R9 R10 R8
      113 RETURN                           R9 1
      114 GETIMPORT                        R5 K28 [CFrame.new]
      116 CALL                             R5 0 -1
      117 RETURN                           R5 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getParentGlobalCf"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["childInst"]
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
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R2 R2 K7 ["getGlobalCoordinateFrame"]
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
       43 GETUPVAL                         R3 3
       44 GETTABLEKS                       R3 R3 K7 ["getGlobalCoordinateFrame"]
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
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K11 ["standardRadius"]
       63 JUMPIFNOTLE                      R4 R6 ; [+11]
       65 MULK                             R8 R4 K12 [0.5]
       66 GETUPVAL                         R9 0
       67 GETTABLEKS                       R9 R9 K11 ["standardRadius"]
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
       86 GETUPVAL                         R6 5
       87 GETTABLEKS                       R6 R6 K18 ["current"]
       89 JUMPIFNOT                        R6 ; [+3]
       90 MOVE                             R7 R6
       91 MOVE                             R8 R5
       92 CALL                             R7 1 0
       93 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Clear"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["standardRadius"]
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

PROTO_8:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["Clear"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["standardRadius"]
        7 DIVK                             R4 R2 K3 [2]
        8 MULK                             R3 R4 K2 [1.5]
        9 MINUS                            R5 R3
       10 MINUS                            R6 R3
       11 LOADN                            R7 0
       12 FASTCALL                         VECTOR ; [+2]
       13 GETIMPORT                        R4 K6 [Vector3.new]
       15 CALL                             R4 3 1
       16 MINUS                            R7 R3
       17 LOADN                            R8 0
       18 FASTCALL3                        VECTOR R3 R7 R8
       20 MOVE                             R6 R3
       21 GETIMPORT                        R5 K6 [Vector3.new]
       23 CALL                             R5 3 1
       24 LOADN                            R9 0
       25 FASTCALL3                        VECTOR R3 R3 R9
       27 MOVE                             R7 R3
       28 MOVE                             R8 R3
       29 GETIMPORT                        R6 K6 [Vector3.new]
       31 CALL                             R6 3 1
       32 MINUS                            R8 R3
       33 LOADN                            R10 0
       34 FASTCALL3                        VECTOR R8 R3 R10
       36 MOVE                             R9 R3
       37 GETIMPORT                        R7 K6 [Vector3.new]
       39 CALL                             R7 3 1
       40 LOADN                            R9 0
       41 LOADN                            R10 0
       42 MINUS                            R11 R0
       43 FASTCALL                         VECTOR ; [+2]
       44 GETIMPORT                        R8 K6 [Vector3.new]
       46 CALL                             R8 3 1
       47 ADD                              R13 R4 R5
       48 ADD                              R12 R13 R6
       49 ADD                              R11 R12 R7
       50 ADD                              R10 R11 R8
       51 DIVK                             R9 R10 K7 [5]
       52 SUB                              R11 R5 R4
       53 SUB                              R13 R6 R4
       54 NAMECALL                         R11 R11 K8 ["Cross"]
       56 CALL                             R11 2 1
       57 ADD                              R14 R4 R5
       58 ADD                              R13 R14 R6
       59 DIVK                             R12 R13 K9 [3]
       60 SUB                              R15 R12 R9
       61 NAMECALL                         R13 R11 K10 ["Dot"]
       63 CALL                             R13 2 1
       64 LOADN                            R14 0
       65 JUMPIFNOTLT                      R13 R14 ; [+2]
       67 MINUS                            R11 R11
       68 SUB                              R15 R1 R12
       69 NAMECALL                         R13 R11 K10 ["Dot"]
       71 CALL                             R13 2 1
       72 LOADN                            R14 0
       73 JUMPIFLT                         R14 R13 ; [+2]
       75 LOADB                            R10 0 +1
       76 LOADB                            R10 1
       77 SUB                              R12 R5 R4
       78 SUB                              R14 R8 R4
       79 NAMECALL                         R12 R12 K8 ["Cross"]
       81 CALL                             R12 2 1
       82 ADD                              R15 R4 R5
       83 ADD                              R14 R15 R8
       84 DIVK                             R13 R14 K9 [3]
       85 SUB                              R16 R13 R9
       86 NAMECALL                         R14 R12 K10 ["Dot"]
       88 CALL                             R14 2 1
       89 LOADN                            R15 0
       90 JUMPIFNOTLT                      R14 R15 ; [+2]
       92 MINUS                            R12 R12
       93 SUB                              R16 R1 R13
       94 NAMECALL                         R14 R12 K10 ["Dot"]
       96 CALL                             R14 2 1
       97 LOADN                            R15 0
       98 JUMPIFLT                         R15 R14 ; [+2]
      100 LOADB                            R11 0 +1
      101 LOADB                            R11 1
      102 SUB                              R13 R6 R5
      103 SUB                              R15 R8 R5
      104 NAMECALL                         R13 R13 K8 ["Cross"]
      106 CALL                             R13 2 1
      107 ADD                              R16 R5 R6
      108 ADD                              R15 R16 R8
      109 DIVK                             R14 R15 K9 [3]
      110 SUB                              R17 R14 R9
      111 NAMECALL                         R15 R13 K10 ["Dot"]
      113 CALL                             R15 2 1
      114 LOADN                            R16 0
      115 JUMPIFNOTLT                      R15 R16 ; [+2]
      117 MINUS                            R13 R13
      118 SUB                              R17 R1 R14
      119 NAMECALL                         R15 R13 K10 ["Dot"]
      121 CALL                             R15 2 1
      122 LOADN                            R16 0
      123 JUMPIFLT                         R16 R15 ; [+2]
      125 LOADB                            R12 0 +1
      126 LOADB                            R12 1
      127 SUB                              R14 R7 R6
      128 SUB                              R16 R8 R6
      129 NAMECALL                         R14 R14 K8 ["Cross"]
      131 CALL                             R14 2 1
      132 ADD                              R17 R6 R7
      133 ADD                              R16 R17 R8
      134 DIVK                             R15 R16 K9 [3]
      135 SUB                              R18 R15 R9
      136 NAMECALL                         R16 R14 K10 ["Dot"]
      138 CALL                             R16 2 1
      139 LOADN                            R17 0
      140 JUMPIFNOTLT                      R16 R17 ; [+2]
      142 MINUS                            R14 R14
      143 SUB                              R18 R1 R15
      144 NAMECALL                         R16 R14 K10 ["Dot"]
      146 CALL                             R16 2 1
      147 LOADN                            R17 0
      148 JUMPIFLT                         R17 R16 ; [+2]
      150 LOADB                            R13 0 +1
      151 LOADB                            R13 1
      152 SUB                              R15 R4 R7
      153 SUB                              R17 R8 R7
      154 NAMECALL                         R15 R15 K8 ["Cross"]
      156 CALL                             R15 2 1
      157 ADD                              R18 R7 R4
      158 ADD                              R17 R18 R8
      159 DIVK                             R16 R17 K9 [3]
      160 SUB                              R19 R16 R9
      161 NAMECALL                         R17 R15 K10 ["Dot"]
      163 CALL                             R17 2 1
      164 LOADN                            R18 0
      165 JUMPIFNOTLT                      R17 R18 ; [+2]
      167 MINUS                            R15 R15
      168 SUB                              R19 R1 R16
      169 NAMECALL                         R17 R15 K10 ["Dot"]
      171 CALL                             R17 2 1
      172 LOADN                            R18 0
      173 JUMPIFLT                         R18 R17 ; [+2]
      175 LOADB                            R14 0 +1
      176 LOADB                            R14 1
      177 JUMPIF                           R10 ; [+1]
      178 JUMPIFNOT                        R11 ; [+11]
      179 GETUPVAL                         R15 0
      180 NEWTABLE                         R17 0 2
      182 MOVE                             R18 R4
      183 MOVE                             R19 R5
      184 SETLIST                          R17 R18 2 [1]
      186 LOADB                            R18 0
      187 NAMECALL                         R15 R15 K11 ["AddPath"]
      189 CALL                             R15 3 0
      190 JUMPIF                           R10 ; [+1]
      191 JUMPIFNOT                        R12 ; [+11]
      192 GETUPVAL                         R15 0
      193 NEWTABLE                         R17 0 2
      195 MOVE                             R18 R5
      196 MOVE                             R19 R6
      197 SETLIST                          R17 R18 2 [1]
      199 LOADB                            R18 0
      200 NAMECALL                         R15 R15 K11 ["AddPath"]
      202 CALL                             R15 3 0
      203 JUMPIF                           R10 ; [+1]
      204 JUMPIFNOT                        R13 ; [+11]
      205 GETUPVAL                         R15 0
      206 NEWTABLE                         R17 0 2
      208 MOVE                             R18 R6
      209 MOVE                             R19 R7
      210 SETLIST                          R17 R18 2 [1]
      212 LOADB                            R18 0
      213 NAMECALL                         R15 R15 K11 ["AddPath"]
      215 CALL                             R15 3 0
      216 JUMPIF                           R10 ; [+1]
      217 JUMPIFNOT                        R14 ; [+11]
      218 GETUPVAL                         R15 0
      219 NEWTABLE                         R17 0 2
      221 MOVE                             R18 R7
      222 MOVE                             R19 R4
      223 SETLIST                          R17 R18 2 [1]
      225 LOADB                            R18 0
      226 NAMECALL                         R15 R15 K11 ["AddPath"]
      228 CALL                             R15 3 0
      229 JUMPIF                           R11 ; [+1]
      230 JUMPIFNOT                        R14 ; [+11]
      231 GETUPVAL                         R15 0
      232 NEWTABLE                         R17 0 2
      234 MOVE                             R18 R4
      235 MOVE                             R19 R8
      236 SETLIST                          R17 R18 2 [1]
      238 LOADB                            R18 0
      239 NAMECALL                         R15 R15 K11 ["AddPath"]
      241 CALL                             R15 3 0
      242 JUMPIF                           R11 ; [+1]
      243 JUMPIFNOT                        R12 ; [+11]
      244 GETUPVAL                         R15 0
      245 NEWTABLE                         R17 0 2
      247 MOVE                             R18 R5
      248 MOVE                             R19 R8
      249 SETLIST                          R17 R18 2 [1]
      251 LOADB                            R18 0
      252 NAMECALL                         R15 R15 K11 ["AddPath"]
      254 CALL                             R15 3 0
      255 JUMPIF                           R12 ; [+1]
      256 JUMPIFNOT                        R13 ; [+11]
      257 GETUPVAL                         R15 0
      258 NEWTABLE                         R17 0 2
      260 MOVE                             R18 R6
      261 MOVE                             R19 R8
      262 SETLIST                          R17 R18 2 [1]
      264 LOADB                            R18 0
      265 NAMECALL                         R15 R15 K11 ["AddPath"]
      267 CALL                             R15 3 0
      268 JUMPIF                           R13 ; [+1]
      269 JUMPIFNOT                        R14 ; [+11]
      270 GETUPVAL                         R15 0
      271 NEWTABLE                         R17 0 2
      273 MOVE                             R18 R7
      274 MOVE                             R19 R8
      275 SETLIST                          R17 R18 2 [1]
      277 LOADB                            R18 0
      278 NAMECALL                         R15 R15 K11 ["AddPath"]
      280 CALL                             R15 3 0
      281 RETURN                           R0 0

PROTO_9:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K1 [workspace]
        2 GETTABLEKS                       R0 R0 K2 ["CurrentCamera"]
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K3 ["connectionAdorneePart"]
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["connectionAdorneePart"]
       13 GETTABLEKS                       R2 R2 K4 ["CFrame"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K4 ["CFrame"]
       18 MUL                              R1 R2 R3
       19 GETTABLEKS                       R4 R0 K4 ["CFrame"]
       21 GETTABLEKS                       R4 R4 K5 ["Position"]
       23 NAMECALL                         R2 R1 K6 ["PointToObjectSpace"]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R3 2
       27 GETUPVAL                         R4 3
       28 MOVE                             R5 R2
       29 CALL                             R3 2 0
       30 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R0 2
       11 NAMECALL                         R0 R0 K2 ["Clear"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+24]
       14 GETUPVAL                         R3 3
       15 GETUPVAL                         R4 4
       16 NEWCLOSURE                       R5 P2
       17 CAPTURE                          REF R3
       18 SETTABLEKS                       R5 R4 K0 ["current"]
       20 GETUPVAL                         R4 5
       21 GETTABLEKS                       R4 R4 K1 ["Heartbeat"]
       23 NEWCLOSURE                       R6 P3
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          REF R3
       28 NAMECALL                         R4 R4 K2 ["Connect"]
       30 CALL                             R4 2 1
       31 NEWCLOSURE                       R5 P4
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R0
       35 CLOSEUPVALS                      R3
       36 RETURN                           R5 1
       37 CLOSEUPVALS                      R3
       38 MOVE                             R3 R1
       39 GETUPVAL                         R4 3
       40 CALL                             R3 1 0
       41 GETUPVAL                         R3 6
       42 CALL                             R3 0 1
       43 JUMPIFNOT                        R3 ; [+3]
       44 GETUPVAL                         R3 4
       45 SETTABLEKS                       R1 R3 K0 ["current"]
       47 NEWCLOSURE                       R3 P5
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R0
       51 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["allowHover"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["setHoveredPyramidParentName"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["parentInst"]
       11 GETTABLEKS                       R1 R1 K3 ["Name"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 1
       15 CALL                             R0 0 1
       16 JUMPIFNOT                        R0 ; [+9]
       17 GETUPVAL                         R0 0
       18 GETTABLEKS                       R0 R0 K4 ["compositeHoverEnter"]
       20 JUMPIFNOT                        R0 ; [+14]
       21 GETUPVAL                         R0 0
       22 GETTABLEKS                       R0 R0 K4 ["compositeHoverEnter"]
       24 CALL                             R0 0 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R0 0
       27 GETTABLEKS                       R0 R0 K5 ["DEPRECATED_setHoveredJointName"]
       29 JUMPIFNOT                        R0 ; [+5]
       30 GETUPVAL                         R0 0
       31 GETTABLEKS                       R0 R0 K5 ["DEPRECATED_setHoveredJointName"]
       33 LOADNIL                          R1
       34 CALL                             R0 1 0
       35 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["parentInst"]
        3 GETTABLEKS                       R2 R2 K1 ["Name"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 MOVE                             R1 R0
       10 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["allowHover"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["setHoveredPyramidParentName"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 1
       12 CALL                             R0 0 1
       13 JUMPIFNOT                        R0 ; [+8]
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K2 ["compositeHoverLeave"]
       17 JUMPIFNOT                        R0 ; [+4]
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K2 ["compositeHoverLeave"]
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onJointClicked"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["onJointClicked"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["parentInst"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useRef"]
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
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       39 NEWCLOSURE                       R7 P2
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R2
       45 CAPTURE                          UPVAL U7
       46 CAPTURE                          UPVAL U5
       47 NEWTABLE                         R8 0 1
       49 MOVE                             R9 R5
       50 SETLIST                          R8 R9 1 [1]
       52 CALL                             R6 2 0
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R6 R6 K5 ["createElement"]
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R7 R7 K6 ["Fragment"]
       59 LOADNIL                          R8
       60 DUPTABLE                         R9 K9 [{"Pyramid", "Wireframe"}]
       61 GETUPVAL                         R10 0
       62 GETTABLEKS                       R10 R10 K5 ["createElement"]
       64 LOADK                            R11 K10 ["PyramidHandleAdornment"]
       65 NEWTABLE                         R12 16 0
       67 GETTABLEKS                       R13 R0 K11 ["connectionAdorneePart"]
       69 SETTABLEKS                       R13 R12 K12 ["Adornee"]
       71 SETTABLEKS                       R3 R12 K13 ["CFrame"]
       73 GETUPVAL                         R14 6
       74 CALL                             R14 0 1
       75 JUMPIFNOT                        R14 ; [+4]
       76 GETUPVAL                         R13 8
       77 GETTABLEKS                       R13 R13 K14 ["ADORNMENT_TRANSPARENCY"]
       79 JUMP                             ; [+6]
       80 GETUPVAL                         R14 9
       81 CALL                             R14 0 1
       82 JUMPIFNOT                        R14 ; [+2]
       83 LOADN                            R13 0
       84 JUMP                             ; [+1]
       85 LOADK                            R13 K15 [0.25]
       86 SETTABLEKS                       R13 R12 K16 ["Transparency"]
       88 LOADN                            R13 0
       89 SETTABLEKS                       R13 R12 K17 ["ZIndex"]
       91 GETTABLEKS                       R14 R0 K19 ["standardRadius"]
       93 MULK                             R13 R14 K18 [1.5]
       94 SETTABLEKS                       R13 R12 K20 ["Size"]
       96 SETTABLEKS                       R4 R12 K21 ["Height"]
       98 GETTABLEKS                       R13 R0 K22 ["color"]
      100 SETTABLEKS                       R13 R12 K23 ["Color3"]
      102 GETUPVAL                         R14 6
      103 CALL                             R14 0 1
      104 JUMPIFNOT                        R14 ; [+2]
      105 LOADB                            R13 1
      106 JUMP                             ; [+7]
      107 GETUPVAL                         R14 9
      108 CALL                             R14 0 1
      109 JUMPIFNOT                        R14 ; [+3]
      110 GETTABLEKS                       R13 R0 K24 ["isJointHovered"]
      112 JUMP                             ; [+1]
      113 LOADB                            R13 1
      114 SETTABLEKS                       R13 R12 K25 ["AlwaysOnTop"]
      116 GETUPVAL                         R13 0
      117 GETTABLEKS                       R13 R13 K26 ["Event"]
      119 GETTABLEKS                       R13 R13 K27 ["MouseEnter"]
      121 NEWCLOSURE                       R14 P3
      122 CAPTURE                          VAL R0
      123 CAPTURE                          UPVAL U9
      124 SETTABLE                         R14 R12 R13
      125 GETUPVAL                         R13 0
      126 GETTABLEKS                       R13 R13 K26 ["Event"]
      128 GETTABLEKS                       R13 R13 K28 ["MouseLeave"]
      130 NEWCLOSURE                       R14 P4
      131 CAPTURE                          VAL R0
      132 CAPTURE                          UPVAL U9
      133 SETTABLE                         R14 R12 R13
      134 GETUPVAL                         R13 0
      135 GETTABLEKS                       R13 R13 K26 ["Event"]
      137 GETTABLEKS                       R13 R13 K29 ["MouseButton1Down"]
      139 NEWCLOSURE                       R14 P5
      140 CAPTURE                          VAL R0
      141 SETTABLE                         R14 R12 R13
      142 CALL                             R10 2 1
      143 SETTABLEKS                       R10 R9 K7 ["Pyramid"]
      145 GETUPVAL                         R11 9
      146 CALL                             R11 0 1
      147 JUMPIF                           R11 ; [+5]
      148 GETTABLEKS                       R11 R0 K30 ["DEPRECATED_isPlayingAnimation"]
      150 JUMPIFNOT                        R11 ; [+2]
      151 LOADNIL                          R10
      152 JUMP                             ; [+44]
      153 GETUPVAL                         R11 0
      154 GETTABLEKS                       R11 R11 K5 ["createElement"]
      156 LOADK                            R12 K32 ["WireframeHandleAdornment"]
      157 DUPTABLE                         R13 K34 [{"Adornee", "AlwaysOnTop", "Transparency", "ZIndex", "Color3", "CFrame", "ref"}]
      158 GETTABLEKS                       R14 R0 K11 ["connectionAdorneePart"]
      160 SETTABLEKS                       R14 R13 K12 ["Adornee"]
      162 GETUPVAL                         R15 6
      163 CALL                             R15 0 1
      164 JUMPIFNOT                        R15 ; [+2]
      165 LOADB                            R14 1
      166 JUMP                             ; [+7]
      167 GETUPVAL                         R15 9
      168 CALL                             R15 0 1
      169 JUMPIFNOT                        R15 ; [+3]
      170 GETTABLEKS                       R14 R0 K24 ["isJointHovered"]
      172 JUMP                             ; [+1]
      173 LOADB                            R14 1
      174 SETTABLEKS                       R14 R13 K25 ["AlwaysOnTop"]
      176 GETUPVAL                         R15 9
      177 CALL                             R15 0 1
      178 JUMPIFNOT                        R15 ; [+2]
      179 LOADN                            R14 0
      180 JUMP                             ; [+1]
      181 LOADK                            R14 K15 [0.25]
      182 SETTABLEKS                       R14 R13 K16 ["Transparency"]
      184 LOADN                            R14 0
      185 SETTABLEKS                       R14 R13 K17 ["ZIndex"]
      187 GETTABLEKS                       R14 R0 K35 ["edgeColor"]
      189 SETTABLEKS                       R14 R13 K23 ["Color3"]
      191 SETTABLEKS                       R3 R13 K13 ["CFrame"]
      193 SETTABLEKS                       R1 R13 K33 ["ref"]
      195 CALL                             R11 2 1
      196 ORK                              R10 R11 K31 []
      197 SETTABLEKS                       R10 R9 K8 ["Wireframe"]
      199 CALL                             R6 3 -1
      200 RETURN                           R6 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["current"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 JUMPIFNOTEQKN                    R0 K1 [1] ; [+33]
       11 GETIMPORT                        R0 K3 [workspace]
       13 GETTABLEKS                       R0 R0 K4 ["CurrentCamera"]
       15 LOADK                            R1 K5 [∞]
       16 JUMPIFNOT                        R0 ; [+14]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K6 ["getGlobalCoordinateFrame"]
       20 GETUPVAL                         R3 2
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R2 R2 K7 ["Position"]
       24 GETTABLEKS                       R4 R0 K8 ["CFrame"]
       26 GETTABLEKS                       R4 R4 K7 ["Position"]
       28 SUB                              R3 R4 R2
       29 GETTABLEKS                       R1 R3 K9 ["Magnitude"]
       31 GETUPVAL                         R2 3
       32 GETTABLEKS                       R2 R2 K10 ["onJointHoverEnter"]
       34 JUMPIFNOT                        R2 ; [+8]
       35 GETUPVAL                         R2 3
       36 GETTABLEKS                       R2 R2 K10 ["onJointHoverEnter"]
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K11 ["Name"]
       41 MOVE                             R4 R1
       42 CALL                             R2 2 0
       43 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K1 ["current"]
        4 SUBK                             R2 R3 K0 [1]
        5 FASTCALL2K                       MATH_MAX R2 K2 ; [+4]
        7 LOADK                            R3 K2 [0]
        8 GETIMPORT                        R1 K5 [math.max]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K1 ["current"]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K1 ["current"]
       16 JUMPIFNOTEQKN                    R0 K2 [0] ; [+12]
       18 GETUPVAL                         R0 1
       19 GETTABLEKS                       R0 R0 K6 ["onJointHoverLeave"]
       21 JUMPIFNOT                        R0 ; [+7]
       22 GETUPVAL                         R0 1
       23 GETTABLEKS                       R0 R0 K6 ["onJointHoverLeave"]
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R1 R1 K7 ["Name"]
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_21:
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
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K2 ["getGlobalCoordinateFrame"]
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
       33 GETUPVAL                         R1 3
       34 GETTABLEKS                       R1 R1 K2 ["getGlobalCoordinateFrame"]
       36 GETUPVAL                         R2 1
       37 CALL                             R1 1 1
       38 MOVE                             R0 R1
       39 GETUPVAL                         R1 4
       40 CALL                             R1 0 1
       41 JUMPIF                           R1 ; [+23]
       42 GETUPVAL                         R1 5
       43 GETTABLEKS                       R1 R1 K3 ["DEPRECATED_applyTposeAdjustment"]
       45 JUMPIFNOT                        R1 ; [+19]
       46 GETUPVAL                         R1 6
       47 JUMPIFNOT                        R1 ; [+17]
       48 GETUPVAL                         R1 6
       49 GETTABLEKS                       R1 R1 K4 ["adjustmentValue"]
       51 JUMPIFNOT                        R1 ; [+13]
       52 GETUPVAL                         R2 6
       53 GETTABLEKS                       R2 R2 K4 ["adjustmentValue"]
       55 FASTCALL1                        TYPEOF R2 ; [+2]
       56 GETIMPORT                        R1 K6 [typeof]
       58 CALL                             R1 1 1
       59 JUMPIFNOTEQKS                    R1 K7 ["CFrame"] ; [+5]
       61 GETUPVAL                         R1 6
       62 GETTABLEKS                       R1 R1 K4 ["adjustmentValue"]
       64 MUL                              R0 R0 R1
       65 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updatePositions"]
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

PROTO_23:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["CFrame"]
        5 NAMECALL                         R2 R2 K1 ["Inverse"]
        7 CALL                             R2 1 1
        8 MUL                              R1 R2 R0
        9 JUMPIF                           R1 ; [+3]
       10 GETIMPORT                        R1 K3 [CFrame.new]
       12 CALL                             R1 0 1
       13 RETURN                           R1 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K0 ["map"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+3]
        3 GETUPVAL                         R1 1
        4 ORK                              R0 R1 K0 [0.05]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 1
        7 ORK                              R0 R1 K0 [0.05]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["childJoints"]
       11 JUMPIF                           R1 ; [+2]
       12 NEWTABLE                         R1 0 0
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K2 ["Position"]
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
       30 GETUPVAL                         R10 5
       31 GETTABLEKS                       R10 R10 K3 ["getGlobalCoordinateFrame"]
       33 MOVE                             R11 R9
       34 CALL                             R10 1 1
       35 GETTABLEKS                       R10 R10 K2 ["Position"]
       37 SUB                              R11 R10 R2
       38 GETTABLEKS                       R11 R11 K4 ["Magnitude"]
       40 LOADN                            R12 0
       41 JUMPIFNOTLT                      R12 R11 ; [+3]
       43 ADD                              R3 R3 R11
       44 ADDK                             R4 R4 K5 [1]
       45 FORGLOOP                         R5 2 ; [-16]
       47 LOADN                            R5 0
       48 JUMPIFNOTLT                      R5 R4 ; [+80]
       50 DIV                              R5 R3 R4
       51 GETUPVAL                         R9 6
       52 GETTABLEKS                       R9 R9 K6 ["BONE_RADIUS_FRACTION"]
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
       68 GETUPVAL                         R9 5
       69 GETTABLEKS                       R9 R9 K3 ["getGlobalCoordinateFrame"]
       71 MOVE                             R10 R8
       72 CALL                             R9 1 1
       73 GETTABLEKS                       R9 R9 K2 ["Position"]
       75 SUB                              R10 R9 R2
       76 GETTABLEKS                       R10 R10 K4 ["Magnitude"]
       78 LOADN                            R11 0
       79 JUMPIFNOTLT                      R11 R10 ; [+4]
       81 JUMPIFNOTLT                      R10 R3 ; [+2]
       83 MOVE                             R3 R10
       84 FORGLOOP                         R4 2 ; [-17]
       86 LOADK                            R4 K10 [∞]
       87 JUMPIFNOTLT                      R3 R4 ; [+41]
       89 GETUPVAL                         R7 6
       90 GETTABLEKS                       R7 R7 K6 ["BONE_RADIUS_FRACTION"]
       92 MUL                              R6 R3 R7
       93 FASTCALL2                        MATH_MIN R0 R6 ; [+4]
       95 MOVE                             R5 R0
       96 GETIMPORT                        R4 K9 [math.min]
       98 CALL                             R4 2 1
       99 MOVE                             R0 R4
      100 JUMP                             ; [+28]
      101 GETUPVAL                         R3 2
      102 GETTABLEKS                       R3 R3 K11 ["parentJoint"]
      104 JUMPIFNOT                        R3 ; [+24]
      105 GETUPVAL                         R4 5
      106 GETTABLEKS                       R4 R4 K3 ["getGlobalCoordinateFrame"]
      108 MOVE                             R5 R3
      109 CALL                             R4 1 1
      110 GETTABLEKS                       R4 R4 K2 ["Position"]
      112 SUB                              R5 R2 R4
      113 GETTABLEKS                       R5 R5 K4 ["Magnitude"]
      115 LOADN                            R6 0
      116 JUMPIFNOTLT                      R6 R5 ; [+12]
      118 GETUPVAL                         R9 6
      119 GETTABLEKS                       R9 R9 K6 ["BONE_RADIUS_FRACTION"]
      121 MUL                              R8 R5 R9
      122 FASTCALL2                        MATH_MIN R0 R8 ; [+4]
      124 MOVE                             R7 R0
      125 GETIMPORT                        R6 K9 [math.min]
      127 CALL                             R6 2 1
      128 MOVE                             R0 R6
      129 GETUPVAL                         R5 6
      130 GETTABLEKS                       R5 R5 K12 ["RADIUS_MIN"]
      132 FASTCALL2                        MATH_MAX R0 R5 ; [+4]
      134 MOVE                             R4 R0
      135 GETIMPORT                        R3 K14 [math.max]
      137 CALL                             R3 2 1
      138 RETURN                           R3 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["getGlobalCoordinateFrame"]
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

PROTO_27:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_28:
        0 GETIMPORT                        R0 K1 [workspace]
        2 GETTABLEKS                       R0 R0 K2 ["CurrentCamera"]
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
       16 GETUPVAL                         R3 4
       17 GETTABLEKS                       R3 R3 K3 ["Name"]
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
       39 GETIMPORT                        R3 K5 [game]
       41 LOADK                            R5 K6 ["RunService"]
       42 NAMECALL                         R3 R3 K7 ["GetService"]
       44 CALL                             R3 2 1
       45 GETTABLEKS                       R3 R3 K8 ["RenderStepped"]
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

PROTO_29:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 JUMP                             ; [+5]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K0 ["Name"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 4
       12 LOADNIL                          R1
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K0 ["Name"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+4]
       12 GETUPVAL                         R0 4
       13 LOADNIL                          R1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onJointClicked"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["onJointClicked"]
        8 GETUPVAL                         R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_32:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["childJoints"]
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

PROTO_33:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+20]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["parentInst"]
        7 LOADK                            R4 K1 ["Bone"]
        8 NAMECALL                         R2 R1 K2 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+5]
       12 GETUPVAL                         R2 2
       13 MOVE                             R3 R1
       14 CALL                             R2 1 1
       15 MOVE                             R0 R2
       16 JUMP                             ; [+30]
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K3 ["getGlobalCoordinateFrame"]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 1
       22 MOVE                             R0 R2
       23 JUMP                             ; [+23]
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K0 ["parentInst"]
       27 LOADK                            R3 K1 ["Bone"]
       28 NAMECALL                         R1 R1 K2 ["IsA"]
       30 CALL                             R1 2 1
       31 JUMPIFNOT                        R1 ; [+7]
       32 GETUPVAL                         R1 2
       33 GETUPVAL                         R2 1
       34 GETTABLEKS                       R2 R2 K0 ["parentInst"]
       36 CALL                             R1 1 1
       37 MOVE                             R0 R1
       38 JUMP                             ; [+8]
       39 GETUPVAL                         R1 3
       40 GETTABLEKS                       R1 R1 K3 ["getGlobalCoordinateFrame"]
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R2 R2 K0 ["parentInst"]
       45 CALL                             R1 1 1
       46 MOVE                             R0 R1
       47 GETUPVAL                         R1 4
       48 CALL                             R1 0 1
       49 JUMPIF                           R1 ; [+21]
       50 GETUPVAL                         R1 5
       51 GETTABLEKS                       R1 R1 K4 ["DEPRECATED_applyTposeAdjustment"]
       53 JUMPIFNOT                        R1 ; [+17]
       54 GETUPVAL                         R1 6
       55 GETTABLEKS                       R1 R1 K5 ["adjustmentValue"]
       57 JUMPIFNOT                        R1 ; [+13]
       58 GETUPVAL                         R2 6
       59 GETTABLEKS                       R2 R2 K5 ["adjustmentValue"]
       61 FASTCALL1                        TYPEOF R2 ; [+2]
       62 GETIMPORT                        R1 K7 [typeof]
       64 CALL                             R1 1 1
       65 JUMPIFNOTEQKS                    R1 K8 ["CFrame"] ; [+5]
       67 GETUPVAL                         R1 6
       68 GETTABLEKS                       R1 R1 K5 ["adjustmentValue"]
       70 MUL                              R0 R0 R1
       71 RETURN                           R0 1

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["jointInstance"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
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
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K1 ["useState"]
       20 LOADNIL                          R6
       21 CALL                             R5 1 2
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K4 ["useRef"]
       25 LOADN                            R8 0
       26 CALL                             R7 1 1
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K5 ["useCallback"]
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
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       46 NEWCLOSURE                       R10 P1
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R1
       50 NEWTABLE                         R11 0 2
       52 MOVE                             R12 R1
       53 GETTABLEKS                       R13 R0 K7 ["onJointHoverLeave"]
       55 SETLIST                          R11 R12 2 [1]
       57 CALL                             R9 2 1
       58 GETUPVAL                         R10 0
       59 GETTABLEKS                       R10 R10 K1 ["useState"]
       61 LOADB                            R11 0
       62 CALL                             R10 1 2
       63 GETUPVAL                         R12 0
       64 GETTABLEKS                       R12 R12 K1 ["useState"]
       66 LOADB                            R13 0
       67 CALL                             R12 1 2
       68 GETUPVAL                         R14 0
       69 GETTABLEKS                       R14 R14 K1 ["useState"]
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
      127 GETUPVAL                         R22 0
      128 GETTABLEKS                       R22 R22 K17 ["useMemo"]
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
      146 GETUPVAL                         R23 0
      147 GETTABLEKS                       R23 R23 K17 ["useMemo"]
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
      164 GETUPVAL                         R26 0
      165 GETTABLEKS                       R26 R26 K17 ["useMemo"]
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
      188 GETUPVAL                         R28 12
      189 GETTABLEKS                       R28 R28 K23 ["SPHERE_STROKE_PCT"]
      191 MUL                              R27 R26 R28
      192 JUMP                             ; [+1]
      193 MOVE                             R27 R26
      194 GETUPVAL                         R28 0
      195 GETTABLEKS                       R28 R28 K24 ["useEffect"]
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
      226 GETUPVAL                         R29 0
      227 GETTABLEKS                       R29 R29 K25 ["createElement"]
      229 LOADK                            R30 K26 ["SphereHandleAdornment"]
      230 NEWTABLE                         R31 16 0
      232 SETTABLEKS                       R26 R31 K27 ["Radius"]
      234 GETTABLEKS                       R32 R20 K28 ["color"]
      236 SETTABLEKS                       R32 R31 K29 ["Color3"]
      238 GETUPVAL                         R33 13
      239 CALL                             R33 0 1
      240 JUMPIFNOT                        R33 ; [+2]
      241 LOADB                            R32 1
      242 JUMP                             ; [+6]
      243 GETUPVAL                         R33 1
      244 CALL                             R33 0 1
      245 JUMPIFNOT                        R33 ; [+2]
      246 MOVE                             R32 R17
      247 JUMP                             ; [+1]
      248 LOADB                            R32 1
      249 SETTABLEKS                       R32 R31 K30 ["AlwaysOnTop"]
      251 SETTABLEKS                       R21 R31 K31 ["Adornee"]
      253 GETUPVAL                         R33 13
      254 CALL                             R33 0 1
      255 JUMPIFNOT                        R33 ; [+4]
      256 GETUPVAL                         R32 12
      257 GETTABLEKS                       R32 R32 K32 ["ADORNMENT_TRANSPARENCY"]
      259 JUMP                             ; [+6]
      260 GETUPVAL                         R33 1
      261 CALL                             R33 0 1
      262 JUMPIFNOT                        R33 ; [+2]
      263 LOADN                            R32 0
      264 JUMP                             ; [+1]
      265 LOADK                            R32 K33 [0.25]
      266 SETTABLEKS                       R32 R31 K34 ["Transparency"]
      268 GETUPVAL                         R33 1
      269 CALL                             R33 0 1
      270 JUMPIFNOT                        R33 ; [+2]
      271 LOADN                            R32 0
      272 JUMP                             ; [+1]
      273 LOADN                            R32 1
      274 SETTABLEKS                       R32 R31 K35 ["ZIndex"]
      276 SETTABLEKS                       R23 R31 K36 ["CFrame"]
      278 GETUPVAL                         R32 0
      279 GETTABLEKS                       R32 R32 K37 ["Event"]
      281 GETTABLEKS                       R32 R32 K38 ["MouseEnter"]
      283 NEWCLOSURE                       R33 P6
      284 CAPTURE                          UPVAL U1
      285 CAPTURE                          VAL R8
      286 CAPTURE                          VAL R3
      287 CAPTURE                          VAL R1
      288 CAPTURE                          VAL R6
      289 JUMPIF                           R33 ; [+1]
      290 LOADNIL                          R33
      291 SETTABLE                         R33 R31 R32
      292 GETUPVAL                         R32 0
      293 GETTABLEKS                       R32 R32 K37 ["Event"]
      295 GETTABLEKS                       R32 R32 K39 ["MouseLeave"]
      297 NEWCLOSURE                       R33 P7
      298 CAPTURE                          UPVAL U1
      299 CAPTURE                          VAL R9
      300 CAPTURE                          VAL R4
      301 CAPTURE                          VAL R1
      302 CAPTURE                          VAL R3
      303 JUMPIF                           R33 ; [+1]
      304 LOADNIL                          R33
      305 SETTABLE                         R33 R31 R32
      306 GETUPVAL                         R32 0
      307 GETTABLEKS                       R32 R32 K37 ["Event"]
      309 GETTABLEKS                       R32 R32 K40 ["MouseButton1Down"]
      311 NEWCLOSURE                       R33 P8
      312 CAPTURE                          VAL R0
      313 CAPTURE                          VAL R1
      314 SETTABLE                         R33 R31 R32
      315 CALL                             R29 2 1
      316 SETTABLEKS                       R29 R28 K41 ["Sphere"]
      318 JUMPIFNOT                        R21 ; [+102]
      319 GETUPVAL                         R30 1
      320 CALL                             R30 0 1
      321 JUMPIF                           R30 ; [+3]
      322 GETTABLEKS                       R30 R0 K42 ["DEPRECATED_isPlayingAnimation"]
      324 JUMPIF                           R30 ; [+96]
      325 GETUPVAL                         R30 1
      326 CALL                             R30 0 1
      327 JUMPIFNOT                        R30 ; [+27]
      328 GETUPVAL                         R30 0
      329 GETTABLEKS                       R30 R30 K25 ["createElement"]
      331 GETUPVAL                         R31 14
      332 DUPTABLE                         R32 K46 [{"radius", "color", "adorneePart", "jointInstance", "alwaysOnTop"}]
      333 SETTABLEKS                       R27 R32 K43 ["radius"]
      335 GETTABLEKS                       R33 R20 K47 ["edgeColor"]
      337 SETTABLEKS                       R33 R32 K28 ["color"]
      339 SETTABLEKS                       R21 R32 K44 ["adorneePart"]
      341 SETTABLEKS                       R1 R32 K0 ["jointInstance"]
      343 GETUPVAL                         R34 13
      344 CALL                             R34 0 1
      345 JUMPIFNOT                        R34 ; [+2]
      346 LOADB                            R33 1
      347 JUMP                             ; [+1]
      348 MOVE                             R33 R17
      349 SETTABLEKS                       R33 R32 K45 ["alwaysOnTop"]
      351 CALL                             R30 2 1
      352 SETTABLEKS                       R30 R28 K48 ["Wire"]
      354 JUMP                             ; [+66]
      355 GETUPVAL                         R31 6
      356 CALL                             R31 0 1
      357 JUMPIFNOT                        R31 ; [+23]
      358 DUPTABLE                         R30 K52 [{"x", "y", "z"}]
      359 GETUPVAL                         R31 15
      360 LOADN                            R32 12
      361 MOVE                             R33 R27
      362 LOADK                            R34 K49 ["x"]
      363 CALL                             R31 3 1
      364 SETTABLEKS                       R31 R30 K49 ["x"]
      366 GETUPVAL                         R31 15
      367 LOADN                            R32 12
      368 MOVE                             R33 R27
      369 LOADK                            R34 K50 ["y"]
      370 CALL                             R31 3 1
      371 SETTABLEKS                       R31 R30 K50 ["y"]
      373 GETUPVAL                         R31 15
      374 LOADN                            R32 12
      375 MOVE                             R33 R27
      376 LOADK                            R34 K51 ["z"]
      377 CALL                             R31 3 1
      378 SETTABLEKS                       R31 R30 K51 ["z"]
      380 JUMP                             ; [+22]
      381 DUPTABLE                         R30 K52 [{"x", "y", "z"}]
      382 GETUPVAL                         R31 16
      383 LOADN                            R32 12
      384 MOVE                             R33 R27
      385 LOADK                            R34 K49 ["x"]
      386 CALL                             R31 3 1
      387 SETTABLEKS                       R31 R30 K49 ["x"]
      389 GETUPVAL                         R31 16
      390 LOADN                            R32 12
      391 MOVE                             R33 R27
      392 LOADK                            R34 K50 ["y"]
      393 CALL                             R31 3 1
      394 SETTABLEKS                       R31 R30 K50 ["y"]
      396 GETUPVAL                         R31 16
      397 LOADN                            R32 12
      398 MOVE                             R33 R27
      399 LOADK                            R34 K51 ["z"]
      400 CALL                             R31 3 1
      401 SETTABLEKS                       R31 R30 K51 ["z"]
      403 GETUPVAL                         R31 0
      404 GETTABLEKS                       R31 R31 K25 ["createElement"]
      406 GETUPVAL                         R32 14
      407 DUPTABLE                         R33 K55 [{"DEPRECATED_circlePoints", "color", "adorneePart", "DEPRECATED_sphereCf"}]
      408 SETTABLEKS                       R30 R33 K53 ["DEPRECATED_circlePoints"]
      410 GETTABLEKS                       R34 R20 K47 ["edgeColor"]
      412 SETTABLEKS                       R34 R33 K28 ["color"]
      414 SETTABLEKS                       R21 R33 K44 ["adorneePart"]
      416 SETTABLEKS                       R23 R33 K54 ["DEPRECATED_sphereCf"]
      418 CALL                             R31 2 1
      419 SETTABLEKS                       R31 R28 K48 ["Wire"]
      421 GETUPVAL                         R30 0
      422 GETTABLEKS                       R30 R30 K17 ["useMemo"]
      424 NEWCLOSURE                       R31 P9
      425 CAPTURE                          VAL R0
      426 CAPTURE                          UPVAL U6
      427 CAPTURE                          UPVAL U7
      428 CAPTURE                          UPVAL U8
      429 CAPTURE                          VAL R1
      430 NEWTABLE                         R32 0 1
      432 GETTABLEKS                       R33 R0 K21 ["childJoints"]
      434 SETLIST                          R32 R33 1 [1]
      436 CALL                             R30 2 1
      437 MOVE                             R31 R30
      438 LOADNIL                          R32
      439 LOADNIL                          R33
      440 FORGPREP                         R31
      441 GETUPVAL                         R36 0
      442 GETTABLEKS                       R36 R36 K25 ["createElement"]
      444 GETUPVAL                         R37 17
      445 DUPTABLE                         R38 K68 [{"parentInst", "childInst", "connectionAdorneePart", "standardRadius", "updatePositions", "getParentGlobalCf", "allowHover", "color", "edgeColor", "onJointClicked", "setHoveredPyramidParentName", "DEPRECATED_setHoveredJointName", "compositeHoverEnter", "compositeHoverLeave", "hoveredPyramidParentName", "DEPRECATED_isPlayingAnimation", "isJointHovered"}]
      446 GETTABLEKS                       R39 R35 K56 ["parentInst"]
      448 SETTABLEKS                       R39 R38 K56 ["parentInst"]
      450 GETTABLEKS                       R39 R35 K57 ["childInst"]
      452 SETTABLEKS                       R39 R38 K57 ["childInst"]
      454 GETTABLEKS                       R39 R35 K58 ["connectionAdorneePart"]
      456 SETTABLEKS                       R39 R38 K58 ["connectionAdorneePart"]
      458 SETTABLEKS                       R26 R38 K20 ["standardRadius"]
      460 GETTABLEKS                       R39 R0 K18 ["updatePositions"]
      462 SETTABLEKS                       R39 R38 K18 ["updatePositions"]
      464 NEWCLOSURE                       R39 P10
      465 CAPTURE                          UPVAL U9
      466 CAPTURE                          VAL R35
      467 CAPTURE                          UPVAL U10
      468 CAPTURE                          UPVAL U2
      469 CAPTURE                          UPVAL U3
      470 CAPTURE                          VAL R0
      471 CAPTURE                          REF R16
      472 SETTABLEKS                       R39 R38 K59 ["getParentGlobalCf"]
      474 LOADB                            R39 1
      475 SETTABLEKS                       R39 R38 K60 ["allowHover"]
      477 GETTABLEKS                       R39 R20 K28 ["color"]
      479 SETTABLEKS                       R39 R38 K28 ["color"]
      481 GETTABLEKS                       R39 R20 K47 ["edgeColor"]
      483 SETTABLEKS                       R39 R38 K47 ["edgeColor"]
      485 GETTABLEKS                       R39 R0 K61 ["onJointClicked"]
      487 SETTABLEKS                       R39 R38 K61 ["onJointClicked"]
      489 SETTABLEKS                       R6 R38 K62 ["setHoveredPyramidParentName"]
      491 GETUPVAL                         R40 1
      492 CALL                             R40 0 1
      493 JUMPIF                           R40 ; [+2]
      494 MOVE                             R39 R3
      495 JUMP                             ; [+1]
      496 LOADNIL                          R39
      497 SETTABLEKS                       R39 R38 K63 ["DEPRECATED_setHoveredJointName"]
      499 GETUPVAL                         R40 1
      500 CALL                             R40 0 1
      501 JUMPIFNOT                        R40 ; [+2]
      502 MOVE                             R39 R8
      503 JUMP                             ; [+1]
      504 LOADNIL                          R39
      505 SETTABLEKS                       R39 R38 K64 ["compositeHoverEnter"]
      507 GETUPVAL                         R40 1
      508 CALL                             R40 0 1
      509 JUMPIFNOT                        R40 ; [+2]
      510 MOVE                             R39 R9
      511 JUMP                             ; [+1]
      512 LOADNIL                          R39
      513 SETTABLEKS                       R39 R38 K65 ["compositeHoverLeave"]
      515 SETTABLEKS                       R5 R38 K66 ["hoveredPyramidParentName"]
      517 GETTABLEKS                       R39 R0 K42 ["DEPRECATED_isPlayingAnimation"]
      519 SETTABLEKS                       R39 R38 K42 ["DEPRECATED_isPlayingAnimation"]
      521 GETUPVAL                         R40 1
      522 CALL                             R40 0 1
      523 JUMPIFNOT                        R40 ; [+2]
      524 MOVE                             R39 R17
      525 JUMP                             ; [+1]
      526 LOADNIL                          R39
      527 SETTABLEKS                       R39 R38 K67 ["isJointHovered"]
      529 CALL                             R36 2 1
      530 SETTABLE                         R36 R28 R34
      531 FORGLOOP                         R31 2 ; [-91]
      533 LOADNIL                          R31
      534 JUMPIFNOT                        R10 ; [+171]
      535 JUMPIFNOT                        R12 ; [+170]
      536 GETUPVAL                         R32 18
      537 GETTABLEKS                       R32 R32 K69 ["createPortal"]
      539 GETUPVAL                         R33 0
      540 GETTABLEKS                       R33 R33 K25 ["createElement"]
      542 LOADK                            R34 K70 ["ScreenGui"]
      543 DUPTABLE                         R35 K74 [{"IgnoreGuiInset", "ResetOnSpawn", "ZIndexBehavior"}]
      544 LOADB                            R36 1
      545 SETTABLEKS                       R36 R35 K71 ["IgnoreGuiInset"]
      547 LOADB                            R36 0
      548 SETTABLEKS                       R36 R35 K72 ["ResetOnSpawn"]
      550 GETIMPORT                        R36 K77 [Enum.ZIndexBehavior.Sibling]
      552 SETTABLEKS                       R36 R35 K73 ["ZIndexBehavior"]
      554 DUPTABLE                         R36 K79 [{"Positioner"}]
      555 GETUPVAL                         R37 0
      556 GETTABLEKS                       R37 R37 K25 ["createElement"]
      558 LOADK                            R38 K80 ["Frame"]
      559 DUPTABLE                         R39 K84 [{"BackgroundTransparency", "Size", "Position", "ZIndex"}]
      560 LOADN                            R40 1
      561 SETTABLEKS                       R40 R39 K81 ["BackgroundTransparency"]
      563 GETIMPORT                        R40 K86 [UDim2.new]
      565 LOADN                            R41 0
      566 LOADN                            R42 0
      567 LOADN                            R43 0
      568 LOADN                            R44 0
      569 CALL                             R40 4 1
      570 SETTABLEKS                       R40 R39 K82 ["Size"]
      572 GETIMPORT                        R40 K86 [UDim2.new]
      574 LOADN                            R41 0
      575 GETTABLEKS                       R42 R14 K87 ["X"]
      577 LOADN                            R43 0
      578 GETTABLEKS                       R44 R14 K88 ["Y"]
      580 CALL                             R40 4 1
      581 SETTABLEKS                       R40 R39 K83 ["Position"]
      583 LOADN                            R40 200
      584 SETTABLEKS                       R40 R39 K35 ["ZIndex"]
      586 DUPTABLE                         R40 K90 [{"Tooltip"}]
      587 GETUPVAL                         R41 0
      588 GETTABLEKS                       R41 R41 K25 ["createElement"]
      590 LOADK                            R42 K91 ["TextLabel"]
      591 DUPTABLE                         R43 K99 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3", "Font", "TextSize", "AutomaticSize", "BorderSizePixel", "Text", "ZIndex"}]
      592 GETIMPORT                        R44 K100 [Color3.new]
      594 LOADN                            R45 0
      595 LOADN                            R46 0
      596 LOADN                            R47 0
      597 CALL                             R44 3 1
      598 SETTABLEKS                       R44 R43 K92 ["BackgroundColor3"]
      600 LOADK                            R44 K33 [0.25]
      601 SETTABLEKS                       R44 R43 K81 ["BackgroundTransparency"]
      603 GETIMPORT                        R44 K100 [Color3.new]
      605 LOADN                            R45 1
      606 LOADN                            R46 1
      607 LOADN                            R47 1
      608 CALL                             R44 3 1
      609 SETTABLEKS                       R44 R43 K93 ["TextColor3"]
      611 GETIMPORT                        R44 K102 [Enum.Font.SourceSans]
      613 SETTABLEKS                       R44 R43 K94 ["Font"]
      615 LOADN                            R44 14
      616 SETTABLEKS                       R44 R43 K95 ["TextSize"]
      618 GETIMPORT                        R44 K104 [Enum.AutomaticSize.XY]
      620 SETTABLEKS                       R44 R43 K96 ["AutomaticSize"]
      622 LOADN                            R44 0
      623 SETTABLEKS                       R44 R43 K97 ["BorderSizePixel"]
      625 LOADK                            R45 K105 ["%*: %*"]
      626 GETTABLEKS                       R47 R1 K106 ["ClassName"]
      628 GETTABLEKS                       R48 R1 K13 ["Name"]
      630 NAMECALL                         R45 R45 K107 ["format"]
      632 CALL                             R45 3 1
      633 MOVE                             R44 R45
      634 SETTABLEKS                       R44 R43 K98 ["Text"]
      636 LOADN                            R44 201
      637 SETTABLEKS                       R44 R43 K35 ["ZIndex"]
      639 DUPTABLE                         R44 K110 [{"UICorner", "Padding"}]
      640 GETUPVAL                         R45 0
      641 GETTABLEKS                       R45 R45 K25 ["createElement"]
      643 LOADK                            R46 K108 ["UICorner"]
      644 DUPTABLE                         R47 K112 [{"CornerRadius"}]
      645 GETIMPORT                        R48 K114 [UDim.new]
      647 LOADN                            R49 0
      648 LOADN                            R50 6
      649 CALL                             R48 2 1
      650 SETTABLEKS                       R48 R47 K111 ["CornerRadius"]
      652 CALL                             R45 2 1
      653 SETTABLEKS                       R45 R44 K108 ["UICorner"]
      655 GETUPVAL                         R45 0
      656 GETTABLEKS                       R45 R45 K25 ["createElement"]
      658 LOADK                            R46 K115 ["UIPadding"]
      659 DUPTABLE                         R47 K120 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      660 GETIMPORT                        R48 K114 [UDim.new]
      662 LOADN                            R49 0
      663 LOADN                            R50 8
      664 CALL                             R48 2 1
      665 SETTABLEKS                       R48 R47 K116 ["PaddingLeft"]
      667 GETIMPORT                        R48 K114 [UDim.new]
      669 LOADN                            R49 0
      670 LOADN                            R50 8
      671 CALL                             R48 2 1
      672 SETTABLEKS                       R48 R47 K117 ["PaddingRight"]
      674 GETIMPORT                        R48 K114 [UDim.new]
      676 LOADN                            R49 0
      677 LOADN                            R50 4
      678 CALL                             R48 2 1
      679 SETTABLEKS                       R48 R47 K118 ["PaddingTop"]
      681 GETIMPORT                        R48 K114 [UDim.new]
      683 LOADN                            R49 0
      684 LOADN                            R50 4
      685 CALL                             R48 2 1
      686 SETTABLEKS                       R48 R47 K119 ["PaddingBottom"]
      688 CALL                             R45 2 1
      689 SETTABLEKS                       R45 R44 K109 ["Padding"]
      691 CALL                             R41 3 1
      692 SETTABLEKS                       R41 R40 K89 ["Tooltip"]
      694 CALL                             R37 3 1
      695 SETTABLEKS                       R37 R36 K78 ["Positioner"]
      697 CALL                             R33 3 1
      698 GETIMPORT                        R34 K122 [game]
      700 LOADK                            R36 K123 ["CoreGui"]
      701 NAMECALL                         R34 R34 K124 ["GetService"]
      703 CALL                             R34 2 -1
      704 CALL                             R32 -1 1
      705 MOVE                             R31 R32
      706 GETUPVAL                         R32 0
      707 GETTABLEKS                       R32 R32 K25 ["createElement"]
      709 GETUPVAL                         R33 0
      710 GETTABLEKS                       R33 R33 K125 ["Fragment"]
      712 LOADNIL                          R34
      713 DUPTABLE                         R35 K128 [{"World", "TooltipPortal"}]
      714 GETUPVAL                         R36 0
      715 GETTABLEKS                       R36 R36 K25 ["createElement"]
      717 LOADK                            R37 K129 ["Folder"]
      718 LOADNIL                          R38
      719 MOVE                             R39 R28
      720 CALL                             R36 3 1
      721 SETTABLEKS                       R36 R35 K126 ["World"]
      723 SETTABLEKS                       R31 R35 K127 ["TooltipPortal"]
      725 CALL                             R32 3 -1
      726 CLOSEUPVALS                      R16
      727 RETURN                           R32 -1

PROTO_35:
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

PROTO_36:
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
       28 GETTABLEKS                       R7 R1 K0 ["jointInstance"]
       30 GETTABLEKS                       R7 R7 K1 ["Name"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["AdaptiveAnimationTools"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Components"]
       41 GETTABLEKS                       R6 R6 K13 ["Hooks"]
       43 GETTABLEKS                       R6 R6 K14 ["useJointSignals"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K12 ["Components"]
       52 GETTABLEKS                       R7 R7 K15 ["Adornments"]
       54 GETTABLEKS                       R7 R7 K16 ["computeJointVisualState"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K10 ["Src"]
       61 GETTABLEKS                       R8 R8 K12 ["Components"]
       63 GETTABLEKS                       R8 R8 K15 ["Adornments"]
       65 GETTABLEKS                       R8 R8 K17 ["AxisCircleAdornment"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K10 ["Src"]
       72 GETTABLEKS                       R9 R9 K12 ["Components"]
       74 GETTABLEKS                       R9 R9 K15 ["Adornments"]
       76 GETTABLEKS                       R9 R9 K18 ["getAdornee"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K10 ["Src"]
       83 GETTABLEKS                       R10 R10 K12 ["Components"]
       85 GETTABLEKS                       R10 R10 K15 ["Adornments"]
       87 GETTABLEKS                       R10 R10 K19 ["buildCircle"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETTABLEKS                       R11 R0 K10 ["Src"]
       94 GETTABLEKS                       R11 R11 K20 ["Flags"]
       96 GETTABLEKS                       R11 R11 K21 ["getFFlagAdaptiveAnimatonImprovements"]
       98 CALL                             R10 1 1
       99 GETIMPORT                        R11 K5 [require]
      101 GETTABLEKS                       R12 R0 K10 ["Src"]
      103 GETTABLEKS                       R12 R12 K20 ["Flags"]
      105 GETTABLEKS                       R12 R12 K22 ["getFFlagAdaptiveAnimationBetaImprovements"]
      107 CALL                             R11 1 1
      108 GETIMPORT                        R12 K5 [require]
      110 GETTABLEKS                       R13 R0 K10 ["Src"]
      112 GETTABLEKS                       R13 R13 K20 ["Flags"]
      114 GETTABLEKS                       R13 R13 K23 ["getFFlagAdaptiveAnimationConstraints"]
      116 CALL                             R12 1 1
      117 GETIMPORT                        R13 K5 [require]
      119 GETTABLEKS                       R14 R0 K10 ["Src"]
      121 GETTABLEKS                       R14 R14 K20 ["Flags"]
      123 GETTABLEKS                       R14 R14 K24 ["getFFlagAdaptiveAnimationQoL"]
      125 CALL                             R13 1 1
      126 GETIMPORT                        R14 K5 [require]
      128 GETTABLEKS                       R15 R0 K10 ["Src"]
      130 GETTABLEKS                       R15 R15 K20 ["Flags"]
      132 GETTABLEKS                       R15 R15 K25 ["getFFlagAdaptiveAnimationHandRig"]
      134 CALL                             R14 1 1
      135 GETIMPORT                        R15 K5 [require]
      137 GETTABLEKS                       R16 R0 K10 ["Src"]
      139 GETTABLEKS                       R16 R16 K20 ["Flags"]
      141 GETTABLEKS                       R16 R16 K26 ["getFFlagAdaptiveAnimationWireFix"]
      143 CALL                             R15 1 1
      144 GETIMPORT                        R16 K5 [require]
      146 GETTABLEKS                       R17 R0 K10 ["Src"]
      148 GETTABLEKS                       R17 R17 K20 ["Flags"]
      150 GETTABLEKS                       R17 R17 K27 ["getFFlagAdaptiveAnimationSolidBones"]
      152 CALL                             R16 1 1
      153 GETIMPORT                        R17 K5 [require]
      155 GETTABLEKS                       R18 R0 K10 ["Src"]
      157 GETTABLEKS                       R18 R18 K28 ["Resources"]
      159 GETTABLEKS                       R18 R18 K29 ["Constants"]
      161 CALL                             R17 1 1
      162 GETIMPORT                        R18 K31 [game]
      164 LOADK                            R20 K32 ["RunService"]
      165 NAMECALL                         R18 R18 K33 ["GetService"]
      167 CALL                             R18 2 1
      168 DUPCLOSURE                       R19 K34 [PROTO_0]
      169 DUPCLOSURE                       R20 K35 [PROTO_1]
      170 DUPCLOSURE                       R21 K36 [PROTO_2]
      171 CAPTURE                          VAL R20
      172 CAPTURE                          VAL R3
      173 DUPCLOSURE                       R22 K37 [PROTO_3]
      174 DUPCLOSURE                       R23 K38 [PROTO_4]
      175 DUPCLOSURE                       R24 K39 [PROTO_18]
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R20
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R12
      181 CAPTURE                          VAL R15
      182 CAPTURE                          VAL R16
      183 CAPTURE                          VAL R18
      184 CAPTURE                          VAL R17
      185 CAPTURE                          VAL R13
      186 DUPCLOSURE                       R25 K40 [PROTO_34]
      187 CAPTURE                          VAL R1
      188 CAPTURE                          VAL R13
      189 CAPTURE                          VAL R3
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R6
      193 CAPTURE                          VAL R12
      194 CAPTURE                          VAL R8
      195 CAPTURE                          VAL R19
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R20
      198 CAPTURE                          VAL R14
      199 CAPTURE                          VAL R17
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R7
      202 CAPTURE                          VAL R9
      203 CAPTURE                          VAL R22
      204 CAPTURE                          VAL R24
      205 CAPTURE                          VAL R2
      206 DUPCLOSURE                       R26 K41 [PROTO_35]
      207 DUPTABLE                         R27 K45 [{"childJoints", "mappedLookup", "otherMappedLookup"}]
      208 LOADB                            R28 1
      209 SETTABLEKS                       R28 R27 K42 ["childJoints"]
      211 LOADB                            R28 1
      212 SETTABLEKS                       R28 R27 K43 ["mappedLookup"]
      214 LOADB                            R28 1
      215 SETTABLEKS                       R28 R27 K44 ["otherMappedLookup"]
      217 DUPTABLE                         R28 K48 [{"globalHoveredJointName", "mannequinHoveredJointName"}]
      218 LOADB                            R29 1
      219 SETTABLEKS                       R29 R28 K46 ["globalHoveredJointName"]
      221 LOADB                            R29 1
      222 SETTABLEKS                       R29 R28 K47 ["mannequinHoveredJointName"]
      224 DUPCLOSURE                       R29 K49 [PROTO_36]
      225 CAPTURE                          VAL R27
      226 CAPTURE                          VAL R26
      227 CAPTURE                          VAL R28
      228 GETTABLEKS                       R30 R1 K50 ["memo"]
      230 MOVE                             R31 R25
      231 MOVE                             R32 R29
      232 CALL                             R30 2 1
      233 MOVE                             R32 R14
      234 CALL                             R32 0 1
      235 JUMPIFNOT                        R32 ; [+2]
      236 MOVE                             R31 R30
      237 JUMP                             ; [+1]
      238 MOVE                             R31 R25
      239 DUPTABLE                         R32 K53 [{"Component", "_test"}]
      240 SETTABLEKS                       R31 R32 K51 ["Component"]
      242 DUPTABLE                         R33 K61 [{"DEPRECATED_getAdornee", "DEPRECATED_buildCircle", "shallowTableEqual", "ConnectionGeom", "memoComparator", "JointAdornmentComposite", "isTriangleFrontFacing"}]
      243 SETTABLEKS                       R19 R33 K54 ["DEPRECATED_getAdornee"]
      245 SETTABLEKS                       R22 R33 K55 ["DEPRECATED_buildCircle"]
      247 SETTABLEKS                       R26 R33 K56 ["shallowTableEqual"]
      249 SETTABLEKS                       R24 R33 K57 ["ConnectionGeom"]
      251 SETTABLEKS                       R29 R33 K58 ["memoComparator"]
      253 SETTABLEKS                       R25 R33 K59 ["JointAdornmentComposite"]
      255 SETTABLEKS                       R23 R33 K60 ["isTriangleFrontFacing"]
      257 SETTABLEKS                       R33 R32 K52 ["_test"]
      259 RETURN                           R32 1
