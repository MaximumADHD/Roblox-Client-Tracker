PROTO_0:
        0 DIVK                             R4 R0 K0 [4]
        1 ADDK                             R3 R4 K1 [0.5]
        2 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        3 GETIMPORT                        R2 K4 [math.floor]
        5 CALL                             R2 1 1
        6 MULK                             R1 R2 K0 [4]
        7 RETURN                           R1 1

PROTO_1:
        0 LOADNIL                          R1
        1 LOADK                            R2 K0 [∞]
        2 GETIMPORT                        R3 K2 [ipairs]
        4 GETUPVAL                         R4 0
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 MOVE                             R11 R0
        8 NAMECALL                         R9 R7 K3 ["Dot"]
       10 CALL                             R9 2 1
       11 FASTCALL1                        MATH_ABS R9 ; [+2]
       12 GETIMPORT                        R8 K6 [math.abs]
       14 CALL                             R8 1 1
       15 JUMPIFNOTLT                      R8 R2 ; [+3]
       17 MOVE                             R2 R8
       18 MOVE                             R1 R7
       19 FORGLOOP                         R3 2 [inext] ; [-13]
       21 LOADNIL                          R3
       22 GETUPVAL                         R4 1
       23 CALL                             R4 0 1
       24 JUMPIFNOT                        R4 ; [+23]
       25 MOVE                             R6 R0
       26 NAMECALL                         R4 R1 K7 ["Cross"]
       28 CALL                             R4 2 1
       29 GETTABLEKS                       R5 R4 K8 ["Magnitude"]
       31 LOADK                            R6 K9 [1E-05]
       32 JUMPIFNOTLT                      R5 R6 ; [+12]
       34 LOADK                            R4 K10 [{1, 0, 0}]
       35 GETTABLEKS                       R6 R0 K11 ["X"]
       37 FASTCALL1                        MATH_ABS R6 ; [+2]
       38 GETIMPORT                        R5 K6 [math.abs]
       40 CALL                             R5 1 1
       41 LOADK                            R6 K12 [0.9]
       42 JUMPIFNOTLT                      R6 R5 ; [+2]
       44 LOADK                            R4 K13 [{0, 1, 0}]
       45 GETTABLEKS                       R3 R4 K14 ["Unit"]
       47 JUMP                             ; [+6]
       48 MOVE                             R6 R0
       49 NAMECALL                         R4 R1 K7 ["Cross"]
       51 CALL                             R4 2 1
       52 GETTABLEKS                       R3 R4 K14 ["Unit"]
       54 MOVE                             R7 R3
       55 NAMECALL                         R5 R1 K7 ["Cross"]
       57 CALL                             R5 2 1
       58 MINUS                            R4 R5
       59 MOVE                             R5 R4
       60 MOVE                             R6 R1
       61 MOVE                             R7 R3
       62 RETURN                           R5 3

PROTO_2:
        0 NAMECALL                         R2 R1 K0 ["GetComponents"]
        2 CALL                             R2 1 12
        3 GETTABLEKS                       R14 R0 K1 ["X"]
        5 GETTABLEKS                       R15 R0 K2 ["Y"]
        7 GETTABLEKS                       R16 R0 K3 ["Z"]
        9 MUL                              R20 R14 R5
       10 FASTCALL1                        MATH_ABS R20 ; [+2]
       11 GETIMPORT                        R19 K6 [math.abs]
       13 CALL                             R19 1 1
       14 MUL                              R21 R15 R6
       15 FASTCALL1                        MATH_ABS R21 ; [+2]
       16 GETIMPORT                        R20 K6 [math.abs]
       18 CALL                             R20 1 1
       19 ADD                              R18 R19 R20
       20 MUL                              R20 R16 R7
       21 FASTCALL1                        MATH_ABS R20 ; [+2]
       22 GETIMPORT                        R19 K6 [math.abs]
       24 CALL                             R19 1 1
       25 ADD                              R17 R18 R19
       26 MUL                              R21 R14 R8
       27 FASTCALL1                        MATH_ABS R21 ; [+2]
       28 GETIMPORT                        R20 K6 [math.abs]
       30 CALL                             R20 1 1
       31 MUL                              R22 R15 R9
       32 FASTCALL1                        MATH_ABS R22 ; [+2]
       33 GETIMPORT                        R21 K6 [math.abs]
       35 CALL                             R21 1 1
       36 ADD                              R19 R20 R21
       37 MUL                              R21 R16 R10
       38 FASTCALL1                        MATH_ABS R21 ; [+2]
       39 GETIMPORT                        R20 K6 [math.abs]
       41 CALL                             R20 1 1
       42 ADD                              R18 R19 R20
       43 MUL                              R22 R14 R11
       44 FASTCALL1                        MATH_ABS R22 ; [+2]
       45 GETIMPORT                        R21 K6 [math.abs]
       47 CALL                             R21 1 1
       48 MUL                              R23 R15 R12
       49 FASTCALL1                        MATH_ABS R23 ; [+2]
       50 GETIMPORT                        R22 K6 [math.abs]
       52 CALL                             R22 1 1
       53 ADD                              R20 R21 R22
       54 MUL                              R22 R16 R13
       55 FASTCALL1                        MATH_ABS R22 ; [+2]
       56 GETIMPORT                        R21 K6 [math.abs]
       58 CALL                             R21 1 1
       59 ADD                              R19 R20 R21
       60 FASTCALL3                        VECTOR R17 R18 R19
       62 MOVE                             R21 R17
       63 MOVE                             R22 R18
       64 MOVE                             R23 R19
       65 GETIMPORT                        R20 K9 [Vector3.new]
       67 CALL                             R20 3 1
       68 RETURN                           R20 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 LOADNIL                          R3
        5 LOADK                            R4 K0 [∞]
        6 GETIMPORT                        R5 K2 [ipairs]
        8 GETTABLEKS                       R6 R2 K3 ["faces"]
       10 CALL                             R5 1 3
       11 FORGPREP_INEXT                   R5
       12 GETTABLEKS                       R12 R9 K4 ["point"]
       14 SUB                              R11 R1 R12
       15 GETTABLEKS                       R13 R9 K5 ["normal"]
       17 NAMECALL                         R11 R11 K6 ["Dot"]
       19 CALL                             R11 2 1
       20 FASTCALL1                        MATH_ABS R11 ; [+2]
       21 GETIMPORT                        R10 K9 [math.abs]
       23 CALL                             R10 1 1
       24 JUMPIFNOTLT                      R10 R4 ; [+3]
       26 MOVE                             R3 R9
       27 MOVE                             R4 R10
       28 FORGLOOP                         R5 2 [inext] ; [-17]
       30 MOVE                             R5 R3
       31 MOVE                             R6 R2
       32 RETURN                           R5 2

