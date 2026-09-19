PROTO_0:
        0 LOADN                            R5 1
        1 LENGTH                           R3 R1
        2 LOADN                            R4 1
        3 FORNPREP                         R3
        4 LOADNIL                          R6
        5 LOADNIL                          R7
        6 JUMPIFNOTEQKN                    R5 K0 [1] ; [+5]
        8 LENGTH                           R8 R1
        9 GETTABLE                         R6 R1 R8
       10 GETTABLEN                        R7 R1 1
       11 JUMP                             ; [+3]
       12 SUBK                             R8 R5 K0 [1]
       13 GETTABLE                         R6 R1 R8
       14 GETTABLE                         R7 R1 R5
       15 SUB                              R8 R7 R6
       16 SUB                              R9 R0 R6
       17 MOVE                             R12 R9
       18 NAMECALL                         R10 R8 K1 ["Cross"]
       20 CALL                             R10 2 1
       21 MOVE                             R12 R2
       22 NAMECALL                         R10 R10 K2 ["Dot"]
       24 CALL                             R10 2 1
       25 LOADK                            R11 K3 [0.01]
       26 JUMPIFNOTLT                      R10 R11 ; [+3]
       28 LOADB                            R10 0
       29 RETURN                           R10 1
       30 FORNLOOP                         R3
       31 LOADB                            R3 1
       32 RETURN                           R3 1

PROTO_1:
        0 GETIMPORT                        R3 K1 [ipairs]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 3
        4 FORGPREP_INEXT                   R3
        5 GETUPVAL                         R8 0
        6 MOVE                             R9 R7
        7 MOVE                             R10 R1
        8 MOVE                             R11 R2
        9 CALL                             R8 3 1
       10 JUMPIFNOT                        R8 ; [+2]
       11 LOADB                            R8 1
       12 RETURN                           R8 1
       13 FORGLOOP                         R3 2 [inext] ; [-9]
       15 LOADB                            R3 0
       16 RETURN                           R3 1

PROTO_2:
        0 SUB                              R5 R1 R0
        1 SUB                              R6 R3 R2
        2 GETTABLEKS                       R7 R5 K0 ["Magnitude"]
        4 GETTABLEKS                       R8 R6 K0 ["Magnitude"]
        6 MOVE                             R13 R6
        7 NAMECALL                         R11 R5 K1 ["Dot"]
        9 CALL                             R11 2 1
       10 DIV                              R10 R11 R7
       11 DIV                              R9 R10 R8
       12 DIVRK                            R10 K2 [0.01] R7
       13 DIVRK                            R11 K2 [0.01] R8
       14 FASTCALL1                        MATH_ABS R9 ; [+3]
       15 MOVE                             R15 R9
       16 GETIMPORT                        R14 K6 [math.abs]
       18 CALL                             R14 1 1
       19 SUBK                             R13 R14 K3 [1]
       20 FASTCALL1                        MATH_ABS R13 ; [+2]
       21 GETIMPORT                        R12 K6 [math.abs]
       23 CALL                             R12 1 1
       24 LOADK                            R13 K7 [0.0001]
       25 JUMPIFNOTLT                      R12 R13 ; [+53]
       27 LOADN                            R12 0
       28 JUMPIFNOTLT                      R12 R9 ; [+3]
       30 LOADB                            R12 0
       31 RETURN                           R12 1
       32 SUB                              R14 R0 R2
       33 MOVE                             R16 R6
       34 NAMECALL                         R14 R14 K1 ["Dot"]
       36 CALL                             R14 2 1
       37 DIV                              R13 R14 R8
       38 DIV                              R12 R13 R8
       39 MUL                              R15 R12 R6
       40 ADD                              R14 R2 R15
       41 SUB                              R13 R0 R14
       42 GETTABLEKS                       R13 R13 K0 ["Magnitude"]
       44 LOADK                            R14 K8 [0.001]
       45 JUMPIFNOTLT                      R14 R13 ; [+3]
       47 LOADB                            R14 0
       48 RETURN                           R14 1
       49 SUB                              R16 R1 R2
       50 MOVE                             R18 R6
       51 NAMECALL                         R16 R16 K1 ["Dot"]
       53 CALL                             R16 2 1
       54 DIV                              R15 R16 R8
       55 DIV                              R14 R15 R8
       56 LOADN                            R18 0
       57 LOADN                            R19 1
       58 FASTCALL3                        MATH_CLAMP R12 R18 R19
       60 MOVE                             R17 R12
       61 GETIMPORT                        R16 K10 [math.clamp]
       63 CALL                             R16 3 1
       64 LOADN                            R19 0
       65 LOADN                            R20 1
       66 FASTCALL3                        MATH_CLAMP R14 R19 R20
       68 MOVE                             R18 R14
       69 GETIMPORT                        R17 K10 [math.clamp]
       71 CALL                             R17 3 1
       72 SUB                              R15 R16 R17
       73 LOADK                            R17 K8 [0.001]
       74 JUMPIFLT                         R17 R15 ; [+2]
       76 LOADB                            R16 0 +1
       77 LOADB                            R16 1
       78 RETURN                           R16 1
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R12 R12 K11 ["intersectRayRay"]
       82 MOVE                             R13 R0
       83 MOVE                             R14 R5
       84 MOVE                             R15 R2
       85 MOVE                             R16 R6
       86 CALL                             R12 4 2
       87 JUMPIFNOT                        R12 ; [+5]
       88 JUMPIFLT                         R13 R10 ; [+4]
       90 SUBRK                            R14 K3 [1] R10
       91 JUMPIFNOTLT                      R14 R13 ; [+3]
       93 LOADB                            R14 0
       94 RETURN                           R14 1
       95 GETUPVAL                         R14 0
       96 GETTABLEKS                       R14 R14 K11 ["intersectRayRay"]
       98 MOVE                             R15 R2
       99 MOVE                             R16 R6
      100 MOVE                             R17 R0
      101 MOVE                             R18 R5
      102 CALL                             R14 4 2
      103 FASTCALL2K                       ASSERT R14 K12 ; [+5]
      105 MOVE                             R17 R14
      106 LOADK                            R18 K12 ["Must be true if intersects was true"]
      107 GETIMPORT                        R16 K14 [assert]
      109 CALL                             R16 2 0
      110 LOADB                            R16 0
      111 JUMPIFNOTLE                      R11 R15 ; [+6]
      113 SUBRK                            R17 K3 [1] R11
      114 JUMPIFLE                         R15 R17 ; [+2]
      116 LOADB                            R16 0 +1
      117 LOADB                            R16 1
      118 RETURN                           R16 1

