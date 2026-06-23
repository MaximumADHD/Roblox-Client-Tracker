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
       47 NEWTABLE                         R8 0 2
       49 MOVE                             R9 R5
       50 GETUPVAL                         R11 6
       51 CALL                             R11 0 1
       52 JUMPIFNOT                        R11 ; [+3]
       53 GETTABLEKS                       R10 R0 K5 ["edgeColor"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R10
       57 SETLIST                          R8 R9 2 [1]
       59 CALL                             R6 2 0
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K6 ["createElement"]
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R7 R7 K7 ["Fragment"]
       66 LOADNIL                          R8
       67 DUPTABLE                         R9 K10 [{"Pyramid", "Wireframe"}]
       68 GETUPVAL                         R10 0
       69 GETTABLEKS                       R10 R10 K6 ["createElement"]
       71 LOADK                            R11 K11 ["PyramidHandleAdornment"]
       72 NEWTABLE                         R12 16 0
       74 GETTABLEKS                       R13 R0 K12 ["connectionAdorneePart"]
       76 SETTABLEKS                       R13 R12 K13 ["Adornee"]
       78 SETTABLEKS                       R3 R12 K14 ["CFrame"]
       80 GETUPVAL                         R14 6
       81 CALL                             R14 0 1
       82 JUMPIFNOT                        R14 ; [+4]
       83 GETUPVAL                         R13 8
       84 GETTABLEKS                       R13 R13 K15 ["ADORNMENT_TRANSPARENCY"]
       86 JUMP                             ; [+6]
       87 GETUPVAL                         R14 9
       88 CALL                             R14 0 1
       89 JUMPIFNOT                        R14 ; [+2]
       90 LOADN                            R13 0
       91 JUMP                             ; [+1]
       92 LOADK                            R13 K16 [0.25]
       93 SETTABLEKS                       R13 R12 K17 ["Transparency"]
       95 LOADN                            R13 0
       96 SETTABLEKS                       R13 R12 K18 ["ZIndex"]
       98 GETTABLEKS                       R14 R0 K20 ["standardRadius"]
      100 MULK                             R13 R14 K19 [1.5]
      101 SETTABLEKS                       R13 R12 K21 ["Size"]
      103 SETTABLEKS                       R4 R12 K22 ["Height"]
      105 GETTABLEKS                       R13 R0 K23 ["color"]
      107 SETTABLEKS                       R13 R12 K24 ["Color3"]
      109 GETUPVAL                         R14 6
      110 CALL                             R14 0 1
      111 JUMPIFNOT                        R14 ; [+2]
      112 LOADB                            R13 1
      113 JUMP                             ; [+7]
      114 GETUPVAL                         R14 9
      115 CALL                             R14 0 1
      116 JUMPIFNOT                        R14 ; [+3]
      117 GETTABLEKS                       R13 R0 K25 ["isJointHovered"]
      119 JUMP                             ; [+1]
      120 LOADB                            R13 1
      121 SETTABLEKS                       R13 R12 K26 ["AlwaysOnTop"]
      123 GETUPVAL                         R13 0
      124 GETTABLEKS                       R13 R13 K27 ["Event"]
      126 GETTABLEKS                       R13 R13 K28 ["MouseEnter"]
      128 NEWCLOSURE                       R14 P3
      129 CAPTURE                          VAL R0
      130 CAPTURE                          UPVAL U9
      131 SETTABLE                         R14 R12 R13
      132 GETUPVAL                         R13 0
      133 GETTABLEKS                       R13 R13 K27 ["Event"]
      135 GETTABLEKS                       R13 R13 K29 ["MouseLeave"]
      137 NEWCLOSURE                       R14 P4
      138 CAPTURE                          VAL R0
      139 CAPTURE                          UPVAL U9
      140 SETTABLE                         R14 R12 R13
      141 GETUPVAL                         R13 0
      142 GETTABLEKS                       R13 R13 K27 ["Event"]
      144 GETTABLEKS                       R13 R13 K30 ["MouseButton1Down"]
      146 NEWCLOSURE                       R14 P5
      147 CAPTURE                          VAL R0
      148 SETTABLE                         R14 R12 R13
      149 CALL                             R10 2 1
      150 SETTABLEKS                       R10 R9 K8 ["Pyramid"]
      152 GETUPVAL                         R11 9
      153 CALL                             R11 0 1
      154 JUMPIF                           R11 ; [+5]
      155 GETTABLEKS                       R11 R0 K31 ["DEPRECATED_isPlayingAnimation"]
      157 JUMPIFNOT                        R11 ; [+2]
      158 LOADNIL                          R10
      159 JUMP                             ; [+44]
      160 GETUPVAL                         R11 0
      161 GETTABLEKS                       R11 R11 K6 ["createElement"]
      163 LOADK                            R12 K33 ["WireframeHandleAdornment"]
      164 DUPTABLE                         R13 K35 [{"Adornee", "AlwaysOnTop", "Transparency", "ZIndex", "Color3", "CFrame", "ref"}]
      165 GETTABLEKS                       R14 R0 K12 ["connectionAdorneePart"]
      167 SETTABLEKS                       R14 R13 K13 ["Adornee"]
      169 GETUPVAL                         R15 6
      170 CALL                             R15 0 1
      171 JUMPIFNOT                        R15 ; [+2]
      172 LOADB                            R14 1
      173 JUMP                             ; [+7]
      174 GETUPVAL                         R15 9
      175 CALL                             R15 0 1
      176 JUMPIFNOT                        R15 ; [+3]
      177 GETTABLEKS                       R14 R0 K25 ["isJointHovered"]
      179 JUMP                             ; [+1]
      180 LOADB                            R14 1
      181 SETTABLEKS                       R14 R13 K26 ["AlwaysOnTop"]
      183 GETUPVAL                         R15 9
      184 CALL                             R15 0 1
      185 JUMPIFNOT                        R15 ; [+2]
      186 LOADN                            R14 0
      187 JUMP                             ; [+1]
      188 LOADK                            R14 K16 [0.25]
      189 SETTABLEKS                       R14 R13 K17 ["Transparency"]
      191 LOADN                            R14 0
      192 SETTABLEKS                       R14 R13 K18 ["ZIndex"]
      194 GETTABLEKS                       R14 R0 K5 ["edgeColor"]
      196 SETTABLEKS                       R14 R13 K24 ["Color3"]
      198 SETTABLEKS                       R3 R13 K14 ["CFrame"]
      200 SETTABLEKS                       R1 R13 K34 ["ref"]
      202 CALL                             R11 2 1
      203 ORK                              R10 R11 K32 []
      204 SETTABLEKS                       R10 R9 K9 ["Wireframe"]
      206 CALL                             R6 3 -1
      207 RETURN                           R6 -1

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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 GETTABLEKS                       R2 R0 K0 ["jointInstance"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K1 ["useState"]
       12 LOADNIL                          R4
       13 CALL                             R3 1 2
       14 GETUPVAL                         R6 3
       15 CALL                             R6 0 1
       16 JUMPIFNOT                        R6 ; [+6]
       17 GETTABLEKS                       R5 R0 K2 ["globalHoveredJointName"]
       19 JUMPIF                           R5 ; [+4]
       20 GETTABLEKS                       R5 R0 K3 ["mannequinHoveredJointName"]
       22 JUMP                             ; [+1]
       23 MOVE                             R5 R3
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R6 R6 K1 ["useState"]
       27 LOADNIL                          R7
       28 CALL                             R6 1 2
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R8 R8 K4 ["useRef"]
       32 LOADN                            R9 0
       33 CALL                             R8 1 1
       34 GETUPVAL                         R9 2
       35 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       37 NEWCLOSURE                       R10 P0
       38 CAPTURE                          VAL R8
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R0
       42 NEWTABLE                         R11 0 2
       44 MOVE                             R12 R2
       45 GETTABLEKS                       R13 R0 K6 ["onJointHoverEnter"]
       47 SETLIST                          R11 R12 2 [1]
       49 CALL                             R9 2 1
       50 GETUPVAL                         R10 2
       51 GETTABLEKS                       R10 R10 K5 ["useCallback"]
       53 NEWCLOSURE                       R11 P1
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R2
       57 NEWTABLE                         R12 0 2
       59 MOVE                             R13 R2
       60 GETTABLEKS                       R14 R0 K7 ["onJointHoverLeave"]
       62 SETLIST                          R12 R13 2 [1]
       64 CALL                             R10 2 1
       65 GETUPVAL                         R11 2
       66 GETTABLEKS                       R11 R11 K1 ["useState"]
       68 LOADB                            R12 0
       69 CALL                             R11 1 2
       70 GETUPVAL                         R13 2
       71 GETTABLEKS                       R13 R13 K1 ["useState"]
       73 LOADB                            R14 0
       74 CALL                             R13 1 2
       75 GETUPVAL                         R15 2
       76 GETTABLEKS                       R15 R15 K1 ["useState"]
       78 GETIMPORT                        R16 K10 [Vector2.new]
       80 LOADN                            R17 0
       81 LOADN                            R18 0
       82 CALL                             R16 2 -1
       83 CALL                             R15 -1 2
       84 LOADNIL                          R17
       85 GETUPVAL                         R18 5
       86 CALL                             R18 0 1
       87 JUMPIF                           R18 ; [+9]
       88 GETTABLEKS                       R18 R0 K11 ["DEPRECATED_rigDescriptor"]
       90 GETTABLEKS                       R19 R0 K12 ["DEPRECATED_jointLabel"]
       92 GETUPVAL                         R20 6
       93 MOVE                             R21 R18
       94 MOVE                             R22 R19
       95 CALL                             R20 2 1
       96 MOVE                             R17 R20
       97 GETTABLEKS                       R19 R2 K13 ["Name"]
       99 JUMPIFEQ                         R5 R19 ; [+2]
      101 LOADB                            R18 0 +1
      102 LOADB                            R18 1
      103 GETTABLEKS                       R19 R0 K14 ["mappedLookup"]
      105 JUMPIF                           R19 ; [+2]
      106 NEWTABLE                         R19 0 0
      108 GETTABLEKS                       R20 R0 K15 ["otherMappedLookup"]
      110 GETUPVAL                         R21 7
      111 MOVE                             R22 R2
      112 GETTABLEKS                       R23 R0 K16 ["selectedJointInstance"]
      114 MOVE                             R24 R5
      115 GETUPVAL                         R26 3
      116 CALL                             R26 0 1
      117 JUMPIFNOT                        R26 ; [+2]
      118 LOADNIL                          R25
      119 JUMP                             ; [+1]
      120 MOVE                             R25 R6
      121 MOVE                             R26 R19
      122 MOVE                             R27 R20
      123 MOVE                             R28 R1
      124 CALL                             R21 7 1
      125 GETUPVAL                         R23 8
      126 CALL                             R23 0 1
      127 JUMPIFNOT                        R23 ; [+4]
      128 GETUPVAL                         R22 9
      129 MOVE                             R23 R2
      130 CALL                             R22 1 1
      131 JUMP                             ; [+3]
      132 GETUPVAL                         R22 10
      133 MOVE                             R23 R2
      134 CALL                             R22 1 1
      135 GETUPVAL                         R23 2
      136 GETTABLEKS                       R23 R23 K17 ["useMemo"]
      138 NEWCLOSURE                       R24 P2
      139 CAPTURE                          VAL R0
      140 CAPTURE                          UPVAL U11
      141 CAPTURE                          VAL R2
      142 CAPTURE                          UPVAL U12
      143 CAPTURE                          UPVAL U4
      144 CAPTURE                          UPVAL U5
      145 CAPTURE                          REF R17
      146 NEWTABLE                         R25 0 2
      148 MOVE                             R26 R2
      149 GETTABLEKS                       R27 R0 K18 ["updatePositions"]
      151 SETLIST                          R25 R26 2 [1]
      153 CALL                             R23 2 1
      154 GETUPVAL                         R24 2
      155 GETTABLEKS                       R24 R24 K17 ["useMemo"]
      157 NEWCLOSURE                       R25 P3
      158 CAPTURE                          VAL R23
      159 CAPTURE                          VAL R22
      160 NEWTABLE                         R26 0 2
      162 MOVE                             R27 R23
      163 MOVE                             R28 R22
      164 SETLIST                          R26 R27 2 [1]
      166 CALL                             R24 2 1
      167 NAMECALL                         R25 R23 K19 ["getValue"]
      169 CALL                             R25 1 1
      170 GETTABLEKS                       R26 R0 K20 ["standardRadius"]
      172 GETUPVAL                         R27 2
      173 GETTABLEKS                       R27 R27 K17 ["useMemo"]
      175 NEWCLOSURE                       R28 P4
      176 CAPTURE                          UPVAL U13
      177 CAPTURE                          VAL R26
      178 CAPTURE                          VAL R0
      179 CAPTURE                          VAL R25
      180 CAPTURE                          UPVAL U3
      181 CAPTURE                          UPVAL U4
      182 CAPTURE                          UPVAL U14
      183 NEWTABLE                         R29 0 3
      185 MOVE                             R30 R26
      186 GETTABLEKS                       R31 R0 K21 ["childJoints"]
      188 GETTABLEKS                       R32 R0 K22 ["parentJoint"]
      190 SETLIST                          R29 R30 3 [1]
      192 CALL                             R27 2 1
      193 GETUPVAL                         R29 13
      194 CALL                             R29 0 1
      195 JUMPIFNOT                        R29 ; [+5]
      196 GETUPVAL                         R29 14
      197 GETTABLEKS                       R29 R29 K23 ["SPHERE_STROKE_PCT"]
      199 MUL                              R28 R27 R29
      200 JUMP                             ; [+1]
      201 MOVE                             R28 R27
      202 GETUPVAL                         R29 2
      203 GETTABLEKS                       R29 R29 K24 ["useEffect"]
      205 NEWCLOSURE                       R30 P5
      206 CAPTURE                          VAL R12
      207 CAPTURE                          VAL R14
      208 CAPTURE                          UPVAL U3
      209 CAPTURE                          VAL R5
      210 CAPTURE                          VAL R2
      211 CAPTURE                          VAL R6
      212 CAPTURE                          UPVAL U4
      213 CAPTURE                          VAL R25
      214 CAPTURE                          VAL R16
      215 GETUPVAL                         R32 3
      216 CALL                             R32 0 1
      217 JUMPIFNOT                        R32 ; [+6]
      218 NEWTABLE                         R31 0 1
      220 MOVE                             R32 R5
      221 SETLIST                          R31 R32 1 [1]
      223 JUMP                             ; [+7]
      224 NEWTABLE                         R31 0 3
      226 MOVE                             R32 R5
      227 MOVE                             R33 R6
      228 MOVE                             R34 R25
      229 SETLIST                          R31 R32 3 [1]
      231 CALL                             R29 2 0
      232 NEWTABLE                         R29 0 0
      234 GETUPVAL                         R30 2
      235 GETTABLEKS                       R30 R30 K25 ["createElement"]
      237 LOADK                            R31 K26 ["SphereHandleAdornment"]
      238 NEWTABLE                         R32 16 0
      240 SETTABLEKS                       R27 R32 K27 ["Radius"]
      242 GETTABLEKS                       R33 R21 K28 ["color"]
      244 SETTABLEKS                       R33 R32 K29 ["Color3"]
      246 GETUPVAL                         R34 0
      247 CALL                             R34 0 1
      248 JUMPIFNOT                        R34 ; [+2]
      249 LOADB                            R33 1
      250 JUMP                             ; [+6]
      251 GETUPVAL                         R34 3
      252 CALL                             R34 0 1
      253 JUMPIFNOT                        R34 ; [+2]
      254 MOVE                             R33 R18
      255 JUMP                             ; [+1]
      256 LOADB                            R33 1
      257 SETTABLEKS                       R33 R32 K30 ["AlwaysOnTop"]
      259 SETTABLEKS                       R22 R32 K31 ["Adornee"]
      261 GETUPVAL                         R34 0
      262 CALL                             R34 0 1
      263 JUMPIFNOT                        R34 ; [+4]
      264 GETUPVAL                         R33 14
      265 GETTABLEKS                       R33 R33 K32 ["ADORNMENT_TRANSPARENCY"]
      267 JUMP                             ; [+6]
      268 GETUPVAL                         R34 3
      269 CALL                             R34 0 1
      270 JUMPIFNOT                        R34 ; [+2]
      271 LOADN                            R33 0
      272 JUMP                             ; [+1]
      273 LOADK                            R33 K33 [0.25]
      274 SETTABLEKS                       R33 R32 K34 ["Transparency"]
      276 GETUPVAL                         R34 3
      277 CALL                             R34 0 1
      278 JUMPIFNOT                        R34 ; [+2]
      279 LOADN                            R33 0
      280 JUMP                             ; [+1]
      281 LOADN                            R33 1
      282 SETTABLEKS                       R33 R32 K35 ["ZIndex"]
      284 SETTABLEKS                       R24 R32 K36 ["CFrame"]
      286 GETUPVAL                         R33 2
      287 GETTABLEKS                       R33 R33 K37 ["Event"]
      289 GETTABLEKS                       R33 R33 K38 ["MouseEnter"]
      291 NEWCLOSURE                       R34 P6
      292 CAPTURE                          UPVAL U3
      293 CAPTURE                          VAL R9
      294 CAPTURE                          VAL R4
      295 CAPTURE                          VAL R2
      296 CAPTURE                          VAL R7
      297 JUMPIF                           R34 ; [+1]
      298 LOADNIL                          R34
      299 SETTABLE                         R34 R32 R33
      300 GETUPVAL                         R33 2
      301 GETTABLEKS                       R33 R33 K37 ["Event"]
      303 GETTABLEKS                       R33 R33 K39 ["MouseLeave"]
      305 NEWCLOSURE                       R34 P7
      306 CAPTURE                          UPVAL U3
      307 CAPTURE                          VAL R10
      308 CAPTURE                          VAL R5
      309 CAPTURE                          VAL R2
      310 CAPTURE                          VAL R4
      311 JUMPIF                           R34 ; [+1]
      312 LOADNIL                          R34
      313 SETTABLE                         R34 R32 R33
      314 GETUPVAL                         R33 2
      315 GETTABLEKS                       R33 R33 K37 ["Event"]
      317 GETTABLEKS                       R33 R33 K40 ["MouseButton1Down"]
      319 NEWCLOSURE                       R34 P8
      320 CAPTURE                          VAL R0
      321 CAPTURE                          VAL R2
      322 SETTABLE                         R34 R32 R33
      323 CALL                             R30 2 1
      324 SETTABLEKS                       R30 R29 K41 ["Sphere"]
      326 JUMPIFNOT                        R22 ; [+97]
      327 GETUPVAL                         R31 3
      328 CALL                             R31 0 1
      329 JUMPIF                           R31 ; [+3]
      330 GETTABLEKS                       R31 R0 K42 ["DEPRECATED_isPlayingAnimation"]
      332 JUMPIF                           R31 ; [+91]
      333 GETUPVAL                         R31 3
      334 CALL                             R31 0 1
      335 JUMPIFNOT                        R31 ; [+22]
      336 GETUPVAL                         R31 2
      337 GETTABLEKS                       R31 R31 K25 ["createElement"]
      339 GETUPVAL                         R32 15
      340 DUPTABLE                         R33 K46 [{"radius", "color", "adorneePart", "jointInstance", "alwaysOnTop"}]
      341 SETTABLEKS                       R28 R33 K43 ["radius"]
      343 GETTABLEKS                       R34 R21 K47 ["edgeColor"]
      345 SETTABLEKS                       R34 R33 K28 ["color"]
      347 SETTABLEKS                       R22 R33 K44 ["adorneePart"]
      349 SETTABLEKS                       R2 R33 K0 ["jointInstance"]
      351 LOADB                            R34 1
      352 SETTABLEKS                       R34 R33 K45 ["alwaysOnTop"]
      354 CALL                             R31 2 1
      355 SETTABLEKS                       R31 R29 K48 ["Wire"]
      357 JUMP                             ; [+66]
      358 GETUPVAL                         R32 8
      359 CALL                             R32 0 1
      360 JUMPIFNOT                        R32 ; [+23]
      361 DUPTABLE                         R31 K52 [{"x", "y", "z"}]
      362 GETUPVAL                         R32 16
      363 LOADN                            R33 12
      364 MOVE                             R34 R28
      365 LOADK                            R35 K49 ["x"]
      366 CALL                             R32 3 1
      367 SETTABLEKS                       R32 R31 K49 ["x"]
      369 GETUPVAL                         R32 16
      370 LOADN                            R33 12
      371 MOVE                             R34 R28
      372 LOADK                            R35 K50 ["y"]
      373 CALL                             R32 3 1
      374 SETTABLEKS                       R32 R31 K50 ["y"]
      376 GETUPVAL                         R32 16
      377 LOADN                            R33 12
      378 MOVE                             R34 R28
      379 LOADK                            R35 K51 ["z"]
      380 CALL                             R32 3 1
      381 SETTABLEKS                       R32 R31 K51 ["z"]
      383 JUMP                             ; [+22]
      384 DUPTABLE                         R31 K52 [{"x", "y", "z"}]
      385 GETUPVAL                         R32 17
      386 LOADN                            R33 12
      387 MOVE                             R34 R28
      388 LOADK                            R35 K49 ["x"]
      389 CALL                             R32 3 1
      390 SETTABLEKS                       R32 R31 K49 ["x"]
      392 GETUPVAL                         R32 17
      393 LOADN                            R33 12
      394 MOVE                             R34 R28
      395 LOADK                            R35 K50 ["y"]
      396 CALL                             R32 3 1
      397 SETTABLEKS                       R32 R31 K50 ["y"]
      399 GETUPVAL                         R32 17
      400 LOADN                            R33 12
      401 MOVE                             R34 R28
      402 LOADK                            R35 K51 ["z"]
      403 CALL                             R32 3 1
      404 SETTABLEKS                       R32 R31 K51 ["z"]
      406 GETUPVAL                         R32 2
      407 GETTABLEKS                       R32 R32 K25 ["createElement"]
      409 GETUPVAL                         R33 15
      410 DUPTABLE                         R34 K55 [{"DEPRECATED_circlePoints", "color", "adorneePart", "DEPRECATED_sphereCf"}]
      411 SETTABLEKS                       R31 R34 K53 ["DEPRECATED_circlePoints"]
      413 GETTABLEKS                       R35 R21 K47 ["edgeColor"]
      415 SETTABLEKS                       R35 R34 K28 ["color"]
      417 SETTABLEKS                       R22 R34 K44 ["adorneePart"]
      419 SETTABLEKS                       R24 R34 K54 ["DEPRECATED_sphereCf"]
      421 CALL                             R32 2 1
      422 SETTABLEKS                       R32 R29 K48 ["Wire"]
      424 GETUPVAL                         R31 2
      425 GETTABLEKS                       R31 R31 K17 ["useMemo"]
      427 NEWCLOSURE                       R32 P9
      428 CAPTURE                          VAL R0
      429 CAPTURE                          UPVAL U8
      430 CAPTURE                          UPVAL U9
      431 CAPTURE                          UPVAL U10
      432 CAPTURE                          VAL R2
      433 NEWTABLE                         R33 0 1
      435 GETTABLEKS                       R34 R0 K21 ["childJoints"]
      437 SETLIST                          R33 R34 1 [1]
      439 CALL                             R31 2 1
      440 MOVE                             R32 R31
      441 LOADNIL                          R33
      442 LOADNIL                          R34
      443 FORGPREP                         R32
      444 GETUPVAL                         R37 2
      445 GETTABLEKS                       R37 R37 K25 ["createElement"]
      447 GETUPVAL                         R38 18
      448 DUPTABLE                         R39 K69 [{"parentInst", "childInst", "connectionAdorneePart", "standardRadius", "updatePositions", "getParentGlobalCf", "allowHover", "color", "edgeColor", "isOtherMapped", "onJointClicked", "setHoveredPyramidParentName", "DEPRECATED_setHoveredJointName", "compositeHoverEnter", "compositeHoverLeave", "hoveredPyramidParentName", "DEPRECATED_isPlayingAnimation", "isJointHovered"}]
      449 GETTABLEKS                       R40 R36 K56 ["parentInst"]
      451 SETTABLEKS                       R40 R39 K56 ["parentInst"]
      453 GETTABLEKS                       R40 R36 K57 ["childInst"]
      455 SETTABLEKS                       R40 R39 K57 ["childInst"]
      457 GETTABLEKS                       R40 R36 K58 ["connectionAdorneePart"]
      459 SETTABLEKS                       R40 R39 K58 ["connectionAdorneePart"]
      461 SETTABLEKS                       R27 R39 K20 ["standardRadius"]
      463 GETTABLEKS                       R40 R0 K18 ["updatePositions"]
      465 SETTABLEKS                       R40 R39 K18 ["updatePositions"]
      467 NEWCLOSURE                       R40 P10
      468 CAPTURE                          UPVAL U11
      469 CAPTURE                          VAL R36
      470 CAPTURE                          UPVAL U12
      471 CAPTURE                          UPVAL U4
      472 CAPTURE                          UPVAL U5
      473 CAPTURE                          VAL R0
      474 CAPTURE                          REF R17
      475 SETTABLEKS                       R40 R39 K59 ["getParentGlobalCf"]
      477 LOADB                            R40 1
      478 SETTABLEKS                       R40 R39 K60 ["allowHover"]
      480 GETTABLEKS                       R40 R21 K28 ["color"]
      482 SETTABLEKS                       R40 R39 K28 ["color"]
      484 GETTABLEKS                       R40 R21 K47 ["edgeColor"]
      486 SETTABLEKS                       R40 R39 K47 ["edgeColor"]
      488 GETTABLEKS                       R40 R21 K61 ["isOtherMapped"]
      490 SETTABLEKS                       R40 R39 K61 ["isOtherMapped"]
      492 GETTABLEKS                       R40 R0 K62 ["onJointClicked"]
      494 SETTABLEKS                       R40 R39 K62 ["onJointClicked"]
      496 SETTABLEKS                       R7 R39 K63 ["setHoveredPyramidParentName"]
      498 GETUPVAL                         R41 3
      499 CALL                             R41 0 1
      500 JUMPIF                           R41 ; [+2]
      501 MOVE                             R40 R4
      502 JUMP                             ; [+1]
      503 LOADNIL                          R40
      504 SETTABLEKS                       R40 R39 K64 ["DEPRECATED_setHoveredJointName"]
      506 GETUPVAL                         R41 3
      507 CALL                             R41 0 1
      508 JUMPIFNOT                        R41 ; [+2]
      509 MOVE                             R40 R9
      510 JUMP                             ; [+1]
      511 LOADNIL                          R40
      512 SETTABLEKS                       R40 R39 K65 ["compositeHoverEnter"]
      514 GETUPVAL                         R41 3
      515 CALL                             R41 0 1
      516 JUMPIFNOT                        R41 ; [+2]
      517 MOVE                             R40 R10
      518 JUMP                             ; [+1]
      519 LOADNIL                          R40
      520 SETTABLEKS                       R40 R39 K66 ["compositeHoverLeave"]
      522 SETTABLEKS                       R6 R39 K67 ["hoveredPyramidParentName"]
      524 GETTABLEKS                       R40 R0 K42 ["DEPRECATED_isPlayingAnimation"]
      526 SETTABLEKS                       R40 R39 K42 ["DEPRECATED_isPlayingAnimation"]
      528 GETUPVAL                         R41 3
      529 CALL                             R41 0 1
      530 JUMPIFNOT                        R41 ; [+2]
      531 MOVE                             R40 R18
      532 JUMP                             ; [+1]
      533 LOADNIL                          R40
      534 SETTABLEKS                       R40 R39 K68 ["isJointHovered"]
      536 CALL                             R37 2 1
      537 SETTABLE                         R37 R29 R35
      538 FORGLOOP                         R32 2 ; [-95]
      540 LOADNIL                          R32
      541 JUMPIFNOT                        R11 ; [+171]
      542 JUMPIFNOT                        R13 ; [+170]
      543 GETUPVAL                         R33 19
      544 GETTABLEKS                       R33 R33 K70 ["createPortal"]
      546 GETUPVAL                         R34 2
      547 GETTABLEKS                       R34 R34 K25 ["createElement"]
      549 LOADK                            R35 K71 ["ScreenGui"]
      550 DUPTABLE                         R36 K75 [{"IgnoreGuiInset", "ResetOnSpawn", "ZIndexBehavior"}]
      551 LOADB                            R37 1
      552 SETTABLEKS                       R37 R36 K72 ["IgnoreGuiInset"]
      554 LOADB                            R37 0
      555 SETTABLEKS                       R37 R36 K73 ["ResetOnSpawn"]
      557 GETIMPORT                        R37 K78 [Enum.ZIndexBehavior.Sibling]
      559 SETTABLEKS                       R37 R36 K74 ["ZIndexBehavior"]
      561 DUPTABLE                         R37 K80 [{"Positioner"}]
      562 GETUPVAL                         R38 2
      563 GETTABLEKS                       R38 R38 K25 ["createElement"]
      565 LOADK                            R39 K81 ["Frame"]
      566 DUPTABLE                         R40 K85 [{"BackgroundTransparency", "Size", "Position", "ZIndex"}]
      567 LOADN                            R41 1
      568 SETTABLEKS                       R41 R40 K82 ["BackgroundTransparency"]
      570 GETIMPORT                        R41 K87 [UDim2.new]
      572 LOADN                            R42 0
      573 LOADN                            R43 0
      574 LOADN                            R44 0
      575 LOADN                            R45 0
      576 CALL                             R41 4 1
      577 SETTABLEKS                       R41 R40 K83 ["Size"]
      579 GETIMPORT                        R41 K87 [UDim2.new]
      581 LOADN                            R42 0
      582 GETTABLEKS                       R43 R15 K88 ["X"]
      584 LOADN                            R44 0
      585 GETTABLEKS                       R45 R15 K89 ["Y"]
      587 CALL                             R41 4 1
      588 SETTABLEKS                       R41 R40 K84 ["Position"]
      590 LOADN                            R41 200
      591 SETTABLEKS                       R41 R40 K35 ["ZIndex"]
      593 DUPTABLE                         R41 K91 [{"Tooltip"}]
      594 GETUPVAL                         R42 2
      595 GETTABLEKS                       R42 R42 K25 ["createElement"]
      597 LOADK                            R43 K92 ["TextLabel"]
      598 DUPTABLE                         R44 K100 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3", "Font", "TextSize", "AutomaticSize", "BorderSizePixel", "Text", "ZIndex"}]
      599 GETIMPORT                        R45 K101 [Color3.new]
      601 LOADN                            R46 0
      602 LOADN                            R47 0
      603 LOADN                            R48 0
      604 CALL                             R45 3 1
      605 SETTABLEKS                       R45 R44 K93 ["BackgroundColor3"]
      607 LOADK                            R45 K33 [0.25]
      608 SETTABLEKS                       R45 R44 K82 ["BackgroundTransparency"]
      610 GETIMPORT                        R45 K101 [Color3.new]
      612 LOADN                            R46 1
      613 LOADN                            R47 1
      614 LOADN                            R48 1
      615 CALL                             R45 3 1
      616 SETTABLEKS                       R45 R44 K94 ["TextColor3"]
      618 GETIMPORT                        R45 K103 [Enum.Font.SourceSans]
      620 SETTABLEKS                       R45 R44 K95 ["Font"]
      622 LOADN                            R45 14
      623 SETTABLEKS                       R45 R44 K96 ["TextSize"]
      625 GETIMPORT                        R45 K105 [Enum.AutomaticSize.XY]
      627 SETTABLEKS                       R45 R44 K97 ["AutomaticSize"]
      629 LOADN                            R45 0
      630 SETTABLEKS                       R45 R44 K98 ["BorderSizePixel"]
      632 LOADK                            R46 K106 ["%*: %*"]
      633 GETTABLEKS                       R48 R2 K107 ["ClassName"]
      635 GETTABLEKS                       R49 R2 K13 ["Name"]
      637 NAMECALL                         R46 R46 K108 ["format"]
      639 CALL                             R46 3 1
      640 MOVE                             R45 R46
      641 SETTABLEKS                       R45 R44 K99 ["Text"]
      643 LOADN                            R45 201
      644 SETTABLEKS                       R45 R44 K35 ["ZIndex"]
      646 DUPTABLE                         R45 K111 [{"UICorner", "Padding"}]
      647 GETUPVAL                         R46 2
      648 GETTABLEKS                       R46 R46 K25 ["createElement"]
      650 LOADK                            R47 K109 ["UICorner"]
      651 DUPTABLE                         R48 K113 [{"CornerRadius"}]
      652 GETIMPORT                        R49 K115 [UDim.new]
      654 LOADN                            R50 0
      655 LOADN                            R51 6
      656 CALL                             R49 2 1
      657 SETTABLEKS                       R49 R48 K112 ["CornerRadius"]
      659 CALL                             R46 2 1
      660 SETTABLEKS                       R46 R45 K109 ["UICorner"]
      662 GETUPVAL                         R46 2
      663 GETTABLEKS                       R46 R46 K25 ["createElement"]
      665 LOADK                            R47 K116 ["UIPadding"]
      666 DUPTABLE                         R48 K121 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      667 GETIMPORT                        R49 K115 [UDim.new]
      669 LOADN                            R50 0
      670 LOADN                            R51 8
      671 CALL                             R49 2 1
      672 SETTABLEKS                       R49 R48 K117 ["PaddingLeft"]
      674 GETIMPORT                        R49 K115 [UDim.new]
      676 LOADN                            R50 0
      677 LOADN                            R51 8
      678 CALL                             R49 2 1
      679 SETTABLEKS                       R49 R48 K118 ["PaddingRight"]
      681 GETIMPORT                        R49 K115 [UDim.new]
      683 LOADN                            R50 0
      684 LOADN                            R51 4
      685 CALL                             R49 2 1
      686 SETTABLEKS                       R49 R48 K119 ["PaddingTop"]
      688 GETIMPORT                        R49 K115 [UDim.new]
      690 LOADN                            R50 0
      691 LOADN                            R51 4
      692 CALL                             R49 2 1
      693 SETTABLEKS                       R49 R48 K120 ["PaddingBottom"]
      695 CALL                             R46 2 1
      696 SETTABLEKS                       R46 R45 K110 ["Padding"]
      698 CALL                             R42 3 1
      699 SETTABLEKS                       R42 R41 K90 ["Tooltip"]
      701 CALL                             R38 3 1
      702 SETTABLEKS                       R38 R37 K79 ["Positioner"]
      704 CALL                             R34 3 1
      705 GETIMPORT                        R35 K123 [game]
      707 LOADK                            R37 K124 ["CoreGui"]
      708 NAMECALL                         R35 R35 K125 ["GetService"]
      710 CALL                             R35 2 -1
      711 CALL                             R33 -1 1
      712 MOVE                             R32 R33
      713 GETUPVAL                         R33 2
      714 GETTABLEKS                       R33 R33 K25 ["createElement"]
      716 GETUPVAL                         R34 2
      717 GETTABLEKS                       R34 R34 K126 ["Fragment"]
      719 LOADNIL                          R35
      720 DUPTABLE                         R36 K129 [{"World", "TooltipPortal"}]
      721 GETUPVAL                         R37 2
      722 GETTABLEKS                       R37 R37 K25 ["createElement"]
      724 LOADK                            R38 K130 ["Folder"]
      725 LOADNIL                          R39
      726 MOVE                             R40 R29
      727 CALL                             R37 3 1
      728 SETTABLEKS                       R37 R36 K127 ["World"]
      730 SETTABLEKS                       R32 R36 K128 ["TooltipPortal"]
      732 CALL                             R33 3 -1
      733 CLOSEUPVALS                      R17
      734 RETURN                           R33 -1

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
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Hooks"]
       30 GETTABLEKS                       R4 R4 K11 ["useTokens"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Packages"]
       36 GETTABLEKS                       R6 R6 K12 ["AdaptiveAnimationTools"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K13 ["Src"]
       43 GETTABLEKS                       R7 R7 K14 ["Types"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R8 R0 K13 ["Src"]
       50 GETTABLEKS                       R8 R8 K15 ["Components"]
       52 GETTABLEKS                       R8 R8 K10 ["Hooks"]
       54 GETTABLEKS                       R8 R8 K16 ["useJointSignals"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R0 K13 ["Src"]
       61 GETTABLEKS                       R9 R9 K15 ["Components"]
       63 GETTABLEKS                       R9 R9 K17 ["Adornments"]
       65 GETTABLEKS                       R9 R9 K18 ["computeJointVisualState"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K13 ["Src"]
       72 GETTABLEKS                       R10 R10 K15 ["Components"]
       74 GETTABLEKS                       R10 R10 K17 ["Adornments"]
       76 GETTABLEKS                       R10 R10 K19 ["AxisCircleAdornment"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K5 [require]
       81 GETTABLEKS                       R11 R0 K13 ["Src"]
       83 GETTABLEKS                       R11 R11 K15 ["Components"]
       85 GETTABLEKS                       R11 R11 K17 ["Adornments"]
       87 GETTABLEKS                       R11 R11 K20 ["getAdornee"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K5 [require]
       92 GETTABLEKS                       R12 R0 K13 ["Src"]
       94 GETTABLEKS                       R12 R12 K15 ["Components"]
       96 GETTABLEKS                       R12 R12 K17 ["Adornments"]
       98 GETTABLEKS                       R12 R12 K21 ["buildCircle"]
      100 CALL                             R11 1 1
      101 GETIMPORT                        R12 K5 [require]
      103 GETTABLEKS                       R13 R0 K13 ["Src"]
      105 GETTABLEKS                       R13 R13 K22 ["Flags"]
      107 GETTABLEKS                       R13 R13 K23 ["getFFlagAdaptiveAnimatonImprovements"]
      109 CALL                             R12 1 1
      110 GETIMPORT                        R13 K5 [require]
      112 GETTABLEKS                       R14 R0 K13 ["Src"]
      114 GETTABLEKS                       R14 R14 K22 ["Flags"]
      116 GETTABLEKS                       R14 R14 K24 ["getFFlagAdaptiveAnimationBetaImprovements"]
      118 CALL                             R13 1 1
      119 GETIMPORT                        R14 K5 [require]
      121 GETTABLEKS                       R15 R0 K13 ["Src"]
      123 GETTABLEKS                       R15 R15 K22 ["Flags"]
      125 GETTABLEKS                       R15 R15 K25 ["getFFlagAdaptiveAnimationConstraints"]
      127 CALL                             R14 1 1
      128 GETIMPORT                        R15 K5 [require]
      130 GETTABLEKS                       R16 R0 K13 ["Src"]
      132 GETTABLEKS                       R16 R16 K22 ["Flags"]
      134 GETTABLEKS                       R16 R16 K26 ["getFFlagAdaptiveAnimationQoL"]
      136 CALL                             R15 1 1
      137 GETIMPORT                        R16 K5 [require]
      139 GETTABLEKS                       R17 R0 K13 ["Src"]
      141 GETTABLEKS                       R17 R17 K22 ["Flags"]
      143 GETTABLEKS                       R17 R17 K27 ["getFFlagAdaptiveAnimationHandRig"]
      145 CALL                             R16 1 1
      146 GETIMPORT                        R17 K5 [require]
      148 GETTABLEKS                       R18 R0 K13 ["Src"]
      150 GETTABLEKS                       R18 R18 K22 ["Flags"]
      152 GETTABLEKS                       R18 R18 K28 ["getFFlagAdaptiveAnimationHandRigQoL"]
      154 CALL                             R17 1 1
      155 GETIMPORT                        R18 K5 [require]
      157 GETTABLEKS                       R19 R0 K13 ["Src"]
      159 GETTABLEKS                       R19 R19 K22 ["Flags"]
      161 GETTABLEKS                       R19 R19 K29 ["getFFlagAdaptiveAnimationWireFix"]
      163 CALL                             R18 1 1
      164 GETIMPORT                        R19 K5 [require]
      166 GETTABLEKS                       R20 R0 K13 ["Src"]
      168 GETTABLEKS                       R20 R20 K30 ["Resources"]
      170 GETTABLEKS                       R20 R20 K31 ["Constants"]
      172 CALL                             R19 1 1
      173 GETIMPORT                        R20 K33 [game]
      175 LOADK                            R22 K34 ["RunService"]
      176 NAMECALL                         R20 R20 K35 ["GetService"]
      178 CALL                             R20 2 1
      179 DUPCLOSURE                       R21 K36 [PROTO_0]
      180 DUPCLOSURE                       R22 K37 [PROTO_1]
      181 DUPCLOSURE                       R23 K38 [PROTO_2]
      182 CAPTURE                          VAL R22
      183 CAPTURE                          VAL R5
      184 DUPCLOSURE                       R24 K39 [PROTO_3]
      185 DUPCLOSURE                       R25 K40 [PROTO_4]
      186 DUPCLOSURE                       R26 K41 [PROTO_18]
      187 CAPTURE                          VAL R1
      188 CAPTURE                          VAL R13
      189 CAPTURE                          VAL R22
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R14
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R20
      195 CAPTURE                          VAL R19
      196 CAPTURE                          VAL R15
      197 DUPCLOSURE                       R27 K42 [PROTO_34]
      198 CAPTURE                          VAL R17
      199 CAPTURE                          VAL R4
      200 CAPTURE                          VAL R1
      201 CAPTURE                          VAL R15
      202 CAPTURE                          VAL R5
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R7
      205 CAPTURE                          VAL R8
      206 CAPTURE                          VAL R14
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R21
      209 CAPTURE                          VAL R13
      210 CAPTURE                          VAL R22
      211 CAPTURE                          VAL R16
      212 CAPTURE                          VAL R19
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R11
      215 CAPTURE                          VAL R24
      216 CAPTURE                          VAL R26
      217 CAPTURE                          VAL R2
      218 DUPCLOSURE                       R28 K43 [PROTO_35]
      219 DUPTABLE                         R29 K47 [{"childJoints", "mappedLookup", "otherMappedLookup"}]
      220 LOADB                            R30 1
      221 SETTABLEKS                       R30 R29 K44 ["childJoints"]
      223 LOADB                            R30 1
      224 SETTABLEKS                       R30 R29 K45 ["mappedLookup"]
      226 LOADB                            R30 1
      227 SETTABLEKS                       R30 R29 K46 ["otherMappedLookup"]
      229 DUPTABLE                         R30 K50 [{"globalHoveredJointName", "mannequinHoveredJointName"}]
      230 LOADB                            R31 1
      231 SETTABLEKS                       R31 R30 K48 ["globalHoveredJointName"]
      233 LOADB                            R31 1
      234 SETTABLEKS                       R31 R30 K49 ["mannequinHoveredJointName"]
      236 DUPCLOSURE                       R31 K51 [PROTO_36]
      237 CAPTURE                          VAL R29
      238 CAPTURE                          VAL R28
      239 CAPTURE                          VAL R30
      240 GETTABLEKS                       R32 R1 K52 ["memo"]
      242 MOVE                             R33 R27
      243 MOVE                             R34 R31
      244 CALL                             R32 2 1
      245 MOVE                             R34 R16
      246 CALL                             R34 0 1
      247 JUMPIFNOT                        R34 ; [+2]
      248 MOVE                             R33 R32
      249 JUMP                             ; [+1]
      250 MOVE                             R33 R27
      251 DUPTABLE                         R34 K55 [{"Component", "_test"}]
      252 SETTABLEKS                       R33 R34 K53 ["Component"]
      254 DUPTABLE                         R35 K63 [{"DEPRECATED_getAdornee", "DEPRECATED_buildCircle", "shallowTableEqual", "ConnectionGeom", "memoComparator", "JointAdornmentComposite", "isTriangleFrontFacing"}]
      255 SETTABLEKS                       R21 R35 K56 ["DEPRECATED_getAdornee"]
      257 SETTABLEKS                       R24 R35 K57 ["DEPRECATED_buildCircle"]
      259 SETTABLEKS                       R28 R35 K58 ["shallowTableEqual"]
      261 SETTABLEKS                       R26 R35 K59 ["ConnectionGeom"]
      263 SETTABLEKS                       R31 R35 K60 ["memoComparator"]
      265 SETTABLEKS                       R27 R35 K61 ["JointAdornmentComposite"]
      267 SETTABLEKS                       R25 R35 K62 ["isTriangleFrontFacing"]
      269 SETTABLEKS                       R35 R34 K54 ["_test"]
      271 RETURN                           R34 1