PROTO_4:
        0 GETIMPORT                        R1 K2 [RaycastParams.new]
        2 CALL                             R1 0 1
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R1 K3 ["BruteForceAllSlow"]
        6 GETUPVAL                         R2 0
        7 SETTABLEKS                       R2 R1 K4 ["CollisionGroup"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R4 R0 K5 ["Origin"]
       12 GETTABLEKS                       R5 R0 K6 ["Direction"]
       14 MOVE                             R6 R1
       15 NAMECALL                         R2 R2 K7 ["Raycast"]
       17 CALL                             R2 4 1
       18 JUMPIF                           R2 ; [+3]
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 RETURN                           R3 2
       22 GETTABLEKS                       R3 R2 K8 ["Instance"]
       24 LOADK                            R5 K9 ["Terrain"]
       25 NAMECALL                         R3 R3 K10 ["IsA"]
       27 CALL                             R3 2 1
       28 JUMPIFNOT                        R3 ; [+4]
       29 GETTABLEKS                       R3 R2 K8 ["Instance"]
       31 LOADNIL                          R4
       32 RETURN                           R3 2
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R3 R4 K11 ["getClosestFace"]
       36 GETTABLEKS                       R4 R2 K8 ["Instance"]
       38 GETTABLEKS                       R5 R2 K12 ["Position"]
       40 CALL                             R3 2 2
       41 JUMPIFNOT                        R3 ; [+5]
       42 GETTABLEKS                       R5 R2 K8 ["Instance"]
       44 GETTABLEKS                       R6 R3 K13 ["surface"]
       46 RETURN                           R5 2
       47 GETTABLEKS                       R5 R2 K8 ["Instance"]
       49 LOADNIL                          R6
       50 RETURN                           R5 2

PROTO_5:
        0 GETIMPORT                        R2 K2 [RaycastParams.new]
        2 CALL                             R2 0 1
        3 LOADB                            R3 1
        4 SETTABLEKS                       R3 R2 K3 ["BruteForceAllSlow"]
        6 GETUPVAL                         R3 0
        7 SETTABLEKS                       R3 R2 K4 ["CollisionGroup"]
        9 SETTABLEKS                       R1 R2 K5 ["FilterDescendantsInstances"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R5 R0 K6 ["Origin"]
       14 GETTABLEKS                       R6 R0 K7 ["Direction"]
       16 MOVE                             R7 R2
       17 NAMECALL                         R3 R3 K8 ["Raycast"]
       19 CALL                             R3 4 -1
       20 RETURN                           R3 -1

PROTO_6:
        0 NAMECALL                         R2 R1 K0 ["Inverse"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K1 ["ExtentsCFrame"]
        5 GETTABLEKS                       R4 R0 K2 ["ExtentsSize"]
        7 GETTABLEKS                       R5 R4 K3 ["X"]
        9 GETTABLEKS                       R6 R4 K4 ["Y"]
       11 GETTABLEKS                       R7 R4 K5 ["Z"]
       13 MUL                              R8 R2 R3
       14 NAMECALL                         R9 R8 K6 ["GetComponents"]
       16 CALL                             R9 1 12
       17 MUL                              R24 R5 R12
       18 FASTCALL1                        MATH_ABS R24 ; [+2]
       19 GETIMPORT                        R23 K9 [math.abs]
       21 CALL                             R23 1 1
       22 MUL                              R25 R6 R13
       23 FASTCALL1                        MATH_ABS R25 ; [+2]
       24 GETIMPORT                        R24 K9 [math.abs]
       26 CALL                             R24 1 1
       27 ADD                              R22 R23 R24
       28 MUL                              R24 R7 R14
       29 FASTCALL1                        MATH_ABS R24 ; [+2]
       30 GETIMPORT                        R23 K9 [math.abs]
       32 CALL                             R23 1 1
       33 ADD                              R21 R22 R23
       34 MUL                              R25 R5 R18
       35 FASTCALL1                        MATH_ABS R25 ; [+2]
       36 GETIMPORT                        R24 K9 [math.abs]
       38 CALL                             R24 1 1
       39 MUL                              R26 R6 R19
       40 FASTCALL1                        MATH_ABS R26 ; [+2]
       41 GETIMPORT                        R25 K9 [math.abs]
       43 CALL                             R25 1 1
       44 ADD                              R23 R24 R25
       45 MUL                              R25 R7 R20
       46 FASTCALL1                        MATH_ABS R25 ; [+2]
       47 GETIMPORT                        R24 K9 [math.abs]
       49 CALL                             R24 1 1
       50 ADD                              R22 R23 R24
       51 LOADN                            R25 0
       52 FASTCALL3                        VECTOR R21 R25 R22
       54 MOVE                             R24 R21
       55 MOVE                             R26 R22
       56 GETIMPORT                        R23 K12 [Vector3.new]
       58 CALL                             R23 3 1
       59 RETURN                           R23 1

PROTO_7:
        0 SUBRK                            R7 R1 K2 ["math"]
        1 MULK                             R6 R7 K0 [1.5707963267949]
        2 FASTCALL1                        MATH_SIN R6 ; [+2]
        3 GETIMPORT                        R5 K4 [math.sin]
        5 CALL                             R5 1 1
        6 MUL                              R4 R0 R5
        7 MULK                             R7 R2 K0 [1.5707963267949]
        8 FASTCALL1                        MATH_SIN R7 ; [+2]
        9 GETIMPORT                        R6 K4 [math.sin]
       11 CALL                             R6 1 1
       12 MUL                              R5 R1 R6
       13 ADD                              R3 R4 R5
       14 RETURN                           R3 1

PROTO_8:
        0 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R5 0
        1 DIV                              R4 R0 R5
        2 ADDK                             R3 R4 K0 [0.5]
        3 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        4 GETIMPORT                        R2 K3 [math.floor]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 MUL                              R1 R2 R3
        9 RETURN                           R1 1

PROTO_10:
        0 JUMPIFNOT                        R0 ; [+3]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R7 K2 [CFrame.fromMatrix]
        2 MOVE                             R8 R3
        3 MOVE                             R12 R5
        4 NAMECALL                         R10 R6 K3 ["Cross"]
        6 CALL                             R10 2 1
        7 MINUS                            R9 R10
        8 MOVE                             R10 R5
        9 CALL                             R7 3 1
       10 JUMPIF                           R4 ; [+7]
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R8 R9 K4 ["getSizeInSurface"]
       14 MOVE                             R9 R0
       15 MOVE                             R10 R7
       16 CALL                             R8 2 1
       17 MOVE                             R4 R8
       18 GETIMPORT                        R8 K7 [table.freeze]
       20 DUPTABLE                         R9 K13 [{"matrix", "size", "hit", "type", "color"}]
       21 SETTABLEKS                       R7 R9 K8 ["matrix"]
       23 SETTABLEKS                       R4 R9 K9 ["size"]
       25 SETTABLEKS                       R1 R9 K10 ["hit"]
       27 SETTABLEKS                       R2 R9 K11 ["type"]
       29 GETTABLEKS                       R10 R0 K14 ["Color"]
       31 SETTABLEKS                       R10 R9 K12 ["color"]
       33 CALL                             R8 1 -1
       34 RETURN                           R8 -1

PROTO_12:
        0 GETTABLEKS                       R3 R1 K0 ["Position"]
        2 GETTABLEKS                       R4 R0 K1 ["CFrame"]
        4 MOVE                             R7 R3
        5 NAMECALL                         R5 R4 K2 ["PointToObjectSpace"]
        7 CALL                             R5 2 1
        8 GETTABLEKS                       R6 R0 K3 ["Size"]
       10 GETTABLEKS                       R8 R6 K4 ["X"]
       12 GETTABLEKS                       R9 R6 K5 ["Y"]
       14 GETTABLEKS                       R10 R6 K6 ["Z"]
       16 FASTCALL                         MATH_MIN ; [+2]
       17 GETIMPORT                        R7 K9 [math.min]
       19 CALL                             R7 3 1
       20 MULK                             R8 R7 K10 [0.5]
       21 JUMPIFNOT                        R2 ; [+3]
       22 NEWCLOSURE                       R9 P0
       23 CAPTURE                          VAL R2
       24 JUMP                             ; [+1]
       25 GETUPVAL                         R9 0
       26 MOVE                             R10 R9
       27 GETTABLEKS                       R11 R5 K5 ["Y"]
       29 CALL                             R10 1 1
       30 GETTABLEKS                       R14 R5 K4 ["X"]
       32 GETTABLEKS                       R15 R5 K4 ["X"]
       34 MUL                              R13 R14 R15
       35 GETTABLEKS                       R15 R5 K6 ["Z"]
       37 GETTABLEKS                       R16 R5 K6 ["Z"]
       39 MUL                              R14 R15 R16
       40 ADD                              R12 R13 R14
       41 FASTCALL1                        MATH_SQRT R12 ; [+2]
       42 GETIMPORT                        R11 K12 [math.sqrt]
       44 CALL                             R11 1 1
       45 FASTCALL1                        MATH_ABS R10 ; [+3]
       46 MOVE                             R14 R10
       47 GETIMPORT                        R13 K14 [math.abs]
       49 CALL                             R13 1 1
       50 JUMPIFNOTLT                      R8 R13 ; [+3]
       52 LOADN                            R12 0
       53 JUMP                             ; [+7]
       54 MUL                              R14 R8 R8
       55 MUL                              R15 R10 R10
       56 SUB                              R13 R14 R15
       57 FASTCALL1                        MATH_SQRT R13 ; [+2]
       58 GETIMPORT                        R12 K12 [math.sqrt]
       60 CALL                             R12 1 1
       61 MULK                             R13 R8 K15 [0.25]
       62 LOADB                            R14 1
       63 JUMPIFLT                         R12 R13 ; [+5]
       65 JUMPIFLT                         R11 R13 ; [+2]
       67 LOADB                            R14 0 +1
       68 LOADB                            R14 1
       69 JUMPIFNOT                        R14 ; [+8]
       70 LOADN                            R12 0
       71 GETTABLEKS                       R16 R5 K5 ["Y"]
       73 FASTCALL1                        MATH_SIGN R16 ; [+2]
       74 GETIMPORT                        R15 K17 [math.sign]
       76 CALL                             R15 1 1
       77 MUL                              R10 R15 R8
       78 GETTABLEKS                       R17 R5 K4 ["X"]
       80 LOADN                            R18 0
       81 GETTABLEKS                       R19 R5 K6 ["Z"]
       83 FASTCALL                         VECTOR ; [+2]
       84 GETIMPORT                        R16 K20 [Vector3.new]
       86 CALL                             R16 3 1
       87 GETTABLEKS                       R15 R16 K21 ["Unit"]
       89 LOADN                            R16 0
       90 GETTABLEKS                       R19 R5 K6 ["Z"]
       92 FASTCALL1                        MATH_SIGN R19 ; [+2]
       93 GETIMPORT                        R18 K17 [math.sign]
       95 CALL                             R18 1 1
       96 MUL                              R17 R18 R12
       97 GETTABLEKS                       R20 R5 K4 ["X"]
       99 FASTCALL1                        MATH_SIGN R20 ; [+2]
      100 GETIMPORT                        R19 K17 [math.sign]
      102 CALL                             R19 1 1
      103 MUL                              R18 R19 R12
      104 LOADN                            R19 0
      105 GETTABLEKS                       R21 R5 K4 ["X"]
      107 FASTCALL1                        MATH_ABS R21 ; [+2]
      108 GETIMPORT                        R20 K14 [math.abs]
      110 CALL                             R20 1 1
      111 GETTABLEKS                       R22 R5 K6 ["Z"]
      113 FASTCALL1                        MATH_ABS R22 ; [+2]
      114 GETIMPORT                        R21 K14 [math.abs]
      116 CALL                             R21 1 1
      117 JUMPIFNOTLT                      R21 R20 ; [+7]
      119 MOVE                             R20 R18
      120 MOVE                             R18 R16
      121 MOVE                             R16 R20
      122 MOVE                             R20 R19
      123 MOVE                             R19 R17
      124 MOVE                             R17 R20
      125 LOADNIL                          R20
      126 JUMPIFNOT                        R14 ; [+2]
      127 LOADN                            R20 0
      128 JUMP                             ; [+30]
      129 GETTABLEKS                       R24 R15 K4 ["X"]
      131 MUL                              R23 R16 R24
      132 GETTABLEKS                       R25 R15 K6 ["Z"]
      134 MUL                              R24 R17 R25
      135 ADD                              R22 R23 R24
      136 DIV                              R21 R22 R12
      137 JUMPIFEQ                         R21 R21 ; [+2]
      139 LOADN                            R21 0
      140 LOADN                            R25 255
      141 LOADN                            R26 1
      142 FASTCALL3                        MATH_CLAMP R21 R25 R26
      144 MOVE                             R24 R21
      145 GETIMPORT                        R23 K23 [math.clamp]
      147 CALL                             R23 3 1
      148 FASTCALL1                        MATH_ACOS R23 ; [+2]
      149 GETIMPORT                        R22 K25 [math.acos]
      151 CALL                             R22 1 1
      152 MUL                              R23 R22 R8
      153 MOVE                             R24 R9
      154 MOVE                             R25 R23
      155 CALL                             R24 1 1
      156 LOADK                            R26 K26 [1.5707963267949]
      157 MUL                              R25 R26 R8
      158 DIV                              R20 R24 R25
      159 MOVE                             R22 R16
      160 MOVE                             R23 R18
      161 MOVE                             R24 R20
      162 SUBRK                            R28 R27 K24 ["acos"]
      163 MULK                             R27 R28 K26 [1.5707963267949]
      164 FASTCALL1                        MATH_SIN R27 ; [+2]
      165 GETIMPORT                        R26 K29 [math.sin]
      167 CALL                             R26 1 1
      168 MUL                              R25 R22 R26
      169 MULK                             R28 R24 K26 [1.5707963267949]
      170 FASTCALL1                        MATH_SIN R28 ; [+2]
      171 GETIMPORT                        R27 K29 [math.sin]
      173 CALL                             R27 1 1
      174 MUL                              R26 R23 R27
      175 ADD                              R21 R25 R26
      176 MOVE                             R23 R17
      177 MOVE                             R24 R19
      178 MOVE                             R25 R20
      179 SUBRK                            R29 R27 K25 [math.acos]
      180 MULK                             R28 R29 K26 [1.5707963267949]
      181 FASTCALL1                        MATH_SIN R28 ; [+2]
      182 GETIMPORT                        R27 K29 [math.sin]
      184 CALL                             R27 1 1
      185 MUL                              R26 R23 R27
      186 MULK                             R29 R25 K26 [1.5707963267949]
      187 FASTCALL1                        MATH_SIN R29 ; [+2]
      188 GETIMPORT                        R28 K29 [math.sin]
      190 CALL                             R28 1 1
      191 MUL                              R27 R24 R28
      192 ADD                              R22 R26 R27
      193 FASTCALL3                        VECTOR R21 R10 R22
      195 MOVE                             R24 R21
      196 MOVE                             R25 R10
      197 MOVE                             R26 R22
      198 GETIMPORT                        R23 K20 [Vector3.new]
      200 CALL                             R23 3 1
      201 LOADNIL                          R24
      202 LOADNIL                          R25
      203 MOVE                             R28 R23
      204 NAMECALL                         R26 R4 K30 ["VectorToWorldSpace"]
      206 CALL                             R26 2 1
      207 GETTABLEKS                       R24 R26 K21 ["Unit"]
      209 GETTABLEKS                       R27 R0 K1 ["CFrame"]
      211 GETTABLEKS                       R26 R27 K31 ["YVector"]
      213 GETUPVAL                         R27 1
      214 CALL                             R27 0 1
      215 JUMPIFNOT                        R27 ; [+57]
      216 MOVE                             R30 R26
      217 NAMECALL                         R28 R24 K32 ["Dot"]
      219 CALL                             R28 2 1
      220 FASTCALL1                        MATH_ABS R28 ; [+2]
      221 GETIMPORT                        R27 K14 [math.abs]
      223 CALL                             R27 1 1
      224 LOADK                            R28 K33 [0.99]
      225 JUMPIFNOTLT                      R28 R27 ; [+24]
      227 GETTABLEKS                       R30 R0 K1 ["CFrame"]
      229 GETTABLEKS                       R29 R30 K34 ["XVector"]
      231 NAMECALL                         R27 R24 K35 ["Cross"]
      233 CALL                             R27 2 1
      234 GETTABLEKS                       R28 R27 K36 ["Magnitude"]
      236 LOADK                            R29 K37 [1E-05]
      237 JUMPIFNOTLT                      R28 R29 ; [+9]
      239 GETTABLEKS                       R31 R0 K1 ["CFrame"]
      241 GETTABLEKS                       R30 R31 K38 ["ZVector"]
      243 NAMECALL                         R28 R24 K35 ["Cross"]
      245 CALL                             R28 2 1
      246 MOVE                             R27 R28
      247 GETTABLEKS                       R25 R27 K21 ["Unit"]
      249 JUMP                             ; [+50]
      250 MOVE                             R29 R26
      251 NAMECALL                         R27 R24 K35 ["Cross"]
      253 CALL                             R27 2 1
      254 GETTABLEKS                       R28 R27 K36 ["Magnitude"]
      256 LOADK                            R29 K37 [1E-05]
      257 JUMPIFNOTLT                      R28 R29 ; [+12]
      259 LOADK                            R27 K39 [{1, 0, 0}]
      260 GETTABLEKS                       R29 R24 K4 ["X"]
      262 FASTCALL1                        MATH_ABS R29 ; [+2]
      263 GETIMPORT                        R28 K14 [math.abs]
      265 CALL                             R28 1 1
      266 LOADK                            R29 K40 [0.9]
      267 JUMPIFNOTLT                      R29 R28 ; [+2]
      269 LOADK                            R27 K41 [{0, 1, 0}]
      270 GETTABLEKS                       R25 R27 K21 ["Unit"]
      272 JUMP                             ; [+27]
      273 MOVE                             R30 R26
      274 NAMECALL                         R28 R24 K32 ["Dot"]
      276 CALL                             R28 2 1
      277 FASTCALL1                        MATH_ABS R28 ; [+2]
      278 GETIMPORT                        R27 K14 [math.abs]
      280 CALL                             R27 1 1
      281 LOADK                            R28 K33 [0.99]
      282 JUMPIFNOTLT                      R28 R27 ; [+11]
      284 GETTABLEKS                       R30 R0 K1 ["CFrame"]
      286 GETTABLEKS                       R29 R30 K34 ["XVector"]
      288 NAMECALL                         R27 R24 K35 ["Cross"]
      290 CALL                             R27 2 1
      291 GETTABLEKS                       R25 R27 K21 ["Unit"]
      293 JUMP                             ; [+6]
      294 MOVE                             R29 R26
      295 NAMECALL                         R27 R24 K35 ["Cross"]
      297 CALL                             R27 2 1
      298 GETTABLEKS                       R25 R27 K21 ["Unit"]
      300 MOVE                             R29 R23
      301 NAMECALL                         R27 R4 K42 ["PointToWorldSpace"]
      303 CALL                             R27 2 1
      304 JUMPIFNOT                        R14 ; [+12]
      305 GETUPVAL                         R28 2
      306 MOVE                             R29 R0
      307 MOVE                             R30 R3
      308 GETUPVAL                         R32 3
      309 GETTABLEKS                       R31 R32 K43 ["Polygon"]
      311 MOVE                             R32 R27
      312 LOADK                            R33 K44 [{0, 0, 0}]
      313 MOVE                             R34 R24
      314 MOVE                             R35 R25
      315 CALL                             R28 7 -1
      316 RETURN                           R28 -1
      317 GETUPVAL                         R28 2
      318 MOVE                             R29 R0
      319 MOVE                             R30 R3
      320 GETUPVAL                         R32 3
      321 GETTABLEKS                       R31 R32 K45 ["Sphere"]
      323 MOVE                             R32 R27
      324 LOADK                            R33 K44 [{0, 0, 0}]
      325 MOVE                             R34 R24
      326 MOVE                             R35 R25
      327 CALL                             R28 7 -1
      328 RETURN                           R28 -1

PROTO_13:
        0 GETTABLEKS                       R3 R1 K0 ["Position"]
        2 GETTABLEKS                       R4 R1 K1 ["Normal"]
        4 GETTABLEKS                       R5 R0 K2 ["CFrame"]
        6 MOVE                             R8 R3
        7 NAMECALL                         R6 R5 K3 ["PointToObjectSpace"]
        9 CALL                             R6 2 1
       10 GETTABLEKS                       R7 R0 K4 ["Size"]
       12 GETTABLEKS                       R9 R7 K5 ["Y"]
       14 GETTABLEKS                       R10 R7 K6 ["Z"]
       16 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       18 GETIMPORT                        R8 K9 [math.min]
       20 CALL                             R8 2 1
       21 MULK                             R9 R8 K10 [0.5]
       22 GETTABLEKS                       R11 R7 K11 ["X"]
       24 MULK                             R10 R11 K10 [0.5]
       25 GETTABLEKS                       R13 R6 K11 ["X"]
       27 SUB                              R12 R13 R10
       28 FASTCALL1                        MATH_ABS R12 ; [+2]
       29 GETIMPORT                        R11 K13 [math.abs]
       31 CALL                             R11 1 1
       32 LOADK                            R12 K14 [0.001]
       33 JUMPIFNOTLT                      R11 R12 ; [+70]
       35 GETTABLEKS                       R13 R6 K5 ["Y"]
       37 FASTCALL1                        MATH_ABS R13 ; [+2]
       38 GETIMPORT                        R12 K13 [math.abs]
       40 CALL                             R12 1 1
       41 MULK                             R13 R9 K10 [0.5]
       42 JUMPIFNOTLT                      R13 R12 ; [+9]
       44 GETTABLEKS                       R13 R6 K5 ["Y"]
       46 FASTCALL1                        MATH_SIGN R13 ; [+2]
       47 GETIMPORT                        R12 K16 [math.sign]
       49 CALL                             R12 1 1
       50 MUL                              R11 R12 R9
       51 JUMP                             ; [+1]
       52 LOADN                            R11 0
       53 GETTABLEKS                       R14 R6 K6 ["Z"]
       55 FASTCALL1                        MATH_ABS R14 ; [+2]
       56 GETIMPORT                        R13 K13 [math.abs]
       58 CALL                             R13 1 1
       59 MULK                             R14 R9 K10 [0.5]
       60 JUMPIFNOTLT                      R14 R13 ; [+9]
       62 GETTABLEKS                       R14 R6 K6 ["Z"]
       64 FASTCALL1                        MATH_SIGN R14 ; [+2]
       65 GETIMPORT                        R13 K16 [math.sign]
       67 CALL                             R13 1 1
       68 MUL                              R12 R13 R9
       69 JUMP                             ; [+1]
       70 LOADN                            R12 0
       71 LOADK                            R14 K10 [0.5]
       72 LOADN                            R17 0
       73 FASTCALL3                        VECTOR R8 R17 R8
       75 MOVE                             R16 R8
       76 MOVE                             R18 R8
       77 GETIMPORT                        R15 K19 [Vector3.new]
       79 CALL                             R15 3 1
       80 MUL                              R13 R14 R15
       81 GETUPVAL                         R14 0
       82 MOVE                             R15 R0
       83 MOVE                             R16 R3
       84 GETUPVAL                         R18 1
       85 GETTABLEKS                       R17 R18 K20 ["Polygon"]
       87 FASTCALL3                        VECTOR R10 R11 R12
       89 MOVE                             R21 R10
       90 MOVE                             R22 R11
       91 MOVE                             R23 R12
       92 GETIMPORT                        R20 K19 [Vector3.new]
       94 CALL                             R20 3 1
       95 NAMECALL                         R18 R5 K21 ["PointToWorldSpace"]
       97 CALL                             R18 2 1
       98 MOVE                             R19 R13
       99 MOVE                             R20 R4
      100 GETTABLEKS                       R21 R5 K22 ["YVector"]
      102 CALL                             R14 7 -1
      103 RETURN                           R14 -1
      104 GETTABLEKS                       R13 R6 K11 ["X"]
      106 ADD                              R12 R13 R10
      107 FASTCALL1                        MATH_ABS R12 ; [+2]
      108 GETIMPORT                        R11 K13 [math.abs]
      110 CALL                             R11 1 1
      111 LOADK                            R12 K14 [0.001]
      112 JUMPIFNOTLT                      R11 R12 ; [+71]
      114 GETTABLEKS                       R13 R6 K5 ["Y"]
      116 FASTCALL1                        MATH_ABS R13 ; [+2]
      117 GETIMPORT                        R12 K13 [math.abs]
      119 CALL                             R12 1 1
      120 MULK                             R13 R9 K10 [0.5]
      121 JUMPIFNOTLT                      R13 R12 ; [+9]
      123 GETTABLEKS                       R13 R6 K5 ["Y"]
      125 FASTCALL1                        MATH_SIGN R13 ; [+2]
      126 GETIMPORT                        R12 K16 [math.sign]
      128 CALL                             R12 1 1
      129 MUL                              R11 R12 R9
      130 JUMP                             ; [+1]
      131 LOADN                            R11 0
      132 GETTABLEKS                       R14 R6 K6 ["Z"]
      134 FASTCALL1                        MATH_ABS R14 ; [+2]
      135 GETIMPORT                        R13 K13 [math.abs]
      137 CALL                             R13 1 1
      138 MULK                             R14 R9 K10 [0.5]
      139 JUMPIFNOTLT                      R14 R13 ; [+9]
      141 GETTABLEKS                       R14 R6 K6 ["Z"]
      143 FASTCALL1                        MATH_SIGN R14 ; [+2]
      144 GETIMPORT                        R13 K16 [math.sign]
      146 CALL                             R13 1 1
      147 MUL                              R12 R13 R9
      148 JUMP                             ; [+1]
      149 LOADN                            R12 0
      150 LOADK                            R14 K10 [0.5]
      151 LOADN                            R17 0
      152 FASTCALL3                        VECTOR R8 R17 R8
      154 MOVE                             R16 R8
      155 MOVE                             R18 R8
      156 GETIMPORT                        R15 K19 [Vector3.new]
      158 CALL                             R15 3 1
      159 MUL                              R13 R14 R15
      160 GETUPVAL                         R14 0
      161 MOVE                             R15 R0
      162 MOVE                             R16 R3
      163 GETUPVAL                         R18 1
      164 GETTABLEKS                       R17 R18 K20 ["Polygon"]
      166 MINUS                            R21 R10
      167 FASTCALL3                        VECTOR R21 R11 R12
      169 MOVE                             R22 R11
      170 MOVE                             R23 R12
      171 GETIMPORT                        R20 K19 [Vector3.new]
      173 CALL                             R20 3 1
      174 NAMECALL                         R18 R5 K21 ["PointToWorldSpace"]
      176 CALL                             R18 2 1
      177 MOVE                             R19 R13
      178 MOVE                             R20 R4
      179 GETTABLEKS                       R22 R5 K22 ["YVector"]
      181 MINUS                            R21 R22
      182 CALL                             R14 7 -1
      183 RETURN                           R14 -1
      184 LOADN                            R11 0
      185 GETTABLEKS                       R14 R6 K6 ["Z"]
      187 FASTCALL1                        MATH_SIGN R14 ; [+2]
      188 GETIMPORT                        R13 K16 [math.sign]
      190 CALL                             R13 1 1
      191 MUL                              R12 R13 R9
      192 GETTABLEKS                       R15 R6 K5 ["Y"]
      194 FASTCALL1                        MATH_SIGN R15 ; [+2]
      195 GETIMPORT                        R14 K16 [math.sign]
      197 CALL                             R14 1 1
      198 MUL                              R13 R14 R9
      199 LOADN                            R14 0
      200 GETTABLEKS                       R16 R6 K5 ["Y"]
      202 FASTCALL1                        MATH_ABS R16 ; [+2]
      203 GETIMPORT                        R15 K13 [math.abs]
      205 CALL                             R15 1 1
      206 GETTABLEKS                       R17 R6 K6 ["Z"]
      208 FASTCALL1                        MATH_ABS R17 ; [+2]
      209 GETIMPORT                        R16 K13 [math.abs]
      211 CALL                             R16 1 1
      212 JUMPIFNOTLT                      R16 R15 ; [+7]
      214 MOVE                             R15 R13
      215 MOVE                             R13 R11
      216 MOVE                             R11 R15
      217 MOVE                             R15 R14
      218 MOVE                             R14 R12
      219 MOVE                             R12 R15
      220 LOADNIL                          R15
      221 GETUPVAL                         R16 2
      222 CALL                             R16 0 1
      223 JUMPIFNOT                        R16 ; [+26]
      224 GETTABLEKS                       R19 R6 K5 ["Y"]
      226 MUL                              R18 R11 R19
      227 GETTABLEKS                       R20 R6 K6 ["Z"]
      229 MUL                              R19 R12 R20
      230 ADD                              R17 R18 R19
      231 MUL                              R18 R9 R9
      232 DIV                              R16 R17 R18
      233 JUMPIFEQ                         R16 R16 ; [+2]
      235 LOADN                            R16 0
      236 LOADN                            R20 255
      237 LOADN                            R21 1
      238 FASTCALL3                        MATH_CLAMP R16 R20 R21
      240 MOVE                             R19 R16
      241 GETIMPORT                        R18 K24 [math.clamp]
      243 CALL                             R18 3 1
      244 FASTCALL1                        MATH_ACOS R18 ; [+2]
      245 GETIMPORT                        R17 K26 [math.acos]
      247 CALL                             R17 1 1
      248 MOVE                             R15 R17
      249 JUMP                             ; [+14]
      250 GETTABLEKS                       R20 R6 K5 ["Y"]
      252 MUL                              R19 R11 R20
      253 GETTABLEKS                       R21 R6 K6 ["Z"]
      255 MUL                              R20 R12 R21
      256 ADD                              R18 R19 R20
      257 MUL                              R19 R9 R9
      258 DIV                              R17 R18 R19
      259 FASTCALL1                        MATH_ACOS R17 ; [+2]
      260 GETIMPORT                        R16 K26 [math.acos]
      262 CALL                             R16 1 1
      263 MOVE                             R15 R16
      264 MUL                              R16 R15 R9
      265 JUMPIFNOT                        R2 ; [+3]
      266 NEWCLOSURE                       R17 P0
      267 CAPTURE                          VAL R2
      268 JUMP                             ; [+1]
      269 GETUPVAL                         R17 3
      270 MOVE                             R18 R17
      271 MOVE                             R19 R16
      272 CALL                             R18 1 1
      273 LOADK                            R21 K27 [1.5707963267949]
      274 MUL                              R20 R21 R9
      275 DIV                              R19 R18 R20
      276 MOVE                             R21 R11
      277 MOVE                             R22 R13
      278 SUBRK                            R26 R28 K19 [Vector3.new]
      279 MULK                             R25 R26 K27 [1.5707963267949]
      280 FASTCALL1                        MATH_SIN R25 ; [+2]
      281 GETIMPORT                        R24 K30 [math.sin]
      283 CALL                             R24 1 1
      284 MUL                              R23 R21 R24
      285 MULK                             R26 R19 K27 [1.5707963267949]
      286 FASTCALL1                        MATH_SIN R26 ; [+2]
      287 GETIMPORT                        R25 K30 [math.sin]
      289 CALL                             R25 1 1
      290 MUL                              R24 R22 R25
      291 ADD                              R20 R23 R24
      292 MOVE                             R22 R12
      293 MOVE                             R23 R14
      294 SUBRK                            R27 R28 K19 [Vector3.new]
      295 MULK                             R26 R27 K27 [1.5707963267949]
      296 FASTCALL1                        MATH_SIN R26 ; [+2]
      297 GETIMPORT                        R25 K30 [math.sin]
      299 CALL                             R25 1 1
      300 MUL                              R24 R22 R25
      301 MULK                             R27 R19 K27 [1.5707963267949]
      302 FASTCALL1                        MATH_SIN R27 ; [+2]
      303 GETIMPORT                        R26 K30 [math.sin]
      305 CALL                             R26 1 1
      306 MUL                              R25 R23 R26
      307 ADD                              R21 R24 R25
      308 LOADN                            R25 0
      309 FASTCALL3                        VECTOR R25 R20 R21
      311 MOVE                             R26 R20
      312 MOVE                             R27 R21
      313 GETIMPORT                        R24 K19 [Vector3.new]
      315 CALL                             R24 3 1
      316 NAMECALL                         R22 R5 K31 ["VectorToWorldSpace"]
      318 CALL                             R22 2 1
      319 GETTABLEKS                       R4 R22 K32 ["Unit"]
      321 GETTABLEKS                       R27 R6 K11 ["X"]
      323 FASTCALL1                        MATH_SIGN R27 ; [+2]
      324 GETIMPORT                        R26 K16 [math.sign]
      326 CALL                             R26 1 1
      327 MUL                              R25 R10 R26
      328 FASTCALL3                        VECTOR R25 R20 R21
      330 MOVE                             R26 R20
      331 MOVE                             R27 R21
      332 GETIMPORT                        R24 K19 [Vector3.new]
      334 CALL                             R24 3 1
      335 NAMECALL                         R22 R5 K21 ["PointToWorldSpace"]
      337 CALL                             R22 2 1
      338 LOADN                            R24 0
      339 LOADN                            R25 0
      340 GETTABLEKS                       R26 R7 K11 ["X"]
      342 FASTCALL                         VECTOR ; [+2]
      343 GETIMPORT                        R23 K19 [Vector3.new]
      345 CALL                             R23 3 1
      346 GETUPVAL                         R24 0
      347 MOVE                             R25 R0
      348 MOVE                             R26 R3
      349 GETUPVAL                         R28 1
      350 GETTABLEKS                       R27 R28 K33 ["Cylinder"]
      352 MOVE                             R28 R22
      353 MOVE                             R29 R23
      354 MOVE                             R30 R4
      355 GETTABLEKS                       R31 R5 K34 ["XVector"]
      357 CALL                             R24 7 -1
      358 RETURN                           R24 -1

PROTO_14:
        0 MOVE                             R6 R0
        1 NAMECALL                         R4 R3 K0 ["PointToObjectSpace"]
        3 CALL                             R4 2 1
        4 DIV                              R7 R4 R2
        5 LOADK                            R8 K1 [{0.5, 0.5, 0.5}]
        6 ADD                              R6 R7 R8
        7 NAMECALL                         R6 R6 K2 ["Floor"]
        9 CALL                             R6 1 1
       10 MUL                              R5 R6 R2
       11 MOVE                             R8 R1
       12 NAMECALL                         R6 R3 K3 ["VectorToObjectSpace"]
       14 CALL                             R6 2 1
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R7 R8 K4 ["intersectRayPlane"]
       18 MOVE                             R8 R5
       19 LOADK                            R9 K5 [{1, 0, 0}]
       20 MOVE                             R10 R4
       21 MOVE                             R11 R6
       22 CALL                             R7 4 1
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R8 R9 K4 ["intersectRayPlane"]
       26 MOVE                             R9 R5
       27 LOADK                            R10 K6 [{0, 1, 0}]
       28 MOVE                             R11 R4
       29 MOVE                             R12 R6
       30 CALL                             R8 4 1
       31 GETUPVAL                         R10 0
       32 GETTABLEKS                       R9 R10 K4 ["intersectRayPlane"]
       34 MOVE                             R10 R5
       35 LOADK                            R11 K7 [{0, 0, 1}]
       36 MOVE                             R12 R4
       37 MOVE                             R13 R6
       38 CALL                             R9 4 1
       39 JUMPIFEQ                         R7 R7 ; [+2]
       41 LOADK                            R7 K8 [∞]
       42 JUMPIFEQ                         R8 R8 ; [+2]
       44 LOADK                            R8 K8 [∞]
       45 JUMPIFEQ                         R9 R9 ; [+2]
       47 LOADK                            R9 K8 [∞]
       48 FASTCALL1                        MATH_ABS R7 ; [+3]
       49 MOVE                             R11 R7
       50 GETIMPORT                        R10 K11 [math.abs]
       52 CALL                             R10 1 1
       53 FASTCALL1                        MATH_ABS R8 ; [+3]
       54 MOVE                             R12 R8
       55 GETIMPORT                        R11 K11 [math.abs]
       57 CALL                             R11 1 1
       58 JUMPIFNOTLT                      R10 R11 ; [+17]
       60 FASTCALL1                        MATH_ABS R7 ; [+3]
       61 MOVE                             R11 R7
       62 GETIMPORT                        R10 K11 [math.abs]
       64 CALL                             R10 1 1
       65 FASTCALL1                        MATH_ABS R9 ; [+3]
       66 MOVE                             R12 R9
       67 GETIMPORT                        R11 K11 [math.abs]
       69 CALL                             R11 1 1
       70 JUMPIFNOTLT                      R10 R11 ; [+5]
       72 LOADK                            R11 K5 [{1, 0, 0}]
       73 MUL                              R10 R11 R7
       74 ADD                              R5 R5 R10
       75 JUMP                             ; [+19]
       76 FASTCALL1                        MATH_ABS R8 ; [+3]
       77 MOVE                             R11 R8
       78 GETIMPORT                        R10 K11 [math.abs]
       80 CALL                             R10 1 1
       81 FASTCALL1                        MATH_ABS R9 ; [+3]
       82 MOVE                             R12 R9
       83 GETIMPORT                        R11 K11 [math.abs]
       85 CALL                             R11 1 1
       86 JUMPIFNOTLT                      R10 R11 ; [+5]
       88 LOADK                            R11 K6 [{0, 1, 0}]
       89 MUL                              R10 R11 R8
       90 ADD                              R5 R5 R10
       91 JUMP                             ; [+3]
       92 LOADK                            R11 K7 [{0, 0, 1}]
       93 MUL                              R10 R11 R9
       94 ADD                              R5 R5 R10
       95 MOVE                             R12 R5
       96 NAMECALL                         R10 R3 K12 ["PointToWorldSpace"]
       98 CALL                             R10 2 -1
       99 RETURN                           R10 -1

PROTO_15:
        0 GETTABLEKS                       R3 R1 K0 ["Position"]
        2 GETTABLEKS                       R4 R1 K1 ["Normal"]
        4 JUMPIFNOT                        R2 ; [+9]
        5 GETUPVAL                         R5 0
        6 MOVE                             R6 R3
        7 MOVE                             R7 R4
        8 MOVE                             R8 R2
        9 NAMECALL                         R9 R0 K2 ["GetPivot"]
       11 CALL                             R9 1 -1
       12 CALL                             R5 -1 1
       13 MOVE                             R3 R5
       14 GETTABLEKS                       R6 R0 K3 ["CFrame"]
       16 GETTABLEKS                       R5 R6 K4 ["XVector"]
       18 MOVE                             R9 R4
       19 NAMECALL                         R7 R5 K5 ["Dot"]
       21 CALL                             R7 2 1
       22 FASTCALL1                        MATH_ABS R7 ; [+2]
       23 GETIMPORT                        R6 K8 [math.abs]
       25 CALL                             R6 1 1
       26 LOADK                            R7 K9 [0.9]
       27 JUMPIFNOTLT                      R7 R6 ; [+5]
       29 GETTABLEKS                       R6 R0 K3 ["CFrame"]
       31 GETTABLEKS                       R5 R6 K10 ["ZVector"]
       33 LOADNIL                          R6
       34 LOADNIL                          R7
       35 GETUPVAL                         R8 1
       36 CALL                             R8 0 1
       37 JUMPIFNOT                        R8 ; [+38]
       38 MOVE                             R10 R4
       39 NAMECALL                         R8 R5 K11 ["Cross"]
       41 CALL                             R8 2 1
       42 GETTABLEKS                       R9 R8 K12 ["Magnitude"]
       44 LOADK                            R10 K13 [1E-05]
       45 JUMPIFNOTLT                      R9 R10 ; [+22]
       47 LOADK                            R8 K14 [{1, 0, 0}]
       48 GETTABLEKS                       R10 R4 K15 ["X"]
       50 FASTCALL1                        MATH_ABS R10 ; [+2]
       51 GETIMPORT                        R9 K8 [math.abs]
       53 CALL                             R9 1 1
       54 LOADK                            R10 K9 [0.9]
       55 JUMPIFNOTLT                      R10 R9 ; [+2]
       57 LOADK                            R8 K16 [{0, 1, 0}]
       58 GETTABLEKS                       R10 R4 K17 ["Y"]
       60 FASTCALL1                        MATH_ABS R10 ; [+2]
       61 GETIMPORT                        R9 K8 [math.abs]
       63 CALL                             R9 1 1
       64 LOADK                            R10 K9 [0.9]
       65 JUMPIFNOTLT                      R10 R9 ; [+2]
       67 LOADK                            R8 K18 [{0, 0, 1}]
       68 GETTABLEKS                       R6 R8 K19 ["Unit"]
       70 MOVE                             R11 R4
       71 NAMECALL                         R9 R6 K11 ["Cross"]
       73 CALL                             R9 2 1
       74 MOVE                             R7 R9
       75 JUMP                             ; [+11]
       76 MOVE                             R10 R4
       77 NAMECALL                         R8 R5 K11 ["Cross"]
       79 CALL                             R8 2 1
       80 GETTABLEKS                       R6 R8 K19 ["Unit"]
       82 MOVE                             R10 R4
       83 NAMECALL                         R8 R6 K11 ["Cross"]
       85 CALL                             R8 2 1
       86 MOVE                             R7 R8
       87 GETIMPORT                        R8 K22 [table.freeze]
       89 DUPTABLE                         R9 K28 [{"matrix", "size", "hit", "type", "color"}]
       90 GETIMPORT                        R10 K30 [CFrame.fromMatrix]
       92 MOVE                             R11 R3
       93 MOVE                             R12 R7
       94 MOVE                             R13 R4
       95 CALL                             R10 3 1
       96 SETTABLEKS                       R10 R9 K23 ["matrix"]
       98 LOADK                            R10 K31 [{0, 0, 0}]
       99 SETTABLEKS                       R10 R9 K24 ["size"]
      101 SETTABLEKS                       R3 R9 K25 ["hit"]
      103 GETUPVAL                         R11 2
      104 GETTABLEKS                       R10 R11 K32 ["Round"]
      106 SETTABLEKS                       R10 R9 K26 ["type"]
      108 GETTABLEKS                       R10 R0 K33 ["Color"]
      110 SETTABLEKS                       R10 R9 K27 ["color"]
      112 CALL                             R8 1 -1
      113 RETURN                           R8 -1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 JUMPIFNOT                        R3 ; [+73]
        4 GETTABLEKS                       R4 R1 K0 ["Position"]
        6 GETTABLEKS                       R5 R1 K1 ["Normal"]
        8 GETTABLEKS                       R9 R3 K2 ["a"]
       10 SUB                              R8 R9 R4
       11 GETTABLEKS                       R7 R8 K3 ["Magnitude"]
       13 GETTABLEKS                       R10 R3 K4 ["b"]
       15 SUB                              R9 R10 R4
       16 GETTABLEKS                       R8 R9 K3 ["Magnitude"]
       18 JUMPIFNOTLT                      R7 R8 ; [+4]
       20 GETTABLEKS                       R6 R3 K2 ["a"]
       22 JUMP                             ; [+2]
       23 GETTABLEKS                       R6 R3 K4 ["b"]
       25 GETIMPORT                        R7 K7 [CFrame.fromMatrix]
       27 MOVE                             R8 R6
       28 GETTABLEKS                       R10 R3 K8 ["direction"]
       30 MOVE                             R12 R5
       31 NAMECALL                         R10 R10 K9 ["Cross"]
       33 CALL                             R10 2 1
       34 MINUS                            R9 R10
       35 MOVE                             R10 R5
       36 CALL                             R7 3 1
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R8 R9 K10 ["getSizeInSurface"]
       40 MOVE                             R9 R0
       41 MOVE                             R10 R7
       42 CALL                             R8 2 1
       43 GETTABLEKS                       R10 R3 K11 ["length"]
       45 GETTABLEKS                       R11 R3 K11 ["length"]
       47 GETTABLEKS                       R12 R3 K11 ["length"]
       49 FASTCALL                         VECTOR ; [+2]
       50 GETIMPORT                        R9 K14 [Vector3.new]
       52 CALL                             R9 3 1
       53 GETIMPORT                        R10 K17 [table.freeze]
       55 DUPTABLE                         R11 K23 [{"matrix", "size", "hit", "type", "color"}]
       56 SETTABLEKS                       R7 R11 K18 ["matrix"]
       58 MOVE                             R14 R9
       59 NAMECALL                         R12 R8 K24 ["Min"]
       61 CALL                             R12 2 1
       62 SETTABLEKS                       R12 R11 K19 ["size"]
       64 SETTABLEKS                       R4 R11 K20 ["hit"]
       66 GETUPVAL                         R13 2
       67 GETTABLEKS                       R12 R13 K25 ["Polygon"]
       69 SETTABLEKS                       R12 R11 K21 ["type"]
       71 GETTABLEKS                       R12 R0 K26 ["Color"]
       73 SETTABLEKS                       R12 R11 K22 ["color"]
       75 CALL                             R10 1 -1
       76 RETURN                           R10 -1
       77 GETUPVAL                         R4 3
       78 MOVE                             R5 R0
       79 MOVE                             R6 R1
       80 MOVE                             R7 R2
       81 CALL                             R4 3 -1
       82 RETURN                           R4 -1

PROTO_17:
        0 GETTABLEKS                       R3 R1 K0 ["Position"]
        2 GETTABLEKS                       R4 R1 K1 ["Normal"]
        4 GETUPVAL                         R5 0
        5 MOVE                             R6 R4
        6 CALL                             R5 1 3
        7 JUMPIFNOT                        R2 ; [+9]
        8 GETUPVAL                         R8 1
        9 MOVE                             R9 R3
       10 MOVE                             R10 R4
       11 MOVE                             R11 R2
       12 GETIMPORT                        R12 K4 [CFrame.new]
       14 CALL                             R12 0 -1
       15 CALL                             R8 -1 1
       16 MOVE                             R3 R8
       17 GETIMPORT                        R8 K7 [table.freeze]
       19 DUPTABLE                         R9 K13 [{"matrix", "size", "hit", "type", "color"}]
       20 GETIMPORT                        R10 K15 [CFrame.fromMatrix]
       22 MOVE                             R11 R3
       23 MOVE                             R15 R6
       24 NAMECALL                         R13 R4 K16 ["Cross"]
       26 CALL                             R13 2 1
       27 GETTABLEKS                       R12 R13 K17 ["Unit"]
       29 MOVE                             R13 R4
       30 CALL                             R10 3 1
       31 SETTABLEKS                       R10 R9 K8 ["matrix"]
       33 LOADK                            R10 K18 [{0, 0, 0}]
       34 SETTABLEKS                       R10 R9 K9 ["size"]
       36 SETTABLEKS                       R3 R9 K10 ["hit"]
       38 GETUPVAL                         R11 2
       39 GETTABLEKS                       R10 R11 K19 ["Terrain"]
       41 SETTABLEKS                       R10 R9 K11 ["type"]
       43 GETTABLEKS                       R11 R1 K20 ["Material"]
       45 GETIMPORT                        R12 K23 [Enum.Material.Water]
       47 JUMPIFNOTEQ                      R11 R12 ; [+3]
       49 GETUPVAL                         R10 3
       50 JUMP                             ; [+5]
       51 GETTABLEKS                       R12 R1 K20 ["Material"]
       53 NAMECALL                         R10 R0 K24 ["GetMaterialColor"]
       55 CALL                             R10 2 1
       56 SETTABLEKS                       R10 R9 K12 ["color"]
       58 CALL                             R8 1 -1
       59 RETURN                           R8 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["HasInternalPermission"]
        5 CALL                             R0 1 1
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETIMPORT                        R0 K2 [warn]
        9 LOADK                            R1 K3 ["Dragger encountered unhandled geometry type, report this to the Studio Builder Tools team."]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R3 R1 K0 ["Position"]
        2 GETTABLEKS                       R4 R1 K1 ["Normal"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["getClosestFace"]
        7 MOVE                             R6 R0
        8 MOVE                             R7 R3
        9 CALL                             R5 2 2
       10 LOADNIL                          R7
       11 LOADK                            R8 K3 [∞]
       12 GETTABLEKS                       R9 R6 K4 ["edges"]
       14 LOADNIL                          R10
       15 LOADNIL                          R11
       16 FORGPREP                         R9
       17 GETTABLEKS                       R15 R13 K5 ["a"]
       19 GETTABLEKS                       R16 R5 K6 ["point"]
       21 SUB                              R14 R15 R16
       22 MOVE                             R16 R4
       23 NAMECALL                         R14 R14 K7 ["Dot"]
       25 CALL                             R14 2 1
       26 LOADK                            R15 K8 [0.001]
       27 JUMPIFNOTLT                      R14 R15 ; [+34]
       29 GETTABLEKS                       R15 R13 K9 ["b"]
       31 GETTABLEKS                       R16 R5 K6 ["point"]
       33 SUB                              R14 R15 R16
       34 MOVE                             R16 R4
       35 NAMECALL                         R14 R14 K7 ["Dot"]
       37 CALL                             R14 2 1
       38 LOADK                            R15 K8 [0.001]
       39 JUMPIFNOTLT                      R14 R15 ; [+22]
       41 GETTABLEKS                       R15 R13 K5 ["a"]
       43 SUB                              R14 R3 R15
       44 GETTABLEKS                       R16 R13 K10 ["direction"]
       46 NAMECALL                         R14 R14 K7 ["Dot"]
       48 CALL                             R14 2 1
       49 GETTABLEKS                       R16 R13 K5 ["a"]
       51 GETTABLEKS                       R18 R13 K10 ["direction"]
       53 MUL                              R17 R18 R14
       54 ADD                              R15 R16 R17
       55 SUB                              R17 R3 R15
       56 GETTABLEKS                       R16 R17 K11 ["Magnitude"]
       58 JUMPIFNOTLT                      R16 R8 ; [+3]
       60 MOVE                             R8 R16
       61 MOVE                             R7 R13
       62 FORGLOOP                         R9 2 ; [-46]
       64 JUMPIFNOT                        R7 ; [+31]
       65 LOADNIL                          R9
       66 GETTABLEKS                       R12 R7 K5 ["a"]
       68 SUB                              R11 R12 R3
       69 GETTABLEKS                       R10 R11 K11 ["Magnitude"]
       71 GETTABLEKS                       R13 R7 K9 ["b"]
       73 SUB                              R12 R13 R3
       74 GETTABLEKS                       R11 R12 K11 ["Magnitude"]
       76 JUMPIFNOTLT                      R10 R11 ; [+4]
       78 GETTABLEKS                       R9 R7 K5 ["a"]
       80 JUMP                             ; [+2]
       81 GETTABLEKS                       R9 R7 K9 ["b"]
       83 GETUPVAL                         R10 1
       84 MOVE                             R11 R0
       85 MOVE                             R12 R3
       86 GETUPVAL                         R14 2
       87 GETTABLEKS                       R13 R14 K12 ["Polygon"]
       89 MOVE                             R14 R9
       90 LOADNIL                          R15
       91 MOVE                             R16 R4
       92 GETTABLEKS                       R17 R7 K10 ["direction"]
       94 CALL                             R10 7 -1
       95 RETURN                           R10 -1
       96 GETUPVAL                         R9 3
       97 JUMPIFNOT                        R9 ; [+9]
       98 GETUPVAL                         R9 3
       99 NAMECALL                         R9 R9 K13 ["HasInternalPermission"]
      101 CALL                             R9 1 1
      102 JUMPIFNOT                        R9 ; [+4]
      103 GETIMPORT                        R9 K15 [warn]
      105 LOADK                            R10 K16 ["Dragger encountered unhandled geometry type, report this to the Studio Builder Tools team."]
      106 CALL                             R9 1 0
      107 GETUPVAL                         R9 4
      108 MOVE                             R10 R0
      109 MOVE                             R11 R1
      110 CALL                             R9 2 -1
      111 RETURN                           R9 -1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["intersectRayPlane"]
        3 GETTABLEKS                       R3 R1 K1 ["Origin"]
        5 GETTABLEKS                       R4 R1 K2 ["Direction"]
        7 GETTABLEKS                       R5 R0 K3 ["Position"]
        9 GETTABLEKS                       R6 R0 K4 ["UpVector"]
       11 CALL                             R2 4 1
       12 GETIMPORT                        R3 K7 [table.freeze]
       14 DUPTABLE                         R4 K13 [{"matrix", "size", "hit", "type", "color"}]
       15 SETTABLEKS                       R0 R4 K8 ["matrix"]
       17 LOADK                            R5 K14 [{0, 0, 0}]
       18 SETTABLEKS                       R5 R4 K9 ["size"]
       20 GETTABLEKS                       R6 R1 K1 ["Origin"]
       22 GETTABLEKS                       R8 R1 K2 ["Direction"]
       24 MUL                              R7 R8 R2
       25 ADD                              R5 R6 R7
       26 SETTABLEKS                       R5 R4 K10 ["hit"]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R5 R6 K15 ["Nothing"]
       31 SETTABLEKS                       R5 R4 K11 ["type"]
       33 GETIMPORT                        R5 K18 [Color3.new]
       35 LOADN                            R6 1
       36 LOADN                            R7 1
       37 LOADN                            R8 1
       38 CALL                             R5 3 1
       39 SETTABLEKS                       R5 R4 K12 ["color"]
       41 CALL                             R3 1 -1
       42 RETURN                           R3 -1

PROTO_21:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R4 R1 K0 ["Instance"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R4
        5 GETUPVAL                         R5 0
        6 CALL                             R5 0 1
        7 JUMPIFNOT                        R5 ; [+7]
        8 JUMPIF                           R4 ; [+6]
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETUPVAL                         R5 1
       11 MOVE                             R6 R2
       12 MOVE                             R7 R0
       13 CALL                             R5 2 -1
       14 RETURN                           R5 -1
       15 GETUPVAL                         R5 2
       16 MOVE                             R6 R1
       17 CALL                             R5 1 1
       18 JUMPIF                           R5 ; [+2]
       19 LOADNIL                          R5
       20 RETURN                           R5 1
       21 JUMPIFNOT                        R4 ; [+11]
       22 LOADK                            R7 K1 ["Terrain"]
       23 NAMECALL                         R5 R4 K2 ["IsA"]
       25 CALL                             R5 2 1
       26 JUMPIFNOT                        R5 ; [+6]
       27 GETUPVAL                         R5 3
       28 MOVE                             R6 R4
       29 MOVE                             R7 R1
       30 MOVE                             R8 R3
       31 CALL                             R5 3 -1
       32 RETURN                           R5 -1
       33 JUMPIFNOT                        R4 ; [+94]
       34 LOADK                            R7 K3 ["TriangleMeshPart"]
       35 NAMECALL                         R5 R4 K2 ["IsA"]
       37 CALL                             R5 2 1
       38 JUMPIFNOT                        R5 ; [+6]
       39 GETUPVAL                         R5 4
       40 MOVE                             R6 R4
       41 MOVE                             R7 R1
       42 MOVE                             R8 R3
       43 CALL                             R5 3 -1
       44 RETURN                           R5 -1
       45 LOADK                            R7 K4 ["FormFactorPart"]
       46 NAMECALL                         R5 R4 K2 ["IsA"]
       48 CALL                             R5 2 1
       49 JUMPIFNOT                        R5 ; [+41]
       50 LOADK                            R7 K5 ["WedgePart"]
       51 NAMECALL                         R5 R4 K2 ["IsA"]
       53 CALL                             R5 2 1
       54 JUMPIFNOT                        R5 ; [+6]
       55 GETUPVAL                         R5 5
       56 MOVE                             R6 R4
       57 MOVE                             R7 R1
       58 MOVE                             R8 R3
       59 CALL                             R5 3 -1
       60 RETURN                           R5 -1
       61 GETTABLEKS                       R5 R4 K6 ["Shape"]
       63 GETIMPORT                        R6 K10 [Enum.PartType.Ball]
       65 JUMPIFNOTEQ                      R5 R6 ; [+7]
       67 GETUPVAL                         R5 6
       68 MOVE                             R6 R4
       69 MOVE                             R7 R1
       70 MOVE                             R8 R3
       71 CALL                             R5 3 -1
       72 RETURN                           R5 -1
       73 GETTABLEKS                       R5 R4 K6 ["Shape"]
       75 GETIMPORT                        R6 K12 [Enum.PartType.Cylinder]
       77 JUMPIFNOTEQ                      R5 R6 ; [+7]
       79 GETUPVAL                         R5 7
       80 MOVE                             R6 R4
       81 MOVE                             R7 R1
       82 MOVE                             R8 R3
       83 CALL                             R5 3 -1
       84 RETURN                           R5 -1
       85 GETUPVAL                         R5 5
       86 MOVE                             R6 R4
       87 MOVE                             R7 R1
       88 MOVE                             R8 R3
       89 CALL                             R5 3 -1
       90 RETURN                           R5 -1
       91 LOADK                            R7 K13 ["CornerWedgePart"]
       92 NAMECALL                         R5 R4 K2 ["IsA"]
       94 CALL                             R5 2 1
       95 JUMPIF                           R5 ; [+10]
       96 LOADK                            R7 K14 ["TrussPart"]
       97 NAMECALL                         R5 R4 K2 ["IsA"]
       99 CALL                             R5 2 1
      100 JUMPIF                           R5 ; [+5]
      101 LOADK                            R7 K15 ["VehicleSeat"]
      102 NAMECALL                         R5 R4 K2 ["IsA"]
      104 CALL                             R5 2 1
      105 JUMPIFNOT                        R5 ; [+6]
      106 GETUPVAL                         R5 5
      107 MOVE                             R6 R4
      108 MOVE                             R7 R1
      109 MOVE                             R8 R3
      110 CALL                             R5 3 -1
      111 RETURN                           R5 -1
      112 GETUPVAL                         R5 8
      113 JUMPIFNOT                        R5 ; [+9]
      114 GETUPVAL                         R5 8
      115 NAMECALL                         R5 R5 K16 ["HasInternalPermission"]
      117 CALL                             R5 1 1
      118 JUMPIFNOT                        R5 ; [+4]
      119 GETIMPORT                        R5 K18 [warn]
      121 LOADK                            R6 K19 ["Dragger encountered unhandled geometry type, report this to the Studio Builder Tools team."]
      122 CALL                             R5 1 0
      123 GETUPVAL                         R5 9
      124 MOVE                             R6 R4
      125 MOVE                             R7 R1
      126 CALL                             R5 2 -1
      127 RETURN                           R5 -1
      128 GETUPVAL                         R5 0
      129 CALL                             R5 0 1
      130 JUMPIF                           R5 ; [+6]
      131 JUMPIFNOT                        R2 ; [+5]
      132 GETUPVAL                         R5 1
      133 MOVE                             R6 R2
      134 MOVE                             R7 R0
      135 CALL                             R5 2 -1
      136 RETURN                           R5 -1
      137 LOADNIL                          R5
      138 RETURN                           R5 1

PROTO_22:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 GETIMPORT                        R6 K2 [RaycastParams.new]
        5 CALL                             R6 0 1
        6 LOADB                            R7 1
        7 SETTABLEKS                       R7 R6 K3 ["BruteForceAllSlow"]
        9 GETUPVAL                         R7 0
       10 SETTABLEKS                       R7 R6 K4 ["CollisionGroup"]
       12 SETTABLEKS                       R1 R6 K5 ["FilterDescendantsInstances"]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R9 R0 K6 ["Origin"]
       17 GETTABLEKS                       R10 R0 K7 ["Direction"]
       19 MOVE                             R11 R6
       20 NAMECALL                         R7 R7 K8 ["Raycast"]
       22 CALL                             R7 4 1
       23 JUMPIFNOT                        R7 ; [+6]
       24 GETTABLEKS                       R3 R7 K9 ["Instance"]
       26 GETTABLEKS                       R4 R7 K10 ["Position"]
       28 GETTABLEKS                       R5 R7 K11 ["Normal"]
       30 JUMPIFNOT                        R3 ; [+75]
       31 LOADK                            R10 K12 ["Terrain"]
       32 NAMECALL                         R8 R3 K13 ["IsA"]
       34 CALL                             R8 2 1
       35 JUMPIFNOT                        R8 ; [+70]
       36 GETUPVAL                         R8 2
       37 MOVE                             R9 R5
       38 CALL                             R8 1 3
       39 MOVE                             R13 R9
       40 NAMECALL                         R11 R4 K14 ["Dot"]
       42 CALL                             R11 2 1
       43 MOVE                             R14 R10
       44 NAMECALL                         R12 R4 K14 ["Dot"]
       46 CALL                             R12 2 1
       47 DIVK                             R18 R11 K15 [4]
       48 ADDK                             R17 R18 K16 [0.5]
       49 FASTCALL1                        MATH_FLOOR R17 ; [+2]
       50 GETIMPORT                        R16 K19 [math.floor]
       52 CALL                             R16 1 1
       53 MULK                             R15 R16 K15 [4]
       54 MUL                              R14 R9 R15
       55 DIVK                             R19 R12 K15 [4]
       56 ADDK                             R18 R19 K16 [0.5]
       57 FASTCALL1                        MATH_FLOOR R18 ; [+2]
       58 GETIMPORT                        R17 K19 [math.floor]
       60 CALL                             R17 1 1
       61 MULK                             R16 R17 K15 [4]
       62 MUL                              R15 R10 R16
       63 ADD                              R13 R14 R15
       64 MOVE                             R18 R5
       65 NAMECALL                         R16 R4 K14 ["Dot"]
       67 CALL                             R16 2 1
       68 MOVE                             R19 R5
       69 NAMECALL                         R17 R13 K14 ["Dot"]
       71 CALL                             R17 2 1
       72 SUB                              R15 R16 R17
       73 MOVE                             R18 R5
       74 NAMECALL                         R16 R8 K14 ["Dot"]
       76 CALL                             R16 2 1
       77 DIV                              R14 R15 R16
       78 MUL                              R16 R8 R14
       79 ADD                              R15 R13 R16
       80 GETIMPORT                        R16 K22 [CFrame.fromMatrix]
       82 MOVE                             R17 R15
       83 MOVE                             R21 R9
       84 NAMECALL                         R19 R5 K23 ["Cross"]
       86 CALL                             R19 2 1
       87 GETTABLEKS                       R18 R19 K24 ["Unit"]
       89 MOVE                             R19 R5
       90 CALL                             R16 3 1
       91 MOVE                             R17 R4
       92 GETUPVAL                         R19 3
       93 GETTABLEKS                       R18 R19 K12 ["Terrain"]
       95 GETUPVAL                         R20 4
       96 CALL                             R20 0 1
       97 JUMPIFNOT                        R20 ; [+6]
       98 GETTABLEKS                       R21 R7 K25 ["Material"]
      100 NAMECALL                         R19 R3 K26 ["GetMaterialColor"]
      102 CALL                             R19 2 1
      103 RETURN                           R16 4
      104 LOADNIL                          R19
      105 RETURN                           R16 4
      106 JUMPIFNOT                        R3 ; [+141]
      107 GETUPVAL                         R9 5
      108 GETTABLEKS                       R8 R9 K27 ["getClosestFace"]
      110 MOVE                             R9 R3
      111 MOVE                             R10 R4
      112 CALL                             R8 2 2
      113 GETTABLEKS                       R10 R8 K28 ["normal"]
      115 LOADNIL                          R11
      116 LOADK                            R12 K29 [∞]
      117 GETIMPORT                        R13 K31 [ipairs]
      119 GETTABLEKS                       R14 R9 K32 ["edges"]
      121 CALL                             R13 1 3
      122 FORGPREP_INEXT                   R13
      123 GETTABLEKS                       R19 R17 K33 ["a"]
      125 GETTABLEKS                       R20 R8 K34 ["point"]
      127 SUB                              R18 R19 R20
      128 MOVE                             R20 R10
      129 NAMECALL                         R18 R18 K14 ["Dot"]
      131 CALL                             R18 2 1
      132 LOADK                            R19 K35 [0.001]
      133 JUMPIFNOTLT                      R18 R19 ; [+35]
      135 GETTABLEKS                       R19 R17 K36 ["b"]
      137 GETTABLEKS                       R20 R8 K34 ["point"]
      139 SUB                              R18 R19 R20
      140 MOVE                             R20 R10
      141 NAMECALL                         R18 R18 K14 ["Dot"]
      143 CALL                             R18 2 1
      144 LOADK                            R19 K35 [0.001]
      145 JUMPIFNOTLT                      R18 R19 ; [+23]
      147 GETTABLEKS                       R19 R17 K33 ["a"]
      149 SUB                              R18 R4 R19
      150 GETTABLEKS                       R20 R17 K37 ["direction"]
      152 NAMECALL                         R18 R18 K14 ["Dot"]
      154 CALL                             R18 2 1
      155 GETTABLEKS                       R20 R17 K33 ["a"]
      157 GETTABLEKS                       R22 R17 K37 ["direction"]
      159 MUL                              R21 R22 R18
      160 ADD                              R19 R20 R21
      161 SUB                              R21 R4 R19
      162 GETTABLEKS                       R20 R21 K38 ["Magnitude"]
      164 JUMPIFNOTLT                      R20 R12 ; [+4]
      166 MOVE                             R12 R20
      167 GETTABLEKS                       R11 R17 K37 ["direction"]
      169 FORGLOOP                         R13 2 [inext] ; [-47]
      171 LOADNIL                          R13
      172 LOADK                            R14 K29 [∞]
      173 GETIMPORT                        R15 K31 [ipairs]
      175 GETTABLEKS                       R16 R8 K39 ["vertices"]
      177 CALL                             R15 1 3
      178 FORGPREP_INEXT                   R15
      179 SUB                              R21 R19 R4
      180 GETTABLEKS                       R20 R21 K38 ["Magnitude"]
      182 JUMPIFNOTLT                      R20 R14 ; [+3]
      184 MOVE                             R14 R20
      185 MOVE                             R13 R19
      186 FORGLOOP                         R15 2 [inext] ; [-8]
      188 GETUPVAL                         R16 3
      189 GETTABLEKS                       R15 R16 K40 ["Polygon"]
      191 JUMPIF                           R11 ; [+39]
      192 GETUPVAL                         R16 3
      193 GETTABLEKS                       R15 R16 K41 ["Round"]
      195 GETUPVAL                         R16 6
      196 CALL                             R16 0 1
      197 JUMPIFNOT                        R16 ; [+27]
      198 LOADK                            R18 K42 [{1, 1, 1}]
      199 NAMECALL                         R16 R10 K23 ["Cross"]
      201 CALL                             R16 2 1
      202 GETTABLEKS                       R17 R16 K38 ["Magnitude"]
      204 LOADK                            R18 K43 [1E-05]
      205 JUMPIFNOTLT                      R17 R18 ; [+16]
      207 LOADK                            R19 K44 [{1, 0, 0}]
      208 NAMECALL                         R17 R10 K23 ["Cross"]
      210 CALL                             R17 2 1
      211 MOVE                             R16 R17
      212 GETTABLEKS                       R17 R16 K38 ["Magnitude"]
      214 LOADK                            R18 K43 [1E-05]
      215 JUMPIFNOTLT                      R17 R18 ; [+6]
      217 LOADK                            R19 K45 [{0, 1, 0}]
      218 NAMECALL                         R17 R10 K23 ["Cross"]
      220 CALL                             R17 2 1
      221 MOVE                             R16 R17
      222 GETTABLEKS                       R11 R16 K24 ["Unit"]
      224 JUMP                             ; [+6]
      225 LOADK                            R18 K42 [{1, 1, 1}]
      226 NAMECALL                         R16 R10 K23 ["Cross"]
      228 CALL                             R16 2 1
      229 GETTABLEKS                       R11 R16 K24 ["Unit"]
      231 JUMPIF                           R13 ; [+1]
      232 MOVE                             R13 R4
      233 GETIMPORT                        R16 K22 [CFrame.fromMatrix]
      235 MOVE                             R17 R13
      236 MOVE                             R21 R10
      237 NAMECALL                         R19 R11 K23 ["Cross"]
      239 CALL                             R19 2 1
      240 MINUS                            R18 R19
      241 MOVE                             R19 R10
      242 CALL                             R16 3 1
      243 MOVE                             R17 R4
      244 MOVE                             R18 R15
      245 GETTABLEKS                       R19 R3 K46 ["Color"]
      247 RETURN                           R16 4
      248 JUMPIFNOT                        R2 ; [+30]
      249 GETUPVAL                         R9 7
      250 GETTABLEKS                       R8 R9 K47 ["intersectRayPlane"]
      252 GETTABLEKS                       R9 R0 K6 ["Origin"]
      254 GETTABLEKS                       R10 R0 K7 ["Direction"]
      256 GETTABLEKS                       R11 R2 K10 ["Position"]
      258 GETTABLEKS                       R12 R2 K48 ["UpVector"]
      260 CALL                             R8 4 1
      261 GETTABLEKS                       R9 R0 K6 ["Origin"]
      263 GETTABLEKS                       R11 R0 K7 ["Direction"]
      265 MUL                              R10 R11 R8
      266 ADD                              R4 R9 R10
      267 MOVE                             R9 R2
      268 MOVE                             R10 R4
      269 GETUPVAL                         R12 3
      270 GETTABLEKS                       R11 R12 K49 ["Nothing"]
      272 GETIMPORT                        R12 K51 [Color3.new]
      274 LOADN                            R13 1
      275 LOADN                            R14 1
      276 LOADN                            R15 1
      277 CALL                             R12 3 -1
      278 RETURN                           R9 -1
      279 LOADNIL                          R8
      280 RETURN                           R8 1

PROTO_23:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 CALL                             R0 0 1
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["getSurfaceMatrixNEW"]
        7 GETVARARGS                       R1 -1
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K1 ["getSurfaceMatrixOLD"]
       13 GETVARARGS                       R1 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_24:
        0 LOADNIL                          R10
        1 LOADNIL                          R11
        2 LOADNIL                          R12
        3 GETUPVAL                         R13 0
        4 CALL                             R13 0 1
        5 JUMPIFNOT                        R13 ; [+19]
        6 GETUPVAL                         R14 1
        7 GETTABLEKS                       R13 R14 K0 ["getSurfaceMatrix"]
        9 MOVE                             R14 R1
       10 GETUPVAL                         R16 1
       11 GETTABLEKS                       R15 R16 K1 ["raycast"]
       13 MOVE                             R16 R1
       14 MOVE                             R17 R2
       15 CALL                             R15 2 1
       16 MOVE                             R16 R4
       17 MOVE                             R17 R8
       18 CALL                             R13 4 1
       19 JUMPIFNOT                        R13 ; [+15]
       20 GETTABLEKS                       R10 R13 K2 ["matrix"]
       22 GETTABLEKS                       R12 R13 K3 ["type"]
       24 JUMP                             ; [+10]
       25 GETUPVAL                         R14 1
       26 GETTABLEKS                       R13 R14 K0 ["getSurfaceMatrix"]
       28 MOVE                             R14 R1
       29 MOVE                             R15 R2
       30 MOVE                             R16 R4
       31 CALL                             R13 3 3
       32 MOVE                             R10 R13
       33 MOVE                             R11 R14
       34 MOVE                             R12 R15
       35 JUMPIF                           R10 ; [+1]
       36 RETURN                           R5 1
       37 GETIMPORT                        R13 K6 [CFrame.identity]
       39 JUMPIF                           R9 ; [+12]
       40 NAMECALL                         R14 R10 K7 ["Inverse"]
       42 CALL                             R14 1 1
       43 MUL                              R13 R14 R3
       44 JUMPIFNOT                        R7 ; [+5]
       45 GETUPVAL                         R14 2
       46 MOVE                             R15 R13
       47 CALL                             R14 1 1
       48 MOVE                             R13 R14
       49 JUMP                             ; [+2]
       50 GETTABLEKS                       R13 R13 K8 ["Rotation"]
       52 MUL                              R14 R10 R13
       53 LOADNIL                          R15
       54 LOADK                            R16 K9 [{0, 1, 0}]
       55 JUMPIFNOTEQ                      R6 R16 ; [+4]
       57 GETTABLEKS                       R15 R10 K10 ["UpVector"]
       59 JUMP                             ; [+5]
       60 MOVE                             R18 R6
       61 NAMECALL                         R16 R0 K11 ["VectorToWorldSpace"]
       63 CALL                             R16 2 1
       64 MOVE                             R15 R16
       65 LOADNIL                          R16
       66 LOADK                            R17 K12 [-∞]
       67 GETIMPORT                        R18 K14 [ipairs]
       69 GETUPVAL                         R19 3
       70 CALL                             R18 1 3
       71 FORGPREP_INEXT                   R18
       72 MOVE                             R25 R22
       73 NAMECALL                         R23 R14 K11 ["VectorToWorldSpace"]
       75 CALL                             R23 2 1
       76 MOVE                             R25 R15
       77 NAMECALL                         R23 R23 K15 ["Dot"]
       79 CALL                             R23 2 1
       80 JUMPIFNOTLT                      R17 R23 ; [+3]
       82 MOVE                             R16 R22
       83 MOVE                             R17 R23
       84 FORGLOOP                         R18 2 [inext] ; [-13]
       86 ORK                              R16 R16 K9 [{0, 1, 0}]
       87 GETUPVAL                         R18 4
       88 GETIMPORT                        R19 K17 [CFrame.fromAxisAngle]
       90 MOVE                             R20 R16
       91 LOADK                            R21 K18 [1.5707963267949]
       92 CALL                             R19 2 -1
       93 CALL                             R18 -1 1
       94 MUL                              R19 R18 R5
       95 MOVE                             R20 R12
       96 RETURN                           R19 2

PROTO_25:
        0 LOADK                            R4 K0 [∞]
        1 LOADNIL                          R5
        2 LOADN                            R8 255
        3 LOADN                            R6 1
        4 LOADN                            R7 1
        5 FORNPREP                         R6
        6 MUL                              R10 R8 R1
        7 ADD                              R9 R0 R10
        8 LOADN                            R12 255
        9 LOADN                            R10 1
       10 LOADN                            R11 1
       11 FORNPREP                         R10
       12 MUL                              R14 R12 R3
       13 ADD                              R13 R2 R14
       14 SUB                              R14 R9 R13
       15 FASTCALL1                        MATH_ABS R14 ; [+3]
       16 MOVE                             R16 R14
       17 GETIMPORT                        R15 K3 [math.abs]
       19 CALL                             R15 1 1
       20 FASTCALL1                        MATH_ABS R4 ; [+3]
       21 MOVE                             R17 R4
       22 GETIMPORT                        R16 K3 [math.abs]
       24 CALL                             R16 1 1
       25 JUMPIFNOTLT                      R15 R16 ; [+3]
       27 MOVE                             R4 R14
       28 MOVE                             R5 R13
       29 FORNLOOP                         R10
       30 FORNLOOP                         R6
       31 RETURN                           R4 2

PROTO_26:
        0 GETIMPORT                        R2 K1 [workspace]
        2 GETTABLEKS                       R1 R2 K2 ["CurrentCamera"]
        4 GETTABLEKS                       R2 R1 K3 ["CFrame"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R2 R2 K4 ["PointToObjectSpace"]
        9 CALL                             R2 2 1
       10 GETTABLEKS                       R5 R1 K5 ["FieldOfView"]
       12 FASTCALL1                        MATH_RAD R5 ; [+2]
       13 GETIMPORT                        R4 K8 [math.rad]
       15 CALL                             R4 1 1
       16 FASTCALL1                        MATH_SIN R4 ; [+2]
       17 GETIMPORT                        R3 K10 [math.sin]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R7 R2 K12 ["Z"]
       22 MINUS                            R6 R7
       23 MUL                              R5 R3 R6
       24 MULK                             R4 R5 K11 [0.02]
       25 RETURN                           R4 1

PROTO_27:
        0 JUMPIFNOT                        R0 ; [+40]
        1 JUMPIFNOT                        R1 ; [+39]
        2 FASTCALL1                        MATH_ABS R0 ; [+3]
        3 MOVE                             R5 R0
        4 GETIMPORT                        R4 K2 [math.abs]
        6 CALL                             R4 1 1
        7 FASTCALL1                        MATH_ABS R1 ; [+3]
        8 MOVE                             R6 R1
        9 GETIMPORT                        R5 K2 [math.abs]
       11 CALL                             R5 1 1
       12 SUB                              R3 R4 R5
       13 FASTCALL1                        MATH_ABS R3 ; [+2]
       14 GETIMPORT                        R2 K2 [math.abs]
       16 CALL                             R2 1 1
       17 LOADK                            R3 K3 [0.01]
       18 JUMPIFNOTLT                      R2 R3 ; [+4]
       20 MOVE                             R2 R0
       21 LOADK                            R3 K4 ["grid"]
       22 RETURN                           R2 2
       23 FASTCALL1                        MATH_ABS R0 ; [+3]
       24 MOVE                             R3 R0
       25 GETIMPORT                        R2 K2 [math.abs]
       27 CALL                             R2 1 1
       28 FASTCALL1                        MATH_ABS R1 ; [+3]
       29 MOVE                             R4 R1
       30 GETIMPORT                        R3 K2 [math.abs]
       32 CALL                             R3 1 1
       33 JUMPIFNOTLT                      R2 R3 ; [+4]
       35 MOVE                             R2 R0
       36 LOADK                            R3 K4 ["grid"]
       37 RETURN                           R2 2
       38 MOVE                             R2 R1
       39 LOADK                            R3 K5 ["soft"]
       40 RETURN                           R2 2
       41 JUMPIFNOT                        R0 ; [+3]
       42 MOVE                             R2 R0
       43 LOADK                            R3 K4 ["grid"]
       44 RETURN                           R2 2
       45 JUMPIFNOT                        R1 ; [+3]
       46 MOVE                             R2 R1
       47 LOADK                            R3 K5 ["soft"]
       48 RETURN                           R2 2
       49 LOADN                            R2 0
       50 LOADK                            R3 K6 ["none"]
       51 RETURN                           R2 2

PROTO_28:
        0 LOADNIL                          R9
        1 LOADNIL                          R10
        2 JUMPIFNOT                        R6 ; [+29]
        3 GETUPVAL                         R12 0
        4 GETTABLEKS                       R11 R12 K0 ["Sphere"]
        6 JUMPIFEQ                         R2 R11 ; [+25]
        8 GETTABLEKS                       R15 R4 K2 ["X"]
       10 DIV                              R14 R15 R6
       11 ADDK                             R13 R14 K1 [0.5]
       12 FASTCALL1                        MATH_FLOOR R13 ; [+2]
       13 GETIMPORT                        R12 K5 [math.floor]
       15 CALL                             R12 1 1
       16 MUL                              R11 R12 R6
       17 GETTABLEKS                       R12 R4 K2 ["X"]
       19 SUB                              R9 R11 R12
       20 GETTABLEKS                       R15 R4 K6 ["Z"]
       22 DIV                              R14 R15 R6
       23 ADDK                             R13 R14 K1 [0.5]
       24 FASTCALL1                        MATH_FLOOR R13 ; [+2]
       25 GETIMPORT                        R12 K5 [math.floor]
       27 CALL                             R12 1 1
       28 MUL                              R11 R12 R6
       29 GETTABLEKS                       R12 R4 K6 ["Z"]
       31 SUB                              R10 R11 R12
       32 LOADNIL                          R11
       33 LOADNIL                          R12
       34 LOADNIL                          R13
       35 LOADNIL                          R14
       36 JUMPIFNOT                        R7 ; [+173]
       37 GETUPVAL                         R16 0
       38 GETTABLEKS                       R15 R16 K7 ["Polygon"]
       40 JUMPIFNOTEQ                      R2 R15 ; [+164]
       42 GETTABLEKS                       R17 R4 K2 ["X"]
       44 FASTCALL1                        MATH_SIGN R17 ; [+2]
       45 GETIMPORT                        R16 K9 [math.sign]
       47 CALL                             R16 1 1
       48 LOADN                            R17 0
       49 GETTABLEKS                       R19 R4 K6 ["Z"]
       51 FASTCALL1                        MATH_SIGN R19 ; [+2]
       52 GETIMPORT                        R18 K9 [math.sign]
       54 CALL                             R18 1 1
       55 FASTCALL                         VECTOR ; [+2]
       56 GETIMPORT                        R15 K12 [Vector3.new]
       58 CALL                             R15 3 1
       59 MULK                             R17 R15 K1 [0.5]
       60 GETTABLEKS                       R18 R3 K13 ["size"]
       62 MUL                              R16 R17 R18
       63 GETTABLEKS                       R17 R3 K13 ["size"]
       65 ADD                              R18 R4 R5
       66 GETTABLEKS                       R20 R18 K2 ["X"]
       68 LOADN                            R21 0
       69 GETTABLEKS                       R22 R18 K6 ["Z"]
       71 FASTCALL                         VECTOR ; [+2]
       72 GETIMPORT                        R19 K12 [Vector3.new]
       74 CALL                             R19 3 1
       75 GETTABLEKS                       R21 R1 K2 ["X"]
       77 LOADN                            R22 0
       78 GETTABLEKS                       R23 R1 K6 ["Z"]
       80 FASTCALL                         VECTOR ; [+2]
       81 GETIMPORT                        R20 K12 [Vector3.new]
       83 CALL                             R20 3 1
       84 GETTABLEKS                       R23 R3 K14 ["hit"]
       86 GETIMPORT                        R25 K16 [workspace]
       88 GETTABLEKS                       R24 R25 K17 ["CurrentCamera"]
       90 GETTABLEKS                       R25 R24 K18 ["CFrame"]
       92 MOVE                             R27 R23
       93 NAMECALL                         R25 R25 K19 ["PointToObjectSpace"]
       95 CALL                             R25 2 1
       96 GETTABLEKS                       R28 R24 K20 ["FieldOfView"]
       98 FASTCALL1                        MATH_RAD R28 ; [+2]
       99 GETIMPORT                        R27 K22 [math.rad]
      101 CALL                             R27 1 1
      102 FASTCALL1                        MATH_SIN R27 ; [+2]
      103 GETIMPORT                        R26 K24 [math.sin]
      105 CALL                             R26 1 1
      106 GETTABLEKS                       R29 R25 K6 ["Z"]
      108 MINUS                            R28 R29
      109 MUL                              R27 R26 R28
      110 MULK                             R22 R27 K25 [0.02]
      111 MUL                              R21 R22 R8
      112 GETUPVAL                         R22 1
      113 GETTABLEKS                       R23 R19 K2 ["X"]
      115 GETTABLEKS                       R25 R20 K2 ["X"]
      117 MULK                             R24 R25 K1 [0.5]
      118 GETTABLEKS                       R25 R16 K2 ["X"]
      120 GETTABLEKS                       R27 R17 K2 ["X"]
      122 MULK                             R26 R27 K1 [0.5]
      123 CALL                             R22 4 2
      124 FASTCALL1                        MATH_ABS R22 ; [+3]
      125 MOVE                             R25 R22
      126 GETIMPORT                        R24 K27 [math.abs]
      128 CALL                             R24 1 1
      129 JUMPIFNOTLT                      R24 R21 ; [+28]
      131 MINUS                            R11 R22
      132 DUPTABLE                         R24 K30 [{"a", "b"}]
      133 LOADN                            R27 0
      134 LOADN                            R28 0
      135 FASTCALL3                        VECTOR R23 R27 R28
      137 MOVE                             R26 R23
      138 GETIMPORT                        R25 K12 [Vector3.new]
      140 CALL                             R25 3 1
      141 SETTABLEKS                       R25 R24 K28 ["a"]
      143 LOADN                            R27 0
      144 GETTABLEKS                       R29 R15 K6 ["Z"]
      146 GETTABLEKS                       R30 R17 K6 ["Z"]
      148 MUL                              R28 R29 R30
      149 FASTCALL3                        VECTOR R23 R27 R28
      151 MOVE                             R26 R23
      152 GETIMPORT                        R25 K12 [Vector3.new]
      154 CALL                             R25 3 1
      155 SETTABLEKS                       R25 R24 K29 ["b"]
      157 MOVE                             R13 R24
      158 GETUPVAL                         R24 1
      159 GETTABLEKS                       R25 R19 K6 ["Z"]
      161 GETTABLEKS                       R27 R20 K6 ["Z"]
      163 MULK                             R26 R27 K1 [0.5]
      164 GETTABLEKS                       R27 R16 K6 ["Z"]
      166 GETTABLEKS                       R29 R17 K6 ["Z"]
      168 MULK                             R28 R29 K1 [0.5]
      169 CALL                             R24 4 2
      170 FASTCALL1                        MATH_ABS R24 ; [+3]
      171 MOVE                             R27 R24
      172 GETIMPORT                        R26 K27 [math.abs]
      174 CALL                             R26 1 1
      175 JUMPIFNOTLT                      R26 R21 ; [+34]
      177 MINUS                            R12 R24
      178 DUPTABLE                         R26 K30 [{"a", "b"}]
      179 LOADN                            R28 0
      180 LOADN                            R29 0
      181 FASTCALL3                        VECTOR R28 R29 R25
      183 MOVE                             R30 R25
      184 GETIMPORT                        R27 K12 [Vector3.new]
      186 CALL                             R27 3 1
      187 SETTABLEKS                       R27 R26 K28 ["a"]
      189 GETTABLEKS                       R29 R15 K2 ["X"]
      191 GETTABLEKS                       R30 R17 K2 ["X"]
      193 MUL                              R28 R29 R30
      194 LOADN                            R29 0
      195 FASTCALL3                        VECTOR R28 R29 R25
      197 MOVE                             R30 R25
      198 GETIMPORT                        R27 K12 [Vector3.new]
      200 CALL                             R27 3 1
      201 SETTABLEKS                       R27 R26 K29 ["b"]
      203 MOVE                             R14 R26
      204 JUMP                             ; [+5]
      205 GETUPVAL                         R16 0
      206 GETTABLEKS                       R15 R16 K31 ["Cylinder"]
      208 JUMPIFNOTEQ                      R2 R15 ; [+1]
      210 MOVE                             R17 R9
      211 MOVE                             R18 R11
      212 JUMPIFNOT                        R17 ; [+40]
      213 JUMPIFNOT                        R18 ; [+39]
      214 FASTCALL1                        MATH_ABS R17 ; [+3]
      215 MOVE                             R22 R17
      216 GETIMPORT                        R21 K27 [math.abs]
      218 CALL                             R21 1 1
      219 FASTCALL1                        MATH_ABS R18 ; [+3]
      220 MOVE                             R23 R18
      221 GETIMPORT                        R22 K27 [math.abs]
      223 CALL                             R22 1 1
      224 SUB                              R20 R21 R22
      225 FASTCALL1                        MATH_ABS R20 ; [+2]
      226 GETIMPORT                        R19 K27 [math.abs]
      228 CALL                             R19 1 1
      229 LOADK                            R20 K32 [0.01]
      230 JUMPIFNOTLT                      R19 R20 ; [+4]
      232 MOVE                             R15 R17
      233 LOADK                            R16 K33 ["grid"]
      234 JUMP                             ; [+28]
      235 FASTCALL1                        MATH_ABS R17 ; [+3]
      236 MOVE                             R20 R17
      237 GETIMPORT                        R19 K27 [math.abs]
      239 CALL                             R19 1 1
      240 FASTCALL1                        MATH_ABS R18 ; [+3]
      241 MOVE                             R21 R18
      242 GETIMPORT                        R20 K27 [math.abs]
      244 CALL                             R20 1 1
      245 JUMPIFNOTLT                      R19 R20 ; [+4]
      247 MOVE                             R15 R17
      248 LOADK                            R16 K33 ["grid"]
      249 JUMP                             ; [+13]
      250 MOVE                             R15 R18
      251 LOADK                            R16 K34 ["soft"]
      252 JUMP                             ; [+10]
      253 JUMPIFNOT                        R17 ; [+3]
      254 MOVE                             R15 R17
      255 LOADK                            R16 K33 ["grid"]
      256 JUMP                             ; [+6]
      257 JUMPIFNOT                        R18 ; [+3]
      258 MOVE                             R15 R18
      259 LOADK                            R16 K34 ["soft"]
      260 JUMP                             ; [+2]
      261 LOADN                            R15 0
      262 LOADK                            R16 K35 ["none"]
      263 MOVE                             R19 R10
      264 MOVE                             R20 R12
      265 JUMPIFNOT                        R19 ; [+40]
      266 JUMPIFNOT                        R20 ; [+39]
      267 FASTCALL1                        MATH_ABS R19 ; [+3]
      268 MOVE                             R24 R19
      269 GETIMPORT                        R23 K27 [math.abs]
      271 CALL                             R23 1 1
      272 FASTCALL1                        MATH_ABS R20 ; [+3]
      273 MOVE                             R25 R20
      274 GETIMPORT                        R24 K27 [math.abs]
      276 CALL                             R24 1 1
      277 SUB                              R22 R23 R24
      278 FASTCALL1                        MATH_ABS R22 ; [+2]
      279 GETIMPORT                        R21 K27 [math.abs]
      281 CALL                             R21 1 1
      282 LOADK                            R22 K32 [0.01]
      283 JUMPIFNOTLT                      R21 R22 ; [+4]
      285 MOVE                             R17 R19
      286 LOADK                            R18 K33 ["grid"]
      287 JUMP                             ; [+28]
      288 FASTCALL1                        MATH_ABS R19 ; [+3]
      289 MOVE                             R22 R19
      290 GETIMPORT                        R21 K27 [math.abs]
      292 CALL                             R21 1 1
      293 FASTCALL1                        MATH_ABS R20 ; [+3]
      294 MOVE                             R23 R20
      295 GETIMPORT                        R22 K27 [math.abs]
      297 CALL                             R22 1 1
      298 JUMPIFNOTLT                      R21 R22 ; [+4]
      300 MOVE                             R17 R19
      301 LOADK                            R18 K33 ["grid"]
      302 JUMP                             ; [+13]
      303 MOVE                             R17 R20
      304 LOADK                            R18 K34 ["soft"]
      305 JUMP                             ; [+10]
      306 JUMPIFNOT                        R19 ; [+3]
      307 MOVE                             R17 R19
      308 LOADK                            R18 K33 ["grid"]
      309 JUMP                             ; [+6]
      310 JUMPIFNOT                        R20 ; [+3]
      311 MOVE                             R17 R20
      312 LOADK                            R18 K34 ["soft"]
      313 JUMP                             ; [+2]
      314 LOADN                            R17 0
      315 LOADK                            R18 K35 ["none"]
      316 NEWTABLE                         R19 0 0
      318 JUMPIFNOTEQKS                    R16 K34 ["soft"] ; [+8]
      320 FASTCALL2                        TABLE_INSERT R19 R13 ; [+5]
      322 MOVE                             R21 R19
      323 MOVE                             R22 R13
      324 GETIMPORT                        R20 K38 [table.insert]
      326 CALL                             R20 2 0
      327 JUMPIFNOTEQKS                    R18 K34 ["soft"] ; [+8]
      329 FASTCALL2                        TABLE_INSERT R19 R14 ; [+5]
      331 MOVE                             R21 R19
      332 MOVE                             R22 R14
      333 GETIMPORT                        R20 K38 [table.insert]
      335 CALL                             R20 2 0
      336 MOVE                             R20 R19
      337 LOADNIL                          R21
      338 LOADNIL                          R22
      339 FORGPREP                         R20
      340 GETTABLEKS                       R27 R24 K28 ["a"]
      342 GETTABLEKS                       R28 R24 K29 ["b"]
      344 NAMECALL                         R25 R0 K39 ["PointToWorldSpace"]
      346 CALL                             R25 3 2
      347 SETTABLEKS                       R25 R24 K28 ["a"]
      349 SETTABLEKS                       R26 R24 K29 ["b"]
      351 FORGLOOP                         R20 2 ; [-12]
      353 GETIMPORT                        R20 K40 [CFrame.new]
      355 MOVE                             R21 R15
      356 LOADN                            R22 0
      357 MOVE                             R23 R17
      358 CALL                             R20 3 1
      359 MOVE                             R21 R19
      360 RETURN                           R20 2

PROTO_29:
        0 GETUPVAL                         R15 0
        1 GETTABLEKS                       R14 R15 K0 ["raycast"]
        3 MOVE                             R15 R5
        4 MOVE                             R16 R0
        5 CALL                             R14 2 1
        6 GETUPVAL                         R16 0
        7 GETTABLEKS                       R15 R16 K1 ["getSurfaceMatrix"]
        9 MOVE                             R16 R5
       10 MOVE                             R17 R14
       11 MOVE                             R18 R8
       12 MOVE                             R19 R6
       13 CALL                             R15 4 1
       14 JUMPIF                           R15 ; [+1]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R16 R15 K2 ["matrix"]
       18 GETTABLEKS                       R17 R15 K3 ["type"]
       20 GETUPVAL                         R19 1
       21 GETTABLEKS                       R18 R19 K4 ["Terrain"]
       23 JUMPIFNOTEQ                      R17 R18 ; [+3]
       25 JUMPIFNOT                        R10 ; [+1]
       26 LOADB                            R9 0
       27 GETIMPORT                        R18 K7 [CFrame.identity]
       29 JUMPIF                           R13 ; [+12]
       30 NAMECALL                         R19 R16 K8 ["Inverse"]
       32 CALL                             R19 1 1
       33 MUL                              R18 R19 R1
       34 JUMPIFNOT                        R9 ; [+5]
       35 GETUPVAL                         R19 2
       36 MOVE                             R20 R18
       37 CALL                             R19 1 1
       38 MOVE                             R18 R19
       39 JUMP                             ; [+2]
       40 GETTABLEKS                       R18 R18 K9 ["Rotation"]
       42 GETUPVAL                         R20 0
       43 GETTABLEKS                       R19 R20 K10 ["getSizeInSpace"]
       45 MOVE                             R20 R3
       46 MUL                              R21 R18 R7
       47 CALL                             R19 2 1
       48 GETTABLEKS                       R22 R15 K11 ["hit"]
       50 NAMECALL                         R20 R16 K12 ["PointToObjectSpace"]
       52 CALL                             R20 2 1
       53 LOADNIL                          R21
       54 GETUPVAL                         R23 1
       55 GETTABLEKS                       R22 R23 K13 ["Sphere"]
       57 JUMPIFNOTEQ                      R17 R22 ; [+3]
       59 MOVE                             R21 R16
       60 JUMP                             ; [+9]
       61 GETIMPORT                        R22 K15 [CFrame.new]
       63 GETTABLEKS                       R23 R20 K16 ["X"]
       65 LOADN                            R24 0
       66 GETTABLEKS                       R25 R20 K17 ["Z"]
       68 CALL                             R22 3 1
       69 MUL                              R21 R16 R22
       70 GETIMPORT                        R22 K15 [CFrame.new]
       72 MINUS                            R23 R4
       73 CALL                             R22 1 1
       74 NEWTABLE                         R23 0 0
       76 MUL                              R26 R18 R7
       77 GETIMPORT                        R28 K15 [CFrame.new]
       79 MOVE                             R29 R2
       80 CALL                             R28 1 1
       81 MUL                              R27 R22 R28
       82 MUL                              R25 R26 R27
       83 GETTABLEKS                       R24 R25 K18 ["Position"]
       85 LOADNIL                          R25
       86 GETUPVAL                         R26 3
       87 MOVE                             R27 R16
       88 MOVE                             R28 R19
       89 MOVE                             R29 R17
       90 MOVE                             R30 R15
       91 MOVE                             R31 R20
       92 MOVE                             R32 R24
       93 MOVE                             R33 R6
       94 MOVE                             R34 R12
       95 MOVE                             R35 R11
       96 CALL                             R26 9 2
       97 MOVE                             R25 R26
       98 MOVE                             R23 R27
       99 MUL                              R21 R21 R25
      100 NOT                              R26 R10
      101 LOADNIL                          R27
      102 JUMPIFNOT                        R26 ; [+22]
      103 SUB                              R28 R2 R4
      104 MUL                              R29 R18 R7
      105 MOVE                             R31 R28
      106 NAMECALL                         R29 R29 K19 ["VectorToWorldSpace"]
      108 CALL                             R29 2 1
      109 LOADK                            R32 K20 [0.5]
      110 GETTABLEKS                       R33 R19 K21 ["Y"]
      112 MUL                              R31 R32 R33
      113 GETTABLEKS                       R32 R29 K21 ["Y"]
      115 SUB                              R30 R31 R32
      116 GETIMPORT                        R31 K15 [CFrame.new]
      118 LOADN                            R32 0
      119 MOVE                             R33 R30
      120 LOADN                            R34 0
      121 CALL                             R31 3 1
      122 MUL                              R32 R21 R31
      123 MUL                              R27 R32 R18
      124 JUMP                             ; [+1]
      125 MUL                              R27 R21 R18
      126 GETIMPORT                        R28 K24 [table.freeze]
      128 DUPTABLE                         R29 K35 [{"baseCFrame", "offsetCFrame", "mainCFrame", "targetMatrix", "targetPart", "targetSize", "targetColor", "dragTargetType", "mouseWorld", "softSnaps"}]
      129 SETTABLEKS                       R27 R29 K25 ["baseCFrame"]
      131 SETTABLEKS                       R22 R29 K26 ["offsetCFrame"]
      133 MUL                              R31 R27 R7
      134 MUL                              R30 R31 R22
      135 SETTABLEKS                       R30 R29 K27 ["mainCFrame"]
      137 SETTABLEKS                       R16 R29 K28 ["targetMatrix"]
      139 JUMPIFNOT                        R14 ; [+3]
      140 GETTABLEKS                       R30 R14 K36 ["Instance"]
      142 JUMP                             ; [+1]
      143 LOADNIL                          R30
      144 SETTABLEKS                       R30 R29 K29 ["targetPart"]
      146 GETTABLEKS                       R30 R15 K37 ["size"]
      148 SETTABLEKS                       R30 R29 K30 ["targetSize"]
      150 GETTABLEKS                       R30 R15 K38 ["color"]
      152 SETTABLEKS                       R30 R29 K31 ["targetColor"]
      154 SETTABLEKS                       R17 R29 K32 ["dragTargetType"]
      156 GETTABLEKS                       R30 R15 K11 ["hit"]
      158 SETTABLEKS                       R30 R29 K33 ["mouseWorld"]
      160 SETTABLEKS                       R23 R29 K34 ["softSnaps"]
      162 CALL                             R28 1 -1
      163 RETURN                           R28 -1

PROTO_30:
        0 JUMPIF                           R2 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R12 0
        3 GETTABLEKS                       R11 R12 K0 ["getSurfaceMatrix"]
        5 MOVE                             R12 R0
        6 MOVE                             R13 R3
        7 MOVE                             R14 R9
        8 CALL                             R11 3 3
        9 JUMPIF                           R11 ; [+1]
       10 RETURN                           R0 0
       11 NAMECALL                         R15 R11 K1 ["Inverse"]
       13 CALL                             R15 1 1
       14 MUL                              R14 R15 R4
       15 JUMPIFNOT                        R10 ; [+5]
       16 GETUPVAL                         R15 1
       17 MOVE                             R16 R14
       18 CALL                             R15 1 1
       19 MOVE                             R14 R15
       20 JUMP                             ; [+3]
       21 GETTABLEKS                       R15 R14 K2 ["Position"]
       23 SUB                              R14 R14 R15
       24 MOVE                             R16 R1
       25 GETTABLEKS                       R17 R5 K3 ["X"]
       27 CALL                             R16 1 1
       28 GETTABLEKS                       R17 R5 K3 ["X"]
       30 SUB                              R15 R16 R17
       31 MOVE                             R17 R1
       32 GETTABLEKS                       R18 R5 K4 ["Y"]
       34 CALL                             R17 1 1
       35 GETTABLEKS                       R18 R5 K4 ["Y"]
       37 SUB                              R16 R17 R18
       38 MOVE                             R18 R1
       39 GETTABLEKS                       R19 R5 K5 ["Z"]
       41 CALL                             R18 1 1
       42 GETTABLEKS                       R19 R5 K5 ["Z"]
       44 SUB                              R17 R18 R19
       45 FASTCALL3                        VECTOR R15 R16 R17
       47 MOVE                             R19 R15
       48 MOVE                             R20 R16
       49 MOVE                             R21 R17
       50 GETIMPORT                        R18 K8 [Vector3.new]
       52 CALL                             R18 3 1
       53 GETIMPORT                        R19 K10 [CFrame.new]
       55 MOVE                             R20 R18
       56 CALL                             R19 1 1
       57 ADD                              R20 R7 R18
       58 GETUPVAL                         R22 0
       59 GETTABLEKS                       R21 R22 K11 ["getSizeInSpace"]
       61 MOVE                             R22 R6
       62 MUL                              R23 R14 R8
       63 CALL                             R21 2 1
       64 MUL                              R22 R14 R8
       65 MOVE                             R24 R20
       66 NAMECALL                         R22 R22 K12 ["VectorToWorldSpace"]
       68 CALL                             R22 2 1
       69 LOADK                            R25 K13 [0.5]
       70 GETTABLEKS                       R26 R21 K4 ["Y"]
       72 MUL                              R24 R25 R26
       73 GETTABLEKS                       R25 R22 K4 ["Y"]
       75 SUB                              R23 R24 R25
       76 GETIMPORT                        R24 K10 [CFrame.new]
       78 LOADN                            R25 0
       79 MOVE                             R26 R23
       80 LOADN                            R27 0
       81 CALL                             R24 3 1
       82 GETIMPORT                        R25 K10 [CFrame.new]
       84 MOVE                             R26 R2
       85 CALL                             R25 1 1
       86 GETTABLEKS                       R30 R11 K2 ["Position"]
       88 SUB                              R29 R11 R30
       89 MUL                              R28 R29 R14
       90 MUL                              R27 R28 R8
       91 ADD                              R26 R27 R12
       92 NAMECALL                         R29 R11 K1 ["Inverse"]
       94 CALL                             R29 1 1
       95 MUL                              R28 R29 R26
       96 MUL                              R32 R24 R14
       97 MUL                              R31 R32 R8
       98 MUL                              R30 R31 R25
       99 MUL                              R29 R30 R19
      100 NAMECALL                         R29 R29 K14 ["inverse"]
      102 CALL                             R29 1 1
      103 MUL                              R27 R28 R29
      104 GETIMPORT                        R28 K10 [CFrame.new]
      106 MOVE                             R29 R1
      107 GETTABLEKS                       R30 R27 K3 ["X"]
      109 CALL                             R29 1 1
      110 LOADN                            R30 0
      111 MOVE                             R31 R1
      112 GETTABLEKS                       R32 R27 K5 ["Z"]
      114 CALL                             R31 1 -1
      115 CALL                             R28 -1 1
      116 MUL                              R33 R11 R28
      117 MUL                              R32 R33 R24
      118 MUL                              R31 R32 R14
      119 MUL                              R30 R31 R8
      120 MUL                              R29 R30 R19
      121 MUL                              R31 R11 R28
      122 GETTABLEKS                       R30 R31 K2 ["Position"]
      124 DUPTABLE                         R31 K20 [{"mainCFrame", "snapPoint", "targetMatrix", "dragTargetType", "mouseWorld"}]
      125 SETTABLEKS                       R29 R31 K15 ["mainCFrame"]
      127 SETTABLEKS                       R30 R31 K16 ["snapPoint"]
      129 SETTABLEKS                       R11 R31 K17 ["targetMatrix"]
      131 SETTABLEKS                       R13 R31 K18 ["dragTargetType"]
      133 SETTABLEKS                       R12 R31 K19 ["mouseWorld"]
      135 RETURN                           R31 1

PROTO_31:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 CALL                             R0 0 1
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["getDragTargetNEW"]
        7 GETVARARGS                       R1 -1
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K1 ["getDragTargetOLD"]
       13 GETVARARGS                       R1 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_32:
        0 JUMPIF                           R2 ; [+2]
        1 LOADNIL                          R3
        2 RETURN                           R3 1
        3 GETTABLEKS                       R3 R0 K0 ["Unit"]
        5 LOADN                            R5 255
        6 GETTABLEKS                       R6 R1 K0 ["Unit"]
        8 MUL                              R4 R5 R6
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K1 ["intersectRayPlane"]
       12 GETTABLEKS                       R6 R3 K2 ["Origin"]
       14 GETTABLEKS                       R7 R3 K3 ["Direction"]
       16 MOVE                             R8 R2
       17 MOVE                             R9 R4
       18 CALL                             R5 4 1
       19 LOADN                            R6 0
       20 JUMPIFNOTLE                      R6 R5 ; [+27]
       22 GETTABLEKS                       R7 R3 K2 ["Origin"]
       24 GETTABLEKS                       R9 R3 K3 ["Direction"]
       26 MUL                              R8 R5 R9
       27 ADD                              R6 R7 R8
       28 SUB                              R7 R6 R2
       29 DUPTABLE                         R8 K8 [{"mainCFrame", "snapPoint", "targetMatrix", "dragTargetType"}]
       30 GETIMPORT                        R9 K11 [CFrame.new]
       32 MOVE                             R10 R7
       33 CALL                             R9 1 1
       34 SETTABLEKS                       R9 R8 K4 ["mainCFrame"]
       36 LOADNIL                          R9
       37 SETTABLEKS                       R9 R8 K5 ["snapPoint"]
       39 LOADNIL                          R9
       40 SETTABLEKS                       R9 R8 K6 ["targetMatrix"]
       42 GETUPVAL                         R10 1
       43 GETTABLEKS                       R9 R10 K12 ["Nothing"]
       45 SETTABLEKS                       R9 R8 K7 ["dragTargetType"]
       47 RETURN                           R8 1
       48 LOADNIL                          R6
       49 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R4 K6 [script]
       15 GETTABLEKS                       R3 R4 K7 ["Parent"]
       17 GETTABLEKS                       R2 R3 K7 ["Parent"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R5 R2 K10 ["Utility"]
       23 GETTABLEKS                       R4 R5 K11 ["Math"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K9 [require]
       28 GETTABLEKS                       R6 R2 K10 ["Utility"]
       30 GETTABLEKS                       R5 R6 K12 ["isGoodRaycastResult"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K9 [require]
       35 GETTABLEKS                       R7 R2 K10 ["Utility"]
       37 GETTABLEKS                       R6 R7 K13 ["getGeometry"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K9 [require]
       42 GETTABLEKS                       R8 R2 K10 ["Utility"]
       44 GETTABLEKS                       R7 R8 K14 ["roundRotation"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K9 [require]
       49 GETTABLEKS                       R9 R2 K10 ["Utility"]
       51 GETTABLEKS                       R8 R9 K15 ["snapRotationToPrimaryDirection"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K9 [require]
       56 GETTABLEKS                       R10 R2 K10 ["Utility"]
       58 GETTABLEKS                       R9 R10 K16 ["blackboxFindClosestMeshEdge"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K9 [require]
       63 GETTABLEKS                       R11 R2 K17 ["Flags"]
       65 GETTABLEKS                       R10 R11 K18 ["getFFlagDraggerImprovements"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K9 [require]
       70 GETTABLEKS                       R12 R2 K17 ["Flags"]
       72 GETTABLEKS                       R11 R12 K19 ["getFFlagDraggerAvoidDegeneratePoints"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K9 [require]
       77 GETTABLEKS                       R13 R2 K17 ["Flags"]
       79 GETTABLEKS                       R12 R13 K20 ["getFFlagSBT4371DraggingOverEmptySpace"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K9 [require]
       84 GETTABLEKS                       R14 R2 K10 ["Utility"]
       86 GETTABLEKS                       R13 R14 K21 ["CursorGroupName"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K24 [table.freeze]
       91 NEWTABLE                         R14 0 6
       93 LOADK                            R15 K25 [{1, 0, 0}]
       94 LOADK                            R16 K26 [{-1, 0, 0}]
       95 LOADK                            R17 K27 [{0, 1, 0}]
       96 LOADK                            R18 K28 [{0, -1, 0}]
       97 LOADK                            R19 K29 [{0, 0, 1}]
       98 LOADK                            R20 K30 [{0, 0, -1}]
       99 SETLIST                          R14 R15 6 [1]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K24 [table.freeze]
      104 DUPTABLE                         R15 K36 [{"Terrain", "Polygon", "Sphere", "Cylinder", "Nothing"}]
      105 LOADK                            R16 K31 ["Terrain"]
      106 SETTABLEKS                       R16 R15 K31 ["Terrain"]
      108 LOADK                            R16 K32 ["Polygon"]
      109 SETTABLEKS                       R16 R15 K32 ["Polygon"]
      111 LOADK                            R16 K33 ["Sphere"]
      112 SETTABLEKS                       R16 R15 K33 ["Sphere"]
      114 LOADK                            R16 K34 ["Cylinder"]
      115 SETTABLEKS                       R16 R15 K34 ["Cylinder"]
      117 LOADK                            R16 K35 ["Nothing"]
      118 SETTABLEKS                       R16 R15 K35 ["Nothing"]
      120 CALL                             R14 1 1
      121 NEWTABLE                         R15 16 0
      123 DUPCLOSURE                       R16 K37 [PROTO_0]
      124 DUPCLOSURE                       R17 K38 [PROTO_1]
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R10
      127 DUPCLOSURE                       R18 K39 [PROTO_2]
      128 SETTABLEKS                       R18 R15 K40 ["getSizeInSpace"]
      130 DUPCLOSURE                       R18 K41 [PROTO_3]
      131 CAPTURE                          VAL R5
      132 SETTABLEKS                       R18 R15 K42 ["getClosestFace"]
      134 DUPCLOSURE                       R18 K43 [PROTO_4]
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R15
      138 SETTABLEKS                       R18 R15 K44 ["getPartAndSurface"]
      140 DUPCLOSURE                       R18 K45 [PROTO_5]
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R0
      143 SETTABLEKS                       R18 R15 K46 ["raycast"]
      145 DUPCLOSURE                       R18 K47 [PROTO_6]
      146 SETTABLEKS                       R18 R15 K48 ["getSizeInSurface"]
      148 DUPCLOSURE                       R18 K49 [PROTO_7]
      149 GETIMPORT                        R19 K52 [Color3.new]
      151 LOADK                            R20 K53 [0.329411]
      152 LOADK                            R21 K54 [0.662745]
      153 LOADN                            R22 1
      154 CALL                             R19 3 1
      155 DUPCLOSURE                       R20 K55 [PROTO_8]
      156 DUPCLOSURE                       R21 K56 [PROTO_10]
      157 CAPTURE                          VAL R20
      158 DUPCLOSURE                       R22 K57 [PROTO_11]
      159 CAPTURE                          VAL R15
      160 DUPCLOSURE                       R23 K58 [PROTO_12]
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R22
      164 CAPTURE                          VAL R14
      165 DUPCLOSURE                       R24 K59 [PROTO_13]
      166 CAPTURE                          VAL R22
      167 CAPTURE                          VAL R14
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R20
      170 DUPCLOSURE                       R25 K60 [PROTO_14]
      171 CAPTURE                          VAL R3
      172 DUPCLOSURE                       R26 K61 [PROTO_15]
      173 CAPTURE                          VAL R25
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R14
      176 DUPCLOSURE                       R27 K62 [PROTO_16]
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R14
      180 CAPTURE                          VAL R26
      181 DUPCLOSURE                       R28 K63 [PROTO_17]
      182 CAPTURE                          VAL R17
      183 CAPTURE                          VAL R25
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R19
      186 DUPCLOSURE                       R29 K64 [PROTO_18]
      187 CAPTURE                          VAL R1
      188 DUPCLOSURE                       R30 K65 [PROTO_19]
      189 CAPTURE                          VAL R15
      190 CAPTURE                          VAL R22
      191 CAPTURE                          VAL R14
      192 CAPTURE                          VAL R1
      193 CAPTURE                          VAL R26
      194 DUPCLOSURE                       R31 K66 [PROTO_20]
      195 CAPTURE                          VAL R3
      196 CAPTURE                          VAL R14
      197 DUPCLOSURE                       R32 K67 [PROTO_21]
      198 CAPTURE                          VAL R11
      199 CAPTURE                          VAL R31
      200 CAPTURE                          VAL R4
      201 CAPTURE                          VAL R28
      202 CAPTURE                          VAL R27
      203 CAPTURE                          VAL R30
      204 CAPTURE                          VAL R23
      205 CAPTURE                          VAL R24
      206 CAPTURE                          VAL R1
      207 CAPTURE                          VAL R26
      208 SETTABLEKS                       R32 R15 K68 ["getSurfaceMatrixNEW"]
      210 DUPCLOSURE                       R32 K69 [PROTO_22]
      211 CAPTURE                          VAL R12
      212 CAPTURE                          VAL R0
      213 CAPTURE                          VAL R17
      214 CAPTURE                          VAL R14
      215 CAPTURE                          VAL R9
      216 CAPTURE                          VAL R15
      217 CAPTURE                          VAL R10
      218 CAPTURE                          VAL R3
      219 SETTABLEKS                       R32 R15 K70 ["getSurfaceMatrixOLD"]
      221 DUPCLOSURE                       R32 K71 [PROTO_23]
      222 CAPTURE                          VAL R9
      223 CAPTURE                          VAL R15
      224 SETTABLEKS                       R32 R15 K72 ["getSurfaceMatrix"]
      226 DUPCLOSURE                       R32 K73 [PROTO_24]
      227 CAPTURE                          VAL R9
      228 CAPTURE                          VAL R15
      229 CAPTURE                          VAL R7
      230 CAPTURE                          VAL R13
      231 CAPTURE                          VAL R6
      232 SETTABLEKS                       R32 R15 K74 ["updateTiltRotate"]
      234 DUPCLOSURE                       R32 K75 [PROTO_25]
      235 DUPCLOSURE                       R33 K76 [PROTO_26]
      236 DUPCLOSURE                       R34 K77 [PROTO_27]
      237 DUPCLOSURE                       R35 K78 [PROTO_28]
      238 CAPTURE                          VAL R14
      239 CAPTURE                          VAL R32
      240 DUPCLOSURE                       R36 K79 [PROTO_29]
      241 CAPTURE                          VAL R15
      242 CAPTURE                          VAL R14
      243 CAPTURE                          VAL R7
      244 CAPTURE                          VAL R35
      245 SETTABLEKS                       R36 R15 K80 ["getDragTargetNEW"]
      247 DUPCLOSURE                       R36 K81 [PROTO_30]
      248 CAPTURE                          VAL R15
      249 CAPTURE                          VAL R7
      250 SETTABLEKS                       R36 R15 K82 ["getDragTargetOLD"]
      252 DUPCLOSURE                       R36 K83 [PROTO_31]
      253 CAPTURE                          VAL R9
      254 CAPTURE                          VAL R15
      255 SETTABLEKS                       R36 R15 K84 ["getDragTarget"]
      257 DUPCLOSURE                       R36 K85 [PROTO_32]
      258 CAPTURE                          VAL R3
      259 CAPTURE                          VAL R14
      260 SETTABLEKS                       R36 R15 K86 ["getCameraPlaneDragTarget"]
      262 RETURN                           R15 1