PROTO_3:
        0 LOADN                            R5 1
        1 LENGTH                           R3 R0
        2 LOADN                            R4 1
        3 FORNPREP                         R3
        4 LOADNIL                          R6
        5 LOADNIL                          R7
        6 JUMPIFNOTEQKN                    R5 K0 [1] ; [+5]
        8 LENGTH                           R8 R0
        9 GETTABLE                         R6 R0 R8
       10 GETTABLEN                        R7 R0 1
       11 JUMP                             ; [+3]
       12 SUBK                             R8 R5 K0 [1]
       13 GETTABLE                         R6 R0 R8
       14 GETTABLE                         R7 R0 R5
       15 LOADN                            R10 1
       16 LENGTH                           R8 R1
       17 LOADN                            R9 1
       18 FORNPREP                         R8
       19 LOADNIL                          R11
       20 LOADNIL                          R12
       21 JUMPIFNOTEQKN                    R10 K0 [1] ; [+5]
       23 LENGTH                           R13 R1
       24 GETTABLE                         R11 R1 R13
       25 GETTABLEN                        R12 R1 1
       26 JUMP                             ; [+3]
       27 SUBK                             R13 R10 K0 [1]
       28 GETTABLE                         R11 R1 R13
       29 GETTABLE                         R12 R1 R10
       30 GETUPVAL                         R13 0
       31 MOVE                             R14 R6
       32 MOVE                             R15 R7
       33 MOVE                             R16 R11
       34 MOVE                             R17 R12
       35 MOVE                             R18 R2
       36 CALL                             R13 5 1
       37 JUMPIFNOT                        R13 ; [+2]
       38 LOADB                            R13 1
       39 RETURN                           R13 1
       40 FORNLOOP                         R8
       41 FORNLOOP                         R3
       42 LOADB                            R3 0
       43 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R6 R1 K0 ["vertices"]
        3 GETTABLEKS                       R7 R3 K0 ["vertices"]
        5 MOVE                             R8 R4
        6 CALL                             R5 3 1
        7 JUMPIF                           R5 ; [+15]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R6 R3 K0 ["vertices"]
       11 GETTABLEKS                       R7 R1 K0 ["vertices"]
       13 MINUS                            R8 R4
       14 CALL                             R5 3 1
       15 JUMPIF                           R5 ; [+7]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R6 R1 K0 ["vertices"]
       19 GETTABLEKS                       R7 R3 K0 ["vertices"]
       21 MOVE                             R8 R4
       22 CALL                             R5 3 1
       23 RETURN                           R5 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["center"]
        2 JUMPIF                           R1 ; [+19]
        3 FASTCALL                         VECTOR ; [+2]
        4 GETIMPORT                        R1 K3 [Vector3.new]
        6 CALL                             R1 0 1
        7 GETIMPORT                        R2 K5 [ipairs]
        9 GETTABLEKS                       R3 R0 K6 ["vertices"]
       11 CALL                             R2 1 3
       12 FORGPREP_INEXT                   R2
       13 ADD                              R1 R1 R6
       14 FORGLOOP                         R2 2 [inext] ; [-2]
       16 GETTABLEKS                       R4 R0 K6 ["vertices"]
       18 LENGTH                           R3 R4
       19 DIV                              R2 R1 R3
       20 SETTABLEKS                       R2 R0 K0 ["center"]
       22 GETTABLEKS                       R1 R0 K0 ["center"]
       24 RETURN                           R1 1

PROTO_6:
        0 GETIMPORT                        R4 K2 [CFrame.fromMatrix]
        2 GETTABLEKS                       R6 R1 K3 ["center"]
        4 JUMPIF                           R6 ; [+19]
        5 FASTCALL                         VECTOR ; [+2]
        6 GETIMPORT                        R6 K6 [Vector3.new]
        8 CALL                             R6 0 1
        9 GETIMPORT                        R7 K8 [ipairs]
       11 GETTABLEKS                       R8 R1 K9 ["vertices"]
       13 CALL                             R7 1 3
       14 FORGPREP_INEXT                   R7
       15 ADD                              R6 R6 R11
       16 FORGLOOP                         R7 2 [inext] ; [-2]
       18 GETTABLEKS                       R9 R1 K9 ["vertices"]
       20 LENGTH                           R8 R9
       21 DIV                              R7 R6 R8
       22 SETTABLEKS                       R7 R1 K3 ["center"]
       24 GETTABLEKS                       R5 R1 K3 ["center"]
       26 GETTABLEKS                       R6 R1 K10 ["direction"]
       28 GETTABLEKS                       R7 R1 K11 ["normal"]
       30 GETTABLEKS                       R9 R1 K10 ["direction"]
       32 NAMECALL                         R7 R7 K12 ["Cross"]
       34 CALL                             R7 2 -1
       35 CALL                             R4 -1 1
       36 DUPTABLE                         R5 K18 [{"ClassName", "Part0", "C0", "Part1", "C1"}]
       37 SETTABLEKS                       R3 R5 K13 ["ClassName"]
       39 SETTABLEKS                       R0 R5 K14 ["Part0"]
       41 GETTABLEKS                       R7 R0 K0 ["CFrame"]
       43 NAMECALL                         R7 R7 K19 ["Inverse"]
       45 CALL                             R7 1 1
       46 MUL                              R6 R7 R4
       47 SETTABLEKS                       R6 R5 K15 ["C0"]
       49 SETTABLEKS                       R2 R5 K16 ["Part1"]
       51 GETTABLEKS                       R7 R2 K0 ["CFrame"]
       53 NAMECALL                         R7 R7 K19 ["Inverse"]
       55 CALL                             R7 1 1
       56 MUL                              R6 R7 R4
       57 SETTABLEKS                       R6 R5 K17 ["C1"]
       59 RETURN                           R5 1

PROTO_7:
        0 DUPTABLE                         R0 K2 [{[1] = "None"}]
        1 RETURN                           R0 1

PROTO_8:
        0 LOADB                            R6 1
        1 JUMPIFEQKS                       R2 K0 ["Mesh"] ; [+15]
        3 LOADB                            R6 0
        4 JUMPIFNOTEQKS                    R2 K1 ["Cylinder"] ; [+12]
        6 LOADB                            R6 1
        7 GETTABLEKS                       R7 R4 K2 ["surface"]
        9 JUMPIFEQKS                       R7 K3 ["RightSurface"] ; [+7]
       11 GETTABLEKS                       R7 R4 K2 ["surface"]
       13 JUMPIFEQKS                       R7 K4 ["LeftSurface"] ; [+2]
       15 LOADB                            R6 0 +1
       16 LOADB                            R6 1
       17 LOADB                            R7 1
       18 JUMPIFEQKS                       R3 K0 ["Mesh"] ; [+15]
       20 LOADB                            R7 0
       21 JUMPIFNOTEQKS                    R3 K1 ["Cylinder"] ; [+12]
       23 LOADB                            R7 1
       24 GETTABLEKS                       R8 R5 K2 ["surface"]
       26 JUMPIFEQKS                       R8 K3 ["RightSurface"] ; [+7]
       28 GETTABLEKS                       R8 R5 K2 ["surface"]
       30 JUMPIFEQKS                       R8 K4 ["LeftSurface"] ; [+2]
       32 LOADB                            R7 0 +1
       33 LOADB                            R7 1
       34 JUMPIFNOT                        R6 ; [+8]
       35 JUMPIFNOT                        R7 ; [+7]
       36 GETUPVAL                         R8 0
       37 MOVE                             R9 R0
       38 MOVE                             R10 R4
       39 MOVE                             R11 R1
       40 LOADK                            R12 K5 ["Weld"]
       41 CALL                             R8 4 1
       42 RETURN                           R8 1
       43 LOADNIL                          R8
       44 RETURN                           R8 1

PROTO_9:
        0 MOVE                             R6 R4
        1 MOVE                             R7 R1
        2 CALL                             R6 1 1
        3 MOVE                             R7 R4
        4 MOVE                             R8 R2
        5 CALL                             R7 1 1
        6 NEWTABLE                         R8 0 0
        8 GETIMPORT                        R9 K1 [ipairs]
       10 GETTABLEKS                       R10 R6 K2 ["faces"]
       12 CALL                             R9 1 3
       13 FORGPREP_INEXT                   R9
       14 GETIMPORT                        R14 K1 [ipairs]
       16 GETTABLEKS                       R15 R7 K2 ["faces"]
       18 CALL                             R14 1 3
       19 FORGPREP_INEXT                   R14
       20 GETTABLEKS                       R21 R13 K3 ["normal"]
       22 NAMECALL                         R19 R0 K4 ["VectorToWorldSpace"]
       24 CALL                             R19 2 1
       25 GETTABLEKS                       R22 R13 K5 ["direction"]
       27 NAMECALL                         R20 R0 K4 ["VectorToWorldSpace"]
       29 CALL                             R20 2 1
       30 GETTABLEKS                       R23 R18 K3 ["normal"]
       32 NAMECALL                         R21 R19 K6 ["Dot"]
       34 CALL                             R21 2 1
       35 LOADK                            R22 K7 [-0.999]
       36 JUMPIFNOTLT                      R21 R22 ; [+119]
       38 GETTABLEKS                       R24 R13 K8 ["point"]
       40 NAMECALL                         R22 R0 K9 ["PointToWorldSpace"]
       42 CALL                             R22 2 1
       43 GETTABLEKS                       R24 R18 K8 ["point"]
       45 SUB                              R23 R22 R24
       46 GETTABLEKS                       R25 R18 K3 ["normal"]
       48 NAMECALL                         R23 R23 K6 ["Dot"]
       50 CALL                             R23 2 1
       51 FASTCALL1                        MATH_ABS R23 ; [+3]
       52 MOVE                             R25 R23
       53 GETIMPORT                        R24 K12 [math.abs]
       55 CALL                             R24 1 1
       56 LOADK                            R25 K13 [0.05]
       57 JUMPIFNOTLT                      R24 R25 ; [+98]
       59 GETTABLE                         R24 R8 R13
       60 JUMPIF                           R24 ; [+34]
       61 NEWTABLE                         R25 0 0
       63 GETIMPORT                        R26 K1 [ipairs]
       65 GETTABLEKS                       R27 R13 K14 ["vertices"]
       67 CALL                             R26 1 3
       68 FORGPREP_INEXT                   R26
       69 MUL                              R33 R0 R30
       70 FASTCALL2                        TABLE_INSERT R25 R33 ; [+4]
       72 MOVE                             R32 R25
       73 GETIMPORT                        R31 K17 [table.insert]
       75 CALL                             R31 2 0
       76 FORGLOOP                         R26 2 [inext] ; [-8]
       78 DUPTABLE                         R26 K20 [{"id", "vertices", "normal", "direction", "surface"}]
       79 GETTABLEKS                       R27 R13 K18 ["id"]
       81 SETTABLEKS                       R27 R26 K18 ["id"]
       83 SETTABLEKS                       R25 R26 K14 ["vertices"]
       85 SETTABLEKS                       R19 R26 K3 ["normal"]
       87 SETTABLEKS                       R20 R26 K5 ["direction"]
       89 GETTABLEKS                       R27 R13 K19 ["surface"]
       91 SETTABLEKS                       R27 R26 K19 ["surface"]
       93 MOVE                             R24 R26
       94 SETTABLE                         R24 R8 R13
       95 MOVE                             R26 R24
       96 GETTABLEKS                       R27 R18 K3 ["normal"]
       98 GETUPVAL                         R28 0
       99 GETTABLEKS                       R29 R26 K14 ["vertices"]
      101 GETTABLEKS                       R30 R18 K14 ["vertices"]
      103 MOVE                             R31 R27
      104 CALL                             R28 3 1
      105 MOVE                             R25 R28
      106 JUMPIF                           R25 ; [+17]
      107 GETUPVAL                         R28 0
      108 GETTABLEKS                       R29 R18 K14 ["vertices"]
      110 GETTABLEKS                       R30 R26 K14 ["vertices"]
      112 MINUS                            R31 R27
      113 CALL                             R28 3 1
      114 MOVE                             R25 R28
      115 JUMPIF                           R25 ; [+8]
      116 GETUPVAL                         R28 1
      117 GETTABLEKS                       R29 R26 K14 ["vertices"]
      119 GETTABLEKS                       R30 R18 K14 ["vertices"]
      121 MOVE                             R31 R27
      122 CALL                             R28 3 1
      123 MOVE                             R25 R28
      124 JUMPIFNOT                        R25 ; [+31]
      125 GETUPVAL                         R26 2
      126 MOVE                             R27 R1
      127 MOVE                             R28 R2
      128 GETTABLEKS                       R29 R6 K21 ["shape"]
      130 GETTABLEKS                       R30 R7 K21 ["shape"]
      132 MOVE                             R31 R24
      133 MOVE                             R32 R18
      134 CALL                             R26 6 1
      135 JUMPIFNOT                        R26 ; [+15]
      136 MOVE                             R27 R5
      137 GETTABLEKS                       R28 R1 K22 ["Parent"]
      139 CALL                             R27 1 1
      140 JUMPIF                           R27 ; [+10]
      141 MOVE                             R27 R5
      142 GETTABLEKS                       R28 R2 K22 ["Parent"]
      144 CALL                             R27 1 1
      145 JUMPIF                           R27 ; [+5]
      146 SETTABLE                         R26 R3 R24
      147 SETTABLE                         R26 R3 R18
      148 LOADB                            R27 1
      149 MOVE                             R28 R26
      150 RETURN                           R27 2
      151 DUPTABLE                         R26 K25 [{["ClassName"] = "None"}]
      152 SETTABLE                         R26 R3 R24
      153 SETTABLE                         R26 R3 R18
      154 LOADB                            R27 0
      155 RETURN                           R27 1
      156 FORGLOOP                         R14 2 [inext] ; [-137]
      158 FORGLOOP                         R9 2 [inext] ; [-145]
      160 LOADB                            R9 0
      161 RETURN                           R9 1

PROTO_10:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 JUMPIF                           R1 ; [+14]
        6 LOADB                            R2 1
        7 LOADK                            R5 K0 ["Humanoid"]
        8 NAMECALL                         R3 R0 K1 ["FindFirstChildWhichIsA"]
       10 CALL                             R3 2 1
       11 JUMPIFNOTEQKNIL                  R3 ; [+5]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R3 R0 K2 ["Parent"]
       16 CALL                             R2 1 1
       17 MOVE                             R1 R2
       18 GETUPVAL                         R2 0
       19 SETTABLE                         R1 R2 R0
       20 RETURN                           R1 1

PROTO_11:
        0 NEWTABLE                         R7 0 0
        2 GETUPVAL                         R8 0
        3 FASTCALL2                        SETMETATABLE R7 R8 ; [+3]
        5 GETIMPORT                        R6 K1 [setmetatable]
        7 CALL                             R6 2 1
        8 NEWTABLE                         R7 0 0
       10 NEWCLOSURE                       R8 P0
       11 CAPTURE                          VAL R7
       12 CAPTURE                          VAL R8
       13 GETUPVAL                         R9 1
       14 GETTABLEKS                       R9 R9 K2 ["Terrain"]
       16 NEWTABLE                         R10 0 0
       18 NEWTABLE                         R11 0 0
       20 GETIMPORT                        R12 K4 [ipairs]
       22 MOVE                             R13 R0
       23 CALL                             R12 1 3
       24 FORGPREP_INEXT                   R12
       25 GETTABLEKS                       R18 R16 K6 ["Size"]
       27 GETTABLEKS                       R18 R18 K7 ["Magnitude"]
       29 DIVK                             R17 R18 K5 [2]
       30 ADDK                             R19 R17 K8 [0.1]
       31 ADDK                             R20 R17 K8 [0.1]
       32 ADDK                             R21 R17 K8 [0.1]
       33 FASTCALL                         VECTOR ; [+2]
       34 GETIMPORT                        R18 K11 [Vector3.new]
       36 CALL                             R18 3 1
       37 GETUPVAL                         R19 1
       38 GETIMPORT                        R21 K13 [Region3.new]
       40 GETTABLEKS                       R23 R16 K14 ["Position"]
       42 SUB                              R22 R23 R18
       43 GETTABLEKS                       R24 R16 K14 ["Position"]
       45 ADD                              R23 R24 R18
       46 CALL                             R21 2 1
       47 NEWTABLE                         R22 0 0
       49 LOADN                            R23 10000
       50 NAMECALL                         R19 R19 K15 ["FindPartsInRegion3WithIgnoreList"]
       52 CALL                             R19 4 1
       53 JUMPIFEQ                         R16 R9 ; [+36]
       55 GETIMPORT                        R20 K4 [ipairs]
       57 NAMECALL                         R21 R16 K16 ["GetTouchingParts"]
       59 CALL                             R21 1 -1
       60 CALL                             R20 -1 3
       61 FORGPREP_INEXT                   R20
       62 JUMPIFNOTEQ                      R24 R9 ; [+25]
       64 GETTABLE                         R26 R4 R16
       65 GETTABLE                         R25 R26 R9
       66 JUMPIF                           R25 ; [+23]
       67 DUPTABLE                         R27 K23 [{["ClassName"] = "Weld", ["C0"], ["C1"], ["Part0"], ["Part1"]}]
       68 GETIMPORT                        R28 K25 [CFrame.new]
       70 CALL                             R28 0 1
       71 SETTABLEKS                       R28 R27 K19 ["C0"]
       73 GETTABLEKS                       R28 R16 K24 ["CFrame"]
       75 SETTABLEKS                       R28 R27 K20 ["C1"]
       77 SETTABLEKS                       R16 R27 K21 ["Part0"]
       79 SETTABLEKS                       R9 R27 K22 ["Part1"]
       81 FASTCALL2                        TABLE_INSERT R11 R27 ; [+4]
       83 MOVE                             R26 R11
       84 GETIMPORT                        R25 K28 [table.insert]
       86 CALL                             R25 2 0
       87 JUMP                             ; [+2]
       88 FORGLOOP                         R20 2 [inext] ; [-27]
       90 GETIMPORT                        R20 K4 [ipairs]
       92 MOVE                             R21 R19
       93 CALL                             R20 1 3
       94 FORGPREP_INEXT                   R20
       95 GETTABLE                         R25 R1 R24
       96 JUMPIF                           R25 ; [+41]
       97 GETTABLEKS                       R26 R24 K29 ["AssemblyRootPart"]
       99 GETTABLE                         R25 R2 R26
      100 JUMPIF                           R25 ; [+37]
      101 JUMPIFEQ                         R24 R9 ; [+36]
      103 GETTABLEKS                       R26 R24 K6 ["Size"]
      105 GETTABLEKS                       R26 R26 K7 ["Magnitude"]
      107 DIVK                             R25 R26 K5 [2]
      108 GETTABLEKS                       R27 R24 K14 ["Position"]
      110 GETTABLEKS                       R28 R16 K14 ["Position"]
      112 SUB                              R26 R27 R28
      113 GETTABLEKS                       R26 R26 K7 ["Magnitude"]
      115 ADD                              R28 R17 R25
      116 ADDK                             R27 R28 K30 [0.05]
      117 JUMPIFNOTLE                      R26 R27 ; [+20]
      119 GETTABLE                         R27 R4 R16
      120 GETTABLE                         R26 R27 R24
      121 JUMPIF                           R26 ; [+16]
      122 GETUPVAL                         R26 2
      123 MOVE                             R27 R3
      124 MOVE                             R28 R16
      125 MOVE                             R29 R24
      126 MOVE                             R30 R10
      127 MOVE                             R31 R5
      128 MOVE                             R32 R8
      129 CALL                             R26 6 2
      130 JUMPIFNOT                        R26 ; [+7]
      131 FASTCALL2                        TABLE_INSERT R11 R27 ; [+5]
      133 MOVE                             R29 R11
      134 MOVE                             R30 R27
      135 GETIMPORT                        R28 K28 [table.insert]
      137 CALL                             R28 2 0
      138 FORGLOOP                         R20 2 [inext] ; [-44]
      140 FORGLOOP                         R12 2 [inext] ; [-116]
      142 SETTABLEKS                       R11 R6 K31 ["_jointPairs"]
      144 SETTABLEKS                       R10 R6 K32 ["_facesToHighlightSet"]
      146 RETURN                           R6 1

PROTO_12:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 GETTABLEKS                       R4 R0 K2 ["_facesToHighlightSet"]
        6 CALL                             R3 1 3
        7 FORGPREP_NEXT                    R3
        8 NEWTABLE                         R8 0 0
       10 LOADN                            R11 1
       11 GETTABLEKS                       R12 R6 K3 ["vertices"]
       13 LENGTH                           R9 R12
       14 LOADN                            R10 1
       15 FORNPREP                         R9
       16 LOADNIL                          R12
       17 LOADNIL                          R13
       18 JUMPIFNOTEQKN                    R11 K4 [1] ; [+11]
       20 GETTABLEKS                       R14 R6 K3 ["vertices"]
       22 GETTABLEKS                       R16 R6 K3 ["vertices"]
       24 LENGTH                           R15 R16
       25 GETTABLE                         R12 R14 R15
       26 GETTABLEKS                       R14 R6 K3 ["vertices"]
       28 GETTABLEN                        R13 R14 1
       29 JUMP                             ; [+7]
       30 GETTABLEKS                       R14 R6 K3 ["vertices"]
       32 SUBK                             R15 R11 K4 [1]
       33 GETTABLE                         R12 R14 R15
       34 GETTABLEKS                       R14 R6 K3 ["vertices"]
       36 GETTABLE                         R13 R14 R11
       37 SUB                              R14 R12 R13
       38 GETTABLEKS                       R14 R14 K5 ["Magnitude"]
       40 GETUPVAL                         R15 0
       41 GETTABLEKS                       R15 R15 K6 ["createElement"]
       43 LOADK                            R16 K7 ["CylinderHandleAdornment"]
       44 DUPTABLE                         R17 K13 [{"CFrame", "Color3", "Radius", "Height", "Adornee"}]
       45 GETIMPORT                        R20 K15 [CFrame.new]
       47 MOVE                             R21 R12
       48 MOVE                             R22 R13
       49 CALL                             R20 2 1
       50 GETIMPORT                        R21 K15 [CFrame.new]
       52 LOADN                            R22 0
       53 LOADN                            R23 0
       54 MINUS                            R25 R14
       55 DIVK                             R24 R25 K16 [2]
       56 CALL                             R21 3 1
       57 MUL                              R19 R20 R21
       58 GETIMPORT                        R20 K18 [CFrame.Angles]
       60 LOADN                            R21 0
       61 LOADN                            R22 0
       62 LOADK                            R23 K19 [1.5707963267949]
       63 CALL                             R20 3 1
       64 MUL                              R18 R19 R20
       65 SETTABLEKS                       R18 R17 K8 ["CFrame"]
       67 GETUPVAL                         R19 1
       68 GETTABLEKS                       R20 R7 K20 ["ClassName"]
       70 GETTABLE                         R18 R19 R20
       71 SETTABLEKS                       R18 R17 K9 ["Color3"]
       73 MULK                             R19 R1 K21 [0.05]
       74 ADDK                             R18 R19 K21 [0.05]
       75 SETTABLEKS                       R18 R17 K10 ["Radius"]
       77 SETTABLEKS                       R14 R17 K11 ["Height"]
       79 GETUPVAL                         R18 2
       80 GETTABLEKS                       R18 R18 K22 ["Terrain"]
       82 SETTABLEKS                       R18 R17 K12 ["Adornee"]
       84 CALL                             R15 2 1
       85 SETTABLE                         R15 R8 R11
       86 FORNLOOP                         R9
       87 FASTCALL1                        TOSTRING R6 ; [+3]
       88 MOVE                             R10 R6
       89 GETIMPORT                        R9 K24 [tostring]
       91 CALL                             R9 1 1
       92 GETUPVAL                         R10 0
       93 GETTABLEKS                       R10 R10 K6 ["createElement"]
       95 LOADK                            R11 K25 ["Folder"]
       96 NEWTABLE                         R12 0 0
       98 MOVE                             R13 R8
       99 CALL                             R10 3 1
      100 SETTABLE                         R10 R2 R9
      101 FORGLOOP                         R3 2 ; [-94]
      103 GETUPVAL                         R3 0
      104 GETTABLEKS                       R3 R3 K26 ["createFragment"]
      106 MOVE                             R4 R2
      107 CALL                             R3 1 -1
      108 RETURN                           R3 -1

PROTO_13:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["_jointPairs"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 GETIMPORT                        R6 K5 [Instance.new]
        8 GETTABLEKS                       R7 R5 K6 ["ClassName"]
       10 CALL                             R6 1 1
       11 GETTABLEKS                       R7 R5 K7 ["Part0"]
       13 SETTABLEKS                       R7 R6 K7 ["Part0"]
       15 GETTABLEKS                       R7 R5 K8 ["C0"]
       17 SETTABLEKS                       R7 R6 K8 ["C0"]
       19 GETTABLEKS                       R7 R5 K9 ["Part1"]
       21 SETTABLEKS                       R7 R6 K9 ["Part1"]
       23 GETTABLEKS                       R7 R5 K10 ["C1"]
       25 SETTABLEKS                       R7 R6 K10 ["C1"]
       27 GETTABLEKS                       R7 R5 K7 ["Part0"]
       29 SETTABLEKS                       R7 R6 K11 ["Parent"]
       31 FORGLOOP                         R1 2 [inext] ; [-26]
       33 RETURN                           R0 0

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
       38 NEWTABLE                         R6 4 0
       40 SETTABLEKS                       R6 R6 K14 ["__index"]
       42 DUPTABLE                         R7 K20 [{"Rotate", "RotateV", "RotateP", "Weld", "None"}]
       43 GETTABLEKS                       R8 R4 K21 ["RotatingJoint"]
       45 SETTABLEKS                       R8 R7 K15 ["Rotate"]
       47 GETTABLEKS                       R8 R4 K21 ["RotatingJoint"]
       49 SETTABLEKS                       R8 R7 K16 ["RotateV"]
       51 GETTABLEKS                       R8 R4 K21 ["RotatingJoint"]
       53 SETTABLEKS                       R8 R7 K17 ["RotateP"]
       55 GETTABLEKS                       R8 R4 K22 ["WeldJoint"]
       57 SETTABLEKS                       R8 R7 K18 ["Weld"]
       59 GETTABLEKS                       R8 R4 K23 ["InvalidJoint"]
       61 SETTABLEKS                       R8 R7 K19 ["None"]
       63 DUPCLOSURE                       R8 K24 [PROTO_0]
       64 DUPCLOSURE                       R9 K25 [PROTO_1]
       65 CAPTURE                          VAL R8
       66 DUPCLOSURE                       R10 K26 [PROTO_2]
       67 CAPTURE                          VAL R5
       68 DUPCLOSURE                       R11 K27 [PROTO_3]
       69 CAPTURE                          VAL R10
       70 DUPCLOSURE                       R12 K28 [PROTO_4]
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R11
       73 DUPCLOSURE                       R13 K29 [PROTO_5]
       74 DUPCLOSURE                       R14 K30 [PROTO_6]
       75 DUPCLOSURE                       R15 K31 [PROTO_7]
       76 DUPCLOSURE                       R16 K32 [PROTO_8]
       77 CAPTURE                          VAL R14
       78 DUPCLOSURE                       R17 K33 [PROTO_9]
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R16
       82 DUPCLOSURE                       R18 K34 [PROTO_11]
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R17
       86 SETTABLEKS                       R18 R6 K35 ["new"]
       88 DUPCLOSURE                       R18 K36 [PROTO_12]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R0
       92 SETTABLEKS                       R18 R6 K37 ["renderJoints"]
       94 DUPCLOSURE                       R18 K38 [PROTO_13]
       95 SETTABLEKS                       R18 R6 K39 ["createJoints"]
       97 RETURN                           R6 1
